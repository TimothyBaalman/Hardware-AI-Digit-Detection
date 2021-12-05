module tb;

	logic clk, lay0_en, lay1_en;

	control test_con(.clk(clk), .layer0_en(lay0_en), .layer1_en(lay1_en));

endmodule