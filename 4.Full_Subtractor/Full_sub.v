//data flow
/*
module fullsub(a,b,bin,diff,borrow);
input a,b,bin;
output diff,borrow;
assign diff=a^b^bin;
assign borrow=~a&b|(~(a^b))&bin;
endmodule
*/
//gate level

module fullsub(a,b,bin,diff,borrow);
input a,b,bin;
output diff,borrow;
xor x1(w5,a,b);
xor x2(diff,w5,bin);
not n1(w1,a);
and a1(w3,w1,b);
not n2(w2,w5);
and a2(w4,w2,bin);
or o1(borrow,w3,w4);
endmodule
