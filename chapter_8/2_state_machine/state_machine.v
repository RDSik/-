module state_machine (
	input      clk, 
	input      en, 
	input      rst, 
	input      a0, 
	input      a1, 
	input      a2, 
	input      a3, 
	output reg y0,
	output reg y1 	
);

localparam [1:0] S0 = 2'b00, 
				 S1 = 2'b01, 
				 S2 = 2'b10, 
				 S3 = 2'b11;

reg [1:0] state;
reg [1:0] next_state;

always @(posedge clk or negedge rst)
	if(!rst)
		state <= S0;
	else if(en)
		state <= next_state;

always @(*)
	case (state)
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

always @(posedge clk or negedge rst) begin
		if (!rst) begin
			y1 <= 1;
			y0 <= 0; 
		end
		else if (en) begin
			y1 <= 1;
			y0 <= 0;
			case (state)
				S2:
					if (a1 | a3) begin
						y1 <= 0;
						y0 <= 1; 
					end
			endcase
		end
end

endmodule
