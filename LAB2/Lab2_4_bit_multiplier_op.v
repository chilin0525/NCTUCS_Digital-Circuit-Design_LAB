module Lab2_4_bit_multiplier_op (output [7:0] Product, input [3:0] X, input [3:0] Y);

reg [7:0] t1,t2,t3,t4;
reg Product;
integer i;
parameter size=4;

always@(*)begin
    
    t1=8'b00000000;
    t2=8'b00000000;
    t3=8'b00000000;
    t4=8'b00000000;

    
    for(i=0;i<size;i=i+1)begin
        t1[i]=X[i]&&Y[0];
    end

    for(i=1;i<size+1;i=i+1)begin
        t2[i]=X[i-1]&&Y[1];
    end

    for(i=2;i<size+2;i=i+1)begin
        t3[i]=X[i-2]&&Y[2];
    end
    
    for(i=3;i<size+3;i=i+1)begin
        t4[i]=X[i-3]&&Y[3];
    end
    
    Product=t1+t2+t3+t4;
end

endmodule