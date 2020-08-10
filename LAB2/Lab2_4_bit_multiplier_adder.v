module Lab2_4_bit_multiplier_adder (output [7:0] Product, input [3:0] X, input [3:0] Y);

wire [3:0]sum1,sum2,sum3;
wire c1,c2,c3;
wire [3:0]summand1,summand2,summand3;
wire [3:0]addend1,addend2,addend3;

assign summand1[0]=X[1]&&Y[0];
assign summand1[1]=X[2]&&Y[0];
assign summand1[2]=X[3]&&Y[0];
assign summand1[3]=0;

assign summand2[0]=sum1[1];
assign summand2[1]=sum1[2];
assign summand2[2]=sum1[3];
assign summand2[3]=c1;

assign summand3[0]=sum2[1];
assign summand3[1]=sum2[2];
assign summand3[2]=sum2[3];
assign summand3[3]=c2;

assign addend1[0]=X[0]&&Y[1];
assign addend1[1]=X[1]&&Y[1];
assign addend1[2]=X[2]&&Y[1];
assign addend1[3]=X[3]&&Y[1];

assign addend2[0]=X[0]&&Y[2];
assign addend2[1]=X[1]&&Y[2];
assign addend2[2]=X[2]&&Y[2];
assign addend2[3]=X[3]&&Y[2];

assign addend3[0]=X[0]&&Y[3];
assign addend3[1]=X[1]&&Y[3];
assign addend3[2]=X[2]&&Y[3];
assign addend3[3]=X[3]&&Y[3];


binary_adder T1(sum1,c1,summand1,addend1,1'b0);
binary_adder T2(sum2,c2,summand2,addend2,1'b0);
binary_adder T3(sum3,c3,summand3,addend3,1'b0);

assign Product[0]=X[0]&&Y[0];
assign Product[1]=sum1[0];
assign Product[2]=sum2[0];
assign Product[3]=sum3[0];
assign Product[4]=sum3[1];
assign Product[5]=sum3[2];
assign Product[6]=sum3[3];
assign Product[7]=c3;

endmodule
