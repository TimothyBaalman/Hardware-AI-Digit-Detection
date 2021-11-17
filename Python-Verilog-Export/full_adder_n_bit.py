# class N_Bit_FA():
# 	def __init__(self, n):
# 		self.n = n
# 		self.output = []
# 		self.output.append(f"module fa_{n}b(\n")
# 		self.output.append(f"\tinput [{n-1}:0] a, b,\n")
# 		self.output.append(f"\tinput c_in,\n")
# 		self.output.append(f"\toutput [{n-1}:0] s,\n")
# 		self.output.append(f"\toutput c_out\n")
# 		self.output.append(f");\n")
# 		self.output.append(f"wire [{n-2}:0] ci_out;\n")
	
# fa_32b = N_Bit_FA(32)
# print(fa_32b.output)
def fa_operations(n, inputs, outputs):
	output = []
	if(n > 1):
		output.append(f"	wire [{n-2}:0] ci_out;\n")
		
	elif(n == 1): # fa_1b operations
		a, b, c_in = inputs
		s, c_out = outputs
	
		output.append("	wire [2:0] net;\n")
		output.append(f"	xor(net[0], {a}, {b});\n")
		output.append(f"	and(net[1], {a}, {b});\n")
		output.append(f"	and(net[2], net[0], {c_in});\n")
		output.append(f"	xor({s}, net[0], {c_in});\n")
		output.append(f"	or({c_out}, net[2], net[1]);\n")

	return output