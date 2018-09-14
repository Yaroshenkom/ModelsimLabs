`timescale 1ns/10ps
module AutomateTest();
	reg x1,x2, rst, clk;
	wire out;
	parameter period=20;
	
	initial
		begin
			x1=0;
			x2=0;
			rst=0;
			clk=0;
		end
	
	initial
		begin
			#5 rst=1;
			#10 rst=0;
		end
		
	always #(period/2) clk=~clk;		
	always #(period) x1=$urandom()%2;
	always #(period) x2=$urandom()%2;
	
	Automate A1 (clk,x1,x2,rst,out);
	
	initial #400 $stop;
endmodule
