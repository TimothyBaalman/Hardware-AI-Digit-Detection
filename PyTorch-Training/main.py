import torch
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
batch_size = 64 # between 8 and 64
to_shuffle = True

# Prepare Datasets
train_loader = torch.utils.data.DataLoader(dataset=train_set, batch_size=batch_size, shuffle=to_shuffle, num_workers=num_workers)
test_loader = torch.utils.data.DataLoader(dataset=test_set, batch_size=batch_size, shuffle=to_shuffle, num_workers=num_workers)

# Initilize Model
model = Network()

print(list(model.parameters()))
print(list(model.named_parameters()))

# Loss function
criterion = nn.CrossEntropyLoss()

# optimizer = optim.SGD(model.parameters(), lr=0.01)
optimizer = optim.Adam(model.parameters(), lr=0.001)

num_epochs = 5 

for epoch in range(num_epochs):
	train_loss = 0.0
	total_correct = 0.0

	for images, target_labels in train_loader:
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
	print(model.fully_connected.weight)
	
	print("\nOutput Layer Weights:")
	print(model.out.weight)
print(model.parameters())