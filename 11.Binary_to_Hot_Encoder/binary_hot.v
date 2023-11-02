module onehottobinary(binary_in,onehot_out);
parameter binary_width=4;
parameter onehot_width=16;
input [binary_width-1:0]binary_in;
output [onehot_width-1:0]onehot_out;
assign onehot_out=1'b1<<binary_in;
endmodule
