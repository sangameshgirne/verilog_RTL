module halfsubtractortb;
reg a,b;
wire diff,borrow;
integer i;
halfsubtractor DUT(a,b,diff,borrow);
initial 
begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
$display("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
end

end
endmodule

