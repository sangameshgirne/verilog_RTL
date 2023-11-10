module sequencedetect(in,clk,reset,out);
input in,clk,reset;
output out;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg[1:0]ps,ns;

always@(posedge clk or posedge reset)
begin
if(reset)
ps<=s0;
else
ps<=ns;
end

always@(in,ps)
begin
ns=s0;
case(ps)
s0:ns=in?s1:s0;
s1:ns=in?s1:s2;
s2:ns=in?s3:s0;
s3:ns=in?s1:s0;
endcase
end

assign out=(ps==s3)?1:0;
endmodule
