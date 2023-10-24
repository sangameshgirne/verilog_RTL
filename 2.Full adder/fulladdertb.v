module fulladdtb();
reg a,b,c;
wire sum,carry;
integer i;

fulladd fa1(a,b,c,sum,carry);

initial
begin
for(i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#10;
end
end

initial
#100 $finish;
endmodule
