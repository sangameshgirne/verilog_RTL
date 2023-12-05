module pipo_tb;
reg clk,rst,load;
reg [3:0]in;
wire [3:0]out;
pipov DUT(clk,rst,load,in,out);
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

task load_dut;
begin
@(negedge clk)
load=1;
@(negedge clk)
load=0;
end
endtask

task ini(input [3:0]d);
begin
@(negedge clk)
in=d;
end
endtask

initial
begin
rst=1;
in=0;
rst_dut;

ini(4'b1010);

load_dut;

end

initial #100 $finish;
endmodule


