module Lab3_BCD_OPG_structure (output z,input x, clock, reset);

wire [2:0]Q;
wire d0,d1,d2;

assign d2= (!Q[2]&&Q[1])||(!Q[2]&&Q[0]&&x)||(Q[2]&&!Q[1]);
assign d1= (Q[2]&&!Q[1])||(!Q[1]&&!Q[0]&&x)||(!Q[2]&&Q[0]&&!x)||(!Q[2]&&Q[1]&&Q[0]);
assign d0= (!Q[1]&&!x)||(!Q[2]&&!Q[0]&&!x)||(!Q[2]&&Q[1]&&x);
assign z = (Q[2]&&Q[1]&&!Q[0]&&!x)||(Q[2]&&Q[0]&&x);

D_ff_AR D1(Q[2],d2,clock,reset);
D_ff_AR D2(Q[1],d1,clock,reset);
D_ff_AR D3(Q[0],d0,clock,reset);

endmodule