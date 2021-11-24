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

address_size = 32
integer_part_size = 17
fractional_part_size = 14

converted_json_oputput = {
	"fc_weights": [],
	"fc_bias": [],
	"out_weights": [],
	"out_bias": []
}

output_json_file = open(root + "/convert_best_results.json", "w")
try:
	with open(path_to_best, "r") as file:
		json_data = json.load(file)
		for weight_file in weight_files:
			amount_of_weight_nodes = len(json_data[weight_file])

			for node in range(amount_of_weight_nodes):
				converted_json_oputput[weight_file].append([])

				for weight in json_data[weight_file][node]:
					converted_json_oputput[weight_file][node].append(float_to_signed_fixed_point(address_size, weight, integer_part_size, fractional_part_size))

		for bias_file in bias_files:
			for node_bias in json_data[bias_file]:
				converted_json_oputput[bias_file].append(float_to_signed_fixed_point(address_size, node_bias, integer_part_size, fractional_part_size))
	
	json.dump(converted_json_oputput,output_json_file,indent=3) 
except Exception as e:
		print(e)
output_json_file.close()

#Output weights fc dat files
for index, vals in enumerate(converted_json_oputput["fc_weights"]):
	with open(f"{root}/fc_weight_{index}.dat", "w") as fc_file:
		for val in vals:
			fc_file.write(f"{val}\n")

# output bias fc dat
with open(f"{root}/fc_bias.dat", "w") as fc_file:
	for index, val in enumerate(converted_json_oputput["fc_bias"]):
		fc_file.write(f"{val}\n")