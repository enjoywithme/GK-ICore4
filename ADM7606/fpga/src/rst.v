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
//--------------------module_rst-----------------------------//

module rst(
	input clk_25m,	//输入板载晶FPGA_CLK,25M
	output rsn		//输出全局复位信号
);

//--------------------RST_n----------------------------------//
	reg [7:0] cnt_rst = 8'd1;
	always @(posedge clk_25m)
		if (cnt_rst == 8'd230)
			cnt_rst <= 8'd230;
		else 
			cnt_rst <= cnt_rst + 1'd1;

	assign rsn = ((cnt_rst >= 8'd210) && (cnt_rst <= 8'd220)) ? 1'd0 :1'd1;//复位信号

//--------------------Timescale------------------------------//
endmodule
