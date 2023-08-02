module datapath_sdm (tot_ld, tot_clr, s, a, tot_lts);
	parameter n=8;

	input [n-1:0] s,a;
	input tot_ld, tot_clr;
	output tot_lts;
	wire [n-1:0] add_ret;
	
	reg [n-1:0] total;
	
	always@(tot_ld or tot_clr)
	begin
		if (tot_clr) begin
			total <= 8'd0;
		end
		else if (tot_ld & ~tot_clr) begin
			total <= add_ret;
		end
		else begin
			total <= 8'd0;
		end
	end
	
	comparator dut0 (s, total, tot_lts);
	adder dut1 (total, a, add_ret);
	
	
endmodule