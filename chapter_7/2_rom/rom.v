module rom #(
	parameter DATA_WIDTH = 4,
	parameter ADDR_WIDTH = 6
) (
	input clk,
	input  [ADDR_WIDTH-1:0] addr_in,
	output [DATA_WIDTH-1:0] data_out,
	output [ADDR_WIDTH-1:0] addr_out
);

reg [DATA_WIDTH-1:0] rom [0:2**ADDR_WIDTH-1];
reg [ADDR_WIDTH-1:0] addr_reg;

initial begin
	$readmemh("rom.txt", rom);
end

always @(posedge clk) begin
	addr_reg <= addr_in;
end

assign data_out = rom[addr_reg];
assign addr_out = addr_reg;

endmodule
