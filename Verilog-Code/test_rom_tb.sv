module tb;
	reg [11:0] index = 12'b0;
	wire [31:0] data;

	wieghts_0_input_fc_rom test(.index(index), .data(data)); 
	initial begin
		#500 $finish;         
	end

endmodule