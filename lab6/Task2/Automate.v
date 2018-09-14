module Automate(
	input clk,x1,x2, Reset,
	output reg out);
	
	reg [3:0] state;
	parameter [3:0] state_0=0, state_1=1, state_2=2, state_3=3, state_4=4, state_5=5, state_6=6, state_7=7, state_8=8, state_9=9;
	
	always @(posedge clk or posedge Reset)
		begin
		if(Reset) state=state_0;
		else
		case(state)
			state_0: state=state_1;
			state_1: state=(!x1)?state_2:state_4;
			state_2: state=state_3;
			state_3: state=state_7;
			state_4: state=state_5;
			state_5: state=(!x2)?state_4:state_6;
			state_6: state=state_8;
			state_7: state=state_8;
			state_8: state=state_9;
			state_9: state=state_1;
		endcase
		end
		
	always @(state)
		case(state)
			state_0: out=0;
			state_2: out=0;
			state_3: out=0;
			state_7: out=0;
			state_8: out=0;
			default: out=1;
		endcase
		
endmodule