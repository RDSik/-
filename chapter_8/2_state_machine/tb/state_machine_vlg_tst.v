`timescale 1ns/1ns

module state_machine_vlg_tst();

reg clk;
reg en;
reg rst;
reg a0;
reg a1;
reg a2;
reg a3;

wire       y0;
wire       y1;
wire [1:0] state;

state_machine dut (
	.clk (clk),
	.en  (en),
	.rst (rst),
	.a0  (a0),
	.a1  (a1),
	.a2  (a2),
	.a3  (a3),
	.y0  (y0),
	.y1  (y1)
);

assign state = dut.state;

initial begin
	clk = 1; rst = 0; en = 1; a0 = 1; a1 = 1; a2 = 1; a3 = 1;
	#10; rst = 1;
	#20; en = 0; a0 = 1; a1 = 0; a2 = 0; a3 = 0;
	#20 en = 1; a0 = 0; a1 = 1; a2 = 0; a3 = 0;
	#20 en = 1; a0 = 0; a1 = 0; a2 = 1; a3 = 0;
	#20; en = 1; a0 = 0; a1 = 0; a2 = 1; a3 = 0;
	#20; en = 1; a0 = 0; a1 = 0; a2 = 0; a3 = 1;
	#20; en = 1; a0 = 0; a1 = 0; a2 = 0; a3 = 1;
end
	
always #10 clk = ~clk;
	
initial begin
	$monitor("clk=%b, en=%b, rst=%b, a0=%b, a1=%b, a2=%b, a3=%b", clk, en, rst, a0, a1, a2, a3);
end

initial begin
	#150 $stop;
end

endmodule
