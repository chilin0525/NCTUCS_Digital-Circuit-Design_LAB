//no delay
module Lab2_4_bit_BLS_behavioral(output [3:0] Diff, output Bout, input [3:0] X,Y, input Bin);

parameter size=4;
integer i;
reg [3:0] Diff;
reg Bout;
reg [3:0] P;
reg [3:0] G;
reg [4:0] B;

always@(*)begin
    B[0]=Bin;
    for(i=0;i<size;i=i+1)begin
        P[i]=!(X[i]^Y[i]);
        G[i]=((!X[i])&&Y[i]);
        Diff[i]=(!P[i])^B[i];
        B[i+1]=(G[i]||(B[i]&&P[i]));
    end
    Bout=B[4];
end


endmodule