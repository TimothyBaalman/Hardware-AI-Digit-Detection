module layer0_weight_0_rom(
	output logic [31:0] data [784]// 32 bit address
);
	logic [31:0] mem [784]; // 784 inputs to the node
	initial begin
		 $readmemb("C:/Users/xbk1l/Documents/Educational/Fall 2021/DIC/Hardware-AI-Digit-Detection/Python-Parsing/layer0_weight_0.dat", mem);
	end
	assign data = mem; 
endmodule // for layer0_weight_0_rom