module stack_error #(
	parameter DATA_WIDTH = 8, 
	parameter PTR_WIDTH = 2
) (
	input                       clk,
	input                       rst,
	input                       push,
	input                       pop,
	input      [DATA_WIDTH-1:0] write_data,
	output reg [DATA_WIDTH-1:0] read_data,
	output                      full, 
	output                      empty
);

reg [DATA_WIDTH-1:0] stack [0:2**PTR_WIDTH-1];
reg [PTR_WIDTH-1:0] pointer;

always @(posedge clk or negedge rst) begin
	if (!rst)
		pointer <= 2'b00;	
	else case ({push, pop})
		2'b10: begin
			if (pointer < 2'b11) begin
				stack[pointer] <= write_data;
				pointer <= pointer + 1; 
			end
			else 
				stack[pointer] <= write_data;
		end
		2'b01: begin
			if (pointer != 2'b00) begin
				read_data <= stack[pointer - 1];
				pointer <= pointer - 1; 
			end
			else 
				read_data <= 0;
		end
		default: read_data <= stack[pointer];
	endcase
end	

assign full = (pointer == 2'b11) ? 1 : 0;
assign empty = (pointer == 2'b00) ? 1 : 0;

endmodule
