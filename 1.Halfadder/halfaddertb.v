
module halfaddertb;
reg a,b;
wire sum,carry;
integer i;

halfadder ha1(a,b,sum,carry);
initial 
begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
end
end

initial
#100 $finish;
endmodule
