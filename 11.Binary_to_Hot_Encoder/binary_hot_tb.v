module onehottestbench;
parameter binary_width=4;
parameter onehot_width=16;
integer i;

 reg [binary_width-1:0] binary_in; 
  wire [onehot_width-1:0] onehot_out; 

 
  onehottobinary uut(binary_in,onehot_out);

  initial begin
    for(i=0;i<16;i=i+1)
begin
binary_in=i;
#10;
$display("binary_in=%b,onehot_out=%b",binary_in,onehot_out);
end

   end
endmodule
