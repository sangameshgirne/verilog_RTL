module fsm4(clk,rst,in,out);
input clk,rst,in;
output out;
parameter idle=3'b000,a=3'b001,b=3'b010,c=3'b011,d=3'b100;
reg [2:0]ps,ns;
always@(posedge clk)
begin
if(rst)
ps<=idle;
else 
ps<=ns;
end

always@(ps,in)
begin
ns=a;
case(ps)
idle:if(in)
        ns=b;
     else 
        ns=a;
a:   if(in)
	ns=b;
     else
	ns=a;
b:   if(in)
        ns=d;
     else 
	ns=c;
c:   if(in)
	ns=b;
     else
	ns=a;
d:   if(in)
        ns=d;
     else 
	ns=c;
	
endcase
end
assign out=(ps==a)?1:0;
endmodule
