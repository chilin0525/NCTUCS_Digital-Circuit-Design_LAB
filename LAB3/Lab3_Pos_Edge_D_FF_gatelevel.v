module Lab3_Pos_Edge_D_FF_gatelevel(output Q, NQ, input D, clock);

wire w1,w2,w3,w4;

nand #2 (w1,w2,w4);
nand #2 (w2,w1,clock);
nand #2 (w3,w2,clock,w4);
nand #2 (w4,w3,D);
Lab3_SbRb_Latch_gatelevel M1(Q,NQ,w2,w3);

endmodule