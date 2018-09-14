module Register(
  input [7:0] in,
  input set, clr, clk,
  output reg [7:0] out);
    always @(posedge clk)
    begin
      if (clr) out=8'd0;
      else if (set) out=8'd255;
      else out=in;
  end
endmodule
