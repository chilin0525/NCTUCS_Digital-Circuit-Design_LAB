module t_Lab2_full_sub();

    wire D,B;
    reg x,y,z;

    Lab2_full_sub T1(D,B,x,y,z);

    initial begin
        x=1'b0;
        y=1'b0;
        z=1'b0;
    end

    always
        begin
            #30
            z=!z;
        end

    always
        begin
            #60
            y=!y;
        end

    always
        begin
            #120
            x=!x;
        end

    initial #240 $finish;

    initial begin
        $dumpfile("demo_2.vcd");
        $dumpvars;
    end

endmodule