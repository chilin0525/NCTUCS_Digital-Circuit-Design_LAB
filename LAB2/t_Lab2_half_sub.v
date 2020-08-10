module t_Lab2_half_sub();

    wire D,B;
    reg x,y;

    Lab2_half_sub_gatelevel T1(D,B,x,y);

    initial begin
        x=1'b0;
        y=1'b0;
    end

    always
        begin
            #20
            y=!y;
        end

    always
        begin
            #40
            x=!x;
        end

    initial #80 $finish;

    initial begin
        $dumpfile("demo_1.vcd");
        $dumpvars;
    end

endmodule