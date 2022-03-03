module ALU_tb;

//Inputs
 reg[31:0] A,B;
 reg[2:0] sel;
 reg c_in;
 
 wire [31:0] out;
 //wire c_out;
 wire [3:0] status;
 //wire V, C, N, Z;
 
	ALU dut0 (.A(A), .B(B), .c_in(c_in), .sel(sel), .out(out), .status(status));//(A, B, c_in, sel, out, status);
	/*
	assign out = dut0.out[31:0];
	assign Z = dut0.status[0];
	assign N = dut0.status[1];
	assign C = dut0.status[2];
	assign V = dut0.status[3];*/
	

	initial begin 

	#20;
	B <= 32'h0a; // B=10
	A <= 32'h05; // A=5
	sel <= 3'b000; // Addition
	c_in <= 1'b0;
	
	#20;
	B <= 32'h0a; // B=10
	A <= 32'h05; // A=5
	sel <= 3'b001; // Subtraction
	
	#20;
	B <= 32'h1d; // 0001 1011
	A <= 32'h06; // 0000 0110
	sel <= 3'b010; // (xor) answer should be 0001 1101
	
	#20;
	B <= 32'h9c; // 1001 1100
	A <= 32'h09; // 0000 1001
	sel <= 3'b011; // (and) answer should be 0000 1000
	
	#20;
	B <= 32'h1d; // 0001 1011
	A <= 32'h06; // 0000 0110
	sel <= 3'b100; // (or) answer should be 0001 1111
	
	#20;
	B <= 32'h1d; // 0001 1011
	A <= 32'h06; // 0000 0110
	sel <= 3'b101; // (nor) answer should be 1110 0000
	
	#20;
	B <= 32'h9c; // 1001 1100
	A <= 32'h03; // 0000 0011
	sel <= 3'b110; // (shift right) answer should be 0001 0011 
	
	#20;
	B <= 32'h1d; // 0001 1011
	A <= 32'h03; // 0000 0011
	sel <= 3'b111; // (shift left) answer should be 1101 1000
	
	#20;
	B <= 32'h00; // 0000 0000
	A <= 32'h00; // 0000 0000
	sel <= 3'b000; // (Z-Zero) status should be 0001
	
	#20;
	B <= 32'hffffffff; // 0000 0000
	A <= 32'h0; // 0000 0000
	sel <= 3'b000; // (N-Negative) status should be 0010
	
	#20;
	B <= 32'h40000000; // 0000 0000
	A <= 32'hc0000000; // 0000 0000
	sel <= 3'b000; // (C_out) status should be 0100
	
	#20;
	B <= 32'h80000000; // 0000 0000
	A <= 32'h80000000; // 0000 0000
	sel <= 3'b000; // (V-Overflow) status should be 1000 */
	
	#20;	
	
	end
 
endmodule 