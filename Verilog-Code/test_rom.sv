module wieghts_0_input_fc_rom (
	input [9:0] index,//max index val is 783
	output [31:0] data // 32 bit address
);
	logic [31:0] mem [784]; // 784 inputs to this node each 32 bits

	initial begin
		$readmemb("./../Python-Parsing/fc_weight_0.dat", mem); //Load all vals to mem
	end

	assign data = mem[index];

endmodule

module bias_input_fc_rom (
	input [5:0] index,//max index val is 63
	output [31:0] data // 32 bit address
);
	logic [31:0] mem [64]; // 64 nodes each 32 bits

	initial begin
		$readmemb("./../Python-Parsing/fc_bias.dat", mem); //Load all vals to mem
	end

	assign data = mem[index];

endmodule

module fc_node_0(
	output [31:0] node_out
);
	logic [9:0] weight_index = 10'b0;
	logic [31:0] summation = 32'b0;
	logic carry = 1'b0;

	always @* begin 
		//TODO fix for breaking out of loop. 
		logic [31:0] weight, val, mult_out;
		logic ignore_carry = 1'b0;

		pixel_rom px_val(.index(weight_index), .val(val));
		wieghts_0_input_fc_rom weight_val(.index(weight_index), .data(weight));
		m_2c_32b mul(.x(val), .y(weight), .m_out(mult_out));

		fa_32b summing(.a(summation), .b(mult_out), .c_in(carry), .s(summation), .c_out(carry));
		fa_32b incre_index(.a(weight_index), .b(32'b01), .c_in(ignore_carry), .s(weight_index), .c_out(ignore_carry));
	end

	logic [5:0] bias_index = 6'b0;
	logic [31:0] bias_val;

	bias_input_fc_rom b0(.index(bias_index), .data(bias_val));
	
	fa_32b add_bias(.a(summation), .b(bias_val), .c_in(carry), .s(summation), .c_out(carry));

	relu activate_func(.r_in(summation), .r_out(node_out));
endmodule