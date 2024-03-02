`timescale 1ns/1ns

module rom_vlg_tst();

parameter DATA_WIDTH = 4;
parameter ADDR_WIDTH = 6;

reg clk;
reg [ADDR_WIDTH-1:0] addr_in;

wire [DATA_WIDTH-1:0] data_out;
wire [ADDR_WIDTH-1:0] addr_out;

rom dut (
	.clk      (clk),
	.addr_in  (addr_in),
	.data_out (data_out),
	.addr_out (addr_out)
);

initial begin
	clk = 0; 
	#10; addr_in = 6'b000000;
	for (addr_in = 0; addr_in < 16; addr_in = addr_in + 1) begin
		#20;
	end
end
	
always #10 clk = ~clk;

initial begin
	#380 $stop;
end

initial begin
	$monitor("addr_in=%b, clk=%b, data_out=%b, addr_out=%b", addr_in, clk, data_out, addr_out);
end
	
endmodule
