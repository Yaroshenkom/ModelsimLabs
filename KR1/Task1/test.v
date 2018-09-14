`timescale 1ns/10ps

module test();
  parameter period=20;
  reg [2:0] in;
  wire y;
  comb t1(in[2],in[1],in[0],y);
  
  initial in=3'd0; 
  always #(period/2) in=in+3'b1;
  initial #80 $finish;
endmodule
    