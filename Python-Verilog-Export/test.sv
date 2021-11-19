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

module fa_4b(
	input [3:0] a, b,
   input c_in,
	output [3:0] s,
   output c_out
);
	wire [2:0] ci_out;

	fa_1b fa0(.a(a[0]), .b(b[0]), .c_in(c_in), .c_out(ci_out[0]), .s(s[0]));
	fa_1b fa1(.a(a[1]), .b(b[1]), .c_in(ci_out[0]), .c_out(ci_out[1]), .s(s[1]));
	fa_1b fa2(.a(a[2]), .b(b[2]), .c_in(ci_out[1]), .c_out(ci_out[2]), .s(s[2]));
	fa_1b fa3(.a(a[3]), .b(b[3]), .c_in(ci_out[2]), .c_out(c_out), .s(s[3]));
endmodule // for module fa_4b

