`timescale 1ns/1ns

module fifo_vlg_tst();

reg       clk, 
reg       rst,
reg       pop,
reg       push;
reg [7:0] write_data;

wire       empty, 
wire       full;
wire [7:0] read_data;
wire [1:0] read_pointer, 
wire [1:0] write_pointer;

fifo dut (
	.clk        (clk),
	.rst        (rst),
	.pop        (pop),
	.push       (push),
	.write_data (write_data),
	.empty      (empty),
	.full       (full),
	.read_data  (read_data)
);

initial begin
	clk = 1; rst = 0; push = 1; pop = 0; write_data = 8'b00000000; #20;
	write_data = 8'b00000001; #10;
	rst = 1; #10
	write_data = 8'b00000010; #20;
	write_data = 8'b00000011; #20;
	write_data = 8'b00000100; #20;
	write_data = 8'b00000101; #20;
	write_data = 8'b00000110; push = 0; pop = 1; #20;
	write_data = 8'b00000111; #20;
	write_data = 8'b00001000; #20;
	write_data = 8'b00001001; #20;
	write_data = 8'b00001010; #20;
end
	
always #10 clk = ~clk;

assign read_pointer  = dut.read_pointer;
assign write_pointer = dut.write_pointer;

initial begin
	#220 $stop;
end

initial begin
	$monitor("clk=%b, rst=%b, pop=%b, push=%b, write_data=%b, empty=%b, full=%b, read_data=%b", clk, rst, pop, push, write_data, empty, full, read_data);
end

endmodule
