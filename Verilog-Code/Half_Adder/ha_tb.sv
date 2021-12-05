module tb;
   reg a_in, b_in;
   logic sum, carry;

   ha_1b ha(
      .a(a_in), .b(b_in),
      .s(sum), .c_out(carry)
   );

   initial begin
      a_in = 1'b0;
      b_in = 1'b0;

      #1;
      a_in = 1'b0; 
      b_in = 1'b1;

      #1;
      a_in = 1'b1; 
      b_in = 1'b0;

      #1;
      a_in = 1'b1; 
      b_in = 1'b1;
   end
   
endmodule