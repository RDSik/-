module mux_8_1_if (
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
	if(s == 3'b000) begin
		y = d0; 
	end
	else if(s == 3'b001) begin
		y = d1; 
	end
	else if(s == 3'b010) begin
		y = d2; 
	end
	else if(s == 3'b011) begin
		y = d3; 
	end
	else if(s == 3'b100) begin
		y = d4; 
	end
	else if(s == 3'b101) begin
		y = d5; 
	end
	else if(s == 3'b110) begin
		y = d6; 
	end
	else if(s == 3'b111) begin
		y = d7; 
	end
	else begin
		y = 3'bxxx; 
	end
end
	
endmodule
