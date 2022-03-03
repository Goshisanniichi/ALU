module full_add ( A, B, c_in, S, c_out);

 input wire A, B, c_in;
 output reg S, c_out;

 always @(A or B or c_in)
  begin 
   S = A ^ B ^ c_in; 
   c_out = (A&B) | (A^B) & c_in; 
	
  end
  
endmodule
