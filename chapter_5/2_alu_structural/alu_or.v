module alu_or #(
	parameter WIDTH = 8
) (
	input  [WIDTH-1:0] x,
	input  [WIDTH-1:0] y,
	output [WIDTH-1:0] z
);

assign z = x | y;

endmodule
