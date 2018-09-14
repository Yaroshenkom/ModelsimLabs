module BCDcoder (input [9:0] in, output reg [4:0] out);
  always @(in) begin
    case (in)
      10'b1000000000 : out=5'd9;
      10'b0100000000 : out=5'd8;
      10'b0010000000 : out=5'd7;
      10'b0001000000 : out=5'd6;
      10'b0000100000 : out=5'd5;
      10'b0000010000 : out=5'd4;
      10'b0000001000 : out=5'd3;
      10'b0000000100 : out=5'd2;
      10'b0000000010 : out=5'd1;
      10'b0000000001 : out=5'd0;
      default : out=5'd0;
    endcase
  end
endmodule