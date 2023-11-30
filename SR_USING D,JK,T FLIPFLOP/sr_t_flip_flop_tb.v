
module sr_using_t_tb;
reg s,r,clk,rst;
wire q,qbar;
sr_using_t DUT(s,r,clk,rst,q,qbar);
initial
begin
clk=0;
forever #5 clk=~clk;
end

task rst_dut;
begin
@(negedge clk)
rst=1;
@(negedge clk)
rst=0;
end
endtask

task inputs(input i,j);
begin
@(negedge clk)
s=i;
r=j;
#5;
end
endtask

initial
begin
s=0;
r=0;
rst_dut;
inputs(0,0);
inputs(0,1);
inputs(0,0);
inputs(1,0);
inputs(0,0);
inputs(1,1);
end
initial 
#150 $finish;
endmodule
