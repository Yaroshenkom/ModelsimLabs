module lshifter(
input clk, clr, we,
input [15:0] in,
output reg [15:0] out);

	always @(posedge clk or posedge clr)
	begin
		if (clr)
			out<=0;
		else if (we)
			out<=in;
		else out<={out[14:0],1'd0};
	end

endmodule
