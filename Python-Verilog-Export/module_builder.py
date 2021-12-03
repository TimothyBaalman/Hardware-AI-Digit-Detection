import json
import math
from full_adder_n_bit import fa_operations
from half_adder import ha_operations
from twos_compliment_multiplier import mult_2c_operations

def write_to_file(arr, file_ptr):
	for string in arr:
		file_ptr.write(string)

class BasicModuleBuilder():
	def __init__(self, module_type, n_bits = 1, input_vals = [], output_vals = [], needed_submodules = []):
		self.module_type = module_type
		self.name = module_type + f"_{n_bits}b"
		print(self.name)
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

		self.base.append(f"endmodule // for module {self.name}\n\n")
  
	def build_base(self):
		self.base = []
		self.base.append(f"module {self.name}(\n")

		matching_bits = {
			"inputs":{},
			"outputs":{}
		}
		# Setup matching bits for inputs
		for inputs in self.input_vals:
			print(f"Inputs {self.name}: {matching_bits}")
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
			print(f"Outputs {self.name}: {matching_bits}")
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
				str_out = f"   input logic"
			else:
				str_out = f"	input logic [{bit-1}:0]"
			for in_names in matching_bits["inputs"][bit]:
				print(in_names)
				str_out += f" {in_names},"
			str_out += "\n"

			self.base.append(str_out)
		
		output_count = len(matching_bits["outputs"])
		for out_index, bit in enumerate(matching_bits["outputs"]):
			str_out = ""
			if(bit == 1):
				str_out = f"   output logic"
			else:
				str_out = f"	output logic [{bit-1}:0]"
			for out_names in matching_bits["outputs"][bit]:
				# on last bit on output and it's the last index of the outputs don't add comma
				if(out_names == matching_bits["outputs"][bit][-1] and out_index == output_count - 1): #  or output_count == 1
					str_out += f" {out_names}"
				else:
					str_out += f" {out_names},"
			str_out += "\n"
			
			self.base.append(str_out)
		
		self.base.append(f");\n")

	# Passed in values are a tuple array where the first index is the matching name from base and the second is the bit name to link to the base
	def use_module(self, passed_in_inputs = [], pass_in_outputs = []):
		output = [f"{self.name} {self.name}{self.used_count}(\n"]
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
		self.base.append(f"\toutput logic [{data_size-1}:0] data [{mem_amount}]// {data_size} bit address\n")
		self.base.append(f");\n")
		self.base.append(f"\tlogic [{data_size-1}:0] mem [{mem_amount}]; // {mem_amount} inputs to the node\n")
		self.base.append(f"\tinitial begin\n")
		self.base.append(f'\t\t $readmemb("{dat_file_path}", mem);\n')
		self.base.append(f"\tend\n")
		self.base.append(f"\tassign data = mem; \n")
		self.base.append(f"endmodule // for {self.name}\n\n")

class ActivationFuncModuleBuilder():
	def __init__(self, name, data_size):
		self.name = name
		self.data_size = data_size
		self.input_name = ""
		self.output_name = ""

		self.base = []
		if(name == 'relu'):
			self.build_relu()
	
	def build_relu(self):
		self.input_name = "r_in"
		self.output_name = "r_out"

		self.base.append("module relu(\n")
		self.base.append(f"\tinput logic [{self.data_size-1}:0] {self.input_name},\n")
		self.base.append(f"\toutput logic [{self.data_size-1}:0] {self.output_name}\n")
		self.base.append(");\n")
		self.base.append(f"\tassign r_out = (r_in[{self.data_size-1}] == 0) ? r_in : {self.data_size}'b0;\n")
		self.base.append("endmodule\n\n")

