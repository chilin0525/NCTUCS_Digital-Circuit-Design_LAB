module Lab3_BCD_OPG_state_diagram(output z, input x,clock,reset);

reg z;
reg [2:0] state,next_state;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;
parameter s6=3'b110;
parameter s7=3'b111;

always@(posedge clock,negedge reset)begin
    if(!reset) state<=s0;
    else state<=next_state;
end

always@(state,x)begin
    case(state)
        s0: if(x) next_state=s2; else next_state=s1;
        s1: if(x) next_state=s4; else next_state=s3;
        s2: next_state=s5;
        s3: if(x) next_state=s7; else next_state=s6;
        s4: if(x) next_state=s6; else next_state=s7;
        s5: next_state=s7;
        s6: if(x) next_state=s0; else next_state=s0;
        s7: if(x) next_state=s0; else next_state=s0;
    endcase
end

always@(state,x)begin
    z=0;
    if(x==0 && state==s6) z=1;
    else if(x==1 && state==s7) z=1;
end

endmodule