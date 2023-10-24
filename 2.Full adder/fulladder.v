/*module fulladd(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule*/
/*
module fulladd(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3,w4;
xor x1(w1,a,b);
xor x2(sum,w1,c);
and a1(w2,a,b);
and a2(w3,b,c);
and a3(w4,c,a);
or o1(w5,w2,w3);
or o2(carry,w5,w4);
endmodule
*/
/*
module fulladd(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
always@(*)
begin
sum=a^b^c;
carry=(a&b)|(b&c)|(c&a);


end
endmodule
*/
