import torch
import torchvision
import torchvision.transforms as transforms
from fixed_point_converter import float_to_signed_fixed_point
import os


root = os.getcwd()

test_set = torchvision.datasets.MNIST(
	root="../PyTorch-Training/data/testing",
	train=False,
	download=True, 
	transform=transforms.ToTensor()
)

test_loader = torch.utils.data.DataLoader(dataset=test_set, batch_size=100, shuffle=True) 

output_pic = 0
for images, target_labels in test_loader:
	for index, img in enumerate(images):
		if(output_pic == 10):
			break
		if(target_labels[index] == output_pic):
			img_array = torch.flatten(img).numpy()
			print("==========================================")
			print(img_array)
			print(target_labels[index].numpy())
			print("==========================================")

			with open(f"{root}/image_of_{output_pic}.dat", "w") as file:
				for pixel in img_array:
					file.write(f"{float_to_signed_fixed_point(pixel)}\n")
			output_pic += 1
