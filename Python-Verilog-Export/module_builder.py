from full_adder_n_bit import fa_operations
class Module_Builder():
   def __init__(self, module_name, n_bits = 1, input_vals = [], output_vals = [], needed_modules = []):
      self.module_name = module_name
      self.n = n_bits
      self.input_vals = input_vals
      self.output_vals = output_vals

      self.increment_used_name = 0

      self.sub_module_names = needed_modules
      self.increment_sub_name = [] # For things like the multiplier that has many submodules
      for module in needed_modules:
         self.increment_sub_name.append(0)
      
      self.build_base()
      if(module_name == "fa"):
         self.build_fa_nb()
      elif(module_name == "mult2c"):
         '''self.build_2c_multiplier_nb()'''
      else:
         print(f"No module creation implemented for {module_name}")
  
   def build_base(self):
      self.base = []
      self.base.append((f"module {self.module_name}_{self.n}b(\n"))

      for inputs in self.input_vals:
         name, bits = inputs
         if(inputs == self.input_vals[-1]):
            self.base.append(f"  input [{bits-1}:0] {name}\n")
         else: 
            self.base.append(f"  input [{bits-1}:0] {name},\n")

      for outputs in self.output_vals:
         name, bits = outputs
         if(outputs == self.output_vals[-1]):
            self.base.append(f"  input [{bits-1}:0] {name}\n")
         else: 
            self.base.append(f"  input [{bits-1}:0] {name},\n")

      self.base.append(f");\n")

   def build_fa_nb(self):
      '''Finish FA Build '''
      data_operations = fa_operations(self.n)
      for operation in data_operations:
         self.base.append(operation)
      self.base.append(f"endmodule // for module {self.module_name}")

   def use_module(self, passed_in_vals = [], pass_out_vals = []):
      output = f"{self.module_name} {self.module_name}{self.increment_used_name}(\n"
      for index, inputs in enumerate(self.input_vals):

         '''Will be used to create names for this module'''
