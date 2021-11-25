// module tb;
// 	reg [11:0] index = 12'b0;
// 	wire [31:0] data;

// 	wieghts_0_input_fc_rom test(.index(index), .data(data)); 
// 	initial begin
// 		#500 $finish;         
// 	end

// endmodule

// module tb;
// 	wire [31:0] node_out [784];
// 	pixel_rom_0 px_0(node_out);
	
// 	initial begin
// 		#5000 $finish;         
// 	end

// endmodule

module tb;
	reg [31:0] in;
	wire [31:0] out;
	relu rel(.r_in(in), .r_out(out));
	initial begin
		in = 32'b11111111000011111111111111111110;

		#25
		in = 32'b1;

		#25
		in = 32'b110;       
	end

endmodule