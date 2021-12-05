module tb;
	reg [31:0] r_in;
	logic [31:0] r_out;

	relu act_func(.r_in(r_in), .r_out(r_out));

	initial begin
		r_in = 32'b00000000000000000000000000000000;

		#2
		r_in = 32'b10000000000000000000000000000001;
		
		#2
		r_in = 32'b01111111111111111111111111111111;

		#2
		r_in = 32'b00000000000000000000000000011110;
	end

endmodule