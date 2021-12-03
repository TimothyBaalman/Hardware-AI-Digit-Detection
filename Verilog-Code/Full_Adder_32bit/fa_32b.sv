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

module fa_32b(
	input logic [31:0] a, b,
   input logic c_in,
	output logic [31:0] s,
   output logic c_out
);
	wire [30:0] ci_out;

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
		.s(s[3]), .c_out(ci_out[3]) //Outputs 
	);
	fa_1b fa4(
		.a(a[4]), .b(b[4]), .c_in(ci_out[3]), //Inputs
		.s(s[4]), .c_out(ci_out[4]) //Outputs 
	);
	fa_1b fa5(
		.a(a[5]), .b(b[5]), .c_in(ci_out[4]), //Inputs
		.s(s[5]), .c_out(ci_out[5]) //Outputs 
	);
	fa_1b fa6(
		.a(a[6]), .b(b[6]), .c_in(ci_out[5]), //Inputs
		.s(s[6]), .c_out(ci_out[6]) //Outputs 
	);
	fa_1b fa7(
		.a(a[7]), .b(b[7]), .c_in(ci_out[6]), //Inputs
		.s(s[7]), .c_out(ci_out[7]) //Outputs 
	);
	fa_1b fa8(
		.a(a[8]), .b(b[8]), .c_in(ci_out[7]), //Inputs
		.s(s[8]), .c_out(ci_out[8]) //Outputs 
	);
	fa_1b fa9(
		.a(a[9]), .b(b[9]), .c_in(ci_out[8]), //Inputs
		.s(s[9]), .c_out(ci_out[9]) //Outputs 
	);
	fa_1b fa10(
		.a(a[10]), .b(b[10]), .c_in(ci_out[9]), //Inputs
		.s(s[10]), .c_out(ci_out[10]) //Outputs 
	);
	fa_1b fa11(
		.a(a[11]), .b(b[11]), .c_in(ci_out[10]), //Inputs
		.s(s[11]), .c_out(ci_out[11]) //Outputs 
	);
	fa_1b fa12(
		.a(a[12]), .b(b[12]), .c_in(ci_out[11]), //Inputs
		.s(s[12]), .c_out(ci_out[12]) //Outputs 
	);
	fa_1b fa13(
		.a(a[13]), .b(b[13]), .c_in(ci_out[12]), //Inputs
		.s(s[13]), .c_out(ci_out[13]) //Outputs 
	);
	fa_1b fa14(
		.a(a[14]), .b(b[14]), .c_in(ci_out[13]), //Inputs
		.s(s[14]), .c_out(ci_out[14]) //Outputs 
	);
	fa_1b fa15(
		.a(a[15]), .b(b[15]), .c_in(ci_out[14]), //Inputs
		.s(s[15]), .c_out(ci_out[15]) //Outputs 
	);
	fa_1b fa16(
		.a(a[16]), .b(b[16]), .c_in(ci_out[15]), //Inputs
		.s(s[16]), .c_out(ci_out[16]) //Outputs 
	);
	fa_1b fa17(
		.a(a[17]), .b(b[17]), .c_in(ci_out[16]), //Inputs
		.s(s[17]), .c_out(ci_out[17]) //Outputs 
	);
	fa_1b fa18(
		.a(a[18]), .b(b[18]), .c_in(ci_out[17]), //Inputs
		.s(s[18]), .c_out(ci_out[18]) //Outputs 
	);
	fa_1b fa19(
		.a(a[19]), .b(b[19]), .c_in(ci_out[18]), //Inputs
		.s(s[19]), .c_out(ci_out[19]) //Outputs 
	);
	fa_1b fa20(
		.a(a[20]), .b(b[20]), .c_in(ci_out[19]), //Inputs
		.s(s[20]), .c_out(ci_out[20]) //Outputs 
	);
	fa_1b fa21(
		.a(a[21]), .b(b[21]), .c_in(ci_out[20]), //Inputs
		.s(s[21]), .c_out(ci_out[21]) //Outputs 
	);
	fa_1b fa22(
		.a(a[22]), .b(b[22]), .c_in(ci_out[21]), //Inputs
		.s(s[22]), .c_out(ci_out[22]) //Outputs 
	);
	fa_1b fa23(
		.a(a[23]), .b(b[23]), .c_in(ci_out[22]), //Inputs
		.s(s[23]), .c_out(ci_out[23]) //Outputs 
	);
	fa_1b fa24(
		.a(a[24]), .b(b[24]), .c_in(ci_out[23]), //Inputs
		.s(s[24]), .c_out(ci_out[24]) //Outputs 
	);
	fa_1b fa25(
		.a(a[25]), .b(b[25]), .c_in(ci_out[24]), //Inputs
		.s(s[25]), .c_out(ci_out[25]) //Outputs 
	);
	fa_1b fa26(
		.a(a[26]), .b(b[26]), .c_in(ci_out[25]), //Inputs
		.s(s[26]), .c_out(ci_out[26]) //Outputs 
	);
	fa_1b fa27(
		.a(a[27]), .b(b[27]), .c_in(ci_out[26]), //Inputs
		.s(s[27]), .c_out(ci_out[27]) //Outputs 
	);
	fa_1b fa28(
		.a(a[28]), .b(b[28]), .c_in(ci_out[27]), //Inputs
		.s(s[28]), .c_out(ci_out[28]) //Outputs 
	);
	fa_1b fa29(
		.a(a[29]), .b(b[29]), .c_in(ci_out[28]), //Inputs
		.s(s[29]), .c_out(ci_out[29]) //Outputs 
	);
	fa_1b fa30(
		.a(a[30]), .b(b[30]), .c_in(ci_out[29]), //Inputs
		.s(s[30]), .c_out(ci_out[30]) //Outputs 
	);
	fa_1b fa31(
		.a(a[31]), .b(b[31]), .c_in(ci_out[30]), //Inputs
		.s(s[31]), .c_out(c_out) //Outputs 
	);
endmodule // for module fa_32b
