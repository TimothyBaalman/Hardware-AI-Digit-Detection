import torch.nn as nn
import torch.nn.functional as F

# Network or model Setup
class Network(nn.Module):
	def __init__(self):
		super(Network, self).__init__()
		# self.conv = nn.Conv2d(in_channels=1, out_channels=6, kernel_size=5) # 24 x 24 

		# self.fully_connected_1 = nn.Linear(in_features=6*24*24, out_features=1500)
		# self.fully_connected_2 = nn.Linear(in_features=1500, out_features=200)

		# self.out = nn.Linear(in_features=200, out_features=10)
		self.fully_connected= nn.Linear(in_features=28*28, out_features=64)
		self.out = nn.Linear(in_features=64, out_features=10)

	def forward(self, tensor):
		# # (2) hidden Conv Layer
		# tensor = F.relu(self.conv(tensor))
		# # tensor = F.max_pool2d(tensor, kernal_size=2, stride=2)

		# # (3) hidden Linear Layer (fully connected)
		# tensor = tensor.flatten(start_dim=1)
		# tensor = F.relu(self.fully_connected_1(tensor))

		# # (4) hidden Liner Layer (fully connected)
		# tensor = F.relu(self.fully_connected_2(tensor))
		
		# (1) input layer
		tensor = tensor
		# Flatten image
		tensor = tensor.view(-1, 28*28)

		# (2) hidden linear layer
		tensor = F.relu(self.fully_connected(tensor))

		# (3) output layer
		tensor = self.out(tensor)

		return tensor