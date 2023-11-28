
module srtb;
reg s,r,clk;
wire q,qbar;
srflipflop DUT(s,r,clk,q,qbar);
initial
begin
clk=0;
forever #5 clk=~clk;
end

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
