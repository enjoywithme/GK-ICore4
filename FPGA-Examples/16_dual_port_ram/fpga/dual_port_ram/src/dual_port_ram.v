/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: dual port ram
 * Module Name				: dual port ram
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
//-----------------------Module dual_port_ram-------------------//
module dual_port_ram(
	input clk_25m,
	input wrn,
	input rdn,
	input cs0,
	inout [15:0]db,
	input [23:16]ab,
	output led_red,
	output led_green,
	output led_blue
);

wire rst_n;

rst_n u1(
	.clk_25m(clk_25m),
	.rst_n(rst_n)
);


dual_port_ram_ctrl u2(
	.clk_25m(clk_25m),
	.rst_n(rst_n),
	.wrn(wrn),
	.rdn(rdn),
	.cs0(cs0),
	.db(db),
	.ab(ab),
	.led_red(led_red),
	.led_green(led_green),
	.led_blue(led_blue)
);

endmodule
