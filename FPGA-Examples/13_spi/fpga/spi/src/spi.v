/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: spi
 * Module Name				: spi
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
//------------------------Module rst_n---------------------------//
module spi(
	input clk_25m,
	input spi_clk,
	input spi_mosi,
	input spi_cs,
	output spi_miso,
	output led_red,
	output led_green,
	output led_blue
);

wire rst_n;

rst_n u1(
	.clk_25m(clk_25m),
	.rst_n(rst_n)
);

spi_ctrl u2(
	.clk_25m(clk_25m),
	.rst_n(rst_n),
	.spi_clk(spi_clk),
	.spi_mosi(spi_mosi),
	.spi_cs(spi_cs),
	.spi_miso(spi_miso),
	.led_red(led_red),
	.led_green(led_green),
	.led_blue(led_blue)
);

endmodule
