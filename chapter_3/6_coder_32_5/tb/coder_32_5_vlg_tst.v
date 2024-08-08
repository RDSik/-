`timescale 1 ps/ 1 ps

 module coder_32_5_vlg_tst();
 
 reg        en;
 reg [31:0] in;
 
 wire [4:0] out;
 
 integer i;
 
 coder_32_5 dut (
	.en  (en),
	.in  (in),
	.out (out)
 );
 
initial begin 
	$monitor("en = %b in = %b out = %b", en, in, out);
	
	en = 1'b1;
	
	for (i = 0; i <= 32768; i = i + 1) begin
		#10 in = i;
	end
end

endmodule
