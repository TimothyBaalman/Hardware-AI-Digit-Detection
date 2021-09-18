import torch
from torch._C import is_anomaly_enabled
import torch.nn as nn
import torch.optim as optim
import torchvision
import torchvision.transforms as transforms

from Network import Network

# DataSets
train_set = torchvision.datasets.MNIST(
	root="./data/training",
	train=True,
	download=True, 
	transform=transforms.ToTensor()
)

test_set = torchvision.datasets.MNIST(
	root="./data/testing",
	train=False,
	download=True, 
	transform=transforms.ToTensor()
)
num_workers = 0
batch_size = 640 # between 8 and 64
to_shuffle = True

# Prepare Datasets
train_loader = torch.utils.data.DataLoader(dataset=train_set, batch_size=batch_size, shuffle=to_shuffle, num_workers=num_workers)
test_loader = torch.utils.data.DataLoader(dataset=test_set, batch_size=batch_size, shuffle=to_shuffle, num_workers=num_workers)

device_to_use = torch.device("cpu")
# Determine if we can use a GPU
if(torch.cuda.is_available()):
	device_to_use = torch.device("cuda:0")
	print("Running on the GPU")

# Initilize Model
model = Network().to(device=device_to_use)

# print(list(model.parameters()))
print("---------------------------------------------------------------")
print(list(model.named_parameters()))

# Loss function
criterion = nn.CrossEntropyLoss()

# optimizer = optim.SGD(model.parameters(), lr=0.01)
optimizer = optim.Adam(model.parameters(), lr=0.001)

num_epochs = 1

for epoch in range(num_epochs):
	train_loss = 0.0
	total_correct = 0.0

	for images, target_labels in train_loader:

		images = images.to(device=device_to_use)
		target_labels = target_labels.to(device=device_to_use)

		optimizer.zero_grad()

		# Forward Pass
		output = model(images)

		# Calculate Loss
		loss = criterion(output, target_labels)

		# Backward Propagration
		loss.backward()

		# Move in a direction to optimize loss update parameters()
		optimizer.step()
	
		# Update current epoch training loss
		train_loss += loss.item() * images.size(0) 
		total_correct += output.argmax(dim=1).eq(target_labels).sum().item()
	
	print("\n-----------------------------------------------------------------------------------------------------------------------------")
	print(f"Epoch: {epoch}, Training_Loss: {train_loss/len(train_loader.dataset)}, Accuracy: {total_correct/len(train_loader.dataset)}\n")
	print("Fully Connected Layer Weights:")
	print(list(model.named_parameters())[0])

	print("\nFully Connected Layer Bias:")
	print(list(model.named_parameters())[1])

	print("\nOutput Layer Weights:")
	print(list(model.named_parameters())[2])

	print("\nOutput Layer Bias:")
	print(list(model.named_parameters())[3])
	
	# print(model.fully_connected.weight)
	
	# print(model.out.weight)

