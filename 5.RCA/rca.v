module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum=a^b^c;
assign carry=a&b|c&(a^b);
endmodule

module rca(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire c1,c2,c3;
fulladder fa1(a[0],b[0],cin,sum[0],c1);
fulladder fa2(a[1],b[1],c1,sum[1],c2);
fulladder fa3(a[2],b[2],c2,sum[2],c3);
fulladder fa4(a[3],b[3],c3,sum[3],cout);
endmodule
  
