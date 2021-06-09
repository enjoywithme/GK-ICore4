 /* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: fsmc
 * Module Name				: fsmc
 * Description				: The codes of "fsmc_ctrl"
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
 * 
 * --------------------
 */

//--------------------Timescale------------------------------//
`timescale 1 ns / 1 ps
//--------------------module_fsmc_ctrl-----------------------//
module fsmc_ctrl(
	input clk_25m,
	input pll_100m,
   input rst_n,
	
	input FSMC_CLK,
	input NADV,
	input WRn,
	input RDn,
	input CSn,
	input [23:16]AB,
	inout [15:0]DB
);
	
//--------------------wire---------------------------------//
	wire rd = (CSn | RDn);
	wire wr = (CSn | WRn);

//--------------------clk----------------------------------//
	reg wr_clk1,wr_clk2,wr_clk3;	
	
	always @(posedge pll_100m or negedge rst_n)
		begin
			if(!rst_n)
				begin
					wr_clk1 <= 1'd1;
					wr_clk2 <= 1'd1;
				end
			else
				{wr_clk3,wr_clk2,wr_clk1} <= {wr_clk2,wr_clk1,wr};	//提取写时钟
		end
		
	wire clk = (!wr_clk1 | !rd);
	
//--------------------db_out-------------------------------//
	wire [15:0]db_out;
	assign DB = !rd ? db_out : 16'hzzzz;

//--------------------my_ram-------------------------------//
	my_ram u1(
		.address(AB),
		.clock(clk),
		.data(DB),
		.wren(!wr),
		.rden(!rd),
		.q(db_out)	
	);//例化ram模块
	
//--------------------endmodule----------------------------//
endmodule
