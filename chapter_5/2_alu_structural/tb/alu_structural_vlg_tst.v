`timescale 1 ns/ 1 ps

module alu_structural_vlg_tst();


parameter OPERATION = 3;
parameter WIDTH     = 8;
parameter SHIFT     = 3;

reg [OPERATION-1:0] operation;
reg [SHIFT-1:0]     shamt;
reg [WIDTH-1:0]     x;
reg [WIDTH-1:0]     y;
reg                 carry_in;


wire [WIDTH-1:0] result;
wire             overflow;
wire             zero;

integer i;

alu_structural i1 (
	.operation (operation),
	.overflow  (overflow),
	.carry_in  (carry_in),
	.result    (result),
	.shamt     (shamt),
	.x         (x),
	.y         (y),
	.zero      (zero)
);

initial begin
		
	x = 8'b11111111; y = 8'b11111111; shamt = 3'b100; operation = 3'b011; carry_in = 1'b1;
	
	for (i = 0; i <= 8; i = i + 1) begin
		#10 operation = i;
	end

	$stop;
end  
	
initial begin
	forever begin
		#10;
		x = $urandom_range(0, 2**WIDTH - 1);
		y = $urandom_range(0, 2**WIDTH - 1);
	end
end

initial begin
	$dumpfile("alu_vlg_tst.vcd");
	$dumpvars(0, alu_vlg_tst);
end
	
initial begin
	$monitor("Time:\t%g , x-%b, y-%b, operation-%b, shamt-%b, result-%b, zero-%b, overflow-%b, carry_in-%b", 
		$time, x, y, operation, shamt, result, zero, overflow, carry_in);	
end

endmodule
