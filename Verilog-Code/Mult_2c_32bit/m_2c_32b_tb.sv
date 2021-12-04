module tb;
	reg [31:0] x_in, y_in;

	logic [31:0] mult_out;
	m_2c_32b test_mod(
		.x(x_in), .y(y_in),
		.m_out(mult_out)
	);
	initial begin
		x_in = 32'b0;
		y_in = 32'b0;
		
		#3
		//todo get diff values
		x_in = 32'b1_11111111111111101_10100110011010; //-2.35
		y_in = 32'b0_00000000000000101_00000000000000; //5
		
		#3
		x_in = 32'b0_00000000000001010_00111101011100; //10.24
		y_in = 32'b0_00000000000000101_00000000000000; //5

	end
endmodule