# LAB3

## A. S'R'-Latch

## B. D-type Positive Edge Trigger Flip-Flop

## C. Mealy-Type Synchronous Sequential Circuit

## Other useful information

### D-Latch
![](https://i.imgur.com/X5CUnMt.png)

```verilog
module D_latch(output reg Q,input D,enable);
    
always@(enable,D)begin
    if(enable) D=Q;
end

endmodule
```

&nbsp;

![](https://i.imgur.com/e3jNtnA.png)

```verilog
module D_latch(D,Q,Clk);
    
output Q;
input D,Clk;
reg Q;

always(posedge Clk)begin
    Q <= D;
end

endmodule
```

&nbsp;

![](https://i.imgur.com/Zy0vjfD.png)

```verilog
module D_latch(D,Q,Clk);
    
output Q,QB;
input D,Clk;
reg Q,QB;

assign QB=~Q;
always(posedge Clk)begin
    Q <= D;
end

endmodule
```

&nbsp;

![](https://i.imgur.com/PkPTob4.png)

```verilog
module D_latch(D,Q,Clk,rst);
    
output Q,QB;
input D,Clk,rst;
reg Q,QB;

assign QB=~Q;
always(posedge Clk,negedge rst)begin
    if(!rst) Q<=1'b0;
    else Q<=D;
end

endmodule
```

&nbsp;

### T flip-flop

![](https://i.imgur.com/ft8uvN9.png)

```verilog
module(Q,T,Clk,rst);

output Q;
input T,Clk,rst;
reg Q;

always@(posedge Clk,negedge rst)begin
    if(!rst) D<=1'b0;
    else if(T) Q<=!Q;
end

endmodule
```

&nbsp;

### JK flip-flop

![](https://i.imgur.com/JJQvhou.png)
![](https://i.imgur.com/0VT53S9.png)

```verilog
module(Q,QB,J,K,clk);

output Q,QB;
input J,K,clk;
reg Q;

assign QB=~Q;
always@(posedge Clk)begin
    case({J,K})
        2'b00: Q<=Q;
        2'b01: Q<=1'b0;
        2'b10: Q<=1'b1;
        2'b11: Q<=~Q;
    endcase
end
endmodule
```

&nbsp;

## State Diagram

![](https://i.imgur.com/hfKZsID.png)

![](https://i.imgur.com/myxHXYY.png)

```verilog
module mearly_type(output reg y,input x,clk,rst)

reg [1:0] state,next_state;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;

always@(posedge clk,negedge rst)begin
    if(!rst)state<=0;
    else state<=next_state;
end

always@(state,x)begin
    case(state)
        s0:if(x)next_state=s1;else next_state=s2;
        s1:if(x)next_state=s3;else next_state=s0;
        s2:if(x)next_state=s2;else next_state=s0;
        s3:if(x)next_state=s2;else next_state=s0;
    endcase
end

always@(state,x)begin
    case(state)
        s0:y=1'b0;
        s1,s2,s3: y=!x;
    endcase
end    
endmodule
```
