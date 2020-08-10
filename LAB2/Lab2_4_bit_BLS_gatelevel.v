// delay: AND OR:5 XOR Xnor:10 not:0

module Lab2_4_bit_BLS_gatelevel(output [3:0] Diff, output Bout, input [3:0] X, Y, input Bin);

wire [3:0] G;
wire [3:0] P;
wire [2:0] B;
wire [3:0] not_X;
wire [3:0] not_Y;
wire [3:0] not_P;
wire [2:0] not_B;
wire not_bin;

not(not_X[0],X[0]);
not(not_X[1],X[1]);
not(not_X[2],X[2]);
not(not_X[3],X[3]);

not(not_Y[0],Y[0]);
not(not_Y[1],Y[1]);
not(not_Y[2],Y[2]);
not(not_Y[3],Y[3]);

and #(5) (G[0],not_X[0],Y[0]);
and #(5) (G[1],not_X[1],Y[1]);
and #(5) (G[2],not_X[2],Y[2]);
and #(5) (G[3],not_X[3],Y[3]);

xnor #(10) (P[0],X[0],Y[0]);
xnor #(10) (P[1],X[1],Y[1]);
xnor #(10) (P[2],X[2],Y[2]);
xnor #(10) (P[3],X[3],Y[3]);

//-----------------------------

wire tmp1;
and #(5) (tmp1,Bin,P[0]);
or #(5) (B[0],tmp1,G[0]);

wire tmp2,tmp3;
and #(5) (tmp2,Bin,P[0],P[1]);
and #(5) (tmp3,G[0],P[1]);
or #(5) (B[1],G[1],tmp2,tmp3,G[1]);

wire tmp4,tmp5,tmp6;
and #(5) (tmp4,Bin,P[0],P[1],P[2]);
and #(5) (tmp5,G[0],P[1],P[2]);
and #(5) (tmp6,P[2],G[1]);
or #(5) (B[2],G[2],tmp5,tmp4,tmp6);

wire tmp7,tmp8,tmp9,tmp10;
and #(5) (tmp7,Bin,P[0],P[1],P[2],P[3]);
and #(5) (tmp8,G[0],P[1],P[2],P[3]);
and #(5) (tmp9,P[2],G[1],P[3]);
and #(10) (tmp10,P[3],G[2]);
or #(10) (Bout,G[3],tmp7,tmp8,tmp9,tmp10);

not(not_P[0],P[0]);
not(not_P[1],P[1]);
not(not_P[2],P[2]);
not(not_P[3],P[3]);

xor #(10) (Diff[0],not_P[0],Bin);
xor #(10) (Diff[1],not_P[1],B[0]);
xor #(10) (Diff[2],not_P[2],B[1]);
xor #(10) (Diff[3],not_P[3],B[2]);

endmodule