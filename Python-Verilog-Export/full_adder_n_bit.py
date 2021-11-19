def fa_operations(n, inputs, outputs):
	output = []
	#TODO pass in the sub module to get it's input
	a, b, c_in = inputs
	s, c_out = outputs

	if(n > 1):
		output.append(f"	wire [{n-2}:0] ci_out;\n\n")
		for i in range(n):
			if(i == 0):
				output.append(f"	fa_1b fa{i}(.a({a}[{i}]), .b({b}[{i}]), .c_in({c_in}), .c_out(ci_out[{i}]), .s({s}[{i}]));\n")
			elif(i == n-1):
				output.append(f"	fa_1b fa{i}(.a({a}[{i}]), .b({b}[{i}]), .c_in(ci_out[{i-1}]), .c_out({c_out}), .s({s}[{i}]));\n")
			else:
				output.append(f"	fa_1b fa{i}(.a({a}[{i}]), .b({b}[{i}]), .c_in(ci_out[{i-1}]), .c_out(ci_out[{i}]), .s({s}[{i}]));\n")
		
	elif(n == 1): # fa_1b operations
		output.append("	wire [2:0] net;\n\n")
		output.append(f"	xor(net[0], {a}, {b});\n")
		output.append(f"	and(net[1], {a}, {b});\n")
		output.append(f"	and(net[2], net[0], {c_in});\n")
		output.append(f"	xor({s}, net[0], {c_in});\n")
		output.append(f"	or({c_out}, net[2], net[1]);\n")

	return output