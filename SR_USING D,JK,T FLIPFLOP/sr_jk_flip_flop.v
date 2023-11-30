module sr_using_jk(s,r,clk,rst,q,qbar);
input s,r,clk,rst;
output q,qbar;
jk_flip_flop DUT1(s,r,clk,rst,q,qbar);
endmodule


module jk_flip_flop(j,k,clk,rst,q,qbar);
input j,k,clk,rst;
output reg q;
output qbar;
always@(posedge clk)
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
assign qbar=~q;
endmodule
