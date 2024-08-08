module decoder_if (
	input             en,
	input [3:0]       in,
	output reg [15:0] out
);

always @(*) begin
	out = 16'h0;

	if (en) begin
		if(in == 4'd0) begin
			out = 16'h1; 
		end
		if (in == 4'd1) begin 
			out = 16'h2; 
		end
		if (in == 4'd2) begin
			out = 16'h4; 
		end
		if (in == 4'd3) begin
			out = 16'h8; 
		end
		if (in == 4'd4) begin
			out = 16'h10; 
		end
		if (in == 4'd5) begin
			out = 16'h20; 
		end
		if (in == 4'd6) begin
			out = 16'h40; 
		end
		if (in == 4'd7) begin
			out = 16'h80; 
		end
		if (in == 4'd8) begin
			out = 16'h100; 
		end
		if (in == 4'd9) begin
			out = 16'h200; 
		end
		if (in == 4'd10) begin
			out = 16'h400; 
		end
		if (in == 4'd11) begin
			out = 16'h800; 
		end
		if (in == 4'd12) begin
			out = 16'h1000; 
		end
		if (in == 4'd13) begin
			out = 16'h2000; 
		end
		if (in == 4'd14) begin 
			out = 16'h4000; 
		end
		if (in == 4'd15) begin 
			out = 16'h8000; 
		end
	end
end

endmodule
