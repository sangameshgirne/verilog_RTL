module graytobinarytb;
reg [7:0]G;
wire [7:0]B;
graytobinary DUT(G,B);
initial
begin
G=1010101010;
#10 G=0101010101;
#10;
end
initial $monitor("G=%b,B=%b",G,B);

endmodule
