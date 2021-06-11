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
//-----------------------Module fifo----------------------------//
module fifo(
	input clk_25m,
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

wire rst_n;

rst_n u1(
	.clk_25m(clk_25m),
	.rst_n(rst_n)
);

fifo_wr_rd u2(
	.clk_25m(clk_25m),
	.rst_n(rst_n),
	.wrn(wrn),
	.rdn(rdn),
	.cs0(cs0),
	.nadv(nadv),
	.ab(ab),
	.db(db),
	.fifo_full_flag(fifo_full_flag),
	.led_red(led_red),
	.led_green(led_green),
	.led_blue(led_blue)
);

endmodule

