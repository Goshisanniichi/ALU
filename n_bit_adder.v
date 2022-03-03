module n_bit_adder ( A, B, c_in, S, c_out);

parameter N = 32;
 input wire [N-1:0] A, B;
 input wire c_in;
 
 output [N-1:0] S;
 output c_out;
 
 wire [N:0] carry;  
 
 assign carry[0] = c_in;
 /*
 full_add uut0 ( A[0], B[0], carry[0], S[0], carry[1]);
 full_add uut1 ( A[1], B[1], carry[1], S[1], carry[2]);
 full_add uut2 ( A[2], B[2], carry[2], S[2], carry[3]);
 full_add uut3 ( A[3], B[3], carry[3], S[3], carry[4]);
 full_add uut4 ( A[4], B[4], carry[4], S[4], carry[5]);
 full_add uut5 ( A[1], B[1], carry[1], S[1], carry[2]);
 full_add uut6 ( A[2], B[2], carry[2], S[2], carry[3]);
 full_add uut7 ( A[3], B[3], carry[3], S[3], carry[4]);
 */
 genvar i;
 generate 
 
 for (i=0; i<32; i=i+1) 
 begin:fulladd
 
 full_add uut0 ( A[i], B[i], carry[i], S[i], carry[i+1]);
 
 end
 endgenerate
 
 assign c_out = carry[32];
 
 
 endmodule

 
 