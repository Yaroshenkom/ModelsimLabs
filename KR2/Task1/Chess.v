module Chess(
input enload, reset,count1,count2, clk,
input [7:0] in,
output  reg fin,
output  reg [7:0] out1, out2
);
reg [7:0] outb1, outb2;
reg en1, en2;


	always @(posedge clk)
	begin
		if (reset)
			begin
				out1<=8'b11111111;
				out2<=8'b11111111;
			end
		else if (enload)
			begin
				out1<=in;
				out2<=in;
			end
		else if (count1 && count2)
			begin	
				out1<=out1;
				out2<=out2;
			end
		else if (count1 && out1!==0) out1<=out1-1;
		else if (count2 && out2!==0) out2<=out2-1;
			
	end
	
	
	always @(posedge clk)
		begin
			if (out1==0 || out2==0) fin<=1;
			else fin<=0;
		end
		
endmodule