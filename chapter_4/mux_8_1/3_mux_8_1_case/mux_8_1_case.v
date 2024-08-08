module mux_8_1_case (
	input      [2:0] s,
	input      [2:0] d0,
	input      [2:0] d1,
	input      [2:0] d2,
	input      [2:0] d3,
	input      [2:0] d4,
	input      [2:0] d5,
	input      [2:0] d6,
	input      [2:0] d7,
	output reg [2:0] y
);

always @(*) begin
	case (s)
		3'b000: y = d0;
		3'b001: y = d1;
		3'b010: y = d2;
		3'b011: y = d3;
		3'b100: y = d4;
		3'b101: y = d5;
		3'b110: y = d6;
		3'b111: y = d7;
		default: y = 3'bxxx;
	endcase
end
	
endmodule
