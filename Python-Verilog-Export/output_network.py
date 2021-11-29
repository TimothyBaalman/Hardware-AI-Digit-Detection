from module_builder import *

ha = BasicModuleBuilder("ha", 1, [("a", 1), ("b", 1)], [("s", 1), ("c_out", 1)])
fa_1b = BasicModuleBuilder("fa", 1, [("a", 1), ("b", 1), ("c_in", 1)], [("s", 1), ("c_out", 1)])

fa_32b = BasicModuleBuilder(
		"fa", 32, 
		[("a", 32), ("b", 32), ("c_in", 1)],
		[("s", 32), ("c_out", 1)],
		[fa_1b]
	)

mult_2c_32b = BasicModuleBuilder("m_2c", 32, [("x", 32), ("y", 32)], [("m_out", 32)], [ha, fa_1b])

# cla_1b = BasicModuleBuilder("cla", 4, [("a", 4), ("b", 4), ("c_in", 1)], [])

data_size = 32
pic_to_use = 0
pic_size = 784
num_pic_types = 10

num_of_layers = 2
input_amount = [784, 64]
node_count = [64, 10]

px_rom_arr = []
for i in range(num_pic_types):
	filename = f"./../Python-Parsing/image_of_{i}.dat"
	px_rom_arr.append(RomModuleBuilder(f"pixel_rom_for_{i}", data_size, pic_size, filename))

relu = ActivationFuncModuleBuilder("relu", data_size)

layer_weights = []
layer_bias = []
layer_nodes = []
layers = []

for i in range(num_of_layers):
	layer_weights.append([])
	layer_bias.append([])
	layer_nodes.append([])
	
	layer_bias[i].append(RomModuleBuilder(f"layer{i}_bias_rom", data_size, node_count[i], f"./../Python-Parsing/layer{i}_bias.dat"))
	for j in range(node_count[i]):
		weight_file = f"./../Python-Parsing/layer_{i}_weight_{j}.dat"
		layer_weights[i].append(RomModuleBuilder(f"layer{i}_weight_{j}_rom", data_size, input_amount[i], weight_file))

		layer_nodes[i].append(BuildNode(f"layer{i}_node_{j}", j, fa_32b, mult_2c_32b, data_size, relu, input_amount[i]))

	layers.append(BuildLayer(f"layer_{i}", data_size, input_amount[i], layer_nodes[i], layer_weights[i], layer_bias[i][0]))

control = BuildControl("control", layers)

network = BuildNetwork(data_size, len(px_rom_arr), control, px_rom_arr[pic_to_use], layers)

file_output = open("Network.sv", "w")
write_to_file(ha.base, file_output)
write_to_file(fa_1b.base, file_output)
write_to_file(fa_32b.base, file_output)
write_to_file(mult_2c_32b.base, file_output)

write_to_file(relu.base, file_output)

for px_mod in px_rom_arr:
	write_to_file(px_mod.base, file_output)

for i in range(num_of_layers):
	for weight_mod in layer_weights[i]:
		write_to_file(weight_mod.base, file_output)

	for bias_mod in layer_bias[i]:
		write_to_file(bias_mod.base, file_output)

	for node_mod in layer_nodes[i]:
		write_to_file(node_mod.base, file_output)
	
	write_to_file(layers[i].base, file_output)

write_to_file(control.base, file_output)

write_to_file(network.base, file_output)

output_network_testbench(num_pic_types)
output_network_do()
# print(fa_1b.use_module([("a","bit0"), ("b", "bit1"), ("c_in", "bit2")], [("s", "bit_O_0"), ("c_out", "bit_O_1")]))