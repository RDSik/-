module fifo #(
	parameter DATA_WIDTH = 8, 
	parameter FIFO_SIZE  = 2
) (
	input [DATA_WIDTH-1:0]      write_data,	
	input                       clk,
	input                       rst,
	input                       push,
	input                       pop,
	output reg                  full, 
	output reg                  empty
	output reg [DATA_WIDTH-1:0] read_data,
);

reg [DATA_WIDTH-1:0] fifo [0:2**FIFO_SIZE-1];
reg [FIFO_SIZE-1:0] write_pointer;
reg [FIFO_SIZE-1:0] read_pointer;

always @(posedge clk or negedge rst) begin
	if (!rst) begin
		read_data <= 0;
		write_pointer <= 0;
		read_pointer <= 0; 
	end
	else if (push & !full) begin
		fifo[write_pointer] <= write_data;
		write_pointer <= write_pointer + 1; 
	end
	else if (pop & !empty) begin
		read_data <= fifo[read_pointer];
		read_pointer <= read_pointer + 1; 
	end
	else begin
		fifo[write_pointer] <= write_data;
		read_data <= fifo[read_pointer]; 
	end
end

always @(posedge clk) begin
	if (push && (write_pointer == read_pointer - 1 || write_pointer == 2'b11 && read_pointer == 2'b00))
		full <= 1;
	else if (pop && (read_pointer == write_pointer - 1 || read_pointer == 2'b11 && write_pointer == 2'b00))
		empty <= 1;
	else begin
		empty <= 0;
		full <= 0; 
	end
end

endmodule
