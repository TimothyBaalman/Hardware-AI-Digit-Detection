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
		a_in = 32'b1_11111111111111101_10100110011010; //-2.35
		b_in = 32'b0_00000000000000101_00000000000000; //5
		carry_in = 1'b0;
		//Expected Add Result: 0_00000000000000010_10100110011001
		
		#3
		a_in = 32'b0_00000000000001010_00111101011100; //10.24
		b_in = 32'b0_00000000000000101_00000000000000; //5
		carry_in = 1'b0;
		//Expected Add Result: 0_00000000000001111_00111101011100

	end
endmodule