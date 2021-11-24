# Got these from our fixed point conversion needed for cutting
from functions import use_fa, use_ha

def mult_2c_operations(n, inputs, outputs, submodules):
	
	output = []

	x, y = inputs
	m_out = outputs[0]

	wire_a = x + "_a"
	wire_b = y + "_b"
	wire_result = "to_cut_res"
	wire_ci_out = "ci_out"

	output.append(f"	wire [{2*n-1}:0] {wire_result};\n")
	output.append(f"	wire [{n*(n-1)}:0] {wire_a}, {wire_b};\n")
	output.append(f"	wire [{(n-1)*(n-1)}:0] {wire_ci_out};\n")

	output.append(f"	and({wire_result}[0], {y}[0], {x}[0]);\n")

	output.append(f"\n\t//Setup for wire {wire_b} parts\n")
	for i in range(n-2):
		output.append(f"	and({wire_b}[{i}], {y}[0], {x}[{i+1}]);\n")
	output.append(f"	nand({wire_b}[{n-2}], {y}[0], {x}[{n-2+1}]);\n")
	output.append(f"	assign {wire_b}[{n-1}] = 1'b1;\n")

	y_index = 1
	x_index = 0
	switch_index = 0
	output.append(f"\n\t//Setup for wire {wire_a} parts\n")
	for i in range(n*(n-1)-n):
		if(switch_index == n-1):
			output.append(f"	nand({wire_a}[{i}], {y}[{y_index}], {x}[{x_index}]);\n\n")
			switch_index = 0
			x_index = 0
			y_index += 1
		else:
			output.append(f"	and({wire_a}[{i}], {y}[{y_index}], {x}[{x_index}]);\n")
			switch_index += 1
			x_index += 1
	
	for i in range(n*(n-1)-n, n*(n-1)):
		if(switch_index == n-1):
			output.append(f"	and({wire_a}[{i}], {y}[{y_index}], {x}[{x_index}]);\n\n")
			switch_index = 0
			x_index = 0
			y_index += 1
		else:
			output.append(f"	nand({wire_a}[{i}], {y}[{y_index}], {x}[{x_index}]);\n")
			switch_index += 1
			x_index += 1
	
	output.append(f"	assign {wire_a}[{n*(n-1)}] = 1'b1;\n")
	
	for submodule in submodules:
		if(submodule.module_type == "fa"):
			fa_a, fa_b, fa_c_in = submodule.input_names
			fa_s, fa_c_out = submodule.output_names
		elif(submodule.module_type == "ha"):
			ha_a, ha_b = submodule.input_names
			ha_s, ha_c_out = submodule.output_names

	ha_count = 0
	fa_count = 0
	res_index = 1
	cur_index = 0
	ci_out_index = 0
	b_index = n 
	for i in range(n-1):
		output.append(f"\n\t//Stage {i}\n")
		output.append(use_ha(ha_count, (ha_a, wire_a, cur_index), (ha_b, wire_b, cur_index),
			(ha_s, wire_result, res_index), (ha_c_out, wire_ci_out, ci_out_index)))
		ha_count += 1
		cur_index += 1
		res_index += 1
		for j in range(n-1):
			if(i == n-2):
				if(j == n-2):
					# use b index
					output.append(use_fa(fa_count, (fa_a, wire_a, cur_index), (fa_b, wire_b, cur_index), (fa_c_in, wire_ci_out, ci_out_index), 
					(fa_s, wire_result, res_index), (fa_c_out, wire_b, b_index)))
					fa_count += 1
					ci_out_index += 1
					res_index += 1
					cur_index += 1
				else:
					output.append(use_fa(fa_count, (fa_a, wire_a, cur_index), (fa_b, wire_b, cur_index), (fa_c_in, wire_ci_out, ci_out_index), 
					(fa_s, wire_result, res_index), (fa_c_out, wire_ci_out, ci_out_index+1)))
					fa_count += 1
					ci_out_index += 1
					res_index += 1
					cur_index += 1
			else:
				if(j == n-2):
					# use b index
					output.append(use_fa(fa_count, (fa_a, wire_a, cur_index), (fa_b, wire_b, cur_index), (fa_c_in, wire_ci_out, ci_out_index), 
					(fa_s, wire_b, b_index), (fa_c_out, wire_b, b_index+1)))
					b_index += 2
					fa_count += 1
					ci_out_index += 1
					cur_index += 1
				else:
					output.append(use_fa(fa_count, (fa_a, wire_a, cur_index), (fa_b, wire_b, cur_index), (fa_c_in, wire_ci_out, ci_out_index), 
					(fa_s, wire_b, b_index), (fa_c_out, wire_ci_out, ci_out_index+1)))
					b_index += 1
					fa_count += 1
					ci_out_index += 1
					cur_index += 1
	
	output.append("\n")
	output.append(use_ha(ha_count, (ha_a, wire_a, cur_index), (ha_b, wire_b, cur_index),
			(ha_s, wire_result, res_index), (ha_c_out, wire_ci_out, ci_out_index)))

	if(n == 32): # Assuming fractional chop for predetermined m.n values in Qm.n
		integer_part_size = 17 #m
		fractional_part_size = 14 #n
		output.append(f"\n\tassign {m_out} = {wire_result}[{(2*n-1)-(integer_part_size+1)}:{fractional_part_size}]\n")
	else: # Basic chop
		output.append(f"\n\tassign {m_out} = {wire_result}[{n-1}:0];\n")

	return output
	