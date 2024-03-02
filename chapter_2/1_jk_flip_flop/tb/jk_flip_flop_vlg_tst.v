`timescale 1 ps/ 1 ps

module jk_flip_flop_vlg_tst();

reg clk;
reg j;
reg k;

wire q;

jk_flip_flop dut (
	.clk (clk),
	.j   (j),
	.k   (k),
	.q   (q)
);

initial begin
	$monitor("clk = %b j = %b k = %b q = %b", clk, j, k, q);
	
	clk = 0; #10;
	
	j = 0; k = 1; #20;
	
	if (q == 1'b0)
		$display("Success");
	else 
		$display("Error");
		
	j = 1; k = 0; #20;
	
	if (q == 1'b1)
		$display("Success");
	else 
		$display("Error");
		
	j = 0; k = 0; #20;
	
	if (q == 1'b1)
		$display("Success");
	else 
		$display("Error");
		
	j = 1; k = 1; #20;
	
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
