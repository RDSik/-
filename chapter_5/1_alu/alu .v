`define ALU_AND 3'b000
`define ALU_OR  3'b001
`define ALU_XOR 3'b010
`define ALU_ADD 3'b011
`define ALU_SUB 3'b100
`define ALU_SLL 3'b101
`define ALU_SRL 3'b110
`define ALU_SLT 3'b111

module alu #(
	parameter OPERATION = 3	
	parameter WIDTH     = 8,
	parameter SHIFT     = 3
) (
	input [OPERATION-1:0]  operation,
	input [WIDTH-1:0]      x, 
    input [WIDTH-1:0]      y, 
	input [SHIFT-1:0]      shamt,
	input                  carry_in,
	output                 zero,
    output reg             overflow,
	output reg [WIDTH-1:0] result
);

always @(*) begin
    case (operation)
		`ALU_AND: result = x & y;
		`ALU_OR:  result = x | y;
		`ALU_XOR: result = x ^ y;
		`ALU_ADD: {overflow, result} = x + y + carry_in;
		`ALU_SUB: result = x - y;
		`ALU_SLL: result = x << shamt;
		`ALU_SRL: result = x >> shamt;
		`ALU_SLT: result = (x < y) ? 1 : 0;
	endcase
end

assign zero = (result == 0);

endmodule
