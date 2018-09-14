module OutMul(
	input [15:0] AUout, AUoutC, CUout, CUoutC,
	input AUC, AUCC, CUC, CUCC, 
	input [2:0] command,
	output reg [15:0] Out, OutC,
	output reg C, CC);
	
	always @*
	begin
		case(command)
			0,1,4,5: begin
				Out<=AUout;
				OutC<=AUoutC;
				C<=AUC;
				CC<=AUCC;
				end
			2,3: begin
				Out<=CUout;
				OutC<=CUoutC;
				C<=CUC;
				CC<=CUCC;
				end
		endcase
	end
endmodule
