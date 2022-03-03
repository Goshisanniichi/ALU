module mux_8to1 (sel, i0, i1, i2, i3, i4, i5, i6, i7, out);
 
	input [2:0] sel; // select
	input [31:0] i0, i1, i2, i3, i4, i5, i6, i7;// each input
	output reg [31:0] out; //output
	
	always @ (sel, i0, i1, i2, i3, i4, i5, i6, i7) begin
	
	case(sel)
	
		3'd0: out <= i0;
		3'd1: out <= i1;
		3'd2: out <= i2;
		3'd3: out <= i3;
		3'd4: out <= i4;
		3'd5: out <= i5;
		3'd6: out <= i6;
		3'd7: out <= i7;
	endcase
end
endmodule 
	
	