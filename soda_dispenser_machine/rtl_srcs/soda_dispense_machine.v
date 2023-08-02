module soda_dispense_machine(
	input [7:0] s,a,
	input c,
	output d);
	
	wire tot_ld, tot_clr, tot_lts;
	
	datapath_sdm dut2 (tot_ld, tot_clr,s, a, tot_lts);
	controller_fsm dut3 (c, tot_lts, tot_ld, tot_clr, d);
	
endmodule