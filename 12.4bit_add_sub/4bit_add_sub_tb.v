module fourbitaddsubtb;
reg [3:0]a,b;
reg mode;
wire [3:0]result;
wire overflow;
fourbitaddsub DUT(a,b,mode,result,overflow);
initial
begin
a=3;b=4;mode=0;
#10;
a=3;b=7;mode=0;
#10;
a=3;b=2;mode=0;
#10;
a=3;b=10;mode=0;
#10;
a=3;b=4;mode=1;
#10;
a=3;b=7;mode=1;
#10;
a=3;b=2;mode=1;
#10;
a=3;b=10;mode=1;
#10;
end
endmodule
