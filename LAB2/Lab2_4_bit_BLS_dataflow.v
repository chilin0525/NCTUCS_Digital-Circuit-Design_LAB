//no delay
module Lab2_4_bit_BLS_dataflow(output [3:0] Diff, output Bout, input [3:0] X, Y, input Bin);

wire [3:0] G;
wire [3:0] P;
wire [3:0] B;

assign G[0]=(!X[0]&&Y[0]);
assign G[1]=(!X[1]&&Y[1]);
assign G[2]=(!X[2]&&Y[2]);
assign G[3]=(!X[3]&&Y[3]);

assign P[0]=((X[0]&&Y[0])||(!X[0]&&!Y[0]));
assign P[1]=((X[1]&&Y[1])||(!X[1]&&!Y[1]));
assign P[2]=((X[2]&&Y[2])||(!X[2]&&!Y[2]));
assign P[3]=((X[3]&&Y[3])||(!X[3]&&!Y[3]));

assign B[0]=(G[0]||(Bin&&P[0]));
assign B[1]=(G[1]||(B[0]&&P[1]));
assign B[2]=(G[2]||(B[1]&&P[2]));
assign B[3]=(G[3]||(B[2]&&P[3]));

assign Bout=B[3];

assign Diff[0]=((P[0]&&Bin)||(!P[0]&&!Bin));
assign Diff[1]=((P[1]&&B[0])||(!P[1]&&!B[0]));
assign Diff[2]=((P[2]&&B[1])||(!P[2]&&!B[1]));
assign Diff[3]=((P[3]&&B[2])||(!P[3]&&!B[2]));



endmodule