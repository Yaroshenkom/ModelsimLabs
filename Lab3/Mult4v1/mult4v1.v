module multiplexer (
  input  [7:0] in0, in1, in2, in3,
  input  [1:0] ad,
  output reg [7:0] out);
  
  always @(ad, in0, in1, in2, in3) begin
    case(ad)
      2'd0 : out=in0;
      2'd1 : out=in1;
      2'd2 : out=in2;
      2'd3 : out=in3;
  endcase
  end
endmodule
  