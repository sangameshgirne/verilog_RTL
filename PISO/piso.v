module pisov(clk,rst,load,in,out);
input clk,rst,load;
input [3:0]in;
output out;
reg [3:0]temp;
always@(posedge clk)
begin
if(rst)
temp<=4'b0000;
else if(load)
temp<=in;
else begin
temp<={0,temp[3:1]};
end
end

assign out=temp[0];
endmodule
