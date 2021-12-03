module tb;
	reg [31:0] a_in, b_in;
	reg carry_in;

	logic [31:0] sum;
	logic carry_out;
	fa_32b test_mod(
		.a(a_in), .b(b_in), .c_in(carry_in),
		.s(sum), .c_out(carry_out)
	);
	initial begin
		a_in = 32'b0;
		b_in = 32'b0;
		carry_in = 1'b0;
		#3

		//todo get diff values
		a_in = 32'b0;
		b_in = 32'b0;
		carry_in = 1'b0;
		#3

	end
endmodule