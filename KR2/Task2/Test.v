`timescale 1ns/10ps

module Test();
	reg clk, clr, we;
	reg [15:0] in;
	wire [15:0] out;
	parameter period=20;
	
	initial
	begin
		clk=0;
		clr=0;
		we=0;
		in=$random();
		#5 clr=1;
		#10 clr=0;
	end
	
	always #(period/2) clk=~clk;
	
	initial
	begin
		#25 we=1;
		#10 we=0;
	end
	
	lshifter l1 (.in(in), .clk(clk), .clr(clr), .we(we), .out(out));
	
	initial #400 $stop;
	
endmodule