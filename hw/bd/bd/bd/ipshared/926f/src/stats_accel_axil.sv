module stats_accel_axil #(
    parameter int unsigned C_S_AXI_ADDR_WIDTH = 6,
    parameter int unsigned C_S_AXI_DATA_WIDTH = 32,
    parameter int unsigned MAX_WORDS          = 1024,
    parameter int unsigned BRAM_ADDR_W        = $clog2(MAX_WORDS)
  )(
    input  logic                             s_axi_aclk,
    input  logic                             s_axi_aresetn,

    input  logic [C_S_AXI_ADDR_WIDTH-1:0]    s_axi_awaddr,
    input  logic                             s_axi_awvalid,
    output logic                             s_axi_awready,

    input  logic [C_S_AXI_DATA_WIDTH-1:0]    s_axi_wdata,
    input  logic [(C_S_AXI_DATA_WIDTH/8)-1:0] s_axi_wstrb,
    input  logic                             s_axi_wvalid,
    output logic                             s_axi_wready,

    output logic [1:0]                       s_axi_bresp,
    output logic                             s_axi_bvalid,
    input  logic                             s_axi_bready,

    input  logic [C_S_AXI_ADDR_WIDTH-1:0]    s_axi_araddr,
    input  logic                             s_axi_arvalid,
    output logic                             s_axi_arready,

    output logic [C_S_AXI_DATA_WIDTH-1:0]    s_axi_rdata,
    output logic [1:0]                       s_axi_rresp,
    output logic                             s_axi_rvalid,
    input  logic                             s_axi_rready,

    // BRAM Port B style interface (to blk_mem_gen_0/BRAM_PORTB)
    output logic [31:0]                      bram_addr,   // -> addrb[31:0]
    output logic                             bram_clk,    // -> clkb
    output logic [31:0]                      bram_wdata,  // -> dinb[31:0] (unused, read-only)
    input  logic [31:0]                      bram_rdata,  // <- doutb[31:0]
    output logic                             bram_en,     // -> enb
    output logic                             bram_rst,    // -> rstb
    output logic [3:0]                       bram_we      // -> web[3:0] (all zero, read-only)
  );

  localparam int ADDR_LSB      = 2;
  localparam int REG_CONTROL   = 0; // 0x00
  localparam int REG_LENGTH    = 1; // 0x04
  localparam int REG_THRESHOLD = 2; // 0x08
  localparam int REG_VERSION   = 3; // 0x0C
  localparam int REG_SUMLO     = 4; // 0x10
  localparam int REG_SUMHI     = 5; // 0x14
  localparam int REG_MINVAL    = 6; // 0x18
  localparam int REG_MAXVAL    = 7; // 0x1C
  localparam int REG_COUNTGT   = 8; // 0x20
  localparam int REG_CYCLECNT  = 9; // 0x24;

  logic                           aw_hold_valid;
  logic                           w_hold_valid;
  logic [C_S_AXI_ADDR_WIDTH-1:0]  awaddr_q;
  logic [31:0]                    wdata_q;
  logic [3:0]                     wstrb_q;

  logic [31:0]                    length_reg;
  logic [31:0]                    threshold_reg;
  logic                           start_pulse;
  logic                           clear_done_pulse;

  logic                           core_busy;
  logic                           core_done;
  logic [63:0]                    core_sum;
  logic [31:0]                    core_minval;
  logic [31:0]                    core_maxval;
  logic [31:0]                    core_countgt;
  logic [31:0]                    core_cyclecount;

  // Core-facing BRAM addr (word index)
  logic [BRAM_ADDR_W-1:0]         core_bram_addr;

  // Tie BRAM clock/reset/write signals
  assign bram_clk   = s_axi_aclk;
  assign bram_rst   = 1'b0;
  assign bram_we    = 4'b0000;     // read-only
  assign bram_wdata = 32'd0;      // unused

  // Expand core address into 32-bit BRAM address bus (low bits used, rest zero)
  assign bram_addr = 32'd0 | core_bram_addr;

  // AXI handshake
  assign s_axi_awready = !aw_hold_valid && !s_axi_bvalid;
  assign s_axi_wready  = !w_hold_valid  && !s_axi_bvalid;
  assign s_axi_arready = !s_axi_rvalid;

  function automatic [31:0] apply_wstrb(
      input logic [31:0] oldv,
      input logic [31:0] newv,
      input logic [3:0]  strb
    );
    logic [31:0] tmp;
    begin
      tmp = oldv;
      for (int i = 0; i < 4; i++)
      begin
        if (strb[i])
          tmp[i*8 +: 8] = newv[i*8 +: 8];
      end
      apply_wstrb = tmp;
    end
  endfunction

  function automatic [31:0] reg_read(
      input logic [C_S_AXI_ADDR_WIDTH-1:0] addr
    );
    begin
      unique case (addr[C_S_AXI_ADDR_WIDTH-1:ADDR_LSB])
               REG_CONTROL:
                 reg_read = {28'd0, 1'b0, core_busy, core_done, 1'b0};
               REG_LENGTH:
                 reg_read = length_reg;
               REG_THRESHOLD:
                 reg_read = threshold_reg;
               REG_VERSION:
                 reg_read = 32'h0001_0000;
               REG_SUMLO:
                 reg_read = core_sum[31:0];
               REG_SUMHI:
                 reg_read = core_sum[63:32];
               REG_MINVAL:
                 reg_read = core_minval;
               REG_MAXVAL:
                 reg_read = core_maxval;
               REG_COUNTGT:
                 reg_read = core_countgt;
               REG_CYCLECNT:
                 reg_read = core_cyclecount;
               default:
                 reg_read = 32'd0;
             endcase
           end
         endfunction

         always_ff @(posedge s_axi_aclk or negedge s_axi_aresetn)
         begin
           if (!s_axi_aresetn)
           begin
             aw_hold_valid    <= 1'b0;
             w_hold_valid     <= 1'b0;
             awaddr_q         <= '0;
             wdata_q          <= '0;
             wstrb_q          <= '0;

             s_axi_bvalid     <= 1'b0;
             s_axi_bresp      <= 2'b00;

             s_axi_rvalid     <= 1'b0;
             s_axi_rresp      <= 2'b00;
             s_axi_rdata      <= 32'd0;

             length_reg       <= 32'd1;
             threshold_reg    <= 32'd0;
             start_pulse      <= 1'b0;
             clear_done_pulse <= 1'b0;
           end
           else
           begin
             start_pulse      <= 1'b0;
             clear_done_pulse <= 1'b0;

             if (s_axi_awready && s_axi_awvalid)
             begin
               aw_hold_valid <= 1'b1;
               awaddr_q      <= s_axi_awaddr;
             end

             if (s_axi_wready && s_axi_wvalid)
             begin
               w_hold_valid <= 1'b1;
               wdata_q      <= s_axi_wdata;
               wstrb_q      <= s_axi_wstrb;
             end

             if (aw_hold_valid && w_hold_valid && !s_axi_bvalid)
             begin
               unique case (awaddr_q[C_S_AXI_ADDR_WIDTH-1:ADDR_LSB])
                        REG_CONTROL:
                        begin
                          start_pulse      <= wdata_q[0];
                          clear_done_pulse <= wdata_q[3];
                        end

                        REG_LENGTH:
                        begin
                          length_reg <= apply_wstrb(length_reg, wdata_q, wstrb_q);
                        end

                        REG_THRESHOLD:
                        begin
                          threshold_reg <= apply_wstrb(threshold_reg, wdata_q, wstrb_q);
                        end

                        default:
                        begin
                        end
                      endcase

                      aw_hold_valid <= 1'b0;
               w_hold_valid  <= 1'b0;
               s_axi_bvalid  <= 1'b1;
               s_axi_bresp   <= 2'b00;
             end

             if (s_axi_bvalid && s_axi_bready)
               s_axi_bvalid <= 1'b0;

             if (!s_axi_rvalid && s_axi_arvalid)
             begin
               s_axi_rvalid <= 1'b1;
               s_axi_rresp  <= 2'b00;
               s_axi_rdata  <= reg_read(s_axi_araddr);
             end
             else if (s_axi_rvalid && s_axi_rready)
             begin
               s_axi_rvalid <= 1'b0;
             end
           end
         end

         stats_accel_core #(
                            .MAX_WORDS (MAX_WORDS),
                            .ADDR_W    (BRAM_ADDR_W)
                          ) u_core (
                            .clk          (s_axi_aclk),
                            .rst_n        (s_axi_aresetn),
                            .start        (start_pulse),
                            .clear_done   (clear_done_pulse),
                            .length_words (length_reg),
                            .threshold    (threshold_reg),
                            .busy         (core_busy),
                            .done         (core_done),
                            .bram_en      (bram_en),
                            .bram_addr    (core_bram_addr),
                            .bram_rdata   (bram_rdata),
                            .sum          (core_sum),
                            .minval       (core_minval),
                            .maxval       (core_maxval),
                            .countgt      (core_countgt),
                            .cyclecount   (core_cyclecount)
                          );

endmodule
