`timescale 1 ps/ 1 ps

module decoder_if_vlg_tst();

reg       en;
reg [3:0] in;

wire [15:0] out;

integer i;

decoder_if dut (
	.en  (en),
	.in  (in),
	.out (out)
);

initial begin 
	$monitor("en = %b in = %d out = %d", en, in, out);
	
	en = 1'b1;
	
	for(i=0; i<=16; i=i+1) begin
			#10 in = i;
		end
end

endmodule
