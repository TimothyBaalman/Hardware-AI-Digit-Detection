from _typeshed import Self
from full_adder_n_bit import fa_operations
class Module_Builder():
   def __init__(self, output_file, module_type, n_bits = 1, input_vals = [], output_vals = []):
      self.file = output_file
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
      
      self.output_base()
  
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
      
   def output_base(self):
      for data in self.base:
         self.file.write(data)
      
      # Free memory
      del(self.base)

   # Passed in values are a tuple array where the first index is the matching name from base and the second is the bit name to link to the base
   def use_module(self, passed_in_inputs = [], pass_in_outputs = []):
      output = f"{self.module_name} {self.module_name}{self.increment_used_name}(\n"
      in_size = len(self.input_vals)
      out_size = len(self.output_vals)
      # Possibly change to assume the indexes should be matching instead of matching names and just past in the name of 
      for in_name, _ in self.input_vals:
         for name, passed_in_name in passed_in_name:
            if(name == in_name):
               if(in_size == 1):
                  output += f".{name}({passed_in_name})\n"
               else:
                  output += f".{name}({passed_in_name}) "
               in_size -= 1
               break

      for out_name, _ in self.output_vals:
         for name, passed_in_name in passed_in_name:
            if(name == in_name):
               if(out_size == 1):
                  output += f".{name}({passed_in_name})\n"
               else:
                  output += f".{name}({passed_in_name}) "
               out_size -= 1
               break
      self.file.write(output)
      self.increment_used_name += 1

fa_1b = Module_Builder("fa", 1, [("a", 1), ("b", 1), ("c_in", 1)], [("s", 1), ("c_out", 1)])
print(fa_1b.use_module([("a","bit0"), ("b", "bit1"), ("c_in", "bit2")], [("s", "bit_O_0"), ("c_out", "bit_O_1")]))