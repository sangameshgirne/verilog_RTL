module divideby4point5(clk,rst,clk,clkout);
input clk,rst,clk;
output clkout;
reg[3:0] counter;
reg a1,a2;
always@(posedge clk)
begin
if(rst)
counter<=0;
else if(counter==8)
counter<=0;
else
counter<=counter+1;
end

always@(posedge clk)
begin
if((counter==0)||(counter==1))
a1<=1;
else a1<=0;

end

always@(negedge clk)
begin
if((counter==5)||(counter==6))
a2<=1;
else a2<=0;

end
assign clkout=a1|a2;
endmodule
