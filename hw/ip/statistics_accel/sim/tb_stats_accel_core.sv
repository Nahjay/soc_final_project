module tb_stats_accel_core;

  localparam int MAX_WORDS = 1024;
  localparam int ADDR_W    = $clog2(MAX_WORDS);

  logic              clk = 1'b0;
  logic              rst_n = 1'b0;
  logic              start;
  logic              clear_done;
  logic [31:0]       length_words;
  logic [31:0]       threshold;

  logic              busy;
  logic              done;
  logic              bram_en;
  logic [ADDR_W-1:0] bram_addr;
  logic [31:0]       bram_rdata;

  logic [63:0]       sum;
  logic [31:0]       minval;
  logic [31:0]       maxval;
  logic [31:0]       countgt;
  logic [31:0]       cyclecount;

  logic [31:0] mem [0:MAX_WORDS-1];

  stats_accel_core #(
                     .MAX_WORDS(MAX_WORDS),
                     .ADDR_W   (ADDR_W)
                   ) dut (
                     .clk         (clk),
                     .rst_n       (rst_n),
                     .start       (start),
                     .clear_done  (clear_done),
                     .length_words(length_words),
                     .threshold   (threshold),
                     .busy        (busy),
                     .done        (done),
                     .bram_en     (bram_en),
                     .bram_addr   (bram_addr),
                     .bram_rdata  (bram_rdata),
                     .sum         (sum),
                     .minval      (minval),
                     .maxval      (maxval),
                     .countgt     (countgt),
                     .cyclecount  (cyclecount)
                   );

  always #5 clk = ~clk;

  always_ff @(posedge clk)
  begin
    if (bram_en)
      bram_rdata <= mem[bram_addr];
  end

  task automatic pulse_start();
    begin
      @(posedge clk);
      start <= 1'b1;
      @(posedge clk);
      start <= 1'b0;
    end
  endtask

  task automatic pulse_clear_done();
    begin
      @(posedge clk);
      clear_done <= 1'b1;
      @(posedge clk);
      clear_done <= 1'b0;
    end
  endtask

  task automatic run_case(input int n, input logic [31:0] th);
    logic [63:0] sw_sum;
    logic [31:0] sw_min, sw_max, sw_count;
    begin
      sw_sum   = 64'd0;
      sw_min   = 32'hffff_ffff;
      sw_max   = 32'd0;
      sw_count = 32'd0;

      for (int i = 0; i < n; i++)
      begin
        sw_sum += {32'd0, mem[i]};
        if (i == 0 || mem[i] < sw_min)
          sw_min = mem[i];
        if (i == 0 || mem[i] > sw_max)
          sw_max = mem[i];
        if (mem[i] > th)
          sw_count++;
      end

      length_words <= n;
      threshold    <= th;
      pulse_start();

      wait(done == 1'b1);
      @(posedge clk);

      if (sum     !== sw_sum)
        $fatal(1, "SUM mismatch: got %0d expected %0d", sum, sw_sum);
      if (minval  !== sw_min)
        $fatal(1, "MIN mismatch: got %0d expected %0d", minval, sw_min);
      if (maxval  !== sw_max)
        $fatal(1, "MAX mismatch: got %0d expected %0d", maxval, sw_max);
      if (countgt !== sw_count)
        $fatal(1, "COUNTGT mismatch: got %0d expected %0d", countgt, sw_count);

      $display("PASS n=%0d th=%0d sum=%0d min=%0d max=%0d countgt=%0d cycles=%0d",
               n, th, sum, minval, maxval, countgt, cyclecount);

      pulse_clear_done();
    end
  endtask

  initial
  begin
    start        = 1'b0;
    clear_done   = 1'b0;
    length_words = 32'd0;
    threshold    = 32'd0;

    for (int i = 0; i < MAX_WORDS; i++)
      mem[i] = (i * 17 + 3) & 32'hffff_ffff;

    repeat (5) @(posedge clk);
    rst_n = 1'b1;
    repeat (2) @(posedge clk);

    run_case(16,   32'd50);
    run_case(1024, 32'd8000);

    $display("ALL TESTS PASSED");
    $finish;
  end

endmodule
