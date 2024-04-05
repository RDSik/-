module alu_structural #(
	parameter OPERATION = 3,
	parameter WIDTH     = 8,
	parameter SHIFT     = 3,
) (
	input [OPERATION-1:0] operation,	
	input [WIDTH-1:0]     x, 
	input [WIDTH-1:0]     y, 
	input [SHIFT-1:0]     shamt,
	input                 carry_in,
	output                overflow,
	output                zero,
	output [WIDTH-1:0]    result
);

wire [8*WIDTH-1:0] t;

alu_and #(
	.WIDTH(WIDTH)
) i_and (
	.x (x),
	.y (y),
	.z (t[WIDTH-1:0])
);

alu_or #(
	.WIDTH (WIDTH)
) i_or (
	.x (x),
	.y (y),
	.z (t[2*WIDTH-1:WIDTH])
);

alu_xor #(
	.WIDTH (WIDTH)
) i_xor (
	.x (x),
	.y (y),
	.z (t[3*WIDTH-1:2*WIDTH])
);

alu_adder #(
	.WIDTH (WIDTH)
) i_adder (
	.x         (x),
	.y         (y),
	.carry_in  (carry_in),
	.z         (t[4*WIDTH-1:3*WIDTH]),
	.carry_out (overflow)
);

alu_subtractor #(
	.WIDTH (WIDTH)
) i_subtractor (
	.x (x),
	.y (y),
	.z (t[5*WIDTH-1:4*WIDTH])
);

alu_left_shifter #(
	.WIDTH (WIDTH),
	.SHIFT (SHIFT)
) i_left_shifter (
	.x     (x),
	.y     (y),
	.shamt (shamt),
	.z     (t[6*WIDTH-1:5*WIDTH])
);

alu_right_shifter #(
	.WIDTH (WIDTH),
	.SHIFT (SHIFT)
) i_right_shifter (
	.x     (x),
	.y     (y),
	.shamt (shamt),
	.z     (t[7*WIDTH-1:6*WIDTH])
);

alu_slt #(
	.WIDTH (WIDTH)
) i_slt (
	.x (x),
	.y (y),
	.z (t[8*WIDTH-1:7*WIDTH])
);

alu_mux #(
	.DATA_WIDTH (WIDTH),
	.SEL_WIDTH  (OPERATION) 
) i_mux (
	.d (t),
	.s (operation),
	.y (result)
);

assign zero = (result == 0);

endmodule
