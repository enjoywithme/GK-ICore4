/* 
 * --------------------
 * Company					: LUOYANG GINGKO TECHNOLOGY CO.,LTD.
 * BBS						: http://www.eeschool.org
 * --------------------
 * Project Name			: dual port ram
 * Module Name				: dual port ram
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
//-----------------------Module dual_port_ram-------------------//
module dual_port_ram_ctrl(
	input clk_25m,
	input rst_n,
	input wrn,
	input rdn,
	input cs0,
	inout [15:0]db,
	input [23:16]ab,
	output led_red,
	output led_green,
	output led_blue
);

//-----------------------------ram-----------------------------//
wire [15:0]dataout_a;
wire [15:0]dataout_b;

ram u1(
	.data_a(data_a),
	.address_a(address_a),
	.wren_a(wren_a),
	.rden_a(rden_a),
	.clock_a(!clk_a),
	.q_a(dataout_a),
	
	.data_b(db),
	.address_b(ab),
	.wren_b(1'd0),
	.rden_b(!rd),
	.clock_b(clk_b),
	.q_b(dataout_b)
);

//-----------------------------clk_100m-----------------------------//

pll u2(
	.inclk0(clk_25m),
	.c0(clk_100m)
);

//-------------------------------clk_a-----------------------------//
reg clk1,clk2;
always@(posedge clk_100m or negedge rst_n)
	if(!rst_n)
		begin
			clk1 <= 1'd0;
			clk2 <= 1'd0;
		end
	else 
		{clk2,clk1} <= {clk1,clk_25m};
		
wire clk_a = (clk_25m & clk1);

//-------------------------------data-----------------------------//
reg [9:0]data;
always@(posedge clk_25m or negedge rst_n)
	if(!rst_n)
		data <= 10'd0;
	else if(data == 10'd511)
		data <= 10'd0;
	else 
		data <= data + 1'd1;
		
//-------------------------write & read port a-------------------//
reg wren_a;
reg rden_a;
reg [9:0]data_a;
reg [9:0]address_a;

always@(posedge clk_a or negedge rst_n)
	if(!rst_n)
		begin
			wren_a <= 1'd0;
			rden_a <= 1'd0;
			data_a <= 10'd0;
			address_a <= 10'd0;
		end
	else if(data >= 10'd0 && data <= 10'd255)
		begin
			wren_a <= 1'd1;
			rden_a <= 1'd0;
			data_a <= data;
			address_a <= data;
		end
	else if(data >= 10'd256 && data <= 10'd511)
		begin
			wren_a <= 1'd0;
			rden_a <= 1'd1;
			address_a <= data - 10'd256;
		end

//-----------------------------ram a---------------------------//
reg error;

always@(negedge clk1 or negedge rst_n)
	if(!rst_n)
			error <= 1'd0;
	else
		begin
			if(wren_a || dataout_a == address_a)
				error <= 1'd0;
			else
				error <= 1'd1;
		end

//--------------------------ram_a_led---------------------------//
reg ledr,ledg,ledb;
always@(posedge error or negedge rst_n)
	if(!rst_n)
		begin
			ledr <= 1'd1;
			ledg <= 1'd0;
			ledb <= 1'd1;	
		end
	else
		begin
			ledr <= 1'd0;
			ledg <= 1'd1;
			ledb <= 1'd1;			
		end	
assign {led_red,led_green,led_blue} = {ledr,ledg,ledb};

//--------------------------ram_b_rd----------------------------//
wire rd = (cs0 | rdn);
wire wr = (cs0 | wrn);

reg wr_clk1,wr_clk2;
always@(posedge clk_100m or negedge rst_n)
	if(!rst_n)
		begin
			wr_clk1 <= 1'd1;
			wr_clk2 <= 1'd1;
		end
	else 
		{wr_clk2,wr_clk1} <= {wr_clk1,wr};
		
wire clk_b = (!wr_clk2 | !rd);
assign db = !rd ? dataout_b : 16'hzzzz;
		
endmodule

