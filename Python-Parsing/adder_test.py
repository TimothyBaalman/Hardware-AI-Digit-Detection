from fixed_point_converter import float_to_signed_fixed_point, signed_fixed_point_to_float

a_array = [-2.35, 10.24]
b_array = [5, 5]
#Put "x" if we haven't already gotten the result
output_add_res_array = ["00000000000000001010100110011010", "00000000000000111100111101011100"]

for index, a in enumerate(a_array):
	print("\n---------------------------------------------------------------------------")
	b = b_array[index]
	output_sum_bin = output_add_res_array[index]
	print(f"a = {a}, b = {b}")
	approx_a = signed_fixed_point_to_float(float_to_signed_fixed_point(a).replace("_", ""))
	print(f"a => {float_to_signed_fixed_point(a)} which is approx = {approx_a}")
	approx_b = signed_fixed_point_to_float(float_to_signed_fixed_point(b).replace("_", ""))
	print(f"b => {float_to_signed_fixed_point(b)} which is approx = {approx_b}")

	sim_add_res = signed_fixed_point_to_float(output_sum_bin)
	print(f"Expected Result: {a + b}")
	print(f"Actual Result:   {sim_add_res}")
