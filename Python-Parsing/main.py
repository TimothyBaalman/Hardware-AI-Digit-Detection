import os
import json
from fixed_point_converter import float_to_signed_fixed_point

# output = float_to_signed_fixed_point(32, -6.75, 9, 22)
# print(output)
# output = float_to_signed_fixed_point(32, 7.25, 9, 22)
# print(output)
# output = float_to_signed_fixed_point(32, 15.43, 9, 22)
# print(output)
# output = float_to_signed_fixed_point(32, -0.030764959752559662, 9, 22)
# print(output)

path_to_best = os.path.join( os.path.dirname( __file__ ), '../PyTorch-Training/best_results.json' )
root = os.getcwd()

weight_files = ["fc_weights",  "out_weights"]
bias_files = ["fc_bias", "out_bias"]
for weight_file in weight_files:
	open(root + f"/{weight_file}.json", "w")
	# file.close()
	open(root + f"/{weight_file}.dat", "w")
	# file.close()
	try:
		with open(path_to_best, "r") as file:
			json_data = json.load(file)
			amount_of_weight_nodes = len(json_data[weight_file])
			
			output_json = {}

			for node in range(amount_of_weight_nodes):
				output_data = []
				for weight in json_data[weight_file][node]:
					address_size = 32
					integer_part_size = 9
					fractional_part_size = 22
					output = float_to_signed_fixed_point(address_size, weight, integer_part_size, fractional_part_size)
					output_data.append(output)
					with open(root+f"/{weight_file}.dat", "r+") as dat_file:
						dat_file.seek(0, 2) # move to end of file
						dat_file.write(f"{node}:{output}\n")
				output_json.update({f"node_{node}": output_data})

			with open(root+f"/{weight_file}.json", "r+") as json_data_file:
				json.dump(output_json, json_data_file, indent=3)

	except Exception as e:
		print(e)

for bias_file in bias_files:
	open(root + f"/{bias_file}.json", "w")
	# file.close()
	open(root + f"/{bias_file}.dat", "w")
	# file.close()
	try:
		with open(path_to_best, "r") as file:
			json_data = json.load(file)
			output_json = {}
			output_data = []
			for index, node_bias in enumerate(json_data[bias_file]):
				address_size = 32
				integer_part_size = 9
				fractional_part_size = 22
				output = float_to_signed_fixed_point(address_size, node_bias, integer_part_size, fractional_part_size)
				output_data.append(output)

				with open(root+f"/{bias_file}.dat", "r+") as dat_file:
					dat_file.seek(0, 2) # move to end of file
					dat_file.write(f"{index}:{output}\n")

				output_json.update({f"node_{index}": output})

			with open(root+f"/{bias_file}.json", "r+") as json_data_file:
				json.dump(output_json, json_data_file, indent=3)

	except Exception as e:
		print(e)