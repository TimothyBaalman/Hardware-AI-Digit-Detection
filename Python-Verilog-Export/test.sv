module ha_1b(
   input a, b,
   output s, c_out
);
	xor(s, a, b);
	and(c_out, a, b);
endmodule // for module ha_1b

module fa_1b(
   input a, b, c_in,
   output s, c_out
);
	wire [2:0] net;

	xor(net[0], a, b);
	and(net[1], a, b);
	and(net[2], net[0], c_in);
	xor(s, net[0], c_in);
	or(c_out, net[2], net[1]);
endmodule // for module fa_1b

module m_2c_4b(
	input [3:0] x, y,
	output [3:0] m_out
);
	wire [7:0] to_cut_res;
	wire [12:0] x_a, y_b;
	wire [9:0] ci_out;
	and(to_cut_res[0], y[0], x[0]);

	//Setup for wire y_b parts
	and(y_b[0], y[0], x[1]);
	and(y_b[1], y[0], x[2]);
	nand(y_b[2], y[0], x[3]);
	assign y_b[3] = 1'b1;

	//Setup for wire x_a parts
	and(x_a[0], y[1], x[0]);
	and(x_a[1], y[1], x[1]);
	and(x_a[2], y[1], x[2]);
	nand(x_a[3], y[1], x[3]);

	and(x_a[4], y[2], x[0]);
	and(x_a[5], y[2], x[1]);
	and(x_a[6], y[2], x[2]);
	nand(x_a[7], y[2], x[3]);

	nand(x_a[8], y[3], x[0]);
	nand(x_a[9], y[3], x[1]);
	nand(x_a[10], y[3], x[2]);
	and(x_a[11], y[3], x[3]);

	assign x_a[12] = 1'b1;

	//Stage 0
	ha ha0(
		.a(x_a[0]), .b(y_b[0]), //Inputs
		.s(to_cut_res[1]), .c_out(ci_out[0]) //Outputs 
	);
	fa_1b fa0(
		.a(x_a[1]), .b(y_b[1]), .c_in(ci_out[0]), //Inputs
		.s(y_b[4]), .c_out(ci_out[1]) //Outputs 
	);
	fa_1b fa1(
		.a(x_a[2]), .b(y_b[2]), .c_in(ci_out[1]), //Inputs
		.s(y_b[5]), .c_out(ci_out[2]) //Outputs 
	);
	fa_1b fa2(
		.a(x_a[3]), .b(y_b[3]), .c_in(ci_out[2]), //Inputs
		.s(y_b[6]), .c_out(y_b[7]) //Outputs 
	);

	//Stage 1
	ha ha1(
		.a(x_a[4]), .b(y_b[4]), //Inputs
		.s(to_cut_res[2]), .c_out(ci_out[3]) //Outputs 
	);
	fa_1b fa3(
		.a(x_a[5]), .b(y_b[5]), .c_in(ci_out[3]), //Inputs
		.s(y_b[8]), .c_out(ci_out[4]) //Outputs 
	);
	fa_1b fa4(
		.a(x_a[6]), .b(y_b[6]), .c_in(ci_out[4]), //Inputs
		.s(y_b[9]), .c_out(ci_out[5]) //Outputs 
	);
	fa_1b fa5(
		.a(x_a[7]), .b(y_b[7]), .c_in(ci_out[5]), //Inputs
		.s(y_b[10]), .c_out(y_b[11]) //Outputs 
	);

	//Stage 2
	ha ha2(
		.a(x_a[8]), .b(y_b[8]), //Inputs
		.s(to_cut_res[3]), .c_out(ci_out[6]) //Outputs 
	);
	fa_1b fa6(
		.a(x_a[9]), .b(y_b[9]), .c_in(ci_out[6]), //Inputs
		.s(to_cut_res[4]), .c_out(ci_out[7]) //Outputs 
	);
	fa_1b fa7(
		.a(x_a[10]), .b(y_b[10]), .c_in(ci_out[7]), //Inputs
		.s(to_cut_res[5]), .c_out(ci_out[8]) //Outputs 
	);
	fa_1b fa8(
		.a(x_a[11]), .b(y_b[11]), .c_in(ci_out[8]), //Inputs
		.s(to_cut_res[6]), .c_out(y_b[12]) //Outputs 
	);

	ha ha3(
		.a(x_a[12]), .b(y_b[12]), //Inputs
		.s(to_cut_res[7]), .c_out(ci_out[9]) //Outputs 
	);

	assign m_out = to_cut_res[3:0]
endmodule // for module m_2c_4b