class BuildNode():
	def __init__(self, name, amt_layers, current_layer, node_index, adder_module, mult_module, data_size, activation_function_module, input_amount):
		self.name = name 
		self.amt_layers = amt_layers
		self.current_layer = current_layer
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
		self.base.append(f"\tinput logic [{self.data_size - 1}:0] input_data [{self.input_amount }],\n")
		self.base.append(f"\tinput logic [{self.data_size - 1}:0] weights [{self.input_amount }],\n")
		self.base.append(f"\tinput logic [{self.data_size - 1}:0] bias,\n")
		self.base.append(f"\tinput logic clk, enabled,\n")
		self.base.append(f"\toutput logic [{self.data_size - 1}:0] node_res\n")
		self.base.append(f");\n")

	def implement_summation(self):
		self.base.append(f"\tlogic [{self.data_size - 1}:0] grp_inputs [{self.input_amount + 1}];\n")
		self.base.append(f"\tlogic [{self.data_size - 1}:0] eqlz_weights [{self.input_amount + 1}];\n\n")
		self.base.append(f"\t//group inputs\n")
		self.base.append(f"\tassign grp_inputs[0:{self.input_amount - 1}] = input_data[0:{self.input_amount - 1}];\n")
		self.base.append(f"\tassign grp_inputs[{self.input_amount}] = bias;\n\n")
		
		self.base.append(f"\t//equalize weights\n")
		self.base.append(f"\tassign eqlz_weights[0:{self.input_amount - 1}] = weights[0:{self.input_amount - 1}];\n")
		self.base.append(f"\tassign eqlz_weights[{self.input_amount}] = {self.data_size}'b01; // bias * 1\n\n")
		
		self.base.append(f"\tlogic [{self.data_size - 1}:0] mult_res;\n\n")

		#There is a likely error where the inputs need to be in the second spot on the mult and the weights in the first
		mul_x_name = self.mult_module.input_names[0]
		mul_y_name = self.mult_module.input_names[1]
		self.base.append(f"\tinteger i = 0; //change to logic [31:0] for syn\n")
		self.base.append(f"\treg [{self.data_size - 1}:0] mul_{mul_x_name}, mul_{mul_y_name};\n")
		self.base.append(f"\t{self.mult_module.name} mul(.{mul_x_name}(mul_{mul_x_name}), .{mul_y_name}(mul_{mul_y_name}), .{self.mult_module.output_names[0]}(mult_res));\n")
		self.base.append(f"\talways @(posedge clk) begin\n")
		self.base.append(f"\t\tif(enabled) begin\n")
		self.base.append(f"\t\t\tmul_{mul_x_name} = grp_inputs[i];\n")
		self.base.append(f"\t\t\tmul_{mul_y_name} = eqlz_weights[i];\n")
		self.base.append(f"\t\t\ti = i + 1;\n")
		self.base.append(f"\t\tend\n")
		self.base.append(f"\tend\n\n")

		add_a_name = self.adder_module.input_names[0]
		add_b_name = self.adder_module.input_names[1]
		add_c_in_name = self.adder_module.input_names[2]
		self.base.append(f"\tlogic [{self.data_size - 1}:0] sum_res;\n")
		self.base.append(f"\tlogic carry;\n\n")
		# self.base.append(f"\tinitial begin\n")
		# self.base.append(f"\t\tsum_res = {self.data_size}'b0;\n")
		# self.base.append(f"\t\tcarry = 1'b0;\n")
		# self.base.append(f"\tend\n")

		self.base.append(f"\treg [{self.data_size - 1}:0] add_{add_a_name}, add_{add_b_name};\n")
		self.base.append(f"\treg add_{add_c_in_name};\n")
		self.base.append(f"\t{self.adder_module.name} adder(\n")
		self.base.append(f"\t\t.{add_a_name}(add_{add_a_name}), .{add_b_name}(add_{add_b_name}), .{add_c_in_name}(add_{add_c_in_name}),\n")
		self.base.append(f"\t\t.{self.adder_module.output_names[0]}(sum_res), .{self.adder_module.output_names[1]}(carry)\n")
		self.base.append(f"\t);\n")
		self.base.append(f"\talways @(negedge clk) begin\n")
		self.base.append(f"\t\tif(enabled && i == 1) begin\n")
		self.base.append(f"\t\t\tadd_{add_a_name} = {self.data_size}'b0;\n")
		self.base.append(f"\t\t\tadd_{add_b_name} = mult_res;\n")
		self.base.append(f"\t\t\tadd_{add_c_in_name} = {self.data_size}'b0;\n")
		self.base.append(f"\t\tend\n")
		self.base.append(f"\t\telse if(enabled) begin\n")
		self.base.append(f"\t\t\tadd_{add_a_name} = sum_res;\n")
		self.base.append(f"\t\t\tadd_{add_b_name} = mult_res;\n")
		self.base.append(f"\t\t\tadd_{add_c_in_name} = carry;\n")
		self.base.append(f"\t\tend\n")
		self.base.append(f"\tend\n\n")

		if(self.current_layer == self.amt_layers - 1):
			act_in_name = self.activation_function_module.input_name
			self.base.append(f"\treg [{self.data_size - 1}:0] act_{act_in_name};\n")
			self.base.append(f"\t{self.activation_function_module.name} act_func(.{act_in_name}(act_{act_in_name}), .{self.activation_function_module.output_name}(node_res));\n")
			self.base.append(f"\talways @(negedge enabled) begin\n")
			self.base.append(f"\t\tact_{act_in_name} = sum_res;\n")
			self.base.append(f"\tend\n\n")
		else:
			self.base.append(f"\tassign node_res = sum_res;\n")

		self.base.append(f"endmodule //{self.name}\n\n")

