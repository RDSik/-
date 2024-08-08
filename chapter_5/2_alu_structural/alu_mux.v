module alu_mux #(
	parameter DATA_WIDTH = 8,
	parameter SEL_WIDTH  = 3
) (
	input  [((2**SEL_WIDTH)*DATA_WIDTH)-1:0] d,
	input  [SEL_WIDTH-1:0]                   s,
	output [DATA_WIDTH-1:0]                  y
);

wire [DATA_WIDTH-1:0] tmp_array [0:(2**SEL_WIDTH)-1];

generate 
	genvar i;
	for (i = 0; i < 2**SEL_WIDTH; i = i + 1)	
		begin: gen_array
			assign tmp_array[i] = d[((i+1)*DATA_WIDTH)-1:(i*DATA_WIDTH)];
		end
endgenerate
	
assign y = tmp_array[s];

endmodule
