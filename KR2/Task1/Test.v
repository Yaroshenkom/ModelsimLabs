`timescale 1ns/10ps

module Test();
	reg clk, rst,c1,c2, enload;
	reg [7:0] in;
	wire fin;
	wire [7:0] out1, out2;
	parameter period=20;
	
	initial
	begin
		clk=0;
		rst=0;
		c1=0;
		c2=0;
		enload=0;
		in=0;
		#5 rst=1;
		#10 rst=0;
	end
	
	initial #5 c1=0;
	initial #5 c2=0;
	
	initial
	begin
		#25 enload=1;
		#10 enload=0;
	end
	
	always #(period/2) clk=~clk;		
	always #(period) c1<=$urandom()%2;
	always #(period) c2<=$urandom()%2;	
	initial #(period) in=3;
	
	Chess contr (.clk(clk), .reset(rst), .count1(c1), .count2(c2), .enload(enload), .in(in), .fin(fin), .out1(out1), .out2(out2));
	
	initial #400 $stop;
endmodule
	