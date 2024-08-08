module d_flip_flop (
	input      clk, 
    input      rst, 
    input      rst_n, 
    input      en, 
    input      d,
	output reg q
);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n)
		q <= 1'b0;
	else if (en)
		q <= d;
	else if (rst)
		q <= 1'b0;
end

endmodule
