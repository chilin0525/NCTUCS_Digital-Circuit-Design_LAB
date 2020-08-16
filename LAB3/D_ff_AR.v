module D_ff_AR(Q,D,Clk,rst);
    
output Q;
input D,Clk,rst;
reg Q;

always @(posedge Clk,negedge rst)begin
    if(!rst) Q<=1'b0;
    else Q<=D;
end

endmodule