# Layer deals with implementing the nodes, providing connection to their needed input, and combining their output.
#	it will also implement the need weight and bias rom
class BuildLayer():
	def __init__(self, name, data_size, input_count, nodes, weight_modules, bias_module):
		self.name = name
		self.data_size = data_size
		self.input_count = input_count
		self.node_count = len(nodes)
		self.nodes = nodes
		self.weight_mods = weight_modules
		self.bias_mod = bias_module
		self.base = []

		self.build_base()
		self.implement_nodes()
	
	def build_base(self):
		self.base.append(f"module {self.name}(\n")
		self.base.append(f"\tinput logic [{self.data_size - 1}:0] input_data [{self.input_count}],\n")
		self.base.append(f"\tinput logic clk, enabled,\n")
		self.base.append(f"\toutput logic [{self.data_size - 1}:0] data [{self.node_count}]\n")
		self.base.append(f");\n\n")

	def implement_nodes(self):
		# self.base.append(f"\tlogic [{self.data_size - 1}:0] node_data [{self.node_count}];\n")
		self.base.append(f"\tlogic [{self.data_size - 1}:0] bias [{self.node_count}];\n")
		self.base.append(f"\t{self.bias_mod.name} bias_rom(.data(bias));\n\n")
		
		for i, node in enumerate(self.nodes):
			self.base.append(f"\tlogic [{self.data_size - 1}:0] weights_{i} [{self.input_count}];\n")
			self.base.append(f"\t{self.weight_mods[i].name} weight_rom_{i}(.data(weights_{i}));\n")
			self.base.append(f"\t{node.name} node_{i}(.input_data(input_data), .weights(weights_{i}), .bias(bias[{i}]), .clk(clk), .enabled(enabled), .node_res(data[{i}]));\n\n")
			
		# self.base.append(f"\tassign data = node_data;\n")
		self.base.append(f"endmodule //{self.name}\n\n")
		
class BuildControl():
	def __init__(self, name, layer_modules):
		self.name = name
		self.layer_mods = layer_modules
		self.layer_enables = []
		self.base = []
		self.build_base()
		self.build_control()
	
	def build_base(self):
		self.base.append(f"module {self.name}(\n")
		self.base.append("\toutput logic clk,\n")
		for i in range(len(self.layer_mods)):
			self.layer_enables.append(f"layer{i}_en")

			if(i == len(self.layer_mods) - 1):
				self.base.append(f"\toutput logic {self.layer_enables[i]}\n")
			else:
				self.base.append(f"\toutput logic {self.layer_enables[i]},\n")
			
		self.base.append(");\n")

	def build_control(self):
		
		
		self.base.append("\n\tinitial begin\n")
		self.base.append(f"\t\tclk = 1'b0;\n\n")
		for i in range(len(self.layer_mods)):
			if(i == 0):
				self.base.append(f"\t\t{self.layer_enables[i]} = 1'b1;\n")
			else:
				self.base.append(f"\t\t{self.layer_enables[i]} = 1'b0;\n")
		self.base.append("\n\t\tforever begin\n")
		self.base.append("\t\t\t#10 clk = ~clk;\n")
		self.base.append("\t\tend\n")
		self.base.append("\tend\n\n")

		self.base.append("\tinteger clock_cycles = 0;\n")
		self.base.append("\talways @(negedge clk) begin\n")
		prev_count = 0
		for i, layer in enumerate(self.layer_mods):
			if(i == len(self.layer_mods) - 1):
				self.base.append(f"\t\tif(clock_cycles == {layer.input_count + prev_count}) begin\n")
				self.base.append(f"\t\t\t{self.layer_enables[i]} = 1'b0;\n")
				self.base.append(f"\t\tend\n")
			else:
				self.base.append(f"\t\tif(clock_cycles == {layer.input_count + prev_count}) begin\n")
				self.base.append(f"\t\t\t{self.layer_enables[i]} = 1'b0;\n")
				self.base.append(f"\t\t\t{self.layer_enables[i+1]} = 1'b1;\n")
				self.base.append(f"\t\tend\n\n")
				prev_count += layer.input_count
		self.base.append("\t\tclock_cycles = clock_cycles + 1;\n\n")
		self.base.append(f"\tend\n")
		self.base.append(f"endmodule {self.name}//\n\n")
		
