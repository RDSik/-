module counter_load #(
	parameter WIDTH = 8
) (
	input                  clk, 
    input                  rst, 
    input                  load,
	input      [WIDTH-1:0] data_load,
	output reg [WIDTH-1:0] cnt
);

always @(posedge clk or negedge rst) begin
    if (!rst)
        cnt <= 0;
    else if (load)
        cnt <= data_load;
    else
        cnt <= cnt + 1'b1;
end

endmodule
