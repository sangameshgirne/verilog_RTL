/*
//data flow modelling
module halfadder(input a ,b,output sum,carry);
assign sum=a^b;
assign carry=a*b;
endmodule
*/

/*
//gate level modelling
module halfadder(input a ,b,output sum,carry);
xor(sum,a,b);
and(carry,a,b);
endmodule
*/
/*
//behavioral modelling
module halfadder(input a,b,output reg sum,carry);
always@(*)
begin
sum=a^b;
carry=a*b;

end
endmodule
*/
