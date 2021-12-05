module ha_1b(
   input logic a, b,
   output logic s, c_out
);
	xor(s, a, b);
	and(c_out, a, b);
endmodule // for module ha_1b

module fa_1b(
   input logic a, b, c_in,
   output logic s, c_out
);
	wire [2:0] net;

	xor(net[0], a, b);
	and(net[1], a, b);
	and(net[2], net[0], c_in);
	xor(s, net[0], c_in);
	or(c_out, net[2], net[1]);
endmodule // for module fa_1b

module fa_4b(
	input logic [3:0] a, b,
   input logic c_in,
	output logic [3:0] s,
   output logic c_out
);
	wire [2:0] ci_out;

	fa_1b fa0(
		.a(a[0]), .b(b[0]), .c_in(c_in), //Inputs
		.s(s[0]), .c_out(ci_out[0]) //Outputs 
	);
	fa_1b fa1(
		.a(a[1]), .b(b[1]), .c_in(ci_out[0]), //Inputs
		.s(s[1]), .c_out(ci_out[1]) //Outputs 
	);
	fa_1b fa2(
		.a(a[2]), .b(b[2]), .c_in(ci_out[1]), //Inputs
		.s(s[2]), .c_out(ci_out[2]) //Outputs 
	);
	fa_1b fa3(
		.a(a[3]), .b(b[3]), .c_in(ci_out[2]), //Inputs
		.s(s[3]), .c_out(c_out) //Outputs 
	);
endmodule // for module fa_32b
