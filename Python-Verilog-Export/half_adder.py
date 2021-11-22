def ha_operations(inputs, outputs):
	output = []
	#TODO pass in the sub module to get it's input
	a, b = inputs
	s, c_out = outputs

	output.append(f"	xor({s}, {a}, {b});\n")
	output.append(f"	and({c_out}, {a}, {b});\n")
	
	return output