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

module m_2c_32b(
	input logic [31:0] x, y,
	output logic [31:0] m_out
);
	wire [63:0] to_cut_res;
	wire [992:0] x_a, y_b;
	wire [961:0] ci_out;
	and(to_cut_res[0], y[0], x[0]);

	//Setup for wire y_b parts
	and(y_b[0], y[0], x[1]);
	and(y_b[1], y[0], x[2]);
	and(y_b[2], y[0], x[3]);
	and(y_b[3], y[0], x[4]);
	and(y_b[4], y[0], x[5]);
	and(y_b[5], y[0], x[6]);
	and(y_b[6], y[0], x[7]);
	and(y_b[7], y[0], x[8]);
	and(y_b[8], y[0], x[9]);
	and(y_b[9], y[0], x[10]);
	and(y_b[10], y[0], x[11]);
	and(y_b[11], y[0], x[12]);
	and(y_b[12], y[0], x[13]);
	and(y_b[13], y[0], x[14]);
	and(y_b[14], y[0], x[15]);
	and(y_b[15], y[0], x[16]);
	and(y_b[16], y[0], x[17]);
	and(y_b[17], y[0], x[18]);
	and(y_b[18], y[0], x[19]);
	and(y_b[19], y[0], x[20]);
	and(y_b[20], y[0], x[21]);
	and(y_b[21], y[0], x[22]);
	and(y_b[22], y[0], x[23]);
	and(y_b[23], y[0], x[24]);
	and(y_b[24], y[0], x[25]);
	and(y_b[25], y[0], x[26]);
	and(y_b[26], y[0], x[27]);
	and(y_b[27], y[0], x[28]);
	and(y_b[28], y[0], x[29]);
	and(y_b[29], y[0], x[30]);
	nand(y_b[30], y[0], x[31]);
	assign y_b[31] = 1'b1;

	//Setup for wire x_a parts
	and(x_a[0], y[1], x[0]);
	and(x_a[1], y[1], x[1]);
	and(x_a[2], y[1], x[2]);
	and(x_a[3], y[1], x[3]);
	and(x_a[4], y[1], x[4]);
	and(x_a[5], y[1], x[5]);
	and(x_a[6], y[1], x[6]);
	and(x_a[7], y[1], x[7]);
	and(x_a[8], y[1], x[8]);
	and(x_a[9], y[1], x[9]);
	and(x_a[10], y[1], x[10]);
	and(x_a[11], y[1], x[11]);
	and(x_a[12], y[1], x[12]);
	and(x_a[13], y[1], x[13]);
	and(x_a[14], y[1], x[14]);
	and(x_a[15], y[1], x[15]);
	and(x_a[16], y[1], x[16]);
	and(x_a[17], y[1], x[17]);
	and(x_a[18], y[1], x[18]);
	and(x_a[19], y[1], x[19]);
	and(x_a[20], y[1], x[20]);
	and(x_a[21], y[1], x[21]);
	and(x_a[22], y[1], x[22]);
	and(x_a[23], y[1], x[23]);
	and(x_a[24], y[1], x[24]);
	and(x_a[25], y[1], x[25]);
	and(x_a[26], y[1], x[26]);
	and(x_a[27], y[1], x[27]);
	and(x_a[28], y[1], x[28]);
	and(x_a[29], y[1], x[29]);
	and(x_a[30], y[1], x[30]);
	nand(x_a[31], y[1], x[31]);

	and(x_a[32], y[2], x[0]);
	and(x_a[33], y[2], x[1]);
	and(x_a[34], y[2], x[2]);
	and(x_a[35], y[2], x[3]);
	and(x_a[36], y[2], x[4]);
	and(x_a[37], y[2], x[5]);
	and(x_a[38], y[2], x[6]);
	and(x_a[39], y[2], x[7]);
	and(x_a[40], y[2], x[8]);
	and(x_a[41], y[2], x[9]);
	and(x_a[42], y[2], x[10]);
	and(x_a[43], y[2], x[11]);
	and(x_a[44], y[2], x[12]);
	and(x_a[45], y[2], x[13]);
	and(x_a[46], y[2], x[14]);
	and(x_a[47], y[2], x[15]);
	and(x_a[48], y[2], x[16]);
	and(x_a[49], y[2], x[17]);
	and(x_a[50], y[2], x[18]);
	and(x_a[51], y[2], x[19]);
	and(x_a[52], y[2], x[20]);
	and(x_a[53], y[2], x[21]);
	and(x_a[54], y[2], x[22]);
	and(x_a[55], y[2], x[23]);
	and(x_a[56], y[2], x[24]);
	and(x_a[57], y[2], x[25]);
	and(x_a[58], y[2], x[26]);
	and(x_a[59], y[2], x[27]);
	and(x_a[60], y[2], x[28]);
	and(x_a[61], y[2], x[29]);
	and(x_a[62], y[2], x[30]);
	nand(x_a[63], y[2], x[31]);

	and(x_a[64], y[3], x[0]);
	and(x_a[65], y[3], x[1]);
	and(x_a[66], y[3], x[2]);
	and(x_a[67], y[3], x[3]);
	and(x_a[68], y[3], x[4]);
	and(x_a[69], y[3], x[5]);
	and(x_a[70], y[3], x[6]);
	and(x_a[71], y[3], x[7]);
	and(x_a[72], y[3], x[8]);
	and(x_a[73], y[3], x[9]);
	and(x_a[74], y[3], x[10]);
	and(x_a[75], y[3], x[11]);
	and(x_a[76], y[3], x[12]);
	and(x_a[77], y[3], x[13]);
	and(x_a[78], y[3], x[14]);
	and(x_a[79], y[3], x[15]);
	and(x_a[80], y[3], x[16]);
	and(x_a[81], y[3], x[17]);
	and(x_a[82], y[3], x[18]);
	and(x_a[83], y[3], x[19]);
	and(x_a[84], y[3], x[20]);
	and(x_a[85], y[3], x[21]);
	and(x_a[86], y[3], x[22]);
	and(x_a[87], y[3], x[23]);
	and(x_a[88], y[3], x[24]);
	and(x_a[89], y[3], x[25]);
	and(x_a[90], y[3], x[26]);
	and(x_a[91], y[3], x[27]);
	and(x_a[92], y[3], x[28]);
	and(x_a[93], y[3], x[29]);
	and(x_a[94], y[3], x[30]);
	nand(x_a[95], y[3], x[31]);

	and(x_a[96], y[4], x[0]);
	and(x_a[97], y[4], x[1]);
	and(x_a[98], y[4], x[2]);
	and(x_a[99], y[4], x[3]);
	and(x_a[100], y[4], x[4]);
	and(x_a[101], y[4], x[5]);
	and(x_a[102], y[4], x[6]);
	and(x_a[103], y[4], x[7]);
	and(x_a[104], y[4], x[8]);
	and(x_a[105], y[4], x[9]);
	and(x_a[106], y[4], x[10]);
	and(x_a[107], y[4], x[11]);
	and(x_a[108], y[4], x[12]);
	and(x_a[109], y[4], x[13]);
	and(x_a[110], y[4], x[14]);
	and(x_a[111], y[4], x[15]);
	and(x_a[112], y[4], x[16]);
	and(x_a[113], y[4], x[17]);
	and(x_a[114], y[4], x[18]);
	and(x_a[115], y[4], x[19]);
	and(x_a[116], y[4], x[20]);
	and(x_a[117], y[4], x[21]);
	and(x_a[118], y[4], x[22]);
	and(x_a[119], y[4], x[23]);
	and(x_a[120], y[4], x[24]);
	and(x_a[121], y[4], x[25]);
	and(x_a[122], y[4], x[26]);
	and(x_a[123], y[4], x[27]);
	and(x_a[124], y[4], x[28]);
	and(x_a[125], y[4], x[29]);
	and(x_a[126], y[4], x[30]);
	nand(x_a[127], y[4], x[31]);

	and(x_a[128], y[5], x[0]);
	and(x_a[129], y[5], x[1]);
	and(x_a[130], y[5], x[2]);
	and(x_a[131], y[5], x[3]);
	and(x_a[132], y[5], x[4]);
	and(x_a[133], y[5], x[5]);
	and(x_a[134], y[5], x[6]);
	and(x_a[135], y[5], x[7]);
	and(x_a[136], y[5], x[8]);
	and(x_a[137], y[5], x[9]);
	and(x_a[138], y[5], x[10]);
	and(x_a[139], y[5], x[11]);
	and(x_a[140], y[5], x[12]);
	and(x_a[141], y[5], x[13]);
	and(x_a[142], y[5], x[14]);
	and(x_a[143], y[5], x[15]);
	and(x_a[144], y[5], x[16]);
	and(x_a[145], y[5], x[17]);
	and(x_a[146], y[5], x[18]);
	and(x_a[147], y[5], x[19]);
	and(x_a[148], y[5], x[20]);
	and(x_a[149], y[5], x[21]);
	and(x_a[150], y[5], x[22]);
	and(x_a[151], y[5], x[23]);
	and(x_a[152], y[5], x[24]);
	and(x_a[153], y[5], x[25]);
	and(x_a[154], y[5], x[26]);
	and(x_a[155], y[5], x[27]);
	and(x_a[156], y[5], x[28]);
	and(x_a[157], y[5], x[29]);
	and(x_a[158], y[5], x[30]);
	nand(x_a[159], y[5], x[31]);

	and(x_a[160], y[6], x[0]);
	and(x_a[161], y[6], x[1]);
	and(x_a[162], y[6], x[2]);
	and(x_a[163], y[6], x[3]);
	and(x_a[164], y[6], x[4]);
	and(x_a[165], y[6], x[5]);
	and(x_a[166], y[6], x[6]);
	and(x_a[167], y[6], x[7]);
	and(x_a[168], y[6], x[8]);
	and(x_a[169], y[6], x[9]);
	and(x_a[170], y[6], x[10]);
	and(x_a[171], y[6], x[11]);
	and(x_a[172], y[6], x[12]);
	and(x_a[173], y[6], x[13]);
	and(x_a[174], y[6], x[14]);
	and(x_a[175], y[6], x[15]);
	and(x_a[176], y[6], x[16]);
	and(x_a[177], y[6], x[17]);
	and(x_a[178], y[6], x[18]);
	and(x_a[179], y[6], x[19]);
	and(x_a[180], y[6], x[20]);
	and(x_a[181], y[6], x[21]);
	and(x_a[182], y[6], x[22]);
	and(x_a[183], y[6], x[23]);
	and(x_a[184], y[6], x[24]);
	and(x_a[185], y[6], x[25]);
	and(x_a[186], y[6], x[26]);
	and(x_a[187], y[6], x[27]);
	and(x_a[188], y[6], x[28]);
	and(x_a[189], y[6], x[29]);
	and(x_a[190], y[6], x[30]);
	nand(x_a[191], y[6], x[31]);

	and(x_a[192], y[7], x[0]);
	and(x_a[193], y[7], x[1]);
	and(x_a[194], y[7], x[2]);
	and(x_a[195], y[7], x[3]);
	and(x_a[196], y[7], x[4]);
	and(x_a[197], y[7], x[5]);
	and(x_a[198], y[7], x[6]);
	and(x_a[199], y[7], x[7]);
	and(x_a[200], y[7], x[8]);
	and(x_a[201], y[7], x[9]);
	and(x_a[202], y[7], x[10]);
	and(x_a[203], y[7], x[11]);
	and(x_a[204], y[7], x[12]);
	and(x_a[205], y[7], x[13]);
	and(x_a[206], y[7], x[14]);
	and(x_a[207], y[7], x[15]);
	and(x_a[208], y[7], x[16]);
	and(x_a[209], y[7], x[17]);
	and(x_a[210], y[7], x[18]);
	and(x_a[211], y[7], x[19]);
	and(x_a[212], y[7], x[20]);
	and(x_a[213], y[7], x[21]);
	and(x_a[214], y[7], x[22]);
	and(x_a[215], y[7], x[23]);
	and(x_a[216], y[7], x[24]);
	and(x_a[217], y[7], x[25]);
	and(x_a[218], y[7], x[26]);
	and(x_a[219], y[7], x[27]);
	and(x_a[220], y[7], x[28]);
	and(x_a[221], y[7], x[29]);
	and(x_a[222], y[7], x[30]);
	nand(x_a[223], y[7], x[31]);

	and(x_a[224], y[8], x[0]);
	and(x_a[225], y[8], x[1]);
	and(x_a[226], y[8], x[2]);
	and(x_a[227], y[8], x[3]);
	and(x_a[228], y[8], x[4]);
	and(x_a[229], y[8], x[5]);
	and(x_a[230], y[8], x[6]);
	and(x_a[231], y[8], x[7]);
	and(x_a[232], y[8], x[8]);
	and(x_a[233], y[8], x[9]);
	and(x_a[234], y[8], x[10]);
	and(x_a[235], y[8], x[11]);
	and(x_a[236], y[8], x[12]);
	and(x_a[237], y[8], x[13]);
	and(x_a[238], y[8], x[14]);
	and(x_a[239], y[8], x[15]);
	and(x_a[240], y[8], x[16]);
	and(x_a[241], y[8], x[17]);
	and(x_a[242], y[8], x[18]);
	and(x_a[243], y[8], x[19]);
	and(x_a[244], y[8], x[20]);
	and(x_a[245], y[8], x[21]);
	and(x_a[246], y[8], x[22]);
	and(x_a[247], y[8], x[23]);
	and(x_a[248], y[8], x[24]);
	and(x_a[249], y[8], x[25]);
	and(x_a[250], y[8], x[26]);
	and(x_a[251], y[8], x[27]);
	and(x_a[252], y[8], x[28]);
	and(x_a[253], y[8], x[29]);
	and(x_a[254], y[8], x[30]);
	nand(x_a[255], y[8], x[31]);

	and(x_a[256], y[9], x[0]);
	and(x_a[257], y[9], x[1]);
	and(x_a[258], y[9], x[2]);
	and(x_a[259], y[9], x[3]);
	and(x_a[260], y[9], x[4]);
	and(x_a[261], y[9], x[5]);
	and(x_a[262], y[9], x[6]);
	and(x_a[263], y[9], x[7]);
	and(x_a[264], y[9], x[8]);
	and(x_a[265], y[9], x[9]);
	and(x_a[266], y[9], x[10]);
	and(x_a[267], y[9], x[11]);
	and(x_a[268], y[9], x[12]);
	and(x_a[269], y[9], x[13]);
	and(x_a[270], y[9], x[14]);
	and(x_a[271], y[9], x[15]);
	and(x_a[272], y[9], x[16]);
	and(x_a[273], y[9], x[17]);
	and(x_a[274], y[9], x[18]);
	and(x_a[275], y[9], x[19]);
	and(x_a[276], y[9], x[20]);
	and(x_a[277], y[9], x[21]);
	and(x_a[278], y[9], x[22]);
	and(x_a[279], y[9], x[23]);
	and(x_a[280], y[9], x[24]);
	and(x_a[281], y[9], x[25]);
	and(x_a[282], y[9], x[26]);
	and(x_a[283], y[9], x[27]);
	and(x_a[284], y[9], x[28]);
	and(x_a[285], y[9], x[29]);
	and(x_a[286], y[9], x[30]);
	nand(x_a[287], y[9], x[31]);

	and(x_a[288], y[10], x[0]);
	and(x_a[289], y[10], x[1]);
	and(x_a[290], y[10], x[2]);
	and(x_a[291], y[10], x[3]);
	and(x_a[292], y[10], x[4]);
	and(x_a[293], y[10], x[5]);
	and(x_a[294], y[10], x[6]);
	and(x_a[295], y[10], x[7]);
	and(x_a[296], y[10], x[8]);
	and(x_a[297], y[10], x[9]);
	and(x_a[298], y[10], x[10]);
	and(x_a[299], y[10], x[11]);
	and(x_a[300], y[10], x[12]);
	and(x_a[301], y[10], x[13]);
	and(x_a[302], y[10], x[14]);
	and(x_a[303], y[10], x[15]);
	and(x_a[304], y[10], x[16]);
	and(x_a[305], y[10], x[17]);
	and(x_a[306], y[10], x[18]);
	and(x_a[307], y[10], x[19]);
	and(x_a[308], y[10], x[20]);
	and(x_a[309], y[10], x[21]);
	and(x_a[310], y[10], x[22]);
	and(x_a[311], y[10], x[23]);
	and(x_a[312], y[10], x[24]);
	and(x_a[313], y[10], x[25]);
	and(x_a[314], y[10], x[26]);
	and(x_a[315], y[10], x[27]);
	and(x_a[316], y[10], x[28]);
	and(x_a[317], y[10], x[29]);
	and(x_a[318], y[10], x[30]);
	nand(x_a[319], y[10], x[31]);

	and(x_a[320], y[11], x[0]);
	and(x_a[321], y[11], x[1]);
	and(x_a[322], y[11], x[2]);
	and(x_a[323], y[11], x[3]);
	and(x_a[324], y[11], x[4]);
	and(x_a[325], y[11], x[5]);
	and(x_a[326], y[11], x[6]);
	and(x_a[327], y[11], x[7]);
	and(x_a[328], y[11], x[8]);
	and(x_a[329], y[11], x[9]);
	and(x_a[330], y[11], x[10]);
	and(x_a[331], y[11], x[11]);
	and(x_a[332], y[11], x[12]);
	and(x_a[333], y[11], x[13]);
	and(x_a[334], y[11], x[14]);
	and(x_a[335], y[11], x[15]);
	and(x_a[336], y[11], x[16]);
	and(x_a[337], y[11], x[17]);
	and(x_a[338], y[11], x[18]);
	and(x_a[339], y[11], x[19]);
	and(x_a[340], y[11], x[20]);
	and(x_a[341], y[11], x[21]);
	and(x_a[342], y[11], x[22]);
	and(x_a[343], y[11], x[23]);
	and(x_a[344], y[11], x[24]);
	and(x_a[345], y[11], x[25]);
	and(x_a[346], y[11], x[26]);
	and(x_a[347], y[11], x[27]);
	and(x_a[348], y[11], x[28]);
	and(x_a[349], y[11], x[29]);
	and(x_a[350], y[11], x[30]);
	nand(x_a[351], y[11], x[31]);

	and(x_a[352], y[12], x[0]);
	and(x_a[353], y[12], x[1]);
	and(x_a[354], y[12], x[2]);
	and(x_a[355], y[12], x[3]);
	and(x_a[356], y[12], x[4]);
	and(x_a[357], y[12], x[5]);
	and(x_a[358], y[12], x[6]);
	and(x_a[359], y[12], x[7]);
	and(x_a[360], y[12], x[8]);
	and(x_a[361], y[12], x[9]);
	and(x_a[362], y[12], x[10]);
	and(x_a[363], y[12], x[11]);
	and(x_a[364], y[12], x[12]);
	and(x_a[365], y[12], x[13]);
	and(x_a[366], y[12], x[14]);
	and(x_a[367], y[12], x[15]);
	and(x_a[368], y[12], x[16]);
	and(x_a[369], y[12], x[17]);
	and(x_a[370], y[12], x[18]);
	and(x_a[371], y[12], x[19]);
	and(x_a[372], y[12], x[20]);
	and(x_a[373], y[12], x[21]);
	and(x_a[374], y[12], x[22]);
	and(x_a[375], y[12], x[23]);
	and(x_a[376], y[12], x[24]);
	and(x_a[377], y[12], x[25]);
	and(x_a[378], y[12], x[26]);
	and(x_a[379], y[12], x[27]);
	and(x_a[380], y[12], x[28]);
	and(x_a[381], y[12], x[29]);
	and(x_a[382], y[12], x[30]);
	nand(x_a[383], y[12], x[31]);

	and(x_a[384], y[13], x[0]);
	and(x_a[385], y[13], x[1]);
	and(x_a[386], y[13], x[2]);
	and(x_a[387], y[13], x[3]);
	and(x_a[388], y[13], x[4]);
	and(x_a[389], y[13], x[5]);
	and(x_a[390], y[13], x[6]);
	and(x_a[391], y[13], x[7]);
	and(x_a[392], y[13], x[8]);
	and(x_a[393], y[13], x[9]);
	and(x_a[394], y[13], x[10]);
	and(x_a[395], y[13], x[11]);
	and(x_a[396], y[13], x[12]);
	and(x_a[397], y[13], x[13]);
	and(x_a[398], y[13], x[14]);
	and(x_a[399], y[13], x[15]);
	and(x_a[400], y[13], x[16]);
	and(x_a[401], y[13], x[17]);
	and(x_a[402], y[13], x[18]);
	and(x_a[403], y[13], x[19]);
	and(x_a[404], y[13], x[20]);
	and(x_a[405], y[13], x[21]);
	and(x_a[406], y[13], x[22]);
	and(x_a[407], y[13], x[23]);
	and(x_a[408], y[13], x[24]);
	and(x_a[409], y[13], x[25]);
	and(x_a[410], y[13], x[26]);
	and(x_a[411], y[13], x[27]);
	and(x_a[412], y[13], x[28]);
	and(x_a[413], y[13], x[29]);
	and(x_a[414], y[13], x[30]);
	nand(x_a[415], y[13], x[31]);

	and(x_a[416], y[14], x[0]);
	and(x_a[417], y[14], x[1]);
	and(x_a[418], y[14], x[2]);
	and(x_a[419], y[14], x[3]);
	and(x_a[420], y[14], x[4]);
	and(x_a[421], y[14], x[5]);
	and(x_a[422], y[14], x[6]);
	and(x_a[423], y[14], x[7]);
	and(x_a[424], y[14], x[8]);
	and(x_a[425], y[14], x[9]);
	and(x_a[426], y[14], x[10]);
	and(x_a[427], y[14], x[11]);
	and(x_a[428], y[14], x[12]);
	and(x_a[429], y[14], x[13]);
	and(x_a[430], y[14], x[14]);
	and(x_a[431], y[14], x[15]);
	and(x_a[432], y[14], x[16]);
	and(x_a[433], y[14], x[17]);
	and(x_a[434], y[14], x[18]);
	and(x_a[435], y[14], x[19]);
	and(x_a[436], y[14], x[20]);
	and(x_a[437], y[14], x[21]);
	and(x_a[438], y[14], x[22]);
	and(x_a[439], y[14], x[23]);
	and(x_a[440], y[14], x[24]);
	and(x_a[441], y[14], x[25]);
	and(x_a[442], y[14], x[26]);
	and(x_a[443], y[14], x[27]);
	and(x_a[444], y[14], x[28]);
	and(x_a[445], y[14], x[29]);
	and(x_a[446], y[14], x[30]);
	nand(x_a[447], y[14], x[31]);

	and(x_a[448], y[15], x[0]);
	and(x_a[449], y[15], x[1]);
	and(x_a[450], y[15], x[2]);
	and(x_a[451], y[15], x[3]);
	and(x_a[452], y[15], x[4]);
	and(x_a[453], y[15], x[5]);
	and(x_a[454], y[15], x[6]);
	and(x_a[455], y[15], x[7]);
	and(x_a[456], y[15], x[8]);
	and(x_a[457], y[15], x[9]);
	and(x_a[458], y[15], x[10]);
	and(x_a[459], y[15], x[11]);
	and(x_a[460], y[15], x[12]);
	and(x_a[461], y[15], x[13]);
	and(x_a[462], y[15], x[14]);
	and(x_a[463], y[15], x[15]);
	and(x_a[464], y[15], x[16]);
	and(x_a[465], y[15], x[17]);
	and(x_a[466], y[15], x[18]);
	and(x_a[467], y[15], x[19]);
	and(x_a[468], y[15], x[20]);
	and(x_a[469], y[15], x[21]);
	and(x_a[470], y[15], x[22]);
	and(x_a[471], y[15], x[23]);
	and(x_a[472], y[15], x[24]);
	and(x_a[473], y[15], x[25]);
	and(x_a[474], y[15], x[26]);
	and(x_a[475], y[15], x[27]);
	and(x_a[476], y[15], x[28]);
	and(x_a[477], y[15], x[29]);
	and(x_a[478], y[15], x[30]);
	nand(x_a[479], y[15], x[31]);

	and(x_a[480], y[16], x[0]);
	and(x_a[481], y[16], x[1]);
	and(x_a[482], y[16], x[2]);
	and(x_a[483], y[16], x[3]);
	and(x_a[484], y[16], x[4]);
	and(x_a[485], y[16], x[5]);
	and(x_a[486], y[16], x[6]);
	and(x_a[487], y[16], x[7]);
	and(x_a[488], y[16], x[8]);
	and(x_a[489], y[16], x[9]);
	and(x_a[490], y[16], x[10]);
	and(x_a[491], y[16], x[11]);
	and(x_a[492], y[16], x[12]);
	and(x_a[493], y[16], x[13]);
	and(x_a[494], y[16], x[14]);
	and(x_a[495], y[16], x[15]);
	and(x_a[496], y[16], x[16]);
	and(x_a[497], y[16], x[17]);
	and(x_a[498], y[16], x[18]);
	and(x_a[499], y[16], x[19]);
	and(x_a[500], y[16], x[20]);
	and(x_a[501], y[16], x[21]);
	and(x_a[502], y[16], x[22]);
	and(x_a[503], y[16], x[23]);
	and(x_a[504], y[16], x[24]);
	and(x_a[505], y[16], x[25]);
	and(x_a[506], y[16], x[26]);
	and(x_a[507], y[16], x[27]);
	and(x_a[508], y[16], x[28]);
	and(x_a[509], y[16], x[29]);
	and(x_a[510], y[16], x[30]);
	nand(x_a[511], y[16], x[31]);

	and(x_a[512], y[17], x[0]);
	and(x_a[513], y[17], x[1]);
	and(x_a[514], y[17], x[2]);
	and(x_a[515], y[17], x[3]);
	and(x_a[516], y[17], x[4]);
	and(x_a[517], y[17], x[5]);
	and(x_a[518], y[17], x[6]);
	and(x_a[519], y[17], x[7]);
	and(x_a[520], y[17], x[8]);
	and(x_a[521], y[17], x[9]);
	and(x_a[522], y[17], x[10]);
	and(x_a[523], y[17], x[11]);
	and(x_a[524], y[17], x[12]);
	and(x_a[525], y[17], x[13]);
	and(x_a[526], y[17], x[14]);
	and(x_a[527], y[17], x[15]);
	and(x_a[528], y[17], x[16]);
	and(x_a[529], y[17], x[17]);
	and(x_a[530], y[17], x[18]);
	and(x_a[531], y[17], x[19]);
	and(x_a[532], y[17], x[20]);
	and(x_a[533], y[17], x[21]);
	and(x_a[534], y[17], x[22]);
	and(x_a[535], y[17], x[23]);
	and(x_a[536], y[17], x[24]);
	and(x_a[537], y[17], x[25]);
	and(x_a[538], y[17], x[26]);
	and(x_a[539], y[17], x[27]);
	and(x_a[540], y[17], x[28]);
	and(x_a[541], y[17], x[29]);
	and(x_a[542], y[17], x[30]);
	nand(x_a[543], y[17], x[31]);

	and(x_a[544], y[18], x[0]);
	and(x_a[545], y[18], x[1]);
	and(x_a[546], y[18], x[2]);
	and(x_a[547], y[18], x[3]);
	and(x_a[548], y[18], x[4]);
	and(x_a[549], y[18], x[5]);
	and(x_a[550], y[18], x[6]);
	and(x_a[551], y[18], x[7]);
	and(x_a[552], y[18], x[8]);
	and(x_a[553], y[18], x[9]);
	and(x_a[554], y[18], x[10]);
	and(x_a[555], y[18], x[11]);
	and(x_a[556], y[18], x[12]);
	and(x_a[557], y[18], x[13]);
	and(x_a[558], y[18], x[14]);
	and(x_a[559], y[18], x[15]);
	and(x_a[560], y[18], x[16]);
	and(x_a[561], y[18], x[17]);
	and(x_a[562], y[18], x[18]);
	and(x_a[563], y[18], x[19]);
	and(x_a[564], y[18], x[20]);
	and(x_a[565], y[18], x[21]);
	and(x_a[566], y[18], x[22]);
	and(x_a[567], y[18], x[23]);
	and(x_a[568], y[18], x[24]);
	and(x_a[569], y[18], x[25]);
	and(x_a[570], y[18], x[26]);
	and(x_a[571], y[18], x[27]);
	and(x_a[572], y[18], x[28]);
	and(x_a[573], y[18], x[29]);
	and(x_a[574], y[18], x[30]);
	nand(x_a[575], y[18], x[31]);

	and(x_a[576], y[19], x[0]);
	and(x_a[577], y[19], x[1]);
	and(x_a[578], y[19], x[2]);
	and(x_a[579], y[19], x[3]);
	and(x_a[580], y[19], x[4]);
	and(x_a[581], y[19], x[5]);
	and(x_a[582], y[19], x[6]);
	and(x_a[583], y[19], x[7]);
	and(x_a[584], y[19], x[8]);
	and(x_a[585], y[19], x[9]);
	and(x_a[586], y[19], x[10]);
	and(x_a[587], y[19], x[11]);
	and(x_a[588], y[19], x[12]);
	and(x_a[589], y[19], x[13]);
	and(x_a[590], y[19], x[14]);
	and(x_a[591], y[19], x[15]);
	and(x_a[592], y[19], x[16]);
	and(x_a[593], y[19], x[17]);
	and(x_a[594], y[19], x[18]);
	and(x_a[595], y[19], x[19]);
	and(x_a[596], y[19], x[20]);
	and(x_a[597], y[19], x[21]);
	and(x_a[598], y[19], x[22]);
	and(x_a[599], y[19], x[23]);
	and(x_a[600], y[19], x[24]);
	and(x_a[601], y[19], x[25]);
	and(x_a[602], y[19], x[26]);
	and(x_a[603], y[19], x[27]);
	and(x_a[604], y[19], x[28]);
	and(x_a[605], y[19], x[29]);
	and(x_a[606], y[19], x[30]);
	nand(x_a[607], y[19], x[31]);

	and(x_a[608], y[20], x[0]);
	and(x_a[609], y[20], x[1]);
	and(x_a[610], y[20], x[2]);
	and(x_a[611], y[20], x[3]);
	and(x_a[612], y[20], x[4]);
	and(x_a[613], y[20], x[5]);
	and(x_a[614], y[20], x[6]);
	and(x_a[615], y[20], x[7]);
	and(x_a[616], y[20], x[8]);
	and(x_a[617], y[20], x[9]);
	and(x_a[618], y[20], x[10]);
	and(x_a[619], y[20], x[11]);
	and(x_a[620], y[20], x[12]);
	and(x_a[621], y[20], x[13]);
	and(x_a[622], y[20], x[14]);
	and(x_a[623], y[20], x[15]);
	and(x_a[624], y[20], x[16]);
	and(x_a[625], y[20], x[17]);
	and(x_a[626], y[20], x[18]);
	and(x_a[627], y[20], x[19]);
	and(x_a[628], y[20], x[20]);
	and(x_a[629], y[20], x[21]);
	and(x_a[630], y[20], x[22]);
	and(x_a[631], y[20], x[23]);
	and(x_a[632], y[20], x[24]);
	and(x_a[633], y[20], x[25]);
	and(x_a[634], y[20], x[26]);
	and(x_a[635], y[20], x[27]);
	and(x_a[636], y[20], x[28]);
	and(x_a[637], y[20], x[29]);
	and(x_a[638], y[20], x[30]);
	nand(x_a[639], y[20], x[31]);

	and(x_a[640], y[21], x[0]);
	and(x_a[641], y[21], x[1]);
	and(x_a[642], y[21], x[2]);
	and(x_a[643], y[21], x[3]);
	and(x_a[644], y[21], x[4]);
	and(x_a[645], y[21], x[5]);
	and(x_a[646], y[21], x[6]);
	and(x_a[647], y[21], x[7]);
	and(x_a[648], y[21], x[8]);
	and(x_a[649], y[21], x[9]);
	and(x_a[650], y[21], x[10]);
	and(x_a[651], y[21], x[11]);
	and(x_a[652], y[21], x[12]);
	and(x_a[653], y[21], x[13]);
	and(x_a[654], y[21], x[14]);
	and(x_a[655], y[21], x[15]);
	and(x_a[656], y[21], x[16]);
	and(x_a[657], y[21], x[17]);
	and(x_a[658], y[21], x[18]);
	and(x_a[659], y[21], x[19]);
	and(x_a[660], y[21], x[20]);
	and(x_a[661], y[21], x[21]);
	and(x_a[662], y[21], x[22]);
	and(x_a[663], y[21], x[23]);
	and(x_a[664], y[21], x[24]);
	and(x_a[665], y[21], x[25]);
	and(x_a[666], y[21], x[26]);
	and(x_a[667], y[21], x[27]);
	and(x_a[668], y[21], x[28]);
	and(x_a[669], y[21], x[29]);
	and(x_a[670], y[21], x[30]);
	nand(x_a[671], y[21], x[31]);

	and(x_a[672], y[22], x[0]);
	and(x_a[673], y[22], x[1]);
	and(x_a[674], y[22], x[2]);
	and(x_a[675], y[22], x[3]);
	and(x_a[676], y[22], x[4]);
	and(x_a[677], y[22], x[5]);
	and(x_a[678], y[22], x[6]);
	and(x_a[679], y[22], x[7]);
	and(x_a[680], y[22], x[8]);
	and(x_a[681], y[22], x[9]);
	and(x_a[682], y[22], x[10]);
	and(x_a[683], y[22], x[11]);
	and(x_a[684], y[22], x[12]);
	and(x_a[685], y[22], x[13]);
	and(x_a[686], y[22], x[14]);
	and(x_a[687], y[22], x[15]);
	and(x_a[688], y[22], x[16]);
	and(x_a[689], y[22], x[17]);
	and(x_a[690], y[22], x[18]);
	and(x_a[691], y[22], x[19]);
	and(x_a[692], y[22], x[20]);
	and(x_a[693], y[22], x[21]);
	and(x_a[694], y[22], x[22]);
	and(x_a[695], y[22], x[23]);
	and(x_a[696], y[22], x[24]);
	and(x_a[697], y[22], x[25]);
	and(x_a[698], y[22], x[26]);
	and(x_a[699], y[22], x[27]);
	and(x_a[700], y[22], x[28]);
	and(x_a[701], y[22], x[29]);
	and(x_a[702], y[22], x[30]);
	nand(x_a[703], y[22], x[31]);

	and(x_a[704], y[23], x[0]);
	and(x_a[705], y[23], x[1]);
	and(x_a[706], y[23], x[2]);
	and(x_a[707], y[23], x[3]);
	and(x_a[708], y[23], x[4]);
	and(x_a[709], y[23], x[5]);
	and(x_a[710], y[23], x[6]);
	and(x_a[711], y[23], x[7]);
	and(x_a[712], y[23], x[8]);
	and(x_a[713], y[23], x[9]);
	and(x_a[714], y[23], x[10]);
	and(x_a[715], y[23], x[11]);
	and(x_a[716], y[23], x[12]);
	and(x_a[717], y[23], x[13]);
	and(x_a[718], y[23], x[14]);
	and(x_a[719], y[23], x[15]);
	and(x_a[720], y[23], x[16]);
	and(x_a[721], y[23], x[17]);
	and(x_a[722], y[23], x[18]);
	and(x_a[723], y[23], x[19]);
	and(x_a[724], y[23], x[20]);
	and(x_a[725], y[23], x[21]);
	and(x_a[726], y[23], x[22]);
	and(x_a[727], y[23], x[23]);
	and(x_a[728], y[23], x[24]);
	and(x_a[729], y[23], x[25]);
	and(x_a[730], y[23], x[26]);
	and(x_a[731], y[23], x[27]);
	and(x_a[732], y[23], x[28]);
	and(x_a[733], y[23], x[29]);
	and(x_a[734], y[23], x[30]);
	nand(x_a[735], y[23], x[31]);

	and(x_a[736], y[24], x[0]);
	and(x_a[737], y[24], x[1]);
	and(x_a[738], y[24], x[2]);
	and(x_a[739], y[24], x[3]);
	and(x_a[740], y[24], x[4]);
	and(x_a[741], y[24], x[5]);
	and(x_a[742], y[24], x[6]);
	and(x_a[743], y[24], x[7]);
	and(x_a[744], y[24], x[8]);
	and(x_a[745], y[24], x[9]);
	and(x_a[746], y[24], x[10]);
	and(x_a[747], y[24], x[11]);
	and(x_a[748], y[24], x[12]);
	and(x_a[749], y[24], x[13]);
	and(x_a[750], y[24], x[14]);
	and(x_a[751], y[24], x[15]);
	and(x_a[752], y[24], x[16]);
	and(x_a[753], y[24], x[17]);
	and(x_a[754], y[24], x[18]);
	and(x_a[755], y[24], x[19]);
	and(x_a[756], y[24], x[20]);
	and(x_a[757], y[24], x[21]);
	and(x_a[758], y[24], x[22]);
	and(x_a[759], y[24], x[23]);
	and(x_a[760], y[24], x[24]);
	and(x_a[761], y[24], x[25]);
	and(x_a[762], y[24], x[26]);
	and(x_a[763], y[24], x[27]);
	and(x_a[764], y[24], x[28]);
	and(x_a[765], y[24], x[29]);
	and(x_a[766], y[24], x[30]);
	nand(x_a[767], y[24], x[31]);

	and(x_a[768], y[25], x[0]);
	and(x_a[769], y[25], x[1]);
	and(x_a[770], y[25], x[2]);
	and(x_a[771], y[25], x[3]);
	and(x_a[772], y[25], x[4]);
	and(x_a[773], y[25], x[5]);
	and(x_a[774], y[25], x[6]);
	and(x_a[775], y[25], x[7]);
	and(x_a[776], y[25], x[8]);
	and(x_a[777], y[25], x[9]);
	and(x_a[778], y[25], x[10]);
	and(x_a[779], y[25], x[11]);
	and(x_a[780], y[25], x[12]);
	and(x_a[781], y[25], x[13]);
	and(x_a[782], y[25], x[14]);
	and(x_a[783], y[25], x[15]);
	and(x_a[784], y[25], x[16]);
	and(x_a[785], y[25], x[17]);
	and(x_a[786], y[25], x[18]);
	and(x_a[787], y[25], x[19]);
	and(x_a[788], y[25], x[20]);
	and(x_a[789], y[25], x[21]);
	and(x_a[790], y[25], x[22]);
	and(x_a[791], y[25], x[23]);
	and(x_a[792], y[25], x[24]);
	and(x_a[793], y[25], x[25]);
	and(x_a[794], y[25], x[26]);
	and(x_a[795], y[25], x[27]);
	and(x_a[796], y[25], x[28]);
	and(x_a[797], y[25], x[29]);
	and(x_a[798], y[25], x[30]);
	nand(x_a[799], y[25], x[31]);

	and(x_a[800], y[26], x[0]);
	and(x_a[801], y[26], x[1]);
	and(x_a[802], y[26], x[2]);
	and(x_a[803], y[26], x[3]);
	and(x_a[804], y[26], x[4]);
	and(x_a[805], y[26], x[5]);
	and(x_a[806], y[26], x[6]);
	and(x_a[807], y[26], x[7]);
	and(x_a[808], y[26], x[8]);
	and(x_a[809], y[26], x[9]);
	and(x_a[810], y[26], x[10]);
	and(x_a[811], y[26], x[11]);
	and(x_a[812], y[26], x[12]);
	and(x_a[813], y[26], x[13]);
	and(x_a[814], y[26], x[14]);
	and(x_a[815], y[26], x[15]);
	and(x_a[816], y[26], x[16]);
	and(x_a[817], y[26], x[17]);
	and(x_a[818], y[26], x[18]);
	and(x_a[819], y[26], x[19]);
	and(x_a[820], y[26], x[20]);
	and(x_a[821], y[26], x[21]);
	and(x_a[822], y[26], x[22]);
	and(x_a[823], y[26], x[23]);
	and(x_a[824], y[26], x[24]);
	and(x_a[825], y[26], x[25]);
	and(x_a[826], y[26], x[26]);
	and(x_a[827], y[26], x[27]);
	and(x_a[828], y[26], x[28]);
	and(x_a[829], y[26], x[29]);
	and(x_a[830], y[26], x[30]);
	nand(x_a[831], y[26], x[31]);

	and(x_a[832], y[27], x[0]);
	and(x_a[833], y[27], x[1]);
	and(x_a[834], y[27], x[2]);
	and(x_a[835], y[27], x[3]);
	and(x_a[836], y[27], x[4]);
	and(x_a[837], y[27], x[5]);
	and(x_a[838], y[27], x[6]);
	and(x_a[839], y[27], x[7]);
	and(x_a[840], y[27], x[8]);
	and(x_a[841], y[27], x[9]);
	and(x_a[842], y[27], x[10]);
	and(x_a[843], y[27], x[11]);
	and(x_a[844], y[27], x[12]);
	and(x_a[845], y[27], x[13]);
	and(x_a[846], y[27], x[14]);
	and(x_a[847], y[27], x[15]);
	and(x_a[848], y[27], x[16]);
	and(x_a[849], y[27], x[17]);
	and(x_a[850], y[27], x[18]);
	and(x_a[851], y[27], x[19]);
	and(x_a[852], y[27], x[20]);
	and(x_a[853], y[27], x[21]);
	and(x_a[854], y[27], x[22]);
	and(x_a[855], y[27], x[23]);
	and(x_a[856], y[27], x[24]);
	and(x_a[857], y[27], x[25]);
	and(x_a[858], y[27], x[26]);
	and(x_a[859], y[27], x[27]);
	and(x_a[860], y[27], x[28]);
	and(x_a[861], y[27], x[29]);
	and(x_a[862], y[27], x[30]);
	nand(x_a[863], y[27], x[31]);

	and(x_a[864], y[28], x[0]);
	and(x_a[865], y[28], x[1]);
	and(x_a[866], y[28], x[2]);
	and(x_a[867], y[28], x[3]);
	and(x_a[868], y[28], x[4]);
	and(x_a[869], y[28], x[5]);
	and(x_a[870], y[28], x[6]);
	and(x_a[871], y[28], x[7]);
	and(x_a[872], y[28], x[8]);
	and(x_a[873], y[28], x[9]);
	and(x_a[874], y[28], x[10]);
	and(x_a[875], y[28], x[11]);
	and(x_a[876], y[28], x[12]);
	and(x_a[877], y[28], x[13]);
	and(x_a[878], y[28], x[14]);
	and(x_a[879], y[28], x[15]);
	and(x_a[880], y[28], x[16]);
	and(x_a[881], y[28], x[17]);
	and(x_a[882], y[28], x[18]);
	and(x_a[883], y[28], x[19]);
	and(x_a[884], y[28], x[20]);
	and(x_a[885], y[28], x[21]);
	and(x_a[886], y[28], x[22]);
	and(x_a[887], y[28], x[23]);
	and(x_a[888], y[28], x[24]);
	and(x_a[889], y[28], x[25]);
	and(x_a[890], y[28], x[26]);
	and(x_a[891], y[28], x[27]);
	and(x_a[892], y[28], x[28]);
	and(x_a[893], y[28], x[29]);
	and(x_a[894], y[28], x[30]);
	nand(x_a[895], y[28], x[31]);

	and(x_a[896], y[29], x[0]);
	and(x_a[897], y[29], x[1]);
	and(x_a[898], y[29], x[2]);
	and(x_a[899], y[29], x[3]);
	and(x_a[900], y[29], x[4]);
	and(x_a[901], y[29], x[5]);
	and(x_a[902], y[29], x[6]);
	and(x_a[903], y[29], x[7]);
	and(x_a[904], y[29], x[8]);
	and(x_a[905], y[29], x[9]);
	and(x_a[906], y[29], x[10]);
	and(x_a[907], y[29], x[11]);
	and(x_a[908], y[29], x[12]);
	and(x_a[909], y[29], x[13]);
	and(x_a[910], y[29], x[14]);
	and(x_a[911], y[29], x[15]);
	and(x_a[912], y[29], x[16]);
	and(x_a[913], y[29], x[17]);
	and(x_a[914], y[29], x[18]);
	and(x_a[915], y[29], x[19]);
	and(x_a[916], y[29], x[20]);
	and(x_a[917], y[29], x[21]);
	and(x_a[918], y[29], x[22]);
	and(x_a[919], y[29], x[23]);
	and(x_a[920], y[29], x[24]);
	and(x_a[921], y[29], x[25]);
	and(x_a[922], y[29], x[26]);
	and(x_a[923], y[29], x[27]);
	and(x_a[924], y[29], x[28]);
	and(x_a[925], y[29], x[29]);
	and(x_a[926], y[29], x[30]);
	nand(x_a[927], y[29], x[31]);

	and(x_a[928], y[30], x[0]);
	and(x_a[929], y[30], x[1]);
	and(x_a[930], y[30], x[2]);
	and(x_a[931], y[30], x[3]);
	and(x_a[932], y[30], x[4]);
	and(x_a[933], y[30], x[5]);
	and(x_a[934], y[30], x[6]);
	and(x_a[935], y[30], x[7]);
	and(x_a[936], y[30], x[8]);
	and(x_a[937], y[30], x[9]);
	and(x_a[938], y[30], x[10]);
	and(x_a[939], y[30], x[11]);
	and(x_a[940], y[30], x[12]);
	and(x_a[941], y[30], x[13]);
	and(x_a[942], y[30], x[14]);
	and(x_a[943], y[30], x[15]);
	and(x_a[944], y[30], x[16]);
	and(x_a[945], y[30], x[17]);
	and(x_a[946], y[30], x[18]);
	and(x_a[947], y[30], x[19]);
	and(x_a[948], y[30], x[20]);
	and(x_a[949], y[30], x[21]);
	and(x_a[950], y[30], x[22]);
	and(x_a[951], y[30], x[23]);
	and(x_a[952], y[30], x[24]);
	and(x_a[953], y[30], x[25]);
	and(x_a[954], y[30], x[26]);
	and(x_a[955], y[30], x[27]);
	and(x_a[956], y[30], x[28]);
	and(x_a[957], y[30], x[29]);
	and(x_a[958], y[30], x[30]);
	nand(x_a[959], y[30], x[31]);

	nand(x_a[960], y[31], x[0]);
	nand(x_a[961], y[31], x[1]);
	nand(x_a[962], y[31], x[2]);
	nand(x_a[963], y[31], x[3]);
	nand(x_a[964], y[31], x[4]);
	nand(x_a[965], y[31], x[5]);
	nand(x_a[966], y[31], x[6]);
	nand(x_a[967], y[31], x[7]);
	nand(x_a[968], y[31], x[8]);
	nand(x_a[969], y[31], x[9]);
	nand(x_a[970], y[31], x[10]);
	nand(x_a[971], y[31], x[11]);
	nand(x_a[972], y[31], x[12]);
	nand(x_a[973], y[31], x[13]);
	nand(x_a[974], y[31], x[14]);
	nand(x_a[975], y[31], x[15]);
	nand(x_a[976], y[31], x[16]);
	nand(x_a[977], y[31], x[17]);
	nand(x_a[978], y[31], x[18]);
	nand(x_a[979], y[31], x[19]);
	nand(x_a[980], y[31], x[20]);
	nand(x_a[981], y[31], x[21]);
	nand(x_a[982], y[31], x[22]);
	nand(x_a[983], y[31], x[23]);
	nand(x_a[984], y[31], x[24]);
	nand(x_a[985], y[31], x[25]);
	nand(x_a[986], y[31], x[26]);
	nand(x_a[987], y[31], x[27]);
	nand(x_a[988], y[31], x[28]);
	nand(x_a[989], y[31], x[29]);
	nand(x_a[990], y[31], x[30]);
	and(x_a[991], y[31], x[31]);

	assign x_a[992] = 1'b1;

	//Stage 0
	ha_1b ha0(
		.a(x_a[0]), .b(y_b[0]), //Inputs
		.s(to_cut_res[1]), .c_out(ci_out[0]) //Outputs 
	);
	fa_1b fa0(
		.a(x_a[1]), .b(y_b[1]), .c_in(ci_out[0]), //Inputs
		.s(y_b[32]), .c_out(ci_out[1]) //Outputs 
	);
	fa_1b fa1(
		.a(x_a[2]), .b(y_b[2]), .c_in(ci_out[1]), //Inputs
		.s(y_b[33]), .c_out(ci_out[2]) //Outputs 
	);
	fa_1b fa2(
		.a(x_a[3]), .b(y_b[3]), .c_in(ci_out[2]), //Inputs
		.s(y_b[34]), .c_out(ci_out[3]) //Outputs 
	);
	fa_1b fa3(
		.a(x_a[4]), .b(y_b[4]), .c_in(ci_out[3]), //Inputs
		.s(y_b[35]), .c_out(ci_out[4]) //Outputs 
	);
	fa_1b fa4(
		.a(x_a[5]), .b(y_b[5]), .c_in(ci_out[4]), //Inputs
		.s(y_b[36]), .c_out(ci_out[5]) //Outputs 
	);
	fa_1b fa5(
		.a(x_a[6]), .b(y_b[6]), .c_in(ci_out[5]), //Inputs
		.s(y_b[37]), .c_out(ci_out[6]) //Outputs 
	);
	fa_1b fa6(
		.a(x_a[7]), .b(y_b[7]), .c_in(ci_out[6]), //Inputs
		.s(y_b[38]), .c_out(ci_out[7]) //Outputs 
	);
	fa_1b fa7(
		.a(x_a[8]), .b(y_b[8]), .c_in(ci_out[7]), //Inputs
		.s(y_b[39]), .c_out(ci_out[8]) //Outputs 
	);
	fa_1b fa8(
		.a(x_a[9]), .b(y_b[9]), .c_in(ci_out[8]), //Inputs
		.s(y_b[40]), .c_out(ci_out[9]) //Outputs 
	);
	fa_1b fa9(
		.a(x_a[10]), .b(y_b[10]), .c_in(ci_out[9]), //Inputs
		.s(y_b[41]), .c_out(ci_out[10]) //Outputs 
	);
	fa_1b fa10(
		.a(x_a[11]), .b(y_b[11]), .c_in(ci_out[10]), //Inputs
		.s(y_b[42]), .c_out(ci_out[11]) //Outputs 
	);
	fa_1b fa11(
		.a(x_a[12]), .b(y_b[12]), .c_in(ci_out[11]), //Inputs
		.s(y_b[43]), .c_out(ci_out[12]) //Outputs 
	);
	fa_1b fa12(
		.a(x_a[13]), .b(y_b[13]), .c_in(ci_out[12]), //Inputs
		.s(y_b[44]), .c_out(ci_out[13]) //Outputs 
	);
	fa_1b fa13(
		.a(x_a[14]), .b(y_b[14]), .c_in(ci_out[13]), //Inputs
		.s(y_b[45]), .c_out(ci_out[14]) //Outputs 
	);
	fa_1b fa14(
		.a(x_a[15]), .b(y_b[15]), .c_in(ci_out[14]), //Inputs
		.s(y_b[46]), .c_out(ci_out[15]) //Outputs 
	);
	fa_1b fa15(
		.a(x_a[16]), .b(y_b[16]), .c_in(ci_out[15]), //Inputs
		.s(y_b[47]), .c_out(ci_out[16]) //Outputs 
	);
	fa_1b fa16(
		.a(x_a[17]), .b(y_b[17]), .c_in(ci_out[16]), //Inputs
		.s(y_b[48]), .c_out(ci_out[17]) //Outputs 
	);
	fa_1b fa17(
		.a(x_a[18]), .b(y_b[18]), .c_in(ci_out[17]), //Inputs
		.s(y_b[49]), .c_out(ci_out[18]) //Outputs 
	);
	fa_1b fa18(
		.a(x_a[19]), .b(y_b[19]), .c_in(ci_out[18]), //Inputs
		.s(y_b[50]), .c_out(ci_out[19]) //Outputs 
	);
	fa_1b fa19(
		.a(x_a[20]), .b(y_b[20]), .c_in(ci_out[19]), //Inputs
		.s(y_b[51]), .c_out(ci_out[20]) //Outputs 
	);
	fa_1b fa20(
		.a(x_a[21]), .b(y_b[21]), .c_in(ci_out[20]), //Inputs
		.s(y_b[52]), .c_out(ci_out[21]) //Outputs 
	);
	fa_1b fa21(
		.a(x_a[22]), .b(y_b[22]), .c_in(ci_out[21]), //Inputs
		.s(y_b[53]), .c_out(ci_out[22]) //Outputs 
	);
	fa_1b fa22(
		.a(x_a[23]), .b(y_b[23]), .c_in(ci_out[22]), //Inputs
		.s(y_b[54]), .c_out(ci_out[23]) //Outputs 
	);
	fa_1b fa23(
		.a(x_a[24]), .b(y_b[24]), .c_in(ci_out[23]), //Inputs
		.s(y_b[55]), .c_out(ci_out[24]) //Outputs 
	);
	fa_1b fa24(
		.a(x_a[25]), .b(y_b[25]), .c_in(ci_out[24]), //Inputs
		.s(y_b[56]), .c_out(ci_out[25]) //Outputs 
	);
	fa_1b fa25(
		.a(x_a[26]), .b(y_b[26]), .c_in(ci_out[25]), //Inputs
		.s(y_b[57]), .c_out(ci_out[26]) //Outputs 
	);
	fa_1b fa26(
		.a(x_a[27]), .b(y_b[27]), .c_in(ci_out[26]), //Inputs
		.s(y_b[58]), .c_out(ci_out[27]) //Outputs 
	);
	fa_1b fa27(
		.a(x_a[28]), .b(y_b[28]), .c_in(ci_out[27]), //Inputs
		.s(y_b[59]), .c_out(ci_out[28]) //Outputs 
	);
	fa_1b fa28(
		.a(x_a[29]), .b(y_b[29]), .c_in(ci_out[28]), //Inputs
		.s(y_b[60]), .c_out(ci_out[29]) //Outputs 
	);
	fa_1b fa29(
		.a(x_a[30]), .b(y_b[30]), .c_in(ci_out[29]), //Inputs
		.s(y_b[61]), .c_out(ci_out[30]) //Outputs 
	);
	fa_1b fa30(
		.a(x_a[31]), .b(y_b[31]), .c_in(ci_out[30]), //Inputs
		.s(y_b[62]), .c_out(y_b[63]) //Outputs 
	);

	//Stage 1
	ha_1b ha1(
		.a(x_a[32]), .b(y_b[32]), //Inputs
		.s(to_cut_res[2]), .c_out(ci_out[31]) //Outputs 
	);
	fa_1b fa31(
		.a(x_a[33]), .b(y_b[33]), .c_in(ci_out[31]), //Inputs
		.s(y_b[64]), .c_out(ci_out[32]) //Outputs 
	);
	fa_1b fa32(
		.a(x_a[34]), .b(y_b[34]), .c_in(ci_out[32]), //Inputs
		.s(y_b[65]), .c_out(ci_out[33]) //Outputs 
	);
	fa_1b fa33(
		.a(x_a[35]), .b(y_b[35]), .c_in(ci_out[33]), //Inputs
		.s(y_b[66]), .c_out(ci_out[34]) //Outputs 
	);
	fa_1b fa34(
		.a(x_a[36]), .b(y_b[36]), .c_in(ci_out[34]), //Inputs
		.s(y_b[67]), .c_out(ci_out[35]) //Outputs 
	);
	fa_1b fa35(
		.a(x_a[37]), .b(y_b[37]), .c_in(ci_out[35]), //Inputs
		.s(y_b[68]), .c_out(ci_out[36]) //Outputs 
	);
	fa_1b fa36(
		.a(x_a[38]), .b(y_b[38]), .c_in(ci_out[36]), //Inputs
		.s(y_b[69]), .c_out(ci_out[37]) //Outputs 
	);
	fa_1b fa37(
		.a(x_a[39]), .b(y_b[39]), .c_in(ci_out[37]), //Inputs
		.s(y_b[70]), .c_out(ci_out[38]) //Outputs 
	);
	fa_1b fa38(
		.a(x_a[40]), .b(y_b[40]), .c_in(ci_out[38]), //Inputs
		.s(y_b[71]), .c_out(ci_out[39]) //Outputs 
	);
	fa_1b fa39(
		.a(x_a[41]), .b(y_b[41]), .c_in(ci_out[39]), //Inputs
		.s(y_b[72]), .c_out(ci_out[40]) //Outputs 
	);
	fa_1b fa40(
		.a(x_a[42]), .b(y_b[42]), .c_in(ci_out[40]), //Inputs
		.s(y_b[73]), .c_out(ci_out[41]) //Outputs 
	);
	fa_1b fa41(
		.a(x_a[43]), .b(y_b[43]), .c_in(ci_out[41]), //Inputs
		.s(y_b[74]), .c_out(ci_out[42]) //Outputs 
	);
	fa_1b fa42(
		.a(x_a[44]), .b(y_b[44]), .c_in(ci_out[42]), //Inputs
		.s(y_b[75]), .c_out(ci_out[43]) //Outputs 
	);
	fa_1b fa43(
		.a(x_a[45]), .b(y_b[45]), .c_in(ci_out[43]), //Inputs
		.s(y_b[76]), .c_out(ci_out[44]) //Outputs 
	);
	fa_1b fa44(
		.a(x_a[46]), .b(y_b[46]), .c_in(ci_out[44]), //Inputs
		.s(y_b[77]), .c_out(ci_out[45]) //Outputs 
	);
	fa_1b fa45(
		.a(x_a[47]), .b(y_b[47]), .c_in(ci_out[45]), //Inputs
		.s(y_b[78]), .c_out(ci_out[46]) //Outputs 
	);
	fa_1b fa46(
		.a(x_a[48]), .b(y_b[48]), .c_in(ci_out[46]), //Inputs
		.s(y_b[79]), .c_out(ci_out[47]) //Outputs 
	);
	fa_1b fa47(
		.a(x_a[49]), .b(y_b[49]), .c_in(ci_out[47]), //Inputs
		.s(y_b[80]), .c_out(ci_out[48]) //Outputs 
	);
	fa_1b fa48(
		.a(x_a[50]), .b(y_b[50]), .c_in(ci_out[48]), //Inputs
		.s(y_b[81]), .c_out(ci_out[49]) //Outputs 
	);
	fa_1b fa49(
		.a(x_a[51]), .b(y_b[51]), .c_in(ci_out[49]), //Inputs
		.s(y_b[82]), .c_out(ci_out[50]) //Outputs 
	);
	fa_1b fa50(
		.a(x_a[52]), .b(y_b[52]), .c_in(ci_out[50]), //Inputs
		.s(y_b[83]), .c_out(ci_out[51]) //Outputs 
	);
	fa_1b fa51(
		.a(x_a[53]), .b(y_b[53]), .c_in(ci_out[51]), //Inputs
		.s(y_b[84]), .c_out(ci_out[52]) //Outputs 
	);
	fa_1b fa52(
		.a(x_a[54]), .b(y_b[54]), .c_in(ci_out[52]), //Inputs
		.s(y_b[85]), .c_out(ci_out[53]) //Outputs 
	);
	fa_1b fa53(
		.a(x_a[55]), .b(y_b[55]), .c_in(ci_out[53]), //Inputs
		.s(y_b[86]), .c_out(ci_out[54]) //Outputs 
	);
	fa_1b fa54(
		.a(x_a[56]), .b(y_b[56]), .c_in(ci_out[54]), //Inputs
		.s(y_b[87]), .c_out(ci_out[55]) //Outputs 
	);
	fa_1b fa55(
		.a(x_a[57]), .b(y_b[57]), .c_in(ci_out[55]), //Inputs
		.s(y_b[88]), .c_out(ci_out[56]) //Outputs 
	);
	fa_1b fa56(
		.a(x_a[58]), .b(y_b[58]), .c_in(ci_out[56]), //Inputs
		.s(y_b[89]), .c_out(ci_out[57]) //Outputs 
	);
	fa_1b fa57(
		.a(x_a[59]), .b(y_b[59]), .c_in(ci_out[57]), //Inputs
		.s(y_b[90]), .c_out(ci_out[58]) //Outputs 
	);
	fa_1b fa58(
		.a(x_a[60]), .b(y_b[60]), .c_in(ci_out[58]), //Inputs
		.s(y_b[91]), .c_out(ci_out[59]) //Outputs 
	);
	fa_1b fa59(
		.a(x_a[61]), .b(y_b[61]), .c_in(ci_out[59]), //Inputs
		.s(y_b[92]), .c_out(ci_out[60]) //Outputs 
	);
	fa_1b fa60(
		.a(x_a[62]), .b(y_b[62]), .c_in(ci_out[60]), //Inputs
		.s(y_b[93]), .c_out(ci_out[61]) //Outputs 
	);
	fa_1b fa61(
		.a(x_a[63]), .b(y_b[63]), .c_in(ci_out[61]), //Inputs
		.s(y_b[94]), .c_out(y_b[95]) //Outputs 
	);

	//Stage 2
	ha_1b ha2(
		.a(x_a[64]), .b(y_b[64]), //Inputs
		.s(to_cut_res[3]), .c_out(ci_out[62]) //Outputs 
	);
	fa_1b fa62(
		.a(x_a[65]), .b(y_b[65]), .c_in(ci_out[62]), //Inputs
		.s(y_b[96]), .c_out(ci_out[63]) //Outputs 
	);
	fa_1b fa63(
		.a(x_a[66]), .b(y_b[66]), .c_in(ci_out[63]), //Inputs
		.s(y_b[97]), .c_out(ci_out[64]) //Outputs 
	);
	fa_1b fa64(
		.a(x_a[67]), .b(y_b[67]), .c_in(ci_out[64]), //Inputs
		.s(y_b[98]), .c_out(ci_out[65]) //Outputs 
	);
	fa_1b fa65(
		.a(x_a[68]), .b(y_b[68]), .c_in(ci_out[65]), //Inputs
		.s(y_b[99]), .c_out(ci_out[66]) //Outputs 
	);
	fa_1b fa66(
		.a(x_a[69]), .b(y_b[69]), .c_in(ci_out[66]), //Inputs
		.s(y_b[100]), .c_out(ci_out[67]) //Outputs 
	);
	fa_1b fa67(
		.a(x_a[70]), .b(y_b[70]), .c_in(ci_out[67]), //Inputs
		.s(y_b[101]), .c_out(ci_out[68]) //Outputs 
	);
	fa_1b fa68(
		.a(x_a[71]), .b(y_b[71]), .c_in(ci_out[68]), //Inputs
		.s(y_b[102]), .c_out(ci_out[69]) //Outputs 
	);
	fa_1b fa69(
		.a(x_a[72]), .b(y_b[72]), .c_in(ci_out[69]), //Inputs
		.s(y_b[103]), .c_out(ci_out[70]) //Outputs 
	);
	fa_1b fa70(
		.a(x_a[73]), .b(y_b[73]), .c_in(ci_out[70]), //Inputs
		.s(y_b[104]), .c_out(ci_out[71]) //Outputs 
	);
	fa_1b fa71(
		.a(x_a[74]), .b(y_b[74]), .c_in(ci_out[71]), //Inputs
		.s(y_b[105]), .c_out(ci_out[72]) //Outputs 
	);
	fa_1b fa72(
		.a(x_a[75]), .b(y_b[75]), .c_in(ci_out[72]), //Inputs
		.s(y_b[106]), .c_out(ci_out[73]) //Outputs 
	);
	fa_1b fa73(
		.a(x_a[76]), .b(y_b[76]), .c_in(ci_out[73]), //Inputs
		.s(y_b[107]), .c_out(ci_out[74]) //Outputs 
	);
	fa_1b fa74(
		.a(x_a[77]), .b(y_b[77]), .c_in(ci_out[74]), //Inputs
		.s(y_b[108]), .c_out(ci_out[75]) //Outputs 
	);
	fa_1b fa75(
		.a(x_a[78]), .b(y_b[78]), .c_in(ci_out[75]), //Inputs
		.s(y_b[109]), .c_out(ci_out[76]) //Outputs 
	);
	fa_1b fa76(
		.a(x_a[79]), .b(y_b[79]), .c_in(ci_out[76]), //Inputs
		.s(y_b[110]), .c_out(ci_out[77]) //Outputs 
	);
	fa_1b fa77(
		.a(x_a[80]), .b(y_b[80]), .c_in(ci_out[77]), //Inputs
		.s(y_b[111]), .c_out(ci_out[78]) //Outputs 
	);
	fa_1b fa78(
		.a(x_a[81]), .b(y_b[81]), .c_in(ci_out[78]), //Inputs
		.s(y_b[112]), .c_out(ci_out[79]) //Outputs 
	);
	fa_1b fa79(
		.a(x_a[82]), .b(y_b[82]), .c_in(ci_out[79]), //Inputs
		.s(y_b[113]), .c_out(ci_out[80]) //Outputs 
	);
	fa_1b fa80(
		.a(x_a[83]), .b(y_b[83]), .c_in(ci_out[80]), //Inputs
		.s(y_b[114]), .c_out(ci_out[81]) //Outputs 
	);
	fa_1b fa81(
		.a(x_a[84]), .b(y_b[84]), .c_in(ci_out[81]), //Inputs
		.s(y_b[115]), .c_out(ci_out[82]) //Outputs 
	);
	fa_1b fa82(
		.a(x_a[85]), .b(y_b[85]), .c_in(ci_out[82]), //Inputs
		.s(y_b[116]), .c_out(ci_out[83]) //Outputs 
	);
	fa_1b fa83(
		.a(x_a[86]), .b(y_b[86]), .c_in(ci_out[83]), //Inputs
		.s(y_b[117]), .c_out(ci_out[84]) //Outputs 
	);
	fa_1b fa84(
		.a(x_a[87]), .b(y_b[87]), .c_in(ci_out[84]), //Inputs
		.s(y_b[118]), .c_out(ci_out[85]) //Outputs 
	);
	fa_1b fa85(
		.a(x_a[88]), .b(y_b[88]), .c_in(ci_out[85]), //Inputs
		.s(y_b[119]), .c_out(ci_out[86]) //Outputs 
	);
	fa_1b fa86(
		.a(x_a[89]), .b(y_b[89]), .c_in(ci_out[86]), //Inputs
		.s(y_b[120]), .c_out(ci_out[87]) //Outputs 
	);
	fa_1b fa87(
		.a(x_a[90]), .b(y_b[90]), .c_in(ci_out[87]), //Inputs
		.s(y_b[121]), .c_out(ci_out[88]) //Outputs 
	);
	fa_1b fa88(
		.a(x_a[91]), .b(y_b[91]), .c_in(ci_out[88]), //Inputs
		.s(y_b[122]), .c_out(ci_out[89]) //Outputs 
	);
	fa_1b fa89(
		.a(x_a[92]), .b(y_b[92]), .c_in(ci_out[89]), //Inputs
		.s(y_b[123]), .c_out(ci_out[90]) //Outputs 
	);
	fa_1b fa90(
		.a(x_a[93]), .b(y_b[93]), .c_in(ci_out[90]), //Inputs
		.s(y_b[124]), .c_out(ci_out[91]) //Outputs 
	);
	fa_1b fa91(
		.a(x_a[94]), .b(y_b[94]), .c_in(ci_out[91]), //Inputs
		.s(y_b[125]), .c_out(ci_out[92]) //Outputs 
	);
	fa_1b fa92(
		.a(x_a[95]), .b(y_b[95]), .c_in(ci_out[92]), //Inputs
		.s(y_b[126]), .c_out(y_b[127]) //Outputs 
	);

	//Stage 3
	ha_1b ha3(
		.a(x_a[96]), .b(y_b[96]), //Inputs
		.s(to_cut_res[4]), .c_out(ci_out[93]) //Outputs 
	);
	fa_1b fa93(
		.a(x_a[97]), .b(y_b[97]), .c_in(ci_out[93]), //Inputs
		.s(y_b[128]), .c_out(ci_out[94]) //Outputs 
	);
	fa_1b fa94(
		.a(x_a[98]), .b(y_b[98]), .c_in(ci_out[94]), //Inputs
		.s(y_b[129]), .c_out(ci_out[95]) //Outputs 
	);
	fa_1b fa95(
		.a(x_a[99]), .b(y_b[99]), .c_in(ci_out[95]), //Inputs
		.s(y_b[130]), .c_out(ci_out[96]) //Outputs 
	);
	fa_1b fa96(
		.a(x_a[100]), .b(y_b[100]), .c_in(ci_out[96]), //Inputs
		.s(y_b[131]), .c_out(ci_out[97]) //Outputs 
	);
	fa_1b fa97(
		.a(x_a[101]), .b(y_b[101]), .c_in(ci_out[97]), //Inputs
		.s(y_b[132]), .c_out(ci_out[98]) //Outputs 
	);
	fa_1b fa98(
		.a(x_a[102]), .b(y_b[102]), .c_in(ci_out[98]), //Inputs
		.s(y_b[133]), .c_out(ci_out[99]) //Outputs 
	);
	fa_1b fa99(
		.a(x_a[103]), .b(y_b[103]), .c_in(ci_out[99]), //Inputs
		.s(y_b[134]), .c_out(ci_out[100]) //Outputs 
	);
	fa_1b fa100(
		.a(x_a[104]), .b(y_b[104]), .c_in(ci_out[100]), //Inputs
		.s(y_b[135]), .c_out(ci_out[101]) //Outputs 
	);
	fa_1b fa101(
		.a(x_a[105]), .b(y_b[105]), .c_in(ci_out[101]), //Inputs
		.s(y_b[136]), .c_out(ci_out[102]) //Outputs 
	);
	fa_1b fa102(
		.a(x_a[106]), .b(y_b[106]), .c_in(ci_out[102]), //Inputs
		.s(y_b[137]), .c_out(ci_out[103]) //Outputs 
	);
	fa_1b fa103(
		.a(x_a[107]), .b(y_b[107]), .c_in(ci_out[103]), //Inputs
		.s(y_b[138]), .c_out(ci_out[104]) //Outputs 
	);
	fa_1b fa104(
		.a(x_a[108]), .b(y_b[108]), .c_in(ci_out[104]), //Inputs
		.s(y_b[139]), .c_out(ci_out[105]) //Outputs 
	);
	fa_1b fa105(
		.a(x_a[109]), .b(y_b[109]), .c_in(ci_out[105]), //Inputs
		.s(y_b[140]), .c_out(ci_out[106]) //Outputs 
	);
	fa_1b fa106(
		.a(x_a[110]), .b(y_b[110]), .c_in(ci_out[106]), //Inputs
		.s(y_b[141]), .c_out(ci_out[107]) //Outputs 
	);
	fa_1b fa107(
		.a(x_a[111]), .b(y_b[111]), .c_in(ci_out[107]), //Inputs
		.s(y_b[142]), .c_out(ci_out[108]) //Outputs 
	);
	fa_1b fa108(
		.a(x_a[112]), .b(y_b[112]), .c_in(ci_out[108]), //Inputs
		.s(y_b[143]), .c_out(ci_out[109]) //Outputs 
	);
	fa_1b fa109(
		.a(x_a[113]), .b(y_b[113]), .c_in(ci_out[109]), //Inputs
		.s(y_b[144]), .c_out(ci_out[110]) //Outputs 
	);
	fa_1b fa110(
		.a(x_a[114]), .b(y_b[114]), .c_in(ci_out[110]), //Inputs
		.s(y_b[145]), .c_out(ci_out[111]) //Outputs 
	);
	fa_1b fa111(
		.a(x_a[115]), .b(y_b[115]), .c_in(ci_out[111]), //Inputs
		.s(y_b[146]), .c_out(ci_out[112]) //Outputs 
	);
	fa_1b fa112(
		.a(x_a[116]), .b(y_b[116]), .c_in(ci_out[112]), //Inputs
		.s(y_b[147]), .c_out(ci_out[113]) //Outputs 
	);
	fa_1b fa113(
		.a(x_a[117]), .b(y_b[117]), .c_in(ci_out[113]), //Inputs
		.s(y_b[148]), .c_out(ci_out[114]) //Outputs 
	);
	fa_1b fa114(
		.a(x_a[118]), .b(y_b[118]), .c_in(ci_out[114]), //Inputs
		.s(y_b[149]), .c_out(ci_out[115]) //Outputs 
	);
	fa_1b fa115(
		.a(x_a[119]), .b(y_b[119]), .c_in(ci_out[115]), //Inputs
		.s(y_b[150]), .c_out(ci_out[116]) //Outputs 
	);
	fa_1b fa116(
		.a(x_a[120]), .b(y_b[120]), .c_in(ci_out[116]), //Inputs
		.s(y_b[151]), .c_out(ci_out[117]) //Outputs 
	);
	fa_1b fa117(
		.a(x_a[121]), .b(y_b[121]), .c_in(ci_out[117]), //Inputs
		.s(y_b[152]), .c_out(ci_out[118]) //Outputs 
	);
	fa_1b fa118(
		.a(x_a[122]), .b(y_b[122]), .c_in(ci_out[118]), //Inputs
		.s(y_b[153]), .c_out(ci_out[119]) //Outputs 
	);
	fa_1b fa119(
		.a(x_a[123]), .b(y_b[123]), .c_in(ci_out[119]), //Inputs
		.s(y_b[154]), .c_out(ci_out[120]) //Outputs 
	);
	fa_1b fa120(
		.a(x_a[124]), .b(y_b[124]), .c_in(ci_out[120]), //Inputs
		.s(y_b[155]), .c_out(ci_out[121]) //Outputs 
	);
	fa_1b fa121(
		.a(x_a[125]), .b(y_b[125]), .c_in(ci_out[121]), //Inputs
		.s(y_b[156]), .c_out(ci_out[122]) //Outputs 
	);
	fa_1b fa122(
		.a(x_a[126]), .b(y_b[126]), .c_in(ci_out[122]), //Inputs
		.s(y_b[157]), .c_out(ci_out[123]) //Outputs 
	);
	fa_1b fa123(
		.a(x_a[127]), .b(y_b[127]), .c_in(ci_out[123]), //Inputs
		.s(y_b[158]), .c_out(y_b[159]) //Outputs 
	);

	//Stage 4
	ha_1b ha4(
		.a(x_a[128]), .b(y_b[128]), //Inputs
		.s(to_cut_res[5]), .c_out(ci_out[124]) //Outputs 
	);
	fa_1b fa124(
		.a(x_a[129]), .b(y_b[129]), .c_in(ci_out[124]), //Inputs
		.s(y_b[160]), .c_out(ci_out[125]) //Outputs 
	);
	fa_1b fa125(
		.a(x_a[130]), .b(y_b[130]), .c_in(ci_out[125]), //Inputs
		.s(y_b[161]), .c_out(ci_out[126]) //Outputs 
	);
	fa_1b fa126(
		.a(x_a[131]), .b(y_b[131]), .c_in(ci_out[126]), //Inputs
		.s(y_b[162]), .c_out(ci_out[127]) //Outputs 
	);
	fa_1b fa127(
		.a(x_a[132]), .b(y_b[132]), .c_in(ci_out[127]), //Inputs
		.s(y_b[163]), .c_out(ci_out[128]) //Outputs 
	);
	fa_1b fa128(
		.a(x_a[133]), .b(y_b[133]), .c_in(ci_out[128]), //Inputs
		.s(y_b[164]), .c_out(ci_out[129]) //Outputs 
	);
	fa_1b fa129(
		.a(x_a[134]), .b(y_b[134]), .c_in(ci_out[129]), //Inputs
		.s(y_b[165]), .c_out(ci_out[130]) //Outputs 
	);
	fa_1b fa130(
		.a(x_a[135]), .b(y_b[135]), .c_in(ci_out[130]), //Inputs
		.s(y_b[166]), .c_out(ci_out[131]) //Outputs 
	);
	fa_1b fa131(
		.a(x_a[136]), .b(y_b[136]), .c_in(ci_out[131]), //Inputs
		.s(y_b[167]), .c_out(ci_out[132]) //Outputs 
	);
	fa_1b fa132(
		.a(x_a[137]), .b(y_b[137]), .c_in(ci_out[132]), //Inputs
		.s(y_b[168]), .c_out(ci_out[133]) //Outputs 
	);
	fa_1b fa133(
		.a(x_a[138]), .b(y_b[138]), .c_in(ci_out[133]), //Inputs
		.s(y_b[169]), .c_out(ci_out[134]) //Outputs 
	);
	fa_1b fa134(
		.a(x_a[139]), .b(y_b[139]), .c_in(ci_out[134]), //Inputs
		.s(y_b[170]), .c_out(ci_out[135]) //Outputs 
	);
	fa_1b fa135(
		.a(x_a[140]), .b(y_b[140]), .c_in(ci_out[135]), //Inputs
		.s(y_b[171]), .c_out(ci_out[136]) //Outputs 
	);
	fa_1b fa136(
		.a(x_a[141]), .b(y_b[141]), .c_in(ci_out[136]), //Inputs
		.s(y_b[172]), .c_out(ci_out[137]) //Outputs 
	);
	fa_1b fa137(
		.a(x_a[142]), .b(y_b[142]), .c_in(ci_out[137]), //Inputs
		.s(y_b[173]), .c_out(ci_out[138]) //Outputs 
	);
	fa_1b fa138(
		.a(x_a[143]), .b(y_b[143]), .c_in(ci_out[138]), //Inputs
		.s(y_b[174]), .c_out(ci_out[139]) //Outputs 
	);
	fa_1b fa139(
		.a(x_a[144]), .b(y_b[144]), .c_in(ci_out[139]), //Inputs
		.s(y_b[175]), .c_out(ci_out[140]) //Outputs 
	);
	fa_1b fa140(
		.a(x_a[145]), .b(y_b[145]), .c_in(ci_out[140]), //Inputs
		.s(y_b[176]), .c_out(ci_out[141]) //Outputs 
	);
	fa_1b fa141(
		.a(x_a[146]), .b(y_b[146]), .c_in(ci_out[141]), //Inputs
		.s(y_b[177]), .c_out(ci_out[142]) //Outputs 
	);
	fa_1b fa142(
		.a(x_a[147]), .b(y_b[147]), .c_in(ci_out[142]), //Inputs
		.s(y_b[178]), .c_out(ci_out[143]) //Outputs 
	);
	fa_1b fa143(
		.a(x_a[148]), .b(y_b[148]), .c_in(ci_out[143]), //Inputs
		.s(y_b[179]), .c_out(ci_out[144]) //Outputs 
	);
	fa_1b fa144(
		.a(x_a[149]), .b(y_b[149]), .c_in(ci_out[144]), //Inputs
		.s(y_b[180]), .c_out(ci_out[145]) //Outputs 
	);
	fa_1b fa145(
		.a(x_a[150]), .b(y_b[150]), .c_in(ci_out[145]), //Inputs
		.s(y_b[181]), .c_out(ci_out[146]) //Outputs 
	);
	fa_1b fa146(
		.a(x_a[151]), .b(y_b[151]), .c_in(ci_out[146]), //Inputs
		.s(y_b[182]), .c_out(ci_out[147]) //Outputs 
	);
	fa_1b fa147(
		.a(x_a[152]), .b(y_b[152]), .c_in(ci_out[147]), //Inputs
		.s(y_b[183]), .c_out(ci_out[148]) //Outputs 
	);
	fa_1b fa148(
		.a(x_a[153]), .b(y_b[153]), .c_in(ci_out[148]), //Inputs
		.s(y_b[184]), .c_out(ci_out[149]) //Outputs 
	);
	fa_1b fa149(
		.a(x_a[154]), .b(y_b[154]), .c_in(ci_out[149]), //Inputs
		.s(y_b[185]), .c_out(ci_out[150]) //Outputs 
	);
	fa_1b fa150(
		.a(x_a[155]), .b(y_b[155]), .c_in(ci_out[150]), //Inputs
		.s(y_b[186]), .c_out(ci_out[151]) //Outputs 
	);
	fa_1b fa151(
		.a(x_a[156]), .b(y_b[156]), .c_in(ci_out[151]), //Inputs
		.s(y_b[187]), .c_out(ci_out[152]) //Outputs 
	);
	fa_1b fa152(
		.a(x_a[157]), .b(y_b[157]), .c_in(ci_out[152]), //Inputs
		.s(y_b[188]), .c_out(ci_out[153]) //Outputs 
	);
	fa_1b fa153(
		.a(x_a[158]), .b(y_b[158]), .c_in(ci_out[153]), //Inputs
		.s(y_b[189]), .c_out(ci_out[154]) //Outputs 
	);
	fa_1b fa154(
		.a(x_a[159]), .b(y_b[159]), .c_in(ci_out[154]), //Inputs
		.s(y_b[190]), .c_out(y_b[191]) //Outputs 
	);

	//Stage 5
	ha_1b ha5(
		.a(x_a[160]), .b(y_b[160]), //Inputs
		.s(to_cut_res[6]), .c_out(ci_out[155]) //Outputs 
	);
	fa_1b fa155(
		.a(x_a[161]), .b(y_b[161]), .c_in(ci_out[155]), //Inputs
		.s(y_b[192]), .c_out(ci_out[156]) //Outputs 
	);
	fa_1b fa156(
		.a(x_a[162]), .b(y_b[162]), .c_in(ci_out[156]), //Inputs
		.s(y_b[193]), .c_out(ci_out[157]) //Outputs 
	);
	fa_1b fa157(
		.a(x_a[163]), .b(y_b[163]), .c_in(ci_out[157]), //Inputs
		.s(y_b[194]), .c_out(ci_out[158]) //Outputs 
	);
	fa_1b fa158(
		.a(x_a[164]), .b(y_b[164]), .c_in(ci_out[158]), //Inputs
		.s(y_b[195]), .c_out(ci_out[159]) //Outputs 
	);
	fa_1b fa159(
		.a(x_a[165]), .b(y_b[165]), .c_in(ci_out[159]), //Inputs
		.s(y_b[196]), .c_out(ci_out[160]) //Outputs 
	);
	fa_1b fa160(
		.a(x_a[166]), .b(y_b[166]), .c_in(ci_out[160]), //Inputs
		.s(y_b[197]), .c_out(ci_out[161]) //Outputs 
	);
	fa_1b fa161(
		.a(x_a[167]), .b(y_b[167]), .c_in(ci_out[161]), //Inputs
		.s(y_b[198]), .c_out(ci_out[162]) //Outputs 
	);
	fa_1b fa162(
		.a(x_a[168]), .b(y_b[168]), .c_in(ci_out[162]), //Inputs
		.s(y_b[199]), .c_out(ci_out[163]) //Outputs 
	);
	fa_1b fa163(
		.a(x_a[169]), .b(y_b[169]), .c_in(ci_out[163]), //Inputs
		.s(y_b[200]), .c_out(ci_out[164]) //Outputs 
	);
	fa_1b fa164(
		.a(x_a[170]), .b(y_b[170]), .c_in(ci_out[164]), //Inputs
		.s(y_b[201]), .c_out(ci_out[165]) //Outputs 
	);
	fa_1b fa165(
		.a(x_a[171]), .b(y_b[171]), .c_in(ci_out[165]), //Inputs
		.s(y_b[202]), .c_out(ci_out[166]) //Outputs 
	);
	fa_1b fa166(
		.a(x_a[172]), .b(y_b[172]), .c_in(ci_out[166]), //Inputs
		.s(y_b[203]), .c_out(ci_out[167]) //Outputs 
	);
	fa_1b fa167(
		.a(x_a[173]), .b(y_b[173]), .c_in(ci_out[167]), //Inputs
		.s(y_b[204]), .c_out(ci_out[168]) //Outputs 
	);
	fa_1b fa168(
		.a(x_a[174]), .b(y_b[174]), .c_in(ci_out[168]), //Inputs
		.s(y_b[205]), .c_out(ci_out[169]) //Outputs 
	);
	fa_1b fa169(
		.a(x_a[175]), .b(y_b[175]), .c_in(ci_out[169]), //Inputs
		.s(y_b[206]), .c_out(ci_out[170]) //Outputs 
	);
	fa_1b fa170(
		.a(x_a[176]), .b(y_b[176]), .c_in(ci_out[170]), //Inputs
		.s(y_b[207]), .c_out(ci_out[171]) //Outputs 
	);
	fa_1b fa171(
		.a(x_a[177]), .b(y_b[177]), .c_in(ci_out[171]), //Inputs
		.s(y_b[208]), .c_out(ci_out[172]) //Outputs 
	);
	fa_1b fa172(
		.a(x_a[178]), .b(y_b[178]), .c_in(ci_out[172]), //Inputs
		.s(y_b[209]), .c_out(ci_out[173]) //Outputs 
	);
	fa_1b fa173(
		.a(x_a[179]), .b(y_b[179]), .c_in(ci_out[173]), //Inputs
		.s(y_b[210]), .c_out(ci_out[174]) //Outputs 
	);
	fa_1b fa174(
		.a(x_a[180]), .b(y_b[180]), .c_in(ci_out[174]), //Inputs
		.s(y_b[211]), .c_out(ci_out[175]) //Outputs 
	);
	fa_1b fa175(
		.a(x_a[181]), .b(y_b[181]), .c_in(ci_out[175]), //Inputs
		.s(y_b[212]), .c_out(ci_out[176]) //Outputs 
	);
	fa_1b fa176(
		.a(x_a[182]), .b(y_b[182]), .c_in(ci_out[176]), //Inputs
		.s(y_b[213]), .c_out(ci_out[177]) //Outputs 
	);
	fa_1b fa177(
		.a(x_a[183]), .b(y_b[183]), .c_in(ci_out[177]), //Inputs
		.s(y_b[214]), .c_out(ci_out[178]) //Outputs 
	);
	fa_1b fa178(
		.a(x_a[184]), .b(y_b[184]), .c_in(ci_out[178]), //Inputs
		.s(y_b[215]), .c_out(ci_out[179]) //Outputs 
	);
	fa_1b fa179(
		.a(x_a[185]), .b(y_b[185]), .c_in(ci_out[179]), //Inputs
		.s(y_b[216]), .c_out(ci_out[180]) //Outputs 
	);
	fa_1b fa180(
		.a(x_a[186]), .b(y_b[186]), .c_in(ci_out[180]), //Inputs
		.s(y_b[217]), .c_out(ci_out[181]) //Outputs 
	);
	fa_1b fa181(
		.a(x_a[187]), .b(y_b[187]), .c_in(ci_out[181]), //Inputs
		.s(y_b[218]), .c_out(ci_out[182]) //Outputs 
	);
	fa_1b fa182(
		.a(x_a[188]), .b(y_b[188]), .c_in(ci_out[182]), //Inputs
		.s(y_b[219]), .c_out(ci_out[183]) //Outputs 
	);
	fa_1b fa183(
		.a(x_a[189]), .b(y_b[189]), .c_in(ci_out[183]), //Inputs
		.s(y_b[220]), .c_out(ci_out[184]) //Outputs 
	);
	fa_1b fa184(
		.a(x_a[190]), .b(y_b[190]), .c_in(ci_out[184]), //Inputs
		.s(y_b[221]), .c_out(ci_out[185]) //Outputs 
	);
	fa_1b fa185(
		.a(x_a[191]), .b(y_b[191]), .c_in(ci_out[185]), //Inputs
		.s(y_b[222]), .c_out(y_b[223]) //Outputs 
	);

	//Stage 6
	ha_1b ha6(
		.a(x_a[192]), .b(y_b[192]), //Inputs
		.s(to_cut_res[7]), .c_out(ci_out[186]) //Outputs 
	);
	fa_1b fa186(
		.a(x_a[193]), .b(y_b[193]), .c_in(ci_out[186]), //Inputs
		.s(y_b[224]), .c_out(ci_out[187]) //Outputs 
	);
	fa_1b fa187(
		.a(x_a[194]), .b(y_b[194]), .c_in(ci_out[187]), //Inputs
		.s(y_b[225]), .c_out(ci_out[188]) //Outputs 
	);
	fa_1b fa188(
		.a(x_a[195]), .b(y_b[195]), .c_in(ci_out[188]), //Inputs
		.s(y_b[226]), .c_out(ci_out[189]) //Outputs 
	);
	fa_1b fa189(
		.a(x_a[196]), .b(y_b[196]), .c_in(ci_out[189]), //Inputs
		.s(y_b[227]), .c_out(ci_out[190]) //Outputs 
	);
	fa_1b fa190(
		.a(x_a[197]), .b(y_b[197]), .c_in(ci_out[190]), //Inputs
		.s(y_b[228]), .c_out(ci_out[191]) //Outputs 
	);
	fa_1b fa191(
		.a(x_a[198]), .b(y_b[198]), .c_in(ci_out[191]), //Inputs
		.s(y_b[229]), .c_out(ci_out[192]) //Outputs 
	);
	fa_1b fa192(
		.a(x_a[199]), .b(y_b[199]), .c_in(ci_out[192]), //Inputs
		.s(y_b[230]), .c_out(ci_out[193]) //Outputs 
	);
	fa_1b fa193(
		.a(x_a[200]), .b(y_b[200]), .c_in(ci_out[193]), //Inputs
		.s(y_b[231]), .c_out(ci_out[194]) //Outputs 
	);
	fa_1b fa194(
		.a(x_a[201]), .b(y_b[201]), .c_in(ci_out[194]), //Inputs
		.s(y_b[232]), .c_out(ci_out[195]) //Outputs 
	);
	fa_1b fa195(
		.a(x_a[202]), .b(y_b[202]), .c_in(ci_out[195]), //Inputs
		.s(y_b[233]), .c_out(ci_out[196]) //Outputs 
	);
	fa_1b fa196(
		.a(x_a[203]), .b(y_b[203]), .c_in(ci_out[196]), //Inputs
		.s(y_b[234]), .c_out(ci_out[197]) //Outputs 
	);
	fa_1b fa197(
		.a(x_a[204]), .b(y_b[204]), .c_in(ci_out[197]), //Inputs
		.s(y_b[235]), .c_out(ci_out[198]) //Outputs 
	);
	fa_1b fa198(
		.a(x_a[205]), .b(y_b[205]), .c_in(ci_out[198]), //Inputs
		.s(y_b[236]), .c_out(ci_out[199]) //Outputs 
	);
	fa_1b fa199(
		.a(x_a[206]), .b(y_b[206]), .c_in(ci_out[199]), //Inputs
		.s(y_b[237]), .c_out(ci_out[200]) //Outputs 
	);
	fa_1b fa200(
		.a(x_a[207]), .b(y_b[207]), .c_in(ci_out[200]), //Inputs
		.s(y_b[238]), .c_out(ci_out[201]) //Outputs 
	);
	fa_1b fa201(
		.a(x_a[208]), .b(y_b[208]), .c_in(ci_out[201]), //Inputs
		.s(y_b[239]), .c_out(ci_out[202]) //Outputs 
	);
	fa_1b fa202(
		.a(x_a[209]), .b(y_b[209]), .c_in(ci_out[202]), //Inputs
		.s(y_b[240]), .c_out(ci_out[203]) //Outputs 
	);
	fa_1b fa203(
		.a(x_a[210]), .b(y_b[210]), .c_in(ci_out[203]), //Inputs
		.s(y_b[241]), .c_out(ci_out[204]) //Outputs 
	);
	fa_1b fa204(
		.a(x_a[211]), .b(y_b[211]), .c_in(ci_out[204]), //Inputs
		.s(y_b[242]), .c_out(ci_out[205]) //Outputs 
	);
	fa_1b fa205(
		.a(x_a[212]), .b(y_b[212]), .c_in(ci_out[205]), //Inputs
		.s(y_b[243]), .c_out(ci_out[206]) //Outputs 
	);
	fa_1b fa206(
		.a(x_a[213]), .b(y_b[213]), .c_in(ci_out[206]), //Inputs
		.s(y_b[244]), .c_out(ci_out[207]) //Outputs 
	);
	fa_1b fa207(
		.a(x_a[214]), .b(y_b[214]), .c_in(ci_out[207]), //Inputs
		.s(y_b[245]), .c_out(ci_out[208]) //Outputs 
	);
	fa_1b fa208(
		.a(x_a[215]), .b(y_b[215]), .c_in(ci_out[208]), //Inputs
		.s(y_b[246]), .c_out(ci_out[209]) //Outputs 
	);
	fa_1b fa209(
		.a(x_a[216]), .b(y_b[216]), .c_in(ci_out[209]), //Inputs
		.s(y_b[247]), .c_out(ci_out[210]) //Outputs 
	);
	fa_1b fa210(
		.a(x_a[217]), .b(y_b[217]), .c_in(ci_out[210]), //Inputs
		.s(y_b[248]), .c_out(ci_out[211]) //Outputs 
	);
	fa_1b fa211(
		.a(x_a[218]), .b(y_b[218]), .c_in(ci_out[211]), //Inputs
		.s(y_b[249]), .c_out(ci_out[212]) //Outputs 
	);
	fa_1b fa212(
		.a(x_a[219]), .b(y_b[219]), .c_in(ci_out[212]), //Inputs
		.s(y_b[250]), .c_out(ci_out[213]) //Outputs 
	);
	fa_1b fa213(
		.a(x_a[220]), .b(y_b[220]), .c_in(ci_out[213]), //Inputs
		.s(y_b[251]), .c_out(ci_out[214]) //Outputs 
	);
	fa_1b fa214(
		.a(x_a[221]), .b(y_b[221]), .c_in(ci_out[214]), //Inputs
		.s(y_b[252]), .c_out(ci_out[215]) //Outputs 
	);
	fa_1b fa215(
		.a(x_a[222]), .b(y_b[222]), .c_in(ci_out[215]), //Inputs
		.s(y_b[253]), .c_out(ci_out[216]) //Outputs 
	);
	fa_1b fa216(
		.a(x_a[223]), .b(y_b[223]), .c_in(ci_out[216]), //Inputs
		.s(y_b[254]), .c_out(y_b[255]) //Outputs 
	);

	//Stage 7
	ha_1b ha7(
		.a(x_a[224]), .b(y_b[224]), //Inputs
		.s(to_cut_res[8]), .c_out(ci_out[217]) //Outputs 
	);
	fa_1b fa217(
		.a(x_a[225]), .b(y_b[225]), .c_in(ci_out[217]), //Inputs
		.s(y_b[256]), .c_out(ci_out[218]) //Outputs 
	);
	fa_1b fa218(
		.a(x_a[226]), .b(y_b[226]), .c_in(ci_out[218]), //Inputs
		.s(y_b[257]), .c_out(ci_out[219]) //Outputs 
	);
	fa_1b fa219(
		.a(x_a[227]), .b(y_b[227]), .c_in(ci_out[219]), //Inputs
		.s(y_b[258]), .c_out(ci_out[220]) //Outputs 
	);
	fa_1b fa220(
		.a(x_a[228]), .b(y_b[228]), .c_in(ci_out[220]), //Inputs
		.s(y_b[259]), .c_out(ci_out[221]) //Outputs 
	);
	fa_1b fa221(
		.a(x_a[229]), .b(y_b[229]), .c_in(ci_out[221]), //Inputs
		.s(y_b[260]), .c_out(ci_out[222]) //Outputs 
	);
	fa_1b fa222(
		.a(x_a[230]), .b(y_b[230]), .c_in(ci_out[222]), //Inputs
		.s(y_b[261]), .c_out(ci_out[223]) //Outputs 
	);
	fa_1b fa223(
		.a(x_a[231]), .b(y_b[231]), .c_in(ci_out[223]), //Inputs
		.s(y_b[262]), .c_out(ci_out[224]) //Outputs 
	);
	fa_1b fa224(
		.a(x_a[232]), .b(y_b[232]), .c_in(ci_out[224]), //Inputs
		.s(y_b[263]), .c_out(ci_out[225]) //Outputs 
	);
	fa_1b fa225(
		.a(x_a[233]), .b(y_b[233]), .c_in(ci_out[225]), //Inputs
		.s(y_b[264]), .c_out(ci_out[226]) //Outputs 
	);
	fa_1b fa226(
		.a(x_a[234]), .b(y_b[234]), .c_in(ci_out[226]), //Inputs
		.s(y_b[265]), .c_out(ci_out[227]) //Outputs 
	);
	fa_1b fa227(
		.a(x_a[235]), .b(y_b[235]), .c_in(ci_out[227]), //Inputs
		.s(y_b[266]), .c_out(ci_out[228]) //Outputs 
	);
	fa_1b fa228(
		.a(x_a[236]), .b(y_b[236]), .c_in(ci_out[228]), //Inputs
		.s(y_b[267]), .c_out(ci_out[229]) //Outputs 
	);
	fa_1b fa229(
		.a(x_a[237]), .b(y_b[237]), .c_in(ci_out[229]), //Inputs
		.s(y_b[268]), .c_out(ci_out[230]) //Outputs 
	);
	fa_1b fa230(
		.a(x_a[238]), .b(y_b[238]), .c_in(ci_out[230]), //Inputs
		.s(y_b[269]), .c_out(ci_out[231]) //Outputs 
	);
	fa_1b fa231(
		.a(x_a[239]), .b(y_b[239]), .c_in(ci_out[231]), //Inputs
		.s(y_b[270]), .c_out(ci_out[232]) //Outputs 
	);
	fa_1b fa232(
		.a(x_a[240]), .b(y_b[240]), .c_in(ci_out[232]), //Inputs
		.s(y_b[271]), .c_out(ci_out[233]) //Outputs 
	);
	fa_1b fa233(
		.a(x_a[241]), .b(y_b[241]), .c_in(ci_out[233]), //Inputs
		.s(y_b[272]), .c_out(ci_out[234]) //Outputs 
	);
	fa_1b fa234(
		.a(x_a[242]), .b(y_b[242]), .c_in(ci_out[234]), //Inputs
		.s(y_b[273]), .c_out(ci_out[235]) //Outputs 
	);
	fa_1b fa235(
		.a(x_a[243]), .b(y_b[243]), .c_in(ci_out[235]), //Inputs
		.s(y_b[274]), .c_out(ci_out[236]) //Outputs 
	);
	fa_1b fa236(
		.a(x_a[244]), .b(y_b[244]), .c_in(ci_out[236]), //Inputs
		.s(y_b[275]), .c_out(ci_out[237]) //Outputs 
	);
	fa_1b fa237(
		.a(x_a[245]), .b(y_b[245]), .c_in(ci_out[237]), //Inputs
		.s(y_b[276]), .c_out(ci_out[238]) //Outputs 
	);
	fa_1b fa238(
		.a(x_a[246]), .b(y_b[246]), .c_in(ci_out[238]), //Inputs
		.s(y_b[277]), .c_out(ci_out[239]) //Outputs 
	);
	fa_1b fa239(
		.a(x_a[247]), .b(y_b[247]), .c_in(ci_out[239]), //Inputs
		.s(y_b[278]), .c_out(ci_out[240]) //Outputs 
	);
	fa_1b fa240(
		.a(x_a[248]), .b(y_b[248]), .c_in(ci_out[240]), //Inputs
		.s(y_b[279]), .c_out(ci_out[241]) //Outputs 
	);
	fa_1b fa241(
		.a(x_a[249]), .b(y_b[249]), .c_in(ci_out[241]), //Inputs
		.s(y_b[280]), .c_out(ci_out[242]) //Outputs 
	);
	fa_1b fa242(
		.a(x_a[250]), .b(y_b[250]), .c_in(ci_out[242]), //Inputs
		.s(y_b[281]), .c_out(ci_out[243]) //Outputs 
	);
	fa_1b fa243(
		.a(x_a[251]), .b(y_b[251]), .c_in(ci_out[243]), //Inputs
		.s(y_b[282]), .c_out(ci_out[244]) //Outputs 
	);
	fa_1b fa244(
		.a(x_a[252]), .b(y_b[252]), .c_in(ci_out[244]), //Inputs
		.s(y_b[283]), .c_out(ci_out[245]) //Outputs 
	);
	fa_1b fa245(
		.a(x_a[253]), .b(y_b[253]), .c_in(ci_out[245]), //Inputs
		.s(y_b[284]), .c_out(ci_out[246]) //Outputs 
	);
	fa_1b fa246(
		.a(x_a[254]), .b(y_b[254]), .c_in(ci_out[246]), //Inputs
		.s(y_b[285]), .c_out(ci_out[247]) //Outputs 
	);
	fa_1b fa247(
		.a(x_a[255]), .b(y_b[255]), .c_in(ci_out[247]), //Inputs
		.s(y_b[286]), .c_out(y_b[287]) //Outputs 
	);

	//Stage 8
	ha_1b ha8(
		.a(x_a[256]), .b(y_b[256]), //Inputs
		.s(to_cut_res[9]), .c_out(ci_out[248]) //Outputs 
	);
	fa_1b fa248(
		.a(x_a[257]), .b(y_b[257]), .c_in(ci_out[248]), //Inputs
		.s(y_b[288]), .c_out(ci_out[249]) //Outputs 
	);
	fa_1b fa249(
		.a(x_a[258]), .b(y_b[258]), .c_in(ci_out[249]), //Inputs
		.s(y_b[289]), .c_out(ci_out[250]) //Outputs 
	);
	fa_1b fa250(
		.a(x_a[259]), .b(y_b[259]), .c_in(ci_out[250]), //Inputs
		.s(y_b[290]), .c_out(ci_out[251]) //Outputs 
	);
	fa_1b fa251(
		.a(x_a[260]), .b(y_b[260]), .c_in(ci_out[251]), //Inputs
		.s(y_b[291]), .c_out(ci_out[252]) //Outputs 
	);
	fa_1b fa252(
		.a(x_a[261]), .b(y_b[261]), .c_in(ci_out[252]), //Inputs
		.s(y_b[292]), .c_out(ci_out[253]) //Outputs 
	);
	fa_1b fa253(
		.a(x_a[262]), .b(y_b[262]), .c_in(ci_out[253]), //Inputs
		.s(y_b[293]), .c_out(ci_out[254]) //Outputs 
	);
	fa_1b fa254(
		.a(x_a[263]), .b(y_b[263]), .c_in(ci_out[254]), //Inputs
		.s(y_b[294]), .c_out(ci_out[255]) //Outputs 
	);
	fa_1b fa255(
		.a(x_a[264]), .b(y_b[264]), .c_in(ci_out[255]), //Inputs
		.s(y_b[295]), .c_out(ci_out[256]) //Outputs 
	);
	fa_1b fa256(
		.a(x_a[265]), .b(y_b[265]), .c_in(ci_out[256]), //Inputs
		.s(y_b[296]), .c_out(ci_out[257]) //Outputs 
	);
	fa_1b fa257(
		.a(x_a[266]), .b(y_b[266]), .c_in(ci_out[257]), //Inputs
		.s(y_b[297]), .c_out(ci_out[258]) //Outputs 
	);
	fa_1b fa258(
		.a(x_a[267]), .b(y_b[267]), .c_in(ci_out[258]), //Inputs
		.s(y_b[298]), .c_out(ci_out[259]) //Outputs 
	);
	fa_1b fa259(
		.a(x_a[268]), .b(y_b[268]), .c_in(ci_out[259]), //Inputs
		.s(y_b[299]), .c_out(ci_out[260]) //Outputs 
	);
	fa_1b fa260(
		.a(x_a[269]), .b(y_b[269]), .c_in(ci_out[260]), //Inputs
		.s(y_b[300]), .c_out(ci_out[261]) //Outputs 
	);
	fa_1b fa261(
		.a(x_a[270]), .b(y_b[270]), .c_in(ci_out[261]), //Inputs
		.s(y_b[301]), .c_out(ci_out[262]) //Outputs 
	);
	fa_1b fa262(
		.a(x_a[271]), .b(y_b[271]), .c_in(ci_out[262]), //Inputs
		.s(y_b[302]), .c_out(ci_out[263]) //Outputs 
	);
	fa_1b fa263(
		.a(x_a[272]), .b(y_b[272]), .c_in(ci_out[263]), //Inputs
		.s(y_b[303]), .c_out(ci_out[264]) //Outputs 
	);
	fa_1b fa264(
		.a(x_a[273]), .b(y_b[273]), .c_in(ci_out[264]), //Inputs
		.s(y_b[304]), .c_out(ci_out[265]) //Outputs 
	);
	fa_1b fa265(
		.a(x_a[274]), .b(y_b[274]), .c_in(ci_out[265]), //Inputs
		.s(y_b[305]), .c_out(ci_out[266]) //Outputs 
	);
	fa_1b fa266(
		.a(x_a[275]), .b(y_b[275]), .c_in(ci_out[266]), //Inputs
		.s(y_b[306]), .c_out(ci_out[267]) //Outputs 
	);
	fa_1b fa267(
		.a(x_a[276]), .b(y_b[276]), .c_in(ci_out[267]), //Inputs
		.s(y_b[307]), .c_out(ci_out[268]) //Outputs 
	);
	fa_1b fa268(
		.a(x_a[277]), .b(y_b[277]), .c_in(ci_out[268]), //Inputs
		.s(y_b[308]), .c_out(ci_out[269]) //Outputs 
	);
	fa_1b fa269(
		.a(x_a[278]), .b(y_b[278]), .c_in(ci_out[269]), //Inputs
		.s(y_b[309]), .c_out(ci_out[270]) //Outputs 
	);
	fa_1b fa270(
		.a(x_a[279]), .b(y_b[279]), .c_in(ci_out[270]), //Inputs
		.s(y_b[310]), .c_out(ci_out[271]) //Outputs 
	);
	fa_1b fa271(
		.a(x_a[280]), .b(y_b[280]), .c_in(ci_out[271]), //Inputs
		.s(y_b[311]), .c_out(ci_out[272]) //Outputs 
	);
	fa_1b fa272(
		.a(x_a[281]), .b(y_b[281]), .c_in(ci_out[272]), //Inputs
		.s(y_b[312]), .c_out(ci_out[273]) //Outputs 
	);
	fa_1b fa273(
		.a(x_a[282]), .b(y_b[282]), .c_in(ci_out[273]), //Inputs
		.s(y_b[313]), .c_out(ci_out[274]) //Outputs 
	);
	fa_1b fa274(
		.a(x_a[283]), .b(y_b[283]), .c_in(ci_out[274]), //Inputs
		.s(y_b[314]), .c_out(ci_out[275]) //Outputs 
	);
	fa_1b fa275(
		.a(x_a[284]), .b(y_b[284]), .c_in(ci_out[275]), //Inputs
		.s(y_b[315]), .c_out(ci_out[276]) //Outputs 
	);
	fa_1b fa276(
		.a(x_a[285]), .b(y_b[285]), .c_in(ci_out[276]), //Inputs
		.s(y_b[316]), .c_out(ci_out[277]) //Outputs 
	);
	fa_1b fa277(
		.a(x_a[286]), .b(y_b[286]), .c_in(ci_out[277]), //Inputs
		.s(y_b[317]), .c_out(ci_out[278]) //Outputs 
	);
	fa_1b fa278(
		.a(x_a[287]), .b(y_b[287]), .c_in(ci_out[278]), //Inputs
		.s(y_b[318]), .c_out(y_b[319]) //Outputs 
	);

	//Stage 9
	ha_1b ha9(
		.a(x_a[288]), .b(y_b[288]), //Inputs
		.s(to_cut_res[10]), .c_out(ci_out[279]) //Outputs 
	);
	fa_1b fa279(
		.a(x_a[289]), .b(y_b[289]), .c_in(ci_out[279]), //Inputs
		.s(y_b[320]), .c_out(ci_out[280]) //Outputs 
	);
	fa_1b fa280(
		.a(x_a[290]), .b(y_b[290]), .c_in(ci_out[280]), //Inputs
		.s(y_b[321]), .c_out(ci_out[281]) //Outputs 
	);
	fa_1b fa281(
		.a(x_a[291]), .b(y_b[291]), .c_in(ci_out[281]), //Inputs
		.s(y_b[322]), .c_out(ci_out[282]) //Outputs 
	);
	fa_1b fa282(
		.a(x_a[292]), .b(y_b[292]), .c_in(ci_out[282]), //Inputs
		.s(y_b[323]), .c_out(ci_out[283]) //Outputs 
	);
	fa_1b fa283(
		.a(x_a[293]), .b(y_b[293]), .c_in(ci_out[283]), //Inputs
		.s(y_b[324]), .c_out(ci_out[284]) //Outputs 
	);
	fa_1b fa284(
		.a(x_a[294]), .b(y_b[294]), .c_in(ci_out[284]), //Inputs
		.s(y_b[325]), .c_out(ci_out[285]) //Outputs 
	);
	fa_1b fa285(
		.a(x_a[295]), .b(y_b[295]), .c_in(ci_out[285]), //Inputs
		.s(y_b[326]), .c_out(ci_out[286]) //Outputs 
	);
	fa_1b fa286(
		.a(x_a[296]), .b(y_b[296]), .c_in(ci_out[286]), //Inputs
		.s(y_b[327]), .c_out(ci_out[287]) //Outputs 
	);
	fa_1b fa287(
		.a(x_a[297]), .b(y_b[297]), .c_in(ci_out[287]), //Inputs
		.s(y_b[328]), .c_out(ci_out[288]) //Outputs 
	);
	fa_1b fa288(
		.a(x_a[298]), .b(y_b[298]), .c_in(ci_out[288]), //Inputs
		.s(y_b[329]), .c_out(ci_out[289]) //Outputs 
	);
	fa_1b fa289(
		.a(x_a[299]), .b(y_b[299]), .c_in(ci_out[289]), //Inputs
		.s(y_b[330]), .c_out(ci_out[290]) //Outputs 
	);
	fa_1b fa290(
		.a(x_a[300]), .b(y_b[300]), .c_in(ci_out[290]), //Inputs
		.s(y_b[331]), .c_out(ci_out[291]) //Outputs 
	);
	fa_1b fa291(
		.a(x_a[301]), .b(y_b[301]), .c_in(ci_out[291]), //Inputs
		.s(y_b[332]), .c_out(ci_out[292]) //Outputs 
	);
	fa_1b fa292(
		.a(x_a[302]), .b(y_b[302]), .c_in(ci_out[292]), //Inputs
		.s(y_b[333]), .c_out(ci_out[293]) //Outputs 
	);
	fa_1b fa293(
		.a(x_a[303]), .b(y_b[303]), .c_in(ci_out[293]), //Inputs
		.s(y_b[334]), .c_out(ci_out[294]) //Outputs 
	);
	fa_1b fa294(
		.a(x_a[304]), .b(y_b[304]), .c_in(ci_out[294]), //Inputs
		.s(y_b[335]), .c_out(ci_out[295]) //Outputs 
	);
	fa_1b fa295(
		.a(x_a[305]), .b(y_b[305]), .c_in(ci_out[295]), //Inputs
		.s(y_b[336]), .c_out(ci_out[296]) //Outputs 
	);
	fa_1b fa296(
		.a(x_a[306]), .b(y_b[306]), .c_in(ci_out[296]), //Inputs
		.s(y_b[337]), .c_out(ci_out[297]) //Outputs 
	);
	fa_1b fa297(
		.a(x_a[307]), .b(y_b[307]), .c_in(ci_out[297]), //Inputs
		.s(y_b[338]), .c_out(ci_out[298]) //Outputs 
	);
	fa_1b fa298(
		.a(x_a[308]), .b(y_b[308]), .c_in(ci_out[298]), //Inputs
		.s(y_b[339]), .c_out(ci_out[299]) //Outputs 
	);
	fa_1b fa299(
		.a(x_a[309]), .b(y_b[309]), .c_in(ci_out[299]), //Inputs
		.s(y_b[340]), .c_out(ci_out[300]) //Outputs 
	);
	fa_1b fa300(
		.a(x_a[310]), .b(y_b[310]), .c_in(ci_out[300]), //Inputs
		.s(y_b[341]), .c_out(ci_out[301]) //Outputs 
	);
	fa_1b fa301(
		.a(x_a[311]), .b(y_b[311]), .c_in(ci_out[301]), //Inputs
		.s(y_b[342]), .c_out(ci_out[302]) //Outputs 
	);
	fa_1b fa302(
		.a(x_a[312]), .b(y_b[312]), .c_in(ci_out[302]), //Inputs
		.s(y_b[343]), .c_out(ci_out[303]) //Outputs 
	);
	fa_1b fa303(
		.a(x_a[313]), .b(y_b[313]), .c_in(ci_out[303]), //Inputs
		.s(y_b[344]), .c_out(ci_out[304]) //Outputs 
	);
	fa_1b fa304(
		.a(x_a[314]), .b(y_b[314]), .c_in(ci_out[304]), //Inputs
		.s(y_b[345]), .c_out(ci_out[305]) //Outputs 
	);
	fa_1b fa305(
		.a(x_a[315]), .b(y_b[315]), .c_in(ci_out[305]), //Inputs
		.s(y_b[346]), .c_out(ci_out[306]) //Outputs 
	);
	fa_1b fa306(
		.a(x_a[316]), .b(y_b[316]), .c_in(ci_out[306]), //Inputs
		.s(y_b[347]), .c_out(ci_out[307]) //Outputs 
	);
	fa_1b fa307(
		.a(x_a[317]), .b(y_b[317]), .c_in(ci_out[307]), //Inputs
		.s(y_b[348]), .c_out(ci_out[308]) //Outputs 
	);
	fa_1b fa308(
		.a(x_a[318]), .b(y_b[318]), .c_in(ci_out[308]), //Inputs
		.s(y_b[349]), .c_out(ci_out[309]) //Outputs 
	);
	fa_1b fa309(
		.a(x_a[319]), .b(y_b[319]), .c_in(ci_out[309]), //Inputs
		.s(y_b[350]), .c_out(y_b[351]) //Outputs 
	);

	//Stage 10
	ha_1b ha10(
		.a(x_a[320]), .b(y_b[320]), //Inputs
		.s(to_cut_res[11]), .c_out(ci_out[310]) //Outputs 
	);
	fa_1b fa310(
		.a(x_a[321]), .b(y_b[321]), .c_in(ci_out[310]), //Inputs
		.s(y_b[352]), .c_out(ci_out[311]) //Outputs 
	);
	fa_1b fa311(
		.a(x_a[322]), .b(y_b[322]), .c_in(ci_out[311]), //Inputs
		.s(y_b[353]), .c_out(ci_out[312]) //Outputs 
	);
	fa_1b fa312(
		.a(x_a[323]), .b(y_b[323]), .c_in(ci_out[312]), //Inputs
		.s(y_b[354]), .c_out(ci_out[313]) //Outputs 
	);
	fa_1b fa313(
		.a(x_a[324]), .b(y_b[324]), .c_in(ci_out[313]), //Inputs
		.s(y_b[355]), .c_out(ci_out[314]) //Outputs 
	);
	fa_1b fa314(
		.a(x_a[325]), .b(y_b[325]), .c_in(ci_out[314]), //Inputs
		.s(y_b[356]), .c_out(ci_out[315]) //Outputs 
	);
	fa_1b fa315(
		.a(x_a[326]), .b(y_b[326]), .c_in(ci_out[315]), //Inputs
		.s(y_b[357]), .c_out(ci_out[316]) //Outputs 
	);
	fa_1b fa316(
		.a(x_a[327]), .b(y_b[327]), .c_in(ci_out[316]), //Inputs
		.s(y_b[358]), .c_out(ci_out[317]) //Outputs 
	);
	fa_1b fa317(
		.a(x_a[328]), .b(y_b[328]), .c_in(ci_out[317]), //Inputs
		.s(y_b[359]), .c_out(ci_out[318]) //Outputs 
	);
	fa_1b fa318(
		.a(x_a[329]), .b(y_b[329]), .c_in(ci_out[318]), //Inputs
		.s(y_b[360]), .c_out(ci_out[319]) //Outputs 
	);
	fa_1b fa319(
		.a(x_a[330]), .b(y_b[330]), .c_in(ci_out[319]), //Inputs
		.s(y_b[361]), .c_out(ci_out[320]) //Outputs 
	);
	fa_1b fa320(
		.a(x_a[331]), .b(y_b[331]), .c_in(ci_out[320]), //Inputs
		.s(y_b[362]), .c_out(ci_out[321]) //Outputs 
	);
	fa_1b fa321(
		.a(x_a[332]), .b(y_b[332]), .c_in(ci_out[321]), //Inputs
		.s(y_b[363]), .c_out(ci_out[322]) //Outputs 
	);
	fa_1b fa322(
		.a(x_a[333]), .b(y_b[333]), .c_in(ci_out[322]), //Inputs
		.s(y_b[364]), .c_out(ci_out[323]) //Outputs 
	);
	fa_1b fa323(
		.a(x_a[334]), .b(y_b[334]), .c_in(ci_out[323]), //Inputs
		.s(y_b[365]), .c_out(ci_out[324]) //Outputs 
	);
	fa_1b fa324(
		.a(x_a[335]), .b(y_b[335]), .c_in(ci_out[324]), //Inputs
		.s(y_b[366]), .c_out(ci_out[325]) //Outputs 
	);
	fa_1b fa325(
		.a(x_a[336]), .b(y_b[336]), .c_in(ci_out[325]), //Inputs
		.s(y_b[367]), .c_out(ci_out[326]) //Outputs 
	);
	fa_1b fa326(
		.a(x_a[337]), .b(y_b[337]), .c_in(ci_out[326]), //Inputs
		.s(y_b[368]), .c_out(ci_out[327]) //Outputs 
	);
	fa_1b fa327(
		.a(x_a[338]), .b(y_b[338]), .c_in(ci_out[327]), //Inputs
		.s(y_b[369]), .c_out(ci_out[328]) //Outputs 
	);
	fa_1b fa328(
		.a(x_a[339]), .b(y_b[339]), .c_in(ci_out[328]), //Inputs
		.s(y_b[370]), .c_out(ci_out[329]) //Outputs 
	);
	fa_1b fa329(
		.a(x_a[340]), .b(y_b[340]), .c_in(ci_out[329]), //Inputs
		.s(y_b[371]), .c_out(ci_out[330]) //Outputs 
	);
	fa_1b fa330(
		.a(x_a[341]), .b(y_b[341]), .c_in(ci_out[330]), //Inputs
		.s(y_b[372]), .c_out(ci_out[331]) //Outputs 
	);
	fa_1b fa331(
		.a(x_a[342]), .b(y_b[342]), .c_in(ci_out[331]), //Inputs
		.s(y_b[373]), .c_out(ci_out[332]) //Outputs 
	);
	fa_1b fa332(
		.a(x_a[343]), .b(y_b[343]), .c_in(ci_out[332]), //Inputs
		.s(y_b[374]), .c_out(ci_out[333]) //Outputs 
	);
	fa_1b fa333(
		.a(x_a[344]), .b(y_b[344]), .c_in(ci_out[333]), //Inputs
		.s(y_b[375]), .c_out(ci_out[334]) //Outputs 
	);
	fa_1b fa334(
		.a(x_a[345]), .b(y_b[345]), .c_in(ci_out[334]), //Inputs
		.s(y_b[376]), .c_out(ci_out[335]) //Outputs 
	);
	fa_1b fa335(
		.a(x_a[346]), .b(y_b[346]), .c_in(ci_out[335]), //Inputs
		.s(y_b[377]), .c_out(ci_out[336]) //Outputs 
	);
	fa_1b fa336(
		.a(x_a[347]), .b(y_b[347]), .c_in(ci_out[336]), //Inputs
		.s(y_b[378]), .c_out(ci_out[337]) //Outputs 
	);
	fa_1b fa337(
		.a(x_a[348]), .b(y_b[348]), .c_in(ci_out[337]), //Inputs
		.s(y_b[379]), .c_out(ci_out[338]) //Outputs 
	);
	fa_1b fa338(
		.a(x_a[349]), .b(y_b[349]), .c_in(ci_out[338]), //Inputs
		.s(y_b[380]), .c_out(ci_out[339]) //Outputs 
	);
	fa_1b fa339(
		.a(x_a[350]), .b(y_b[350]), .c_in(ci_out[339]), //Inputs
		.s(y_b[381]), .c_out(ci_out[340]) //Outputs 
	);
	fa_1b fa340(
		.a(x_a[351]), .b(y_b[351]), .c_in(ci_out[340]), //Inputs
		.s(y_b[382]), .c_out(y_b[383]) //Outputs 
	);

	//Stage 11
	ha_1b ha11(
		.a(x_a[352]), .b(y_b[352]), //Inputs
		.s(to_cut_res[12]), .c_out(ci_out[341]) //Outputs 
	);
	fa_1b fa341(
		.a(x_a[353]), .b(y_b[353]), .c_in(ci_out[341]), //Inputs
		.s(y_b[384]), .c_out(ci_out[342]) //Outputs 
	);
	fa_1b fa342(
		.a(x_a[354]), .b(y_b[354]), .c_in(ci_out[342]), //Inputs
		.s(y_b[385]), .c_out(ci_out[343]) //Outputs 
	);
	fa_1b fa343(
		.a(x_a[355]), .b(y_b[355]), .c_in(ci_out[343]), //Inputs
		.s(y_b[386]), .c_out(ci_out[344]) //Outputs 
	);
	fa_1b fa344(
		.a(x_a[356]), .b(y_b[356]), .c_in(ci_out[344]), //Inputs
		.s(y_b[387]), .c_out(ci_out[345]) //Outputs 
	);
	fa_1b fa345(
		.a(x_a[357]), .b(y_b[357]), .c_in(ci_out[345]), //Inputs
		.s(y_b[388]), .c_out(ci_out[346]) //Outputs 
	);
	fa_1b fa346(
		.a(x_a[358]), .b(y_b[358]), .c_in(ci_out[346]), //Inputs
		.s(y_b[389]), .c_out(ci_out[347]) //Outputs 
	);
	fa_1b fa347(
		.a(x_a[359]), .b(y_b[359]), .c_in(ci_out[347]), //Inputs
		.s(y_b[390]), .c_out(ci_out[348]) //Outputs 
	);
	fa_1b fa348(
		.a(x_a[360]), .b(y_b[360]), .c_in(ci_out[348]), //Inputs
		.s(y_b[391]), .c_out(ci_out[349]) //Outputs 
	);
	fa_1b fa349(
		.a(x_a[361]), .b(y_b[361]), .c_in(ci_out[349]), //Inputs
		.s(y_b[392]), .c_out(ci_out[350]) //Outputs 
	);
	fa_1b fa350(
		.a(x_a[362]), .b(y_b[362]), .c_in(ci_out[350]), //Inputs
		.s(y_b[393]), .c_out(ci_out[351]) //Outputs 
	);
	fa_1b fa351(
		.a(x_a[363]), .b(y_b[363]), .c_in(ci_out[351]), //Inputs
		.s(y_b[394]), .c_out(ci_out[352]) //Outputs 
	);
	fa_1b fa352(
		.a(x_a[364]), .b(y_b[364]), .c_in(ci_out[352]), //Inputs
		.s(y_b[395]), .c_out(ci_out[353]) //Outputs 
	);
	fa_1b fa353(
		.a(x_a[365]), .b(y_b[365]), .c_in(ci_out[353]), //Inputs
		.s(y_b[396]), .c_out(ci_out[354]) //Outputs 
	);
	fa_1b fa354(
		.a(x_a[366]), .b(y_b[366]), .c_in(ci_out[354]), //Inputs
		.s(y_b[397]), .c_out(ci_out[355]) //Outputs 
	);
	fa_1b fa355(
		.a(x_a[367]), .b(y_b[367]), .c_in(ci_out[355]), //Inputs
		.s(y_b[398]), .c_out(ci_out[356]) //Outputs 
	);
	fa_1b fa356(
		.a(x_a[368]), .b(y_b[368]), .c_in(ci_out[356]), //Inputs
		.s(y_b[399]), .c_out(ci_out[357]) //Outputs 
	);
	fa_1b fa357(
		.a(x_a[369]), .b(y_b[369]), .c_in(ci_out[357]), //Inputs
		.s(y_b[400]), .c_out(ci_out[358]) //Outputs 
	);
	fa_1b fa358(
		.a(x_a[370]), .b(y_b[370]), .c_in(ci_out[358]), //Inputs
		.s(y_b[401]), .c_out(ci_out[359]) //Outputs 
	);
	fa_1b fa359(
		.a(x_a[371]), .b(y_b[371]), .c_in(ci_out[359]), //Inputs
		.s(y_b[402]), .c_out(ci_out[360]) //Outputs 
	);
	fa_1b fa360(
		.a(x_a[372]), .b(y_b[372]), .c_in(ci_out[360]), //Inputs
		.s(y_b[403]), .c_out(ci_out[361]) //Outputs 
	);
	fa_1b fa361(
		.a(x_a[373]), .b(y_b[373]), .c_in(ci_out[361]), //Inputs
		.s(y_b[404]), .c_out(ci_out[362]) //Outputs 
	);
	fa_1b fa362(
		.a(x_a[374]), .b(y_b[374]), .c_in(ci_out[362]), //Inputs
		.s(y_b[405]), .c_out(ci_out[363]) //Outputs 
	);
	fa_1b fa363(
		.a(x_a[375]), .b(y_b[375]), .c_in(ci_out[363]), //Inputs
		.s(y_b[406]), .c_out(ci_out[364]) //Outputs 
	);
	fa_1b fa364(
		.a(x_a[376]), .b(y_b[376]), .c_in(ci_out[364]), //Inputs
		.s(y_b[407]), .c_out(ci_out[365]) //Outputs 
	);
	fa_1b fa365(
		.a(x_a[377]), .b(y_b[377]), .c_in(ci_out[365]), //Inputs
		.s(y_b[408]), .c_out(ci_out[366]) //Outputs 
	);
	fa_1b fa366(
		.a(x_a[378]), .b(y_b[378]), .c_in(ci_out[366]), //Inputs
		.s(y_b[409]), .c_out(ci_out[367]) //Outputs 
	);
	fa_1b fa367(
		.a(x_a[379]), .b(y_b[379]), .c_in(ci_out[367]), //Inputs
		.s(y_b[410]), .c_out(ci_out[368]) //Outputs 
	);
	fa_1b fa368(
		.a(x_a[380]), .b(y_b[380]), .c_in(ci_out[368]), //Inputs
		.s(y_b[411]), .c_out(ci_out[369]) //Outputs 
	);
	fa_1b fa369(
		.a(x_a[381]), .b(y_b[381]), .c_in(ci_out[369]), //Inputs
		.s(y_b[412]), .c_out(ci_out[370]) //Outputs 
	);
	fa_1b fa370(
		.a(x_a[382]), .b(y_b[382]), .c_in(ci_out[370]), //Inputs
		.s(y_b[413]), .c_out(ci_out[371]) //Outputs 
	);
	fa_1b fa371(
		.a(x_a[383]), .b(y_b[383]), .c_in(ci_out[371]), //Inputs
		.s(y_b[414]), .c_out(y_b[415]) //Outputs 
	);

	//Stage 12
	ha_1b ha12(
		.a(x_a[384]), .b(y_b[384]), //Inputs
		.s(to_cut_res[13]), .c_out(ci_out[372]) //Outputs 
	);
	fa_1b fa372(
		.a(x_a[385]), .b(y_b[385]), .c_in(ci_out[372]), //Inputs
		.s(y_b[416]), .c_out(ci_out[373]) //Outputs 
	);
	fa_1b fa373(
		.a(x_a[386]), .b(y_b[386]), .c_in(ci_out[373]), //Inputs
		.s(y_b[417]), .c_out(ci_out[374]) //Outputs 
	);
	fa_1b fa374(
		.a(x_a[387]), .b(y_b[387]), .c_in(ci_out[374]), //Inputs
		.s(y_b[418]), .c_out(ci_out[375]) //Outputs 
	);
	fa_1b fa375(
		.a(x_a[388]), .b(y_b[388]), .c_in(ci_out[375]), //Inputs
		.s(y_b[419]), .c_out(ci_out[376]) //Outputs 
	);
	fa_1b fa376(
		.a(x_a[389]), .b(y_b[389]), .c_in(ci_out[376]), //Inputs
		.s(y_b[420]), .c_out(ci_out[377]) //Outputs 
	);
	fa_1b fa377(
		.a(x_a[390]), .b(y_b[390]), .c_in(ci_out[377]), //Inputs
		.s(y_b[421]), .c_out(ci_out[378]) //Outputs 
	);
	fa_1b fa378(
		.a(x_a[391]), .b(y_b[391]), .c_in(ci_out[378]), //Inputs
		.s(y_b[422]), .c_out(ci_out[379]) //Outputs 
	);
	fa_1b fa379(
		.a(x_a[392]), .b(y_b[392]), .c_in(ci_out[379]), //Inputs
		.s(y_b[423]), .c_out(ci_out[380]) //Outputs 
	);
	fa_1b fa380(
		.a(x_a[393]), .b(y_b[393]), .c_in(ci_out[380]), //Inputs
		.s(y_b[424]), .c_out(ci_out[381]) //Outputs 
	);
	fa_1b fa381(
		.a(x_a[394]), .b(y_b[394]), .c_in(ci_out[381]), //Inputs
		.s(y_b[425]), .c_out(ci_out[382]) //Outputs 
	);
	fa_1b fa382(
		.a(x_a[395]), .b(y_b[395]), .c_in(ci_out[382]), //Inputs
		.s(y_b[426]), .c_out(ci_out[383]) //Outputs 
	);
	fa_1b fa383(
		.a(x_a[396]), .b(y_b[396]), .c_in(ci_out[383]), //Inputs
		.s(y_b[427]), .c_out(ci_out[384]) //Outputs 
	);
	fa_1b fa384(
		.a(x_a[397]), .b(y_b[397]), .c_in(ci_out[384]), //Inputs
		.s(y_b[428]), .c_out(ci_out[385]) //Outputs 
	);
	fa_1b fa385(
		.a(x_a[398]), .b(y_b[398]), .c_in(ci_out[385]), //Inputs
		.s(y_b[429]), .c_out(ci_out[386]) //Outputs 
	);
	fa_1b fa386(
		.a(x_a[399]), .b(y_b[399]), .c_in(ci_out[386]), //Inputs
		.s(y_b[430]), .c_out(ci_out[387]) //Outputs 
	);
	fa_1b fa387(
		.a(x_a[400]), .b(y_b[400]), .c_in(ci_out[387]), //Inputs
		.s(y_b[431]), .c_out(ci_out[388]) //Outputs 
	);
	fa_1b fa388(
		.a(x_a[401]), .b(y_b[401]), .c_in(ci_out[388]), //Inputs
		.s(y_b[432]), .c_out(ci_out[389]) //Outputs 
	);
	fa_1b fa389(
		.a(x_a[402]), .b(y_b[402]), .c_in(ci_out[389]), //Inputs
		.s(y_b[433]), .c_out(ci_out[390]) //Outputs 
	);
	fa_1b fa390(
		.a(x_a[403]), .b(y_b[403]), .c_in(ci_out[390]), //Inputs
		.s(y_b[434]), .c_out(ci_out[391]) //Outputs 
	);
	fa_1b fa391(
		.a(x_a[404]), .b(y_b[404]), .c_in(ci_out[391]), //Inputs
		.s(y_b[435]), .c_out(ci_out[392]) //Outputs 
	);
	fa_1b fa392(
		.a(x_a[405]), .b(y_b[405]), .c_in(ci_out[392]), //Inputs
		.s(y_b[436]), .c_out(ci_out[393]) //Outputs 
	);
	fa_1b fa393(
		.a(x_a[406]), .b(y_b[406]), .c_in(ci_out[393]), //Inputs
		.s(y_b[437]), .c_out(ci_out[394]) //Outputs 
	);
	fa_1b fa394(
		.a(x_a[407]), .b(y_b[407]), .c_in(ci_out[394]), //Inputs
		.s(y_b[438]), .c_out(ci_out[395]) //Outputs 
	);
	fa_1b fa395(
		.a(x_a[408]), .b(y_b[408]), .c_in(ci_out[395]), //Inputs
		.s(y_b[439]), .c_out(ci_out[396]) //Outputs 
	);
	fa_1b fa396(
		.a(x_a[409]), .b(y_b[409]), .c_in(ci_out[396]), //Inputs
		.s(y_b[440]), .c_out(ci_out[397]) //Outputs 
	);
	fa_1b fa397(
		.a(x_a[410]), .b(y_b[410]), .c_in(ci_out[397]), //Inputs
		.s(y_b[441]), .c_out(ci_out[398]) //Outputs 
	);
	fa_1b fa398(
		.a(x_a[411]), .b(y_b[411]), .c_in(ci_out[398]), //Inputs
		.s(y_b[442]), .c_out(ci_out[399]) //Outputs 
	);
	fa_1b fa399(
		.a(x_a[412]), .b(y_b[412]), .c_in(ci_out[399]), //Inputs
		.s(y_b[443]), .c_out(ci_out[400]) //Outputs 
	);
	fa_1b fa400(
		.a(x_a[413]), .b(y_b[413]), .c_in(ci_out[400]), //Inputs
		.s(y_b[444]), .c_out(ci_out[401]) //Outputs 
	);
	fa_1b fa401(
		.a(x_a[414]), .b(y_b[414]), .c_in(ci_out[401]), //Inputs
		.s(y_b[445]), .c_out(ci_out[402]) //Outputs 
	);
	fa_1b fa402(
		.a(x_a[415]), .b(y_b[415]), .c_in(ci_out[402]), //Inputs
		.s(y_b[446]), .c_out(y_b[447]) //Outputs 
	);

	//Stage 13
	ha_1b ha13(
		.a(x_a[416]), .b(y_b[416]), //Inputs
		.s(to_cut_res[14]), .c_out(ci_out[403]) //Outputs 
	);
	fa_1b fa403(
		.a(x_a[417]), .b(y_b[417]), .c_in(ci_out[403]), //Inputs
		.s(y_b[448]), .c_out(ci_out[404]) //Outputs 
	);
	fa_1b fa404(
		.a(x_a[418]), .b(y_b[418]), .c_in(ci_out[404]), //Inputs
		.s(y_b[449]), .c_out(ci_out[405]) //Outputs 
	);
	fa_1b fa405(
		.a(x_a[419]), .b(y_b[419]), .c_in(ci_out[405]), //Inputs
		.s(y_b[450]), .c_out(ci_out[406]) //Outputs 
	);
	fa_1b fa406(
		.a(x_a[420]), .b(y_b[420]), .c_in(ci_out[406]), //Inputs
		.s(y_b[451]), .c_out(ci_out[407]) //Outputs 
	);
	fa_1b fa407(
		.a(x_a[421]), .b(y_b[421]), .c_in(ci_out[407]), //Inputs
		.s(y_b[452]), .c_out(ci_out[408]) //Outputs 
	);
	fa_1b fa408(
		.a(x_a[422]), .b(y_b[422]), .c_in(ci_out[408]), //Inputs
		.s(y_b[453]), .c_out(ci_out[409]) //Outputs 
	);
	fa_1b fa409(
		.a(x_a[423]), .b(y_b[423]), .c_in(ci_out[409]), //Inputs
		.s(y_b[454]), .c_out(ci_out[410]) //Outputs 
	);
	fa_1b fa410(
		.a(x_a[424]), .b(y_b[424]), .c_in(ci_out[410]), //Inputs
		.s(y_b[455]), .c_out(ci_out[411]) //Outputs 
	);
	fa_1b fa411(
		.a(x_a[425]), .b(y_b[425]), .c_in(ci_out[411]), //Inputs
		.s(y_b[456]), .c_out(ci_out[412]) //Outputs 
	);
	fa_1b fa412(
		.a(x_a[426]), .b(y_b[426]), .c_in(ci_out[412]), //Inputs
		.s(y_b[457]), .c_out(ci_out[413]) //Outputs 
	);
	fa_1b fa413(
		.a(x_a[427]), .b(y_b[427]), .c_in(ci_out[413]), //Inputs
		.s(y_b[458]), .c_out(ci_out[414]) //Outputs 
	);
	fa_1b fa414(
		.a(x_a[428]), .b(y_b[428]), .c_in(ci_out[414]), //Inputs
		.s(y_b[459]), .c_out(ci_out[415]) //Outputs 
	);
	fa_1b fa415(
		.a(x_a[429]), .b(y_b[429]), .c_in(ci_out[415]), //Inputs
		.s(y_b[460]), .c_out(ci_out[416]) //Outputs 
	);
	fa_1b fa416(
		.a(x_a[430]), .b(y_b[430]), .c_in(ci_out[416]), //Inputs
		.s(y_b[461]), .c_out(ci_out[417]) //Outputs 
	);
	fa_1b fa417(
		.a(x_a[431]), .b(y_b[431]), .c_in(ci_out[417]), //Inputs
		.s(y_b[462]), .c_out(ci_out[418]) //Outputs 
	);
	fa_1b fa418(
		.a(x_a[432]), .b(y_b[432]), .c_in(ci_out[418]), //Inputs
		.s(y_b[463]), .c_out(ci_out[419]) //Outputs 
	);
	fa_1b fa419(
		.a(x_a[433]), .b(y_b[433]), .c_in(ci_out[419]), //Inputs
		.s(y_b[464]), .c_out(ci_out[420]) //Outputs 
	);
	fa_1b fa420(
		.a(x_a[434]), .b(y_b[434]), .c_in(ci_out[420]), //Inputs
		.s(y_b[465]), .c_out(ci_out[421]) //Outputs 
	);
	fa_1b fa421(
		.a(x_a[435]), .b(y_b[435]), .c_in(ci_out[421]), //Inputs
		.s(y_b[466]), .c_out(ci_out[422]) //Outputs 
	);
	fa_1b fa422(
		.a(x_a[436]), .b(y_b[436]), .c_in(ci_out[422]), //Inputs
		.s(y_b[467]), .c_out(ci_out[423]) //Outputs 
	);
	fa_1b fa423(
		.a(x_a[437]), .b(y_b[437]), .c_in(ci_out[423]), //Inputs
		.s(y_b[468]), .c_out(ci_out[424]) //Outputs 
	);
	fa_1b fa424(
		.a(x_a[438]), .b(y_b[438]), .c_in(ci_out[424]), //Inputs
		.s(y_b[469]), .c_out(ci_out[425]) //Outputs 
	);
	fa_1b fa425(
		.a(x_a[439]), .b(y_b[439]), .c_in(ci_out[425]), //Inputs
		.s(y_b[470]), .c_out(ci_out[426]) //Outputs 
	);
	fa_1b fa426(
		.a(x_a[440]), .b(y_b[440]), .c_in(ci_out[426]), //Inputs
		.s(y_b[471]), .c_out(ci_out[427]) //Outputs 
	);
	fa_1b fa427(
		.a(x_a[441]), .b(y_b[441]), .c_in(ci_out[427]), //Inputs
		.s(y_b[472]), .c_out(ci_out[428]) //Outputs 
	);
	fa_1b fa428(
		.a(x_a[442]), .b(y_b[442]), .c_in(ci_out[428]), //Inputs
		.s(y_b[473]), .c_out(ci_out[429]) //Outputs 
	);
	fa_1b fa429(
		.a(x_a[443]), .b(y_b[443]), .c_in(ci_out[429]), //Inputs
		.s(y_b[474]), .c_out(ci_out[430]) //Outputs 
	);
	fa_1b fa430(
		.a(x_a[444]), .b(y_b[444]), .c_in(ci_out[430]), //Inputs
		.s(y_b[475]), .c_out(ci_out[431]) //Outputs 
	);
	fa_1b fa431(
		.a(x_a[445]), .b(y_b[445]), .c_in(ci_out[431]), //Inputs
		.s(y_b[476]), .c_out(ci_out[432]) //Outputs 
	);
	fa_1b fa432(
		.a(x_a[446]), .b(y_b[446]), .c_in(ci_out[432]), //Inputs
		.s(y_b[477]), .c_out(ci_out[433]) //Outputs 
	);
	fa_1b fa433(
		.a(x_a[447]), .b(y_b[447]), .c_in(ci_out[433]), //Inputs
		.s(y_b[478]), .c_out(y_b[479]) //Outputs 
	);

	//Stage 14
	ha_1b ha14(
		.a(x_a[448]), .b(y_b[448]), //Inputs
		.s(to_cut_res[15]), .c_out(ci_out[434]) //Outputs 
	);
	fa_1b fa434(
		.a(x_a[449]), .b(y_b[449]), .c_in(ci_out[434]), //Inputs
		.s(y_b[480]), .c_out(ci_out[435]) //Outputs 
	);
	fa_1b fa435(
		.a(x_a[450]), .b(y_b[450]), .c_in(ci_out[435]), //Inputs
		.s(y_b[481]), .c_out(ci_out[436]) //Outputs 
	);
	fa_1b fa436(
		.a(x_a[451]), .b(y_b[451]), .c_in(ci_out[436]), //Inputs
		.s(y_b[482]), .c_out(ci_out[437]) //Outputs 
	);
	fa_1b fa437(
		.a(x_a[452]), .b(y_b[452]), .c_in(ci_out[437]), //Inputs
		.s(y_b[483]), .c_out(ci_out[438]) //Outputs 
	);
	fa_1b fa438(
		.a(x_a[453]), .b(y_b[453]), .c_in(ci_out[438]), //Inputs
		.s(y_b[484]), .c_out(ci_out[439]) //Outputs 
	);
	fa_1b fa439(
		.a(x_a[454]), .b(y_b[454]), .c_in(ci_out[439]), //Inputs
		.s(y_b[485]), .c_out(ci_out[440]) //Outputs 
	);
	fa_1b fa440(
		.a(x_a[455]), .b(y_b[455]), .c_in(ci_out[440]), //Inputs
		.s(y_b[486]), .c_out(ci_out[441]) //Outputs 
	);
	fa_1b fa441(
		.a(x_a[456]), .b(y_b[456]), .c_in(ci_out[441]), //Inputs
		.s(y_b[487]), .c_out(ci_out[442]) //Outputs 
	);
	fa_1b fa442(
		.a(x_a[457]), .b(y_b[457]), .c_in(ci_out[442]), //Inputs
		.s(y_b[488]), .c_out(ci_out[443]) //Outputs 
	);
	fa_1b fa443(
		.a(x_a[458]), .b(y_b[458]), .c_in(ci_out[443]), //Inputs
		.s(y_b[489]), .c_out(ci_out[444]) //Outputs 
	);
	fa_1b fa444(
		.a(x_a[459]), .b(y_b[459]), .c_in(ci_out[444]), //Inputs
		.s(y_b[490]), .c_out(ci_out[445]) //Outputs 
	);
	fa_1b fa445(
		.a(x_a[460]), .b(y_b[460]), .c_in(ci_out[445]), //Inputs
		.s(y_b[491]), .c_out(ci_out[446]) //Outputs 
	);
	fa_1b fa446(
		.a(x_a[461]), .b(y_b[461]), .c_in(ci_out[446]), //Inputs
		.s(y_b[492]), .c_out(ci_out[447]) //Outputs 
	);
	fa_1b fa447(
		.a(x_a[462]), .b(y_b[462]), .c_in(ci_out[447]), //Inputs
		.s(y_b[493]), .c_out(ci_out[448]) //Outputs 
	);
	fa_1b fa448(
		.a(x_a[463]), .b(y_b[463]), .c_in(ci_out[448]), //Inputs
		.s(y_b[494]), .c_out(ci_out[449]) //Outputs 
	);
	fa_1b fa449(
		.a(x_a[464]), .b(y_b[464]), .c_in(ci_out[449]), //Inputs
		.s(y_b[495]), .c_out(ci_out[450]) //Outputs 
	);
	fa_1b fa450(
		.a(x_a[465]), .b(y_b[465]), .c_in(ci_out[450]), //Inputs
		.s(y_b[496]), .c_out(ci_out[451]) //Outputs 
	);
	fa_1b fa451(
		.a(x_a[466]), .b(y_b[466]), .c_in(ci_out[451]), //Inputs
		.s(y_b[497]), .c_out(ci_out[452]) //Outputs 
	);
	fa_1b fa452(
		.a(x_a[467]), .b(y_b[467]), .c_in(ci_out[452]), //Inputs
		.s(y_b[498]), .c_out(ci_out[453]) //Outputs 
	);
	fa_1b fa453(
		.a(x_a[468]), .b(y_b[468]), .c_in(ci_out[453]), //Inputs
		.s(y_b[499]), .c_out(ci_out[454]) //Outputs 
	);
	fa_1b fa454(
		.a(x_a[469]), .b(y_b[469]), .c_in(ci_out[454]), //Inputs
		.s(y_b[500]), .c_out(ci_out[455]) //Outputs 
	);
	fa_1b fa455(
		.a(x_a[470]), .b(y_b[470]), .c_in(ci_out[455]), //Inputs
		.s(y_b[501]), .c_out(ci_out[456]) //Outputs 
	);
	fa_1b fa456(
		.a(x_a[471]), .b(y_b[471]), .c_in(ci_out[456]), //Inputs
		.s(y_b[502]), .c_out(ci_out[457]) //Outputs 
	);
	fa_1b fa457(
		.a(x_a[472]), .b(y_b[472]), .c_in(ci_out[457]), //Inputs
		.s(y_b[503]), .c_out(ci_out[458]) //Outputs 
	);
	fa_1b fa458(
		.a(x_a[473]), .b(y_b[473]), .c_in(ci_out[458]), //Inputs
		.s(y_b[504]), .c_out(ci_out[459]) //Outputs 
	);
	fa_1b fa459(
		.a(x_a[474]), .b(y_b[474]), .c_in(ci_out[459]), //Inputs
		.s(y_b[505]), .c_out(ci_out[460]) //Outputs 
	);
	fa_1b fa460(
		.a(x_a[475]), .b(y_b[475]), .c_in(ci_out[460]), //Inputs
		.s(y_b[506]), .c_out(ci_out[461]) //Outputs 
	);
	fa_1b fa461(
		.a(x_a[476]), .b(y_b[476]), .c_in(ci_out[461]), //Inputs
		.s(y_b[507]), .c_out(ci_out[462]) //Outputs 
	);
	fa_1b fa462(
		.a(x_a[477]), .b(y_b[477]), .c_in(ci_out[462]), //Inputs
		.s(y_b[508]), .c_out(ci_out[463]) //Outputs 
	);
	fa_1b fa463(
		.a(x_a[478]), .b(y_b[478]), .c_in(ci_out[463]), //Inputs
		.s(y_b[509]), .c_out(ci_out[464]) //Outputs 
	);
	fa_1b fa464(
		.a(x_a[479]), .b(y_b[479]), .c_in(ci_out[464]), //Inputs
		.s(y_b[510]), .c_out(y_b[511]) //Outputs 
	);

	//Stage 15
	ha_1b ha15(
		.a(x_a[480]), .b(y_b[480]), //Inputs
		.s(to_cut_res[16]), .c_out(ci_out[465]) //Outputs 
	);
	fa_1b fa465(
		.a(x_a[481]), .b(y_b[481]), .c_in(ci_out[465]), //Inputs
		.s(y_b[512]), .c_out(ci_out[466]) //Outputs 
	);
	fa_1b fa466(
		.a(x_a[482]), .b(y_b[482]), .c_in(ci_out[466]), //Inputs
		.s(y_b[513]), .c_out(ci_out[467]) //Outputs 
	);
	fa_1b fa467(
		.a(x_a[483]), .b(y_b[483]), .c_in(ci_out[467]), //Inputs
		.s(y_b[514]), .c_out(ci_out[468]) //Outputs 
	);
	fa_1b fa468(
		.a(x_a[484]), .b(y_b[484]), .c_in(ci_out[468]), //Inputs
		.s(y_b[515]), .c_out(ci_out[469]) //Outputs 
	);
	fa_1b fa469(
		.a(x_a[485]), .b(y_b[485]), .c_in(ci_out[469]), //Inputs
		.s(y_b[516]), .c_out(ci_out[470]) //Outputs 
	);
	fa_1b fa470(
		.a(x_a[486]), .b(y_b[486]), .c_in(ci_out[470]), //Inputs
		.s(y_b[517]), .c_out(ci_out[471]) //Outputs 
	);
	fa_1b fa471(
		.a(x_a[487]), .b(y_b[487]), .c_in(ci_out[471]), //Inputs
		.s(y_b[518]), .c_out(ci_out[472]) //Outputs 
	);
	fa_1b fa472(
		.a(x_a[488]), .b(y_b[488]), .c_in(ci_out[472]), //Inputs
		.s(y_b[519]), .c_out(ci_out[473]) //Outputs 
	);
	fa_1b fa473(
		.a(x_a[489]), .b(y_b[489]), .c_in(ci_out[473]), //Inputs
		.s(y_b[520]), .c_out(ci_out[474]) //Outputs 
	);
	fa_1b fa474(
		.a(x_a[490]), .b(y_b[490]), .c_in(ci_out[474]), //Inputs
		.s(y_b[521]), .c_out(ci_out[475]) //Outputs 
	);
	fa_1b fa475(
		.a(x_a[491]), .b(y_b[491]), .c_in(ci_out[475]), //Inputs
		.s(y_b[522]), .c_out(ci_out[476]) //Outputs 
	);
	fa_1b fa476(
		.a(x_a[492]), .b(y_b[492]), .c_in(ci_out[476]), //Inputs
		.s(y_b[523]), .c_out(ci_out[477]) //Outputs 
	);
	fa_1b fa477(
		.a(x_a[493]), .b(y_b[493]), .c_in(ci_out[477]), //Inputs
		.s(y_b[524]), .c_out(ci_out[478]) //Outputs 
	);
	fa_1b fa478(
		.a(x_a[494]), .b(y_b[494]), .c_in(ci_out[478]), //Inputs
		.s(y_b[525]), .c_out(ci_out[479]) //Outputs 
	);
	fa_1b fa479(
		.a(x_a[495]), .b(y_b[495]), .c_in(ci_out[479]), //Inputs
		.s(y_b[526]), .c_out(ci_out[480]) //Outputs 
	);
	fa_1b fa480(
		.a(x_a[496]), .b(y_b[496]), .c_in(ci_out[480]), //Inputs
		.s(y_b[527]), .c_out(ci_out[481]) //Outputs 
	);
	fa_1b fa481(
		.a(x_a[497]), .b(y_b[497]), .c_in(ci_out[481]), //Inputs
		.s(y_b[528]), .c_out(ci_out[482]) //Outputs 
	);
	fa_1b fa482(
		.a(x_a[498]), .b(y_b[498]), .c_in(ci_out[482]), //Inputs
		.s(y_b[529]), .c_out(ci_out[483]) //Outputs 
	);
	fa_1b fa483(
		.a(x_a[499]), .b(y_b[499]), .c_in(ci_out[483]), //Inputs
		.s(y_b[530]), .c_out(ci_out[484]) //Outputs 
	);
	fa_1b fa484(
		.a(x_a[500]), .b(y_b[500]), .c_in(ci_out[484]), //Inputs
		.s(y_b[531]), .c_out(ci_out[485]) //Outputs 
	);
	fa_1b fa485(
		.a(x_a[501]), .b(y_b[501]), .c_in(ci_out[485]), //Inputs
		.s(y_b[532]), .c_out(ci_out[486]) //Outputs 
	);
	fa_1b fa486(
		.a(x_a[502]), .b(y_b[502]), .c_in(ci_out[486]), //Inputs
		.s(y_b[533]), .c_out(ci_out[487]) //Outputs 
	);
	fa_1b fa487(
		.a(x_a[503]), .b(y_b[503]), .c_in(ci_out[487]), //Inputs
		.s(y_b[534]), .c_out(ci_out[488]) //Outputs 
	);
	fa_1b fa488(
		.a(x_a[504]), .b(y_b[504]), .c_in(ci_out[488]), //Inputs
		.s(y_b[535]), .c_out(ci_out[489]) //Outputs 
	);
	fa_1b fa489(
		.a(x_a[505]), .b(y_b[505]), .c_in(ci_out[489]), //Inputs
		.s(y_b[536]), .c_out(ci_out[490]) //Outputs 
	);
	fa_1b fa490(
		.a(x_a[506]), .b(y_b[506]), .c_in(ci_out[490]), //Inputs
		.s(y_b[537]), .c_out(ci_out[491]) //Outputs 
	);
	fa_1b fa491(
		.a(x_a[507]), .b(y_b[507]), .c_in(ci_out[491]), //Inputs
		.s(y_b[538]), .c_out(ci_out[492]) //Outputs 
	);
	fa_1b fa492(
		.a(x_a[508]), .b(y_b[508]), .c_in(ci_out[492]), //Inputs
		.s(y_b[539]), .c_out(ci_out[493]) //Outputs 
	);
	fa_1b fa493(
		.a(x_a[509]), .b(y_b[509]), .c_in(ci_out[493]), //Inputs
		.s(y_b[540]), .c_out(ci_out[494]) //Outputs 
	);
	fa_1b fa494(
		.a(x_a[510]), .b(y_b[510]), .c_in(ci_out[494]), //Inputs
		.s(y_b[541]), .c_out(ci_out[495]) //Outputs 
	);
	fa_1b fa495(
		.a(x_a[511]), .b(y_b[511]), .c_in(ci_out[495]), //Inputs
		.s(y_b[542]), .c_out(y_b[543]) //Outputs 
	);

	//Stage 16
	ha_1b ha16(
		.a(x_a[512]), .b(y_b[512]), //Inputs
		.s(to_cut_res[17]), .c_out(ci_out[496]) //Outputs 
	);
	fa_1b fa496(
		.a(x_a[513]), .b(y_b[513]), .c_in(ci_out[496]), //Inputs
		.s(y_b[544]), .c_out(ci_out[497]) //Outputs 
	);
	fa_1b fa497(
		.a(x_a[514]), .b(y_b[514]), .c_in(ci_out[497]), //Inputs
		.s(y_b[545]), .c_out(ci_out[498]) //Outputs 
	);
	fa_1b fa498(
		.a(x_a[515]), .b(y_b[515]), .c_in(ci_out[498]), //Inputs
		.s(y_b[546]), .c_out(ci_out[499]) //Outputs 
	);
	fa_1b fa499(
		.a(x_a[516]), .b(y_b[516]), .c_in(ci_out[499]), //Inputs
		.s(y_b[547]), .c_out(ci_out[500]) //Outputs 
	);
	fa_1b fa500(
		.a(x_a[517]), .b(y_b[517]), .c_in(ci_out[500]), //Inputs
		.s(y_b[548]), .c_out(ci_out[501]) //Outputs 
	);
	fa_1b fa501(
		.a(x_a[518]), .b(y_b[518]), .c_in(ci_out[501]), //Inputs
		.s(y_b[549]), .c_out(ci_out[502]) //Outputs 
	);
	fa_1b fa502(
		.a(x_a[519]), .b(y_b[519]), .c_in(ci_out[502]), //Inputs
		.s(y_b[550]), .c_out(ci_out[503]) //Outputs 
	);
	fa_1b fa503(
		.a(x_a[520]), .b(y_b[520]), .c_in(ci_out[503]), //Inputs
		.s(y_b[551]), .c_out(ci_out[504]) //Outputs 
	);
	fa_1b fa504(
		.a(x_a[521]), .b(y_b[521]), .c_in(ci_out[504]), //Inputs
		.s(y_b[552]), .c_out(ci_out[505]) //Outputs 
	);
	fa_1b fa505(
		.a(x_a[522]), .b(y_b[522]), .c_in(ci_out[505]), //Inputs
		.s(y_b[553]), .c_out(ci_out[506]) //Outputs 
	);
	fa_1b fa506(
		.a(x_a[523]), .b(y_b[523]), .c_in(ci_out[506]), //Inputs
		.s(y_b[554]), .c_out(ci_out[507]) //Outputs 
	);
	fa_1b fa507(
		.a(x_a[524]), .b(y_b[524]), .c_in(ci_out[507]), //Inputs
		.s(y_b[555]), .c_out(ci_out[508]) //Outputs 
	);
	fa_1b fa508(
		.a(x_a[525]), .b(y_b[525]), .c_in(ci_out[508]), //Inputs
		.s(y_b[556]), .c_out(ci_out[509]) //Outputs 
	);
	fa_1b fa509(
		.a(x_a[526]), .b(y_b[526]), .c_in(ci_out[509]), //Inputs
		.s(y_b[557]), .c_out(ci_out[510]) //Outputs 
	);
	fa_1b fa510(
		.a(x_a[527]), .b(y_b[527]), .c_in(ci_out[510]), //Inputs
		.s(y_b[558]), .c_out(ci_out[511]) //Outputs 
	);
	fa_1b fa511(
		.a(x_a[528]), .b(y_b[528]), .c_in(ci_out[511]), //Inputs
		.s(y_b[559]), .c_out(ci_out[512]) //Outputs 
	);
	fa_1b fa512(
		.a(x_a[529]), .b(y_b[529]), .c_in(ci_out[512]), //Inputs
		.s(y_b[560]), .c_out(ci_out[513]) //Outputs 
	);
	fa_1b fa513(
		.a(x_a[530]), .b(y_b[530]), .c_in(ci_out[513]), //Inputs
		.s(y_b[561]), .c_out(ci_out[514]) //Outputs 
	);
	fa_1b fa514(
		.a(x_a[531]), .b(y_b[531]), .c_in(ci_out[514]), //Inputs
		.s(y_b[562]), .c_out(ci_out[515]) //Outputs 
	);
	fa_1b fa515(
		.a(x_a[532]), .b(y_b[532]), .c_in(ci_out[515]), //Inputs
		.s(y_b[563]), .c_out(ci_out[516]) //Outputs 
	);
	fa_1b fa516(
		.a(x_a[533]), .b(y_b[533]), .c_in(ci_out[516]), //Inputs
		.s(y_b[564]), .c_out(ci_out[517]) //Outputs 
	);
	fa_1b fa517(
		.a(x_a[534]), .b(y_b[534]), .c_in(ci_out[517]), //Inputs
		.s(y_b[565]), .c_out(ci_out[518]) //Outputs 
	);
	fa_1b fa518(
		.a(x_a[535]), .b(y_b[535]), .c_in(ci_out[518]), //Inputs
		.s(y_b[566]), .c_out(ci_out[519]) //Outputs 
	);
	fa_1b fa519(
		.a(x_a[536]), .b(y_b[536]), .c_in(ci_out[519]), //Inputs
		.s(y_b[567]), .c_out(ci_out[520]) //Outputs 
	);
	fa_1b fa520(
		.a(x_a[537]), .b(y_b[537]), .c_in(ci_out[520]), //Inputs
		.s(y_b[568]), .c_out(ci_out[521]) //Outputs 
	);
	fa_1b fa521(
		.a(x_a[538]), .b(y_b[538]), .c_in(ci_out[521]), //Inputs
		.s(y_b[569]), .c_out(ci_out[522]) //Outputs 
	);
	fa_1b fa522(
		.a(x_a[539]), .b(y_b[539]), .c_in(ci_out[522]), //Inputs
		.s(y_b[570]), .c_out(ci_out[523]) //Outputs 
	);
	fa_1b fa523(
		.a(x_a[540]), .b(y_b[540]), .c_in(ci_out[523]), //Inputs
		.s(y_b[571]), .c_out(ci_out[524]) //Outputs 
	);
	fa_1b fa524(
		.a(x_a[541]), .b(y_b[541]), .c_in(ci_out[524]), //Inputs
		.s(y_b[572]), .c_out(ci_out[525]) //Outputs 
	);
	fa_1b fa525(
		.a(x_a[542]), .b(y_b[542]), .c_in(ci_out[525]), //Inputs
		.s(y_b[573]), .c_out(ci_out[526]) //Outputs 
	);
	fa_1b fa526(
		.a(x_a[543]), .b(y_b[543]), .c_in(ci_out[526]), //Inputs
		.s(y_b[574]), .c_out(y_b[575]) //Outputs 
	);

	//Stage 17
	ha_1b ha17(
		.a(x_a[544]), .b(y_b[544]), //Inputs
		.s(to_cut_res[18]), .c_out(ci_out[527]) //Outputs 
	);
	fa_1b fa527(
		.a(x_a[545]), .b(y_b[545]), .c_in(ci_out[527]), //Inputs
		.s(y_b[576]), .c_out(ci_out[528]) //Outputs 
	);
	fa_1b fa528(
		.a(x_a[546]), .b(y_b[546]), .c_in(ci_out[528]), //Inputs
		.s(y_b[577]), .c_out(ci_out[529]) //Outputs 
	);
	fa_1b fa529(
		.a(x_a[547]), .b(y_b[547]), .c_in(ci_out[529]), //Inputs
		.s(y_b[578]), .c_out(ci_out[530]) //Outputs 
	);
	fa_1b fa530(
		.a(x_a[548]), .b(y_b[548]), .c_in(ci_out[530]), //Inputs
		.s(y_b[579]), .c_out(ci_out[531]) //Outputs 
	);
	fa_1b fa531(
		.a(x_a[549]), .b(y_b[549]), .c_in(ci_out[531]), //Inputs
		.s(y_b[580]), .c_out(ci_out[532]) //Outputs 
	);
	fa_1b fa532(
		.a(x_a[550]), .b(y_b[550]), .c_in(ci_out[532]), //Inputs
		.s(y_b[581]), .c_out(ci_out[533]) //Outputs 
	);
	fa_1b fa533(
		.a(x_a[551]), .b(y_b[551]), .c_in(ci_out[533]), //Inputs
		.s(y_b[582]), .c_out(ci_out[534]) //Outputs 
	);
	fa_1b fa534(
		.a(x_a[552]), .b(y_b[552]), .c_in(ci_out[534]), //Inputs
		.s(y_b[583]), .c_out(ci_out[535]) //Outputs 
	);
	fa_1b fa535(
		.a(x_a[553]), .b(y_b[553]), .c_in(ci_out[535]), //Inputs
		.s(y_b[584]), .c_out(ci_out[536]) //Outputs 
	);
	fa_1b fa536(
		.a(x_a[554]), .b(y_b[554]), .c_in(ci_out[536]), //Inputs
		.s(y_b[585]), .c_out(ci_out[537]) //Outputs 
	);
	fa_1b fa537(
		.a(x_a[555]), .b(y_b[555]), .c_in(ci_out[537]), //Inputs
		.s(y_b[586]), .c_out(ci_out[538]) //Outputs 
	);
	fa_1b fa538(
		.a(x_a[556]), .b(y_b[556]), .c_in(ci_out[538]), //Inputs
		.s(y_b[587]), .c_out(ci_out[539]) //Outputs 
	);
	fa_1b fa539(
		.a(x_a[557]), .b(y_b[557]), .c_in(ci_out[539]), //Inputs
		.s(y_b[588]), .c_out(ci_out[540]) //Outputs 
	);
	fa_1b fa540(
		.a(x_a[558]), .b(y_b[558]), .c_in(ci_out[540]), //Inputs
		.s(y_b[589]), .c_out(ci_out[541]) //Outputs 
	);
	fa_1b fa541(
		.a(x_a[559]), .b(y_b[559]), .c_in(ci_out[541]), //Inputs
		.s(y_b[590]), .c_out(ci_out[542]) //Outputs 
	);
	fa_1b fa542(
		.a(x_a[560]), .b(y_b[560]), .c_in(ci_out[542]), //Inputs
		.s(y_b[591]), .c_out(ci_out[543]) //Outputs 
	);
	fa_1b fa543(
		.a(x_a[561]), .b(y_b[561]), .c_in(ci_out[543]), //Inputs
		.s(y_b[592]), .c_out(ci_out[544]) //Outputs 
	);
	fa_1b fa544(
		.a(x_a[562]), .b(y_b[562]), .c_in(ci_out[544]), //Inputs
		.s(y_b[593]), .c_out(ci_out[545]) //Outputs 
	);
	fa_1b fa545(
		.a(x_a[563]), .b(y_b[563]), .c_in(ci_out[545]), //Inputs
		.s(y_b[594]), .c_out(ci_out[546]) //Outputs 
	);
	fa_1b fa546(
		.a(x_a[564]), .b(y_b[564]), .c_in(ci_out[546]), //Inputs
		.s(y_b[595]), .c_out(ci_out[547]) //Outputs 
	);
	fa_1b fa547(
		.a(x_a[565]), .b(y_b[565]), .c_in(ci_out[547]), //Inputs
		.s(y_b[596]), .c_out(ci_out[548]) //Outputs 
	);
	fa_1b fa548(
		.a(x_a[566]), .b(y_b[566]), .c_in(ci_out[548]), //Inputs
		.s(y_b[597]), .c_out(ci_out[549]) //Outputs 
	);
	fa_1b fa549(
		.a(x_a[567]), .b(y_b[567]), .c_in(ci_out[549]), //Inputs
		.s(y_b[598]), .c_out(ci_out[550]) //Outputs 
	);
	fa_1b fa550(
		.a(x_a[568]), .b(y_b[568]), .c_in(ci_out[550]), //Inputs
		.s(y_b[599]), .c_out(ci_out[551]) //Outputs 
	);
	fa_1b fa551(
		.a(x_a[569]), .b(y_b[569]), .c_in(ci_out[551]), //Inputs
		.s(y_b[600]), .c_out(ci_out[552]) //Outputs 
	);
	fa_1b fa552(
		.a(x_a[570]), .b(y_b[570]), .c_in(ci_out[552]), //Inputs
		.s(y_b[601]), .c_out(ci_out[553]) //Outputs 
	);
	fa_1b fa553(
		.a(x_a[571]), .b(y_b[571]), .c_in(ci_out[553]), //Inputs
		.s(y_b[602]), .c_out(ci_out[554]) //Outputs 
	);
	fa_1b fa554(
		.a(x_a[572]), .b(y_b[572]), .c_in(ci_out[554]), //Inputs
		.s(y_b[603]), .c_out(ci_out[555]) //Outputs 
	);
	fa_1b fa555(
		.a(x_a[573]), .b(y_b[573]), .c_in(ci_out[555]), //Inputs
		.s(y_b[604]), .c_out(ci_out[556]) //Outputs 
	);
	fa_1b fa556(
		.a(x_a[574]), .b(y_b[574]), .c_in(ci_out[556]), //Inputs
		.s(y_b[605]), .c_out(ci_out[557]) //Outputs 
	);
	fa_1b fa557(
		.a(x_a[575]), .b(y_b[575]), .c_in(ci_out[557]), //Inputs
		.s(y_b[606]), .c_out(y_b[607]) //Outputs 
	);

	//Stage 18
	ha_1b ha18(
		.a(x_a[576]), .b(y_b[576]), //Inputs
		.s(to_cut_res[19]), .c_out(ci_out[558]) //Outputs 
	);
	fa_1b fa558(
		.a(x_a[577]), .b(y_b[577]), .c_in(ci_out[558]), //Inputs
		.s(y_b[608]), .c_out(ci_out[559]) //Outputs 
	);
	fa_1b fa559(
		.a(x_a[578]), .b(y_b[578]), .c_in(ci_out[559]), //Inputs
		.s(y_b[609]), .c_out(ci_out[560]) //Outputs 
	);
	fa_1b fa560(
		.a(x_a[579]), .b(y_b[579]), .c_in(ci_out[560]), //Inputs
		.s(y_b[610]), .c_out(ci_out[561]) //Outputs 
	);
	fa_1b fa561(
		.a(x_a[580]), .b(y_b[580]), .c_in(ci_out[561]), //Inputs
		.s(y_b[611]), .c_out(ci_out[562]) //Outputs 
	);
	fa_1b fa562(
		.a(x_a[581]), .b(y_b[581]), .c_in(ci_out[562]), //Inputs
		.s(y_b[612]), .c_out(ci_out[563]) //Outputs 
	);
	fa_1b fa563(
		.a(x_a[582]), .b(y_b[582]), .c_in(ci_out[563]), //Inputs
		.s(y_b[613]), .c_out(ci_out[564]) //Outputs 
	);
	fa_1b fa564(
		.a(x_a[583]), .b(y_b[583]), .c_in(ci_out[564]), //Inputs
		.s(y_b[614]), .c_out(ci_out[565]) //Outputs 
	);
	fa_1b fa565(
		.a(x_a[584]), .b(y_b[584]), .c_in(ci_out[565]), //Inputs
		.s(y_b[615]), .c_out(ci_out[566]) //Outputs 
	);
	fa_1b fa566(
		.a(x_a[585]), .b(y_b[585]), .c_in(ci_out[566]), //Inputs
		.s(y_b[616]), .c_out(ci_out[567]) //Outputs 
	);
	fa_1b fa567(
		.a(x_a[586]), .b(y_b[586]), .c_in(ci_out[567]), //Inputs
		.s(y_b[617]), .c_out(ci_out[568]) //Outputs 
	);
	fa_1b fa568(
		.a(x_a[587]), .b(y_b[587]), .c_in(ci_out[568]), //Inputs
		.s(y_b[618]), .c_out(ci_out[569]) //Outputs 
	);
	fa_1b fa569(
		.a(x_a[588]), .b(y_b[588]), .c_in(ci_out[569]), //Inputs
		.s(y_b[619]), .c_out(ci_out[570]) //Outputs 
	);
	fa_1b fa570(
		.a(x_a[589]), .b(y_b[589]), .c_in(ci_out[570]), //Inputs
		.s(y_b[620]), .c_out(ci_out[571]) //Outputs 
	);
	fa_1b fa571(
		.a(x_a[590]), .b(y_b[590]), .c_in(ci_out[571]), //Inputs
		.s(y_b[621]), .c_out(ci_out[572]) //Outputs 
	);
	fa_1b fa572(
		.a(x_a[591]), .b(y_b[591]), .c_in(ci_out[572]), //Inputs
		.s(y_b[622]), .c_out(ci_out[573]) //Outputs 
	);
	fa_1b fa573(
		.a(x_a[592]), .b(y_b[592]), .c_in(ci_out[573]), //Inputs
		.s(y_b[623]), .c_out(ci_out[574]) //Outputs 
	);
	fa_1b fa574(
		.a(x_a[593]), .b(y_b[593]), .c_in(ci_out[574]), //Inputs
		.s(y_b[624]), .c_out(ci_out[575]) //Outputs 
	);
	fa_1b fa575(
		.a(x_a[594]), .b(y_b[594]), .c_in(ci_out[575]), //Inputs
		.s(y_b[625]), .c_out(ci_out[576]) //Outputs 
	);
	fa_1b fa576(
		.a(x_a[595]), .b(y_b[595]), .c_in(ci_out[576]), //Inputs
		.s(y_b[626]), .c_out(ci_out[577]) //Outputs 
	);
	fa_1b fa577(
		.a(x_a[596]), .b(y_b[596]), .c_in(ci_out[577]), //Inputs
		.s(y_b[627]), .c_out(ci_out[578]) //Outputs 
	);
	fa_1b fa578(
		.a(x_a[597]), .b(y_b[597]), .c_in(ci_out[578]), //Inputs
		.s(y_b[628]), .c_out(ci_out[579]) //Outputs 
	);
	fa_1b fa579(
		.a(x_a[598]), .b(y_b[598]), .c_in(ci_out[579]), //Inputs
		.s(y_b[629]), .c_out(ci_out[580]) //Outputs 
	);
	fa_1b fa580(
		.a(x_a[599]), .b(y_b[599]), .c_in(ci_out[580]), //Inputs
		.s(y_b[630]), .c_out(ci_out[581]) //Outputs 
	);
	fa_1b fa581(
		.a(x_a[600]), .b(y_b[600]), .c_in(ci_out[581]), //Inputs
		.s(y_b[631]), .c_out(ci_out[582]) //Outputs 
	);
	fa_1b fa582(
		.a(x_a[601]), .b(y_b[601]), .c_in(ci_out[582]), //Inputs
		.s(y_b[632]), .c_out(ci_out[583]) //Outputs 
	);
	fa_1b fa583(
		.a(x_a[602]), .b(y_b[602]), .c_in(ci_out[583]), //Inputs
		.s(y_b[633]), .c_out(ci_out[584]) //Outputs 
	);
	fa_1b fa584(
		.a(x_a[603]), .b(y_b[603]), .c_in(ci_out[584]), //Inputs
		.s(y_b[634]), .c_out(ci_out[585]) //Outputs 
	);
	fa_1b fa585(
		.a(x_a[604]), .b(y_b[604]), .c_in(ci_out[585]), //Inputs
		.s(y_b[635]), .c_out(ci_out[586]) //Outputs 
	);
	fa_1b fa586(
		.a(x_a[605]), .b(y_b[605]), .c_in(ci_out[586]), //Inputs
		.s(y_b[636]), .c_out(ci_out[587]) //Outputs 
	);
	fa_1b fa587(
		.a(x_a[606]), .b(y_b[606]), .c_in(ci_out[587]), //Inputs
		.s(y_b[637]), .c_out(ci_out[588]) //Outputs 
	);
	fa_1b fa588(
		.a(x_a[607]), .b(y_b[607]), .c_in(ci_out[588]), //Inputs
		.s(y_b[638]), .c_out(y_b[639]) //Outputs 
	);

	//Stage 19
	ha_1b ha19(
		.a(x_a[608]), .b(y_b[608]), //Inputs
		.s(to_cut_res[20]), .c_out(ci_out[589]) //Outputs 
	);
	fa_1b fa589(
		.a(x_a[609]), .b(y_b[609]), .c_in(ci_out[589]), //Inputs
		.s(y_b[640]), .c_out(ci_out[590]) //Outputs 
	);
	fa_1b fa590(
		.a(x_a[610]), .b(y_b[610]), .c_in(ci_out[590]), //Inputs
		.s(y_b[641]), .c_out(ci_out[591]) //Outputs 
	);
	fa_1b fa591(
		.a(x_a[611]), .b(y_b[611]), .c_in(ci_out[591]), //Inputs
		.s(y_b[642]), .c_out(ci_out[592]) //Outputs 
	);
	fa_1b fa592(
		.a(x_a[612]), .b(y_b[612]), .c_in(ci_out[592]), //Inputs
		.s(y_b[643]), .c_out(ci_out[593]) //Outputs 
	);
	fa_1b fa593(
		.a(x_a[613]), .b(y_b[613]), .c_in(ci_out[593]), //Inputs
		.s(y_b[644]), .c_out(ci_out[594]) //Outputs 
	);
	fa_1b fa594(
		.a(x_a[614]), .b(y_b[614]), .c_in(ci_out[594]), //Inputs
		.s(y_b[645]), .c_out(ci_out[595]) //Outputs 
	);
	fa_1b fa595(
		.a(x_a[615]), .b(y_b[615]), .c_in(ci_out[595]), //Inputs
		.s(y_b[646]), .c_out(ci_out[596]) //Outputs 
	);
	fa_1b fa596(
		.a(x_a[616]), .b(y_b[616]), .c_in(ci_out[596]), //Inputs
		.s(y_b[647]), .c_out(ci_out[597]) //Outputs 
	);
	fa_1b fa597(
		.a(x_a[617]), .b(y_b[617]), .c_in(ci_out[597]), //Inputs
		.s(y_b[648]), .c_out(ci_out[598]) //Outputs 
	);
	fa_1b fa598(
		.a(x_a[618]), .b(y_b[618]), .c_in(ci_out[598]), //Inputs
		.s(y_b[649]), .c_out(ci_out[599]) //Outputs 
	);
	fa_1b fa599(
		.a(x_a[619]), .b(y_b[619]), .c_in(ci_out[599]), //Inputs
		.s(y_b[650]), .c_out(ci_out[600]) //Outputs 
	);
	fa_1b fa600(
		.a(x_a[620]), .b(y_b[620]), .c_in(ci_out[600]), //Inputs
		.s(y_b[651]), .c_out(ci_out[601]) //Outputs 
	);
	fa_1b fa601(
		.a(x_a[621]), .b(y_b[621]), .c_in(ci_out[601]), //Inputs
		.s(y_b[652]), .c_out(ci_out[602]) //Outputs 
	);
	fa_1b fa602(
		.a(x_a[622]), .b(y_b[622]), .c_in(ci_out[602]), //Inputs
		.s(y_b[653]), .c_out(ci_out[603]) //Outputs 
	);
	fa_1b fa603(
		.a(x_a[623]), .b(y_b[623]), .c_in(ci_out[603]), //Inputs
		.s(y_b[654]), .c_out(ci_out[604]) //Outputs 
	);
	fa_1b fa604(
		.a(x_a[624]), .b(y_b[624]), .c_in(ci_out[604]), //Inputs
		.s(y_b[655]), .c_out(ci_out[605]) //Outputs 
	);
	fa_1b fa605(
		.a(x_a[625]), .b(y_b[625]), .c_in(ci_out[605]), //Inputs
		.s(y_b[656]), .c_out(ci_out[606]) //Outputs 
	);
	fa_1b fa606(
		.a(x_a[626]), .b(y_b[626]), .c_in(ci_out[606]), //Inputs
		.s(y_b[657]), .c_out(ci_out[607]) //Outputs 
	);
	fa_1b fa607(
		.a(x_a[627]), .b(y_b[627]), .c_in(ci_out[607]), //Inputs
		.s(y_b[658]), .c_out(ci_out[608]) //Outputs 
	);
	fa_1b fa608(
		.a(x_a[628]), .b(y_b[628]), .c_in(ci_out[608]), //Inputs
		.s(y_b[659]), .c_out(ci_out[609]) //Outputs 
	);
	fa_1b fa609(
		.a(x_a[629]), .b(y_b[629]), .c_in(ci_out[609]), //Inputs
		.s(y_b[660]), .c_out(ci_out[610]) //Outputs 
	);
	fa_1b fa610(
		.a(x_a[630]), .b(y_b[630]), .c_in(ci_out[610]), //Inputs
		.s(y_b[661]), .c_out(ci_out[611]) //Outputs 
	);
	fa_1b fa611(
		.a(x_a[631]), .b(y_b[631]), .c_in(ci_out[611]), //Inputs
		.s(y_b[662]), .c_out(ci_out[612]) //Outputs 
	);
	fa_1b fa612(
		.a(x_a[632]), .b(y_b[632]), .c_in(ci_out[612]), //Inputs
		.s(y_b[663]), .c_out(ci_out[613]) //Outputs 
	);
	fa_1b fa613(
		.a(x_a[633]), .b(y_b[633]), .c_in(ci_out[613]), //Inputs
		.s(y_b[664]), .c_out(ci_out[614]) //Outputs 
	);
	fa_1b fa614(
		.a(x_a[634]), .b(y_b[634]), .c_in(ci_out[614]), //Inputs
		.s(y_b[665]), .c_out(ci_out[615]) //Outputs 
	);
	fa_1b fa615(
		.a(x_a[635]), .b(y_b[635]), .c_in(ci_out[615]), //Inputs
		.s(y_b[666]), .c_out(ci_out[616]) //Outputs 
	);
	fa_1b fa616(
		.a(x_a[636]), .b(y_b[636]), .c_in(ci_out[616]), //Inputs
		.s(y_b[667]), .c_out(ci_out[617]) //Outputs 
	);
	fa_1b fa617(
		.a(x_a[637]), .b(y_b[637]), .c_in(ci_out[617]), //Inputs
		.s(y_b[668]), .c_out(ci_out[618]) //Outputs 
	);
	fa_1b fa618(
		.a(x_a[638]), .b(y_b[638]), .c_in(ci_out[618]), //Inputs
		.s(y_b[669]), .c_out(ci_out[619]) //Outputs 
	);
	fa_1b fa619(
		.a(x_a[639]), .b(y_b[639]), .c_in(ci_out[619]), //Inputs
		.s(y_b[670]), .c_out(y_b[671]) //Outputs 
	);

	//Stage 20
	ha_1b ha20(
		.a(x_a[640]), .b(y_b[640]), //Inputs
		.s(to_cut_res[21]), .c_out(ci_out[620]) //Outputs 
	);
	fa_1b fa620(
		.a(x_a[641]), .b(y_b[641]), .c_in(ci_out[620]), //Inputs
		.s(y_b[672]), .c_out(ci_out[621]) //Outputs 
	);
	fa_1b fa621(
		.a(x_a[642]), .b(y_b[642]), .c_in(ci_out[621]), //Inputs
		.s(y_b[673]), .c_out(ci_out[622]) //Outputs 
	);
	fa_1b fa622(
		.a(x_a[643]), .b(y_b[643]), .c_in(ci_out[622]), //Inputs
		.s(y_b[674]), .c_out(ci_out[623]) //Outputs 
	);
	fa_1b fa623(
		.a(x_a[644]), .b(y_b[644]), .c_in(ci_out[623]), //Inputs
		.s(y_b[675]), .c_out(ci_out[624]) //Outputs 
	);
	fa_1b fa624(
		.a(x_a[645]), .b(y_b[645]), .c_in(ci_out[624]), //Inputs
		.s(y_b[676]), .c_out(ci_out[625]) //Outputs 
	);
	fa_1b fa625(
		.a(x_a[646]), .b(y_b[646]), .c_in(ci_out[625]), //Inputs
		.s(y_b[677]), .c_out(ci_out[626]) //Outputs 
	);
	fa_1b fa626(
		.a(x_a[647]), .b(y_b[647]), .c_in(ci_out[626]), //Inputs
		.s(y_b[678]), .c_out(ci_out[627]) //Outputs 
	);
	fa_1b fa627(
		.a(x_a[648]), .b(y_b[648]), .c_in(ci_out[627]), //Inputs
		.s(y_b[679]), .c_out(ci_out[628]) //Outputs 
	);
	fa_1b fa628(
		.a(x_a[649]), .b(y_b[649]), .c_in(ci_out[628]), //Inputs
		.s(y_b[680]), .c_out(ci_out[629]) //Outputs 
	);
	fa_1b fa629(
		.a(x_a[650]), .b(y_b[650]), .c_in(ci_out[629]), //Inputs
		.s(y_b[681]), .c_out(ci_out[630]) //Outputs 
	);
	fa_1b fa630(
		.a(x_a[651]), .b(y_b[651]), .c_in(ci_out[630]), //Inputs
		.s(y_b[682]), .c_out(ci_out[631]) //Outputs 
	);
	fa_1b fa631(
		.a(x_a[652]), .b(y_b[652]), .c_in(ci_out[631]), //Inputs
		.s(y_b[683]), .c_out(ci_out[632]) //Outputs 
	);
	fa_1b fa632(
		.a(x_a[653]), .b(y_b[653]), .c_in(ci_out[632]), //Inputs
		.s(y_b[684]), .c_out(ci_out[633]) //Outputs 
	);
	fa_1b fa633(
		.a(x_a[654]), .b(y_b[654]), .c_in(ci_out[633]), //Inputs
		.s(y_b[685]), .c_out(ci_out[634]) //Outputs 
	);
	fa_1b fa634(
		.a(x_a[655]), .b(y_b[655]), .c_in(ci_out[634]), //Inputs
		.s(y_b[686]), .c_out(ci_out[635]) //Outputs 
	);
	fa_1b fa635(
		.a(x_a[656]), .b(y_b[656]), .c_in(ci_out[635]), //Inputs
		.s(y_b[687]), .c_out(ci_out[636]) //Outputs 
	);
	fa_1b fa636(
		.a(x_a[657]), .b(y_b[657]), .c_in(ci_out[636]), //Inputs
		.s(y_b[688]), .c_out(ci_out[637]) //Outputs 
	);
	fa_1b fa637(
		.a(x_a[658]), .b(y_b[658]), .c_in(ci_out[637]), //Inputs
		.s(y_b[689]), .c_out(ci_out[638]) //Outputs 
	);
	fa_1b fa638(
		.a(x_a[659]), .b(y_b[659]), .c_in(ci_out[638]), //Inputs
		.s(y_b[690]), .c_out(ci_out[639]) //Outputs 
	);
	fa_1b fa639(
		.a(x_a[660]), .b(y_b[660]), .c_in(ci_out[639]), //Inputs
		.s(y_b[691]), .c_out(ci_out[640]) //Outputs 
	);
	fa_1b fa640(
		.a(x_a[661]), .b(y_b[661]), .c_in(ci_out[640]), //Inputs
		.s(y_b[692]), .c_out(ci_out[641]) //Outputs 
	);
	fa_1b fa641(
		.a(x_a[662]), .b(y_b[662]), .c_in(ci_out[641]), //Inputs
		.s(y_b[693]), .c_out(ci_out[642]) //Outputs 
	);
	fa_1b fa642(
		.a(x_a[663]), .b(y_b[663]), .c_in(ci_out[642]), //Inputs
		.s(y_b[694]), .c_out(ci_out[643]) //Outputs 
	);
	fa_1b fa643(
		.a(x_a[664]), .b(y_b[664]), .c_in(ci_out[643]), //Inputs
		.s(y_b[695]), .c_out(ci_out[644]) //Outputs 
	);
	fa_1b fa644(
		.a(x_a[665]), .b(y_b[665]), .c_in(ci_out[644]), //Inputs
		.s(y_b[696]), .c_out(ci_out[645]) //Outputs 
	);
	fa_1b fa645(
		.a(x_a[666]), .b(y_b[666]), .c_in(ci_out[645]), //Inputs
		.s(y_b[697]), .c_out(ci_out[646]) //Outputs 
	);
	fa_1b fa646(
		.a(x_a[667]), .b(y_b[667]), .c_in(ci_out[646]), //Inputs
		.s(y_b[698]), .c_out(ci_out[647]) //Outputs 
	);
	fa_1b fa647(
		.a(x_a[668]), .b(y_b[668]), .c_in(ci_out[647]), //Inputs
		.s(y_b[699]), .c_out(ci_out[648]) //Outputs 
	);
	fa_1b fa648(
		.a(x_a[669]), .b(y_b[669]), .c_in(ci_out[648]), //Inputs
		.s(y_b[700]), .c_out(ci_out[649]) //Outputs 
	);
	fa_1b fa649(
		.a(x_a[670]), .b(y_b[670]), .c_in(ci_out[649]), //Inputs
		.s(y_b[701]), .c_out(ci_out[650]) //Outputs 
	);
	fa_1b fa650(
		.a(x_a[671]), .b(y_b[671]), .c_in(ci_out[650]), //Inputs
		.s(y_b[702]), .c_out(y_b[703]) //Outputs 
	);

	//Stage 21
	ha_1b ha21(
		.a(x_a[672]), .b(y_b[672]), //Inputs
		.s(to_cut_res[22]), .c_out(ci_out[651]) //Outputs 
	);
	fa_1b fa651(
		.a(x_a[673]), .b(y_b[673]), .c_in(ci_out[651]), //Inputs
		.s(y_b[704]), .c_out(ci_out[652]) //Outputs 
	);
	fa_1b fa652(
		.a(x_a[674]), .b(y_b[674]), .c_in(ci_out[652]), //Inputs
		.s(y_b[705]), .c_out(ci_out[653]) //Outputs 
	);
	fa_1b fa653(
		.a(x_a[675]), .b(y_b[675]), .c_in(ci_out[653]), //Inputs
		.s(y_b[706]), .c_out(ci_out[654]) //Outputs 
	);
	fa_1b fa654(
		.a(x_a[676]), .b(y_b[676]), .c_in(ci_out[654]), //Inputs
		.s(y_b[707]), .c_out(ci_out[655]) //Outputs 
	);
	fa_1b fa655(
		.a(x_a[677]), .b(y_b[677]), .c_in(ci_out[655]), //Inputs
		.s(y_b[708]), .c_out(ci_out[656]) //Outputs 
	);
	fa_1b fa656(
		.a(x_a[678]), .b(y_b[678]), .c_in(ci_out[656]), //Inputs
		.s(y_b[709]), .c_out(ci_out[657]) //Outputs 
	);
	fa_1b fa657(
		.a(x_a[679]), .b(y_b[679]), .c_in(ci_out[657]), //Inputs
		.s(y_b[710]), .c_out(ci_out[658]) //Outputs 
	);
	fa_1b fa658(
		.a(x_a[680]), .b(y_b[680]), .c_in(ci_out[658]), //Inputs
		.s(y_b[711]), .c_out(ci_out[659]) //Outputs 
	);
	fa_1b fa659(
		.a(x_a[681]), .b(y_b[681]), .c_in(ci_out[659]), //Inputs
		.s(y_b[712]), .c_out(ci_out[660]) //Outputs 
	);
	fa_1b fa660(
		.a(x_a[682]), .b(y_b[682]), .c_in(ci_out[660]), //Inputs
		.s(y_b[713]), .c_out(ci_out[661]) //Outputs 
	);
	fa_1b fa661(
		.a(x_a[683]), .b(y_b[683]), .c_in(ci_out[661]), //Inputs
		.s(y_b[714]), .c_out(ci_out[662]) //Outputs 
	);
	fa_1b fa662(
		.a(x_a[684]), .b(y_b[684]), .c_in(ci_out[662]), //Inputs
		.s(y_b[715]), .c_out(ci_out[663]) //Outputs 
	);
	fa_1b fa663(
		.a(x_a[685]), .b(y_b[685]), .c_in(ci_out[663]), //Inputs
		.s(y_b[716]), .c_out(ci_out[664]) //Outputs 
	);
	fa_1b fa664(
		.a(x_a[686]), .b(y_b[686]), .c_in(ci_out[664]), //Inputs
		.s(y_b[717]), .c_out(ci_out[665]) //Outputs 
	);
	fa_1b fa665(
		.a(x_a[687]), .b(y_b[687]), .c_in(ci_out[665]), //Inputs
		.s(y_b[718]), .c_out(ci_out[666]) //Outputs 
	);
	fa_1b fa666(
		.a(x_a[688]), .b(y_b[688]), .c_in(ci_out[666]), //Inputs
		.s(y_b[719]), .c_out(ci_out[667]) //Outputs 
	);
	fa_1b fa667(
		.a(x_a[689]), .b(y_b[689]), .c_in(ci_out[667]), //Inputs
		.s(y_b[720]), .c_out(ci_out[668]) //Outputs 
	);
	fa_1b fa668(
		.a(x_a[690]), .b(y_b[690]), .c_in(ci_out[668]), //Inputs
		.s(y_b[721]), .c_out(ci_out[669]) //Outputs 
	);
	fa_1b fa669(
		.a(x_a[691]), .b(y_b[691]), .c_in(ci_out[669]), //Inputs
		.s(y_b[722]), .c_out(ci_out[670]) //Outputs 
	);
	fa_1b fa670(
		.a(x_a[692]), .b(y_b[692]), .c_in(ci_out[670]), //Inputs
		.s(y_b[723]), .c_out(ci_out[671]) //Outputs 
	);
	fa_1b fa671(
		.a(x_a[693]), .b(y_b[693]), .c_in(ci_out[671]), //Inputs
		.s(y_b[724]), .c_out(ci_out[672]) //Outputs 
	);
	fa_1b fa672(
		.a(x_a[694]), .b(y_b[694]), .c_in(ci_out[672]), //Inputs
		.s(y_b[725]), .c_out(ci_out[673]) //Outputs 
	);
	fa_1b fa673(
		.a(x_a[695]), .b(y_b[695]), .c_in(ci_out[673]), //Inputs
		.s(y_b[726]), .c_out(ci_out[674]) //Outputs 
	);
	fa_1b fa674(
		.a(x_a[696]), .b(y_b[696]), .c_in(ci_out[674]), //Inputs
		.s(y_b[727]), .c_out(ci_out[675]) //Outputs 
	);
	fa_1b fa675(
		.a(x_a[697]), .b(y_b[697]), .c_in(ci_out[675]), //Inputs
		.s(y_b[728]), .c_out(ci_out[676]) //Outputs 
	);
	fa_1b fa676(
		.a(x_a[698]), .b(y_b[698]), .c_in(ci_out[676]), //Inputs
		.s(y_b[729]), .c_out(ci_out[677]) //Outputs 
	);
	fa_1b fa677(
		.a(x_a[699]), .b(y_b[699]), .c_in(ci_out[677]), //Inputs
		.s(y_b[730]), .c_out(ci_out[678]) //Outputs 
	);
	fa_1b fa678(
		.a(x_a[700]), .b(y_b[700]), .c_in(ci_out[678]), //Inputs
		.s(y_b[731]), .c_out(ci_out[679]) //Outputs 
	);
	fa_1b fa679(
		.a(x_a[701]), .b(y_b[701]), .c_in(ci_out[679]), //Inputs
		.s(y_b[732]), .c_out(ci_out[680]) //Outputs 
	);
	fa_1b fa680(
		.a(x_a[702]), .b(y_b[702]), .c_in(ci_out[680]), //Inputs
		.s(y_b[733]), .c_out(ci_out[681]) //Outputs 
	);
	fa_1b fa681(
		.a(x_a[703]), .b(y_b[703]), .c_in(ci_out[681]), //Inputs
		.s(y_b[734]), .c_out(y_b[735]) //Outputs 
	);

	//Stage 22
	ha_1b ha22(
		.a(x_a[704]), .b(y_b[704]), //Inputs
		.s(to_cut_res[23]), .c_out(ci_out[682]) //Outputs 
	);
	fa_1b fa682(
		.a(x_a[705]), .b(y_b[705]), .c_in(ci_out[682]), //Inputs
		.s(y_b[736]), .c_out(ci_out[683]) //Outputs 
	);
	fa_1b fa683(
		.a(x_a[706]), .b(y_b[706]), .c_in(ci_out[683]), //Inputs
		.s(y_b[737]), .c_out(ci_out[684]) //Outputs 
	);
	fa_1b fa684(
		.a(x_a[707]), .b(y_b[707]), .c_in(ci_out[684]), //Inputs
		.s(y_b[738]), .c_out(ci_out[685]) //Outputs 
	);
	fa_1b fa685(
		.a(x_a[708]), .b(y_b[708]), .c_in(ci_out[685]), //Inputs
		.s(y_b[739]), .c_out(ci_out[686]) //Outputs 
	);
	fa_1b fa686(
		.a(x_a[709]), .b(y_b[709]), .c_in(ci_out[686]), //Inputs
		.s(y_b[740]), .c_out(ci_out[687]) //Outputs 
	);
	fa_1b fa687(
		.a(x_a[710]), .b(y_b[710]), .c_in(ci_out[687]), //Inputs
		.s(y_b[741]), .c_out(ci_out[688]) //Outputs 
	);
	fa_1b fa688(
		.a(x_a[711]), .b(y_b[711]), .c_in(ci_out[688]), //Inputs
		.s(y_b[742]), .c_out(ci_out[689]) //Outputs 
	);
	fa_1b fa689(
		.a(x_a[712]), .b(y_b[712]), .c_in(ci_out[689]), //Inputs
		.s(y_b[743]), .c_out(ci_out[690]) //Outputs 
	);
	fa_1b fa690(
		.a(x_a[713]), .b(y_b[713]), .c_in(ci_out[690]), //Inputs
		.s(y_b[744]), .c_out(ci_out[691]) //Outputs 
	);
	fa_1b fa691(
		.a(x_a[714]), .b(y_b[714]), .c_in(ci_out[691]), //Inputs
		.s(y_b[745]), .c_out(ci_out[692]) //Outputs 
	);
	fa_1b fa692(
		.a(x_a[715]), .b(y_b[715]), .c_in(ci_out[692]), //Inputs
		.s(y_b[746]), .c_out(ci_out[693]) //Outputs 
	);
	fa_1b fa693(
		.a(x_a[716]), .b(y_b[716]), .c_in(ci_out[693]), //Inputs
		.s(y_b[747]), .c_out(ci_out[694]) //Outputs 
	);
	fa_1b fa694(
		.a(x_a[717]), .b(y_b[717]), .c_in(ci_out[694]), //Inputs
		.s(y_b[748]), .c_out(ci_out[695]) //Outputs 
	);
	fa_1b fa695(
		.a(x_a[718]), .b(y_b[718]), .c_in(ci_out[695]), //Inputs
		.s(y_b[749]), .c_out(ci_out[696]) //Outputs 
	);
	fa_1b fa696(
		.a(x_a[719]), .b(y_b[719]), .c_in(ci_out[696]), //Inputs
		.s(y_b[750]), .c_out(ci_out[697]) //Outputs 
	);
	fa_1b fa697(
		.a(x_a[720]), .b(y_b[720]), .c_in(ci_out[697]), //Inputs
		.s(y_b[751]), .c_out(ci_out[698]) //Outputs 
	);
	fa_1b fa698(
		.a(x_a[721]), .b(y_b[721]), .c_in(ci_out[698]), //Inputs
		.s(y_b[752]), .c_out(ci_out[699]) //Outputs 
	);
	fa_1b fa699(
		.a(x_a[722]), .b(y_b[722]), .c_in(ci_out[699]), //Inputs
		.s(y_b[753]), .c_out(ci_out[700]) //Outputs 
	);
	fa_1b fa700(
		.a(x_a[723]), .b(y_b[723]), .c_in(ci_out[700]), //Inputs
		.s(y_b[754]), .c_out(ci_out[701]) //Outputs 
	);
	fa_1b fa701(
		.a(x_a[724]), .b(y_b[724]), .c_in(ci_out[701]), //Inputs
		.s(y_b[755]), .c_out(ci_out[702]) //Outputs 
	);
	fa_1b fa702(
		.a(x_a[725]), .b(y_b[725]), .c_in(ci_out[702]), //Inputs
		.s(y_b[756]), .c_out(ci_out[703]) //Outputs 
	);
	fa_1b fa703(
		.a(x_a[726]), .b(y_b[726]), .c_in(ci_out[703]), //Inputs
		.s(y_b[757]), .c_out(ci_out[704]) //Outputs 
	);
	fa_1b fa704(
		.a(x_a[727]), .b(y_b[727]), .c_in(ci_out[704]), //Inputs
		.s(y_b[758]), .c_out(ci_out[705]) //Outputs 
	);
	fa_1b fa705(
		.a(x_a[728]), .b(y_b[728]), .c_in(ci_out[705]), //Inputs
		.s(y_b[759]), .c_out(ci_out[706]) //Outputs 
	);
	fa_1b fa706(
		.a(x_a[729]), .b(y_b[729]), .c_in(ci_out[706]), //Inputs
		.s(y_b[760]), .c_out(ci_out[707]) //Outputs 
	);
	fa_1b fa707(
		.a(x_a[730]), .b(y_b[730]), .c_in(ci_out[707]), //Inputs
		.s(y_b[761]), .c_out(ci_out[708]) //Outputs 
	);
	fa_1b fa708(
		.a(x_a[731]), .b(y_b[731]), .c_in(ci_out[708]), //Inputs
		.s(y_b[762]), .c_out(ci_out[709]) //Outputs 
	);
	fa_1b fa709(
		.a(x_a[732]), .b(y_b[732]), .c_in(ci_out[709]), //Inputs
		.s(y_b[763]), .c_out(ci_out[710]) //Outputs 
	);
	fa_1b fa710(
		.a(x_a[733]), .b(y_b[733]), .c_in(ci_out[710]), //Inputs
		.s(y_b[764]), .c_out(ci_out[711]) //Outputs 
	);
	fa_1b fa711(
		.a(x_a[734]), .b(y_b[734]), .c_in(ci_out[711]), //Inputs
		.s(y_b[765]), .c_out(ci_out[712]) //Outputs 
	);
	fa_1b fa712(
		.a(x_a[735]), .b(y_b[735]), .c_in(ci_out[712]), //Inputs
		.s(y_b[766]), .c_out(y_b[767]) //Outputs 
	);

	//Stage 23
	ha_1b ha23(
		.a(x_a[736]), .b(y_b[736]), //Inputs
		.s(to_cut_res[24]), .c_out(ci_out[713]) //Outputs 
	);
	fa_1b fa713(
		.a(x_a[737]), .b(y_b[737]), .c_in(ci_out[713]), //Inputs
		.s(y_b[768]), .c_out(ci_out[714]) //Outputs 
	);
	fa_1b fa714(
		.a(x_a[738]), .b(y_b[738]), .c_in(ci_out[714]), //Inputs
		.s(y_b[769]), .c_out(ci_out[715]) //Outputs 
	);
	fa_1b fa715(
		.a(x_a[739]), .b(y_b[739]), .c_in(ci_out[715]), //Inputs
		.s(y_b[770]), .c_out(ci_out[716]) //Outputs 
	);
	fa_1b fa716(
		.a(x_a[740]), .b(y_b[740]), .c_in(ci_out[716]), //Inputs
		.s(y_b[771]), .c_out(ci_out[717]) //Outputs 
	);
	fa_1b fa717(
		.a(x_a[741]), .b(y_b[741]), .c_in(ci_out[717]), //Inputs
		.s(y_b[772]), .c_out(ci_out[718]) //Outputs 
	);
	fa_1b fa718(
		.a(x_a[742]), .b(y_b[742]), .c_in(ci_out[718]), //Inputs
		.s(y_b[773]), .c_out(ci_out[719]) //Outputs 
	);
	fa_1b fa719(
		.a(x_a[743]), .b(y_b[743]), .c_in(ci_out[719]), //Inputs
		.s(y_b[774]), .c_out(ci_out[720]) //Outputs 
	);
	fa_1b fa720(
		.a(x_a[744]), .b(y_b[744]), .c_in(ci_out[720]), //Inputs
		.s(y_b[775]), .c_out(ci_out[721]) //Outputs 
	);
	fa_1b fa721(
		.a(x_a[745]), .b(y_b[745]), .c_in(ci_out[721]), //Inputs
		.s(y_b[776]), .c_out(ci_out[722]) //Outputs 
	);
	fa_1b fa722(
		.a(x_a[746]), .b(y_b[746]), .c_in(ci_out[722]), //Inputs
		.s(y_b[777]), .c_out(ci_out[723]) //Outputs 
	);
	fa_1b fa723(
		.a(x_a[747]), .b(y_b[747]), .c_in(ci_out[723]), //Inputs
		.s(y_b[778]), .c_out(ci_out[724]) //Outputs 
	);
	fa_1b fa724(
		.a(x_a[748]), .b(y_b[748]), .c_in(ci_out[724]), //Inputs
		.s(y_b[779]), .c_out(ci_out[725]) //Outputs 
	);
	fa_1b fa725(
		.a(x_a[749]), .b(y_b[749]), .c_in(ci_out[725]), //Inputs
		.s(y_b[780]), .c_out(ci_out[726]) //Outputs 
	);
	fa_1b fa726(
		.a(x_a[750]), .b(y_b[750]), .c_in(ci_out[726]), //Inputs
		.s(y_b[781]), .c_out(ci_out[727]) //Outputs 
	);
	fa_1b fa727(
		.a(x_a[751]), .b(y_b[751]), .c_in(ci_out[727]), //Inputs
		.s(y_b[782]), .c_out(ci_out[728]) //Outputs 
	);
	fa_1b fa728(
		.a(x_a[752]), .b(y_b[752]), .c_in(ci_out[728]), //Inputs
		.s(y_b[783]), .c_out(ci_out[729]) //Outputs 
	);
	fa_1b fa729(
		.a(x_a[753]), .b(y_b[753]), .c_in(ci_out[729]), //Inputs
		.s(y_b[784]), .c_out(ci_out[730]) //Outputs 
	);
	fa_1b fa730(
		.a(x_a[754]), .b(y_b[754]), .c_in(ci_out[730]), //Inputs
		.s(y_b[785]), .c_out(ci_out[731]) //Outputs 
	);
	fa_1b fa731(
		.a(x_a[755]), .b(y_b[755]), .c_in(ci_out[731]), //Inputs
		.s(y_b[786]), .c_out(ci_out[732]) //Outputs 
	);
	fa_1b fa732(
		.a(x_a[756]), .b(y_b[756]), .c_in(ci_out[732]), //Inputs
		.s(y_b[787]), .c_out(ci_out[733]) //Outputs 
	);
	fa_1b fa733(
		.a(x_a[757]), .b(y_b[757]), .c_in(ci_out[733]), //Inputs
		.s(y_b[788]), .c_out(ci_out[734]) //Outputs 
	);
	fa_1b fa734(
		.a(x_a[758]), .b(y_b[758]), .c_in(ci_out[734]), //Inputs
		.s(y_b[789]), .c_out(ci_out[735]) //Outputs 
	);
	fa_1b fa735(
		.a(x_a[759]), .b(y_b[759]), .c_in(ci_out[735]), //Inputs
		.s(y_b[790]), .c_out(ci_out[736]) //Outputs 
	);
	fa_1b fa736(
		.a(x_a[760]), .b(y_b[760]), .c_in(ci_out[736]), //Inputs
		.s(y_b[791]), .c_out(ci_out[737]) //Outputs 
	);
	fa_1b fa737(
		.a(x_a[761]), .b(y_b[761]), .c_in(ci_out[737]), //Inputs
		.s(y_b[792]), .c_out(ci_out[738]) //Outputs 
	);
	fa_1b fa738(
		.a(x_a[762]), .b(y_b[762]), .c_in(ci_out[738]), //Inputs
		.s(y_b[793]), .c_out(ci_out[739]) //Outputs 
	);
	fa_1b fa739(
		.a(x_a[763]), .b(y_b[763]), .c_in(ci_out[739]), //Inputs
		.s(y_b[794]), .c_out(ci_out[740]) //Outputs 
	);
	fa_1b fa740(
		.a(x_a[764]), .b(y_b[764]), .c_in(ci_out[740]), //Inputs
		.s(y_b[795]), .c_out(ci_out[741]) //Outputs 
	);
	fa_1b fa741(
		.a(x_a[765]), .b(y_b[765]), .c_in(ci_out[741]), //Inputs
		.s(y_b[796]), .c_out(ci_out[742]) //Outputs 
	);
	fa_1b fa742(
		.a(x_a[766]), .b(y_b[766]), .c_in(ci_out[742]), //Inputs
		.s(y_b[797]), .c_out(ci_out[743]) //Outputs 
	);
	fa_1b fa743(
		.a(x_a[767]), .b(y_b[767]), .c_in(ci_out[743]), //Inputs
		.s(y_b[798]), .c_out(y_b[799]) //Outputs 
	);

	//Stage 24
	ha_1b ha24(
		.a(x_a[768]), .b(y_b[768]), //Inputs
		.s(to_cut_res[25]), .c_out(ci_out[744]) //Outputs 
	);
	fa_1b fa744(
		.a(x_a[769]), .b(y_b[769]), .c_in(ci_out[744]), //Inputs
		.s(y_b[800]), .c_out(ci_out[745]) //Outputs 
	);
	fa_1b fa745(
		.a(x_a[770]), .b(y_b[770]), .c_in(ci_out[745]), //Inputs
		.s(y_b[801]), .c_out(ci_out[746]) //Outputs 
	);
	fa_1b fa746(
		.a(x_a[771]), .b(y_b[771]), .c_in(ci_out[746]), //Inputs
		.s(y_b[802]), .c_out(ci_out[747]) //Outputs 
	);
	fa_1b fa747(
		.a(x_a[772]), .b(y_b[772]), .c_in(ci_out[747]), //Inputs
		.s(y_b[803]), .c_out(ci_out[748]) //Outputs 
	);
	fa_1b fa748(
		.a(x_a[773]), .b(y_b[773]), .c_in(ci_out[748]), //Inputs
		.s(y_b[804]), .c_out(ci_out[749]) //Outputs 
	);
	fa_1b fa749(
		.a(x_a[774]), .b(y_b[774]), .c_in(ci_out[749]), //Inputs
		.s(y_b[805]), .c_out(ci_out[750]) //Outputs 
	);
	fa_1b fa750(
		.a(x_a[775]), .b(y_b[775]), .c_in(ci_out[750]), //Inputs
		.s(y_b[806]), .c_out(ci_out[751]) //Outputs 
	);
	fa_1b fa751(
		.a(x_a[776]), .b(y_b[776]), .c_in(ci_out[751]), //Inputs
		.s(y_b[807]), .c_out(ci_out[752]) //Outputs 
	);
	fa_1b fa752(
		.a(x_a[777]), .b(y_b[777]), .c_in(ci_out[752]), //Inputs
		.s(y_b[808]), .c_out(ci_out[753]) //Outputs 
	);
	fa_1b fa753(
		.a(x_a[778]), .b(y_b[778]), .c_in(ci_out[753]), //Inputs
		.s(y_b[809]), .c_out(ci_out[754]) //Outputs 
	);
	fa_1b fa754(
		.a(x_a[779]), .b(y_b[779]), .c_in(ci_out[754]), //Inputs
		.s(y_b[810]), .c_out(ci_out[755]) //Outputs 
	);
	fa_1b fa755(
		.a(x_a[780]), .b(y_b[780]), .c_in(ci_out[755]), //Inputs
		.s(y_b[811]), .c_out(ci_out[756]) //Outputs 
	);
	fa_1b fa756(
		.a(x_a[781]), .b(y_b[781]), .c_in(ci_out[756]), //Inputs
		.s(y_b[812]), .c_out(ci_out[757]) //Outputs 
	);
	fa_1b fa757(
		.a(x_a[782]), .b(y_b[782]), .c_in(ci_out[757]), //Inputs
		.s(y_b[813]), .c_out(ci_out[758]) //Outputs 
	);
	fa_1b fa758(
		.a(x_a[783]), .b(y_b[783]), .c_in(ci_out[758]), //Inputs
		.s(y_b[814]), .c_out(ci_out[759]) //Outputs 
	);
	fa_1b fa759(
		.a(x_a[784]), .b(y_b[784]), .c_in(ci_out[759]), //Inputs
		.s(y_b[815]), .c_out(ci_out[760]) //Outputs 
	);
	fa_1b fa760(
		.a(x_a[785]), .b(y_b[785]), .c_in(ci_out[760]), //Inputs
		.s(y_b[816]), .c_out(ci_out[761]) //Outputs 
	);
	fa_1b fa761(
		.a(x_a[786]), .b(y_b[786]), .c_in(ci_out[761]), //Inputs
		.s(y_b[817]), .c_out(ci_out[762]) //Outputs 
	);
	fa_1b fa762(
		.a(x_a[787]), .b(y_b[787]), .c_in(ci_out[762]), //Inputs
		.s(y_b[818]), .c_out(ci_out[763]) //Outputs 
	);
	fa_1b fa763(
		.a(x_a[788]), .b(y_b[788]), .c_in(ci_out[763]), //Inputs
		.s(y_b[819]), .c_out(ci_out[764]) //Outputs 
	);
	fa_1b fa764(
		.a(x_a[789]), .b(y_b[789]), .c_in(ci_out[764]), //Inputs
		.s(y_b[820]), .c_out(ci_out[765]) //Outputs 
	);
	fa_1b fa765(
		.a(x_a[790]), .b(y_b[790]), .c_in(ci_out[765]), //Inputs
		.s(y_b[821]), .c_out(ci_out[766]) //Outputs 
	);
	fa_1b fa766(
		.a(x_a[791]), .b(y_b[791]), .c_in(ci_out[766]), //Inputs
		.s(y_b[822]), .c_out(ci_out[767]) //Outputs 
	);
	fa_1b fa767(
		.a(x_a[792]), .b(y_b[792]), .c_in(ci_out[767]), //Inputs
		.s(y_b[823]), .c_out(ci_out[768]) //Outputs 
	);
	fa_1b fa768(
		.a(x_a[793]), .b(y_b[793]), .c_in(ci_out[768]), //Inputs
		.s(y_b[824]), .c_out(ci_out[769]) //Outputs 
	);
	fa_1b fa769(
		.a(x_a[794]), .b(y_b[794]), .c_in(ci_out[769]), //Inputs
		.s(y_b[825]), .c_out(ci_out[770]) //Outputs 
	);
	fa_1b fa770(
		.a(x_a[795]), .b(y_b[795]), .c_in(ci_out[770]), //Inputs
		.s(y_b[826]), .c_out(ci_out[771]) //Outputs 
	);
	fa_1b fa771(
		.a(x_a[796]), .b(y_b[796]), .c_in(ci_out[771]), //Inputs
		.s(y_b[827]), .c_out(ci_out[772]) //Outputs 
	);
	fa_1b fa772(
		.a(x_a[797]), .b(y_b[797]), .c_in(ci_out[772]), //Inputs
		.s(y_b[828]), .c_out(ci_out[773]) //Outputs 
	);
	fa_1b fa773(
		.a(x_a[798]), .b(y_b[798]), .c_in(ci_out[773]), //Inputs
		.s(y_b[829]), .c_out(ci_out[774]) //Outputs 
	);
	fa_1b fa774(
		.a(x_a[799]), .b(y_b[799]), .c_in(ci_out[774]), //Inputs
		.s(y_b[830]), .c_out(y_b[831]) //Outputs 
	);

	//Stage 25
	ha_1b ha25(
		.a(x_a[800]), .b(y_b[800]), //Inputs
		.s(to_cut_res[26]), .c_out(ci_out[775]) //Outputs 
	);
	fa_1b fa775(
		.a(x_a[801]), .b(y_b[801]), .c_in(ci_out[775]), //Inputs
		.s(y_b[832]), .c_out(ci_out[776]) //Outputs 
	);
	fa_1b fa776(
		.a(x_a[802]), .b(y_b[802]), .c_in(ci_out[776]), //Inputs
		.s(y_b[833]), .c_out(ci_out[777]) //Outputs 
	);
	fa_1b fa777(
		.a(x_a[803]), .b(y_b[803]), .c_in(ci_out[777]), //Inputs
		.s(y_b[834]), .c_out(ci_out[778]) //Outputs 
	);
	fa_1b fa778(
		.a(x_a[804]), .b(y_b[804]), .c_in(ci_out[778]), //Inputs
		.s(y_b[835]), .c_out(ci_out[779]) //Outputs 
	);
	fa_1b fa779(
		.a(x_a[805]), .b(y_b[805]), .c_in(ci_out[779]), //Inputs
		.s(y_b[836]), .c_out(ci_out[780]) //Outputs 
	);
	fa_1b fa780(
		.a(x_a[806]), .b(y_b[806]), .c_in(ci_out[780]), //Inputs
		.s(y_b[837]), .c_out(ci_out[781]) //Outputs 
	);
	fa_1b fa781(
		.a(x_a[807]), .b(y_b[807]), .c_in(ci_out[781]), //Inputs
		.s(y_b[838]), .c_out(ci_out[782]) //Outputs 
	);
	fa_1b fa782(
		.a(x_a[808]), .b(y_b[808]), .c_in(ci_out[782]), //Inputs
		.s(y_b[839]), .c_out(ci_out[783]) //Outputs 
	);
	fa_1b fa783(
		.a(x_a[809]), .b(y_b[809]), .c_in(ci_out[783]), //Inputs
		.s(y_b[840]), .c_out(ci_out[784]) //Outputs 
	);
	fa_1b fa784(
		.a(x_a[810]), .b(y_b[810]), .c_in(ci_out[784]), //Inputs
		.s(y_b[841]), .c_out(ci_out[785]) //Outputs 
	);
	fa_1b fa785(
		.a(x_a[811]), .b(y_b[811]), .c_in(ci_out[785]), //Inputs
		.s(y_b[842]), .c_out(ci_out[786]) //Outputs 
	);
	fa_1b fa786(
		.a(x_a[812]), .b(y_b[812]), .c_in(ci_out[786]), //Inputs
		.s(y_b[843]), .c_out(ci_out[787]) //Outputs 
	);
	fa_1b fa787(
		.a(x_a[813]), .b(y_b[813]), .c_in(ci_out[787]), //Inputs
		.s(y_b[844]), .c_out(ci_out[788]) //Outputs 
	);
	fa_1b fa788(
		.a(x_a[814]), .b(y_b[814]), .c_in(ci_out[788]), //Inputs
		.s(y_b[845]), .c_out(ci_out[789]) //Outputs 
	);
	fa_1b fa789(
		.a(x_a[815]), .b(y_b[815]), .c_in(ci_out[789]), //Inputs
		.s(y_b[846]), .c_out(ci_out[790]) //Outputs 
	);
	fa_1b fa790(
		.a(x_a[816]), .b(y_b[816]), .c_in(ci_out[790]), //Inputs
		.s(y_b[847]), .c_out(ci_out[791]) //Outputs 
	);
	fa_1b fa791(
		.a(x_a[817]), .b(y_b[817]), .c_in(ci_out[791]), //Inputs
		.s(y_b[848]), .c_out(ci_out[792]) //Outputs 
	);
	fa_1b fa792(
		.a(x_a[818]), .b(y_b[818]), .c_in(ci_out[792]), //Inputs
		.s(y_b[849]), .c_out(ci_out[793]) //Outputs 
	);
	fa_1b fa793(
		.a(x_a[819]), .b(y_b[819]), .c_in(ci_out[793]), //Inputs
		.s(y_b[850]), .c_out(ci_out[794]) //Outputs 
	);
	fa_1b fa794(
		.a(x_a[820]), .b(y_b[820]), .c_in(ci_out[794]), //Inputs
		.s(y_b[851]), .c_out(ci_out[795]) //Outputs 
	);
	fa_1b fa795(
		.a(x_a[821]), .b(y_b[821]), .c_in(ci_out[795]), //Inputs
		.s(y_b[852]), .c_out(ci_out[796]) //Outputs 
	);
	fa_1b fa796(
		.a(x_a[822]), .b(y_b[822]), .c_in(ci_out[796]), //Inputs
		.s(y_b[853]), .c_out(ci_out[797]) //Outputs 
	);
	fa_1b fa797(
		.a(x_a[823]), .b(y_b[823]), .c_in(ci_out[797]), //Inputs
		.s(y_b[854]), .c_out(ci_out[798]) //Outputs 
	);
	fa_1b fa798(
		.a(x_a[824]), .b(y_b[824]), .c_in(ci_out[798]), //Inputs
		.s(y_b[855]), .c_out(ci_out[799]) //Outputs 
	);
	fa_1b fa799(
		.a(x_a[825]), .b(y_b[825]), .c_in(ci_out[799]), //Inputs
		.s(y_b[856]), .c_out(ci_out[800]) //Outputs 
	);
	fa_1b fa800(
		.a(x_a[826]), .b(y_b[826]), .c_in(ci_out[800]), //Inputs
		.s(y_b[857]), .c_out(ci_out[801]) //Outputs 
	);
	fa_1b fa801(
		.a(x_a[827]), .b(y_b[827]), .c_in(ci_out[801]), //Inputs
		.s(y_b[858]), .c_out(ci_out[802]) //Outputs 
	);
	fa_1b fa802(
		.a(x_a[828]), .b(y_b[828]), .c_in(ci_out[802]), //Inputs
		.s(y_b[859]), .c_out(ci_out[803]) //Outputs 
	);
	fa_1b fa803(
		.a(x_a[829]), .b(y_b[829]), .c_in(ci_out[803]), //Inputs
		.s(y_b[860]), .c_out(ci_out[804]) //Outputs 
	);
	fa_1b fa804(
		.a(x_a[830]), .b(y_b[830]), .c_in(ci_out[804]), //Inputs
		.s(y_b[861]), .c_out(ci_out[805]) //Outputs 
	);
	fa_1b fa805(
		.a(x_a[831]), .b(y_b[831]), .c_in(ci_out[805]), //Inputs
		.s(y_b[862]), .c_out(y_b[863]) //Outputs 
	);

	//Stage 26
	ha_1b ha26(
		.a(x_a[832]), .b(y_b[832]), //Inputs
		.s(to_cut_res[27]), .c_out(ci_out[806]) //Outputs 
	);
	fa_1b fa806(
		.a(x_a[833]), .b(y_b[833]), .c_in(ci_out[806]), //Inputs
		.s(y_b[864]), .c_out(ci_out[807]) //Outputs 
	);
	fa_1b fa807(
		.a(x_a[834]), .b(y_b[834]), .c_in(ci_out[807]), //Inputs
		.s(y_b[865]), .c_out(ci_out[808]) //Outputs 
	);
	fa_1b fa808(
		.a(x_a[835]), .b(y_b[835]), .c_in(ci_out[808]), //Inputs
		.s(y_b[866]), .c_out(ci_out[809]) //Outputs 
	);
	fa_1b fa809(
		.a(x_a[836]), .b(y_b[836]), .c_in(ci_out[809]), //Inputs
		.s(y_b[867]), .c_out(ci_out[810]) //Outputs 
	);
	fa_1b fa810(
		.a(x_a[837]), .b(y_b[837]), .c_in(ci_out[810]), //Inputs
		.s(y_b[868]), .c_out(ci_out[811]) //Outputs 
	);
	fa_1b fa811(
		.a(x_a[838]), .b(y_b[838]), .c_in(ci_out[811]), //Inputs
		.s(y_b[869]), .c_out(ci_out[812]) //Outputs 
	);
	fa_1b fa812(
		.a(x_a[839]), .b(y_b[839]), .c_in(ci_out[812]), //Inputs
		.s(y_b[870]), .c_out(ci_out[813]) //Outputs 
	);
	fa_1b fa813(
		.a(x_a[840]), .b(y_b[840]), .c_in(ci_out[813]), //Inputs
		.s(y_b[871]), .c_out(ci_out[814]) //Outputs 
	);
	fa_1b fa814(
		.a(x_a[841]), .b(y_b[841]), .c_in(ci_out[814]), //Inputs
		.s(y_b[872]), .c_out(ci_out[815]) //Outputs 
	);
	fa_1b fa815(
		.a(x_a[842]), .b(y_b[842]), .c_in(ci_out[815]), //Inputs
		.s(y_b[873]), .c_out(ci_out[816]) //Outputs 
	);
	fa_1b fa816(
		.a(x_a[843]), .b(y_b[843]), .c_in(ci_out[816]), //Inputs
		.s(y_b[874]), .c_out(ci_out[817]) //Outputs 
	);
	fa_1b fa817(
		.a(x_a[844]), .b(y_b[844]), .c_in(ci_out[817]), //Inputs
		.s(y_b[875]), .c_out(ci_out[818]) //Outputs 
	);
	fa_1b fa818(
		.a(x_a[845]), .b(y_b[845]), .c_in(ci_out[818]), //Inputs
		.s(y_b[876]), .c_out(ci_out[819]) //Outputs 
	);
	fa_1b fa819(
		.a(x_a[846]), .b(y_b[846]), .c_in(ci_out[819]), //Inputs
		.s(y_b[877]), .c_out(ci_out[820]) //Outputs 
	);
	fa_1b fa820(
		.a(x_a[847]), .b(y_b[847]), .c_in(ci_out[820]), //Inputs
		.s(y_b[878]), .c_out(ci_out[821]) //Outputs 
	);
	fa_1b fa821(
		.a(x_a[848]), .b(y_b[848]), .c_in(ci_out[821]), //Inputs
		.s(y_b[879]), .c_out(ci_out[822]) //Outputs 
	);
	fa_1b fa822(
		.a(x_a[849]), .b(y_b[849]), .c_in(ci_out[822]), //Inputs
		.s(y_b[880]), .c_out(ci_out[823]) //Outputs 
	);
	fa_1b fa823(
		.a(x_a[850]), .b(y_b[850]), .c_in(ci_out[823]), //Inputs
		.s(y_b[881]), .c_out(ci_out[824]) //Outputs 
	);
	fa_1b fa824(
		.a(x_a[851]), .b(y_b[851]), .c_in(ci_out[824]), //Inputs
		.s(y_b[882]), .c_out(ci_out[825]) //Outputs 
	);
	fa_1b fa825(
		.a(x_a[852]), .b(y_b[852]), .c_in(ci_out[825]), //Inputs
		.s(y_b[883]), .c_out(ci_out[826]) //Outputs 
	);
	fa_1b fa826(
		.a(x_a[853]), .b(y_b[853]), .c_in(ci_out[826]), //Inputs
		.s(y_b[884]), .c_out(ci_out[827]) //Outputs 
	);
	fa_1b fa827(
		.a(x_a[854]), .b(y_b[854]), .c_in(ci_out[827]), //Inputs
		.s(y_b[885]), .c_out(ci_out[828]) //Outputs 
	);
	fa_1b fa828(
		.a(x_a[855]), .b(y_b[855]), .c_in(ci_out[828]), //Inputs
		.s(y_b[886]), .c_out(ci_out[829]) //Outputs 
	);
	fa_1b fa829(
		.a(x_a[856]), .b(y_b[856]), .c_in(ci_out[829]), //Inputs
		.s(y_b[887]), .c_out(ci_out[830]) //Outputs 
	);
	fa_1b fa830(
		.a(x_a[857]), .b(y_b[857]), .c_in(ci_out[830]), //Inputs
		.s(y_b[888]), .c_out(ci_out[831]) //Outputs 
	);
	fa_1b fa831(
		.a(x_a[858]), .b(y_b[858]), .c_in(ci_out[831]), //Inputs
		.s(y_b[889]), .c_out(ci_out[832]) //Outputs 
	);
	fa_1b fa832(
		.a(x_a[859]), .b(y_b[859]), .c_in(ci_out[832]), //Inputs
		.s(y_b[890]), .c_out(ci_out[833]) //Outputs 
	);
	fa_1b fa833(
		.a(x_a[860]), .b(y_b[860]), .c_in(ci_out[833]), //Inputs
		.s(y_b[891]), .c_out(ci_out[834]) //Outputs 
	);
	fa_1b fa834(
		.a(x_a[861]), .b(y_b[861]), .c_in(ci_out[834]), //Inputs
		.s(y_b[892]), .c_out(ci_out[835]) //Outputs 
	);
	fa_1b fa835(
		.a(x_a[862]), .b(y_b[862]), .c_in(ci_out[835]), //Inputs
		.s(y_b[893]), .c_out(ci_out[836]) //Outputs 
	);
	fa_1b fa836(
		.a(x_a[863]), .b(y_b[863]), .c_in(ci_out[836]), //Inputs
		.s(y_b[894]), .c_out(y_b[895]) //Outputs 
	);

	//Stage 27
	ha_1b ha27(
		.a(x_a[864]), .b(y_b[864]), //Inputs
		.s(to_cut_res[28]), .c_out(ci_out[837]) //Outputs 
	);
	fa_1b fa837(
		.a(x_a[865]), .b(y_b[865]), .c_in(ci_out[837]), //Inputs
		.s(y_b[896]), .c_out(ci_out[838]) //Outputs 
	);
	fa_1b fa838(
		.a(x_a[866]), .b(y_b[866]), .c_in(ci_out[838]), //Inputs
		.s(y_b[897]), .c_out(ci_out[839]) //Outputs 
	);
	fa_1b fa839(
		.a(x_a[867]), .b(y_b[867]), .c_in(ci_out[839]), //Inputs
		.s(y_b[898]), .c_out(ci_out[840]) //Outputs 
	);
	fa_1b fa840(
		.a(x_a[868]), .b(y_b[868]), .c_in(ci_out[840]), //Inputs
		.s(y_b[899]), .c_out(ci_out[841]) //Outputs 
	);
	fa_1b fa841(
		.a(x_a[869]), .b(y_b[869]), .c_in(ci_out[841]), //Inputs
		.s(y_b[900]), .c_out(ci_out[842]) //Outputs 
	);
	fa_1b fa842(
		.a(x_a[870]), .b(y_b[870]), .c_in(ci_out[842]), //Inputs
		.s(y_b[901]), .c_out(ci_out[843]) //Outputs 
	);
	fa_1b fa843(
		.a(x_a[871]), .b(y_b[871]), .c_in(ci_out[843]), //Inputs
		.s(y_b[902]), .c_out(ci_out[844]) //Outputs 
	);
	fa_1b fa844(
		.a(x_a[872]), .b(y_b[872]), .c_in(ci_out[844]), //Inputs
		.s(y_b[903]), .c_out(ci_out[845]) //Outputs 
	);
	fa_1b fa845(
		.a(x_a[873]), .b(y_b[873]), .c_in(ci_out[845]), //Inputs
		.s(y_b[904]), .c_out(ci_out[846]) //Outputs 
	);
	fa_1b fa846(
		.a(x_a[874]), .b(y_b[874]), .c_in(ci_out[846]), //Inputs
		.s(y_b[905]), .c_out(ci_out[847]) //Outputs 
	);
	fa_1b fa847(
		.a(x_a[875]), .b(y_b[875]), .c_in(ci_out[847]), //Inputs
		.s(y_b[906]), .c_out(ci_out[848]) //Outputs 
	);
	fa_1b fa848(
		.a(x_a[876]), .b(y_b[876]), .c_in(ci_out[848]), //Inputs
		.s(y_b[907]), .c_out(ci_out[849]) //Outputs 
	);
	fa_1b fa849(
		.a(x_a[877]), .b(y_b[877]), .c_in(ci_out[849]), //Inputs
		.s(y_b[908]), .c_out(ci_out[850]) //Outputs 
	);
	fa_1b fa850(
		.a(x_a[878]), .b(y_b[878]), .c_in(ci_out[850]), //Inputs
		.s(y_b[909]), .c_out(ci_out[851]) //Outputs 
	);
	fa_1b fa851(
		.a(x_a[879]), .b(y_b[879]), .c_in(ci_out[851]), //Inputs
		.s(y_b[910]), .c_out(ci_out[852]) //Outputs 
	);
	fa_1b fa852(
		.a(x_a[880]), .b(y_b[880]), .c_in(ci_out[852]), //Inputs
		.s(y_b[911]), .c_out(ci_out[853]) //Outputs 
	);
	fa_1b fa853(
		.a(x_a[881]), .b(y_b[881]), .c_in(ci_out[853]), //Inputs
		.s(y_b[912]), .c_out(ci_out[854]) //Outputs 
	);
	fa_1b fa854(
		.a(x_a[882]), .b(y_b[882]), .c_in(ci_out[854]), //Inputs
		.s(y_b[913]), .c_out(ci_out[855]) //Outputs 
	);
	fa_1b fa855(
		.a(x_a[883]), .b(y_b[883]), .c_in(ci_out[855]), //Inputs
		.s(y_b[914]), .c_out(ci_out[856]) //Outputs 
	);
	fa_1b fa856(
		.a(x_a[884]), .b(y_b[884]), .c_in(ci_out[856]), //Inputs
		.s(y_b[915]), .c_out(ci_out[857]) //Outputs 
	);
	fa_1b fa857(
		.a(x_a[885]), .b(y_b[885]), .c_in(ci_out[857]), //Inputs
		.s(y_b[916]), .c_out(ci_out[858]) //Outputs 
	);
	fa_1b fa858(
		.a(x_a[886]), .b(y_b[886]), .c_in(ci_out[858]), //Inputs
		.s(y_b[917]), .c_out(ci_out[859]) //Outputs 
	);
	fa_1b fa859(
		.a(x_a[887]), .b(y_b[887]), .c_in(ci_out[859]), //Inputs
		.s(y_b[918]), .c_out(ci_out[860]) //Outputs 
	);
	fa_1b fa860(
		.a(x_a[888]), .b(y_b[888]), .c_in(ci_out[860]), //Inputs
		.s(y_b[919]), .c_out(ci_out[861]) //Outputs 
	);
	fa_1b fa861(
		.a(x_a[889]), .b(y_b[889]), .c_in(ci_out[861]), //Inputs
		.s(y_b[920]), .c_out(ci_out[862]) //Outputs 
	);
	fa_1b fa862(
		.a(x_a[890]), .b(y_b[890]), .c_in(ci_out[862]), //Inputs
		.s(y_b[921]), .c_out(ci_out[863]) //Outputs 
	);
	fa_1b fa863(
		.a(x_a[891]), .b(y_b[891]), .c_in(ci_out[863]), //Inputs
		.s(y_b[922]), .c_out(ci_out[864]) //Outputs 
	);
	fa_1b fa864(
		.a(x_a[892]), .b(y_b[892]), .c_in(ci_out[864]), //Inputs
		.s(y_b[923]), .c_out(ci_out[865]) //Outputs 
	);
	fa_1b fa865(
		.a(x_a[893]), .b(y_b[893]), .c_in(ci_out[865]), //Inputs
		.s(y_b[924]), .c_out(ci_out[866]) //Outputs 
	);
	fa_1b fa866(
		.a(x_a[894]), .b(y_b[894]), .c_in(ci_out[866]), //Inputs
		.s(y_b[925]), .c_out(ci_out[867]) //Outputs 
	);
	fa_1b fa867(
		.a(x_a[895]), .b(y_b[895]), .c_in(ci_out[867]), //Inputs
		.s(y_b[926]), .c_out(y_b[927]) //Outputs 
	);

	//Stage 28
	ha_1b ha28(
		.a(x_a[896]), .b(y_b[896]), //Inputs
		.s(to_cut_res[29]), .c_out(ci_out[868]) //Outputs 
	);
	fa_1b fa868(
		.a(x_a[897]), .b(y_b[897]), .c_in(ci_out[868]), //Inputs
		.s(y_b[928]), .c_out(ci_out[869]) //Outputs 
	);
	fa_1b fa869(
		.a(x_a[898]), .b(y_b[898]), .c_in(ci_out[869]), //Inputs
		.s(y_b[929]), .c_out(ci_out[870]) //Outputs 
	);
	fa_1b fa870(
		.a(x_a[899]), .b(y_b[899]), .c_in(ci_out[870]), //Inputs
		.s(y_b[930]), .c_out(ci_out[871]) //Outputs 
	);
	fa_1b fa871(
		.a(x_a[900]), .b(y_b[900]), .c_in(ci_out[871]), //Inputs
		.s(y_b[931]), .c_out(ci_out[872]) //Outputs 
	);
	fa_1b fa872(
		.a(x_a[901]), .b(y_b[901]), .c_in(ci_out[872]), //Inputs
		.s(y_b[932]), .c_out(ci_out[873]) //Outputs 
	);
	fa_1b fa873(
		.a(x_a[902]), .b(y_b[902]), .c_in(ci_out[873]), //Inputs
		.s(y_b[933]), .c_out(ci_out[874]) //Outputs 
	);
	fa_1b fa874(
		.a(x_a[903]), .b(y_b[903]), .c_in(ci_out[874]), //Inputs
		.s(y_b[934]), .c_out(ci_out[875]) //Outputs 
	);
	fa_1b fa875(
		.a(x_a[904]), .b(y_b[904]), .c_in(ci_out[875]), //Inputs
		.s(y_b[935]), .c_out(ci_out[876]) //Outputs 
	);
	fa_1b fa876(
		.a(x_a[905]), .b(y_b[905]), .c_in(ci_out[876]), //Inputs
		.s(y_b[936]), .c_out(ci_out[877]) //Outputs 
	);
	fa_1b fa877(
		.a(x_a[906]), .b(y_b[906]), .c_in(ci_out[877]), //Inputs
		.s(y_b[937]), .c_out(ci_out[878]) //Outputs 
	);
	fa_1b fa878(
		.a(x_a[907]), .b(y_b[907]), .c_in(ci_out[878]), //Inputs
		.s(y_b[938]), .c_out(ci_out[879]) //Outputs 
	);
	fa_1b fa879(
		.a(x_a[908]), .b(y_b[908]), .c_in(ci_out[879]), //Inputs
		.s(y_b[939]), .c_out(ci_out[880]) //Outputs 
	);
	fa_1b fa880(
		.a(x_a[909]), .b(y_b[909]), .c_in(ci_out[880]), //Inputs
		.s(y_b[940]), .c_out(ci_out[881]) //Outputs 
	);
	fa_1b fa881(
		.a(x_a[910]), .b(y_b[910]), .c_in(ci_out[881]), //Inputs
		.s(y_b[941]), .c_out(ci_out[882]) //Outputs 
	);
	fa_1b fa882(
		.a(x_a[911]), .b(y_b[911]), .c_in(ci_out[882]), //Inputs
		.s(y_b[942]), .c_out(ci_out[883]) //Outputs 
	);
	fa_1b fa883(
		.a(x_a[912]), .b(y_b[912]), .c_in(ci_out[883]), //Inputs
		.s(y_b[943]), .c_out(ci_out[884]) //Outputs 
	);
	fa_1b fa884(
		.a(x_a[913]), .b(y_b[913]), .c_in(ci_out[884]), //Inputs
		.s(y_b[944]), .c_out(ci_out[885]) //Outputs 
	);
	fa_1b fa885(
		.a(x_a[914]), .b(y_b[914]), .c_in(ci_out[885]), //Inputs
		.s(y_b[945]), .c_out(ci_out[886]) //Outputs 
	);
	fa_1b fa886(
		.a(x_a[915]), .b(y_b[915]), .c_in(ci_out[886]), //Inputs
		.s(y_b[946]), .c_out(ci_out[887]) //Outputs 
	);
	fa_1b fa887(
		.a(x_a[916]), .b(y_b[916]), .c_in(ci_out[887]), //Inputs
		.s(y_b[947]), .c_out(ci_out[888]) //Outputs 
	);
	fa_1b fa888(
		.a(x_a[917]), .b(y_b[917]), .c_in(ci_out[888]), //Inputs
		.s(y_b[948]), .c_out(ci_out[889]) //Outputs 
	);
	fa_1b fa889(
		.a(x_a[918]), .b(y_b[918]), .c_in(ci_out[889]), //Inputs
		.s(y_b[949]), .c_out(ci_out[890]) //Outputs 
	);
	fa_1b fa890(
		.a(x_a[919]), .b(y_b[919]), .c_in(ci_out[890]), //Inputs
		.s(y_b[950]), .c_out(ci_out[891]) //Outputs 
	);
	fa_1b fa891(
		.a(x_a[920]), .b(y_b[920]), .c_in(ci_out[891]), //Inputs
		.s(y_b[951]), .c_out(ci_out[892]) //Outputs 
	);
	fa_1b fa892(
		.a(x_a[921]), .b(y_b[921]), .c_in(ci_out[892]), //Inputs
		.s(y_b[952]), .c_out(ci_out[893]) //Outputs 
	);
	fa_1b fa893(
		.a(x_a[922]), .b(y_b[922]), .c_in(ci_out[893]), //Inputs
		.s(y_b[953]), .c_out(ci_out[894]) //Outputs 
	);
	fa_1b fa894(
		.a(x_a[923]), .b(y_b[923]), .c_in(ci_out[894]), //Inputs
		.s(y_b[954]), .c_out(ci_out[895]) //Outputs 
	);
	fa_1b fa895(
		.a(x_a[924]), .b(y_b[924]), .c_in(ci_out[895]), //Inputs
		.s(y_b[955]), .c_out(ci_out[896]) //Outputs 
	);
	fa_1b fa896(
		.a(x_a[925]), .b(y_b[925]), .c_in(ci_out[896]), //Inputs
		.s(y_b[956]), .c_out(ci_out[897]) //Outputs 
	);
	fa_1b fa897(
		.a(x_a[926]), .b(y_b[926]), .c_in(ci_out[897]), //Inputs
		.s(y_b[957]), .c_out(ci_out[898]) //Outputs 
	);
	fa_1b fa898(
		.a(x_a[927]), .b(y_b[927]), .c_in(ci_out[898]), //Inputs
		.s(y_b[958]), .c_out(y_b[959]) //Outputs 
	);

	//Stage 29
	ha_1b ha29(
		.a(x_a[928]), .b(y_b[928]), //Inputs
		.s(to_cut_res[30]), .c_out(ci_out[899]) //Outputs 
	);
	fa_1b fa899(
		.a(x_a[929]), .b(y_b[929]), .c_in(ci_out[899]), //Inputs
		.s(y_b[960]), .c_out(ci_out[900]) //Outputs 
	);
	fa_1b fa900(
		.a(x_a[930]), .b(y_b[930]), .c_in(ci_out[900]), //Inputs
		.s(y_b[961]), .c_out(ci_out[901]) //Outputs 
	);
	fa_1b fa901(
		.a(x_a[931]), .b(y_b[931]), .c_in(ci_out[901]), //Inputs
		.s(y_b[962]), .c_out(ci_out[902]) //Outputs 
	);
	fa_1b fa902(
		.a(x_a[932]), .b(y_b[932]), .c_in(ci_out[902]), //Inputs
		.s(y_b[963]), .c_out(ci_out[903]) //Outputs 
	);
	fa_1b fa903(
		.a(x_a[933]), .b(y_b[933]), .c_in(ci_out[903]), //Inputs
		.s(y_b[964]), .c_out(ci_out[904]) //Outputs 
	);
	fa_1b fa904(
		.a(x_a[934]), .b(y_b[934]), .c_in(ci_out[904]), //Inputs
		.s(y_b[965]), .c_out(ci_out[905]) //Outputs 
	);
	fa_1b fa905(
		.a(x_a[935]), .b(y_b[935]), .c_in(ci_out[905]), //Inputs
		.s(y_b[966]), .c_out(ci_out[906]) //Outputs 
	);
	fa_1b fa906(
		.a(x_a[936]), .b(y_b[936]), .c_in(ci_out[906]), //Inputs
		.s(y_b[967]), .c_out(ci_out[907]) //Outputs 
	);
	fa_1b fa907(
		.a(x_a[937]), .b(y_b[937]), .c_in(ci_out[907]), //Inputs
		.s(y_b[968]), .c_out(ci_out[908]) //Outputs 
	);
	fa_1b fa908(
		.a(x_a[938]), .b(y_b[938]), .c_in(ci_out[908]), //Inputs
		.s(y_b[969]), .c_out(ci_out[909]) //Outputs 
	);
	fa_1b fa909(
		.a(x_a[939]), .b(y_b[939]), .c_in(ci_out[909]), //Inputs
		.s(y_b[970]), .c_out(ci_out[910]) //Outputs 
	);
	fa_1b fa910(
		.a(x_a[940]), .b(y_b[940]), .c_in(ci_out[910]), //Inputs
		.s(y_b[971]), .c_out(ci_out[911]) //Outputs 
	);
	fa_1b fa911(
		.a(x_a[941]), .b(y_b[941]), .c_in(ci_out[911]), //Inputs
		.s(y_b[972]), .c_out(ci_out[912]) //Outputs 
	);
	fa_1b fa912(
		.a(x_a[942]), .b(y_b[942]), .c_in(ci_out[912]), //Inputs
		.s(y_b[973]), .c_out(ci_out[913]) //Outputs 
	);
	fa_1b fa913(
		.a(x_a[943]), .b(y_b[943]), .c_in(ci_out[913]), //Inputs
		.s(y_b[974]), .c_out(ci_out[914]) //Outputs 
	);
	fa_1b fa914(
		.a(x_a[944]), .b(y_b[944]), .c_in(ci_out[914]), //Inputs
		.s(y_b[975]), .c_out(ci_out[915]) //Outputs 
	);
	fa_1b fa915(
		.a(x_a[945]), .b(y_b[945]), .c_in(ci_out[915]), //Inputs
		.s(y_b[976]), .c_out(ci_out[916]) //Outputs 
	);
	fa_1b fa916(
		.a(x_a[946]), .b(y_b[946]), .c_in(ci_out[916]), //Inputs
		.s(y_b[977]), .c_out(ci_out[917]) //Outputs 
	);
	fa_1b fa917(
		.a(x_a[947]), .b(y_b[947]), .c_in(ci_out[917]), //Inputs
		.s(y_b[978]), .c_out(ci_out[918]) //Outputs 
	);
	fa_1b fa918(
		.a(x_a[948]), .b(y_b[948]), .c_in(ci_out[918]), //Inputs
		.s(y_b[979]), .c_out(ci_out[919]) //Outputs 
	);
	fa_1b fa919(
		.a(x_a[949]), .b(y_b[949]), .c_in(ci_out[919]), //Inputs
		.s(y_b[980]), .c_out(ci_out[920]) //Outputs 
	);
	fa_1b fa920(
		.a(x_a[950]), .b(y_b[950]), .c_in(ci_out[920]), //Inputs
		.s(y_b[981]), .c_out(ci_out[921]) //Outputs 
	);
	fa_1b fa921(
		.a(x_a[951]), .b(y_b[951]), .c_in(ci_out[921]), //Inputs
		.s(y_b[982]), .c_out(ci_out[922]) //Outputs 
	);
	fa_1b fa922(
		.a(x_a[952]), .b(y_b[952]), .c_in(ci_out[922]), //Inputs
		.s(y_b[983]), .c_out(ci_out[923]) //Outputs 
	);
	fa_1b fa923(
		.a(x_a[953]), .b(y_b[953]), .c_in(ci_out[923]), //Inputs
		.s(y_b[984]), .c_out(ci_out[924]) //Outputs 
	);
	fa_1b fa924(
		.a(x_a[954]), .b(y_b[954]), .c_in(ci_out[924]), //Inputs
		.s(y_b[985]), .c_out(ci_out[925]) //Outputs 
	);
	fa_1b fa925(
		.a(x_a[955]), .b(y_b[955]), .c_in(ci_out[925]), //Inputs
		.s(y_b[986]), .c_out(ci_out[926]) //Outputs 
	);
	fa_1b fa926(
		.a(x_a[956]), .b(y_b[956]), .c_in(ci_out[926]), //Inputs
		.s(y_b[987]), .c_out(ci_out[927]) //Outputs 
	);
	fa_1b fa927(
		.a(x_a[957]), .b(y_b[957]), .c_in(ci_out[927]), //Inputs
		.s(y_b[988]), .c_out(ci_out[928]) //Outputs 
	);
	fa_1b fa928(
		.a(x_a[958]), .b(y_b[958]), .c_in(ci_out[928]), //Inputs
		.s(y_b[989]), .c_out(ci_out[929]) //Outputs 
	);
	fa_1b fa929(
		.a(x_a[959]), .b(y_b[959]), .c_in(ci_out[929]), //Inputs
		.s(y_b[990]), .c_out(y_b[991]) //Outputs 
	);

	//Stage 30
	ha_1b ha30(
		.a(x_a[960]), .b(y_b[960]), //Inputs
		.s(to_cut_res[31]), .c_out(ci_out[930]) //Outputs 
	);
	fa_1b fa930(
		.a(x_a[961]), .b(y_b[961]), .c_in(ci_out[930]), //Inputs
		.s(to_cut_res[32]), .c_out(ci_out[931]) //Outputs 
	);
	fa_1b fa931(
		.a(x_a[962]), .b(y_b[962]), .c_in(ci_out[931]), //Inputs
		.s(to_cut_res[33]), .c_out(ci_out[932]) //Outputs 
	);
	fa_1b fa932(
		.a(x_a[963]), .b(y_b[963]), .c_in(ci_out[932]), //Inputs
		.s(to_cut_res[34]), .c_out(ci_out[933]) //Outputs 
	);
	fa_1b fa933(
		.a(x_a[964]), .b(y_b[964]), .c_in(ci_out[933]), //Inputs
		.s(to_cut_res[35]), .c_out(ci_out[934]) //Outputs 
	);
	fa_1b fa934(
		.a(x_a[965]), .b(y_b[965]), .c_in(ci_out[934]), //Inputs
		.s(to_cut_res[36]), .c_out(ci_out[935]) //Outputs 
	);
	fa_1b fa935(
		.a(x_a[966]), .b(y_b[966]), .c_in(ci_out[935]), //Inputs
		.s(to_cut_res[37]), .c_out(ci_out[936]) //Outputs 
	);
	fa_1b fa936(
		.a(x_a[967]), .b(y_b[967]), .c_in(ci_out[936]), //Inputs
		.s(to_cut_res[38]), .c_out(ci_out[937]) //Outputs 
	);
	fa_1b fa937(
		.a(x_a[968]), .b(y_b[968]), .c_in(ci_out[937]), //Inputs
		.s(to_cut_res[39]), .c_out(ci_out[938]) //Outputs 
	);
	fa_1b fa938(
		.a(x_a[969]), .b(y_b[969]), .c_in(ci_out[938]), //Inputs
		.s(to_cut_res[40]), .c_out(ci_out[939]) //Outputs 
	);
	fa_1b fa939(
		.a(x_a[970]), .b(y_b[970]), .c_in(ci_out[939]), //Inputs
		.s(to_cut_res[41]), .c_out(ci_out[940]) //Outputs 
	);
	fa_1b fa940(
		.a(x_a[971]), .b(y_b[971]), .c_in(ci_out[940]), //Inputs
		.s(to_cut_res[42]), .c_out(ci_out[941]) //Outputs 
	);
	fa_1b fa941(
		.a(x_a[972]), .b(y_b[972]), .c_in(ci_out[941]), //Inputs
		.s(to_cut_res[43]), .c_out(ci_out[942]) //Outputs 
	);
	fa_1b fa942(
		.a(x_a[973]), .b(y_b[973]), .c_in(ci_out[942]), //Inputs
		.s(to_cut_res[44]), .c_out(ci_out[943]) //Outputs 
	);
	fa_1b fa943(
		.a(x_a[974]), .b(y_b[974]), .c_in(ci_out[943]), //Inputs
		.s(to_cut_res[45]), .c_out(ci_out[944]) //Outputs 
	);
	fa_1b fa944(
		.a(x_a[975]), .b(y_b[975]), .c_in(ci_out[944]), //Inputs
		.s(to_cut_res[46]), .c_out(ci_out[945]) //Outputs 
	);
	fa_1b fa945(
		.a(x_a[976]), .b(y_b[976]), .c_in(ci_out[945]), //Inputs
		.s(to_cut_res[47]), .c_out(ci_out[946]) //Outputs 
	);
	fa_1b fa946(
		.a(x_a[977]), .b(y_b[977]), .c_in(ci_out[946]), //Inputs
		.s(to_cut_res[48]), .c_out(ci_out[947]) //Outputs 
	);
	fa_1b fa947(
		.a(x_a[978]), .b(y_b[978]), .c_in(ci_out[947]), //Inputs
		.s(to_cut_res[49]), .c_out(ci_out[948]) //Outputs 
	);
	fa_1b fa948(
		.a(x_a[979]), .b(y_b[979]), .c_in(ci_out[948]), //Inputs
		.s(to_cut_res[50]), .c_out(ci_out[949]) //Outputs 
	);
	fa_1b fa949(
		.a(x_a[980]), .b(y_b[980]), .c_in(ci_out[949]), //Inputs
		.s(to_cut_res[51]), .c_out(ci_out[950]) //Outputs 
	);
	fa_1b fa950(
		.a(x_a[981]), .b(y_b[981]), .c_in(ci_out[950]), //Inputs
		.s(to_cut_res[52]), .c_out(ci_out[951]) //Outputs 
	);
	fa_1b fa951(
		.a(x_a[982]), .b(y_b[982]), .c_in(ci_out[951]), //Inputs
		.s(to_cut_res[53]), .c_out(ci_out[952]) //Outputs 
	);
	fa_1b fa952(
		.a(x_a[983]), .b(y_b[983]), .c_in(ci_out[952]), //Inputs
		.s(to_cut_res[54]), .c_out(ci_out[953]) //Outputs 
	);
	fa_1b fa953(
		.a(x_a[984]), .b(y_b[984]), .c_in(ci_out[953]), //Inputs
		.s(to_cut_res[55]), .c_out(ci_out[954]) //Outputs 
	);
	fa_1b fa954(
		.a(x_a[985]), .b(y_b[985]), .c_in(ci_out[954]), //Inputs
		.s(to_cut_res[56]), .c_out(ci_out[955]) //Outputs 
	);
	fa_1b fa955(
		.a(x_a[986]), .b(y_b[986]), .c_in(ci_out[955]), //Inputs
		.s(to_cut_res[57]), .c_out(ci_out[956]) //Outputs 
	);
	fa_1b fa956(
		.a(x_a[987]), .b(y_b[987]), .c_in(ci_out[956]), //Inputs
		.s(to_cut_res[58]), .c_out(ci_out[957]) //Outputs 
	);
	fa_1b fa957(
		.a(x_a[988]), .b(y_b[988]), .c_in(ci_out[957]), //Inputs
		.s(to_cut_res[59]), .c_out(ci_out[958]) //Outputs 
	);
	fa_1b fa958(
		.a(x_a[989]), .b(y_b[989]), .c_in(ci_out[958]), //Inputs
		.s(to_cut_res[60]), .c_out(ci_out[959]) //Outputs 
	);
	fa_1b fa959(
		.a(x_a[990]), .b(y_b[990]), .c_in(ci_out[959]), //Inputs
		.s(to_cut_res[61]), .c_out(ci_out[960]) //Outputs 
	);
	fa_1b fa960(
		.a(x_a[991]), .b(y_b[991]), .c_in(ci_out[960]), //Inputs
		.s(to_cut_res[62]), .c_out(y_b[992]) //Outputs 
	);

	ha_1b ha31(
		.a(x_a[992]), .b(y_b[992]), //Inputs
		.s(to_cut_res[63]), .c_out(ci_out[961]) //Outputs 
	);

	assign m_out = to_cut_res[45:14];
