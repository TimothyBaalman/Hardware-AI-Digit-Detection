module tb;
	reg [3:0] x_in, y_in;

	logic [3:0] mult_out;
	m_2c_4b test_mod(
		.x(x_in), .y(y_in),
		.m_out(mult_out)
	);
	initial begin
		x_in = 4'b0000;
		y_in = 4'b0010;

		#1;
		x_in = 4'b0011;
		y_in = 4'b0100;

		#1;
		x_in = 4'b1001;
		y_in = 4'b0001;

		#1;
		x_in = 4'b1111;
		y_in = 4'b1011;

	end
endmodule