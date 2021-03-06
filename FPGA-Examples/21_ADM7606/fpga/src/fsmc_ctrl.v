/* 
 * --------------------
 * Project Name			: gkds_sys 
 * Module Name				: fsmc_ctrl 
 * Description				: The codes of "fsmc_ctrl"
 * --------------------
 * Tool Versions			: Quartus II 13.1
 * Target Device			: Cyclone IV E  EP4CE10F17C8
 * --------------------
 * Engineer					: weicguodong
 * Revision					: V0.0
 * Created Date			: 2019-11-28
 * --------------------
 * Engineer					:
 * Revision					:
 * Modified Date			:
 * --------------------
 * Additional Comments	: 
 * 
 * --------------------
 */
 /****************************************************************/
 //timescale
`timescale 1 ns / 1 ps

/****************************************************************/
//module_fsmc_ctrl
module fsmc_ctrl(
	input clk_25m,
	input rst_n,
	
	//fsmc总线相关信号.复用模式
	input fsmc_clk,//用于同步突发，fsmc给的
	input fsmc_nadv,//引脚复用信号，也叫地址有效信号，低电平有效，FSMC给的
	input fsmc_wr,//写入使能信号，//对应FSMC_NWE，FSMC给的
	input fsmc_rd,//输出使能信号，//对应FSMC_NOE，FSMC给的
	input fsmc_cs,//片选信号，相当于FSMC的NEx
	input [7:0]fsmc_ab,//地址总线
	inout [15:0]fsmc_db,//16位地址/数据双向总线
	
	//通用ad控制信号
	output sample_start,//根据FSMC传输指令产生的信号。
	input [15:0]ad_data1,
	input [15:0]ad_data2,
	input [15:0]ad_data3,
	input [15:0]ad_data4,
	input [15:0]ad_data5,
	input [15:0]ad_data6,
	input [15:0]ad_data7,
	input [15:0]ad_data8,
	
	//ad7606模块相关信号
	output ad7606_read_start,
	output read_clk
);

/****************************************************************/
//wr和rd信号提取
wire rdn = fsmc_cs | fsmc_rd;
wire wrn = fsmc_cs | fsmc_wr;

/****************************************************************/
//寄存器地址分配：0-50为通用控制寄存器；51——100为ad7606相关寄存器；
//接收地址
reg [22:0]address_reg;

always@(posedge fsmc_nadv or negedge rst_n)
	begin
		if(!rst_n)
			begin
				address_reg <= 23'd0;
			end
		else
			begin
				address_reg <= {fsmc_ab,fsmc_db};
			end
	end
/****************************************************************/
//0——50为通用寄存器；
//0:命令复位寄存器；1:开始采样寄存器；
reg sample_start_r;

always@(posedge wrn or negedge rst_n)
	begin
		if(!rst_n)
			begin
				sample_start_r <= 1'b0;
			end
		else
			begin
				case(address_reg)
				23'd0:begin
					sample_start_r <= 1'b0;
				end
				23'd1:begin//开始采样信号
					sample_start_r <= 1'b1;//寄存器地址1内是1.
				end
				default:begin
					sample_start_r <= 1'b0;
				end				
				endcase;
			end
	end
	
assign sample_start = sample_start_r;

/****************************************************************/
//51——100为ad7606相关寄存器；
//ad7606相关设置参数
//51:采样频率寄存器；52:采样深度寄存器；53：AD使能寄存器；54：是否滤波寄存器；
//55：开始读取数据信号寄存器
reg ad7606_read_start_r;

always@(posedge wrn or negedge rst_n)
	begin
		if(!rst_n)
			begin
				ad7606_read_start_r <= 1'd0;
			end
		else
			begin
				case(address_reg)
				23'd0:begin//0为命令复位寄存器
					ad7606_read_start_r <= 1'd0;
				end
				23'd55:begin
					ad7606_read_start_r <= 1'd1;
				end
				default:begin
				end				
				endcase;
			end
	end

assign ad7606_read_start = ad7606_read_start_r;

/****************************************************************/
//fsmc读数据
assign read_clk = rdn;

assign fsmc_db = (!rdn) ? ((address_reg == 24'd56) ? ad_data1 : 16'hzzzz) : 16'hzzzz;
assign fsmc_db = (!rdn) ? ((address_reg == 24'd57) ? ad_data2 : 16'hzzzz) : 16'hzzzz;
assign fsmc_db = (!rdn) ? ((address_reg == 24'd58) ? ad_data3 : 16'hzzzz) : 16'hzzzz;
assign fsmc_db = (!rdn) ? ((address_reg == 24'd59) ? ad_data4 : 16'hzzzz) : 16'hzzzz;
assign fsmc_db = (!rdn) ? ((address_reg == 24'd60) ? ad_data5 : 16'hzzzz) : 16'hzzzz;
assign fsmc_db = (!rdn) ? ((address_reg == 24'd61) ? ad_data6 : 16'hzzzz) : 16'hzzzz;
assign fsmc_db = (!rdn) ? ((address_reg == 24'd62) ? ad_data7 : 16'hzzzz) : 16'hzzzz;
assign fsmc_db = (!rdn) ? ((address_reg == 24'd63) ? ad_data8 : 16'hzzzz) : 16'hzzzz;

/****************************************************************/
endmodule
