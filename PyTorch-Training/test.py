best_results = {
	"learning_rate": 0,
	"batch_size": 0, 
	"to_shuffle": False,
	"loss": 100,
	"accuracy": 0,
	"fc_weights":[23,23],
	"fc_bias":[],
	"out_weights":[],
	"out_bias":[]
}

print(best_results)

best_results["accuracy"] = 50
weights = [[50, 978, 2323, 23545], [32,32, 3563, 6734]]
best_results["fc_weights"] = weights
best_results["fc_weights"].append([0])
print(best_results)

# test_arr = []
# test_arr.append([])

# test_arr[0].append("test")

# print(test_arr)