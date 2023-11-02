module onebitmuxtb;
reg a,b;
wire greater,lesser,equal;
integer i;
onebitmux DUT(a,b,greater,equal,lesser);
initial
begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
$display("a=%b,b=%b,greater=%b,lesser=%b,equal=%b",a,b,greater,lesser,equal);
end
end
endmodule
