/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: icore_adm7606
 * Module Name				: icore3_adm7606
 * Description				: The codes of "icore3_adm_7606"
 * --------------------
 * Tool Versions			: Quartus II 13.1
 * Target Device			: Cyclone IV E  EP4CE10F17C8
 * --------------------
 * Engineer					: 
 * Revision					: V0.0
 * Created Date			: 2017-04-07
 * --------------------
 * Engineer					:weicguodong
 * Revision					:
 * Modified Date			:
 * --------------------
 * Additional Comments	: 
 * 
 * --------------------
 */

//--------------------Timescale------------------------------//
`timescale 1 ns / 1 ps
//-----------------module_icore3_adm7606---------------------//
module  adm7606(
	input clk_25m,
	output fpga_ledb,
	
	//fsmc总线相关信号
	input fsmc_clk,
	input fsmc_nadv,
	input fsmc_wr,
	input fsmc_rd,
	input fsmc_cs,
	input [7:0]fsmc_ab,
	inout [15:0]fsmc_db,
	
	//ad7606
	output rd_sig,
	output cs,
	output conva,
	output convb,
	output ad_rst,
	output pange,
	output [2:0]os,
	input busy,
	input [15:0]db
);
//----------------------wire---------------------------------//
	wire rsn;
	wire clk_200k;
	wire clk_50m;

	//通用AD控制连线信号
	wire sample_start;
	wire read_clk;
	wire ad7606_read_start;
	
	wire [15:0]ad_data1;
	wire [15:0]ad_data2;
	wire [15:0]ad_data3;
	wire [15:0]ad_data4;
	wire [15:0]ad_data5;
	wire [15:0]ad_data6;
	wire [15:0]ad_data7;
	wire [15:0]ad_data8;
//----------------------pll---------------------------------//
my_pll u1(
	.inclk0(clk_25m),
	.c0(clk_1m),
	.c1(clk_50m)
	);//例化my_pll模块，输出所需时钟

//----------------------rst---------------------------------//
rst u2(
	.clk_25m(clk_25m),
	.rsn(rsn)
	);//例化rst模块，输出全局复位信号
					
//----------------------led---------------------------------//
led u3(
	.clk_25m(clk_25m),
	.fpga_ledb(fpga_ledb)
	);//例化led模块，输出程序指示灯，标识程序是否下载

//----------------------led---------------------------------//				
//fsmc总线相关数据信号处理，包括总线驱动与寄存器分配控制两个功能
//该模块根据寄存器的位置将相应AD类型的数据及信号出书到对应的AD模块中
fsmc_ctrl u4(
	.rst_n(rsn),
	.clk_25m(clk_25m),
	//fsmc相关
	.fsmc_clk(fsmc_clk),
	.fsmc_nadv(fsmc_nadv),
	.fsmc_wr(fsmc_wr),
	.fsmc_rd(fsmc_rd),
	.fsmc_cs(fsmc_cs),
	.fsmc_ab(fsmc_ab),
	.fsmc_db(fsmc_db),
	
	//通用AD控制信号
	.sample_start(sample_start),
	.ad_data1(ad_data1),
	.ad_data2(ad_data2),
	.ad_data3(ad_data3),
	.ad_data4(ad_data4),
	.ad_data5(ad_data5),
	.ad_data6(ad_data6),
	.ad_data7(ad_data7),
	.ad_data8(ad_data8),
	
	//ad7606相关
	.ad7606_read_start(ad7606_read_start),
	.read_clk(read_clk)
);
//----------------------adc---------------------------------//
adc u5(
	.rsn(rsn),
	.clk_25m(clk_25m),
	.clk_200k(clk_200k),
	.clk_50m(clk_50m),
	.rd_sig(rd_sig),
	.cs(cs),
	.conva(conva),
	.convb(convb),
	.ad_rst(ad_rst),
	.pange(pange),
	.os(os),
	.busy(busy),
	.db(db),
	.ad_data1(ad_data1),
	.ad_data2(ad_data2),
	.ad_data3(ad_data3),
	.ad_data4(ad_data4),
	.ad_data5(ad_data5),
	.ad_data6(ad_data6),
	.ad_data7(ad_data7),
	.ad_data8(ad_data8),
	
	.read_clk(read_clk),
	.ad7606_read_start(ad7606_read_start),
	.sample_start(sample_start)
	);//例化adc模块,控制ad采样

//-------------------endmodule------------------------------//
endmodule
