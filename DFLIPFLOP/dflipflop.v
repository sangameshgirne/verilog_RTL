module dflipflop(d,clk,rst,q,qbar);
input d,clk,rst;
output q;
output qbar;
srflipflop DUT1(d,~d,clk,rst,q,qbar);
endmodule

module srflipflop(s,r,clk,rst,q,qbar);
input s,r,clk,rst;
output reg q;
output qbar;
always@(posedge clk)
if(rst)
q<=0;
else
begin
case({s,r})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=1'bx;
endcase
end
assign qbar=~q;
endmodule
