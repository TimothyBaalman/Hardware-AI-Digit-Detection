// module ff(
// 	input [31:0] hold,
// 	input clk,
// 	output [31:0] data
// );
// 	always @(negedge clk) begin
// 		assign data = hold;
// 	end

// endmodule

	// ff ff0(.hold(), .clk(clk), .data(sum_res));


module layer0_node0(
	input [31:0] input_data [784],
	input [31:0] weights [784],
	input [31:0] bias,
	input clk, enabled,
	output [31:0] node_res
);
	logic [31:0] inputs [785]; 
	logic [31:0] eq_weights [785];
	
	//group inputs
	assign inputs[0] = input_data[0];
	//...
	assign inputs[784] = bias;

	//equilize wieghts
	assign eq_weights[0] = weights[0];
	//...
	assign eq_weights[784] = 32'b01; // bias * 1 

	logic [31:0] mult_res;

	integer i = 0; 
	reg [31:0] mul_x, mul_y;
	m_2c_32b mul(.x(mul_x), .y(mul_y), .m_out(mult_res));
	always @(posedge clk) begin
		if(enabled) begin
			mul_x = inputs[i];
			mul_y = eq_weights[i];
			i = i + 1;
		end
	end

	logic [31:0] sum_res = 32'b0;
	logic carry = 1'b0;

	reg [31:0] add_a, add_b;
	reg add_c_in;
	fa_32b adder(
		.a(add_a), .b(add_b), .c_in(add_c_in),
		.s(sum_res), .c_out(carry)
	);
	always @(negedge clk) begin
		if(enabled) begin
			add_a = sum_res;
			add_b = mult_res;
			add_c_in = carry;
		end
	end

	reg [31:0] act_r_in;
	relu act_func(.r_in(act_r_in), .r_out(sum_res));
	always @(negedge enabled) begin
		act_r_in = sum_res;
	end

endmodule