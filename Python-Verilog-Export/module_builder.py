from full_adder_n_bit import fa_operations
class Module_Builder():
   def __init__(self, module_type, n_bits = 1, input_vals = [], output_vals = []):
      self.module_name = module_type + f"_{n_bits}b"
      self.n = n_bits
      self.input_vals = input_vals
      self.output_vals = output_vals

      self.increment_used_name = 0

      # self.needed_sub_modules = needed_modules #array of used module classes
      
      self.build_base()
      if(module_type == "fa"):
         self.build_fa_nb()
      elif(module_type == "mult2c"):
         '''self.build_2c_multiplier_nb()'''
      else:
         print(f"No module creation implemented for {module_type}")
  
   def build_base(self):
      self.base = ""
      self.base += f"module {self.module_name}(\n"

      for inputs in self.input_vals:
         name, bits = inputs
         if(inputs == self.input_vals[-1]):
            if(bits == 1):
               self.base += f"  input {name}\n"
            else:
               self.base += f"  input [{bits-1}:0] {name}\n"
         else: 
            if(bits == 1):
               self.base += f"  input {name},\n"
            else:
               self.base += f"  input [{bits-1}:0] {name},\n"

      for outputs in self.output_vals:
         name, bits = outputs
         if(outputs == self.output_vals[-1]):
            if(bits == 1):
               self.base += f"  output {name}\n"
            else:
               self.base += f"  output [{bits-1}:0] {name}\n"
         else: 
            if(bits == 1):
               self.base += f"  output {name},\n"
            else:
               self.base += f"  output [{bits-1}:0] {name},\n"

      self.base += f");\n"

   def build_fa_nb(self):
      '''Finish FA Build '''
      data_operations = fa_operations(self.n)

      for operation in data_operations:
         self.base += operation
      self.base += f"endmodule // for module {self.module_name}"
      

   def use_module(self, passed_in_inputs = [], pass_in_outputs = []):
      output = f"{self.module_name} {self.module_name}{self.increment_used_name}(\n"
      self.increment_used_name += 1

      #assuming indexes match up 
      for index, inputs in enumerate(self.input_vals):
         name = inputs[0]
         # output last ref doesn't need a comma
         output += f".{name}({passed_in_inputs[index]})"
         '''Will be used to create names for this module'''

fa_1b = Module_Builder("fa", 1, [("a", 1), ("b", 1), ("c_in", 1)], [("s", 1), ("c_out", 1)])
print(fa_1b.use_module())