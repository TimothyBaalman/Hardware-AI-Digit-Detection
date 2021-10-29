module full_adder_1b_tb;
	reg a_in, b_in, carry_in;
	wire sum, carry_out;

	full_adder_1b fa0(
		.a(a_in), .b(b_in), .c_in(carry_in),
		.s(sum), .c_out(carry_out)
	);

	initial begin
		$dumpfile("dump.vcd"); $dumpvars;

		#1;
		a_in = 0;
		b_in = 0;
		carry_in = 0;

		#1;
		a_in = 0; 
		b_in = 1;
		carry_in = 0;

		#1;
		a_in = 1; 
		b_in = 0;
		carry_in = 0;

		#1;
		a_in = 1; 
		b_in = 1;
		carry_in = 0;

		#1;
		a_in = 0;
		b_in = 0;
		carry_in = 1;

		#1;
		a_in = 0; 
		b_in = 1;
		carry_in = 1;

		#1;
		a_in = 1; 
		b_in = 0;
		carry_in = 1;

		#1;
		a_in = 1; 
		b_in = 1;
		carry_in = 1;

		#1 $finish;
	end

endmodule