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