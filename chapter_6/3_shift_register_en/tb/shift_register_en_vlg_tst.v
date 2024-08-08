`timescale 1 ns/1 ps

module shift_register_en_vlg_tst();

parameter WIDTH=8;

reg clk;
reg en;
reg rst;
reg d;

wire [WIDTH-1:0] q;

shift_register_en dut (
	.clk (clk),
	.rst (rst),
	.en  (en),
	.d   (d),
	.q   (q)
);

initial begin
	clk = 1'b0; rst = 1'b0; en = 1'b0; d = 1'b0;
	#10 rst = 1'b1; en = 1'b1; d = 1'b1;
	#10 rst = 1'b1; en = 1'b1; d = 1'b0;
	#10 rst = 1'b1; en = 1'b0; d = 1'b1;
	#10 rst = 1'b1; en = 1'b0; d = 1'b0;
	#10 rst = 1'b1; en = 1'b1; d = 1'b0;
	#10 rst = 1'b0; en = 1'b1; d = 1'b0;
	#10 rst = 1'b1; en = 1'b1; d = 1'b1;
	#10 rst = 1'b1; en = 1'b1; d = 1'b0;
	$stop;
end
	
always #10 clk = ~clk; 
	
endmodule
