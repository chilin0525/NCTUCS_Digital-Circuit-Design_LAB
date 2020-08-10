module t_Lab2_4_bit_sub();

reg [3:0]X,Y;
reg Bin;
wire [3:0]Diff1,Diff2,Diff3,Diff4;
wire Bout1,Bout2,Bout3,Bout4;

Lab2_4_bit_BLS_dataflow L1(Diff1,Bout1,X,Y,Bin);
Lab2_4_bit_BLS_behavioral L2(Diff2,Bout2,X,Y,Bin);
Lab2_4_bit_BLS_gatelevel L3(Diff3,Bout3,X,Y,Bin);
Lab2_4_bit_RBS L4(Diff4,Bout4,X,Y,Bin);

initial begin
        X=4'b1111;Y=4'b1111;Bin=1'b1;
        #100 X=4'b0000;Y=4'b1111;Bin=1'b0;
        #100 X=4'b0101;Y=4'b1010;Bin=1'b1;
        #100 X=4'b1000;Y=4'b1100;Bin=1'b1;
        #100 X=4'b0101;Y=4'b0101;Bin=1'b0;
        #100 X=4'b1011;Y=4'b1011;Bin=1'b1;
        #100 X=4'b0011;Y=4'b1100;Bin=1'b1;
        #100 X=4'b1001;Y=4'b0110;Bin=1'b1;

        //$display("%d %d %d %d %d",x,y,Bin,D,B);
    end
    initial #800 $finish;


initial begin
        $dumpfile("demo_3.vcd");
        $dumpvars;
    end

endmodule
