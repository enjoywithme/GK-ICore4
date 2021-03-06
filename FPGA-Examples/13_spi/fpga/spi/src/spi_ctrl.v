/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: spi
 * Module Name				: spi_ctrl
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
//-----------------------Module spi_ctrl------------------------//
module spi_ctrl(
	input clk_25m,
	input rst_n,
	input spi_clk,
	input spi_mosi,
	input spi_cs,
	output spi_miso,
	output led_red,
	output led_green,
	output led_blue
);
//--------------------------parameter--------------------------//
parameter ledr = {8'd108,8'd101,8'd100,8'd114},
			 ledg = {8'd108,8'd101,8'd100,8'd103},
			 ledb = {8'd108,8'd101,8'd100,8'd98},
			 hello = {8'd104,8'd101,8'd108,8'd108,8'd111};
			 
//--------------------------spi_mosi---------------------------//			 
reg[3:0]i;
reg[7:0]data_in;
reg [39:0]temp_data,data;

always@(posedge spi_clk or negedge rst_n)
	if(!rst_n)
		begin
			i <= 4'd0;
			temp_data <= 40'd0;
			data <= 40'd0;
			data_in <= 8'd0;
		end
	else case(i)   //从高位开始接收数据，每8个spi_clk时钟接收一个Byte
		4'd0:
			begin
				i <= i + 1'd1;
				data_in <= {data_in[6:0],spi_mosi};
				temp_data <= {temp_data[31:0],data_in};
				if(data_in == 8'd13)
					begin
						data <= temp_data;
					end
				else 
					begin
						data <= data;
					end
			end
		4'd1,4'd2,4'd3,4'd4,4'd5,4'd6:
			begin
				i <= i + 1'd1;
				data_in <= {data_in[6:0],spi_mosi};
			end
		4'd7:begin
				i <= 4'd0;
				data_in <= {data_in[6:0],spi_mosi};
			end
		default: i <= 4'd0;
	endcase

//--------------------------data----------------------------//
/*对比接收数据*/
reg [2:0]led;	

always@(posedge clk_25m or negedge rst_n)
	if(!rst_n)
		begin
			led <= 3'b101;
		end
	else if (data == ledr)
			led <= 3'b011;                   //红灯亮
	else if (data == ledg)
			led <= 3'b101;							//绿灯亮
	else if (data == ledb)
			led <= 3'b110;							//蓝灯亮
			
assign {led_red,led_green,led_blue} = led;

//--------------------------delay----------------------------//
	reg spi_clk_r;
	always@(posedge clk_25m or negedge rst_n)
		if(!rst_n)
			begin
				spi_clk_r <= 1'd1;
			end
		else 
			spi_clk_r <= spi_clk; 

//--------------------------spi_miso----------------------------//
/*发送模块*/
reg [39:0]data_out;
reg [5:0]j;
reg spi_out;
always@(negedge spi_clk_r or negedge rst_n)
	if(!rst_n)
		begin
			data_out <= hello;
			spi_out <= 1'd0;
			j <= 6'd0;
		end
	else case(j)  //连续40个spi_clk_r时钟发送“hello”字符串
		6'd0:
			begin
				{spi_out,data_out[39:1]} <= data_out;
				j <= j + 1'd1;
			end
		6'd39:
			begin
				{spi_out,data_out[39:1]} <= data_out;
				data_out <= hello;
				j <= 6'd0;
			end
		default:
			begin
				{spi_out,data_out[39:1]} <= data_out;
				j <= j + 1'd1;
			end
	endcase

assign spi_miso = spi_out;
//--------------------------endmodule----------------------------//


endmodule
