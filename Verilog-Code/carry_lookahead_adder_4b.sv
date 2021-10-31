module cla_4b(
	input [3:0] a, b,
	input c_in,
	output [3:0] s, 
	output c_out
);
	wire [3:0] g, p;
	wire [4:0] c;

	assign c[0] = c_in;

	//Setup carry propogate/generate
	and(g[0], a[0], b[0]);
	xor(p[0], a[0], b[0]);

	and(g[1], a[1], b[1]);
	xor(p[1], a[1], b[1]);

	and(g[2], a[2], b[2]);
	xor(p[2], a[2], b[2]);
	
	and(g[3], a[3], b[3]);
	xor(p[3], a[3], b[3]);

	//Setup c[1]
	wire net1;
	and(net1, p[0], c[0]);
	or(c[1], net1, g[0]);

	//Setup c[2]
	wire [2:0] net2;
	and(net2[0], p[1], net1);
	and(net2[1], p[1], g[0]);
	or(net2[2], net2[1], net2[0]);
	or(c[2], g[1], net2[2]);

	//Setup c[3]
	wire [4:0] net3;
	and(net3[0], p[2], net2[0]);
	and(net3[1], p[2], net2[1]);
	and(net3[2], p[2], g[1]);
	or(net3[3], net3[1], net3[0]);
	or(net3[4], net3[3], net3[2]);
	or(c[3], g[2], net3[4]);

	//Setup c[4]
	wire [6:0] net4;
	and(net4[0], p[3], net3[0]);
	and(net4[1], p[3], net3[1]);
	and(net4[2], p[3], net3[2]);
	and(net4[3], p[3], g[2]);
	or(net4[4], net4[0], net4[1]);
	or(net4[5], net4[2], net4[3]);
	or(net4[6], net4[4], net4[5]);
	or(c[4], g[3], net4[6]);

	assign c_out = c[4];

	//Setup Sum
	xor(s[0], p[0], c[0]);
	xor(s[1], p[1], c[1]);
	xor(s[2], p[2], c[2]);
	xor(s[3], p[3], c[3]);
endmodule