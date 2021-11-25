import json
import math
from full_adder_n_bit import fa_operations
from half_adder import ha_operations
from twos_compliment_multiplier import mult_2c_operations

class BasicModuleBuilder():
	def __init__(self, module_type, n_bits = 1, input_vals = [], output_vals = [], needed_submodules = []):
		self.module_type = module_type
		self.module_name = module_type + f"_{n_bits}b"
		print(self.module_name)
		self.n = n_bits

		self.input_vals = input_vals
		self.input_names = []
		for input_name, _ in input_vals:
			self.input_names.append(input_name)

		self.output_vals = output_vals
		self.output_names = []
		for output_name, _ in output_vals:
			self.output_names.append(output_name)

		self.needed_submodules = needed_submodules

		self.used_count = 0 # For keeping track of when used during Network wiring

		# self.needed_sub_modules = needed_modules #array of used module classes
		
		self.build_base()
		module_operations = []
		if(module_type == "fa"):
			module_operations = fa_operations(self.n, self.input_names, self.output_names, self.needed_submodules)
		elif(module_type == "ha"):
			module_operations = ha_operations(self.input_names, self.output_names)
		elif(module_type == "m_2c"):
			module_operations = mult_2c_operations(self.n, self.input_names, self.output_names, self.needed_submodules)
		else:
			print(f"No module creation implemented for {module_type}")

		for operation in module_operations:
			self.base += operation

		self.base.append(f"endmodule // for module {self.module_name}\n\n")
  
	def build_base(self):
		self.base = []
		self.base.append(f"module {self.module_name}(\n")

		matching_bits = {
			"inputs":{},
			"outputs":{}
		}
		# Setup matching bits for inputs
		for inputs in self.input_vals:
			print(f"Inputs {self.module_name}: {matching_bits}")
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
			print(f"Outputs {self.module_name}: {matching_bits}")
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
				str_out = f"	input [{bit-1}:0]"
			for in_names in matching_bits["inputs"][bit]:
				print(in_names)
				str_out += f" {in_names},"
			str_out += "\n"

			self.base.append(str_out)
		
		output_count = len(matching_bits["outputs"])
		for out_index, bit in enumerate(matching_bits["outputs"]):
			str_out = ""
			if(bit == 1):
				str_out = f"   output"
			else:
				str_out = f"	output [{bit-1}:0]"
			for out_names in matching_bits["outputs"][bit]:
				# on last bit on output and it's the last index of the outputs don't add comma
				if(out_names == matching_bits["outputs"][bit][-1] and out_index == output_count - 1): #  or output_count == 1
					str_out += f" {out_names}"
				else:
					str_out += f" {out_names},"
			str_out += "\n"
			
			self.base.append(str_out)
		
		self.base.append(f");\n")

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

class RomModuleBuilder():
	def __init__(self, name, data_size, mem_amount, dat_file_path):
		self.name = name
		self.data_size = data_size
		self.mem_amount = mem_amount
		self.file_path = dat_file_path

		self.base = [f"module {name}(\n"]
		self.base.append(f"\toutput [{data_size-1}:0] data [{mem_amount}]// {data_size} bit address\n")
		self.base.append(f");\n")
		self.base.append(f"\tlogic [{data_size-1}:0] mem [{mem_amount}]; // {mem_amount} inputs to the node\n")
		self.base.append(f"\tinitial begin\n")
		self.base.append(f'\t\t $readmemb("{dat_file_path}", mem);\n')
		self.base.append(f"\tend\n")
		self.base.append(f"\tassign data = mem; \n\n")
		self.base.append(f"endmodule")

	def output_base(self, file_ptr):
		for string in self.base:
			file_ptr.write(string)

class ActivationFuncModuleBuilder():
	def __init__(self, name, data_size):
		self.name = name
		self.data_size = data_size

		self.base = []
		if(name == 'relu'):
			self.build_relu()
	
	def build_relu(self):
		self.base.append("module relu(\n")
		self.base.append(f"\tinput [{self.data_size-1}:0] r_in,\n")
		self.base.append(f"\toutput [{self.data_size-1}:0] r_out\n")
		self.base.append(");\n")
		self.base.append(f"\tassign r_out = (r_in[{self.data_size-1}] == 0) ? r_in : {self.data_size}'b0;\n")
		self.base.append("endmodule\n")

	def output_base(self, file_ptr):
		for string in self.base:
			file_ptr.write(string)

