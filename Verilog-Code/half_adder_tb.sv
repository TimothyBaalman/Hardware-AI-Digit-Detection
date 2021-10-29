module half_adder_tb;
reg a, b;
wire sum, carry;

half_adder ha0(
   .a(a),
   .b(b),
   .sum(sum),
   .carry(carry)
);

   
endmodule