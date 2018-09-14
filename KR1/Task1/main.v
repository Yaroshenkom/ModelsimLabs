module comb(input a, b c, output out);
	assign out=(~a&~b&~c)|(~a&b&~c)|(a&~b&~c);
endmodule
