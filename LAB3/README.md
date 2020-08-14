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