class BuildNode():
	def __init__(self, name, node_index, adder_module, mult_module, data_size, activation_function_module, input_amount):
		self.name = name 
		self.node_index = node_index
		self.adder_module = adder_module
		self.mult_module = mult_module
		self.data_size = data_size
		self.activation_function_module = activation_function_module
		self.input_amount = input_amount

		self.base = []
		self.build_base()
		self.implement_summation()
	
	def build_base(self):
		self.base.append(f"module {self.name}(\n")
		self.base.append(f"\tinput [{self.data_size - 1}:0] inputs [{self.input_amount }]\n")
		self.base.append(f"\tinput [{self.data_size - 1}:0] weights [{self.input_amount }]\n")
		self.base.append(f"\tinput [{self.data_size - 1}:0] bias\n")
		self.base.append(f"\toutput [{self.data_size - 1}:0] node_res\n")
		self.base.append(f");\n")

	def implement_summation(self):
		self.base.append(f"\tlogic [{self.data_size - 1}:0] to_sum [{self.input_amount + 1}]; //extra to add in bias\n")
		#Use logic we have in test_rom.sv to complete this taking
		for i in range(self.input_amount):
			self.base.append(f"\n\tm_2c_{data_size}b mul{i}(.x(inputs[{i}]), .y(weights[{i}]), .m_out(to_sum[{i}]));\n\n")
		self.base.append(f"\tassign to_sum[{self.input_amount}] = bias;\n\n")
		self.base.append(f"\tlogic carry [{self.input_amount + 1}];\n")
		self.base.append(f"\tlogic [{self.data_size - 1}:0] sum_steps [{self.input_amount}];\n")
		#adder loop
		self.base.append(f"\tfa_{self.data_size}b adder0(.a(to_sum[0]), .b(to_sum[1]), .c_in(carry[0]), .s(sum_steps[0]), .c_out(carry[1]));\n")
		for i in range(self.input_amount):
			self.base.append(f"\tfa_{self.data_size}b adder{i}(\n")
			self.base.append(f"\t\t.a(sum_steps[{i}]), .b(to_sum[{i+2}]), .c_in(carry[{i+1}]),\n")
			self.base.append(f"\t\t.s(sum_steps[{i+1}]), .c_out(carry[{i+2}])\n")
			self.base.append("\t);\n")
		self.base.append(f"\t{self.activation_function_module.name} act_func(.r_in(sum_steps[{self.input_amount - 1}]), .r_out(node_res);\n")
		self.base.append(f"endmodule //{self.name}\n")
		
	def output_base(self, file_ptr):
		for string in self.base:
			file_ptr.write(string)

class BuildLayer():
	def __init__(self, data_size, nodes, input_module, weight_modules, bias_module):
		self.base = []
		self.build_base()
		self.implement_nodes()
	
	def build_base(self):
		self.base.append(f"module {self.name}(\n")
		self.base.append(f"\toutput [{self.data_size - 1}:0] data\n")
		self.base.append(f");\n")

	def implement_nodes(self):

		'''only has output which is like [x:0] data [y] it creates the logic var for holding the rom data to pass to
		the input, weight, and bias to the node'''
		#Creates the both rom and node refferences and stores the rom data in vars that gets passed to the nodes.
	#if it is input layer then the input part of the node will be the px array
	#each node's node_res output will be saved to an logic array in layer that will be it's output the length 
	# of the array for or first layer is 64
	

#TODO make output base just be a function that takes in the classes bases
# Example of use cases
ha = BasicModuleBuilder("ha", 1, [("a", 1), ("b", 1)], [("s", 1), ("c_out", 1)])
fa_1b = BasicModuleBuilder("fa", 1, [("a", 1), ("b", 1), ("c_in", 1)], [("s", 1), ("c_out", 1)])

fa_32b = BasicModuleBuilder(
		"fa", 32, 
		[("a", 32), ("b", 32), ("c_in", 1)],
		[("s", 32), ("c_out", 1)],
		[fa_1b]
	)

mult_2c_32 = BasicModuleBuilder("m_2c", 32, [("x", 32), ("y", 32)], [("m_out", 32)], [ha, fa_1b])

# cla_1b = BasicModuleBuilder("cla", 4, [("a", 4), ("b", 4), ("c_in", 1)], [])

data_size = 32
input_amount = 784
node_count = 64 

px_rom_arr = []
for i in range(10):
	filename = f"./../Python-Parsing/image_of_{i}.dat"
	px_rom_arr.append(RomModuleBuilder(f"pixel_rom_for_{i}", data_size, input_amount, filename))

weight_rom_arr = []
for i in range(node_count):
	filename = f"./../Python-Parsing/fc_weight_{i}.dat"
	weight_rom_arr.append(RomModuleBuilder(f"weights_{i}_fc_rom", data_size, input_amount, i, filename))

bias_rom = RomModuleBuilder("bias_fc_rom", data_size, node_count, "./../Python-Parsing/fc_bias.dat")

relu = ActivationFuncModuleBuilder("relu", 32)

node_arr = []
for i in range(node_count):
	node_arr.append(BuildNode(f"fc_node_{i}", i, fa_32b, mult_2c_32, data_size, relu, input_amount))

#TODO implement layer
fc_layer = BuildLayer(data_size, node_arr, px_rom_arr[0], weight_rom_arr, bias_rom)

file_output = open("test.sv", "w")
ha.output_base(file_output)
fa_1b.output_base(file_output)
fa_32b.output_base(file_output)
mult_2c_32.output_base(file_output)

# print(fa_1b.use_module([("a","bit0"), ("b", "bit1"), ("c_in", "bit2")], [("s", "bit_O_0"), ("c_out", "bit_O_1")]))