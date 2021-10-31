class Value_Tracker():
	def __init__(self, name, limit):
		self.val = 0
		self.name = name
		self.limit = limit
	
	def inc(self):
		# Return previous value but increment for next use
		self.val += 1
		if(self.val > self.limit or self.val < 0):
			raise ValueError(f"Var: '{self.name}' is out of the range, with value: {self.val}, and range: 0-{self.limit}")
		return self.val - 1

a = Value_Tracker("a", 3)
b = Value_Tracker("b", 5)
print(f"{b.name}: {b.inc()}")
print(f"{a.name}: {a.inc()}")
print(f"{a.name}: {a.inc()}")
print(f"{a.name}: {a.inc()}")
print(f"{b.name}: {b.inc()}")

print(a.val)
print(a.name)

