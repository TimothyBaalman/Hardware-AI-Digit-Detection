import torch
import torch.nn as nn
import torch.optim as optim
import torchvision
import torchvision.transforms as transforms

import numpy as np

from itertools import product

from Network import Network
from json_writer import write_best_results, add_to_history_best

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

device_to_use = torch.device("cpu")
# Determine if we can use a GPU
if(torch.cuda.is_available()):
	device_to_use = torch.device("cuda:0")
	print("Running on the GPU")

# Setup Varying Parameters to use
params = dict(
	learning_rate = [.01, .008, .013],
	batch_size = [650, 850, 1000],
	to_shuffle = [True, False],
	epochs = [10, 25, 50]
)
params_values = [value for value in params.values()]

best_results = {
	"epoch": 0,
	"learning_rate": 0,
	"batch_size": 0, 
	"to_shuffle": False,
	"loss": 100,
	"accuracy": 0,
	"fc_weights":[],
	"fc_bias":[],
	"out_weights":[],
	"out_bias":[]
}

# Loop through the varied values. 
for learning_rate, batch_size, to_shuffle, epochs in product(*params_values):
	print("\n--------------------------------------------------------------------------------")
	print(f"testing with lr={learning_rate}, batch_size={batch_size}, shuffle={to_shuffle}, and epochs={epochs}")

	# Prepare Datasets
	train_loader = torch.utils.data.DataLoader(dataset=train_set, batch_size=batch_size, shuffle=to_shuffle)
	test_loader = torch.utils.data.DataLoader(dataset=test_set, batch_size=batch_size, shuffle=to_shuffle) 
	# Initilize Model
	model = Network().to(device=device_to_use)
	# print(list(model.named_parameters())[0][1]["Parameter containing"])
	
	# print(list(model.parameters()))
	# print("---------------------------------------------------------------")
	# print(list(model.named_parameters()))

	# Loss function
	criterion = nn.CrossEntropyLoss()

	# optimizer = optim.SGD(model.parameters(), lr=0.01)
	optimizer = optim.Adam(model.parameters(), lr=learning_rate)

	for epoch in range(epochs):
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

			# Update current epoch calculations
			train_loss += loss.item() * images.size(0) 
			total_correct += output.argmax(dim=1).eq(target_labels).sum().item()
		
				
		training_loss = train_loss/len(train_loader.dataset)
		accuracy = total_correct/len(train_loader.dataset)

		print(f"Epoch: {epoch}, Training_Loss: {training_loss}, Accuracy: {accuracy}\n")
		if(training_loss <= best_results["loss"] and accuracy > best_results["accuracy"]):
			print("These were better results\n")
			best_results["epoch"] = epoch
			best_results["accuracy"] = accuracy
			best_results["batch_size"] = batch_size
			best_results["learning_rate"] = learning_rate
			best_results["loss"] = training_loss
			best_results["to_shuffle"] = to_shuffle
			for name, param in model.named_parameters():
				print(name)
				if name in ["fully_connected.weight"]:
					best_results["fc_weights"] = param.data.cpu().numpy()
				elif name in ["fully_connected.bias"]:
					best_results["fc_bias"] = param.data.cpu().numpy()
				elif name in ["out.weight"]:
					best_results["out_weights"] = param.data.cpu().numpy()
				elif name in ["out.bias"]:
					best_results["out_bias"] = param.data.cpu().numpy()
					
			# best_results["fc_weights"] = list(model.named_parameters())[0][1]["Parameter containing"]
			# best_results["fc_bias"] = list(model.named_parameters())[1][1]["Parameter containing"]
			# best_results["out_weights"] = list(model.named_parameters())[2][1]["Parameter containing"]
			# best_results["out_bias"] = list(model.named_parameters())[3][1]["Parameter containing"]
			print(best_results)
			# print("Fully Connected Layer Weights:")
			# print(list(model.named_parameters())[0])

			# print("\nFully Connected Layer Bias:")
			# print(list(model.named_parameters())[1])

			# print("\nOutput Layer Weights:")
			# print(list(model.named_parameters())[2])

			# print("\nOutput Layer Bias:")
			# print(list(model.named_parameters())[3])

		print("\n-----------------------------------------------------------------------------------------------------------------------------")
		# print(model.fully_connected.weight)
		
		# print(model.out.weight)

print(best_results)
write_best_results(best_results)
add_to_history_best(best_results)
print("done")