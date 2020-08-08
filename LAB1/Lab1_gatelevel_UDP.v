module Lab1_gatelevel_UDP(F,A,B,C,D);

input A,B,C,D;
output F;

wire w5,w6,w7,w8;

assign w5=!B;
and(w6,w5,D);
or(w7,w6,A);
Lab1_UDP UDP(w8,A,B,C,D);
and(F,w7,w8);

endmodule
