
module clkdiv_tb;
 // Inputs
 reg clk,rst;
 // Outputs
 wire clkout;
 // Instantiate the Design Under Test (DUT)
clockdiv DUT(clk,rst,clkout);

always
begin
clk=0;
#10 clk=~clk;
#10;
end

 initial 
 begin
rst=0;
@(negedge clk)
rst=1;
@(negedge clk)
rst=0;
#500 $finish;
 end 
endmodule
