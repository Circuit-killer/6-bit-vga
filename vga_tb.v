module test;

  reg clk = 0;

  /* Make a reset that pulses once. */
  initial begin
     $dumpfile("test.vcd");
     $dumpvars(0, test);
     wait(dut.y_px == 5);
     $finish;
  end

  VgaSyncGen dut(.clk(clk));

  /* Make a regular pulsing clock. */
  always #1 clk = !clk;

endmodule // test
