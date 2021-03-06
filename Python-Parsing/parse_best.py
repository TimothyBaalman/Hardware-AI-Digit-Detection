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
					converted_json_oputput[weight_file][node].append(float_to_signed_fixed_point(weight))

		for bias_file in bias_files:
			for node_bias in json_data[bias_file]:
				converted_json_oputput[bias_file].append(float_to_signed_fixed_point(node_bias))
	
	json.dump(converted_json_oputput,output_json_file,indent=3) 
except Exception as e:
		print(e)
output_json_file.close()

layer_count = 0
loop_count = 0
for key in converted_json_oputput:
	if(loop_count % 2 == 0 and loop_count != 0):
		layer_count += 1
	
	# Output bias 
	if("bias" in key):
		with open(f"{root}/layer{layer_count}_bias.dat", "w") as bias_file:
			for index, val in enumerate(converted_json_oputput[key]):
				bias_file.write(f"{val}\n")
	
	# Output weights 
	elif("weight" in key): 
		for index, vals in enumerate(converted_json_oputput[key]):
			with open(f"{root}/layer{layer_count}_weight_{index}.dat", "w") as weight_file:
				for val in vals:
					weight_file.write(f"{val}\n")
		

	print(key)
	loop_count += 1

# #Output weights fc dat files
# for index, vals in enumerate(converted_json_oputput["fc_weights"]):
# 	with open(f"{root}/layer0_weight_{index}.dat", "w") as fc_file:
# 		for val in vals:
# 			fc_file.write(f"{val}\n")

# # output bias fc dat
# with open(f"{root}/layer0_bias.dat", "w") as fc_file:
# 	for index, val in enumerate(converted_json_oputput["fc_bias"]):
# 		fc_file.write(f"{val}\n")
