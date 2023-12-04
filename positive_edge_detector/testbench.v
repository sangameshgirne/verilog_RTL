module positive_edge_detector_tb;
reg clk,data;
wire out;
positive_edge_detector DUT1(clk,data,out);
initial
begin
clk=0;
forever #5 clk=~clk;
end

task d_dut(input z);
begin
@(negedge clk)
data=z;
end
endtask
initial
begin
d_dut(0);
d_dut(1);
d_dut(0);
d_dut(0);
d_dut(1);
d_dut(0);
d_dut(1);
d_dut(0);
#20 $finish;
end

endmodule
