from functions import use_fa

def fa_operations(n, inputs, outputs, submodule):
	output = []
	
	a, b, c_in = inputs
	s, c_out = outputs
	ci_out = "ci_out"
	if(n > 1):
		in_a, in_b, in_c_in = submodule[0].input_names
		out_s, out_c_out = submodule[0].output_names
		output.append(f"	wire [{n-2}:0] {ci_out};\n\n")
		for i in range(n):
			if(i == 0):
				output.append(use_fa(i , (in_a, a, i), (in_b, b, i), (in_c_in, c_in, -1), (out_s, s, i), (out_c_out, ci_out, i)))
				# output.append(f"	fa_1b fa{i}(\n")
				# output.append(f"		.{in_a}({a}[{i}]), .{in_b}({b}[{i}]), .{in_c_in}({c_in}), //Inputs\n")
				# output.append(f"		.{out_s}({s}[{i}]), .{out_c_out}({ci_out}[{i}])	// Outputs\n")
				# output.append(f"	);\n")
			elif(i == n-1):
				output.append(use_fa(i , (in_a, a, i), (in_b, b, i), (in_c_in, ci_out, i-1), (out_s, s, i), (out_c_out, c_out, -1)))
				# output.append(f"	fa_1b fa{i}(\n")
				# output.append(f"		.{in_a}({a}[{i}]), .{in_b}({b}[{i}]), .{in_c_in}({ci_out}[{i-1}]), //Inputs\n")
				# output.append(f"		.{out_s}({s}[{i}]), .{out_c_out}({c_out})	// Outputs\n")
				# output.append(f"	);\n")
			else:
				output.append(use_fa(i , (in_a, a, i), (in_b, b, i), (in_c_in, ci_out, i-1), (out_s, s, i), (out_c_out, ci_out, i)))
				# output.append(f"	fa_1b fa{i}(\n")
				# output.append(f"		.{in_a}({a}[{i}]), .{in_b}({b}[{i}]), .{in_c_in}({ci_out}[{i-1}]), //Inputs\n")
				# output.append(f"		.{out_s}({s}[{i}]), .{out_c_out}({ci_out}[{i}])	// Outputs\n")
				# output.append(f"	);\n")
		
	elif(n == 1): # fa_1b operations
		output.append("	wire [2:0] net;\n\n")
		output.append(f"	xor(net[0], {a}, {b});\n")
		output.append(f"	and(net[1], {a}, {b});\n")
		output.append(f"	and(net[2], net[0], {c_in});\n")
		output.append(f"	xor({s}, net[0], {c_in});\n")
		output.append(f"	or({c_out}, net[2], net[1]);\n")

	return output