module siso_tb;
reg clk,rst,in;
wire out;
sisov DUT(clk,rst,in,out);
initial
begin
clk=0;
in=0;
rst=1;
#5 rst=0;
end

always #1 clk=~clk;
always #2 in=~in;
initial #100 $finish;
endmodule
