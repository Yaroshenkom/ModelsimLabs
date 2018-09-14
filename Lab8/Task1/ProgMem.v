module ProgMem (
	input Run,
	input isDone,
	output reg [15:0] DIN);
	
	reg [15:0] pmem [9:0];
	integer tmp;
	initial
	begin
		pmem[0]=0; //до любых команд
		pmem[1]={7'd0,9'b001000000}; //mvi R0, R0<-10
		pmem[2]=10;
		pmem[3]={7'd0,9'b001111000};//mvi R7, R7<-20
		pmem[4]=20;
		pmem[5]={7'd0,9'b010000111};//add R0,R7
		pmem[6]=0;
		pmem[7]={7'd0,9'b001010000};//mvi R2, R2<-4
		pmem[8]=4;
		pmem[9]={7'd0,9'b011000010};//subb R0,R2
		tmp=0;
	end
	
	
	always @(posedge Run or negedge Run)
	begin
		DIN<=pmem[tmp];
		tmp=tmp+1;
	end
endmodule