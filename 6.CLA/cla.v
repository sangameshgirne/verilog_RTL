module cla(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire [3:0]c;
assign sum=a^b^c;
assign c[0]=cin;
assign c[1]=(a[0]&b[0])|((a[0]^b[0])&c[0]);
assign c[2]=(a[1]&b[1])|((a[1]^b[1])&(a[0]&b[0])|((a[0]^b[0])&c[0]));
assign c[3]=(a[2]&b[2])|((a[2]^b[2])&(a[1]&b[1])|((a[1]^b[1])&(a[0]&b[0])|((a[0]^b[0])&c[0])));
assign cout=(a[3]&b[3])|((a[3]^b[3])&(a[2]&b[2])|(a[2]^b[2])&((a[1]&b[1])|((a[1]^b[1])&(a[0]&b[0])|((a[0]^b[0])&c[0]))));
endmodule
