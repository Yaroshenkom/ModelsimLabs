module AU(
  input wire AddSubb,
  input wire [15:0] A_in, R_in,
  output wire [15:0] out);
  
  assign out=A_in+(AddSubb?(~R_in):R_in)+AddSubb;//если AddSubb=1, то выполняем вычитание
endmodule