`timescale 1ns/1ns

module ram_vlg_tst();

parameter DATA_WIDTH = 8;
parameter ADDR_WIDTH = 11;

reg                  clk;
reg                  we;
reg [DATA_WIDTH-1:0] data_in;
reg [ADDR_WIDTH-1:0] addr_in;

wire [DATA_WIDTH-1:0] data_out;
wire [ADDR_WIDTH-1:0] addr_out;

ram dut (
	.clk      (clk),
	.we       (we),
	.data_in  (data_in),
	.addr_in  (addr_in),
	.data_out (data_out),
	.addr_out (addr_out)
);

initial begin
	clk = 0; we = 1;
	#10; data_in = 8'b00000000; addr_in = 11'b00000000000;
	
	//write data in RAM
	for (addr_in = 0; addr_in < 11; addr_in = addr_in + 1) begin
		#20; data_in = data_in + 1;
	end

	//read data from RAM
	#20; we = 0;
	for (addr_in = 0; addr_in < 11; addr_in = addr_in + 1) begin
		#20;
	end
end
	
always #10 clk = ~clk;

initial begin
	#500 $stop;
end

initial begin
	$monitor("data_in=%b, addr_in=%b, clk=%b, we=%b, data_out=%b, addr_out=%b", data_in, addr_in, clk, we, data_out, addr_out);
end
	
endmodule
