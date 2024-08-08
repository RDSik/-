module mux_3_1_if (
	input      [1:0] s,
	input      [2:0] d0,
	input      [2:0] d1,
	input      [2:0] d2,
	output reg [2:0] y
);

always @(*) begin
	if (s == 2'b00) begin
		y = d0; 
	end
	else if (s == 2'b01) begin
		y = d1; 
	end
	else if (s == 2'b10) begin
		y = d2; 
	end
	else begin
		y = 3'bxxx; 
	end
end

endmodule
