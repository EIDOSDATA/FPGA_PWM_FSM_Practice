`define DLY (0)
module ci_if_cdc (
	i_rst_n,
	i_mclk,
	i_sclk,
	i_men,
	i_ena_m,
	i_ena_s,
	i_ena_ack,
	o_sen,
	o_rdy
);

// inputs
input i_rst_n;
input i_mclk;
input i_sclk;
input i_men;
input i_ena_m;
input i_ena_s;
input i_ena_ack;

// outputs
output o_sen;
output o_rdy;

// registers
reg r_master_en;
reg [2:0] r_slave_ack;
reg [2:0] r_slave_en;

// wires
wire w_slave_ack;

// body
assign w_slave_ack = (i_ena_ack) ? r_slave_ack[2] : r_slave_en[2];

always @(posedge i_mclk or negedge i_rst_n)begin
	if (!i_rst_n) begin
		r_master_en <= #(`DLY) 0;
	end
	else if (i_ena_m) begin
		if (i_men) begin
			r_master_en <= #(`DLY) 1'b1;
		end
	end
	else if (w_slave_ack) begin
		r_master_en <= #(`DLY) 1'b0;
	end
end

always @(posedge i_mclk or negedge i_rst_n) begin	
	if (!i_rst_n) begin
		r_slave_ack <= #(`DLY) 0;
	end
	else if (i_ena_ack) begin
		if (r_slave_en[2]||r_slave_ack[2]) begin
			r_slave_ack <= #(`DLY) {r_slave_ack[1:0],r_slave_en[2]};
		end
	end
end

always @(posedge i_sclk or negedge i_rst_n)begin
	if (!i_rst_n)begin
		r_slave_en <= #(`DLY) 0;
	end
	else if (i_ena_s) begin
		if (r_master_en||r_slave_en[2])begin
			r_slave_en <= #(`DLY) {r_slave_en[1:0],r_master_en};
		end
	end
end

assign o_sen = r_slave_en[1] & ~r_slave_en[2];
assign o_rdy = (i_ena_ack) ? ~r_slave_ack[1] & r_slave_ack[2] : 0;

endmodule
