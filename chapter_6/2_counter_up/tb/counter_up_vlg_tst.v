`timescale 1 ns/1 ps

module counter_up_vlg_tst();

parameter WIDTH = 8;

reg clk;
reg rst;
reg up_down;

wire [WIDTH-1:0] cnt;

counter_up dut(
	.clk     (clk),
	.rst     (rst),
	.up_down (up_down),
	.cnt     (cnt)
);

initial begin 
	clk = 1'b0; rst = 1'b0; up_down = 1'b1;
	#10 rst = 1'b1;
	#35 up_down = 1'b0;
	#35 up_down = 1'b1;
	#55 rst = 1'b0;
	#15 rst = 1'b1;
	$stop;
end

always #10 clk = ~clk;

initial begin
	$monitor("Time:\t%g , clk-%b, rst-%b, up_down, cnt-%b",
		$time, clk, rst, up_down, cnt);
end

endmodule
