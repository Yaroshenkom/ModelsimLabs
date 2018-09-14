`include "defines.vh"

module ShiftLeftBy2(i_data, o_data);
	//parameter WIDTH = 32;
	input   [`SHIFTER_WIDTH-1:0]   i_data;
	output  [`SHIFTER_WIDTH-1:0]   o_data;
  
	assign o_data = {i_data[`SHIFTER_WIDTH-3:0], 2'd0 /*i_data[`SHIFTER_WIDTH-1:`SHIFTER_WIDTH-2]*/};
  
endmodule
