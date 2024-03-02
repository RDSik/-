module mux_3_1 (
	input  [1:0] s,
	input  [2:0] d0, 
	input  [2:0] d1,
	input  [2:0] d2,  
	output [2:0] y
);

assign y = s [1] ? d2 : (s[0] ? d1 : d0);

endmodule
