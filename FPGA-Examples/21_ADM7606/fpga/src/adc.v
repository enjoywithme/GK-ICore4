/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: icore_adm7606
 * Module Name				: adc
 * Description				: The codes of "adc"
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
//-----------------------module_adc--------------------------//
module adc(
	input rsn,
	input clk_25m,
	input clk_200k,
	input clk_50m,
	output rd_sig,
	output cs,
	output conva,
	output convb,
	output ad_rst,
	output pange,
	output [2:0]os,
	input busy,
	input [15:0]db,
	output [15:0]ad_data1,
	output [15:0]ad_data2,
	output [15:0]ad_data3,
	output [15:0]ad_data4,
	output [15:0]ad_data5,
	output [15:0]ad_data6,
	output [15:0]ad_data7,
	output [15:0]ad_data8,
	
	input read_clk,
	input sample_start,
	input ad7606_read_start
);
//-----------------------assign-----------------------------//
	assign os[2:0] = 3'd0;
	assign pange = 1'd0;

/****************************************************************/
//提取开始采样信号的上升沿
reg sample_start_r1,sample_start_r2,sample_start_r3;
always@(posedge clk_50m or negedge rsn)
	begin
		if(!rsn)
			begin
				sample_start_r1 <= 1'd0;
				sample_start_r2 <= 1'd0;
				sample_start_r3 <= 1'd0;
			end
		else
			begin
				sample_start_r1 <= sample_start;
				sample_start_r2 <= sample_start_r1;
				sample_start_r3 <= sample_start_r2;
			end
	end

