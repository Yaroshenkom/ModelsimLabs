module MyAutomate(
	input clk, w, Reset,
	output reg OUT1);
	
	reg [3:0] state;
	parameter [3:0] state_A=0, state_B=1, state_C=2, state_D=3, state_E=4, state_F=5, state_G=6, state_H=7, state_I=8;
	
	always @(posedge clk or posedge Reset)
	begin
		if(Reset) state=state_A;
		else
			case(state)
				state_A: state=(!w)?state_B:state_F;
				state_B: state=(!w)?state_C:state_F;
				state_C: state=(!w)?state_D:state_F;
				state_D: state=(!w)?state_E:state_F;
				state_E: state=(!w)?state_E:state_F;
				state_F: state=(!w)?state_B:state_G;
				state_G: state=(!w)?state_B:state_H;
				state_H: state=(!w)?state_B:state_I;
				state_I: state=(!w)?state_B:state_I;
			endcase
	end
		
	always @(state)
	begin
		case(state)
			state_E: OUT1=1;
			state_I: OUT1=1;
			default: OUT1=0;
		endcase
	end
	
endmodule
