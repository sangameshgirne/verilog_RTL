
module multiplier_4bit(a,b,product);
input [3:0] a,b;
output [7:0] product;
 wire [3:0] m0;
 wire [4:0] m1;
 wire [5:0] m2;
 wire [6:0] m3;
 
 //middle terms
 wire [7:0] s1,s2,s3;
 
 assign m0={4{a[0]}}&b;
 assign m1={4{a[1]}}&b;
 assign m2={4{a[2]}}&b;
 assign m3={4{a[3]}}&b;
 
 assign s1= m0+(m1<<1);
 assign s2= s1+(m2<<2);
 assign s3= s2+(m3<<3);
 assign product=s3;
 endmodule
 
