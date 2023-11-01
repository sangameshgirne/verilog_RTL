module nbitcomp(a,b,lesser,equal,greater);
parameter n=32;

input [n-1:0]a,b;
output reg lesser,equal,greater;
always@(*)
begin
if(a>b)
begin
lesser=0;equal=0;greater=1;
end
else if(a==b)
begin
lesser=0;equal=1;greater=0;
end
else
begin
lesser=1;equal=0;greater=0;
end
end
endmodule


