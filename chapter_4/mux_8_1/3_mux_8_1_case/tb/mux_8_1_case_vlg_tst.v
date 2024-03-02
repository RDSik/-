`timescale 1 ps/1 ps

module mux_8_1_case_vlg_tst();

reg [2:0] s;
reg [2:0] d0;
reg [2:0] d1;
reg [2:0] d2;
reg [2:0] d3;
reg [2:0] d4;
reg [2:0] d5;
reg [2:0] d6;
reg [2:0] d7;

wire [2:0] y;

integer i;

mux_8_1_case dut (
	.s  (s),
	.d0 (d0),
	.d1 (d1),
	.d2 (d2),
	.d3 (d3),
	.d4 (d4),
	.d5 (d5),
	.d6 (d6),
	.d7 (d7),
	.y  (y)
);

initial begin 
	$monitor("s = %b d0 = %b d1 = %b d2 = %b d3 = %b d4 = %b d5 = %b d6 = %b d7 = %b y = %b", s, d0, d1, d2, d3, d4, d5, d6, d7, y);
	d0 = 3'b000; d1 = 3'b001; d2 = 3'b010; d3 = 3'b011; d4 = 3'b100; d5 = 3'b101; d6 = 3'd110; d7 = 3'd111;
	
	fo r(i = 0; i <= 8; i = i + 1) begin
		#10 s = i;
	end
end

endmodule
