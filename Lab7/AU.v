module AU(
	input clk, mode, reset,
	input [2:0] action,
	input [15:0] ReA, ReB, ImA, ImB,
	output reg C,CC,
	output reg [15:0] ReOut, ImOut);
	
	always @(posedge clk)
	begin
	if (reset)
		begin
			ReOut<=0;
			ImOut<=0;
			C<=0;
			CC<=0;
		end
	else
		case(action)
		0: begin 
			{C,ReOut}<={1'd0,ReA}+{1'd0,ReB};
			{CC,ImOut}<={1'd0,mode?ImA:16'd0}+{1'd0,mode?ImB:16'd0};
			end
		1: begin
			{C,ReOut}<={1'd0,ReA}-{1'd0,ReB};
			{CC,ImOut}<={1'd0,mode?ImA:16'd0}-{1'd0,mode?ImB:16'd0};
			end
		4: begin
			ReOut<=ReA<<ReB[3:0];
			C<=0;
			CC<=0;
		   end
		5: begin
			ReOut<=ReA>>ReB[3:0];
			C<=0;
			CC<=0;
		   end
		endcase
	end
	
endmodule