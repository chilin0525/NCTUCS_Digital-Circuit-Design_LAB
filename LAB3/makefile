demo_1: t_Lab3_SbRb_Latch_gatelevel.v Lab3_SbRb_Latch_gatelevel.v
		iverilog -o demo_1 t_Lab3_SbRb_Latch_gatelevel.v Lab3_SbRb_Latch_gatelevel.v
		vvp demo_1
		gtkwave demo_1.vcd

demo_2: t_Lab3_SbRb_Latch_gatelevel.v Lab3_SbRb_Latch_gatelevel.v Lab3_Pos_Edge_D_FF_gatelevel.v t_Lab3_Pos_Edge_D_FF_gatelevel.v
		iverilog -o demo_2 Lab3_SbRb_Latch_gatelevel.v Lab3_Pos_Edge_D_FF_gatelevel.v t_Lab3_Pos_Edge_D_FF_gatelevel.v
		vvp demo_2
		gtkwave demo_2.vcd
clean:	
		rm demo_1 demo_2 *.vcd 