module shift_register_en #(
	parameter WIDTH = 8
) (
	input                  clk, 
	input                  en, 
	input                  rst, 
	input                  d,
	output                 serial_out,
	output reg [WIDTH-1:0] q
);

always @(posedge clk or negedge rst) begin
	if (!rst) 
		q <= 0; 
	else if (en) 
		q <= {d, q[WIDTH-1:1]}; 
end
	
assign serial_out = q[0];
	
endmodule
