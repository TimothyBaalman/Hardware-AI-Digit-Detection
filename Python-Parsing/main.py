from fixed_to_binary import fixed_point_converter
# -0.02059817872941494
# using 64 bit | 1 bit sign | 15 bit integer | 48 bits fractional | 

# fractional_converter(.02059817872941494)
# fractional_converter(.000015)
num_int_bits = 15
num_fract_bits = 48
binary_arry = fixed_point_converter(-0.005516641307622194, num_int_bits, num_fract_bits)

print(f"Sign Bit: {binary_arry[0:1]}, bits: {len(binary_arry[0:1])}")
print(f"Int Bits: {binary_arry[1:num_int_bits+1]}, bits: {len(binary_arry[1:num_int_bits+1])}")
print(f"Fract Bits: {binary_arry[num_int_bits+1:64]}, bits: {len(binary_arry[num_int_bits+1:64])}")
test = ""
for bit in binary_arry:
	test += str(bit)
print(test)