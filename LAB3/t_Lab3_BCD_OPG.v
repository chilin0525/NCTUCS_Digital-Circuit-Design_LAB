module t_Lab3_BCD_OPG();

wire z;
reg  x,clock,reset;

Lab3_BCD_OPG_state_diagram M1(z,x,clock,reset);
Lab3_BCD_OPG_structure M2(z,x,clock,reset);

initial begin
    clock=1'b0;
end
always #5 clock=~clock;

initial begin
    reset=0;
    #10 reset=1;x=0;
    #10 x=0;
    #10 x=0;
    #10 x=0;

    #10 x=0;
    #10 x=0;
    #10 x=0;
    #10 x=1;

    #10 x=0;
    #10 x=0;
    #10 x=1;
    #10 x=0;

    #10 x=0;
    #10 x=0;
    #10 x=1;
    #10 x=1;

    #10 x=0;
    #10 x=1;
    #10 x=0;
    #10 x=0;

    #10 x=0;
    #10 x=1;
    #10 x=0;
    #10 x=1;

    #10 x=0;
    #10 x=1;
    #10 x=1;
    #10 x=0;

    #10 x=0;
    #10 x=1;
    #10 x=1;
    #10 x=1;

    #10 x=1;
    #10 x=0;
    #10 x=0;
    #10 x=0;

    #10 x=1;
    #10 x=0;
    #10 x=0;
    #10 x=1;

    #10 reset=0;x=0;
    #10 x=0;
    #10 x=0;
    #10 x=0;

    #10 x=0;
    #10 x=0;
    #10 x=0;
    #10 x=1;

    #10 x=0;
    #10 x=0;
    #10 x=1;
    #10 x=0;

    #10 x=0;
    #10 x=0;
    #10 x=1;
    #10 x=1;

    #10 x=0;
    #10 x=1;
    #10 x=0;
    #10 x=0;

    #10 x=0;
    #10 x=1;
    #10 x=0;
    #10 x=1;

    #10 x=0;
    #10 x=1;
    #10 x=1;
    #10 x=0;

    #10 x=0;
    #10 x=1;
    #10 x=1;
    #10 x=1;

    #10 x=1;
    #10 x=0;
    #10 x=0;
    #10 x=0;

    #10 x=1;
    #10 x=0;
    #10 x=0;
    #10 x=1;
end


initial #1000 $finish;

initial begin
    $dumpfile("demo_3.vcd");
    $dumpvars;
end

endmodule