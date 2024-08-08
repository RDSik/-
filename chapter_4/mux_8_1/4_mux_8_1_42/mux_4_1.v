module mux_4_1 (
	input  [1:0] s,
	input  [2:0] d0,
	input  [2:0] d1,
	input  [2:0] d2,
	input  [2:0] d3,
	output [2:0] y
);

// always @(*) begin
	// if (s == 2'b00)
		// y = d0;
	// else if (s == 2'b01)
		// y = d1;
	// else if (s == 2'b10)
		// y = d2;
	// else if (s == 2'b11)
		// y = d3;
	// else
		// y = 3'bxxx;
// end
// 
// always @(*) begin
	// case (s)
		// 2'b00: y = d0; 
		// 2'b01: y = d1;
		// 2'b10: y = d2;
		// 2'b11: y = d3;
		// default: y = 3'bxxx;
	// endcase
// end

assign y = s[1] ? (s[0] ? d3 : d2) : (s[0] ? d1 : d0);


endmodule
