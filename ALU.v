module ALU  (A, B, c_in, sel, out, status);

	input [31:0] A,B ;  // ALU 8-bit Inputs                 
   input [2:0] sel;  // ALU Selection
	input c_in;
	wire [31:0] S; // Sum
	wire [31:0] i0, i1, i2, i3, i4, i5, i6, i7;
	wire V, C, N, Z;// Overflow, Carry, Negative, Zero
	wire c_out;
	assign status = {V, C, N, Z};
	//wire [3:0] status;
	
	//assign status[0] = Z;
	//assign status[1] = N;
	//assign status[2] = C;
	//assign status[3] = V;
	
	
	assign i0 = S;
	assign i1 = 32'b0;
	assign i2 = A^B;
	assign i3 = A&B;
	assign i4 = A|B;
	assign i5 = ~(A|B);
	assign i6 = A>>B;
	assign i7 = A<<B;
	assign Z = (S==32'b0)? 1'b1 : 1'b0 ;
	assign N = S[31];
	assign C = c_out;
	assign V = (~A[31] & S[31]) | (B[31] & ~S[31]);
	
	output [31:0] out; //final output
	output [3:0] status;
	
   n_bit_adder uut1 ( A, B, c_in, S, c_out); //( A, B, c_in, S, c_out)
   mux_8to1 uut2 (sel, i0, i1, i2, i3, i4, i5, i6, i7, out); //(sel, i0, i1, i2, i3, i4, i5, i6, i7, out)
	
	

endmodule
