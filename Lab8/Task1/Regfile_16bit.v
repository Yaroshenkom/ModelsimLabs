module Regfile_16bit (
  output reg [15:0] out,
  output wire [15:0] A_out,
  input wire [15:0] in, DIN_in, G_in,
  input reg [3:0] we,
  input reg [3:0] adr,
  input wire clk);
  
  reg [15:0] mem [9:0];
  
  initial //выставляем значения в регистровом файле для того, чтобы проще различать ячейки при симуляции
  begin
    mem[0]=0;//R0
    mem[1]=1;//R1
    mem[2]=2;//R2
    mem[3]=3;//R3
    mem[4]=4;//R4
    mem[5]=5;//R5
    mem[6]=6;//R6
    mem[7]=7;//R7
    mem[8]=0;//Acc
    mem[9]=0;//G
  end
  
  always @(posedge clk)//входной дешифратор сигналов разрешения записи
  begin
    if (we==9) mem[9]<=G_in;
    else if (we>=0 && we<=8) mem[we]<=in;
  end
  
  assign A_out=mem[8];

  always @(we,adr) //выходной мультиплексор
  begin
    if (adr==9) out<=DIN_in;
	else if (adr==8) out<=mem[9];
    else if (adr>=0 && adr<8) out<=mem[adr];
  end
  
endmodule