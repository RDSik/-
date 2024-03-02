`timescale 1 ps/ 1 ps

module converter_b_vlg_tst();

reg [3:0] g;

wire [3:0] b;

converter_b dut (
	.g (g),
	.b (b)
);

initial begin 
	$monitor("g = %b b = %d", g, b);
	
	g = 4'b0000; #10;

	if (b == 4'b0000)
		$display("Success");
	else 
		$display("Error"); 
	
	g = 4'b0001; #10;

	if (b == 4'b0001) 
		$display("Success"); 
	else 
		$display("Error"); 
	
	g = 4'b0011; #10;

	if (b == 4'b0010) 
		$display("Success"); 
	else 
		$display("Error"); 
	
	g = 4'b0010; #10;

	if (b == 4'b0011) 
		$display("Success"); 
	else 
		$display("Error"); 
	
	g = 4'b0110; #10;

	if (b == 4'b0100) 
		$display("Success"); 
	else 
		$display("Error"); 
		
	g = 4'b0111; #10;

	if (b == 4'b0101)
		$display("Success"); 
	else  
		$display("Error"); 
		
	g = 4'b0101; #10;

	if (b == 4'b0110)
		$display("Success"); 
	else 
		$display("Error"); 
		
	g = 4'b0100; #10;

	if (b == 4'b0111) 
		$display("Success"); 
	else 
		$display("Error"); 
	
	g = 4'b1100; #10;

	if (b == 4'b1000) 
		$display("Success"); 
	else
		$display("Error"); 
		
	g = 4'b1101; #10;

	if (b == 4'b1001) 
		$display("Success");
	else 
		$display("Error"); 
		
	g = 4'b1111; #10;

	if (b == 4'b1010) 
		$display("Success"); 
	else 
		$display("Error"); 
	
	g = 4'b1110; #10;

	if (b == 4'b1011) 
		$display("Success");
	else 
		$display("Error"); 
		
	g = 4'b1010; #10;

	if (b == 4'b1100) 
		$display("Success"); 
	else 
		$display("Error"); 
		
	g = 4'b1011; #10;

	if (b == 4'b1101)
		$display("Success"); 
	else 
		$display("Error"); 
		
	g = 4'b1001; #10;

	if (b == 4'b1110)
		$display("Success"); 
	else 
		$display("Error"); 
		
	g = 4'b1000; #10;

	if (b == 4'b1111) 
		$display("Success"); 
	else 
		$display("Error"); 
end

endmodule
