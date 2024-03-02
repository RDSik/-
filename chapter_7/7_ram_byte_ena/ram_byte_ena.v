module ram_byte_ena #(
	parameter DATA_WIDTH = 16,
	parameter ADDR_WIDTH = 8
) (
	input                   clk,
	input                   we, 
	input  [1:0]            byte_ena,
	input  [DATA_WIDTH-1:0] data_in,
	input  [ADDR_WIDTH-1:0] addr_in,
	output [DATA_WIDTH-1:0] data_out
);

reg [DATA_WIDTH-1:0] ram [0:2**ADDR_WIDTH-1];

always @(posedge clk) begin
	if (we) begin
		case (byte_ena)
			2'b01: ram[addr_in] <= data_in[7:0];
			2'b10: ram[addr_in] <= data_in[DATA_WIDTH-1:0];
			default: ram[addr_in] <= data_in[DATA_WIDTH-1:0];
		endcase
	end
end

assign data_out = ram[addr_in];
endmodule
