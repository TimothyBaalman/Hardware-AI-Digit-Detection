module control(
	output logic clk,
	output logic layer0_en,
	output logic layer1_en
);

	initial begin
		clk = 1'b0;

		layer0_en = 1'b1;
		layer1_en = 1'b0;

		forever begin
			#10 clk = ~clk;
		end
	end

	integer clock_cycles = 0;
	always @(negedge clk) begin
		if(clock_cycles == 784) begin
			layer0_en = 1'b0;
			layer1_en = 1'b1;
		end

		if(clock_cycles == 848) begin
			layer1_en = 1'b0;
		end
		clock_cycles = clock_cycles + 1;

	end
endmodule // control