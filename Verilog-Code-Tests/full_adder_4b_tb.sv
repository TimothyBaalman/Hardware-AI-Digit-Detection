module full_adder_4b_tb;
	reg [3:0] a_in, b_in;
	reg carry_in;
	wire [3:0] sum;
	wire carry_out;

	full_adder_4b fa0(
		.a(a_in), .b(b_in), .c_in(carry_in),
		.s(sum), .c_out(carry_out)
	);

	initial begin
		$dumpfile("dump.vcd"); $dumpvars;

		#1;
		a_in = 4'b1111;
		b_in = 4'b0000;
		carry_in = 0;

		#1;
		a_in = 4'b0000;
		b_in = 4'b1111;
		carry_in = 0;

		#1;
		a_in = 4'b1010;
		b_in = 4'b0101;
		carry_in = 0;

		#1;
		a_in = 4'b1111;
		b_in = 4'b1111;
		carry_in = 0;

		#1;
		a_in = 4'b1111;
		b_in = 4'b0000;
		carry_in = 1;

		#1;
		a_in = 4'b0000;
		b_in = 4'b1111;
		carry_in = 1;

		#1;
		a_in = 4'b0101;
		b_in = 4'b1010;
		carry_in = 1;

		#1;
		a_in = 4'b1111;
		b_in = 4'b1111;
		carry_in = 1;

		#1 $finish;
	end

endmodule