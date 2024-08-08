module register_file #(
	parameter DATA_WIDTH = 32
) (
	input                   clk,
	input  [37:0]           SW,
	output [DATA_WIDTH-1:0] LEDR
);

reg [DATA_WIDTH-1:0] w_we;
reg [DATA_WIDTH-1:0] mux_out;

wire [DATA_WIDTH-1:0] reg0;
wire [DATA_WIDTH-1:0] reg1;
wire [DATA_WIDTH-1:0] reg2;
wire [DATA_WIDTH-1:0] reg3;
wire [DATA_WIDTH-1:0] reg4;
wire [DATA_WIDTH-1:0] reg5;
wire [DATA_WIDTH-1:0] reg6;
wire [DATA_WIDTH-1:0] reg7;
wire [DATA_WIDTH-1:0] reg8;
wire [DATA_WIDTH-1:0] reg9;
wire [DATA_WIDTH-1:0] reg10
wire [DATA_WIDTH-1:0] reg11;
wire [DATA_WIDTH-1:0] reg12;
wire [DATA_WIDTH-1:0] reg13;
wire [DATA_WIDTH-1:0] reg14;
wire [DATA_WIDTH-1:0] reg15;
wire [DATA_WIDTH-1:0] reg16;
wire [DATA_WIDTH-1:0] reg17;
wire [DATA_WIDTH-1:0] reg18;
wire [DATA_WIDTH-1:0] reg19;
wire [DATA_WIDTH-1:0] reg20;
wire [DATA_WIDTH-1:0] reg21;
wire [DATA_WIDTH-1:0] reg22;
wire [DATA_WIDTH-1:0] reg23;
wire [DATA_WIDTH-1:0] reg24;
wire [DATA_WIDTH-1:0] reg25;
wire [DATA_WIDTH-1:0] reg26;
wire [DATA_WIDTH-1:0] reg27;
wire [DATA_WIDTH-1:0] reg28;
wire [DATA_WIDTH-1:0] reg29;
wire [DATA_WIDTH-1:0] reg30;
wire [DATA_WIDTH-1:0] reg31;

always @(SW[36:32]) begin 
	if (SW[37])
		case (SW[36:32])
			5'd0: w_we = 32'd0;
			5'd1: w_we = 32'd1;
			5'd2: w_we = 32'd2;
			5'd3: w_we = 32'd3;
			5'd4: w_we = 32'd4;
			5'd5: w_we = 32'd5;
			5'd6: w_we = 32'd6;
			5'd7: w_we = 32'd7;
			5'd8: w_we = 32'd8;
			5'd9: w_we = 32'd9;
			5'd10: w_we = 32'd10;
			5'd11: w_we = 32'd11;
			5'd12: w_we = 32'd12;
			5'd13: w_we = 32'd13;
			5'd14: w_we = 32'd14;
			5'd15: w_we = 32'd15;
			5'd16: w_we = 32'd16;
			5'd17: w_we = 32'd17;
			5'd18: w_we = 32'd18;
			5'd19: w_we = 32'd19;
			5'd20: w_we = 32'd20;
			5'd21: w_we = 32'd21;
			5'd22: w_we = 32'd22;
			5'd23: w_we = 32'd23;
			5'd24: w_we = 32'd24;
			5'd25: w_we = 32'd25;
			5'd26: w_we = 32'd26;
			5'd27: w_we = 32'd27;
			5'd28: w_we = 32'd28;
			5'd29: w_we = 32'd29;
			5'd30: w_we = 32'd30;
			5'd31: w_we = 32'd31;
			default: w_we = 32'd0;
		endcase
	else
		w_we = 32'd0;
end

always @(SW[36:32], reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31) begin
	case (SW[36:32])
		5'd0: mux_out = reg0;
		5'd1: mux_out = reg1;
		5'd2: mux_out = reg2;
		5'd3: mux_out = reg3;
		5'd4: mux_out = reg4;
		5'd5: mux_out = reg5;
		5'd6: mux_out = reg6;
		5'd7: mux_out = reg7;
		5'd8: mux_out = reg8;
		5'd9: mux_out = reg9;
		5'd10: mux_out = reg10;
		5'd11: mux_out = reg11;
		5'd12: mux_out = reg12;
		5'd13: mux_out = reg13;
		5'd14: mux_out = reg14;
		5'd15: mux_out = reg15;
		5'd16: mux_out = reg16;
		5'd17: mux_out = reg17;
		5'd18: mux_out = reg18;
		5'd19: mux_out = reg19;
		5'd20: mux_out = reg20;
		5'd21: mux_out = reg21;
		5'd22: mux_out = reg22;
		5'd23: mux_out = reg23;
		5'd24: mux_out = reg24;
		5'd25: mux_out = reg25;
		5'd26: mux_out = reg26;
		5'd27: mux_out = reg27;
		5'd28: mux_out = reg28;
		5'd29: mux_out = reg29;
		5'd30: mux_out = reg30;
		5'd31: mux_out = reg31;
		default: mux_out = 32'd0;
	endcase
