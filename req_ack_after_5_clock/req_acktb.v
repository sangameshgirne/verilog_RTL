module high_edge_detecttb;
reg req,clk,rst; 
wire ack;
edge_detect DUT( req,clk,rst,ack);
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


initial
begin
req=0;
rst_dut;
@(negedge clk);
req=1;
repeat(7)
  @(negedge clk);
@(negedge clk);
req=0;
@(negedge clk);
req=0;
$finish;
end
endmodule
