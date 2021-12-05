module ha_1b(
   input logic a, b,
   output logic s, c_out
);
	xor(s, a, b);
	and(c_out, a, b);
endmodule // for module ha_1b
