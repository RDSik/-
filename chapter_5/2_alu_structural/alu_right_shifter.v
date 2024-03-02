module alu_right_shifter #(
	parameter WIDTH = 8,
	parameter SHIFT = 3
) (
	input  [WIDTH-1:0] x,
	input  [WIDTH-1:0] y,
	input  [SHIFT-1:0] shamt,
	output [WIDTH-1:0] z
);

assign z = x >> shamt;

endmodule
