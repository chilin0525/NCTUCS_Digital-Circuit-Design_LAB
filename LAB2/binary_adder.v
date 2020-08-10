module binary_adder (output wire [3:0] sum,
                     output wire carry_out,
                     input wire [3:0] summand,
                     input wire [3:0] addend,
                     input wire carry_in);
assign {carry_out, sum} = summand + addend + carry_in;
endmodule
