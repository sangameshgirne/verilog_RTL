module rcatb;
reg [3:0]a,b;
reg cin;
wire cout;
wire [3:0]sum;
rca ra(a,b,cin,sum,cout);

task inputs(input [3:0]A,B,input CIN);
begin
a=A;
b=B;
cin=CIN;
#10;
$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
end
endtask

initial
begin
inputs(4'b1000,4'b1000,1'b1);

inputs(4'b1000,4'b1000,1'b0);
end
endmodule
