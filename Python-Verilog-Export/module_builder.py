import json
from full_adder_n_bit import fa_operations

class Module_Builder():
	def __init__(self, module_type, n_bits = 1, input_vals = [], output_vals = []):
		self.module_name = module_type + f"_{n_bits}b"
		self.n = n_bits

		self.input_vals = input_vals
		self.input_names = []
		for tup in input_vals:
			self.input_names.append(tup[0])

		self.output_vals = output_vals
		self.output_names = []
		for tup in output_vals:
			self.output_names.append(tup[0])

		self.used_count = 0

		# self.needed_sub_modules = needed_modules #array of used module classes
		
		self.build_base()
		if(module_type == "fa"):
			self.build_fa_nb()
		elif(module_type == "mult2c"):
			'''self.build_2c_multiplier_nb()'''
		else:
			print(f"No module creation implemented for {module_type}")
  
	def build_base(self):
		self.base = []
		self.base.append(f"module {self.module_name}(\n")

		matching_bits = {
			"inputs":{},
			"outputs":{}
		}
		# Setup matching bits for inputs
		for inputs in self.input_vals:
			name, bits = inputs
			len_stored = len(matching_bits["inputs"])
			if(not matching_bits["inputs"]):
				print("Empty Dict")
				matching_bits["inputs"].update({bits:[name]})
			else:
				for index, bit_num in enumerate(matching_bits["inputs"]):
					if(bit_num == bits):
						print("Found Matching")
						matching_bits["inputs"][bit_num].append(name)
						break
					elif(index == len_stored-1):
						print("didn't find matching bit")
						matching_bits["inputs"].update({bits:[name]})
						break
		# Setup matching bits for outputs
		for outputs in self.output_vals:
			name, bits = outputs
			len_stored = len(matching_bits["outputs"])
			if(not matching_bits["outputs"]):
				print("Empty Dict")
				matching_bits["outputs"].update({bits:[name]})
			else:
				for index, bit_num in enumerate(matching_bits["outputs"]):
					if(bit_num == bits):
						print("Found Matching")
						matching_bits["outputs"][bit_num].append(name)
						break
					elif(index == len_stored-1):
						print("didn't find matching bit")
						matching_bits["outputs"].update({bits:[name]})
						break

		for bit in matching_bits["inputs"]:
			str_out = ""
			if(bit == 1):
				str_out = f"   input"
			else:
				str_out = f"   [{bit-1}:0] input"
			for in_names in matching_bits["inputs"][bit]:
				print(in_names)
				str_out += f" {in_names},"
			str_out += "\n"

			self.base.append(str_out)

		for bit in matching_bits["outputs"]:
			str_out = ""
			if(bit == 1):
				str_out = f"   output"
			else:
				str_out = f"   [{bit-1}:0] output"
			for out_names in matching_bits["outputs"][bit]:
				print(out_names)
				if(out_names == matching_bits["outputs"][bit][-1]):
					str_out += f" {out_names}"
				else:
					str_out += f" {out_names},"
			str_out += "\n"

			self.base.append(str_out)

		# for outputs in self.output_vals:
		#    name, bits = outputs
		#    if(outputs == self.output_vals[-1]):
		#       if(bits == 1):
		#          self.base.append(f"  output {name}\n")
		#       else:
		#          self.base.append(f"  output [{bits-1}:0] {name}\n")
		#    else: 
		#       if(bits == 1):
		#          self.base.append(f"  output {name},\n")
		#       else:
		#          self.base.append(f"  output [{bits-1}:0] {name},\n")

		self.base.append(f");\n")

	def build_fa_nb(self):
		'''Finish FA Build '''
		data_operations = fa_operations(self.n, self.input_names, self.output_names)

		for operation in data_operations:
			self.base += operation
		self.base.append(f"endmodule // for module {self.module_name}")
		
	def output_base(self, file_ptr):
		for string in self.base:
			file_ptr.write(string)
		# Free memory?
		# del(self.base)

	# Passed in values are a tuple array where the first index is the matching name from base and the second is the bit name to link to the base
	def use_module(self, passed_in_inputs = [], pass_in_outputs = []):
		output = [f"{self.module_name} {self.module_name}{self.used_count}(\n"]
		in_size = len(self.input_vals)
		out_size = len(self.output_vals)
		# Possibly change to assume the indexes should be matching instead of matching names and just past in the name of 
		for in_name, _ in self.input_vals:
			for name, passed_in_name in passed_in_inputs:
				if(name == in_name):
					if(in_size == 1):
						output.append(f".{name}({passed_in_name})\n")
					else:
						output.append(f".{name}({passed_in_name}) ")
					in_size -= 1
					break

		for out_name, _ in self.output_vals:
			for name, passed_in_name in pass_in_outputs:
				if(name == out_name):
					if(out_size == 1):
						output.append(f".{name}({passed_in_name})\n")
					else:
						output.append(f".{name}({passed_in_name}) ")
					out_size -= 1
					break

		self.used_count += 1
		return output

fa_1b = Module_Builder("fa", 1, [("a", 1), ("b", 1), ("c_in", 1)], [("s", 1), ("c_out", 1)])
file_output = open("test.sv", "w")
fa_1b.output_base(file_output)

print(fa_1b.use_module([("a","bit0"), ("b", "bit1"), ("c_in", "bit2")], [("s", "bit_O_0"), ("c_out", "bit_O_1")]))