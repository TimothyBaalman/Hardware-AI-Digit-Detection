module half_adder (
   input a, b,
   output s, c_out
);
   xor(s, a, b);
   and(c_out, a, b);
   
endmodule