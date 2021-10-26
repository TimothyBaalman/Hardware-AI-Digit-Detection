def basic_fractional_converter(fractional, num_fractional_bits=48):
	overflowed = False
	binary_rep = []
	while(fractional > 0.0):
		if(len(binary_rep) >= num_fractional_bits):
			overflowed = True
			print("\nFractional Overflow\n")
			break
		fractional *= 2
		if(fractional >= 1):
			binary_rep.append(1)
			fractional %= 1
		else:
			binary_rep.append(0)

	# Fill in extra space will 0's
	while(len(binary_rep) < num_fractional_bits):
		binary_rep.append(0)

	# print(binary_rep)
	# print(f"Number of bits: {len(binary_rep)}")
	return (binary_rep,overflowed) 

def integer_converter(whole_num, num_integer_bits=15):
	overflowed = False
	binary_rep = []
	while(whole_num > 0):
		if(len(binary_rep) >= num_integer_bits):
			overflowed = True
			print("\nInt overflow\n")
			break
		if(whole_num % 2 == 0):
			binary_rep.append(0)			
		else:
			binary_rep.append(1)
		whole_num /= 2
		whole_num = int(whole_num)
	
	# Fill in extra space will 0's
	while(len(binary_rep) < num_integer_bits):
		binary_rep.append(0)
	
	# Flip array
	binary_rep = binary_rep[::-1]
	# print(binary_rep)
	# print(f"Bit count: {len(binary_rep)}")
	return(binary_rep, overflowed)
			
def check_sign(num):
	if(num >= 0):
		# print("Positive") 
		return [0]
	else:
		# print("Negative")
		return [1]

def fixed_point_converter(num, num_int_bits, num_frac_bits):
	sign_bit = check_sign(num)

	str_num = str(num)
	try:
		integer, fractional = str_num.split(".")
	except ValueError:
		integer = num
		fractional = "0"
	(integer_bits, int_overflow) = integer_converter(abs(int(integer)), num_int_bits)

	(fractional_bits, frac_overflow)  = basic_fractional_converter(float("0."+fractional),num_frac_bits)
	
	# print(sign_bit + integer_bits + fractional_bits)
	return (sign_bit + integer_bits + fractional_bits, int_overflow, frac_overflow)
