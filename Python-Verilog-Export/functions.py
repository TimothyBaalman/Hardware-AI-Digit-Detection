def use_ha(index, a = ("a", "passed_in", -1), b = ("b", "passed_in", -1),
	s = ("s", "passed_in", -1), c_out = ("c_out", "passed_in", -1)):

	output = f"\tha_1b ha{index}(\n"
	if(a[2] == -1):
		output += f"\t\t.{a[0]}({a[1]}), "
	else:
		output += f"\t\t.{a[0]}({a[1]}[{a[2]}]), "
		
	if(b[2] == -1):
		output += f".{b[0]}({b[1]}), //Inputs\n"
	else:
		output += f".{b[0]}({b[1]}[{b[2]}]), //Inputs\n"

	if(s[2] == -1):
		output += f"\t\t.{s[0]}({s[1]}), "
	else:
		output += f"\t\t.{s[0]}({s[1]}[{s[2]}]), "

	if(c_out[2] == -1):
		output += f".{c_out[0]}({c_out[1]}) //Outputs \n"
	else:
		output += f".{c_out[0]}({c_out[1]}[{c_out[2]}]) //Outputs \n"
	
	output += f"\t);\n"
	return output

def use_fa(index, a = ("a", "passed_in", -1), b = ("b", "passed_in", -1), c_in = ("c_in", "passed_in", -1), 
	s = ("s", "passed_in", -1), c_out = ("c_out", "passed_in", -1)):

	output = f"\tfa_1b fa{index}(\n"
	if(a[2] == -1):
		output += f"\t\t.{a[0]}({a[1]}), "
	else:
		output += f"\t\t.{a[0]}({a[1]}[{a[2]}]), "
		
	if(b[2] == -1):
		output += f".{b[0]}({b[1]}), "
	else:
		output += f".{b[0]}({b[1]}[{b[2]}]), "
	
	if(c_in[2] == -1):
		output += f".{c_in[0]}({c_in[1]}), //Inputs\n"
	else:
		output += f".{c_in[0]}({c_in[1]}[{c_in[2]}]), //Inputs\n"

	if(s[2] == -1):
		output += f"\t\t.{s[0]}({s[1]}), "
	else:
		output += f"\t\t.{s[0]}({s[1]}[{s[2]}]), "

	if(c_out[2] == -1):
		output += f".{c_out[0]}({c_out[1]}) //Outputs \n"
	else:
		output += f".{c_out[0]}({c_out[1]}[{c_out[2]}]) //Outputs \n"
	
	output += f"\t);\n"
	return output

# print(use_fa(0, ("a", "a", 0), ("b", "b", 0), ("c_in", "c_in", -1), ("s", "s", 0), ("c_out", "ci_out", 0)))