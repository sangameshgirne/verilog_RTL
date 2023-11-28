module dtb;
reg d,clk,rst;
wire q ,qbar;
dflipflop DUT(d,clk,rst,q,qbar);
initial
begin
clk=0;
forever #5 clk=~clk;
end

task inputs(input i);
begin
@(negedge clk)
d=i;
end
endtask

task rstdut;
begin
@(negedge clk)
rst=1;
@(negedge clk)
rst=0;
end
endtask

initial
begin
d=0;
rstdut;
inputs(0);
inputs(1);
inputs(0);
inputs(1);
end
endmodule
