module mux_2_1 (
	input        s,
	input  [2:0] d0,
	input  [2:0] d1,
	output [2:0] y
);

// always @(*) begin
	// if (s)
		// y = d1;
	// else
		// y = d0;
// end
// 
// always @(*) begin
	// case (s)
		// 0: y = d0; 
		// 1: y = d1;
		// default: y = 3'bxxx;
	// endcase
// end

assign y = s ? d1 : d0;

endmodule
