module clkdiv(clk,rst,clkout);
input clk,rst;
output clkout;
reg [2:0] counter1;
reg [2:0] counter2;
wire w1=(counter1==3'd4)?1'b1:1'b0;
always @(posedge clk)
if(rst)
counter1<=0;
else if(w1)
counter1 <= 0;
else
counter1 <= counter1+1;
wire w2=(counter2==3'd4)?1'b1:1'b0;
always @(negedge clk)
if(rst)
counter2<=0;
else if(w2)
counter2 <= 0;
else
counter2 <= counter2+1;
assign clkout = counter1[1] | counter2[1];
endmodule
