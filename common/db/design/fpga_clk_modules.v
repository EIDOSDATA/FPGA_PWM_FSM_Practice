module div4_clk
(
	i_clk,
	i_rst_n,
	o_gen_clk
);
 
	input i_clk;
	input i_rst_n;
  
	output o_gen_clk;

	reg div4_count;
	reg r_gen_clk;
	
	assign o_gen_clk = r_gen_clk;
		
  
	always @(posedge i_clk or negedge i_rst_n)
	begin
		if (~i_rst_n)
		begin
			div4_count <= 1;
		end
		
		else if (div4_count == 0)
		begin
			div4_count <= 1;
		end
		
		else
		begin
			div4_count <= div4_count - 1;
		end
	end

	always @(posedge i_clk or negedge i_rst_n)
	begin
		if (~i_rst_n)
		begin
			r_gen_clk <= 0;
		end
		
		else if (div4_count == 0)
		begin
			r_gen_clk <= ~r_gen_clk;
		end
	end	
endmodule
	
module div64_clk
(
	i_clk,
	i_rst_n,
	o_gen_clk
);
	input i_clk;
	input i_rst_n;
	
	output o_gen_clk;
	
	reg [4:0] div64_count;
	reg r_gen_clk;
	
	assign o_gen_clk = r_gen_clk;
		
	always @(posedge i_clk or negedge i_rst_n)
	begin
		if (~i_rst_n)
		begin
			div64_count <= 31;
		end
		
		else if (div64_count == 0)
		begin
			div64_count <= 31;
		end
		
		else
		begin
			div64_count <= div64_count - 1;
		end
	end
			
	always @(posedge i_clk or negedge i_rst_n)
	begin
		if (~i_rst_n)
		begin
			r_gen_clk <= 0;
		end
		
		else if (div64_count == 0)
		begin
			r_gen_clk <= ~r_gen_clk;
		end
	end
endmodule

module div2_clk
(
	i_clk,
	i_rst_n,
	o_gen_clk
);			
	input i_clk;
	input i_rst_n;
	
	output o_gen_clk;
	
	reg div2_count;
	reg r_gen_clk;
	assign o_gen_clk = r_gen_clk;

	always @(posedge i_clk or negedge i_rst_n)
	begin
		if (~i_rst_n)
		begin
			div2_count <= 1;
		end
		
		else
		begin
			div2_count <= ~div2_count;
		end
	end

	always @(posedge i_clk or negedge i_rst_n)
	begin
		if (~i_rst_n)
		begin
			r_gen_clk <= 0;
		end
		
		else if (div2_count == 0)
		begin
			r_gen_clk <= ~r_gen_clk;
		end
	end
endmodule