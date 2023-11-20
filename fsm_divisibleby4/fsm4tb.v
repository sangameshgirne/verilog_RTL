module fsmtb;
reg clk,rst,in;
wire out;
fsm4 DUT(clk,rst,in,out);

initial
begin
#5;
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

task inputs(input in1);
begin
@(negedge clk)
in=in1;
end
endtask

initial begin
in=0;
rst_dut;
inputs(1);
inputs(0);
inputs(1);
inputs(0);
inputs(0);
inputs(1);
inputs(0);
#200 $finish;
end
endmodule
