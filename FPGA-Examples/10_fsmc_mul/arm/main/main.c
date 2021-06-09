/*
 * --------------------
 * Company             : LUOYANG GINGKO TECHNOLOGY CO.,LTD.
                       : 洛阳银杏科技有限公司
 * --------------------
 * Project Name        : iCore4 fsmc
 * Description         : iCore4 fsmc
 * --------------------
 * Tool Versions       : uVision V5.17.0.0
 * Target Device       : STM32F767IGTx
 * --------------------
 * Engineer            : weicguodong.
 * Revision            : 0.01
 * Created Date        : 2017.07.31
 * --------------------
 * Engineer            :
 * Revision            :
 * Modified Date       :
 * --------------------
 * Additional Comments :
 *
 * --------------------
 */
//------------------------- Include -----------------------//
#include "..\include\led.h"
#include "..\include\fsmc.h"
#include "..\include\system_clock.h"

#include "..\fwlib\inc\stm32f7xx_hal.h"

//------------------------- Define ------------------------//

//------------------------ Variable -----------------------//

//------------------- Function Prototype ------------------//

//------------------------ Function -----------------------//
/*
 * Name                : main
 * Description         : ---
 * Author              : weicguodong.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 07/31/2017
 * 
 * create.
 * --------------------
 */
int main(void)
{
  int i;
	unsigned int fpga_read_data;

	system_clock.initialize();
	fsmc.initialize();
	led.initialize();
	
	LED_GREEN_ON;
	
	/*FSMC测试*/
	while(1){		
		for(i = 0;i < 256; i++){
			fpga_write(i,i); 							      //向FPGA写数据
		}
		for(i = 0;i < 100000; i++);
		for(i = 0;i < 256;i++){
			fpga_read_data = fpga_read(i);			//从FPGA中读取数据
			if(fpga_read_data != i){
				LED_GREEN_OFF;
				LED_RED_ON;
			}
		}	
	}
}
