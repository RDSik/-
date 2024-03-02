`timescale 1ns/1ns

module ram_byte_ena_vlg_test();

parameter DATA_WIDTH = 16;
parameter ADDR_WIDTH = 8;

reg                  clk;
reg                  we;
reg [1:0]            byte_ena;
reg [DATA_WIDTH-1:0] data_in;
reg [ADDR_WIDTH-1:0] addr_in;

wire [DATA_WIDTH-1:0] data_out;

ram_byteena dut (
	.clk      (clk),
	.we       (we),
	.byte_ena (byte_ena),
	.data_in  (data_in),
	.addr_in  (addr_in),
	.data_out (data_out)
);

initial begin
	clk = 1; we = 1; byte_ena = 2'b00; data_in = 16'd0; addr_in = 8'd0; #20;
	byte_ena = 2'b01; data_in = 8'd248; addr_in = 8'd1; #20;
	byte_ena = 2'b10; data_in = 16'd512; addr_in = 8'd2; #20;
	byte_ena = 2'b11; data_in = 16'd716; addr_in = 8'd3; #20;
	byte_ena = 2'b00; data_in = 16'd60000; addr_in = 8'd4; #20;
	byte_ena = 2'b01; addr_in = 8'd5; #20;
	
	#20; we = 0;
	for(addr_in = 0; addr_in < 5; addr_in = addr_in + 1) begin
		#20;
	end
	//write data in RAM
	/*for (addr_in=0; addr_in < 12; addr_in=addr_in+1)
		begin
			#20; data_in = data_in + 1; byteena = byteena + 1;
		end
	//read data from RAM
	#20; we = 0;
	for (addr_in=0; addr_in < 12; addr_in=addr_in+1)
		begin
			#20;
		end*/
end

always #10 clk = ~clk;

initial begin
	#320 $stop;
end

initial begin
	$monitor("data_in=%b, addr_in=%b, clk=%b, we=%b, data_out=%b, byte_ena=%b", data_in, addr_in, clk, we, data_out, byte_ena);
end

endmodule