#Network connects all layers, implements pic_ROM, and outputs the guess
class BuildNetwork():
	def __init__(self, data_size, output_amount, control_module, px_module, layer_modules):
		self.data_size = data_size
		self.output_amount = output_amount
		self.control_mod = control_module
		self.px_mod = px_module
		self.layers = layer_modules
		self.layer_count = len(layer_modules)
		self.base = []
		self.build_base()
		self.connect_layers()

	def build_base(self):
		self.base.append(f"module Network(\n")
		self.base.append(f"\toutput logic [{self.data_size - 1}:0] guess [{self.output_amount}]\n")
		self.base.append(f");\n\n")
	
	def connect_layers(self):
		for i, layer in enumerate(self.layers):
			if(i == 0):
				self.base.append("\tlogic clk;\n")
				for num in range(len(self.layers)):
					self.base.append(f"\tlogic layer{num}_en;\n")

				self.base.append(f"\n\t{self.control_mod.name} con_mod(.clk(clk)")
				for num in range(len(self.layers)):
					self.base.append(f", .{self.control_mod.layer_enables[num]}(layer{num}_en)")
				self.base.append(");\n\n")

				self.base.append(f"\tlogic [{self.data_size - 1}:0] px_data [{layer.input_count}];\n")
				self.base.append(f"\t{self.px_mod.name} pixels(.data(px_data));\n\n")


				self.base.append(f"\tlogic [{self.data_size - 1}:0] layer_data_{i} [{layer.node_count}];\n")
				self.base.append(f"\t{layer.name} lay{i}(.input_data(px_data), .clk(clk), .enabled(layer{i}_en), .data(layer_data_{i}));\n\n")
	
			else:
				self.base.append(f"\tlogic [{self.data_size - 1}:0] layer_data_{i} [{layer.node_count}];\n")
				self.base.append(f"\t{layer.name} lay{i}(.input_data(layer_data_{i-1}), .clk(clk), .enabled(layer{i}_en), .data(layer_data_{i}));\n\n")

		#TODO implement max function? Change output guess to not be an array of 32 bit vals
		self.base.append(f"\tassign guess = layer_data_{len(self.layers)- 1};\n\n")
		self.base.append("endmodule // Network\n")

def output_network_testbench(output_count):
	file = open("Network_tb.sv", "w")
	file.write(f"module tb;\n\tlogic [31:0] out [{output_count}];\n\tNetwork net(.guess(out));\nendmodule")

#TODO Make waveforms pretty
def output_network_do():
	file = open("Network.do", "w")
	
	output = ["onbreak {resume}\n\n"]

	output.append("# create library\nif [file exists work] {\n\tvdel -all\n}\nvlib work\n\n")

	output.append("# compile source files\nvlog Network.sv Network_tb.sv\n\n")

	output.append("# start and run simulation\nvsim -voptargs=+acc work.tb\n")

	output.append("view list\nview wave\n\n")

	output.append("# Diplays All Signals recursively\nadd wave -b -r /tb/*\n\n")

	output.append("-- Set Wave Output Items\n")
	output.append("TreeUpdate [SetDefaultTree]\n")
	output.append("WaveRestoreZoom {0 ps} {75 ns}\n")
	output.append("configure wave -namecolwidth 150\n")
	output.append("configure wave -valuecolwidth 100\n")
	output.append("configure wave -justifyvalue left\n")
	output.append("configure wave -signalnamewidth 0\n")
	output.append("configure wave -snapdistance 10\n")
	output.append("configure wave -datasetprefix 0\n")
	output.append("configure wave -rowmargin 4\n")
	output.append("configure wave -childrowmargin 2\n\n")

	output.append(f"-- Run the Simulation\nrun {10*784*784 + 10*64*64 }ns\n")

	write_to_file(output, file)