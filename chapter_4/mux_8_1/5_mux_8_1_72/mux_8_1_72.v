module mux_8_1_72 (
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

wire [2:0] w0;
wire [2:0] w1;
wire [2:0] w2;
wire [2:0] w3;
wire [2:0] w4;
wire [2:0] w5;

mux_2_1 mux0(.s(s[0]), .d0(d0), .d1(d1), .y(w0));
mux_2_1 mux1(.s(s[0]), .d0(d2), .d1(d3), .y(w1));
mux_2_1 mux2(.s(s[0]), .d0(d4), .d1(d5), .y(w2));
mux_2_1 mux3(.s(s[0]), .d0(d6), .d1(d7), .y(w3));
mux_2_1 mux4(.s(s[1]), .d0(w0), .d1(w1), .y(w4));
mux_2_1 mux5(.s(s[1]), .d0(w2), .d1(w3), .y(w5));
mux_2_1 mux6(.s(s[2]), .d0(w4), .d1(w5), .y(y));

endmodule
