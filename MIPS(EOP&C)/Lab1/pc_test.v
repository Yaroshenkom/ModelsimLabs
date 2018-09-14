`timescale 1ns/10ps

module pc_test();
	parameter period =20;
	reg [31:0] i_pc;
	reg i_rst_n, i_clk; //i_parwrite;
	wire [31:0] o_pc;
	
	initial
	begin
		i_rst_n = 1;
		i_clk = 0;
		i_pc = 0;
		//i_parwrite = 0;
	end
	
	initial
	begin
		#(period/4) i_rst_n = 0;
		#(period/2) i_rst_n = 1;
	end
	
	always #(period/2) i_clk =~ i_clk;
	//always #(period/2) i_parwrite = $urandom()%2;
	always #(period/2) i_pc = $urandom()%(2**32-1);
	
	pc U2(.i_pc(i_pc), .i_rst_n(i_rst_n), .i_clk(i_clk), /*.i_parwrite(i_parwrite), */.o_pc(o_pc));
	
	initial #120 $stop;
endmodule