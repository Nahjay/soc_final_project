module stats_accel_core #(
    parameter int unsigned MAX_WORDS = 1024,
    parameter int unsigned ADDR_W    = $clog2(MAX_WORDS)
  )(
    input  logic                 clk,
    input  logic                 rst_n,

    input  logic                 start,
    input  logic                 clear_done,
    input  logic [31:0]          length_words,
    input  logic [31:0]          threshold,

    output logic                 busy,
    output logic                 done,

    output logic                 bram_en,
    output logic [ADDR_W-1:0]    bram_addr,
    input  logic [31:0]          bram_rdata,

    output logic [63:0]          sum,
    output logic [31:0]          minval,
    output logic [31:0]          maxval,
    output logic [31:0]          countgt,
    output logic [31:0]          cyclecount
  );

  typedef enum logic [1:0] {
            S_IDLE,
            S_ISSUE,
            S_CONSUME
          } state_t;

  state_t       state;
  logic [31:0]  idx;
  logic [31:0]  pending_idx;
  logic [31:0]  length_latched;
  logic [31:0]  threshold_latched;

  assign bram_en   = (state == S_ISSUE);
  assign bram_addr = idx[ADDR_W-1:0];

  always_ff @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
    begin
      state             <= S_IDLE;
      idx               <= 32'd0;
      pending_idx       <= 32'd0;
      length_latched    <= 32'd0;
      threshold_latched <= 32'd0;
      busy              <= 1'b0;
      done              <= 1'b0;
      sum               <= 64'd0;
      minval            <= 32'hffff_ffff;
      maxval            <= 32'd0;
      countgt           <= 32'd0;
      cyclecount        <= 32'd0;
    end
    else
    begin
      if (clear_done)
        done <= 1'b0;

      if (busy)
        cyclecount <= cyclecount + 32'd1;

      unique case (state)
               S_IDLE:
               begin
                 busy <= 1'b0;

                 if (start && (length_words >= 32'd1) && (length_words <= MAX_WORDS))
                 begin
                   busy              <= 1'b1;
                   done              <= 1'b0;
                   idx               <= 32'd0;
                   pending_idx       <= 32'd0;
                   length_latched    <= length_words;
                   threshold_latched <= threshold;
                   sum               <= 64'd0;
                   minval            <= 32'hffff_ffff;
                   maxval            <= 32'd0;
                   countgt           <= 32'd0;
                   cyclecount        <= 32'd0;
                   state             <= S_ISSUE;
                 end
               end

               S_ISSUE:
               begin
                 pending_idx <= idx;
                 state       <= S_CONSUME;
               end

               S_CONSUME:
               begin
                 sum <= sum + {32'd0, bram_rdata};

                 if (pending_idx == 32'd0)
                 begin
                   minval <= bram_rdata;
                   maxval <= bram_rdata;
                 end
                 else
                 begin
                   if (bram_rdata < minval)
                     minval <= bram_rdata;
                   if (bram_rdata > maxval)
                     maxval <= bram_rdata;
                 end

                 if (bram_rdata > threshold_latched)
                   countgt <= countgt + 32'd1;

                 if ((pending_idx + 32'd1) < length_latched)
                 begin
                   idx   <= pending_idx + 32'd1;
                   state <= S_ISSUE;
                 end
                 else
                 begin
                   busy  <= 1'b0;
                   done  <= 1'b1;
                   state <= S_IDLE;
                 end
               end

               default:
               begin
                 state <= S_IDLE;
               end
             endcase
           end
         end

       endmodule
