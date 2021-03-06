/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: icore_adm7606
 * Module Name				: led
 * Description				: The codes of "led"
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
//-----------------module_led--------------------------------//
module led(
	input clk_25m,
	output fpga_ledb
);
//--------------------counter--------------------------------//
	reg [23:0]counter = 24'd0;
	always @ (posedge clk_25m)
		begin
			if (counter == 24'd10000000)
				counter = 24'd0;
			else counter = counter +24'd1;
		end
		
//--------------------led-----------------------------------//
	reg led = 1'd0;
	
	always @ (posedge clk_25m)
		begin 
			if (counter < 24'd5000000)
				led <= 1'd0;
			else led <= 1'd1;
		end
		
	assign fpga_ledb = led;//程序正常运行绿灯亮
	
//--------------------endmodule----------------------------//
endmodule
