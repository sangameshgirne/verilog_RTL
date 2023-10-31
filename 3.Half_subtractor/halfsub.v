//data flow
/*
module halfsubtractor(a,b,diff,borrow);
input a,b;
output diff,borrow;
assign diff=~a&b|a&~b;
assign borrow=~a&b;
endmodule
*/
//gate level
/*
module halfsubtractor(a,b,diff,borrow);
input a,b;
output diff,borrow;
wire w1;
xor x1(diff,a,b);
not n1(w1,a);
and a1(borrow,b,w1);
endmodule
*/
//behavioral
module halfsubtractor(a,b,diff,borrow);
input a,b;
output reg diff,borrow;
always@(a,b)
begin
diff=~a&b|a&~b;
borrow=~a&b;
end
endmodule
