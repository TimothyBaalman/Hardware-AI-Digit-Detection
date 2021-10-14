from fixed_to_binary import fixed_point_converter
# -0.02059817872941494
# using 64 bit | 1 bit sign | 15 bit integer | 48 bits fractional | 

# fractional_converter(.02059817872941494)
# fractional_converter(.000015)
# num_int_bits = 15
# num_fract_bits = 48
# binary_arry = fixed_point_converter(-0.005516641307622194, num_int_bits, num_fract_bits)
num_int_bits = 7
num_fract_bits = 1
binary_arry = fixed_point_converter(-56, num_int_bits, num_fract_bits)
total_bits = 1 + num_int_bits + num_fract_bits

print(binary_arry)
print(f"Sign Bit: {binary_arry[0:1]}, bits: {len(binary_arry[0:1])}")
print(f"Int Bits: {binary_arry[1:num_int_bits+1]}, bits: {len(binary_arry[1:num_int_bits+1])}")
print(f"Fract Bits: {binary_arry[num_int_bits+1:total_bits]}, bits: {len(binary_arry[num_int_bits+1:total_bits])}")

test = "0b"
for index, bit in enumerate(binary_arry):
	if(index == 1+num_int_bits):
		test += "."
	test += str(bit)
print(test)

# if neg convert to 2c's
# -6.75
# 1 00110.110
# 1 11001.001 ~ all but sign bit
# 1 11001.010 + 1 to get 2c's