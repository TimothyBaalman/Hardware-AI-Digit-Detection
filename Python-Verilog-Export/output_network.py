from module_builder import *

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
first_layer_input_amount = 784
first_layer_node_count = 64 

pic_to_use = 0

px_rom_arr = []
for i in range(10):
	filename = f"./../Python-Parsing/image_of_{i}.dat"
	px_rom_arr.append(RomModuleBuilder(f"pixel_rom_for_{i}", data_size, first_layer_input_amount, filename))

#TODO Weight, bias, and nodes need to be 2D arrays where the first index is it's corresponding layer

first_layer_weights = []
for i in range(first_layer_node_count):
	filename = f"./../Python-Parsing/fc_weight_{i}.dat"
	first_layer_weights.append(RomModuleBuilder(f"weights_{i}_fc_rom", data_size, first_layer_input_amount, i, filename))

first_layer_bias = RomModuleBuilder("bias_fc_rom", data_size, first_layer_node_count, "./../Python-Parsing/fc_bias.dat")

relu = ActivationFuncModuleBuilder("relu", 32)

first_layer_nodes = []
for i in range(first_layer_node_count):
	first_layer_nodes.append(BuildNode(f"fc_node_{i}", i, fa_32b, mult_2c_32, data_size, relu, first_layer_input_amount))


fc_layer = BuildLayer("fc_layer", data_size, first_layer_input_amount, first_layer_nodes, px_rom_arr[pic_to_use], first_layer_weights, first_layer_bias)
#other layer
layers_arr = [fc_layer]
#layers_arr.append(X_layer)

network = BuildNetwork(data_size, len(px_rom_arr), px_rom_arr[pic_to_use], layers_arr)

file_output = open("test.sv", "w")
ha.output_base(file_output)
fa_1b.output_base(file_output)
fa_32b.output_base(file_output)
mult_2c_32.output_base(file_output)

# print(fa_1b.use_module([("a","bit0"), ("b", "bit1"), ("c_in", "bit2")], [("s", "bit_O_0"), ("c_out", "bit_O_1")]))