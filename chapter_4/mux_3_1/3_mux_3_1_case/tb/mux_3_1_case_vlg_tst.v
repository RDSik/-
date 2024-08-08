`timescale 1 ps/1 ps

module mux_3_1_case_vlg_tst();

reg [1:0] s;
reg [2:0] d0; 
reg [2:0] d1;
reg [2:0] d2;

wire [2:0] y;

integer i;

mux_3_1_case dut (
	.s  (s),
	.d0 (d0),
	.d1 (d1),
	.d2 (d2),
	.y  (y)
);

initial begin 
	$monitor("s = %b d0 = %b d1 = %b d2 = %b y = %b", s, d0, d1, d2, y);
	d0 = 2'b000; d1 = 2'b001; d2 = 2'b010;
	
	for (i = 0; i <= 4; i = i + 1) begin
		#10 s = i;
	end
end

endmodule
