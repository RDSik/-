module ram_bit #(
	parameter DATA_WIDTH = 8,
	parameter ADDR_WIDTH = 8
) (
	input                   clk,
	input                   we, 
	input  [DATA_WIDTH-1:0] data_in,
	input  [ADDR_WIDTH-1:0] addr_in,
	output [DATA_WIDTH-1:0] data_out,
	output bit
);

reg [DATA_WIDTH-1:0] ram [0:2**ADDR_WIDTH-1]; 

always @(posedge clk) begin
	if (we)
		ram[addr_in] <= data_in;
end

assign data_out = ram[addr_in];
assign bit = data_in[7]^data_in[6]^data_in[5]^data_in[4]^data_in[3]^data_in[2]^data_in[1]^data_in[0];

endmodule
