module mux_3_1_case (
	input      [1:0] s,
	input      [2:0] d0,
	input      [2:0] d1,
	input      [2:0] d2,
	output reg [2:0] y
);

always @(*) begin
	case (s)
		2'b00: y = d0;
		2'b01: y = d1;
		2'b10: y = d2;
		default: y = 3'bxxx;
	endcase
end

endmodule
