module sipov(clk,rst,in,out);
input clk,rst,in;
output [3:0]out;
reg [3:0]temp;
always@(posedge clk)
begin
if(rst)
temp<=4'b0000;
else begin
temp<={in,temp[3:1]};
end
end

assign out=temp;
endmodule
