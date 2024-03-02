`timescale 1 ns/1 ps

module counter_vlg_tst();

parameter WIDTH = 8;

reg             clk;
reg             rst;
reg             load;
reg [WIDTH-1:0] data_load;

wire [WIDTH-1:0] cnt;

counter_load dut (
	.clk       (clk),
	.rst       (rst),
	.load      (load),
	.data_load (data_load),
	.cnt       (cnt)
);

initial begin 
	clk = 1'b0; rst = 1'b0; load = 1'b0;
	#10 rst = 1'b1;
	#35 load = 1'b1;
	#15 load = 1'b0;
	#55 rst = 1'b0;
	#15 rst = 1'b1;
	$stop;
end
	
initial begin
	forever begin
		#10;
		data_load = $urandom_range(0, 2**WIDTH - 1);
	end
end

always #10 clk = ~clk;

initial begin
	$monitor("Time:\t%g , clk-%b, rst-%b, load-%b, data_load-%b, cnt-%b",
		$time, clk, rst, load, data_load, cnt);
end

endmodule
