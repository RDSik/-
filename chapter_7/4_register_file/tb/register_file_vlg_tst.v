`timescale 1 ns/1 ns

module register_file_vlg_tst();

reg [37:0] SW;
reg        clk;                                            

wire [31:0] LEDR;
                        
register_file dut (  
	.LEDR (LEDR),
	.SW   (SW),
	.clk  (clk)
);

initial begin                                              
	clk = 1; SW [37] = 1'b1; SW[36:32] = 5'b00000; SW [31:0] = 31'b11111111111111111111111111111111; #20;

	repeat(6) begin
		#20;
		SW[36:32] = SW[36:32] + 5'b00001;
	end
	#40;
	SW = 37'd0;
	
	repeat(6) begin
		#20;
		SW[36:32] = SW[36:32] + 5'b00001;
	end
end                              
	
always #10 clk = ~clk;     

initial begin
	#320 $stop;
end

initial begin
	$monitor("clk=%b, SW=%h, LEDR=%h", clk, SW, LEDR);
end

endmodule