endmodule // for module m_2c_32b

module layer1_weight_0_rom(
	output logic [31:0] data [64]// 32 bit address
);
	logic [31:0] mem [64]; // 64 inputs to the node
	initial begin
		 $readmemb("C:/Users/xbk1l/Documents/Educational/Fall 2021/DIC/Hardware-AI-Digit-Detection/Python-Parsing/layer1_weight_0.dat", mem);
	end
	assign data = mem; 
endmodule // for layer1_weight_0_rom

module pixel_rom_for_1(
	output logic [31:0] data [784]// 32 bit address
);
	logic [31:0] mem [784]; // 784 inputs to the node
	initial begin
		 $readmemb("C:/Users/xbk1l/Documents/Educational/Fall 2021/DIC/Hardware-AI-Digit-Detection/Python-Parsing/image_of_1.dat", mem);
	end
	assign data = mem; 
endmodule // for pixel_rom_for_1

module layer0_bias_rom(
	output logic [31:0] data [64]// 32 bit address
);
	logic [31:0] mem [64]; // 64 inputs to the node
	initial begin
		 $readmemb("C:/Users/xbk1l/Documents/Educational/Fall 2021/DIC/Hardware-AI-Digit-Detection/Python-Parsing/layer0_bias.dat", mem);
	end
	assign data = mem; 
