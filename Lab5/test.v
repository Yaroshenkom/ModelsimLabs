`timescale 1ns/10ps

module test();
  parameter period=20;
  parameter seed=11;
  reg clk, rst, Cin;
  reg [7:0] in1, in2;
  reg [1:0] op_code;
  wire [7:0] out;
  wire Cout;

  initial
  begin
    clk=0;
    Cin=0;
    rst=0;
    in1=0;
    in2=0;
  end
  
  initial
  begin
    #(period/4) rst=1;
    #(period/2) rst=0;
  end
  
  always #(period/2) clk=~clk;
  
   
  always #(period) in1=$random()%128;
  always #(period) in2=$random()%128;
  always #(period) op_code=$urandom()%4;
  always #(period) Cin=$urandom()%2;
  
  ALU tested_ALU(.A(in1), .B(in2), .op_code(op_code), .Cin(Cin), .Cout(Cout), .reset(rst), .clk(clk), .out(out));
  
  initial #500 $stop;
endmodule
  