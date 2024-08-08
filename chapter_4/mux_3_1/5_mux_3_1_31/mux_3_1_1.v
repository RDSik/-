module mux_3_1_1 (
	input  [1:0 ] s,
	input         d0,
	input         d1,
	input         d2,
	output        y
);

// always @(*) begin
	// if (s == 2'b00) begin
		// y = d0; 
	// end
	// else if (s == 2'b01) begin
		// y = d1; 
	// end
	// else if (s == 2'b10) begin
		// y = d2; 
	// end
	// else begin
		// y = 1'bx; 
	// end
// end
// 
// always @(*) begin
	// case (s)
		// 2'b00: begin
			// y = d0;
		// end
		// 2'b01: begin
			// y = d1;
		// end
		// 2'b11: begin
			// y = d2;
		// end
		// default: y = 1'bx;		
	// endcase
// end

assign y = s [1] ? d2 : (s[0] ? d1 : d0);

endmodule
