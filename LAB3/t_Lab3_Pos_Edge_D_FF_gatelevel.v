module t_Lab3_Pos_Edge_D_FF_gatelevel();

wire Q,NQ;
reg  D,clock;

Lab3_Pos_Edge_D_FF_gatelevel M1(Q,NQ,D,clock);

initial fork
         D=1'b0;
    #15  D=1'b1;
    #35  D=1'b0;
    #65  D=1'b1; 
    #88  D=1'b0; 
    #125 D=1'b1; 
    #130 D=1'b0; 
join

initial begin
    clock=1'b0;
end
always #10 clock=~clock;

initial #200 $finish;

initial begin
    $dumpfile("demo_2.vcd");
    $dumpvars;
end

endmodule