module pc(i_clk, i_rst_n, i_pc, /*i_parwrite,*/ o_pc);

	input               i_clk, i_rst_n; //i_parwrite;
	input       [31:0]  i_pc;
	output  reg [31:0]  o_pc;

	always@(posedge i_clk)
	begin
		if(!i_rst_n) o_pc <= 0;
		else /*if (i_parwrite)*/ o_pc <= i_pc;
		//else o_pc <= o_pc + 1;
	end
	
   
endmodule
