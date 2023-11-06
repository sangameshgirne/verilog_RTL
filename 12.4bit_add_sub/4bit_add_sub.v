
module fourbitaddsub(a,b,mode,result,overflow);
input [3:0]a,b;
input mode;
output reg[3:0]result;
output reg overflow;
reg[3:0] neg_b;

always@(*)
begin
if(mode)
begin
result=a+b;
overflow=(a[3]&b[3]&~result[3])|(~a[3]&~b[3]&result[3]);
end
else
begin
neg_b=~b+1;
result=a+neg_b;
overflow=(a[3]&neg_b[3]&~result[3])|(~a[3]&~neg_b[3]&result[3]);
end
end
endmodule
