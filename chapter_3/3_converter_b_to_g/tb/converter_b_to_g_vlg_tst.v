`timescale 1 ps/ 1 ps

module converter_b_to_g_vlg_tst();

reg [3:0] b;

wire [3:0] g;

integer i;

converter_b_to_g dut (
	.b (b),
	.g (g)
);

initial begin 
	$monitor("b = %d g = %b", b, g);

	for (i=0; i<=16; i=i+1) begin
		#10 b = i;
	end
end

endmodule
