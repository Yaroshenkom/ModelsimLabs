`timescale 1ns/10ps

module Test1 ();
  reg clk, Reset, Run;
  wire [15:0] DIN;
  wire Done;
  wire [15:0] Bus_out;
  parameter period=20;
  
  initial
  begin
    clk=0;
    Reset=1;
    Run=0;
  end
  
  ProgMem prog (.Run(Run), .isDone(Done), .DIN(DIN));
  Processor procssr (.Done(Done), .clk(clk), .Reset(Reset), .DIN(DIN), .Bus_out(Bus_out), .Run(Run));
  
  initial #15 Reset=0;
  initial 
  begin
	#(period) Run=1;
	#(period) Run=0;
  end	
  
  always #(period/2) clk=~clk;

	always
	begin
	  #(5*period) Run<=1; //в симуляции 5 тактов: заполнение счетчика тактов на команду - максимум 3 такта на выполнение - такт вывода результата
	  #(period) Run<=0;
	 end
	 
	 initial #1200 $stop;
endmodule