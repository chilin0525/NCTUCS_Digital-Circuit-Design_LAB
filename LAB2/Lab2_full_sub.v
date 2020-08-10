module Lab2_full_sub(output D, B, input x, y, z);

wire d1,b1,d2,b2;
Lab2_half_sub_gatelevel G1(d1,b1,x,y);
Lab2_half_sub_gatelevel G2(D,b2,d1,z);
or #(5) (B,b1,b2);
//or (B,b1,b2);


endmodule