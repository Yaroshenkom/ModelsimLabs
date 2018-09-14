module Processor(
  input Reset, clk, Run,
  input wire [15:0] DIN,
  output wire Done,
  output wire [15:0] Bus_out);
  
  wire AddSubb;
  wire [3:0] adr;
  wire [3:0] we;
  wire [15:0] A_out, G_in, Bus;
  
  assign Bus_out=Bus;
  
  Control_unit CU (.IR_in(DIN[8:0]), .Run(Run), .clk(clk), .Reset(Reset), .adr(adr), .we(we), .Done(Done), .AddSubb(AddSubb));
  AU arithmetic (.A_in(A_out), .R_in(Bus), .out(G_in), .AddSubb(AddSubb));
  Regfile_16bit regfile (.in(Bus), .out(Bus), .DIN_in(DIN), .A_out(A_out), .G_in(G_in), .clk(clk), .we(we), .adr(adr));

endmodule
  
  
