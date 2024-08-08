module counter_up #(
	parameter WIDTH = 8
) (
	input                  clk, 
	input                  rst, 
	input                  up_down,
	output reg [WIDTH-1:0] cnt
);

always @(posedge clk or negedge rst) begin
	if (!rst)
		cnt <= 0;
	else if (up_down)
		cnt <= cnt + 1'b1;
	else if (!up_down)
		cnt <= cnt - 1'b1;
end

endmodule
