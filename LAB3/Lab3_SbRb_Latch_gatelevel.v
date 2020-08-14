//gate-level  modeling
//delay: nand 2ns

module Lab3_SbRb_Latch_gatelevel(output Q,NQ,input Sb,Rb);

nand #(2) (Q,NQ,Sb);
nand #(2) (NQ,Q,Rb);

endmodule