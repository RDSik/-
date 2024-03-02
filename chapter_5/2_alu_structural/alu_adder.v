module alu_adder #(
	parameter WIDTH = 8
) (
	input [WIDTH-1:0]  x, 
	input [WIDTH-1:0]  y,
	input              carry_in,
	output             carry_out,
	output [WIDTH-1:0] z
);

assign {carry_out, z} = x + y + carry_in;

endmodule
