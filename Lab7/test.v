`timescale 1ns/10ps

module test();
	reg clk, reset, mode;
	reg [2:0] action;
	reg [15:0] A, AC, B, BC;
	wire C, CC;
	wire [15:0] ReOut, ImOut;
	parameter period=20;
	
	initial
	begin
		clk=0;
		reset=0;
		mode=0;
		action=0;
		A=0;
		AC=0;
		B=0;
		BC=0;
	end
	
	initial
	begin
		#5 reset=1;
		#10 reset=0;
	end
	
	always #(period/2) clk=~clk;
	always #(period) A<=$urandom()%65536;
	always #(period) B<=$urandom()%65536;
	always #(period) AC<=$urandom()%65536;
	always #(period) BC<=$urandom()%65536;
	always #(period) mode<=$urandom()%2;
	always #(period) action<=$urandom()%6;
	
	MU tested (clk,mode,reset,action, A, B, AC, BC, C, CC, ReOut, ImOut);

	initial #400 $stop;

endmodule

	