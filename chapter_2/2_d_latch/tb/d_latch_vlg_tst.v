`timescale 1 ps/ 1 ps

module d_latch_vlg_tst();

reg clk;
reg d;      

wire q;
                         
d_latch dut ( 
	.clk (clk),
	.d   (d),
	.q   (q)
);

initial begin                                                  
	$monitor("clk = %b d = %b q = %b", clk, d, q);
	
	clk = 0; d = 1; #20;
	
	if (q == 1'b1)
		$display("Success");
	else 
		$display("Error");
		
	d = 0; #20;
	
	if (q == 1'b0)
		$display("Success");
	else 
		$display("Error");
		
	$finish;	
end                                                    

always begin
	#10 clk = ~clk;
end                                                    

endmodule
