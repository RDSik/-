`timescale 1 ps/ 1 ps

module sevenseg_2_vlg_tst();

reg [3:0] in1;
reg [3:0] in2;                                             

wire [6:0] out1;
wire [6:0] out2;

integer i;
integer j;
                         
sevenseg_2 dut (
	.in1  (in1),
	.in2  (in2),
	.out1 (out1),
	.out2 (out2)
);

initial begin
	$dumpfile("sevenseg_2_vlg_tst.vcd");
	$dumpvars(0, sevenseg_2_vlg_tst);
	$monitor("in1 = %d in2 = %d out1 = %b out2 = %b", in1, in2, out1, out2);
		
	for (i = 0; i <= 16; i = i + 1) begin
		for (j = 0; j <= 16; j = j + 1) begin
			#10 in2 = j;
		end
		#10 in1 = i;
	end
end

endmodule
