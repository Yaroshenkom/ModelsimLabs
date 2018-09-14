`timescale 1ns/10ps

module tester();
  parameter period=20;
  reg clk, set, clr;
  reg [7:0] test_in;
  wire [7:0] test_out;
  
  initial
  begin
    clk=0;
    test_in=8'd0;
    clr=0;
    set=0;
  end
  
  initial 
  begin
    #45 clr=1;
    #10 clr=0;
  end  
  
  initial
  begin
    #85 set=1;
    #10 set=0;
  end 
    
  always
    #(period/2) clk=~clk;
    
  always
    #(period/4) test_in=test_in+8'd1;
    
  Register test_register (.out(test_out), .in(test_in), .set(set), .clr(clr),.clk(clk));
  
  initial #120 $stop;
endmodule