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
def fa_operations(n):
	output = []
	output.append(f"	wire [{n-2}:0] ci_out;\n")

	return output