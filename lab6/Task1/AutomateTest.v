`timescale 1ns/10ps
module AutomateTest();
	reg w, rst, clk;
	wire out;
	parameter period=20;
	
	initial
		begin
			w=0;
			rst=0;
			clk=0;
		end
	
	initial
		begin
			#5 rst=1;
			#10 rst=0;
		end
		
	always #(period/2) clk=~clk;		
	always #(period) w=$urandom()%2;
	
	MyAutomate A1 (.clk(clk), .w(w), .Reset(rst), .OUT1(out));
	
	initial #400 $stop;
endmodule