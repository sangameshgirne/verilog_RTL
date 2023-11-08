module alu(a,b,opcode,result);
input [3:0]a,b;
input [2:0]opcode;
output reg[7:0]result;
parameter add_op=0,
sub_op=1,
mul_op=2,
and_op=3,
or_op=4,
xor_op=5,
xnor_op=6,
not_op=7;
always@(*)
begin
case(opcode)
0:result=a+b;
1:result=a-b;
2:result=a*b;
3:result=a&b;
4:result=a|b;
5:result=a^b;
6:result=a~^b;
7:result=!a;
endcase
end
endmodule
