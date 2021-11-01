module relu(
	input [32:0] r_in,
	output [32:0] r_out
);
	//If the signed bit is 0 we have a positive number so output it. 
	// if not output 0. 
	assign r_out = (r_in[32] == 0) ? r_in : 32{1b'0};
	
endmodule
