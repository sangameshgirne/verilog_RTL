module positive_edge_detector(clk,data,out);
input clk,data;
output out;

reg data_d;
always@(posedge clk)
begin
data_d<=data;
end
assign out=data & ~data_d;
endmodule
