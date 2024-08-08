module mux_3_1_21 (
	input  [1:0] s,
	input  [2:0] d0,
	input  [2:0] d1,
	input  [2:0] d2,
	output [2:0] y
);

wire [2:0] w0;

mux_2_1 mux0(.s(s[0]), .d0(d0), .d1(d1), .y(w0));
mux_2_1 mux1(.s(s[1]), .d0(w0), .d1(d2), .y(y));

endmodule
