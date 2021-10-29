module half_adder_tb;
   reg a_in, b_in;
   wire sum, carry;

   half_adder ha0(
      .a(a_in),
      .b(b_in),
      .s(sum),
      .c_out(carry)
   );

   initial begin
      $dumpfile("dump.vcd"); $dumpvars;

      #1;
      a_in = 0;
      b_in = 0;

      #1;
      a_in = 0; 
      b_in = 1;

      #1;
      a_in = 1; 
      b_in = 0;

      #1;
      a_in = 1; 
      b_in = 1;

      #1 $finish;
   end
   
endmodule