wire sample_up = (!sample_start_r3) & sample_start_r1;
//-----------------------ad_rst-----------------------------//
	reg [4:0]ad_rst_cnt;
	always @ (posedge clk_50m or negedge rsn)
		begin
			if(!rsn)
				begin
					ad_rst_cnt <= 5'd0;			
				end
			else if(ad_rst_cnt == 5'd9)
				ad_rst_cnt <= 5'd9;
			else
				ad_rst_cnt <= ad_rst_cnt + 1'd1;
		end
	assign ad_rst = ((ad_rst_cnt > 5'd1)&&(ad_rst_cnt < 5'd8)) ? 1'd1 : 1'd0;

//-----------------------busy_sig---------------------------//
	reg busy_sig;
	reg busy1,busy2;
	
	always @ (posedge clk_50m or negedge rsn)
		begin
			if(!rsn)
				begin
					busy1 <= 1'd1;
					busy2 <= 1'd1;
					busy_sig <= 1'd1;
				end
			else
				begin
					busy1 <= busy;
					busy2<= busy1;
					busy_sig <= busy2;
				end
		end
		
//-----------------------signal-----------------------------//
	reg [4:0]state;
	reg [4:0]conva_cnt;reg conva_r;
	reg [4:0]convb_cnt;reg convb_r;
	reg [9:0]busy_cnt;
	reg [7:0]cs_cnt;reg cs_r;
		
	always @ (posedge clk_50m or posedge ad_rst)
		begin
			if(ad_rst)
				begin
					conva_cnt <= 5'd0;
					conva_r <= 1'd1;
					convb_cnt <= 5'd0;
					convb_r <= 1'd1;
					busy_cnt <= 10'd0;
					cs_cnt <= 8'd0;
					cs_r <= 1'd1;
					state <= 5'd0;
				end	
			else
				case(state)
				5'd0:
					begin
						if(conva_cnt == 5'd9)
							begin
								conva_cnt <= 5'd0;
								conva_r <= 1'd1;
								state <= 5'd1;
							end
						else 
							begin
								conva_cnt <= conva_cnt + 1'd1;
								conva_r <= 1'd0;
								state <= 5'd0;
							end				
					end
				5'd1:
					begin
						if(convb_cnt == 5'd9)
							begin
								convb_cnt <= 5'd0;
								convb_r <= 1'd1;
								state <= 5'd2;
							end
						else 
							begin
								convb_cnt <= convb_cnt +1'd1;
								convb_r <= 1'd0;
								state <= 5'd1;
							end				
					end	
				5'd2:
					begin
						if(busy_cnt == 10'd10)
							begin
								busy_cnt <= 10'd0;
								state <= 5'd3;
							end
						else 
							begin
								busy_cnt <= busy_cnt +1'd1;
								state <= 5'd2;
							end							
					end
				5'd3:begin
					if(busy_sig)
						begin
							state <= state;
						end
					else
						begin
							state <= state + 1'd1;
						end
				end	
				5'd4:
					begin
						if(cs_cnt == 8'd69)
							begin
								cs_cnt <= 8'd0;
								cs_r <= 1'd1;
								state <= 5'd0;
							end
						else
							begin
								cs_cnt <= cs_cnt +1'd1;
								cs_r <= 1'd0;
								state <= 5'd4;
							end
					end
				endcase
		end 
	assign cs = cs_r;
	assign conva = conva_r;
	assign convb = convb_r;
//-----------------------rd_sig------------------------------//
	reg [4:0]command;
	reg [4:0]invalid_cnt;
	reg [4:0]rd_low_cnt;reg [4:0]rd_high_cnt;reg [4:0]rd_cnt;reg rd;
	always @ (posedge clk_50m or posedge busy )
		begin
			if(busy)
				begin
					command <= 5'd0;
					invalid_cnt <= 5'd0;
					rd_low_cnt <= 5'd0;
					rd_high_cnt <= 5'd0;
					rd <= 1'd1;
					rd_cnt <= 5'd0;
				end
			else
				case(command)
				5'd0:
					begin
						if(invalid_cnt == 5'd4)
							begin
								invalid_cnt <= 5'd0;
								command <= 5'd1;
							end
						else
							begin
								invalid_cnt <= invalid_cnt + 5'd1;
								command <= 5'd0;
							end		
					end
				5'd1:
					begin
						if(rd_low_cnt == 5'd2)
							begin
								rd_low_cnt <= 5'd0;
								command <= 5'd2;
							end
						else
							begin
								rd_low_cnt <= rd_low_cnt + 1'd1;
								command <= 5'd1;
								rd <= 1'd0;
							end
					end
				5'd2:
					begin
							begin
								if(rd_high_cnt == 5'd1)
									begin
										rd_high_cnt <= 5'd0;
										
										if(rd_cnt == 5'd7)
											begin
												rd_cnt <= 5'd0;
												command <= 5'd3;
												rd <= 1'd1;
											end
										else
											begin
												rd_cnt <= rd_cnt + 1'd1;
												command <= 5'd1;
											end
									end
								else 
									begin
										rd_high_cnt <= rd_high_cnt + 1'd1;
										command <= 5'd2;
										rd <= 1'd1;
									end
							end
					end
				5'd3:
					begin
						rd <= 1'd1;
					end
				endcase
		end
		
	assign rd_sig = rd;
//-----------------------rd_db------------------------------//
	reg [15:0]vin_db1;reg [15:0]vin_db2;
	reg [15:0]vin_db3;reg [15:0]vin_db4;
	reg [15:0]vin_db5;reg [15:0]vin_db6;
	reg [15:0]vin_db7;reg [15:0]vin_db8;
	
	reg wr1,wr2,wr3,wr4,wr5,wr6,wr7,wr8;
	
	always @ (posedge rd or negedge rsn)
		begin
			if(!rsn)
				begin
					vin_db1 <= 16'd0;
					vin_db2 <= 16'd0;
					vin_db3 <= 16'd0;
					vin_db4 <= 16'd0;
					vin_db5 <= 16'd0;
					vin_db6 <= 16'd0;
					vin_db7 <= 16'd0;
					vin_db8 <= 16'd0;
					wr7 <= 1'd0;
				end
			else 
				case(rd_cnt)
					5'd0:
						vin_db1 <= db;
					5'd1:
						vin_db2 <= db;
					5'd2:
						vin_db3 <= db;
					5'd3:
						vin_db4 <= db;
					5'd4:
						vin_db5 <= db;
					5'd5:
						vin_db6 <= db;
					5'd6:
						vin_db7 <= db;
					5'd7:
						vin_db8 <= db;
				endcase
		end 
		
//-------------------------address------------------------------//
	reg [11:0]address;
	reg [3:0]wr_state;
	reg wren_r;
	always @ (posedge busy or negedge rsn or posedge sample_up)
		begin
			if(!rsn)
				begin
					address <= 12'd0;
					wr_state <= 4'd0;
					wren_r <= 1'd0;
				end
			else if(sample_up)
				begin
					address <= 12'd0;
					wr_state <= 4'd0;
					wren_r <= 1'd0;
				end
			else 
				case(wr_state)
					4'd0:begin
						address <= 12'd0;
						wren_r <= 1'd1;
						wr_state <= wr_state + 1'd1;
					end
					4'd1:begin
						if(address == 12'd1023)
							begin
								address <= 12'd0;
								wren_r <= 1'd0;
								wr_state <= wr_state + 1'd1;
							end
						else
							address <= address + 1'd1;			
					end
					4'd2:begin
						address <= 12'd0;
					end
					default:begin
					end				
				endcase		
		end
/****************************************************************/
//提取读取开始信号的上升沿ad7606_read_start
reg read_start_r1,read_start_r2,read_start_r3;
always@(posedge clk_50m or negedge rsn)
	begin
		if(!rsn)
			begin
				read_start_r1 <= 1'd0;
				read_start_r2 <= 1'd0;
				read_start_r3 <= 1'd0;
			end
		else
			begin
				read_start_r1 <= ad7606_read_start;
				read_start_r2 <= read_start_r1;
				read_start_r3 <= read_start_r2;
			end
	end

wire read_up = (!read_start_r3) & read_start_r2;
/****************************************************************/
//ram读控制
reg [11:0]ram_rdaddress_r;
reg rden_r;

always@(negedge read_clk or negedge rsn or posedge read_up)
	begin
		if(!rsn)
			begin
				ram_rdaddress_r <= 12'd0;
				rden_r <= 1'd0;
			end
		else if(read_up)
			begin
				ram_rdaddress_r <= 12'd0;
				rden_r <= 1'd1;
			end
		else
			begin
				if(ram_rdaddress_r==12'd1023)
					begin
						ram_rdaddress_r <= 12'd0;
						rden_r <= 1'd0;
					end
				else
					begin
						ram_rdaddress_r <= ram_rdaddress_r + 1'd1;
					end				
			end
	end

wire [11:0]ram_rdaddress = ram_rdaddress_r;

wire rden = rden_r;		
//-------------------------ram------------------------------//
wire [11:0]wraddress = address;
wire wren = wren_r;

wire [15:0]readram_data1;
wire [15:0]readram_data2;
wire [15:0]readram_data3;
wire [15:0]readram_data4;
wire [15:0]readram_data5;
wire [15:0]readram_data6;
wire [15:0]readram_data7;
wire [15:0]readram_data8;

ad_ram u1(
	.wrclock(busy),
	.wren(wren),
	.wraddress(wraddress),
	.data(vin_db1),
	
	.rdclock(!read_clk),
	.rden(rden),
	.rdaddress(ram_rdaddress),
	.q(readram_data1)
);

ad_ram u2(
	.wrclock(busy),
	.wren(wren),
	.wraddress(wraddress),
	.data(vin_db2),
	
	.rdclock(!read_clk),
	.rden(rden),
	.rdaddress(ram_rdaddress),
	.q(readram_data2)
);

ad_ram u3(
	.wrclock(busy),
	.wren(wren),
	.wraddress(wraddress),
	.data(vin_db3),
	
	.rdclock(!read_clk),
	.rden(rden),
	.rdaddress(ram_rdaddress),
	.q(readram_data3)
);

ad_ram u4(
	.wrclock(busy),
	.wren(wren),
	.wraddress(wraddress),
	.data(vin_db4),
	
	.rdclock(!read_clk),
	.rden(rden),
	.rdaddress(ram_rdaddress),
	.q(readram_data4)
);

ad_ram u5(
	.wrclock(busy),
	.wren(wren),
	.wraddress(wraddress),
	.data(vin_db5),
	
	.rdclock(!read_clk),
	.rden(rden),
	.rdaddress(ram_rdaddress),
	.q(readram_data5)
);

ad_ram u6(
	.wrclock(busy),
	.wren(wren),
	.wraddress(wraddress),
	.data(vin_db6),
	
	.rdclock(!read_clk),
	.rden(rden),
	.rdaddress(ram_rdaddress),
	.q(readram_data6)
);

ad_ram u7(
	.wrclock(busy),
	.wren(wren),
	.wraddress(wraddress),
	.data(vin_db7),
	
	.rdclock(!read_clk),
	.rden(rden),
	.rdaddress(ram_rdaddress),
	.q(readram_data7)
);

ad_ram u8(
	.wrclock(busy),
	.wren(wren),
	.wraddress(wraddress),
	.data(vin_db8),
	
	.rdclock(!read_clk),
	.rden(rden),
	.rdaddress(ram_rdaddress),
	.q(readram_data8)
);

assign ad_data1 = readram_data1;
assign ad_data2 = readram_data2;
assign ad_data3 = readram_data3;
assign ad_data4 = readram_data4;
assign ad_data5 = readram_data5;
assign ad_data6 = readram_data6;
assign ad_data7 = readram_data7;
assign ad_data8 = readram_data8;
//-----------------------endmodule--------------------------//
endmodule
