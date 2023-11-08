

module alu_tb;

	
	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] opcode;

	
	wire [7:0] result;

	
	alu uut (a,b,opcode,result);

	
		initial 
begin

#0 a = 4'b0001; b = 4'b0010; opcode = 3'b000;
#10 a = 4'b0110; b = 4'b0110; opcode = 3'b000;


#10 a = 4'b1100; b = 4'b0011; opcode = 3'b001;
#10 a = 4'b1101; b = 4'b1010; opcode = 3'b001;


#10 a = 4'b1100; b = 4'b0111; opcode = 3'b010;
#10 a = 4'b1111; b = 4'b0011; opcode = 3'b010;


#10 a = 4'b1100; b = 4'b0111; opcode = 3'b011;
#10 a = 4'b1101; b = 4'b1011; opcode = 3'b011;


#10 a = 4'b0101; b = 4'b1011; opcode = 3'b100;
#10 a = 4'b1001; b = 4'b1010; opcode = 3'b100;


#10 a = 4'b1001; opcode = 3'b101;
#10 a = 4'b0011; opcode = 3'b101;


#10 a = 4'b0111; b = 4'b1011; opcode = 3'b110;
#10 a = 4'b1010; b = 4'b0101; opcode = 3'b110;


#10 a = 4'b0110; b = 4'b0110; opcode = 3'b111;
#10 a = 4'b0011; b = 4'b1110; opcode = 3'b111;

	end
	
	initial
	begin
	$monitor(" A=%b | B=%b | Opcode = %b | Result=%b",a,b,opcode,result);
	#300 $finish;
	end
      
endmodule
