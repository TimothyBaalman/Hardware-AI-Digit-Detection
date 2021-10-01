import json
import os
import numpy as np

path_to_dir = os.getcwd()

class NumpyEncoder(json.JSONEncoder):
	""" Special json encoder for numpy types """
	def default(self, obj):
		if isinstance(obj, (np.int_, np.intc, np.intp, np.int8,
			np.int16, np.int32, np.int64, np.uint8,
			np.uint16, np.uint32, np.uint64)):
			return int(obj)
		
		elif isinstance(obj, (np.float_, np.float16, np.float32,np.float64)):
			return float(obj)

		elif isinstance(obj, (np.ndarray,)):
			return obj.tolist()

		return json.JSONEncoder.default(self, obj)

def write_best_results(json_data):
	try:
		with open(f"{path_to_dir}/best_results.json", "w") as file:
			json.dump(json_data, file, indent=3, cls=NumpyEncoder)
	except Exception as e:
		print(f"Couldn't Write to file {e}")

def add_to_history_best(json_data):
	try:
		with open(f"{path_to_dir}/history_best_results.json", "r+") as file:
			file_data = json.load(file)
			try:
				file_data["results"].append(json_data)
			except:
				file_data["results"] = [json_data]
			file.seek(0)
			json.dump(file_data, file, indent=3, cls=NumpyEncoder)
	except Exception as e:
		print(f"Couldn't Write to file {e}")