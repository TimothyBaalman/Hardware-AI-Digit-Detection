module control(
	output clk,
	output layer0_en, 
	output layer1_en
);
	assign clk = 1'b0;

	assign layer0_en = 1'b1; 
	assign layer1_en = 1'b0;
	
	always begin
		assign clk = ~clk;
		#100
	end
	
	integer clock_cycle = 0; 
	always @(negedge clk) begin
		clock_cycle = clock_cycle + 1;

		if(clock_cycle ^ 784 == 0) begin
			assign layer0_en = 1'b0;
			assign layer1_en = 1'b1;
		end
		
		if(clock_cycle ^ (784+64) == 0) begin
			assign layer1_en = 1'b0;
		end
	end

endmodule