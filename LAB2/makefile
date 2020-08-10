demo_1: Lab2_half_sub_gatelevel.v t_Lab2_half_sub.v
	iverilog -o demo_1 Lab2_half_sub_gatelevel.v t_Lab2_half_sub.v
	vvp demo_1
	gtkwave demo_1.vcd

demo_2: Lab2_half_sub_gatelevel.v Lab2_full_sub.v t_Lab2_full_sub.v 
	iverilog -o demo_2 Lab2_half_sub_gatelevel.v Lab2_full_sub.v t_Lab2_full_sub.v 
	vvp demo_2
	gtkwave demo_2.vcd
demo_3: Lab2_half_sub_gatelevel.v Lab2_full_sub.v Lab2_4_bit_RBS.v t_Lab2_4_bit_sub.v Lab2_4_bit_BLS_behavioral.v Lab2_4_bit_BLS_dataflow.v Lab2_4_bit_BLS_gatelevel.v 
	iverilog -o demo_3 Lab2_half_sub_gatelevel.v Lab2_full_sub.v Lab2_4_bit_RBS.v t_Lab2_4_bit_sub.v Lab2_4_bit_BLS_behavioral.v Lab2_4_bit_BLS_dataflow.v Lab2_4_bit_BLS_gatelevel.v 
	vvp demo_3
	gtkwave demo_3.vcd
demo_4: t_Lab2_4_bit_multiplier.v Lab2_4_bit_multiplier_adder.v Lab2_4_bit_multiplier_op.v
	iverilog -o demo_4 t_Lab2_4_bit_multiplier.v Lab2_4_bit_multiplier_adder.v binary_adder.v Lab2_4_bit_multiplier_op.v
	vvp demo_4
	gtkwave demo_4.vcd
clean:
	rm -f demo_1 demo_2 demo_3 demo_4 *.vcd

