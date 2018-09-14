module CU(
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
		2: begin 
			{C,ReOut}<={1'd0,ReA}*{1'd0,ReB}-{1'd0,mode?ImA:16'd0}*{1'd0,mode?ImB:16'd0};
			{CC,ImOut}<={1'd0,ReA}*{1'd0,mode?ImB:16'd0}+{1'd0,ReB}*{1'd0,mode?ImA:16'd0};
			end
		3: begin
			{C,ReOut}<=({1'd0,ReA}*{1'd0,ReB}+{1'd0,mode?ImA:16'd0}*{1'd0,mode?ImB:16'd0})/({1'd0,ReB}**2+{1'd0,mode?ImB:16'd0}**2);
			{CC,ImOut}<=({1'd0,mode?ImA:16'd0}*{1'd0,ReB}-{1'd0,mode?ImB:16'd0}*{1'd0,ReA})/({1'd0,ReB}**2+{1'd0,mode?ImB:16'd0}**2);
			end
		endcase
	end
endmodule