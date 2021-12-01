module layer1_weight_0_rom(
	output logic [31:0] data [64]// 32 bit address
);
	logic [31:0] mem [64]; // 64 inputs to the node
	initial begin
		 $readmemb("C:/Users/xbk1l/Documents/Educational/Fall 2021/DIC/Hardware-AI-Digit-Detection/Python-Parsing/layer1_weight_0.dat", mem);
	end
	assign data = mem; 
endmodule // for layer1_weight_0_rom


module test(
   output logic [31:0] weight_data [784]
);
   layer1_weight_0_rom weights_0(.data(weight_data));
endmodule