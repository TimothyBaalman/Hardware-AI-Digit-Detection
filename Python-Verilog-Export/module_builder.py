class Module_Builder():
   def __init__(self, module_name, n_bits = 1, input_vals = [], output_vals = []):
      self.module_name = module_name
      self.n = n_bits
      self.input_vals = input_vals
      self.output_vals = output_vals
      self.increment_used_name = 0
      
      if(self.n_bits > 1):
         if(module_name == "fa"):
            self.build_fa_sub_base()
            self.build_base()
      else:
         if(module_name == "fa"):
            self.build_fa_sub_base()

   def build_fa_sub_base(self):
      self.sub_base = []
      

   def build_base(self):
      self.base = []
      self.base.append((f"module {self.module_name}_{self.n}b(\n"))
      for inputs in self.input_vals:
         name, bits = inputs
         if(inputs == self.input_vals[-1]):

         else: 
            self.base.append(f"input [{bits-1}:0] {name}")
      self.base.append(f");\n")

   def use_module(self):
      '''Will be used to create names for this module'''
