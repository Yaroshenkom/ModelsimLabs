`include "defines.vh"
`timescale 1ns/10ps

module ShiftLeftBy2_test();
	parameter period = 20;
	reg   [`SHIFTER_WIDTH-1:0]   i_data;
	wire  [`SHIFTER_WIDTH-1:0]   o_data;

	initial i_data = 0;
	
	always #(period) i_data = $urandom()%(2**`SHIFTER_WIDTH-1);
	
	ShiftLeftBy2 U4 (.i_data(i_data), .o_data(o_data));
	
	initial #100 $stop;
endmodule