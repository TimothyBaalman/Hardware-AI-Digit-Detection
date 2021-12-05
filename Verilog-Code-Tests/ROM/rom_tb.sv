module tb;
	logic [31:0] data_out [784];

	layer0_weight_0_rom weights(.data(data_out));

endmodule