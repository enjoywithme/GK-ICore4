 /* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: led_ctrl
 * Module Name				: led_ctrl
 * Description				: The codes of "led_ctrl"
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
//--------------------module_led_ctrl------------------------//
module led_ctrl(
	input clk_25m,
	input rst_n,
	output fpga_ledr,
	output fpga_ledg,
	output fpga_ledb
);

//--------------------cnt----------------------------------//
reg [24:0]cnt;
reg [2:0]led_cnt;

always @ (posedge clk_25m or negedge rst_n)
	if(!rst_n)
		begin
			cnt <= 25'd0;
			led_cnt <= 1'd0;
		end
	else if(cnt == 25'd5000000)
		begin
			cnt <= 25'd0;
			if(led_cnt == 3'd2)
				led_cnt <= 3'd0;
			else 
				led_cnt <= led_cnt + 1'd1;
		end		
	else
		begin
			cnt <= cnt + 1'd1;
		end
	
//--------------------led_ctrl----------------------------//
/*led状态切换状态机*/
reg ledr,ledg,ledb;

always @ (posedge clk_25m or negedge rst_n)
	if(!rst_n)
		begin
			ledr <= 1'd1;
			ledg <= 1'd1;
			ledb <= 1'd1;
		end
	else 
		case(led_cnt)						
			3'd0:								//红灯亮
				begin
					ledr <= 1'd0;
					ledg <= 1'd1;
					ledb <= 1'd1;
				end
			3'd1:								//绿灯亮
				begin
					ledr <= 1'd1;
					ledg <= 1'd0;
					ledb <= 1'd1;
				end
			3'd2:								//蓝灯亮
				begin
					ledr <= 1'd1;
					ledg <= 1'd1;
					ledb <= 1'd0;
				end
				default:						//都不亮
				begin
					ledr <= 1'd1;
					ledg <= 1'd1;
					ledb <= 1'd1;
				end
		endcase

assign {fpga_ledr,fpga_ledg,fpga_ledb}	= {ledr,ledg,ledb};	

//--------------------endmodule---------------------------//
endmodule
