module clkdiv1(clk,rst,div2,div4,div8,div16);
input clk,rst;
output div2,div4,div8,div16;
reg [3:0] counter1;

wire w1=(counter1==3'd15)?1'b1:1'b0;
always @(posedge clk)
if(rst)
counter1<=0;
else if(w1)
counter1 <= 0;
else
counter1 <= counter1+1;

assign div2 = counter1[0];
assign div4 = counter1[1];
assign div8 = counter1[2];
assign div16 = counter1[3];
endmodule
