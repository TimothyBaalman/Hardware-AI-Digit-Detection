module pixel_rom_for_0(
	output logic [31:0] data [784]// 32 bit address
);
	logic [31:0] mem [784]; // 784 inputs to the node
	initial begin
		 $readmemb("C:/Users/xbk1l/Documents/Educational/Fall 2021/DIC/Hardware-AI-Digit-Detection/Python-Parsing/image_of_0.dat", mem);
	end
	assign data = mem; 
endmodule // for pixel_rom_for_0

module test(
   output logic [31:0] px_data [784]
);
   pixel_rom_for_0 pixels(.data(px_data));
endmodule