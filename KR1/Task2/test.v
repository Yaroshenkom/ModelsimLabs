`timescale 1ns/10ps;

module test(); 
  reg clk, reset;
  reg [7:0] data_a, data_b;
  
  initial
  begin
    data_a=8'd0;
    data_b=8'd0;
    clk=0;
    reset=0;
    #15 reset=1;
  end
  
  always
    begin
      #3 clk=1;
      #5 clk=0;
    end
  always #10 data_a<=data_a+8'd1;
  always #15 data_b<=data_b+8'd3;
    
  initial #100 $finish;
endmodule
 