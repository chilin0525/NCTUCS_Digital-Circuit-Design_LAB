module Lab2_half_sub_gatelevel(output D, B, input x, y);

wire x_not;
xor #(10) G1(D,x,y);
//xor  G1(D,x,y);
not G2(x_not,x);
and #(5) G3(B,x_not,y);
//and G3(B,x_not,y);

endmodule