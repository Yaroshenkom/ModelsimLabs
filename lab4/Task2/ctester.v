`timescale 1ns/10ps

module ctester();
  parameter period=20;
  reg clk, load;
  reg [7:0] in;
  wire [7:0] out;
  
  initial
    begin
      #0 load=1;
      #0 in=8'h99;
      #5 clk=1;
    end
  
  initial #10 load=0;
  //initial #10 in=8'd255;
  
  always #(period/2) clk=~clk;
  //always #(period/2) in=~in;
  
  Counter c1(.out(out), .load(load), .clk(clk),.in(in));
  
  initial #300 $stop;
endmodule
  
   
  
