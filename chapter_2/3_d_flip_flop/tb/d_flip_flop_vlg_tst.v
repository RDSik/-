`timescale 1 ps/ 1 ps

module d_flip_flop_vlg_tst();

reg clk;
reg d;
reg en;
reg rst;
reg rst_n;                                              

wire q;
                          
d_flip_flop dut ( 
	.clk   (clk),
	.en    (en),
	.rst   (rst),
	.rst_n (rst_n),
	.d     (d),
	.q     (q)
);

initial begin
	$monitor("clk = %b en = %b rst = %b rst_n = %d d = %d q = %b", clk, en, rst, rst_n, d, q);
	
	clk = 0; d = 1; en = 1; rst_n = 1; rst = 0; #10;
	
	if (q == 1'b0)
		$display("Success");
	else 
		$display("Error");
		
	d = 1; en = 1; rst_n = 1; rst = 0; #10;
	
	if (q == 1'b1)
		$display("Success");
	else 
		$display("Error");
		
	d = 1; en = 1; rst_n = 0; rst = 0; #20;
	
	if (q == 1'b0)
		$display("Success");
	else 
		$display("Error");
		
	d = 1; en = 1; rst_n = 1; rst = 0; #20;
	
	if (q == 1'b1)
		$display("Success");
	else 
		$display("Error");
		
	d = 0; en = 1; rst_n = 1; rst = 1; #20;
	
	if (q == 1'b0)
		$display("Success");
	else 
		$display("Error");
		
	d = 1; en = 0; rst_n = 1; rst = 0; #20;
	
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
