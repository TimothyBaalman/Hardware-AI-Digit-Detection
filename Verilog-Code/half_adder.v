module half_adder (
   input a, b,
   output sum, carry
);
   xor(sum, a, b);
   and(carry, a, b);
   
endmodule