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
