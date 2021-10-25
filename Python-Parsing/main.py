from fixed_to_binary import fixed_point_converter
import json
import os
import struct

def float_to_bin(num):
	return format(struct.unpack("!I", struct.pack("!f", num))[0], "064b")

def bin_to_float(binary):
	return format(struct.unpack("!f", struct.pack("!I", int(binary,2)))[0])

path_to_best = os.path.join( os.path.dirname( __file__ ), '../PyTorch-Training/best_results.json' )
print(path_to_best)
overflow_json = {
	"example_overflowed_vals":[]
}
try:
	with open(path_to_best, "r") as file:
		json_data = json.load(file)
		weight_len = len(json_data["fc_weights"])
		for i in range(weight_len):
			for weight in json_data["fc_weights"][i]:
				num_int_bits = 4
				num_fract_bits = 59
				(binary_arry, int_overflow, frac_overflow) = fixed_point_converter(weight, num_int_bits, num_fract_bits)
				
				if(int_overflow or frac_overflow):
					# print(weight)
					test = ""
					for index, bit in enumerate(binary_arry):
						if(index == 1+num_int_bits):
							test += "."
						test += str(bit)
					# print(test)

					bin_str = float_to_bin(weight)
					bin_float = bin_to_float(bin_str)
					# print(bin_str)
					# print(bin_float, "\n")
					data = {
						"int_overflow":int_overflow,
						"frac_overflow":frac_overflow,
						"weight":weight,
						"fixed_point_bin":test,
						"floating_bin":bin_str,
						"floating_weight":bin_float
					}
					overflow_json["example_overflowed_vals"].append(data)
except Exception as e:
	print(e)

output_json_path = os.getcwd() + "/overflow_vals.json"
try:
	with open(output_json_path, "w") as file:
		json.dump(overflow_json, file, indent=3)
except Exception as e:
	print(e)


# -0.02059817872941494
# using 64 bit | 1 bit sign | 15 bit integer | 48 bits fractional | 

# fractional_converter(.02059817872941494)
# fractional_converter(.000015)

# float_num = 0.0961313247680664
# num_int_bits = 15
# num_fract_bits = 48
# binary_arry = fixed_point_converter(float_num, num_int_bits, num_fract_bits)

# num_int_bits = 7
# num_fract_bits = 1
# binary_arry = fixed_point_converter(-56, num_int_bits, num_fract_bits)

# num_int_bits = 4
# num_fract_bits = 3
# float_num = -28.1
# binary_arry = fixed_point_converter(float_num, num_int_bits, num_fract_bits)
# total_bits = 1 + num_int_bits + num_fract_bits

# print(binary_arry)
# print(f"Number of bits: {len(binary_arry)}")
# print(f"Sign Bit: {binary_arry[0:1]}, bits: {len(binary_arry[0:1])}")
# print(f"Int Bits: {binary_arry[1:num_int_bits+1]}, bits: {len(binary_arry[1:num_int_bits+1])}")
# print(f"Fract Bits: {binary_arry[num_int_bits+1:total_bits]}, bits: {len(binary_arry[num_int_bits+1:total_bits])}")

# test = "0b"
# for index, bit in enumerate(binary_arry):
# 	if(index == 1+num_int_bits):
# 		test += "."
# 	test += str(bit)
# print(test)

# if neg convert to 2c's
# -6.75
# 1 00110.110
# 1 11001.001 ~ all but sign bit
# 1 11001.010 + 1 to get 2c's