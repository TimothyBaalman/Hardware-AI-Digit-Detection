module relu(
	input logic [31:0] r_in,
	output logic [31:0] r_out
);
	assign r_out = (r_in[31] == 0) ? r_in : 32'b0;
endmodule