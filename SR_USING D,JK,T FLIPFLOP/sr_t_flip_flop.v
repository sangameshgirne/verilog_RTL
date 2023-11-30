module sr_using_t(s,r,clk,rst,q,qbar);
input s,r,clk,rst;
output q,qbar;
wire w=(r&q)|(s&qbar);
t_flip_flop DUT1(w,clk,rst,q,qbar);
endmodule


module t_flip_flop(t,clk,rst,q,qbar);
input t,clk,rst;
output reg q;
output qbar;
always@(posedge clk)
begin
if(rst)
q<=0;
else
 begin
 if(t)
 q<=~q;
 else
 q<=q;
 end
end
assign qbar=~q;
endmodule
