 /* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: fsmc
 * Module Name				: fsmc
 * Description				: The codes of "fsmc"
 * --------------------
 * Tool Versions			: Quartus II 13.1
 * Target Device			: Cyclone IV E  EP4CE15F23C8
 * --------------------
 * Engineer					: weicguodong
 * Revision					: V0.0
 * Created Date			: 2017-08-01
 * --------------------
 * Engineer					:
 * Revision					:
 * Modified Date			:
 * --------------------
 *================================================================
 *实验现象：
 *		下载时先下载fpga程序，再下载arm程序，程序正常运行时，arm和fpga的led均为绿灯亮,异常时arm红灯亮。
 *================================================================
 * --------------------
 */

//--------------------Timescale------------------------------//
`timescale 1 ns / 1 ps
//--------------------module_fsmc----------------------------//
module fsmc(
	input clk_25m,
	output fpga_ledr,
	output fpga_ledg,
	output fpga_ledb,
	
	input FSMC_CLK,
	input NADV,
	input WRn,
	input RDn,
	input CSn,
	input [23:16]AB,
	inout [15:0]DB
);
//--------------------assign-------------------------------//
	assign {fpga_ledr,fpga_ledg,fpga_ledb} = {1'd1,1'd0,1'd1};
	
//--------------------wire---------------------------------//
	wire rst_n;
	wire pll_100m;
	
//--------------------pll----------------------------------//
	my_pll u1(
		.inclk0(clk_25m),
		.c0(pll_100m)
	);

//--------------------rst_n--------------------------------//
	rst_n u2(
		.clk_25m(clk_25m),
		.rst_n(rst_n)	
	);

//--------------------rst_n--------------------------------//
	fsmc_ctrl u3(
		.clk_25m(clk_25m),
		.pll_100m(pll_100m),
		.rst_n(rst_n),
		.FSMC_CLK(FSMC_CLK),
		.NADV(NADV),
		.WRn(WRn),
		.RDn(RDn),
		.CSn(CSn),
		.AB(AB),
		.DB(DB)
	);
	
//--------------------endmodule----------------------------//
endmodule
