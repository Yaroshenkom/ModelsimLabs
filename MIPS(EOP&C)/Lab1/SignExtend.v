module SignExtend(i_data, o_data, i_issign);
	input 			i_issign;
	input   [15:0]  i_data;
	output  [31:0]  o_data;
	
	assign o_data = i_issign ? {{17{i_data[15]}},i_data[14:0]} : {17'd0,i_data[14:0]};
endmodule
