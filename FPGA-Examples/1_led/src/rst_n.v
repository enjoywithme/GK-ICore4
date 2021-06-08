 /* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: rst_n
 * Module Name				: rst_n
 * Description				: The codes of "rst_n"
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
//--------------------module_rst_n---------------------------//
module rst_n(
	input clk_25m,
	output rst_n
);

//--------------------rst_n---------------------------------//
reg [3:0]cnt_rst;										//复位信号产生
reg rst_r;

always@(posedge clk_25m)
	if(cnt_rst == 4'd15)
	begin
		cnt_rst <= 4'd15;
		rst_r <= 1'd1;
	end
	else cnt_rst <= cnt_rst + 1'd1;

assign rst_n = rst_r;
//--------------------endmodule-----------------------------//
endmodule
