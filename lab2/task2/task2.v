module task2 (input x,y,z, output f, f1);
  assign f=(~x*~y*~z)+(x*y*z)+(x*~y*z);
  assign f1=(~x*~y*~z)+x*z;
endmodule
