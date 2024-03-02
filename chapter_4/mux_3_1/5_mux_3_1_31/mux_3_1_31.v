module mux_3_1_31 (
	input  [1:0] s,
	input  [2:0] d0,
	input  [2:0] d1,
	input  [2:0] d2,
	output [2:0] y
);

mux_3_1_1 mux0(.s(s), .d0(d0[0]), .d1(d1[0]), .d2(d2[0]), .y(y[0]));
mux_3_1_1 mux1(.s(s), .d0(d0[1]), .d1(d1[1]), .d2(d2[1]), .y(y[1]));
mux_3_1_1 mux2(.s(s), .d0(d0[2]), .d1(d1[2]), .d2(d2[2]), .y(y[2]));

endmodule
