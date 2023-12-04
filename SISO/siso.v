module sisov(clk,rst,in,out);
input clk,rst,in;
output out;
reg [3:0]temp;
always@(posedge clk)
begin
if(rst)
temp<=0;
else
temp<=temp>>1;
temp[3]<=in;
end
assign out=temp[0];
endmodule
