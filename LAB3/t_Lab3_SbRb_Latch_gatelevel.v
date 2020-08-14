module t_Lab3_SbRb_Latch_gatelevel();

wire Q,NQ;
reg Sb,Rb;

Lab3_SbRb_Latch_gatelevel M1(Q,NQ,Sb,Rb);

initial begin
    Sb=1'b1;Rb=1'b0;
    #10 Sb=1'b1;Rb=1'b1;
    #10 Sb=1'b0;Rb=1'b1;
    #10 Sb=1'b1;Rb=1'b1;
    #10 Sb=1'b0;Rb=1'b0;
    #10 Sb=1'b1;Rb=1'b1;
    #10 Sb=1'b1;Rb=1'b0;
end

initial #100 $finish;

initial begin
    $dumpfile("demo_1.vcd");
    $dumpvars;
end

endmodule