endmodule // for layer0_bias_rom

module layer0_node_0(
	input logic [31:0] input_data [784],
	input logic [31:0] weights [784],
	input logic [31:0] bias,
	input logic clk, enabled,
	output logic [31:0] node_res
);
	logic [31:0] grp_inputs [785];
	logic [31:0] eqlz_weights [785];

	//group inputs
	assign grp_inputs[0:783] = input_data[0:783];
	assign grp_inputs[784] = bias;

	//equalize weights
	assign eqlz_weights[0:783] = weights[0:783];
	assign eqlz_weights[784] = 32'b01; // bias * 1

	logic [31:0] mult_res;

	integer i = 0; //change to logic [31:0] for syn
	reg [31:0] mul_x, mul_y;
	m_2c_32b mul(.x(mul_x), .y(mul_y), .m_out(mult_res));
	always @(posedge clk) begin
		if(enabled) begin
			mul_x = grp_inputs[i];
			mul_y = eqlz_weights[i];
			i = i + 1;
		end
	end

	logic [31:0] sum_res;
	logic carry;

	reg [31:0] add_a, add_b;
	reg add_c_in;
	fa_32b adder(
		.a(add_a), .b(add_b), .c_in(add_c_in),
		.s(sum_res), .c_out(carry)
	);
	always @(negedge clk) begin
		if(enabled && i == 1) begin
			add_a = 32'b0;
			add_b = mult_res;
			add_c_in = 32'b0;
		end
		else if(enabled) begin
			add_a = sum_res;
			add_b = mult_res;
			add_c_in = carry;
		end
	end

	reg [31:0] act_r_in;
	relu act_func(.r_in(act_r_in), .r_out(node_res));
	always @(negedge enabled) begin
		act_r_in = sum_res;
	end

