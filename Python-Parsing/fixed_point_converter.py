import struct

def binary_conversion(whole_num, num_bits=32):
	overflowed = False
	binary_rep = []
	while(whole_num > 0):
		if(len(binary_rep) >= num_bits):
			overflowed = True
			print("\nInt overflow\n")
			break
		if(whole_num % 2 == 0):
			binary_rep.append(0)			
		else:
			binary_rep.append(1)
		whole_num /= 2
		#TODO math.round(whole_num)
		whole_num = int(whole_num)
	
	# Fill in extra space will 0's
	while(len(binary_rep) < num_bits):
		binary_rep.append(0)
	
	# Flip array
	binary_rep = binary_rep[::-1]
	# print(binary_rep)
	# print(f"Bit count: {len(binary_rep)}")
	return(binary_rep, overflowed)

def binary_to_2C(binary_arr):

	bin_1c = []
	for bit in binary_arr:
		if(bit == 0):
			bin_1c.append(1)
		else:
			bin_1c.append(0)

	# str_out = ""
	# for bit in bin_1c:
	# 	str_out += str(bit)
	# print(str_out)

	# str_out = ""
	# for bit in reversed(bin_1c):
	# 	str_out += str(bit)
	# print(str_out)

	bin_2c = []
	# ADD 1
	one_added = False
	for bit in reversed(bin_1c):
		if(bit == 0 and not one_added):
			bin_2c.append(1)
			one_added = True
		elif(bit == 1 and not one_added):
			bin_2c.append(0)
		else:
			bin_2c.append(bit)

	# Flip array
	bin_2c = bin_2c[::-1]
	return bin_2c

def float_to_signed_fixed_point(num_bits, num, m, n):
	# print(f"{num}: ")
	num = num * 2**n
	# print(format(struct.unpack("!I", struct.pack("!I", int(abs(num))))[0], "032b"))
	output = binary_conversion(int(abs(num)), num_bits)
	overflow = output[1]
	if(overflow):
		print("--------------------------------\n\nOverflowed\n\n------------------------------")
	
	# str_out = ""
	# for bit in output:
	# 	str_out += str(bit)
	# print(str_out)
	output = output[0]
	if(num <= 0):
		output = binary_to_2C(output)
	
	# bin_str = str(num_bits) + "'b"
	bin_str = ""

	for index, bit in enumerate(output):
		if(index == 1):
			bin_str += "_"
		if(index == m + 1): # +1 for signed bit
			bin_str += "_"
		bin_str += str(bit)
	
	return bin_str