end
	
register #(32) register0 (.en(w_we[0]), .clk(clk), .d(SW[31:0]), .q(reg0));
register #(32) register1 (.en(w_we[1]), .clk(clk), .d(SW[31:0]), .q(reg1));
register #(32) register2 (.en(w_we[2]), .clk(clk), .d(SW[31:0]), .q(reg2));
register #(32) register3 (.en(w_we[3]), .clk(clk), .d(SW[31:0]), .q(reg3));
register #(32) register4 (.en(w_we[4]), .clk(clk), .d(SW[31:0]), .q(reg4));
register #(32) register5 (.en(w_we[5]), .clk(clk), .d(SW[31:0]), .q(reg5));
register #(32) register6 (.en(w_we[6]), .clk(clk), .d(SW[31:0]), .q(reg6));
register #(32) register7 (.en(w_we[7]), .clk(clk), .d(SW[31:0]), .q(reg7));
register #(32) register8 (.en(w_we[8]), .clk(clk), .d(SW[31:0]), .q(reg8));
register #(32) register9 (.en(w_we[9]), .clk(clk), .d(SW[31:0]), .q(reg9));
register #(32) register10 (.en(w_we[10]), .clk(clk), .d(SW[31:0]), .q(reg10));
register #(32) register11 (.en(w_we[11]), .clk(clk), .d(SW[31:0]), .q(reg11));
register #(32) register12 (.en(w_we[12]), .clk(clk), .d(SW[31:0]), .q(reg12));
register #(32) register13 (.en(w_we[13]), .clk(clk), .d(SW[31:0]), .q(reg13));
register #(32) register14 (.en(w_we[14]), .clk(clk), .d(SW[31:0]), .q(reg14));
register #(32) register15 (.en(w_we[15]), .clk(clk), .d(SW[31:0]), .q(reg15));
register #(32) register16 (.en(w_we[16]), .clk(clk), .d(SW[31:0]), .q(reg16));
register #(32) register17 (.en(w_we[17]), .clk(clk), .d(SW[31:0]), .q(reg17));
register #(32) register18 (.en(w_we[18]), .clk(clk), .d(SW[31:0]), .q(reg18));
register #(32) register19 (.en(w_we[19]), .clk(clk), .d(SW[31:0]), .q(reg19));
register #(32) register20 (.en(w_we[20]), .clk(clk), .d(SW[31:0]), .q(reg20));
register #(32) register21 (.en(w_we[21]), .clk(clk), .d(SW[31:0]), .q(reg21));
register #(32) register22 (.en(w_we[22]), .clk(clk), .d(SW[31:0]), .q(reg22));
register #(32) register23 (.en(w_we[23]), .clk(clk), .d(SW[31:0]), .q(reg23));
register #(32) register24 (.en(w_we[24]), .clk(clk), .d(SW[31:0]), .q(reg24));
register #(32) register25 (.en(w_we[25]), .clk(clk), .d(SW[31:0]), .q(reg25));
register #(32) register26 (.en(w_we[26]), .clk(clk), .d(SW[31:0]), .q(reg26));
register #(32) register27 (.en(w_we[27]), .clk(clk), .d(SW[31:0]), .q(reg27));
register #(32) register28 (.en(w_we[28]), .clk(clk), .d(SW[31:0]), .q(reg28));
register #(32) register29 (.en(w_we[29]), .clk(clk), .d(SW[31:0]), .q(reg29));
register #(32) register30 (.en(w_we[30]), .clk(clk), .d(SW[31:0]), .q(reg30));
register #(32) register31 (.en(w_we[31]), .clk(clk), .d(SW[31:0]), .q(reg31));

assign LEDR = mux_out;

endmodule
