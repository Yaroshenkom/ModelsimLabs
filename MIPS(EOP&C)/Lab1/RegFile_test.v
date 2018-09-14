`timescale 1ns/10ps
`define RANGE_OF_VALUES (2**32-1)
`define RANGE_OF_ADDRESSES (2**5-1)

module RegFile_test();
	parameter period=20;
	reg           i_clk, i_we;
	reg   [4:0]   i_raddr1, i_raddr2, i_waddr;
	reg   [31:0]  i_wdata;           
	wire [31:0]  o_rdata1, o_rdata2;
	
	initial
	begin
		i_clk = 0;
		i_we = 0;
		i_raddr1 = 0;
		i_raddr2 = 0;
		i_waddr = 0;
		i_wdata = 0;
	end
	
	always #(period/2) i_clk = ~i_clk;
	
	always #(period/2) i_wdata = $urandom()%`RANGE_OF_VALUES;
	always #(period/2) i_waddr = $urandom()%`RANGE_OF_ADDRESSES;
	always #(period/2) i_raddr1 = $urandom()%`RANGE_OF_ADDRESSES;
	always #(period/2) i_raddr2 = $urandom()%`RANGE_OF_ADDRESSES;
	always #(period/2) i_we = $urandom()%2;
	
	RegFile U3 (.i_clk(i_clk), 
               .i_raddr1(i_raddr1), 
               .i_raddr2(i_raddr2), 
               .i_waddr(i_waddr), 
               .i_wdata(i_wdata), 
               .i_we(i_we),
               .o_rdata1(o_rdata1),
               .o_rdata2(o_rdata2)); 
			   
	initial #400 $stop;
endmodule