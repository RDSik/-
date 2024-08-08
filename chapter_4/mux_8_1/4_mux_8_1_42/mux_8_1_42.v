module mux_8_1_42 (
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

wire [2:0] one; 
wire [2:0] zero;

mux_4_1 mux0(.s(s[1:0]), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .y(zero));
mux_4_1 mux1(.s(s[1:0]), .d0(d4), .d1(d5), .d2(d6), .d3(d7), .y(one));
mux_2_1 mux2(.s(s[2]), .d0(zero), .d1(one), .y(y));

endmodule
