
module sr_using_d(s,r,clk,rst,q,qbar);
input s,r,clk,rst;
output q,qbar;
assign w=s|(~r&q);
dflipflop DUT1(w,clk,rst,q,qbar);
endmodule

module dflipflop(d,clk,rst,q,qbar);
input d,clk,rst;
output reg q;
output qbar;
always@(posedge clk)
begin
if(rst)
q<=0;
else
q<=d;
end
assign qbar=~q;
endmodule
