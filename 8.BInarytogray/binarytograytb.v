module binarytograytb;
reg [7:0]B;
wire [7:0]G;
binarytogray DUT(B,G);
initial
begin
B=1010101010;
#10 B=0101010101;
#10;
end
initial $monitor("B=%b,G=%b",B,G);

endmodule
