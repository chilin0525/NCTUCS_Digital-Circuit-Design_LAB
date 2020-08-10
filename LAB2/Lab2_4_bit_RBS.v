module Lab2_4_bit_RBS (output [3:0]Diff, output Bout, input [3:0] X, Y, input Bin);

    wire c1,c2,c3;
    Lab2_full_sub T1(Diff[0],c1,X[0],Y[0],Bin);
    Lab2_full_sub T2(Diff[1],c2,X[1],Y[1],c1);
    Lab2_full_sub T3(Diff[2],c3,X[2],Y[2],c2);
    Lab2_full_sub T4(Diff[3],Bout,X[3],Y[3],c3);


endmodule