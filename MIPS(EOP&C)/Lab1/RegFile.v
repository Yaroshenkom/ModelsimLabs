
module RegFile(i_clk, 
               i_raddr1, 
               i_raddr2, 
               i_waddr, 
               i_wdata, 
               i_we,
               o_rdata1,
               o_rdata2 
               );
               
	input           i_clk, i_we;
	input   [4:0]   i_raddr1, i_raddr2, i_waddr;
	input   [31:0]  i_wdata;           
	output reg [31:0]  o_rdata1, o_rdata2;

	reg [31:0] mem [31:0];
	integer i;
	
	initial for(i = 0; i < 32; i=i+1 ) mem[i] = 0;

	always@(posedge i_clk)
	begin
		if(i_we & (i_waddr != 0)) mem[i_waddr]<=i_wdata;
		o_rdata1<=mem[i_raddr1];
		o_rdata2<=mem[i_raddr2];
	end
  
endmodule
