`timescale 1 ps/ 1 ps

module sevenseg_vlg_tst();

reg [3:0] in;                                              

wire [6:0] seg;

integer i;
                        
sevenseg dut (   
	.in  (in),
	.seg (seg)
);

initial begin
	$monitor("in = %h seg = %b", in, seg);
	
	for (i = 0; i <= 16; i = i + 1) begin
		#10 in = i;
	end	
end                                                      

endmodule
