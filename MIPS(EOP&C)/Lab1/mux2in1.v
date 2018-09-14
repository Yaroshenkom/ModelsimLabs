`include "defines.vh"

module mux2in1(i_dat0, i_dat1, i_control, o_dat);

//parameter WIDTH = 32;

input   [`MUX2IN1_WIDTH-1:0]   i_dat0, i_dat1; 
input                 i_control;
output  [`MUX2IN1_WIDTH-1:0]   o_dat;

assign o_dat = i_control ? i_dat1 : i_dat0;

endmodule