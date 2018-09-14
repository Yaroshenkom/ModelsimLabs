`include "defines.vh"
`timescale 1ns/10ps

module mux2in1_test();
	parameter period=20;
	reg i_control;
	reg [`MUX2IN1_WIDTH-1:0] i_dat0, i_dat1;
	wire [`MUX2IN1_WIDTH-1:0] o_dat;
	
	initial
	begin
		i_control = 0;
		i_dat0 = 0;
		i_dat1 = 0;
	end
	
	initial #(period/4) i_control=0;
	
	always 	#(period/2) i_dat0=$urandom()%(2**`MUX2IN1_WIDTH-1);
	always	#(period/2) i_dat1=$urandom()%(2**`MUX2IN1_WIDTH-1);
	always	#(period/2+period/4) i_control=$urandom()%2;
	
	mux2in1 /*#(.WIDTH(`MUX2IN1_WIDTH))*/
		U1(.o_dat(o_dat), .i_control(i_control), .i_dat0(i_dat0), .i_dat1(i_dat1));
	
	initial #120 $stop;
endmodule