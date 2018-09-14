module MU(
	input clk, mode, reset,
	input [2:0] action,
	input [15:0] ReA, ReB, ImA, ImB,
	output C,CC,
	output [15:0] ReOut, ImOut);
	
	wire [15:0] connect0, connect0C, connect1, connect1C;
	wire C0, CC0, C1, CC1;
	
AU arithmetic (.clk(clk), .mode(mode), .reset(reset), .action(action), 
	.ReA(ReA), .ReB(ReB), .ImA(ImA), .ImB(ImB), 
	.C(C0),.CC(CC0), .ReOut(connect0), .ImOut(connect0C));

CU complex (.clk(clk), .mode(mode), .reset(reset), .action(action), 
	.ReA(ReA), .ReB(ReB), .ImA(ImA), .ImB(ImB), 
	.C(C1),.CC(CC1), .ReOut(connect1), .ImOut(connect1C));
	
OutMul mul (connect0, connect0C, connect1, connect1C, C0, CC0, C1, CC1, action, ReOut, ImOut, C, CC);
endmodule 