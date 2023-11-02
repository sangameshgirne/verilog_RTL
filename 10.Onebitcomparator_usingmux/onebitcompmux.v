module four_mux(in1,in2,in3,in4,s1,s0,out);
input in1,in2,in3,in4,s1,s0;
output out;
assign out=(s1)?(s0?in4:in3):(s0?in2:in1);
endmodule

module onebitmux(a,b,greater,equal,lesser);
input a,b;
output greater,equal,lesser;
four_mux f1(1'b1,1'b0,1'b0,1'b1,a,b,equal);
four_mux f2(1'b0,1'b0,1'b1,1'b0,a,b,greater);
four_mux f3(1'b0,1'b1,1'b0,1'b0,a,b,lesser);
endmodule
