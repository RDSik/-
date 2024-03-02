module state_machine (
	input  clk, 
	input  en, 
	input  rst, 
	input  a0, 
	input  a1, 
	input  a2, 
	input  a3, 
	output y0, 
	output y1 	
);

localparam [1:0] S0 = 2'b00, 
				 S1 = 2'b01, 
				 S2 = 2'b10, 
				 S3 = 2'b11;

reg [1:0] state; 
reg [1:0] next_state;

always @(posedge clk or negedge rst) begin
	if (!rst)
		state <= S0;
	else if (en)
		state <= next_state;
end

always @(*) begin
	case(state)
		S0: 
			if (a0 | a1 | a2 | a3)
				next_state = S1;
		S1:
			if (a0 | a1 | a2 | a3)
				next_state = S2;
		S2:
			if (a1 | a3)
				next_state = S3;
			else 
				next_state = S2;
		S3: 
			if (a1 | a3)
				next_state = S0;
			else 
				next_state = S2;
		default: next_state = S0;
	endcase
end

assign y1 = (state == S0 || state == S1 || state == S2);
assign y0 = state == S3;

endmodule