endmodule //layer0_node_0

module layer_0(
	input logic [31:0] input_data [784],
	input logic clk, enabled,
	output logic [31:0] data [64]
);

	logic [31:0] bias [64];
	layer0_bias_rom bias_rom(.data(bias));

	logic [31:0] weights_0 [784];
	layer0_weight_0_rom weight_rom_0(.data(weights_0));
	layer0_node_0 node_0(.input_data(input_data), .weights(weights_0), .bias(bias[0]), .clk(clk), .enabled(enabled), .node_res(data[0]));

endmodule //layer_0

module control(
	output logic clk,
	output logic layer0_en
);

	initial begin
		clk = 1'b0;

		layer0_en = 1'b1;

		forever begin
			#10 clk = ~clk;
		end
	end

	integer clock_cycles = 0;
	always @(negedge clk) begin
		if(clock_cycles == 784) begin
			layer0_en = 1'b0;
		end
		clock_cycles = clock_cycles + 1;

	end
endmodule //control

module test();
	logic clk;
	logic layer0_en;

	control con_mod(.clk(clk), .layer0_en(layer0_en));

	logic [31:0] px_data [784];
	pixel_rom_for_0 pixels(.data(px_data));

	logic [31:0] layer_data_0 [64];
	layer_0 lay0(.input_data(px_data), .clk(clk), .enabled(layer0_en), .data(layer_data_0));

endmodule