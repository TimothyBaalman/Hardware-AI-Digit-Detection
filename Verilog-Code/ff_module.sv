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
	logic [31:0] sum_res = 32'b0;
	logic carry = 1'b0;

	logic [31:0] mult_res;

	integer i = 0; 
	always @(posedge clk) begin
		if(enabled) begin
			m_2c_32b mul(.x(input_data[i]), .y(weights[i]), .m_out(mult_res));
			i = i + 1;
		end
	end

	always @(negedge clk) begin
		if(enabled) begin
			fa_32b adder0(.a(sum_res), .b(mult_res), .c_in(carry), .s(sum_res), .c_out(carry));	
		end
	end

	always @(negedge enabled) begin
		fa_32b adder1(.a(sum_res), .b(bias), .c_in(carry), .s(sum_res), .c_out(carry));
		relu act_func(.r_in(sum_res), .r_out(sum_res) .clk(clk));
	end

endmodule