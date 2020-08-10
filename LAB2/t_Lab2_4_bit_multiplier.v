module t_Lab2_4_bit_multiplier();

reg [3:0] x,y;
wire [7:0] p1,p2;

Lab2_4_bit_multiplier_adder T1(p1,x,y);
Lab2_4_bit_multiplier_op T2(p2,x,y);

initial begin
    x=4'b1111;y=4'b1111;
    #50 x=4'b0000;y=4'b1111;
    #50 x=4'b1111;y=4'b0000;
    #50 x=4'b1010;y=4'b0101;
    #50 x=4'b0101;y=4'b0101;
    #50 x=4'b0011;y=4'b1110;
    #50 x=4'b1011;y=4'b0111;
    #50 x=4'b1001;y=4'b0110;
end
initial #500 $finish;

initial begin
    $dumpfile("demo_4.vcd");
    $dumpvars;
end

endmodule