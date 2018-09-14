`timescale 1ns/10ps

module SignExtend_test();
	parameter period = 20;
	reg 		   i_issign;
	reg   [15:0]   i_data;
	wire  [31:0]   o_data;

	initial i_data = 0;
	
	always #(period/4) i_issign = $urandom()%2;
	always #(period) i_data = $urandom()%(2**16);
	
	SignExtend U5 (.i_data(i_data), .i_issign(i_issign), .o_data(o_data));
	
	initial #100 $stop;
endmodule
