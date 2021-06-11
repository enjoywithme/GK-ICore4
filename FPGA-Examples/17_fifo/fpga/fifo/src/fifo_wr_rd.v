/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: fifo
 * Module Name				: fifo
 * Description				: ---
 * --------------------
 * Tool Versions			: Quartus II 13.1
 * Target Device			: Cyclone IV E  EP4CE15F23C8
 * --------------------
 * Engineer					: xiaorenwu
 * Revision					: V0.0
 * Created Date			: 2017-08-22
 * --------------------
 * Engineer					:
 * Revision					:
 * Modified Date			:
 * --------------------
 * Additional Comments	: ---
 * 
 * --------------------
 */
//-------------------------Timescale----------------------------//
`timescale 1 ns / 1 ps 
//-----------------------Module fifo_wr_rd----------------------//
module fifo_wr_rd(
	input clk_25m,
	input rst_n,
	input wrn,
	input rdn,
	input cs0,
	input nadv,
	input [22:16]ab,
	inout [15:0]db,
	output fifo_full_flag,
	output led_red,
	output led_green,
	output led_blue
);

pll u1(
	.inclk0(clk_25m),
	.c0(clk_150m)
);

wire [15:0]data_out;
my_fifo u2(
	.data(data_in),
	.wrreq(1'd1),
	.wrclk(wr2),
	.rdreq(1'd1),
	.rdclk(!rd),
	.wrfull(fifo_full_flag),
	.q(data_out)
);

reg [15:0]data_in;
always@(posedge wrn or negedge rst_n)
	if(!rst_n)
		data_in <= 16'd0;
	else
		data_in <= db;
		
reg wr1,wr2;
always@(posedge clk_150m or negedge rst_n)
	if(!rst_n)
		begin
			wr1 <= 1'd0;
			wr2 <= 1'd0;
		end
	else 
		{wr2,wr1} <= {wr1,wr};
			

wire rd = rdn | cs0;			
wire wr = wrn | cs0;

assign db = rd ? 16'hzzzz : data_out;
assign led_red = 1'd1;
assign led_green = 1'd0;
assign led_blue = 1'd1;

endmodule


