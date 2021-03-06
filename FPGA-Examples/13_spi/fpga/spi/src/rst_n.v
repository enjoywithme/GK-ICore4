/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: signal port ram
 * Module Name				: rst_n
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
//-----------------------Module rst_n---------------------------//
module rst_n(
	input clk_25m,
	output rst_n
);

reg [5:0]rst_cnt;
reg rst;
always@(posedge clk_25m)
	if(rst_cnt == 4'd50)
		begin 
			rst_cnt <= 4'd50;
			rst <= 1'd1;
		end 
	else 
		rst_cnt <= rst_cnt + 1'd1;
		
assign rst_n = rst;

endmodule 
		