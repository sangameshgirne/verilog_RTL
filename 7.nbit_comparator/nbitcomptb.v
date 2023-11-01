module nbitcomptb;
reg [31:0]a,b;
wire lesser,equal,greater;
nbitcomp DUT(a,b,lesser,equal,greater);

initial
begin
a=1;b=1;
#10 a=22;b=23;
#10 a=345;b=123;
#10 a=4545;b=120;
#10 $finish;
end
initial
$monitor("a=%d,b=%d,lesser=%d,equal=%d,greater=%d",a,b,lesser,equal,greater);
endmodule
