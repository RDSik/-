module mux_8_1 (
	input  [2:0] s,
	input  [2:0] d0,
	input  [2:0] d1,
	input  [2:0] d2,
	input  [2:0] d3,
	input  [2:0] d4,
	input  [2:0] d5,
	input  [2:0] d6,
	input  [2:0] d7,
	output [2:0] y
);

assign y = s[2] ? (s[1] ? (s[0] ? d7 : d6) : (s[0] ? d5 : d4)) : (s[1] ? (s[0] ? d3 : d2) : (s[0] ? d1 : d0));

endmodule
