`timescale 1 ps/ 1 ps

 module decoder_6_64_vlg_tst();
 
 reg       en;
 reg [5:0] in;
 
 wire [63:0] out;
 
 integer i;
 
 decoder_6_64 dut (
	.en  (en),
	.in  (in),
	.out (out)
 );
 
 initial begin
	$monitor("en = %b in = %d out = %d", en, in, out);
	
	en = 1'b1;
	
	for (i = 0; i <= 64; i = i + 1) begin
		#10 in = i;
	end
end

endmodule
