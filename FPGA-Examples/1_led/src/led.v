/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: led
 * Module Name				: led
 * Description				: The codes of "led"
 * --------------------
 * Tool Versions			: Quartus II 13.1
 * Target Device			: Cyclone IV E  EP4CE15F23C8
 * --------------------
 * Engineer					: weicguodong
 * Revision					: V0.0
 * Created Date			: 2017-07-31
 * --------------------
 * Engineer					:
 * Revision					:
 * Modified Date			:
 * --------------------
 * 
 * --------------------
 */

//--------------------Timescale------------------------------//
`timescale 1 ns / 1 ps
//--------------------module_led-----------------------------//
module led(
	input clk_25m,
	output fpga_ledr,
	output fpga_ledg,
	output fpga_ledb
	);

//--------------------wire----------------------------------//
	wire rst_n;
//--------------------rst_n----------------------------------//
/*全局复位信号*/
	rst_n u1(
		.clk_25m(clk_25m),
		.rst_n(rst_n)	
	);
//--------------------led_ctrl----------------------------------//
/*led控制器*/
	led_ctrl u2(
		.clk_25m(clk_25m),
		.rst_n(rst_n),
		.fpga_ledr(fpga_ledr),
		.fpga_ledg(fpga_ledg),
		.fpga_ledb(fpga_ledb)
	);
//--------------------endmoudle------------------------------//	
endmodule
