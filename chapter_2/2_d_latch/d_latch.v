module d_latch (
	input      clk, 
	input      d,
	output reg q
);

always @(negedge clk or posedge d) begin
	if (!clk)
		q <= d;
end

endmodule
