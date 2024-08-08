module decoder_6_64 (
	input         en,
	input  [5:0]  in,
	output [63:0] out
);

assign out = en ? (1 << in) : 64'd0;

endmodule
