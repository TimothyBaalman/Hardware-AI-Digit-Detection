module multiplier_2c_4b_tb;
	reg [3:0] x_in, y_in;
	wire [3:0] m_out;

	multiplier_2c_4b m0(
		.x(x_in), .y(y_in),
		.m_out(m_out)
	);

	initial begin
		$dumpfile("dump.vcd"); $dumpvars;

		#1;
		x_in = 4'b0000;
		y_in = 4'b0000;

		#1;
		x_in = 4'b0001;
		y_in = 4'b0000;

		#1;
		x_in = 4'b0001;
		y_in = 4'b0001;

		#1;
		x_in = 4'b1000;
		y_in = 4'b0001;

		#1 $finish;
	end
endmodule