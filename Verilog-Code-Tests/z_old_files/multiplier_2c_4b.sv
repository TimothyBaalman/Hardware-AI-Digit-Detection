module multiplier_2c_4b(
	// x * y
	input [3:0] x,
	input [3:0] y, 
	output [3:0] m_out //Shift output by chopping first 2 and last 2 bits.
);
	wire [7:0] result;
	wire [12:0] a, b;
	wire [9:0] ci_out;

	and(result[0], y[0], x[0]);

	// setup init b values
	and(b[0], y[0], x[1]);
	and(b[1], y[0], x[2]);
	nand(b[2], y[0], x[3]);
	assign b[3] = 1'b1;

	// setup all a values
	and(a[0], y[1], x[0]);
	and(a[1], y[1], x[1]);
	and(a[2], y[1], x[2]);
	nand(a[3], y[1], x[3]);

	and(a[4], y[2], x[0]);
	and(a[5], y[2], x[1]);
	and(a[6], y[2], x[2]);
	nand(a[7], y[2], x[3]);

	nand(a[8], y[3], x[0]);
	nand(a[9], y[3], x[1]);
	nand(a[10], y[3], x[2]);
	and(a[11], y[3], x[3]);
	assign a[12] = 1'b1;

	// Stage 0
	half_adder ha01(
		.a(a[0]), .b(b[0]),
		.s(result[1]), .c_out(ci_out[0])
	);
	full_adder_1b fa02(
		.a(a[1]), .b(b[1]), .c_in(ci_out[0]),
		.s(b[4]), .c_out(ci_out[1])
	);
	full_adder_1b fa03(
		.a(a[2]), .b(b[2]), .c_in(ci_out[1]),
		.s(b[5]), .c_out(ci_out[2])
	);
	full_adder_1b fa04(
		.a(a[3]), .b(b[3]), .c_in(ci_out[2]),
		.s(b[6]), .c_out(b[7])
	);

	// Stage 1
	half_adder ha11(
		.a(a[4]), .b(b[4]),
		.s(result[2]), .c_out(ci_out[3])
	);
	full_adder_1b fa12(
		.a(a[5]), .b(b[5]), .c_in(ci_out[3]),
		.s(b[8]), .c_out(ci_out[4])
	);
	full_adder_1b fa13(
		.a(a[6]), .b(b[6]), .c_in(ci_out[4]),
		.s(b[9]), .c_out(ci_out[5])
	);
	full_adder_1b fa14(
		.a(a[7]), .b(b[7]), .c_in(ci_out[5]),
		.s(b[10]), .c_out(b[11])
	);

	// Stage 2
	half_adder ha21(
		.a(a[8]), .b(b[8]),
		.s(result[3]), .c_out(ci_out[6])
	);
	full_adder_1b fa22(
		.a(a[9]), .b(b[9]), .c_in(ci_out[6]),
		.s(result[4]), .c_out(ci_out[7])
	);
	full_adder_1b fa23(
		.a(a[10]), .b(b[10]), .c_in(ci_out[7]),
		.s(result[5]), .c_out(ci_out[8])
	);
	full_adder_1b fa24(
		.a(a[11]), .b(b[11]), .c_in(ci_out[8]),
		.s(result[6]), .c_out(b[12])
	);
	half_adder ha25(
		.a(a[12]), .b(b[12]),
		.s(result[7]), .c_out(ci_out[9])
	);
	
	assign m_out = result[5:2];
	
endmodule