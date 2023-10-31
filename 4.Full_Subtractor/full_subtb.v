module fullsubtb;
reg a,b,bin;
wire diff,borrow;
integer i;
fullsub DUT(a,b,bin,diff,borrow);
initial
begin
for(i=0;i<8;i=i+1)
begin
{a,b,bin}=i;
#10;
$display("a=%b,b=%b,bin=%b,diff=%b,borrow=%b",a,b,bin,diff,borrow);

end
end
endmodule
