-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "12/26/2020 09:35:12"

-- 
-- Device: Altera EP4CE15F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adm7606 IS
    PORT (
	clk_25m : IN std_logic;
	fpga_ledb : BUFFER std_logic;
	fsmc_clk : IN std_logic;
	fsmc_nadv : IN std_logic;
	fsmc_wr : IN std_logic;
	fsmc_rd : IN std_logic;
	fsmc_cs : IN std_logic;
	fsmc_ab : IN std_logic_vector(7 DOWNTO 0);
	fsmc_db : BUFFER std_logic_vector(15 DOWNTO 0);
	rd_sig : BUFFER std_logic;
	cs : BUFFER std_logic;
	conva : BUFFER std_logic;
	convb : BUFFER std_logic;
	ad_rst : BUFFER std_logic;
	pange : BUFFER std_logic;
	os : BUFFER std_logic_vector(2 DOWNTO 0);
	busy : IN std_logic;
	db : IN std_logic_vector(15 DOWNTO 0)
	);
END adm7606;

-- Design Ports Information
-- fpga_ledb	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_clk	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_ab[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_sig	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- conva	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- convb	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_rst	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pange	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- os[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- os[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- os[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[1]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[8]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[9]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[10]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[12]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[13]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[14]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_db[15]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_25m	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_nadv	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_ab[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_ab[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_ab[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_ab[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_ab[2]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_ab[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_ab[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_rd	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_cs	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[3]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[6]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[8]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[10]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[12]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[13]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[14]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[15]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fsmc_wr	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adm7606 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_25m : std_logic;
SIGNAL ww_fpga_ledb : std_logic;
SIGNAL ww_fsmc_clk : std_logic;
SIGNAL ww_fsmc_nadv : std_logic;
SIGNAL ww_fsmc_wr : std_logic;
SIGNAL ww_fsmc_rd : std_logic;
SIGNAL ww_fsmc_cs : std_logic;
SIGNAL ww_fsmc_ab : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_fsmc_db : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rd_sig : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_conva : std_logic;
SIGNAL ww_convb : std_logic;
SIGNAL ww_ad_rst : std_logic;
SIGNAL ww_pange : std_logic;
SIGNAL ww_os : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_busy : std_logic;
SIGNAL ww_db : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u4|read_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|wrn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|rd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_25m~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|rsn~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsmc_clk~input_o\ : std_logic;
SIGNAL \fsmc_ab[7]~input_o\ : std_logic;
SIGNAL \busy~input_o\ : std_logic;
SIGNAL \u5|address[0]~13_combout\ : std_logic;
SIGNAL \clk_25m~input_o\ : std_logic;
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \fsmc_wr~input_o\ : std_logic;
SIGNAL \fsmc_cs~input_o\ : std_logic;
SIGNAL \u4|wrn~combout\ : std_logic;
SIGNAL \u4|wrn~clkctrl_outclk\ : std_logic;
SIGNAL \fsmc_nadv~input_o\ : std_logic;
SIGNAL \fsmc_db[6]~input_o\ : std_logic;
SIGNAL \clk_25m~inputclkctrl_outclk\ : std_logic;
SIGNAL \u2|Add0~0_combout\ : std_logic;
SIGNAL \u2|Add0~5\ : std_logic;
SIGNAL \u2|Add0~6_combout\ : std_logic;
SIGNAL \u2|Add0~7\ : std_logic;
SIGNAL \u2|Add0~8_combout\ : std_logic;
SIGNAL \u2|Add0~9\ : std_logic;
SIGNAL \u2|Add0~10_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|Add0~11\ : std_logic;
SIGNAL \u2|Add0~12_combout\ : std_logic;
SIGNAL \u2|Add0~13\ : std_logic;
SIGNAL \u2|Add0~14_combout\ : std_logic;
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \u2|cnt_rst~0_combout\ : std_logic;
SIGNAL \u2|Add0~1\ : std_logic;
SIGNAL \u2|Add0~2_combout\ : std_logic;
SIGNAL \u2|Add0~3\ : std_logic;
SIGNAL \u2|Add0~4_combout\ : std_logic;
SIGNAL \u2|rsn~0_combout\ : std_logic;
SIGNAL \u2|rsn~1_combout\ : std_logic;
SIGNAL \u2|rsn~2_combout\ : std_logic;
SIGNAL \u2|rsn~2clkctrl_outclk\ : std_logic;
SIGNAL \fsmc_db[0]~input_o\ : std_logic;
SIGNAL \u4|address_reg[0]~feeder_combout\ : std_logic;
SIGNAL \fsmc_db[1]~input_o\ : std_logic;
SIGNAL \u4|address_reg[1]~feeder_combout\ : std_logic;
SIGNAL \fsmc_db[4]~input_o\ : std_logic;
SIGNAL \fsmc_db[5]~input_o\ : std_logic;
SIGNAL \u4|address_reg[5]~feeder_combout\ : std_logic;
SIGNAL \fsmc_db[2]~input_o\ : std_logic;
SIGNAL \u4|address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \fsmc_db[3]~input_o\ : std_logic;
SIGNAL \u4|address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \u4|Equal0~5_combout\ : std_logic;
SIGNAL \u4|Equal0~6_combout\ : std_logic;
SIGNAL \fsmc_ab[4]~input_o\ : std_logic;
SIGNAL \u4|address_reg[20]~feeder_combout\ : std_logic;
SIGNAL \fsmc_ab[5]~input_o\ : std_logic;
SIGNAL \u4|address_reg[21]~feeder_combout\ : std_logic;
SIGNAL \fsmc_ab[6]~input_o\ : std_logic;
SIGNAL \fsmc_ab[3]~input_o\ : std_logic;
SIGNAL \u4|address_reg[19]~feeder_combout\ : std_logic;
SIGNAL \u4|Equal0~0_combout\ : std_logic;
SIGNAL \fsmc_ab[0]~input_o\ : std_logic;
SIGNAL \u4|address_reg[16]~feeder_combout\ : std_logic;
SIGNAL \fsmc_ab[1]~input_o\ : std_logic;
SIGNAL \u4|address_reg[17]~feeder_combout\ : std_logic;
SIGNAL \fsmc_ab[2]~input_o\ : std_logic;
SIGNAL \fsmc_db[15]~input_o\ : std_logic;
SIGNAL \u4|address_reg[15]~feeder_combout\ : std_logic;
SIGNAL \u4|Equal0~1_combout\ : std_logic;
SIGNAL \fsmc_db[12]~input_o\ : std_logic;
SIGNAL \u4|address_reg[12]~feeder_combout\ : std_logic;
SIGNAL \fsmc_db[11]~input_o\ : std_logic;
SIGNAL \u4|address_reg[11]~feeder_combout\ : std_logic;
SIGNAL \fsmc_db[14]~input_o\ : std_logic;
SIGNAL \fsmc_db[13]~input_o\ : std_logic;
SIGNAL \u4|Equal0~2_combout\ : std_logic;
SIGNAL \fsmc_db[9]~input_o\ : std_logic;
SIGNAL \fsmc_db[10]~input_o\ : std_logic;
SIGNAL \fsmc_db[7]~input_o\ : std_logic;
SIGNAL \fsmc_db[8]~input_o\ : std_logic;
SIGNAL \u4|Equal0~3_combout\ : std_logic;
SIGNAL \u4|Equal0~4_combout\ : std_logic;
SIGNAL \u4|Equal0~7_combout\ : std_logic;
SIGNAL \u4|sample_start_r~feeder_combout\ : std_logic;
SIGNAL \u4|sample_start_r~q\ : std_logic;
SIGNAL \u5|sample_start_r1~feeder_combout\ : std_logic;
SIGNAL \u5|sample_start_r1~q\ : std_logic;
SIGNAL \u5|sample_start_r2~q\ : std_logic;
SIGNAL \u5|sample_start_r3~q\ : std_logic;
SIGNAL \u5|address[11]~12_combout\ : std_logic;
SIGNAL \u5|address[2]~20\ : std_logic;
SIGNAL \u5|address[3]~21_combout\ : std_logic;
SIGNAL \u5|Equal9~1_combout\ : std_logic;
SIGNAL \u5|Equal9~3_combout\ : std_logic;
SIGNAL \u5|wr_state[1]~1_combout\ : std_logic;
SIGNAL \u5|address[0]~16_combout\ : std_logic;
SIGNAL \u5|address[3]~22\ : std_logic;
SIGNAL \u5|address[4]~23_combout\ : std_logic;
SIGNAL \u5|address[4]~24\ : std_logic;
SIGNAL \u5|address[5]~25_combout\ : std_logic;
SIGNAL \u5|address[5]~26\ : std_logic;
SIGNAL \u5|address[6]~27_combout\ : std_logic;
SIGNAL \u5|address[6]~28\ : std_logic;
SIGNAL \u5|address[7]~29_combout\ : std_logic;
SIGNAL \u5|address[7]~30\ : std_logic;
SIGNAL \u5|address[8]~31_combout\ : std_logic;
SIGNAL \u5|address[8]~32\ : std_logic;
SIGNAL \u5|address[9]~33_combout\ : std_logic;
SIGNAL \u5|address[9]~34\ : std_logic;
SIGNAL \u5|address[10]~35_combout\ : std_logic;
SIGNAL \u5|address[10]~36\ : std_logic;
SIGNAL \u5|address[11]~37_combout\ : std_logic;
SIGNAL \u5|Equal9~2_combout\ : std_logic;
SIGNAL \u5|address[0]~15_combout\ : std_logic;
SIGNAL \u5|address[0]~14\ : std_logic;
SIGNAL \u5|address[1]~17_combout\ : std_logic;
SIGNAL \u5|address[1]~18\ : std_logic;
SIGNAL \u5|address[2]~19_combout\ : std_logic;
SIGNAL \u5|Equal9~0_combout\ : std_logic;
SIGNAL \u5|wr_state[0]~0_combout\ : std_logic;
SIGNAL \u5|wr_state[0]~feeder_combout\ : std_logic;
SIGNAL \u5|wr_state[1]~_wirecell_combout\ : std_logic;
SIGNAL \u4|Equal2~0_combout\ : std_logic;
SIGNAL \u4|Equal2~1_combout\ : std_logic;
SIGNAL \u4|Equal1~0_combout\ : std_logic;
SIGNAL \u4|Selector0~0_combout\ : std_logic;
SIGNAL \u4|ad7606_read_start_r~q\ : std_logic;
SIGNAL \u5|read_start_r1~feeder_combout\ : std_logic;
SIGNAL \u5|read_start_r1~q\ : std_logic;
SIGNAL \u5|read_start_r2~q\ : std_logic;
SIGNAL \u5|read_start_r3~q\ : std_logic;
SIGNAL \u5|read_up~combout\ : std_logic;
SIGNAL \u5|rden_r~1_combout\ : std_logic;
SIGNAL \fsmc_rd~input_o\ : std_logic;
SIGNAL \u4|read_clk~combout\ : std_logic;
SIGNAL \u4|read_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u5|Add10~0_combout\ : std_logic;
SIGNAL \u5|ram_rdaddress_r[11]~0_combout\ : std_logic;
SIGNAL \u5|Add10~1\ : std_logic;
SIGNAL \u5|Add10~2_combout\ : std_logic;
SIGNAL \u5|Add10~3\ : std_logic;
SIGNAL \u5|Add10~4_combout\ : std_logic;
SIGNAL \u5|Add10~5\ : std_logic;
SIGNAL \u5|Add10~6_combout\ : std_logic;
SIGNAL \u5|Add10~7\ : std_logic;
SIGNAL \u5|Add10~8_combout\ : std_logic;
SIGNAL \u5|Add10~9\ : std_logic;
SIGNAL \u5|Add10~10_combout\ : std_logic;
SIGNAL \u5|Add10~11\ : std_logic;
SIGNAL \u5|Add10~12_combout\ : std_logic;
SIGNAL \u5|Add10~13\ : std_logic;
SIGNAL \u5|Add10~14_combout\ : std_logic;
SIGNAL \u5|Equal10~1_combout\ : std_logic;
SIGNAL \u5|Add10~15\ : std_logic;
SIGNAL \u5|Add10~16_combout\ : std_logic;
SIGNAL \u5|Add10~17\ : std_logic;
SIGNAL \u5|Add10~18_combout\ : std_logic;
SIGNAL \u5|Add10~19\ : std_logic;
SIGNAL \u5|Add10~20_combout\ : std_logic;
SIGNAL \u5|Equal10~2_combout\ : std_logic;
SIGNAL \u5|ram_rdaddress_r~1_combout\ : std_logic;
SIGNAL \u5|Add10~21\ : std_logic;
SIGNAL \u5|Add10~22_combout\ : std_logic;
SIGNAL \u5|Equal10~0_combout\ : std_logic;
SIGNAL \u5|rden_r~7_combout\ : std_logic;
SIGNAL \u5|rden_r~3_combout\ : std_logic;
SIGNAL \u5|rden_r~_emulated_q\ : std_logic;
SIGNAL \u5|rden_r~2_combout\ : std_logic;
SIGNAL \u5|u8|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\ : std_logic;
SIGNAL \u5|Add8~0_combout\ : std_logic;
SIGNAL \u5|Add8~1\ : std_logic;
SIGNAL \u5|Add8~2_combout\ : std_logic;
SIGNAL \u5|rd_high_cnt~0_combout\ : std_logic;
SIGNAL \u5|Add8~3\ : std_logic;
SIGNAL \u5|Add8~4_combout\ : std_logic;
SIGNAL \u5|Add8~5\ : std_logic;
SIGNAL \u5|Add8~6_combout\ : std_logic;
SIGNAL \u5|Add8~7\ : std_logic;
SIGNAL \u5|Add8~8_combout\ : std_logic;
SIGNAL \u5|Equal7~0_combout\ : std_logic;
SIGNAL \u5|Selector5~0_combout\ : std_logic;
SIGNAL \u5|Add6~0_combout\ : std_logic;
SIGNAL \u5|rd_low_cnt~0_combout\ : std_logic;
SIGNAL \u5|Add7~0_combout\ : std_logic;
SIGNAL \u5|Add7~1\ : std_logic;
SIGNAL \u5|Add7~2_combout\ : std_logic;
SIGNAL \u5|Add7~3\ : std_logic;
SIGNAL \u5|Add7~4_combout\ : std_logic;
SIGNAL \u5|Add7~5\ : std_logic;
SIGNAL \u5|Add7~6_combout\ : std_logic;
SIGNAL \u5|rd_cnt~1_combout\ : std_logic;
SIGNAL \u5|Add7~7\ : std_logic;
SIGNAL \u5|Add7~8_combout\ : std_logic;
SIGNAL \u5|Equal8~0_combout\ : std_logic;
SIGNAL \u5|Equal8~1_combout\ : std_logic;
SIGNAL \u5|Add5~1\ : std_logic;
SIGNAL \u5|Add5~2_combout\ : std_logic;
SIGNAL \u5|command.00000~0_combout\ : std_logic;
SIGNAL \u5|command.00000~q\ : std_logic;
SIGNAL \u5|Add5~3\ : std_logic;
SIGNAL \u5|Add5~4_combout\ : std_logic;
SIGNAL \u5|invalid_cnt~0_combout\ : std_logic;
SIGNAL \u5|Add5~5\ : std_logic;
SIGNAL \u5|Add5~6_combout\ : std_logic;
SIGNAL \u5|Add5~7\ : std_logic;
SIGNAL \u5|Add5~8_combout\ : std_logic;
SIGNAL \u5|Equal5~0_combout\ : std_logic;
SIGNAL \u5|Add5~0_combout\ : std_logic;
SIGNAL \u5|invalid_cnt~1_combout\ : std_logic;
SIGNAL \u5|Selector4~0_combout\ : std_logic;
SIGNAL \u5|Selector4~1_combout\ : std_logic;
SIGNAL \u5|Selector4~2_combout\ : std_logic;
SIGNAL \u5|command.00001~q\ : std_logic;
SIGNAL \u5|Add6~1\ : std_logic;
SIGNAL \u5|Add6~2_combout\ : std_logic;
SIGNAL \u5|rd_low_cnt~1_combout\ : std_logic;
SIGNAL \u5|Add6~3\ : std_logic;
SIGNAL \u5|Add6~4_combout\ : std_logic;
SIGNAL \u5|Add6~5\ : std_logic;
SIGNAL \u5|Add6~6_combout\ : std_logic;
SIGNAL \u5|Add6~7\ : std_logic;
SIGNAL \u5|Add6~8_combout\ : std_logic;
SIGNAL \u5|Equal6~0_combout\ : std_logic;
SIGNAL \u5|Selector5~1_combout\ : std_logic;
SIGNAL \u5|command.00010~q\ : std_logic;
SIGNAL \u5|rd_cnt[4]~0_combout\ : std_logic;
SIGNAL \u5|Selector7~0_combout\ : std_logic;
SIGNAL \u5|Selector7~1_combout\ : std_logic;
SIGNAL \u5|rd~q\ : std_logic;
SIGNAL \u5|rd~clkctrl_outclk\ : std_logic;
SIGNAL \db[0]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[0]~feeder_combout\ : std_logic;
SIGNAL \u5|Decoder1~0_combout\ : std_logic;
SIGNAL \u5|Decoder1~2_combout\ : std_logic;
SIGNAL \u5|vin_db2[0]~feeder_combout\ : std_logic;
SIGNAL \u5|Decoder1~1_combout\ : std_logic;
SIGNAL \db[1]~input_o\ : std_logic;
SIGNAL \u5|vin_db2[1]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[0]~feeder_combout\ : std_logic;
SIGNAL \u5|Decoder1~4_combout\ : std_logic;
SIGNAL \u5|Decoder1~3_combout\ : std_logic;
SIGNAL \u5|vin_db5[0]~feeder_combout\ : std_logic;
SIGNAL \u5|Decoder1~6_combout\ : std_logic;
SIGNAL \u5|Decoder1~5_combout\ : std_logic;
SIGNAL \u5|vin_db7[0]~feeder_combout\ : std_logic;
SIGNAL \u5|Decoder1~7_combout\ : std_logic;
SIGNAL \u4|fsmc_db[15]~16_combout\ : std_logic;
SIGNAL \u4|fsmc_db[15]~17_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~25_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~24_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~26_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~19_combout\ : std_logic;
SIGNAL \u4|fsmc_db[15]~18_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~20_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~27_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~28_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~29_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~21_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~22_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~23_combout\ : std_logic;
SIGNAL \u4|fsmc_db[0]~30_combout\ : std_logic;
SIGNAL \db[2]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[2]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db2[2]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[1]~31_combout\ : std_logic;
SIGNAL \u4|fsmc_db[1]~33_combout\ : std_logic;
SIGNAL \u4|fsmc_db[1]~34_combout\ : std_logic;
SIGNAL \u4|fsmc_db[1]~32_combout\ : std_logic;
SIGNAL \u4|fsmc_db[1]~35_combout\ : std_logic;
SIGNAL \db[3]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[3]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db2[3]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[2]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[3]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[2]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[2]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[2]~38_combout\ : std_logic;
SIGNAL \u4|fsmc_db[2]~39_combout\ : std_logic;
SIGNAL \u4|fsmc_db[2]~36_combout\ : std_logic;
SIGNAL \u4|fsmc_db[2]~37_combout\ : std_logic;
SIGNAL \u4|fsmc_db[2]~40_combout\ : std_logic;
SIGNAL \db[4]~input_o\ : std_logic;
SIGNAL \u5|vin_db2[4]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[3]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[4]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[3]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[3]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db7[3]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[3]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[3]~44_combout\ : std_logic;
SIGNAL \u4|fsmc_db[3]~42_combout\ : std_logic;
SIGNAL \u4|fsmc_db[3]~43_combout\ : std_logic;
SIGNAL \u4|fsmc_db[3]~41_combout\ : std_logic;
SIGNAL \u4|fsmc_db[3]~45_combout\ : std_logic;
SIGNAL \db[5]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[5]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db2[5]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[5]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[5]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[4]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[5]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[4]~49_combout\ : std_logic;
SIGNAL \u4|fsmc_db[4]~47_combout\ : std_logic;
SIGNAL \u4|fsmc_db[4]~46_combout\ : std_logic;
SIGNAL \u4|fsmc_db[4]~48_combout\ : std_logic;
SIGNAL \u4|fsmc_db[4]~50_combout\ : std_logic;
SIGNAL \u4|fsmc_db[5]~52_combout\ : std_logic;
SIGNAL \db[6]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[6]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db2[6]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[6]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[6]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[6]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[5]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[5]~53_combout\ : std_logic;
SIGNAL \u4|fsmc_db[5]~51_combout\ : std_logic;
SIGNAL \u4|fsmc_db[5]~54_combout\ : std_logic;
SIGNAL \u4|fsmc_db[5]~55_combout\ : std_logic;
SIGNAL \db[7]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[7]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db2[7]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[7]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[7]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[7]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[6]~59_combout\ : std_logic;
SIGNAL \u4|fsmc_db[6]~58_combout\ : std_logic;
SIGNAL \u4|fsmc_db[6]~56_combout\ : std_logic;
SIGNAL \u4|fsmc_db[6]~57_combout\ : std_logic;
SIGNAL \u4|fsmc_db[6]~60_combout\ : std_logic;
SIGNAL \u4|fsmc_db[7]~63_combout\ : std_logic;
SIGNAL \db[8]~input_o\ : std_logic;
SIGNAL \u5|vin_db3[8]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[8]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db7[8]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[8]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[7]~64_combout\ : std_logic;
SIGNAL \u4|fsmc_db[7]~62_combout\ : std_logic;
SIGNAL \u4|fsmc_db[7]~61_combout\ : std_logic;
SIGNAL \u4|fsmc_db[7]~65_combout\ : std_logic;
SIGNAL \u4|fsmc_db[8]~67_combout\ : std_logic;
SIGNAL \u4|fsmc_db[8]~69_combout\ : std_logic;
SIGNAL \u4|fsmc_db[8]~66_combout\ : std_logic;
SIGNAL \u4|fsmc_db[8]~68_combout\ : std_logic;
SIGNAL \u4|fsmc_db[8]~70_combout\ : std_logic;
SIGNAL \db[9]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[9]~feeder_combout\ : std_logic;
SIGNAL \db[10]~input_o\ : std_logic;
SIGNAL \u5|vin_db2[10]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[9]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[9]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[9]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[9]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[9]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[9]~73_combout\ : std_logic;
SIGNAL \u4|fsmc_db[9]~74_combout\ : std_logic;
SIGNAL \u4|fsmc_db[9]~72_combout\ : std_logic;
SIGNAL \u4|fsmc_db[9]~71_combout\ : std_logic;
SIGNAL \u4|fsmc_db[9]~75_combout\ : std_logic;
SIGNAL \u5|vin_db1[10]~feeder_combout\ : std_logic;
SIGNAL \db[11]~input_o\ : std_logic;
SIGNAL \u5|vin_db2[11]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[10]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[10]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[10]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[10]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db7[10]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[10]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[10]~79_combout\ : std_logic;
SIGNAL \u4|fsmc_db[10]~77_combout\ : std_logic;
SIGNAL \u4|fsmc_db[10]~76_combout\ : std_logic;
SIGNAL \u4|fsmc_db[10]~78_combout\ : std_logic;
SIGNAL \u4|fsmc_db[10]~80_combout\ : std_logic;
SIGNAL \u4|fsmc_db[11]~81_combout\ : std_logic;
SIGNAL \db[12]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[12]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[11]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[11]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[11]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[11]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[11]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[11]~83_combout\ : std_logic;
SIGNAL \u4|fsmc_db[11]~84_combout\ : std_logic;
SIGNAL \u4|fsmc_db[11]~82_combout\ : std_logic;
SIGNAL \u4|fsmc_db[11]~85_combout\ : std_logic;
SIGNAL \db[13]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[13]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db2[13]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db3[12]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db4[13]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[12]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db7[12]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[12]~87_combout\ : std_logic;
SIGNAL \u4|fsmc_db[12]~89_combout\ : std_logic;
SIGNAL \u4|fsmc_db[12]~88_combout\ : std_logic;
SIGNAL \u4|fsmc_db[12]~86_combout\ : std_logic;
SIGNAL \u4|fsmc_db[12]~90_combout\ : std_logic;
SIGNAL \u4|fsmc_db[13]~92_combout\ : std_logic;
SIGNAL \db[14]~input_o\ : std_logic;
SIGNAL \u5|vin_db4[14]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[13]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[13]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[14]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db7[13]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[13]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[13]~94_combout\ : std_logic;
SIGNAL \u4|fsmc_db[13]~91_combout\ : std_logic;
SIGNAL \u4|fsmc_db[13]~93_combout\ : std_logic;
SIGNAL \u4|fsmc_db[13]~95_combout\ : std_logic;
SIGNAL \db[15]~input_o\ : std_logic;
SIGNAL \u5|vin_db1[15]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db5[14]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db6[15]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[14]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[14]~98_combout\ : std_logic;
SIGNAL \u4|fsmc_db[14]~97_combout\ : std_logic;
SIGNAL \u4|fsmc_db[14]~96_combout\ : std_logic;
SIGNAL \u4|fsmc_db[14]~99_combout\ : std_logic;
SIGNAL \u4|fsmc_db[14]~100_combout\ : std_logic;
SIGNAL \u4|fsmc_db[15]~102_combout\ : std_logic;
SIGNAL \u5|vin_db7[15]~feeder_combout\ : std_logic;
SIGNAL \u5|vin_db8[15]~feeder_combout\ : std_logic;
SIGNAL \u4|fsmc_db[15]~104_combout\ : std_logic;
SIGNAL \u4|fsmc_db[15]~103_combout\ : std_logic;
SIGNAL \u4|fsmc_db[15]~101_combout\ : std_logic;
SIGNAL \u4|fsmc_db[15]~105_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u3|Add0~35\ : std_logic;
SIGNAL \u3|Add0~36_combout\ : std_logic;
SIGNAL \u3|Add0~37\ : std_logic;
SIGNAL \u3|Add0~38_combout\ : std_logic;
SIGNAL \u3|Add0~39\ : std_logic;
SIGNAL \u3|Add0~41\ : std_logic;
SIGNAL \u3|Add0~42_combout\ : std_logic;
SIGNAL \u3|Add0~43\ : std_logic;
SIGNAL \u3|Add0~44_combout\ : std_logic;
SIGNAL \u3|Add0~45\ : std_logic;
SIGNAL \u3|Add0~46_combout\ : std_logic;
SIGNAL \u3|counter~11_combout\ : std_logic;
SIGNAL \u3|Equal0~6_combout\ : std_logic;
SIGNAL \u3|counter~5_combout\ : std_logic;
SIGNAL \u3|Equal0~5_combout\ : std_logic;
SIGNAL \u3|counter~10_combout\ : std_logic;
SIGNAL \u3|Add0~1\ : std_logic;
SIGNAL \u3|Add0~2_combout\ : std_logic;
SIGNAL \u3|Add0~3\ : std_logic;
SIGNAL \u3|Add0~4_combout\ : std_logic;
SIGNAL \u3|Add0~5\ : std_logic;
SIGNAL \u3|Add0~6_combout\ : std_logic;
SIGNAL \u3|Add0~7\ : std_logic;
SIGNAL \u3|Add0~8_combout\ : std_logic;
SIGNAL \u3|Add0~9\ : std_logic;
SIGNAL \u3|Add0~10_combout\ : std_logic;
SIGNAL \u3|Add0~11\ : std_logic;
SIGNAL \u3|Add0~12_combout\ : std_logic;
SIGNAL \u3|Add0~13\ : std_logic;
SIGNAL \u3|Add0~14_combout\ : std_logic;
SIGNAL \u3|counter~7_combout\ : std_logic;
SIGNAL \u3|Add0~15\ : std_logic;
SIGNAL \u3|Add0~16_combout\ : std_logic;
SIGNAL \u3|Add0~17\ : std_logic;
SIGNAL \u3|Add0~18_combout\ : std_logic;
SIGNAL \u3|counter~8_combout\ : std_logic;
SIGNAL \u3|Add0~19\ : std_logic;
SIGNAL \u3|Add0~20_combout\ : std_logic;
SIGNAL \u3|counter~9_combout\ : std_logic;
SIGNAL \u3|Add0~21\ : std_logic;
SIGNAL \u3|Add0~22_combout\ : std_logic;
SIGNAL \u3|Add0~23\ : std_logic;
SIGNAL \u3|Add0~24_combout\ : std_logic;
SIGNAL \u3|counter~6_combout\ : std_logic;
SIGNAL \u3|Add0~25\ : std_logic;
SIGNAL \u3|Add0~26_combout\ : std_logic;
SIGNAL \u3|Add0~27\ : std_logic;
SIGNAL \u3|Add0~28_combout\ : std_logic;
SIGNAL \u3|Add0~29\ : std_logic;
SIGNAL \u3|Add0~30_combout\ : std_logic;
SIGNAL \u3|counter~4_combout\ : std_logic;
SIGNAL \u3|Add0~31\ : std_logic;
SIGNAL \u3|Add0~32_combout\ : std_logic;
SIGNAL \u3|Add0~33\ : std_logic;
SIGNAL \u3|Add0~34_combout\ : std_logic;
SIGNAL \u3|Equal0~0_combout\ : std_logic;
SIGNAL \u3|Equal0~1_combout\ : std_logic;
SIGNAL \u3|Equal0~2_combout\ : std_logic;
SIGNAL \u3|Equal0~3_combout\ : std_logic;
SIGNAL \u3|Equal0~4_combout\ : std_logic;
SIGNAL \u3|Add0~40_combout\ : std_logic;
SIGNAL \u3|counter~12_combout\ : std_logic;
SIGNAL \u3|LessThan0~1_combout\ : std_logic;
SIGNAL \u3|LessThan0~2_combout\ : std_logic;
SIGNAL \u3|LessThan0~3_combout\ : std_logic;
SIGNAL \u3|LessThan0~4_combout\ : std_logic;
SIGNAL \u3|LessThan0~0_combout\ : std_logic;
SIGNAL \u3|LessThan0~5_combout\ : std_logic;
SIGNAL \u3|LessThan0~6_combout\ : std_logic;
SIGNAL \u3|led~q\ : std_logic;
SIGNAL \u5|Add4~0_combout\ : std_logic;
SIGNAL \u5|Add0~5\ : std_logic;
SIGNAL \u5|Add0~6_combout\ : std_logic;
SIGNAL \u5|Add0~7\ : std_logic;
SIGNAL \u5|Add0~8_combout\ : std_logic;
SIGNAL \u5|Equal0~0_combout\ : std_logic;
SIGNAL \u5|Add0~0_combout\ : std_logic;
SIGNAL \u5|ad_rst_cnt~1_combout\ : std_logic;
SIGNAL \u5|Add0~1\ : std_logic;
SIGNAL \u5|Add0~2_combout\ : std_logic;
SIGNAL \u5|ad_rst_cnt~0_combout\ : std_logic;
SIGNAL \u5|Add0~3\ : std_logic;
SIGNAL \u5|Add0~4_combout\ : std_logic;
SIGNAL \u5|ad_rst~0_combout\ : std_logic;
SIGNAL \u5|Add2~0_combout\ : std_logic;
SIGNAL \u5|busy1~q\ : std_logic;
SIGNAL \u5|busy1~INV_combout\ : std_logic;
SIGNAL \u5|busy2~q\ : std_logic;
SIGNAL \u5|busy_sig~q\ : std_logic;
SIGNAL \u5|state[1]~0_combout\ : std_logic;
SIGNAL \u5|Add2~1\ : std_logic;
SIGNAL \u5|Add2~2_combout\ : std_logic;
SIGNAL \u5|convb_cnt~1_combout\ : std_logic;
SIGNAL \u5|Add2~3\ : std_logic;
SIGNAL \u5|Add2~4_combout\ : std_logic;
SIGNAL \u5|Add2~5\ : std_logic;
SIGNAL \u5|Add2~6_combout\ : std_logic;
SIGNAL \u5|convb_cnt~0_combout\ : std_logic;
SIGNAL \u5|Add2~7\ : std_logic;
SIGNAL \u5|Add2~8_combout\ : std_logic;
SIGNAL \u5|Equal2~0_combout\ : std_logic;
SIGNAL \u5|state[1]~1_combout\ : std_logic;
SIGNAL \u5|Decoder0~2_combout\ : std_logic;
SIGNAL \u5|Equal2~1_combout\ : std_logic;
SIGNAL \u5|Selector2~0_combout\ : std_logic;
SIGNAL \u5|Add1~0_combout\ : std_logic;
SIGNAL \u5|Decoder0~1_combout\ : std_logic;
SIGNAL \u5|Add3~0_combout\ : std_logic;
SIGNAL \u5|busy_cnt~2_combout\ : std_logic;
SIGNAL \u5|Decoder0~3_combout\ : std_logic;
SIGNAL \u5|Add3~1\ : std_logic;
SIGNAL \u5|Add3~2_combout\ : std_logic;
SIGNAL \u5|busy_cnt~1_combout\ : std_logic;
SIGNAL \u5|Add3~3\ : std_logic;
SIGNAL \u5|Add3~4_combout\ : std_logic;
SIGNAL \u5|Add3~5\ : std_logic;
SIGNAL \u5|Add3~6_combout\ : std_logic;
SIGNAL \u5|busy_cnt~0_combout\ : std_logic;
SIGNAL \u5|Add3~7\ : std_logic;
SIGNAL \u5|Add3~8_combout\ : std_logic;
SIGNAL \u5|Add3~9\ : std_logic;
SIGNAL \u5|Add3~10_combout\ : std_logic;
SIGNAL \u5|Equal3~1_combout\ : std_logic;
SIGNAL \u5|Add3~11\ : std_logic;
SIGNAL \u5|Add3~12_combout\ : std_logic;
SIGNAL \u5|Add3~13\ : std_logic;
SIGNAL \u5|Add3~14_combout\ : std_logic;
SIGNAL \u5|Add3~15\ : std_logic;
SIGNAL \u5|Add3~16_combout\ : std_logic;
SIGNAL \u5|Add3~17\ : std_logic;
SIGNAL \u5|Add3~18_combout\ : std_logic;
SIGNAL \u5|Equal3~0_combout\ : std_logic;
SIGNAL \u5|Equal3~2_combout\ : std_logic;
SIGNAL \u5|Add1~1\ : std_logic;
SIGNAL \u5|Add1~2_combout\ : std_logic;
SIGNAL \u5|conva_cnt~1_combout\ : std_logic;
SIGNAL \u5|Add1~3\ : std_logic;
SIGNAL \u5|Add1~4_combout\ : std_logic;
SIGNAL \u5|Add1~5\ : std_logic;
SIGNAL \u5|Add1~6_combout\ : std_logic;
SIGNAL \u5|conva_cnt~0_combout\ : std_logic;
SIGNAL \u5|Add1~7\ : std_logic;
SIGNAL \u5|Add1~8_combout\ : std_logic;
SIGNAL \u5|Equal1~0_combout\ : std_logic;
SIGNAL \u5|Selector2~1_combout\ : std_logic;
SIGNAL \u5|Selector2~2_combout\ : std_logic;
SIGNAL \u5|Selector0~0_combout\ : std_logic;
SIGNAL \u5|Selector0~1_combout\ : std_logic;
SIGNAL \u5|Decoder0~0_combout\ : std_logic;
SIGNAL \u5|Add4~1\ : std_logic;
SIGNAL \u5|Add4~2_combout\ : std_logic;
SIGNAL \u5|Add4~7\ : std_logic;
SIGNAL \u5|Add4~8_combout\ : std_logic;
SIGNAL \u5|Add4~9\ : std_logic;
SIGNAL \u5|Add4~10_combout\ : std_logic;
SIGNAL \u5|Add4~11\ : std_logic;
SIGNAL \u5|Add4~12_combout\ : std_logic;
SIGNAL \u5|cs_cnt~0_combout\ : std_logic;
SIGNAL \u5|Add4~13\ : std_logic;
SIGNAL \u5|Add4~14_combout\ : std_logic;
SIGNAL \u5|Equal4~0_combout\ : std_logic;
SIGNAL \u5|cs_cnt~2_combout\ : std_logic;
SIGNAL \u5|Add4~3\ : std_logic;
SIGNAL \u5|Add4~4_combout\ : std_logic;
SIGNAL \u5|cs_cnt~1_combout\ : std_logic;
SIGNAL \u5|Add4~5\ : std_logic;
SIGNAL \u5|Add4~6_combout\ : std_logic;
SIGNAL \u5|Equal4~1_combout\ : std_logic;
SIGNAL \u5|Equal4~2_combout\ : std_logic;
SIGNAL \u5|cs_r~q\ : std_logic;
SIGNAL \u5|Equal1~1_combout\ : std_logic;
SIGNAL \u5|conva_r~q\ : std_logic;
SIGNAL \u5|convb_r~q\ : std_logic;
SIGNAL \u5|u2|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|u3|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|u4|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|u5|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|u6|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|u7|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|u8|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u2|cnt_rst\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u4|address_reg\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u5|cs_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u5|rd_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|busy_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|vin_db4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|vin_db7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|vin_db5\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|ad_rst_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|wr_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|convb_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|invalid_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|vin_db8\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|state\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|address\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u5|ram_rdaddress_r\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u5|vin_db1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|conva_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|vin_db2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|vin_db3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|u1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|rd_low_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u5|vin_db6\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|rd_high_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u2|ALT_INV_rsn~2clkctrl_outclk\ : std_logic;
SIGNAL \u5|ALT_INV_rd~clkctrl_outclk\ : std_logic;
SIGNAL \u4|ALT_INV_read_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_busy~input_o\ : std_logic;
SIGNAL \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\ : std_logic;
SIGNAL \u5|ALT_INV_address[11]~12_combout\ : std_logic;
SIGNAL \u5|ALT_INV_command.00000~q\ : std_logic;
SIGNAL \u5|ALT_INV_ad_rst~0_combout\ : std_logic;
SIGNAL \u5|ALT_INV_convb_r~q\ : std_logic;
SIGNAL \u5|ALT_INV_conva_r~q\ : std_logic;
SIGNAL \u5|ALT_INV_cs_r~q\ : std_logic;
SIGNAL \u5|ALT_INV_rd~q\ : std_logic;
SIGNAL \u5|ALT_INV_wr_state\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk_25m <= clk_25m;
fpga_ledb <= ww_fpga_ledb;
ww_fsmc_clk <= fsmc_clk;
ww_fsmc_nadv <= fsmc_nadv;
ww_fsmc_wr <= fsmc_wr;
ww_fsmc_rd <= fsmc_rd;
ww_fsmc_cs <= fsmc_cs;
ww_fsmc_ab <= fsmc_ab;
fsmc_db <= ww_fsmc_db;
rd_sig <= ww_rd_sig;
cs <= ww_cs;
conva <= ww_conva;
convb <= ww_convb;
ad_rst <= ww_ad_rst;
pange <= ww_pange;
os <= ww_os;
ww_busy <= busy;
ww_db <= db;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_25m~input_o\);

\u1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\u1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\u1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\u1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\u1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u5|vin_db8\(0) & \u5|vin_db7\(0) & \u5|vin_db6\(0) & \u5|vin_db5\(0) & \u5|vin_db4\(0) & \u5|vin_db3\(0) & \u5|vin_db2\(1) & \u5|vin_db2\(0) & \u5|vin_db1\(0)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(0) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(0) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u5|u2|altsyncram_component|auto_generated|q_b\(1) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u5|u3|altsyncram_component|auto_generated|q_b\(0) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u5|u4|altsyncram_component|auto_generated|q_b\(0) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(0) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(0) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(0) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(0) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\u5|vin_db8\(1) & \u5|vin_db7\(1) & \u5|vin_db6\(1) & \u5|vin_db5\(1) & \u5|vin_db4\(1) & \u5|vin_db3\(1) & \u5|vin_db2\(2) & \u5|vin_db1\(2) & \u5|vin_db1\(1)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(1) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);
\u5|u1|altsyncram_component|auto_generated|q_b\(2) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(1);
\u5|u2|altsyncram_component|auto_generated|q_b\(2) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(2);
\u5|u3|altsyncram_component|auto_generated|q_b\(1) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(3);
\u5|u4|altsyncram_component|auto_generated|q_b\(1) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(1) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(1) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(1) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(1) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (\u5|vin_db8\(2) & \u5|vin_db7\(2) & \u5|vin_db6\(2) & \u5|vin_db5\(2) & \u5|vin_db4\(3) & \u5|vin_db4\(2) & \u5|vin_db3\(2) & \u5|vin_db2\(3) & \u5|vin_db1\(3)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(3) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(3) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(2) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(2);
\u5|u4|altsyncram_component|auto_generated|q_b\(2) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(3);
\u5|u4|altsyncram_component|auto_generated|q_b\(3) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(2) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(2) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(2) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(2) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\u5|vin_db8\(3) & \u5|vin_db7\(3) & \u5|vin_db6\(3) & \u5|vin_db5\(3) & \u5|vin_db4\(4) & \u5|vin_db3\(4) & \u5|vin_db3\(3) & \u5|vin_db2\(4) & \u5|vin_db1\(4)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(4) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(4) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(3) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(2);
\u5|u3|altsyncram_component|auto_generated|q_b\(4) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(3);
\u5|u4|altsyncram_component|auto_generated|q_b\(4) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(3) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(3) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(3) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(3) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ <= (\u5|vin_db8\(4) & \u5|vin_db7\(4) & \u5|vin_db6\(5) & \u5|vin_db6\(4) & \u5|vin_db5\(4) & \u5|vin_db4\(5) & \u5|vin_db3\(5) & \u5|vin_db2\(5) & \u5|vin_db1\(5)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(5) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(5) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(5) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(2);
\u5|u4|altsyncram_component|auto_generated|q_b\(5) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(3);
\u5|u5|altsyncram_component|auto_generated|q_b\(4) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(4);
\u5|u6|altsyncram_component|auto_generated|q_b\(4) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(5) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(4) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(4) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\u5|vin_db8\(5) & \u5|vin_db7\(5) & \u5|vin_db6\(6) & \u5|vin_db5\(6) & \u5|vin_db5\(5) & \u5|vin_db4\(6) & \u5|vin_db3\(6) & \u5|vin_db2\(6) & \u5|vin_db1\(6)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(6) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(6) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(6) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(2);
\u5|u4|altsyncram_component|auto_generated|q_b\(6) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(3);
\u5|u5|altsyncram_component|auto_generated|q_b\(5) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(6) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(6) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(5) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(5) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ <= (\u5|vin_db8\(7) & \u5|vin_db8\(6) & \u5|vin_db7\(6) & \u5|vin_db6\(7) & \u5|vin_db5\(7) & \u5|vin_db4\(7) & \u5|vin_db3\(7) & \u5|vin_db2\(7) & \u5|vin_db1\(7)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(7) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(7) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(7) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(2);
\u5|u4|altsyncram_component|auto_generated|q_b\(7) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(3);
\u5|u5|altsyncram_component|auto_generated|q_b\(7) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(4);
\u5|u6|altsyncram_component|auto_generated|q_b\(7) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(5);
\u5|u7|altsyncram_component|auto_generated|q_b\(6) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(6);
\u5|u8|altsyncram_component|auto_generated|q_b\(6) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(7) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\u5|vin_db8\(8) & \u5|vin_db7\(8) & \u5|vin_db7\(7) & \u5|vin_db6\(8) & \u5|vin_db5\(8) & \u5|vin_db4\(8) & \u5|vin_db3\(8) & \u5|vin_db2\(8) & \u5|vin_db1\(8)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(8) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(8) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(8) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(2);
\u5|u4|altsyncram_component|auto_generated|q_b\(8) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(3);
\u5|u5|altsyncram_component|auto_generated|q_b\(8) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(4);
\u5|u6|altsyncram_component|auto_generated|q_b\(8) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(5);
\u5|u7|altsyncram_component|auto_generated|q_b\(7) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(8) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(8) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ <= (\u5|vin_db8\(9) & \u5|vin_db7\(9) & \u5|vin_db6\(9) & \u5|vin_db5\(9) & \u5|vin_db4\(9) & \u5|vin_db3\(9) & \u5|vin_db2\(10) & \u5|vin_db2\(9) & \u5|vin_db1\(9)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1) & 
\u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(9) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(9) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(1);
\u5|u2|altsyncram_component|auto_generated|q_b\(10) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(2);
\u5|u3|altsyncram_component|auto_generated|q_b\(9) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(3);
\u5|u4|altsyncram_component|auto_generated|q_b\(9) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(9) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(9) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(9) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(9) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\u5|vin_db8\(10) & \u5|vin_db7\(10) & \u5|vin_db6\(10) & \u5|vin_db5\(10) & \u5|vin_db4\(10) & \u5|vin_db3\(10) & \u5|vin_db2\(11) & \u5|vin_db1\(11) & \u5|vin_db1\(10)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1)
& \u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(10) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);
\u5|u1|altsyncram_component|auto_generated|q_b\(11) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(1);
\u5|u2|altsyncram_component|auto_generated|q_b\(11) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(2);
\u5|u3|altsyncram_component|auto_generated|q_b\(10) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(3);
\u5|u4|altsyncram_component|auto_generated|q_b\(10) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(10) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(10) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(10) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(10) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\u5|vin_db8\(11) & \u5|vin_db7\(11) & \u5|vin_db6\(11) & \u5|vin_db5\(11) & \u5|vin_db4\(12) & \u5|vin_db4\(11) & \u5|vin_db3\(11) & \u5|vin_db2\(12) & \u5|vin_db1\(12)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1)
& \u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(12) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(12) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(11) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(2);
\u5|u4|altsyncram_component|auto_generated|q_b\(11) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(3);
\u5|u4|altsyncram_component|auto_generated|q_b\(12) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(11) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(11) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(11) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(11) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ <= (\u5|vin_db8\(12) & \u5|vin_db7\(12) & \u5|vin_db6\(12) & \u5|vin_db5\(12) & \u5|vin_db4\(13) & \u5|vin_db3\(13) & \u5|vin_db3\(12) & \u5|vin_db2\(13) & \u5|vin_db1\(13)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1)
& \u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(13) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(13) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(12) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(2);
\u5|u3|altsyncram_component|auto_generated|q_b\(13) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(3);
\u5|u4|altsyncram_component|auto_generated|q_b\(13) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(12) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(12) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(12) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(12) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\u5|vin_db8\(13) & \u5|vin_db7\(13) & \u5|vin_db6\(14) & \u5|vin_db6\(13) & \u5|vin_db5\(13) & \u5|vin_db4\(14) & \u5|vin_db3\(14) & \u5|vin_db2\(14) & \u5|vin_db1\(14)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1)
& \u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(14) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(14) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(14) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(2);
\u5|u4|altsyncram_component|auto_generated|q_b\(14) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(3);
\u5|u5|altsyncram_component|auto_generated|q_b\(13) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(4);
\u5|u6|altsyncram_component|auto_generated|q_b\(13) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(14) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(13) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(13) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(8);

\u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ <= (\u5|vin_db8\(14) & \u5|vin_db7\(14) & \u5|vin_db6\(15) & \u5|vin_db5\(15) & \u5|vin_db5\(14) & \u5|vin_db4\(15) & \u5|vin_db3\(15) & \u5|vin_db2\(15) & \u5|vin_db1\(15)
);

\u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1)
& \u5|address\(0));

\u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u1|altsyncram_component|auto_generated|q_b\(15) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);
\u5|u2|altsyncram_component|auto_generated|q_b\(15) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(1);
\u5|u3|altsyncram_component|auto_generated|q_b\(15) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(2);
\u5|u4|altsyncram_component|auto_generated|q_b\(15) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(3);
\u5|u5|altsyncram_component|auto_generated|q_b\(14) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(4);
\u5|u5|altsyncram_component|auto_generated|q_b\(15) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(5);
\u5|u6|altsyncram_component|auto_generated|q_b\(15) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(6);
\u5|u7|altsyncram_component|auto_generated|q_b\(14) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(7);
\u5|u8|altsyncram_component|auto_generated|q_b\(14) <= \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(8);

\u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & \u5|vin_db8\(15) & \u5|vin_db7\(15));

\u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\u5|address\(9) & \u5|address\(8) & \u5|address\(7) & \u5|address\(6) & \u5|address\(5) & \u5|address\(4) & \u5|address\(3) & \u5|address\(2) & \u5|address\(1)
& \u5|address\(0));

\u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\u5|ram_rdaddress_r\(9) & \u5|ram_rdaddress_r\(8) & \u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(6) & \u5|ram_rdaddress_r\(5) & \u5|ram_rdaddress_r\(4) & 
\u5|ram_rdaddress_r\(3) & \u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(1) & \u5|ram_rdaddress_r\(0));

\u5|u7|altsyncram_component|auto_generated|q_b\(15) <= \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);
\u5|u8|altsyncram_component|auto_generated|q_b\(15) <= \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(1);

\u4|read_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u4|read_clk~combout\);

\u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|altpll_component|auto_generated|wire_pll1_clk\(1));

\u4|wrn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u4|wrn~combout\);

\u5|rd~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u5|rd~q\);

\clk_25m~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_25m~input_o\);

\u2|rsn~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|rsn~2_combout\);
\u2|ALT_INV_rsn~2clkctrl_outclk\ <= NOT \u2|rsn~2clkctrl_outclk\;
\u5|ALT_INV_rd~clkctrl_outclk\ <= NOT \u5|rd~clkctrl_outclk\;
\u4|ALT_INV_read_clk~clkctrl_outclk\ <= NOT \u4|read_clk~clkctrl_outclk\;
\ALT_INV_busy~input_o\ <= NOT \busy~input_o\;
\u5|ALT_INV_ram_rdaddress_r[11]~0_combout\ <= NOT \u5|ram_rdaddress_r[11]~0_combout\;
\u5|ALT_INV_address[11]~12_combout\ <= NOT \u5|address[11]~12_combout\;
\u5|ALT_INV_command.00000~q\ <= NOT \u5|command.00000~q\;
\u5|ALT_INV_ad_rst~0_combout\ <= NOT \u5|ad_rst~0_combout\;
\u5|ALT_INV_convb_r~q\ <= NOT \u5|convb_r~q\;
\u5|ALT_INV_conva_r~q\ <= NOT \u5|conva_r~q\;
\u5|ALT_INV_cs_r~q\ <= NOT \u5|cs_r~q\;
\u5|ALT_INV_rd~q\ <= NOT \u5|rd~q\;
\u5|ALT_INV_wr_state\(0) <= NOT \u5|wr_state\(0);

-- Location: IOOBUF_X16_Y29_N30
\fpga_ledb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|led~q\,
	devoe => ww_devoe,
	o => ww_fpga_ledb);

-- Location: IOOBUF_X35_Y29_N16
\rd_sig~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|ALT_INV_rd~q\,
	devoe => ww_devoe,
	o => ww_rd_sig);

-- Location: IOOBUF_X37_Y29_N16
\cs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|ALT_INV_cs_r~q\,
	devoe => ww_devoe,
	o => ww_cs);

-- Location: IOOBUF_X28_Y29_N9
\conva~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|ALT_INV_conva_r~q\,
	devoe => ww_devoe,
	o => ww_conva);

-- Location: IOOBUF_X39_Y29_N30
\convb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|ALT_INV_convb_r~q\,
	devoe => ww_devoe,
	o => ww_convb);

-- Location: IOOBUF_X39_Y29_N9
\ad_rst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|ad_rst~0_combout\,
	devoe => ww_devoe,
	o => ww_ad_rst);

-- Location: IOOBUF_X30_Y29_N2
\pange~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pange);

-- Location: IOOBUF_X23_Y29_N16
\os[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_os(0));

-- Location: IOOBUF_X0_Y22_N9
\os[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_os(1));

-- Location: IOOBUF_X23_Y29_N2
\os[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_os(2));

-- Location: IOOBUF_X41_Y13_N23
\fsmc_db[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[0]~30_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(0));

-- Location: IOOBUF_X41_Y14_N9
\fsmc_db[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[1]~35_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(1));

-- Location: IOOBUF_X41_Y14_N2
\fsmc_db[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[2]~40_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(2));

-- Location: IOOBUF_X41_Y7_N23
\fsmc_db[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[3]~45_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(3));

-- Location: IOOBUF_X41_Y11_N2
\fsmc_db[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[4]~50_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(4));

-- Location: IOOBUF_X41_Y12_N23
\fsmc_db[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[5]~55_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(5));

-- Location: IOOBUF_X41_Y10_N16
\fsmc_db[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[6]~60_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(6));

-- Location: IOOBUF_X41_Y10_N9
\fsmc_db[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[7]~65_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(7));

-- Location: IOOBUF_X41_Y8_N9
\fsmc_db[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[8]~70_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(8));

-- Location: IOOBUF_X41_Y8_N2
\fsmc_db[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[9]~75_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(9));

-- Location: IOOBUF_X41_Y7_N2
\fsmc_db[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[10]~80_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(10));

-- Location: IOOBUF_X41_Y8_N23
\fsmc_db[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[11]~85_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(11));

-- Location: IOOBUF_X41_Y5_N9
\fsmc_db[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[12]~90_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(12));

-- Location: IOOBUF_X41_Y5_N2
\fsmc_db[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[13]~95_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(13));

-- Location: IOOBUF_X41_Y8_N16
\fsmc_db[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[14]~100_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(14));

-- Location: IOOBUF_X41_Y9_N23
\fsmc_db[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|fsmc_db[15]~105_combout\,
	oe => \u4|fsmc_db[15]~17_combout\,
	devoe => ww_devoe,
	o => ww_fsmc_db(15));

-- Location: IOIBUF_X37_Y29_N29
\busy~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_busy,
	o => \busy~input_o\);

-- Location: LCCOMB_X16_Y25_N2
\u5|address[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[0]~13_combout\ = \u5|address\(0) $ (VCC)
-- \u5|address[0]~14\ = CARRY(\u5|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|address\(0),
	datad => VCC,
	combout => \u5|address[0]~13_combout\,
	cout => \u5|address[0]~14\);

-- Location: IOIBUF_X0_Y14_N8
\clk_25m~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_25m,
	o => \clk_25m~input_o\);

-- Location: PLL_1
\u1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 7,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "unused",
	clk0_divide_by => 0,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 0,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 2,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock1",
	inclk0_input_frequency => 40000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 26,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5989,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 192,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \u1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \u1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \u1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \u1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y14_N22
\fsmc_wr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_wr,
	o => \fsmc_wr~input_o\);

-- Location: IOIBUF_X41_Y14_N15
\fsmc_cs~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_cs,
	o => \fsmc_cs~input_o\);

-- Location: LCCOMB_X40_Y14_N24
\u4|wrn\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|wrn~combout\ = LCELL((\fsmc_wr~input_o\) # (\fsmc_cs~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsmc_wr~input_o\,
	datad => \fsmc_cs~input_o\,
	combout => \u4|wrn~combout\);

-- Location: CLKCTRL_G9
\u4|wrn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u4|wrn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u4|wrn~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y18_N22
\fsmc_nadv~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_nadv,
	o => \fsmc_nadv~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\fsmc_db[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(6),
	o => \fsmc_db[6]~input_o\);

-- Location: CLKCTRL_G2
\clk_25m~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_25m~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_25m~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y25_N12
\u2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~0_combout\ = \u2|cnt_rst\(0) $ (GND)
-- \u2|Add0~1\ = CARRY(!\u2|cnt_rst\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt_rst\(0),
	datad => VCC,
	combout => \u2|Add0~0_combout\,
	cout => \u2|Add0~1\);

-- Location: LCCOMB_X19_Y25_N16
\u2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~4_combout\ = (\u2|cnt_rst\(2) & (\u2|Add0~3\ $ (GND))) # (!\u2|cnt_rst\(2) & (!\u2|Add0~3\ & VCC))
-- \u2|Add0~5\ = CARRY((\u2|cnt_rst\(2) & !\u2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt_rst\(2),
	datad => VCC,
	cin => \u2|Add0~3\,
	combout => \u2|Add0~4_combout\,
	cout => \u2|Add0~5\);

-- Location: LCCOMB_X19_Y25_N18
\u2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~6_combout\ = (\u2|cnt_rst\(3) & (!\u2|Add0~5\)) # (!\u2|cnt_rst\(3) & ((\u2|Add0~5\) # (GND)))
-- \u2|Add0~7\ = CARRY((!\u2|Add0~5\) # (!\u2|cnt_rst\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt_rst\(3),
	datad => VCC,
	cin => \u2|Add0~5\,
	combout => \u2|Add0~6_combout\,
	cout => \u2|Add0~7\);

-- Location: FF_X19_Y25_N11
\u2|cnt_rst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	asdata => \u2|Add0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_rst\(3));

-- Location: LCCOMB_X19_Y25_N20
\u2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~8_combout\ = (\u2|cnt_rst\(4) & (\u2|Add0~7\ $ (GND))) # (!\u2|cnt_rst\(4) & (!\u2|Add0~7\ & VCC))
-- \u2|Add0~9\ = CARRY((\u2|cnt_rst\(4) & !\u2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(4),
	datad => VCC,
	cin => \u2|Add0~7\,
	combout => \u2|Add0~8_combout\,
	cout => \u2|Add0~9\);

-- Location: FF_X19_Y25_N1
\u2|cnt_rst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	asdata => \u2|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_rst\(4));

-- Location: LCCOMB_X19_Y25_N22
\u2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~10_combout\ = (\u2|cnt_rst\(5) & (!\u2|Add0~9\)) # (!\u2|cnt_rst\(5) & ((\u2|Add0~9\) # (GND)))
-- \u2|Add0~11\ = CARRY((!\u2|Add0~9\) # (!\u2|cnt_rst\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(5),
	datad => VCC,
	cin => \u2|Add0~9\,
	combout => \u2|Add0~10_combout\,
	cout => \u2|Add0~11\);

-- Location: FF_X19_Y25_N7
\u2|cnt_rst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	asdata => \u2|Add0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_rst\(5));

-- Location: LCCOMB_X19_Y25_N6
\u2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = (\u2|cnt_rst\(1) & (\u2|cnt_rst\(2) & (\u2|cnt_rst\(5) & \u2|cnt_rst\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(1),
	datab => \u2|cnt_rst\(2),
	datac => \u2|cnt_rst\(5),
	datad => \u2|cnt_rst\(0),
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y25_N24
\u2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~12_combout\ = (\u2|cnt_rst\(6) & (\u2|Add0~11\ $ (GND))) # (!\u2|cnt_rst\(6) & (!\u2|Add0~11\ & VCC))
-- \u2|Add0~13\ = CARRY((\u2|cnt_rst\(6) & !\u2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(6),
	datad => VCC,
	cin => \u2|Add0~11\,
	combout => \u2|Add0~12_combout\,
	cout => \u2|Add0~13\);

-- Location: FF_X19_Y25_N3
\u2|cnt_rst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	asdata => \u2|Add0~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_rst\(6));

-- Location: LCCOMB_X19_Y25_N26
\u2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~14_combout\ = \u2|cnt_rst\(7) $ (\u2|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(7),
	cin => \u2|Add0~13\,
	combout => \u2|Add0~14_combout\);

-- Location: FF_X19_Y25_N27
\u2|cnt_rst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_rst\(7));

-- Location: LCCOMB_X21_Y25_N8
\u2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = (!\u2|cnt_rst\(3) & (\u2|cnt_rst\(6) & (\u2|cnt_rst\(7) & !\u2|cnt_rst\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(3),
	datab => \u2|cnt_rst\(6),
	datac => \u2|cnt_rst\(7),
	datad => \u2|cnt_rst\(4),
	combout => \u2|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y25_N10
\u2|cnt_rst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt_rst~0_combout\ = ((\u2|Equal0~1_combout\ & \u2|Equal0~0_combout\)) # (!\u2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add0~0_combout\,
	datab => \u2|Equal0~1_combout\,
	datad => \u2|Equal0~0_combout\,
	combout => \u2|cnt_rst~0_combout\);

-- Location: FF_X19_Y25_N19
\u2|cnt_rst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	asdata => \u2|cnt_rst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_rst\(0));

-- Location: LCCOMB_X19_Y25_N14
\u2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~2_combout\ = (\u2|cnt_rst\(1) & (!\u2|Add0~1\)) # (!\u2|cnt_rst\(1) & ((\u2|Add0~1\) # (GND)))
-- \u2|Add0~3\ = CARRY((!\u2|Add0~1\) # (!\u2|cnt_rst\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(1),
	datad => VCC,
	cin => \u2|Add0~1\,
	combout => \u2|Add0~2_combout\,
	cout => \u2|Add0~3\);

-- Location: FF_X19_Y25_N9
\u2|cnt_rst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	asdata => \u2|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_rst\(1));

-- Location: FF_X19_Y25_N5
\u2|cnt_rst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	asdata => \u2|Add0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_rst\(2));

-- Location: LCCOMB_X19_Y25_N8
\u2|rsn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|rsn~0_combout\ = (\u2|cnt_rst\(2) & (((\u2|cnt_rst\(0) & !\u2|cnt_rst\(1))) # (!\u2|cnt_rst\(3)))) # (!\u2|cnt_rst\(2) & (((\u2|cnt_rst\(1)) # (\u2|cnt_rst\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(2),
	datab => \u2|cnt_rst\(0),
	datac => \u2|cnt_rst\(1),
	datad => \u2|cnt_rst\(3),
	combout => \u2|rsn~0_combout\);

-- Location: LCCOMB_X19_Y25_N2
\u2|rsn~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|rsn~1_combout\ = (\u2|cnt_rst\(7) & (!\u2|cnt_rst\(5) & (\u2|cnt_rst\(6) & \u2|cnt_rst\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt_rst\(7),
	datab => \u2|cnt_rst\(5),
	datac => \u2|cnt_rst\(6),
	datad => \u2|cnt_rst\(4),
	combout => \u2|rsn~1_combout\);

-- Location: LCCOMB_X19_Y25_N0
\u2|rsn~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|rsn~2_combout\ = (\u2|rsn~0_combout\ & \u2|rsn~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|rsn~0_combout\,
	datad => \u2|rsn~1_combout\,
	combout => \u2|rsn~2_combout\);

-- Location: CLKCTRL_G14
\u2|rsn~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|rsn~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|rsn~2clkctrl_outclk\);

-- Location: FF_X39_Y14_N9
\u4|address_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_db[6]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(6));

-- Location: IOIBUF_X41_Y13_N22
\fsmc_db[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(0),
	o => \fsmc_db[0]~input_o\);

-- Location: LCCOMB_X40_Y18_N24
\u4|address_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[0]~feeder_combout\ = \fsmc_db[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_db[0]~input_o\,
	combout => \u4|address_reg[0]~feeder_combout\);

-- Location: FF_X40_Y18_N25
\u4|address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[0]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(0));

-- Location: IOIBUF_X41_Y14_N8
\fsmc_db[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(1),
	o => \fsmc_db[1]~input_o\);

-- Location: LCCOMB_X39_Y14_N4
\u4|address_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[1]~feeder_combout\ = \fsmc_db[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_db[1]~input_o\,
	combout => \u4|address_reg[1]~feeder_combout\);

-- Location: FF_X39_Y14_N5
\u4|address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[1]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(1));

-- Location: IOIBUF_X41_Y11_N1
\fsmc_db[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(4),
	o => \fsmc_db[4]~input_o\);

-- Location: FF_X39_Y14_N19
\u4|address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_db[4]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(4));

-- Location: IOIBUF_X41_Y12_N22
\fsmc_db[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(5),
	o => \fsmc_db[5]~input_o\);

-- Location: LCCOMB_X39_Y14_N16
\u4|address_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[5]~feeder_combout\ = \fsmc_db[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_db[5]~input_o\,
	combout => \u4|address_reg[5]~feeder_combout\);

-- Location: FF_X39_Y14_N17
\u4|address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[5]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(5));

-- Location: IOIBUF_X41_Y14_N1
\fsmc_db[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(2),
	o => \fsmc_db[2]~input_o\);

-- Location: LCCOMB_X39_Y14_N14
\u4|address_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[2]~feeder_combout\ = \fsmc_db[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_db[2]~input_o\,
	combout => \u4|address_reg[2]~feeder_combout\);

-- Location: FF_X39_Y14_N15
\u4|address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[2]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(2));

-- Location: IOIBUF_X41_Y7_N22
\fsmc_db[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(3),
	o => \fsmc_db[3]~input_o\);

-- Location: LCCOMB_X39_Y14_N10
\u4|address_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[3]~feeder_combout\ = \fsmc_db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_db[3]~input_o\,
	combout => \u4|address_reg[3]~feeder_combout\);

-- Location: FF_X39_Y14_N11
\u4|address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(3));

-- Location: LCCOMB_X39_Y14_N2
\u4|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal0~5_combout\ = (!\u4|address_reg\(4) & (!\u4|address_reg\(5) & (!\u4|address_reg\(2) & !\u4|address_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(4),
	datab => \u4|address_reg\(5),
	datac => \u4|address_reg\(2),
	datad => \u4|address_reg\(3),
	combout => \u4|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y14_N8
\u4|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal0~6_combout\ = (!\u4|address_reg\(1) & \u4|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|address_reg\(1),
	datad => \u4|Equal0~5_combout\,
	combout => \u4|Equal0~6_combout\);

-- Location: IOIBUF_X41_Y19_N15
\fsmc_ab[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_ab(4),
	o => \fsmc_ab[4]~input_o\);

-- Location: LCCOMB_X40_Y18_N12
\u4|address_reg[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[20]~feeder_combout\ = \fsmc_ab[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_ab[4]~input_o\,
	combout => \u4|address_reg[20]~feeder_combout\);

-- Location: FF_X40_Y18_N13
\u4|address_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[20]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(20));

-- Location: IOIBUF_X41_Y19_N1
\fsmc_ab[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_ab(5),
	o => \fsmc_ab[5]~input_o\);

-- Location: LCCOMB_X40_Y18_N18
\u4|address_reg[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[21]~feeder_combout\ = \fsmc_ab[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_ab[5]~input_o\,
	combout => \u4|address_reg[21]~feeder_combout\);

-- Location: FF_X40_Y18_N19
\u4|address_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[21]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(21));

-- Location: IOIBUF_X41_Y20_N22
\fsmc_ab[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_ab(6),
	o => \fsmc_ab[6]~input_o\);

-- Location: FF_X40_Y18_N21
\u4|address_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_ab[6]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(22));

-- Location: IOIBUF_X41_Y19_N8
\fsmc_ab[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_ab(3),
	o => \fsmc_ab[3]~input_o\);

-- Location: LCCOMB_X40_Y18_N2
\u4|address_reg[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[19]~feeder_combout\ = \fsmc_ab[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_ab[3]~input_o\,
	combout => \u4|address_reg[19]~feeder_combout\);

-- Location: FF_X40_Y18_N3
\u4|address_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[19]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(19));

-- Location: LCCOMB_X40_Y18_N20
\u4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal0~0_combout\ = (!\u4|address_reg\(20) & (!\u4|address_reg\(21) & (!\u4|address_reg\(22) & !\u4|address_reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(20),
	datab => \u4|address_reg\(21),
	datac => \u4|address_reg\(22),
	datad => \u4|address_reg\(19),
	combout => \u4|Equal0~0_combout\);

-- Location: IOIBUF_X41_Y12_N8
\fsmc_ab[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_ab(0),
	o => \fsmc_ab[0]~input_o\);

-- Location: LCCOMB_X40_Y14_N30
\u4|address_reg[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[16]~feeder_combout\ = \fsmc_ab[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_ab[0]~input_o\,
	combout => \u4|address_reg[16]~feeder_combout\);

-- Location: FF_X40_Y14_N31
\u4|address_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[16]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(16));

-- Location: IOIBUF_X41_Y12_N15
\fsmc_ab[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_ab(1),
	o => \fsmc_ab[1]~input_o\);

-- Location: LCCOMB_X40_Y14_N18
\u4|address_reg[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[17]~feeder_combout\ = \fsmc_ab[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_ab[1]~input_o\,
	combout => \u4|address_reg[17]~feeder_combout\);

-- Location: FF_X40_Y14_N19
\u4|address_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[17]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(17));

-- Location: IOIBUF_X41_Y10_N1
\fsmc_ab[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_ab(2),
	o => \fsmc_ab[2]~input_o\);

-- Location: FF_X40_Y14_N9
\u4|address_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_ab[2]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(18));

-- Location: IOIBUF_X41_Y9_N22
\fsmc_db[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(15),
	o => \fsmc_db[15]~input_o\);

-- Location: LCCOMB_X40_Y14_N28
\u4|address_reg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[15]~feeder_combout\ = \fsmc_db[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_db[15]~input_o\,
	combout => \u4|address_reg[15]~feeder_combout\);

-- Location: FF_X40_Y14_N29
\u4|address_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[15]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(15));

-- Location: LCCOMB_X40_Y14_N8
\u4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal0~1_combout\ = (!\u4|address_reg\(16) & (!\u4|address_reg\(17) & (!\u4|address_reg\(18) & !\u4|address_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(16),
	datab => \u4|address_reg\(17),
	datac => \u4|address_reg\(18),
	datad => \u4|address_reg\(15),
	combout => \u4|Equal0~1_combout\);

-- Location: IOIBUF_X41_Y5_N8
\fsmc_db[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(12),
	o => \fsmc_db[12]~input_o\);

-- Location: LCCOMB_X40_Y14_N26
\u4|address_reg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[12]~feeder_combout\ = \fsmc_db[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_db[12]~input_o\,
	combout => \u4|address_reg[12]~feeder_combout\);

-- Location: FF_X40_Y14_N27
\u4|address_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[12]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(12));

-- Location: IOIBUF_X41_Y8_N22
\fsmc_db[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(11),
	o => \fsmc_db[11]~input_o\);

-- Location: LCCOMB_X40_Y14_N0
\u4|address_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|address_reg[11]~feeder_combout\ = \fsmc_db[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmc_db[11]~input_o\,
	combout => \u4|address_reg[11]~feeder_combout\);

-- Location: FF_X40_Y14_N1
\u4|address_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	d => \u4|address_reg[11]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(11));

-- Location: IOIBUF_X41_Y8_N15
\fsmc_db[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(14),
	o => \fsmc_db[14]~input_o\);

-- Location: FF_X40_Y14_N11
\u4|address_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_db[14]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(14));

-- Location: IOIBUF_X41_Y5_N1
\fsmc_db[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(13),
	o => \fsmc_db[13]~input_o\);

-- Location: FF_X40_Y14_N13
\u4|address_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_db[13]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(13));

-- Location: LCCOMB_X40_Y14_N10
\u4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal0~2_combout\ = (!\u4|address_reg\(12) & (!\u4|address_reg\(11) & (!\u4|address_reg\(14) & !\u4|address_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(12),
	datab => \u4|address_reg\(11),
	datac => \u4|address_reg\(14),
	datad => \u4|address_reg\(13),
	combout => \u4|Equal0~2_combout\);

-- Location: IOIBUF_X41_Y8_N1
\fsmc_db[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(9),
	o => \fsmc_db[9]~input_o\);

-- Location: FF_X40_Y14_N7
\u4|address_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_db[9]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(9));

-- Location: IOIBUF_X41_Y7_N1
\fsmc_db[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(10),
	o => \fsmc_db[10]~input_o\);

-- Location: FF_X40_Y14_N21
\u4|address_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_db[10]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(10));

-- Location: IOIBUF_X41_Y10_N8
\fsmc_db[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(7),
	o => \fsmc_db[7]~input_o\);

-- Location: FF_X40_Y14_N17
\u4|address_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_db[7]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(7));

-- Location: IOIBUF_X41_Y8_N8
\fsmc_db[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_db(8),
	o => \fsmc_db[8]~input_o\);

-- Location: FF_X40_Y14_N3
\u4|address_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsmc_nadv~input_o\,
	asdata => \fsmc_db[8]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|address_reg\(8));

-- Location: LCCOMB_X40_Y14_N16
\u4|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal0~3_combout\ = (!\u4|address_reg\(9) & (!\u4|address_reg\(10) & (!\u4|address_reg\(7) & !\u4|address_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(9),
	datab => \u4|address_reg\(10),
	datac => \u4|address_reg\(7),
	datad => \u4|address_reg\(8),
	combout => \u4|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y14_N24
\u4|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal0~4_combout\ = (\u4|Equal0~0_combout\ & (\u4|Equal0~1_combout\ & (\u4|Equal0~2_combout\ & \u4|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal0~0_combout\,
	datab => \u4|Equal0~1_combout\,
	datac => \u4|Equal0~2_combout\,
	datad => \u4|Equal0~3_combout\,
	combout => \u4|Equal0~4_combout\);

-- Location: LCCOMB_X39_Y14_N28
\u4|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal0~7_combout\ = (!\u4|address_reg\(6) & (\u4|address_reg\(0) & (\u4|Equal0~6_combout\ & \u4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(6),
	datab => \u4|address_reg\(0),
	datac => \u4|Equal0~6_combout\,
	datad => \u4|Equal0~4_combout\,
	combout => \u4|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y14_N20
\u4|sample_start_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|sample_start_r~feeder_combout\ = \u4|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|Equal0~7_combout\,
	combout => \u4|sample_start_r~feeder_combout\);

-- Location: FF_X39_Y14_N21
\u4|sample_start_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|wrn~clkctrl_outclk\,
	d => \u4|sample_start_r~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|sample_start_r~q\);

-- Location: LCCOMB_X15_Y22_N16
\u5|sample_start_r1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|sample_start_r1~feeder_combout\ = \u4|sample_start_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|sample_start_r~q\,
	combout => \u5|sample_start_r1~feeder_combout\);

-- Location: FF_X15_Y22_N17
\u5|sample_start_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|sample_start_r1~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|sample_start_r1~q\);

-- Location: FF_X15_Y25_N23
\u5|sample_start_r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u5|sample_start_r1~q\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|sample_start_r2~q\);

-- Location: FF_X15_Y25_N21
\u5|sample_start_r3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u5|sample_start_r2~q\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|sample_start_r3~q\);

-- Location: LCCOMB_X15_Y25_N20
\u5|address[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[11]~12_combout\ = (\u2|rsn~2_combout\) # ((\u5|sample_start_r1~q\ & !\u5|sample_start_r3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|sample_start_r1~q\,
	datac => \u5|sample_start_r3~q\,
	datad => \u2|rsn~2_combout\,
	combout => \u5|address[11]~12_combout\);

-- Location: LCCOMB_X16_Y25_N6
\u5|address[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[2]~19_combout\ = (\u5|address\(2) & (\u5|address[1]~18\ $ (GND))) # (!\u5|address\(2) & (!\u5|address[1]~18\ & VCC))
-- \u5|address[2]~20\ = CARRY((\u5|address\(2) & !\u5|address[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|address\(2),
	datad => VCC,
	cin => \u5|address[1]~18\,
	combout => \u5|address[2]~19_combout\,
	cout => \u5|address[2]~20\);

-- Location: LCCOMB_X16_Y25_N8
\u5|address[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[3]~21_combout\ = (\u5|address\(3) & (!\u5|address[2]~20\)) # (!\u5|address\(3) & ((\u5|address[2]~20\) # (GND)))
-- \u5|address[3]~22\ = CARRY((!\u5|address[2]~20\) # (!\u5|address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|address\(3),
	datad => VCC,
	cin => \u5|address[2]~20\,
	combout => \u5|address[3]~21_combout\,
	cout => \u5|address[3]~22\);

-- Location: LCCOMB_X16_Y25_N26
\u5|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal9~1_combout\ = (((!\u5|address\(4)) # (!\u5|address\(6))) # (!\u5|address\(7))) # (!\u5|address\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|address\(5),
	datab => \u5|address\(7),
	datac => \u5|address\(6),
	datad => \u5|address\(4),
	combout => \u5|Equal9~1_combout\);

-- Location: LCCOMB_X17_Y25_N20
\u5|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal9~3_combout\ = (\u5|Equal9~1_combout\) # (\u5|Equal9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|Equal9~1_combout\,
	datad => \u5|Equal9~2_combout\,
	combout => \u5|Equal9~3_combout\);

-- Location: LCCOMB_X17_Y25_N10
\u5|wr_state[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|wr_state[1]~1_combout\ = (\u5|wr_state\(1)) # ((!\u5|Equal9~0_combout\ & (\u5|wr_state\(0) & !\u5|Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal9~0_combout\,
	datab => \u5|wr_state\(0),
	datac => \u5|wr_state\(1),
	datad => \u5|Equal9~3_combout\,
	combout => \u5|wr_state[1]~1_combout\);

-- Location: FF_X17_Y25_N11
\u5|wr_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|wr_state[1]~1_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|wr_state\(1));

-- Location: LCCOMB_X17_Y25_N18
\u5|address[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[0]~16_combout\ = (!\u5|wr_state\(1)) # (!\u5|wr_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|wr_state\(0),
	datad => \u5|wr_state\(1),
	combout => \u5|address[0]~16_combout\);

-- Location: FF_X16_Y25_N9
\u5|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[3]~21_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(3));

-- Location: LCCOMB_X16_Y25_N10
\u5|address[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[4]~23_combout\ = (\u5|address\(4) & (\u5|address[3]~22\ $ (GND))) # (!\u5|address\(4) & (!\u5|address[3]~22\ & VCC))
-- \u5|address[4]~24\ = CARRY((\u5|address\(4) & !\u5|address[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|address\(4),
	datad => VCC,
	cin => \u5|address[3]~22\,
	combout => \u5|address[4]~23_combout\,
	cout => \u5|address[4]~24\);

-- Location: FF_X16_Y25_N11
\u5|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[4]~23_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(4));

-- Location: LCCOMB_X16_Y25_N12
\u5|address[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[5]~25_combout\ = (\u5|address\(5) & (!\u5|address[4]~24\)) # (!\u5|address\(5) & ((\u5|address[4]~24\) # (GND)))
-- \u5|address[5]~26\ = CARRY((!\u5|address[4]~24\) # (!\u5|address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|address\(5),
	datad => VCC,
	cin => \u5|address[4]~24\,
	combout => \u5|address[5]~25_combout\,
	cout => \u5|address[5]~26\);

-- Location: FF_X16_Y25_N13
\u5|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[5]~25_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(5));

-- Location: LCCOMB_X16_Y25_N14
\u5|address[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[6]~27_combout\ = (\u5|address\(6) & (\u5|address[5]~26\ $ (GND))) # (!\u5|address\(6) & (!\u5|address[5]~26\ & VCC))
-- \u5|address[6]~28\ = CARRY((\u5|address\(6) & !\u5|address[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|address\(6),
	datad => VCC,
	cin => \u5|address[5]~26\,
	combout => \u5|address[6]~27_combout\,
	cout => \u5|address[6]~28\);

-- Location: FF_X16_Y25_N15
\u5|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[6]~27_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(6));

-- Location: LCCOMB_X16_Y25_N16
\u5|address[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[7]~29_combout\ = (\u5|address\(7) & (!\u5|address[6]~28\)) # (!\u5|address\(7) & ((\u5|address[6]~28\) # (GND)))
-- \u5|address[7]~30\ = CARRY((!\u5|address[6]~28\) # (!\u5|address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|address\(7),
	datad => VCC,
	cin => \u5|address[6]~28\,
	combout => \u5|address[7]~29_combout\,
	cout => \u5|address[7]~30\);

-- Location: FF_X16_Y25_N17
\u5|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[7]~29_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(7));

-- Location: LCCOMB_X16_Y25_N18
\u5|address[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[8]~31_combout\ = (\u5|address\(8) & (\u5|address[7]~30\ $ (GND))) # (!\u5|address\(8) & (!\u5|address[7]~30\ & VCC))
-- \u5|address[8]~32\ = CARRY((\u5|address\(8) & !\u5|address[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|address\(8),
	datad => VCC,
	cin => \u5|address[7]~30\,
	combout => \u5|address[8]~31_combout\,
	cout => \u5|address[8]~32\);

-- Location: FF_X16_Y25_N19
\u5|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[8]~31_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(8));

-- Location: LCCOMB_X16_Y25_N20
\u5|address[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[9]~33_combout\ = (\u5|address\(9) & (!\u5|address[8]~32\)) # (!\u5|address\(9) & ((\u5|address[8]~32\) # (GND)))
-- \u5|address[9]~34\ = CARRY((!\u5|address[8]~32\) # (!\u5|address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|address\(9),
	datad => VCC,
	cin => \u5|address[8]~32\,
	combout => \u5|address[9]~33_combout\,
	cout => \u5|address[9]~34\);

-- Location: FF_X16_Y25_N21
\u5|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[9]~33_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(9));

-- Location: LCCOMB_X16_Y25_N22
\u5|address[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[10]~35_combout\ = (\u5|address\(10) & (\u5|address[9]~34\ $ (GND))) # (!\u5|address\(10) & (!\u5|address[9]~34\ & VCC))
-- \u5|address[10]~36\ = CARRY((\u5|address\(10) & !\u5|address[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|address\(10),
	datad => VCC,
	cin => \u5|address[9]~34\,
	combout => \u5|address[10]~35_combout\,
	cout => \u5|address[10]~36\);

-- Location: FF_X16_Y25_N23
\u5|address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[10]~35_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(10));

-- Location: LCCOMB_X16_Y25_N24
\u5|address[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[11]~37_combout\ = \u5|address\(11) $ (\u5|address[10]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|address\(11),
	cin => \u5|address[10]~36\,
	combout => \u5|address[11]~37_combout\);

-- Location: FF_X16_Y25_N25
\u5|address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[11]~37_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(11));

-- Location: LCCOMB_X16_Y25_N28
\u5|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal9~2_combout\ = (\u5|address\(10)) # (((\u5|address\(11)) # (!\u5|address\(8))) # (!\u5|address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|address\(10),
	datab => \u5|address\(9),
	datac => \u5|address\(11),
	datad => \u5|address\(8),
	combout => \u5|Equal9~2_combout\);

-- Location: LCCOMB_X16_Y25_N30
\u5|address[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[0]~15_combout\ = ((!\u5|Equal9~2_combout\ & (!\u5|Equal9~1_combout\ & !\u5|Equal9~0_combout\))) # (!\u5|wr_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|wr_state\(0),
	datab => \u5|Equal9~2_combout\,
	datac => \u5|Equal9~1_combout\,
	datad => \u5|Equal9~0_combout\,
	combout => \u5|address[0]~15_combout\);

-- Location: FF_X16_Y25_N3
\u5|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[0]~13_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(0));

-- Location: LCCOMB_X16_Y25_N4
\u5|address[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|address[1]~17_combout\ = (\u5|address\(1) & (!\u5|address[0]~14\)) # (!\u5|address\(1) & ((\u5|address[0]~14\) # (GND)))
-- \u5|address[1]~18\ = CARRY((!\u5|address[0]~14\) # (!\u5|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|address\(1),
	datad => VCC,
	cin => \u5|address[0]~14\,
	combout => \u5|address[1]~17_combout\,
	cout => \u5|address[1]~18\);

-- Location: FF_X16_Y25_N5
\u5|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[1]~17_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(1));

-- Location: FF_X16_Y25_N7
\u5|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|address[2]~19_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sclr => \u5|address[0]~15_combout\,
	ena => \u5|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|address\(2));

-- Location: LCCOMB_X16_Y25_N0
\u5|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal9~0_combout\ = (((!\u5|address\(0)) # (!\u5|address\(3))) # (!\u5|address\(1))) # (!\u5|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|address\(2),
	datab => \u5|address\(1),
	datac => \u5|address\(3),
	datad => \u5|address\(0),
	combout => \u5|Equal9~0_combout\);

-- Location: LCCOMB_X17_Y25_N24
\u5|wr_state[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|wr_state[0]~0_combout\ = (\u5|Equal9~0_combout\) # ((\u5|wr_state\(1)) # ((\u5|Equal9~1_combout\) # (\u5|Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal9~0_combout\,
	datab => \u5|wr_state\(1),
	datac => \u5|Equal9~1_combout\,
	datad => \u5|Equal9~2_combout\,
	combout => \u5|wr_state[0]~0_combout\);

-- Location: LCCOMB_X17_Y25_N0
\u5|wr_state[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|wr_state[0]~feeder_combout\ = \u5|wr_state[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|wr_state[0]~0_combout\,
	combout => \u5|wr_state[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y25_N22
\u5|wr_state[1]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|wr_state[1]~_wirecell_combout\ = !\u5|wr_state\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|wr_state\(1),
	combout => \u5|wr_state[1]~_wirecell_combout\);

-- Location: FF_X17_Y25_N1
\u5|wr_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \busy~input_o\,
	d => \u5|wr_state[0]~feeder_combout\,
	asdata => \u5|wr_state[1]~_wirecell_combout\,
	clrn => \u5|ALT_INV_address[11]~12_combout\,
	sload => \u5|ALT_INV_wr_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|wr_state\(0));

-- Location: LCCOMB_X39_Y14_N12
\u4|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal2~0_combout\ = (\u4|address_reg\(5) & (\u4|address_reg\(4) & (!\u4|address_reg\(6) & \u4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(5),
	datab => \u4|address_reg\(4),
	datac => \u4|address_reg\(6),
	datad => \u4|Equal0~4_combout\,
	combout => \u4|Equal2~0_combout\);

-- Location: LCCOMB_X39_Y14_N6
\u4|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal2~1_combout\ = (\u4|address_reg\(2) & (\u4|address_reg\(0) & (\u4|address_reg\(1) & !\u4|address_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(2),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(1),
	datad => \u4|address_reg\(3),
	combout => \u4|Equal2~1_combout\);

-- Location: LCCOMB_X39_Y14_N0
\u4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Equal1~0_combout\ = (!\u4|address_reg\(6) & (!\u4|address_reg\(0) & (\u4|Equal0~6_combout\ & \u4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(6),
	datab => \u4|address_reg\(0),
	datac => \u4|Equal0~6_combout\,
	datad => \u4|Equal0~4_combout\,
	combout => \u4|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y14_N22
\u4|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Selector0~0_combout\ = (\u4|Equal2~0_combout\ & ((\u4|Equal2~1_combout\) # ((\u4|ad7606_read_start_r~q\ & !\u4|Equal1~0_combout\)))) # (!\u4|Equal2~0_combout\ & (((\u4|ad7606_read_start_r~q\ & !\u4|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal2~0_combout\,
	datab => \u4|Equal2~1_combout\,
	datac => \u4|ad7606_read_start_r~q\,
	datad => \u4|Equal1~0_combout\,
	combout => \u4|Selector0~0_combout\);

-- Location: FF_X39_Y14_N23
\u4|ad7606_read_start_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|wrn~clkctrl_outclk\,
	d => \u4|Selector0~0_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|ad7606_read_start_r~q\);

-- Location: LCCOMB_X38_Y14_N20
\u5|read_start_r1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|read_start_r1~feeder_combout\ = \u4|ad7606_read_start_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|ad7606_read_start_r~q\,
	combout => \u5|read_start_r1~feeder_combout\);

-- Location: FF_X38_Y14_N21
\u5|read_start_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|read_start_r1~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|read_start_r1~q\);

-- Location: FF_X20_Y25_N29
\u5|read_start_r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u5|read_start_r1~q\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|read_start_r2~q\);

-- Location: FF_X20_Y25_N1
\u5|read_start_r3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u5|read_start_r2~q\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|read_start_r3~q\);

-- Location: LCCOMB_X20_Y25_N0
\u5|read_up\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|read_up~combout\ = (!\u5|read_start_r3~q\ & \u5|read_start_r2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|read_start_r3~q\,
	datad => \u5|read_start_r2~q\,
	combout => \u5|read_up~combout\);

-- Location: LCCOMB_X21_Y25_N12
\u5|rden_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rden_r~1_combout\ = (!\u2|rsn~2_combout\ & ((\u5|read_up~combout\) # (\u5|rden_r~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|rsn~2_combout\,
	datac => \u5|read_up~combout\,
	datad => \u5|rden_r~1_combout\,
	combout => \u5|rden_r~1_combout\);

-- Location: IOIBUF_X41_Y13_N15
\fsmc_rd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_rd,
	o => \fsmc_rd~input_o\);

-- Location: LCCOMB_X40_Y14_N22
\u4|read_clk\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|read_clk~combout\ = LCELL((\fsmc_rd~input_o\) # (\fsmc_cs~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsmc_rd~input_o\,
	datad => \fsmc_cs~input_o\,
	combout => \u4|read_clk~combout\);

-- Location: CLKCTRL_G7
\u4|read_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u4|read_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u4|read_clk~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y25_N2
\u5|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~0_combout\ = \u5|ram_rdaddress_r\(0) $ (VCC)
-- \u5|Add10~1\ = CARRY(\u5|ram_rdaddress_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|ram_rdaddress_r\(0),
	datad => VCC,
	combout => \u5|Add10~0_combout\,
	cout => \u5|Add10~1\);

-- Location: LCCOMB_X20_Y25_N28
\u5|ram_rdaddress_r[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|ram_rdaddress_r[11]~0_combout\ = (\u5|read_up~combout\) # (\u2|rsn~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|read_up~combout\,
	datad => \u2|rsn~2_combout\,
	combout => \u5|ram_rdaddress_r[11]~0_combout\);

-- Location: FF_X20_Y25_N3
\u5|ram_rdaddress_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~0_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(0));

-- Location: LCCOMB_X20_Y25_N4
\u5|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~2_combout\ = (\u5|ram_rdaddress_r\(1) & (!\u5|Add10~1\)) # (!\u5|ram_rdaddress_r\(1) & ((\u5|Add10~1\) # (GND)))
-- \u5|Add10~3\ = CARRY((!\u5|Add10~1\) # (!\u5|ram_rdaddress_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ram_rdaddress_r\(1),
	datad => VCC,
	cin => \u5|Add10~1\,
	combout => \u5|Add10~2_combout\,
	cout => \u5|Add10~3\);

-- Location: FF_X20_Y25_N5
\u5|ram_rdaddress_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~2_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(1));

-- Location: LCCOMB_X20_Y25_N6
\u5|Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~4_combout\ = (\u5|ram_rdaddress_r\(2) & (\u5|Add10~3\ $ (GND))) # (!\u5|ram_rdaddress_r\(2) & (!\u5|Add10~3\ & VCC))
-- \u5|Add10~5\ = CARRY((\u5|ram_rdaddress_r\(2) & !\u5|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ram_rdaddress_r\(2),
	datad => VCC,
	cin => \u5|Add10~3\,
	combout => \u5|Add10~4_combout\,
	cout => \u5|Add10~5\);

-- Location: FF_X20_Y25_N7
\u5|ram_rdaddress_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~4_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(2));

-- Location: LCCOMB_X20_Y25_N8
\u5|Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~6_combout\ = (\u5|ram_rdaddress_r\(3) & (!\u5|Add10~5\)) # (!\u5|ram_rdaddress_r\(3) & ((\u5|Add10~5\) # (GND)))
-- \u5|Add10~7\ = CARRY((!\u5|Add10~5\) # (!\u5|ram_rdaddress_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ram_rdaddress_r\(3),
	datad => VCC,
	cin => \u5|Add10~5\,
	combout => \u5|Add10~6_combout\,
	cout => \u5|Add10~7\);

-- Location: FF_X20_Y25_N9
\u5|ram_rdaddress_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~6_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(3));

-- Location: LCCOMB_X20_Y25_N10
\u5|Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~8_combout\ = (\u5|ram_rdaddress_r\(4) & (\u5|Add10~7\ $ (GND))) # (!\u5|ram_rdaddress_r\(4) & (!\u5|Add10~7\ & VCC))
-- \u5|Add10~9\ = CARRY((\u5|ram_rdaddress_r\(4) & !\u5|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ram_rdaddress_r\(4),
	datad => VCC,
	cin => \u5|Add10~7\,
	combout => \u5|Add10~8_combout\,
	cout => \u5|Add10~9\);

-- Location: FF_X20_Y25_N11
\u5|ram_rdaddress_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~8_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(4));

-- Location: LCCOMB_X20_Y25_N12
\u5|Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~10_combout\ = (\u5|ram_rdaddress_r\(5) & (!\u5|Add10~9\)) # (!\u5|ram_rdaddress_r\(5) & ((\u5|Add10~9\) # (GND)))
-- \u5|Add10~11\ = CARRY((!\u5|Add10~9\) # (!\u5|ram_rdaddress_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ram_rdaddress_r\(5),
	datad => VCC,
	cin => \u5|Add10~9\,
	combout => \u5|Add10~10_combout\,
	cout => \u5|Add10~11\);

-- Location: FF_X20_Y25_N13
\u5|ram_rdaddress_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~10_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(5));

-- Location: LCCOMB_X20_Y25_N14
\u5|Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~12_combout\ = (\u5|ram_rdaddress_r\(6) & (\u5|Add10~11\ $ (GND))) # (!\u5|ram_rdaddress_r\(6) & (!\u5|Add10~11\ & VCC))
-- \u5|Add10~13\ = CARRY((\u5|ram_rdaddress_r\(6) & !\u5|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ram_rdaddress_r\(6),
	datad => VCC,
	cin => \u5|Add10~11\,
	combout => \u5|Add10~12_combout\,
	cout => \u5|Add10~13\);

-- Location: FF_X20_Y25_N15
\u5|ram_rdaddress_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~12_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(6));

-- Location: LCCOMB_X20_Y25_N16
\u5|Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~14_combout\ = (\u5|ram_rdaddress_r\(7) & (!\u5|Add10~13\)) # (!\u5|ram_rdaddress_r\(7) & ((\u5|Add10~13\) # (GND)))
-- \u5|Add10~15\ = CARRY((!\u5|Add10~13\) # (!\u5|ram_rdaddress_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ram_rdaddress_r\(7),
	datad => VCC,
	cin => \u5|Add10~13\,
	combout => \u5|Add10~14_combout\,
	cout => \u5|Add10~15\);

-- Location: FF_X20_Y25_N17
\u5|ram_rdaddress_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~14_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(7));

-- Location: LCCOMB_X21_Y25_N14
\u5|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal10~1_combout\ = (\u5|ram_rdaddress_r\(5) & (\u5|ram_rdaddress_r\(6) & (\u5|ram_rdaddress_r\(7) & \u5|ram_rdaddress_r\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ram_rdaddress_r\(5),
	datab => \u5|ram_rdaddress_r\(6),
	datac => \u5|ram_rdaddress_r\(7),
	datad => \u5|ram_rdaddress_r\(4),
	combout => \u5|Equal10~1_combout\);

-- Location: LCCOMB_X20_Y25_N18
\u5|Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~16_combout\ = (\u5|ram_rdaddress_r\(8) & (\u5|Add10~15\ $ (GND))) # (!\u5|ram_rdaddress_r\(8) & (!\u5|Add10~15\ & VCC))
-- \u5|Add10~17\ = CARRY((\u5|ram_rdaddress_r\(8) & !\u5|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ram_rdaddress_r\(8),
	datad => VCC,
	cin => \u5|Add10~15\,
	combout => \u5|Add10~16_combout\,
	cout => \u5|Add10~17\);

-- Location: FF_X20_Y25_N19
\u5|ram_rdaddress_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~16_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(8));

-- Location: LCCOMB_X20_Y25_N20
\u5|Add10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~18_combout\ = (\u5|ram_rdaddress_r\(9) & (!\u5|Add10~17\)) # (!\u5|ram_rdaddress_r\(9) & ((\u5|Add10~17\) # (GND)))
-- \u5|Add10~19\ = CARRY((!\u5|Add10~17\) # (!\u5|ram_rdaddress_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ram_rdaddress_r\(9),
	datad => VCC,
	cin => \u5|Add10~17\,
	combout => \u5|Add10~18_combout\,
	cout => \u5|Add10~19\);

-- Location: FF_X20_Y25_N21
\u5|ram_rdaddress_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~18_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(9));

-- Location: LCCOMB_X20_Y25_N22
\u5|Add10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~20_combout\ = (\u5|ram_rdaddress_r\(10) & (\u5|Add10~19\ $ (GND))) # (!\u5|ram_rdaddress_r\(10) & (!\u5|Add10~19\ & VCC))
-- \u5|Add10~21\ = CARRY((\u5|ram_rdaddress_r\(10) & !\u5|Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ram_rdaddress_r\(10),
	datad => VCC,
	cin => \u5|Add10~19\,
	combout => \u5|Add10~20_combout\,
	cout => \u5|Add10~21\);

-- Location: LCCOMB_X21_Y25_N16
\u5|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal10~2_combout\ = (\u5|ram_rdaddress_r\(0) & (\u5|ram_rdaddress_r\(1) & (\u5|ram_rdaddress_r\(2) & \u5|ram_rdaddress_r\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ram_rdaddress_r\(0),
	datab => \u5|ram_rdaddress_r\(1),
	datac => \u5|ram_rdaddress_r\(2),
	datad => \u5|ram_rdaddress_r\(3),
	combout => \u5|Equal10~2_combout\);

-- Location: LCCOMB_X20_Y25_N26
\u5|ram_rdaddress_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|ram_rdaddress_r~1_combout\ = (\u5|Add10~20_combout\ & (((!\u5|Equal10~2_combout\) # (!\u5|Equal10~1_combout\)) # (!\u5|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal10~0_combout\,
	datab => \u5|Equal10~1_combout\,
	datac => \u5|Add10~20_combout\,
	datad => \u5|Equal10~2_combout\,
	combout => \u5|ram_rdaddress_r~1_combout\);

-- Location: FF_X20_Y25_N27
\u5|ram_rdaddress_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|ram_rdaddress_r~1_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(10));

-- Location: LCCOMB_X20_Y25_N24
\u5|Add10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add10~22_combout\ = \u5|ram_rdaddress_r\(11) $ (\u5|Add10~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ram_rdaddress_r\(11),
	cin => \u5|Add10~21\,
	combout => \u5|Add10~22_combout\);

-- Location: FF_X20_Y25_N25
\u5|ram_rdaddress_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|Add10~22_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ram_rdaddress_r\(11));

-- Location: LCCOMB_X20_Y25_N30
\u5|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal10~0_combout\ = (!\u5|ram_rdaddress_r\(10) & (\u5|ram_rdaddress_r\(9) & (!\u5|ram_rdaddress_r\(11) & \u5|ram_rdaddress_r\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ram_rdaddress_r\(10),
	datab => \u5|ram_rdaddress_r\(9),
	datac => \u5|ram_rdaddress_r\(11),
	datad => \u5|ram_rdaddress_r\(8),
	combout => \u5|Equal10~0_combout\);

-- Location: LCCOMB_X21_Y25_N22
\u5|rden_r~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rden_r~7_combout\ = ((!\u5|Equal10~2_combout\) # (!\u5|Equal10~1_combout\)) # (!\u5|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Equal10~0_combout\,
	datac => \u5|Equal10~1_combout\,
	datad => \u5|Equal10~2_combout\,
	combout => \u5|rden_r~7_combout\);

-- Location: LCCOMB_X19_Y25_N30
\u5|rden_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rden_r~3_combout\ = \u5|rden_r~1_combout\ $ (((\u5|rden_r~2_combout\ & \u5|rden_r~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rden_r~1_combout\,
	datac => \u5|rden_r~2_combout\,
	datad => \u5|rden_r~7_combout\,
	combout => \u5|rden_r~3_combout\);

-- Location: FF_X19_Y25_N31
\u5|rden_r~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|rden_r~3_combout\,
	clrn => \u5|ALT_INV_ram_rdaddress_r[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rden_r~_emulated_q\);

-- Location: LCCOMB_X19_Y25_N28
\u5|rden_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rden_r~2_combout\ = (!\u2|rsn~2_combout\ & ((\u5|read_up~combout\) # (\u5|rden_r~1_combout\ $ (\u5|rden_r~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rden_r~1_combout\,
	datab => \u5|read_up~combout\,
	datac => \u5|rden_r~_emulated_q\,
	datad => \u2|rsn~2_combout\,
	combout => \u5|rden_r~2_combout\);

-- Location: FF_X19_Y25_N29
\u5|u8|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	d => \u5|rden_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|u8|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X19_Y25_N4
\u5|u1|altsyncram_component|auto_generated|ram_block1a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\ = (\u5|u8|altsyncram_component|auto_generated|rden_b_store~q\) # (\u5|rden_r~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|rden_b_store~q\,
	datad => \u5|rden_r~2_combout\,
	combout => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\);

-- Location: LCCOMB_X36_Y26_N10
\u5|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add8~0_combout\ = \u5|rd_high_cnt\(0) $ (VCC)
-- \u5|Add8~1\ = CARRY(\u5|rd_high_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_high_cnt\(0),
	datad => VCC,
	combout => \u5|Add8~0_combout\,
	cout => \u5|Add8~1\);

-- Location: LCCOMB_X36_Y26_N12
\u5|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add8~2_combout\ = (\u5|rd_high_cnt\(1) & (!\u5|Add8~1\)) # (!\u5|rd_high_cnt\(1) & ((\u5|Add8~1\) # (GND)))
-- \u5|Add8~3\ = CARRY((!\u5|Add8~1\) # (!\u5|rd_high_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_high_cnt\(1),
	datad => VCC,
	cin => \u5|Add8~1\,
	combout => \u5|Add8~2_combout\,
	cout => \u5|Add8~3\);

-- Location: LCCOMB_X36_Y26_N0
\u5|rd_high_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rd_high_cnt~0_combout\ = (\u5|Add8~2_combout\ & ((!\u5|Equal7~0_combout\) # (!\u5|rd_high_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_high_cnt\(0),
	datac => \u5|Equal7~0_combout\,
	datad => \u5|Add8~2_combout\,
	combout => \u5|rd_high_cnt~0_combout\);

-- Location: FF_X36_Y26_N1
\u5|rd_high_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|rd_high_cnt~0_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_high_cnt\(1));

-- Location: LCCOMB_X36_Y26_N14
\u5|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add8~4_combout\ = (\u5|rd_high_cnt\(2) & (\u5|Add8~3\ $ (GND))) # (!\u5|rd_high_cnt\(2) & (!\u5|Add8~3\ & VCC))
-- \u5|Add8~5\ = CARRY((\u5|rd_high_cnt\(2) & !\u5|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_high_cnt\(2),
	datad => VCC,
	cin => \u5|Add8~3\,
	combout => \u5|Add8~4_combout\,
	cout => \u5|Add8~5\);

-- Location: FF_X36_Y26_N15
\u5|rd_high_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add8~4_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_high_cnt\(2));

-- Location: LCCOMB_X36_Y26_N16
\u5|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add8~6_combout\ = (\u5|rd_high_cnt\(3) & (!\u5|Add8~5\)) # (!\u5|rd_high_cnt\(3) & ((\u5|Add8~5\) # (GND)))
-- \u5|Add8~7\ = CARRY((!\u5|Add8~5\) # (!\u5|rd_high_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_high_cnt\(3),
	datad => VCC,
	cin => \u5|Add8~5\,
	combout => \u5|Add8~6_combout\,
	cout => \u5|Add8~7\);

-- Location: FF_X36_Y26_N17
\u5|rd_high_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add8~6_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_high_cnt\(3));

-- Location: LCCOMB_X36_Y26_N18
\u5|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add8~8_combout\ = \u5|rd_high_cnt\(4) $ (!\u5|Add8~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_high_cnt\(4),
	cin => \u5|Add8~7\,
	combout => \u5|Add8~8_combout\);

-- Location: FF_X36_Y26_N19
\u5|rd_high_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add8~8_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_high_cnt\(4));

-- Location: LCCOMB_X36_Y26_N30
\u5|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal7~0_combout\ = (!\u5|rd_high_cnt\(3) & (!\u5|rd_high_cnt\(1) & (!\u5|rd_high_cnt\(2) & !\u5|rd_high_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_high_cnt\(3),
	datab => \u5|rd_high_cnt\(1),
	datac => \u5|rd_high_cnt\(2),
	datad => \u5|rd_high_cnt\(4),
	combout => \u5|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y26_N26
\u5|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector5~0_combout\ = (\u5|command.00010~q\ & ((!\u5|Equal7~0_combout\) # (!\u5|rd_high_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_high_cnt\(0),
	datac => \u5|Equal7~0_combout\,
	datad => \u5|command.00010~q\,
	combout => \u5|Selector5~0_combout\);

-- Location: LCCOMB_X37_Y26_N18
\u5|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add6~0_combout\ = \u5|rd_low_cnt\(0) $ (VCC)
-- \u5|Add6~1\ = CARRY(\u5|rd_low_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_low_cnt\(0),
	datad => VCC,
	combout => \u5|Add6~0_combout\,
	cout => \u5|Add6~1\);

-- Location: LCCOMB_X37_Y26_N4
\u5|rd_low_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rd_low_cnt~0_combout\ = (\u5|Add6~0_combout\ & ((\u5|rd_low_cnt\(0)) # (!\u5|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal6~0_combout\,
	datab => \u5|Add6~0_combout\,
	datac => \u5|rd_low_cnt\(0),
	combout => \u5|rd_low_cnt~0_combout\);

-- Location: LCCOMB_X20_Y24_N16
\u5|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add7~0_combout\ = \u5|rd_cnt\(0) $ (VCC)
-- \u5|Add7~1\ = CARRY(\u5|rd_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(0),
	datad => VCC,
	combout => \u5|Add7~0_combout\,
	cout => \u5|Add7~1\);

-- Location: FF_X20_Y24_N5
\u5|rd_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u5|Add7~0_combout\,
	clrn => \ALT_INV_busy~input_o\,
	sload => VCC,
	ena => \u5|rd_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_cnt\(0));

-- Location: LCCOMB_X20_Y24_N18
\u5|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add7~2_combout\ = (\u5|rd_cnt\(1) & (!\u5|Add7~1\)) # (!\u5|rd_cnt\(1) & ((\u5|Add7~1\) # (GND)))
-- \u5|Add7~3\ = CARRY((!\u5|Add7~1\) # (!\u5|rd_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(1),
	datad => VCC,
	cin => \u5|Add7~1\,
	combout => \u5|Add7~2_combout\,
	cout => \u5|Add7~3\);

-- Location: FF_X20_Y24_N3
\u5|rd_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u5|Add7~2_combout\,
	clrn => \ALT_INV_busy~input_o\,
	sload => VCC,
	ena => \u5|rd_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_cnt\(1));

-- Location: LCCOMB_X20_Y24_N20
\u5|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add7~4_combout\ = (\u5|rd_cnt\(2) & (\u5|Add7~3\ $ (GND))) # (!\u5|rd_cnt\(2) & (!\u5|Add7~3\ & VCC))
-- \u5|Add7~5\ = CARRY((\u5|rd_cnt\(2) & !\u5|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(2),
	datad => VCC,
	cin => \u5|Add7~3\,
	combout => \u5|Add7~4_combout\,
	cout => \u5|Add7~5\);

-- Location: FF_X20_Y24_N29
\u5|rd_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u5|Add7~4_combout\,
	clrn => \ALT_INV_busy~input_o\,
	sload => VCC,
	ena => \u5|rd_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_cnt\(2));

-- Location: LCCOMB_X20_Y24_N22
\u5|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add7~6_combout\ = (\u5|rd_cnt\(3) & (!\u5|Add7~5\)) # (!\u5|rd_cnt\(3) & ((\u5|Add7~5\) # (GND)))
-- \u5|Add7~7\ = CARRY((!\u5|Add7~5\) # (!\u5|rd_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(3),
	datad => VCC,
	cin => \u5|Add7~5\,
	combout => \u5|Add7~6_combout\,
	cout => \u5|Add7~7\);

-- Location: LCCOMB_X20_Y24_N14
\u5|rd_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rd_cnt~1_combout\ = (\u5|Add7~6_combout\ & (((!\u5|Equal8~0_combout\) # (!\u5|rd_cnt\(0))) # (!\u5|rd_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_cnt\(1),
	datab => \u5|rd_cnt\(0),
	datac => \u5|Add7~6_combout\,
	datad => \u5|Equal8~0_combout\,
	combout => \u5|rd_cnt~1_combout\);

-- Location: FF_X20_Y24_N15
\u5|rd_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|rd_cnt~1_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|rd_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_cnt\(3));

-- Location: LCCOMB_X20_Y24_N24
\u5|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add7~8_combout\ = \u5|rd_cnt\(4) $ (!\u5|Add7~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_cnt\(4),
	cin => \u5|Add7~7\,
	combout => \u5|Add7~8_combout\);

-- Location: FF_X20_Y24_N25
\u5|rd_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add7~8_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|rd_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_cnt\(4));

-- Location: LCCOMB_X20_Y24_N8
\u5|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal8~0_combout\ = (!\u5|rd_cnt\(4) & (!\u5|rd_cnt\(3) & \u5|rd_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(4),
	datac => \u5|rd_cnt\(3),
	datad => \u5|rd_cnt\(2),
	combout => \u5|Equal8~0_combout\);

-- Location: LCCOMB_X20_Y24_N30
\u5|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal8~1_combout\ = (\u5|rd_cnt\(0) & (\u5|rd_cnt\(1) & \u5|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(0),
	datac => \u5|rd_cnt\(1),
	datad => \u5|Equal8~0_combout\,
	combout => \u5|Equal8~1_combout\);

-- Location: LCCOMB_X37_Y26_N6
\u5|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add5~0_combout\ = \u5|invalid_cnt\(0) $ (VCC)
-- \u5|Add5~1\ = CARRY(\u5|invalid_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|invalid_cnt\(0),
	datad => VCC,
	combout => \u5|Add5~0_combout\,
	cout => \u5|Add5~1\);

-- Location: LCCOMB_X37_Y26_N8
\u5|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add5~2_combout\ = (\u5|invalid_cnt\(1) & (!\u5|Add5~1\)) # (!\u5|invalid_cnt\(1) & ((\u5|Add5~1\) # (GND)))
-- \u5|Add5~3\ = CARRY((!\u5|Add5~1\) # (!\u5|invalid_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|invalid_cnt\(1),
	datad => VCC,
	cin => \u5|Add5~1\,
	combout => \u5|Add5~2_combout\,
	cout => \u5|Add5~3\);

-- Location: LCCOMB_X36_Y26_N20
\u5|command.00000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|command.00000~0_combout\ = (\u5|command.00000~q\) # ((!\u5|invalid_cnt\(0) & \u5|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|invalid_cnt\(0),
	datac => \u5|command.00000~q\,
	datad => \u5|Equal5~0_combout\,
	combout => \u5|command.00000~0_combout\);

-- Location: FF_X36_Y26_N21
\u5|command.00000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|command.00000~0_combout\,
	clrn => \ALT_INV_busy~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|command.00000~q\);

-- Location: FF_X37_Y26_N9
\u5|invalid_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add5~2_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|ALT_INV_command.00000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|invalid_cnt\(1));

-- Location: LCCOMB_X37_Y26_N10
\u5|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add5~4_combout\ = (\u5|invalid_cnt\(2) & (\u5|Add5~3\ $ (GND))) # (!\u5|invalid_cnt\(2) & (!\u5|Add5~3\ & VCC))
-- \u5|Add5~5\ = CARRY((\u5|invalid_cnt\(2) & !\u5|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|invalid_cnt\(2),
	datad => VCC,
	cin => \u5|Add5~3\,
	combout => \u5|Add5~4_combout\,
	cout => \u5|Add5~5\);

-- Location: LCCOMB_X37_Y26_N0
\u5|invalid_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|invalid_cnt~0_combout\ = (\u5|Add5~4_combout\ & ((\u5|invalid_cnt\(0)) # (!\u5|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add5~4_combout\,
	datac => \u5|invalid_cnt\(0),
	datad => \u5|Equal5~0_combout\,
	combout => \u5|invalid_cnt~0_combout\);

-- Location: FF_X37_Y26_N1
\u5|invalid_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|invalid_cnt~0_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|ALT_INV_command.00000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|invalid_cnt\(2));

-- Location: LCCOMB_X37_Y26_N12
\u5|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add5~6_combout\ = (\u5|invalid_cnt\(3) & (!\u5|Add5~5\)) # (!\u5|invalid_cnt\(3) & ((\u5|Add5~5\) # (GND)))
-- \u5|Add5~7\ = CARRY((!\u5|Add5~5\) # (!\u5|invalid_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|invalid_cnt\(3),
	datad => VCC,
	cin => \u5|Add5~5\,
	combout => \u5|Add5~6_combout\,
	cout => \u5|Add5~7\);

-- Location: FF_X37_Y26_N13
\u5|invalid_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add5~6_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|ALT_INV_command.00000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|invalid_cnt\(3));

-- Location: LCCOMB_X37_Y26_N14
\u5|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add5~8_combout\ = \u5|invalid_cnt\(4) $ (!\u5|Add5~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|invalid_cnt\(4),
	cin => \u5|Add5~7\,
	combout => \u5|Add5~8_combout\);

-- Location: FF_X37_Y26_N15
\u5|invalid_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add5~8_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|ALT_INV_command.00000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|invalid_cnt\(4));

-- Location: LCCOMB_X37_Y26_N16
\u5|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal5~0_combout\ = (!\u5|invalid_cnt\(3) & (!\u5|invalid_cnt\(4) & (!\u5|invalid_cnt\(1) & \u5|invalid_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|invalid_cnt\(3),
	datab => \u5|invalid_cnt\(4),
	datac => \u5|invalid_cnt\(1),
	datad => \u5|invalid_cnt\(2),
	combout => \u5|Equal5~0_combout\);

-- Location: LCCOMB_X37_Y26_N30
\u5|invalid_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|invalid_cnt~1_combout\ = (\u5|Add5~0_combout\ & ((\u5|invalid_cnt\(0)) # (!\u5|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal5~0_combout\,
	datac => \u5|invalid_cnt\(0),
	datad => \u5|Add5~0_combout\,
	combout => \u5|invalid_cnt~1_combout\);

-- Location: FF_X37_Y26_N31
\u5|invalid_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|invalid_cnt~1_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|ALT_INV_command.00000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|invalid_cnt\(0));

-- Location: LCCOMB_X36_Y26_N4
\u5|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector4~0_combout\ = (\u5|command.00001~q\ & ((\u5|rd_low_cnt\(0)) # (!\u5|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_low_cnt\(0),
	datab => \u5|Equal6~0_combout\,
	datad => \u5|command.00001~q\,
	combout => \u5|Selector4~0_combout\);

-- Location: LCCOMB_X36_Y26_N28
\u5|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector4~1_combout\ = (\u5|Selector4~0_combout\) # ((!\u5|invalid_cnt\(0) & (!\u5|command.00000~q\ & \u5|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|invalid_cnt\(0),
	datab => \u5|command.00000~q\,
	datac => \u5|Selector4~0_combout\,
	datad => \u5|Equal5~0_combout\,
	combout => \u5|Selector4~1_combout\);

-- Location: LCCOMB_X36_Y26_N24
\u5|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector4~2_combout\ = (\u5|Selector4~1_combout\) # ((\u5|rd_cnt[4]~0_combout\ & !\u5|Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt[4]~0_combout\,
	datac => \u5|Equal8~1_combout\,
	datad => \u5|Selector4~1_combout\,
	combout => \u5|Selector4~2_combout\);

-- Location: FF_X36_Y26_N25
\u5|command.00001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Selector4~2_combout\,
	clrn => \ALT_INV_busy~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|command.00001~q\);

-- Location: FF_X37_Y26_N5
\u5|rd_low_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|rd_low_cnt~0_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_low_cnt\(0));

-- Location: LCCOMB_X37_Y26_N20
\u5|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add6~2_combout\ = (\u5|rd_low_cnt\(1) & (!\u5|Add6~1\)) # (!\u5|rd_low_cnt\(1) & ((\u5|Add6~1\) # (GND)))
-- \u5|Add6~3\ = CARRY((!\u5|Add6~1\) # (!\u5|rd_low_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_low_cnt\(1),
	datad => VCC,
	cin => \u5|Add6~1\,
	combout => \u5|Add6~2_combout\,
	cout => \u5|Add6~3\);

-- Location: LCCOMB_X37_Y26_N2
\u5|rd_low_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rd_low_cnt~1_combout\ = (\u5|Add6~2_combout\ & ((\u5|rd_low_cnt\(0)) # (!\u5|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal6~0_combout\,
	datac => \u5|rd_low_cnt\(0),
	datad => \u5|Add6~2_combout\,
	combout => \u5|rd_low_cnt~1_combout\);

-- Location: FF_X37_Y26_N3
\u5|rd_low_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|rd_low_cnt~1_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_low_cnt\(1));

-- Location: LCCOMB_X37_Y26_N22
\u5|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add6~4_combout\ = (\u5|rd_low_cnt\(2) & (\u5|Add6~3\ $ (GND))) # (!\u5|rd_low_cnt\(2) & (!\u5|Add6~3\ & VCC))
-- \u5|Add6~5\ = CARRY((\u5|rd_low_cnt\(2) & !\u5|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_low_cnt\(2),
	datad => VCC,
	cin => \u5|Add6~3\,
	combout => \u5|Add6~4_combout\,
	cout => \u5|Add6~5\);

-- Location: FF_X37_Y26_N23
\u5|rd_low_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add6~4_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_low_cnt\(2));

-- Location: LCCOMB_X37_Y26_N24
\u5|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add6~6_combout\ = (\u5|rd_low_cnt\(3) & (!\u5|Add6~5\)) # (!\u5|rd_low_cnt\(3) & ((\u5|Add6~5\) # (GND)))
-- \u5|Add6~7\ = CARRY((!\u5|Add6~5\) # (!\u5|rd_low_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_low_cnt\(3),
	datad => VCC,
	cin => \u5|Add6~5\,
	combout => \u5|Add6~6_combout\,
	cout => \u5|Add6~7\);

-- Location: FF_X37_Y26_N25
\u5|rd_low_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add6~6_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_low_cnt\(3));

-- Location: LCCOMB_X37_Y26_N26
\u5|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add6~8_combout\ = \u5|rd_low_cnt\(4) $ (!\u5|Add6~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_low_cnt\(4),
	cin => \u5|Add6~7\,
	combout => \u5|Add6~8_combout\);

-- Location: FF_X37_Y26_N27
\u5|rd_low_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add6~8_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_low_cnt\(4));

-- Location: LCCOMB_X37_Y26_N28
\u5|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal6~0_combout\ = (!\u5|rd_low_cnt\(4) & (!\u5|rd_low_cnt\(3) & (!\u5|rd_low_cnt\(2) & \u5|rd_low_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_low_cnt\(4),
	datab => \u5|rd_low_cnt\(3),
	datac => \u5|rd_low_cnt\(2),
	datad => \u5|rd_low_cnt\(1),
	combout => \u5|Equal6~0_combout\);

-- Location: LCCOMB_X36_Y26_N2
\u5|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector5~1_combout\ = (\u5|Selector5~0_combout\) # ((\u5|Equal6~0_combout\ & (\u5|command.00001~q\ & !\u5|rd_low_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Selector5~0_combout\,
	datab => \u5|Equal6~0_combout\,
	datac => \u5|command.00001~q\,
	datad => \u5|rd_low_cnt\(0),
	combout => \u5|Selector5~1_combout\);

-- Location: FF_X36_Y26_N3
\u5|command.00010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Selector5~1_combout\,
	clrn => \ALT_INV_busy~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|command.00010~q\);

-- Location: FF_X36_Y26_N11
\u5|rd_high_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add8~0_combout\,
	clrn => \ALT_INV_busy~input_o\,
	ena => \u5|command.00010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd_high_cnt\(0));

-- Location: LCCOMB_X36_Y26_N8
\u5|rd_cnt[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|rd_cnt[4]~0_combout\ = (\u5|rd_high_cnt\(0) & (\u5|Equal7~0_combout\ & \u5|command.00010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_high_cnt\(0),
	datac => \u5|Equal7~0_combout\,
	datad => \u5|command.00010~q\,
	combout => \u5|rd_cnt[4]~0_combout\);

-- Location: LCCOMB_X36_Y26_N22
\u5|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector7~0_combout\ = (\u5|command.00000~q\ & (!\u5|command.00001~q\ & ((\u5|Equal8~1_combout\) # (!\u5|rd_cnt[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_cnt[4]~0_combout\,
	datab => \u5|command.00000~q\,
	datac => \u5|Equal8~1_combout\,
	datad => \u5|command.00001~q\,
	combout => \u5|Selector7~0_combout\);

-- Location: LCCOMB_X40_Y15_N14
\u5|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector7~1_combout\ = (!\u5|Selector7~0_combout\ & ((\u5|rd~q\) # (\u5|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Selector7~0_combout\,
	datac => \u5|rd~q\,
	datad => \u5|Selector4~0_combout\,
	combout => \u5|Selector7~1_combout\);

-- Location: FF_X40_Y15_N15
\u5|rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Selector7~1_combout\,
	clrn => \ALT_INV_busy~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|rd~q\);

-- Location: CLKCTRL_G8
\u5|rd~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u5|rd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u5|rd~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y25_N22
\db[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(0),
	o => \db[0]~input_o\);

-- Location: LCCOMB_X20_Y22_N14
\u5|vin_db1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[0]~feeder_combout\ = \db[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[0]~input_o\,
	combout => \u5|vin_db1[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N10
\u5|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder1~0_combout\ = (!\u5|rd_cnt\(4) & (!\u5|rd_cnt\(3) & !\u5|rd_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(4),
	datac => \u5|rd_cnt\(3),
	datad => \u5|rd_cnt\(2),
	combout => \u5|Decoder1~0_combout\);

-- Location: LCCOMB_X20_Y24_N4
\u5|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder1~2_combout\ = (!\u5|rd_cnt\(1) & (!\u5|rd_cnt\(0) & \u5|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(1),
	datac => \u5|rd_cnt\(0),
	datad => \u5|Decoder1~0_combout\,
	combout => \u5|Decoder1~2_combout\);

-- Location: FF_X20_Y22_N15
\u5|vin_db1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[0]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(0));

-- Location: LCCOMB_X26_Y24_N28
\u5|vin_db2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[0]~feeder_combout\ = \db[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[0]~input_o\,
	combout => \u5|vin_db2[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N28
\u5|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder1~1_combout\ = (!\u5|rd_cnt\(1) & (\u5|rd_cnt\(0) & \u5|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_cnt\(1),
	datab => \u5|rd_cnt\(0),
	datad => \u5|Decoder1~0_combout\,
	combout => \u5|Decoder1~1_combout\);

-- Location: FF_X26_Y24_N29
\u5|vin_db2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[0]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(0));

-- Location: IOIBUF_X41_Y27_N1
\db[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(1),
	o => \db[1]~input_o\);

-- Location: LCCOMB_X26_Y24_N22
\u5|vin_db2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[1]~feeder_combout\ = \db[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[1]~input_o\,
	combout => \u5|vin_db2[1]~feeder_combout\);

-- Location: FF_X26_Y24_N23
\u5|vin_db2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[1]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(1));

-- Location: LCCOMB_X23_Y22_N30
\u5|vin_db3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[0]~feeder_combout\ = \db[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[0]~input_o\,
	combout => \u5|vin_db3[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N26
\u5|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder1~4_combout\ = (\u5|rd_cnt\(1) & (!\u5|rd_cnt\(0) & \u5|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(1),
	datac => \u5|rd_cnt\(0),
	datad => \u5|Decoder1~0_combout\,
	combout => \u5|Decoder1~4_combout\);

-- Location: FF_X23_Y22_N31
\u5|vin_db3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[0]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(0));

-- Location: LCCOMB_X20_Y24_N2
\u5|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder1~3_combout\ = (\u5|rd_cnt\(0) & (\u5|rd_cnt\(1) & \u5|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(0),
	datac => \u5|rd_cnt\(1),
	datad => \u5|Decoder1~0_combout\,
	combout => \u5|Decoder1~3_combout\);

-- Location: FF_X24_Y22_N7
\u5|vin_db4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[0]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(0));

-- Location: LCCOMB_X23_Y22_N0
\u5|vin_db5[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[0]~feeder_combout\ = \db[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[0]~input_o\,
	combout => \u5|vin_db5[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N6
\u5|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder1~6_combout\ = (!\u5|rd_cnt\(1) & (!\u5|rd_cnt\(0) & \u5|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_cnt\(1),
	datab => \u5|rd_cnt\(0),
	datac => \u5|Equal8~0_combout\,
	combout => \u5|Decoder1~6_combout\);

-- Location: FF_X23_Y22_N1
\u5|vin_db5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[0]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(0));

-- Location: LCCOMB_X20_Y24_N12
\u5|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder1~5_combout\ = (!\u5|rd_cnt\(1) & (\u5|rd_cnt\(0) & \u5|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rd_cnt\(1),
	datac => \u5|rd_cnt\(0),
	datad => \u5|Equal8~0_combout\,
	combout => \u5|Decoder1~5_combout\);

-- Location: FF_X24_Y24_N29
\u5|vin_db6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[0]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(0));

-- Location: LCCOMB_X21_Y22_N14
\u5|vin_db7[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db7[0]~feeder_combout\ = \db[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[0]~input_o\,
	combout => \u5|vin_db7[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N0
\u5|Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder1~7_combout\ = (\u5|rd_cnt\(1) & (!\u5|rd_cnt\(0) & \u5|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rd_cnt\(1),
	datab => \u5|rd_cnt\(0),
	datad => \u5|Equal8~0_combout\,
	combout => \u5|Decoder1~7_combout\);

-- Location: FF_X21_Y22_N15
\u5|vin_db7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db7[0]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(0));

-- Location: FF_X24_Y22_N1
\u5|vin_db8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[0]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(0));

-- Location: M9K_X25_Y22_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X39_Y14_N18
\u4|fsmc_db[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[15]~16_combout\ = (!\u4|address_reg\(6) & (!\u4|read_clk~combout\ & \u4|address_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(6),
	datab => \u4|read_clk~combout\,
	datad => \u4|address_reg\(3),
	combout => \u4|fsmc_db[15]~16_combout\);

-- Location: LCCOMB_X39_Y14_N30
\u4|fsmc_db[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[15]~17_combout\ = (\u4|address_reg\(5) & (\u4|address_reg\(4) & (\u4|Equal0~4_combout\ & \u4|fsmc_db[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(5),
	datab => \u4|address_reg\(4),
	datac => \u4|Equal0~4_combout\,
	datad => \u4|fsmc_db[15]~16_combout\,
	combout => \u4|fsmc_db[15]~17_combout\);

-- Location: LCCOMB_X24_Y20_N30
\u4|fsmc_db[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~25_combout\ = (!\u4|address_reg\(1) & (\u4|address_reg\(0) & (\u4|address_reg\(2) & \u4|fsmc_db[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(1),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(2),
	datad => \u4|fsmc_db[15]~17_combout\,
	combout => \u4|fsmc_db[0]~25_combout\);

-- Location: LCCOMB_X24_Y20_N0
\u4|fsmc_db[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~24_combout\ = (!\u4|address_reg\(1) & (!\u4|address_reg\(0) & (\u4|address_reg\(2) & \u4|fsmc_db[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(1),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(2),
	datad => \u4|fsmc_db[15]~17_combout\,
	combout => \u4|fsmc_db[0]~24_combout\);

-- Location: LCCOMB_X26_Y25_N24
\u4|fsmc_db[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~26_combout\ = (\u5|u5|altsyncram_component|auto_generated|q_b\(0) & (((\u5|u6|altsyncram_component|auto_generated|q_b\(0))) # (!\u4|fsmc_db[0]~25_combout\))) # (!\u5|u5|altsyncram_component|auto_generated|q_b\(0) & 
-- (!\u4|fsmc_db[0]~24_combout\ & ((\u5|u6|altsyncram_component|auto_generated|q_b\(0)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u5|altsyncram_component|auto_generated|q_b\(0),
	datab => \u4|fsmc_db[0]~25_combout\,
	datac => \u4|fsmc_db[0]~24_combout\,
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(0),
	combout => \u4|fsmc_db[0]~26_combout\);

-- Location: LCCOMB_X24_Y20_N26
\u4|fsmc_db[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~19_combout\ = (!\u4|address_reg\(1) & (\u4|address_reg\(0) & (!\u4|address_reg\(2) & \u4|fsmc_db[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(1),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(2),
	datad => \u4|fsmc_db[15]~17_combout\,
	combout => \u4|fsmc_db[0]~19_combout\);

-- Location: LCCOMB_X24_Y20_N24
\u4|fsmc_db[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[15]~18_combout\ = (!\u4|address_reg\(1) & (!\u4|address_reg\(0) & (!\u4|address_reg\(2) & \u4|fsmc_db[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(1),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(2),
	datad => \u4|fsmc_db[15]~17_combout\,
	combout => \u4|fsmc_db[15]~18_combout\);

-- Location: LCCOMB_X26_Y22_N24
\u4|fsmc_db[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~20_combout\ = (\u4|fsmc_db[0]~19_combout\ & (\u5|u2|altsyncram_component|auto_generated|q_b\(0) & ((\u5|u1|altsyncram_component|auto_generated|q_b\(0)) # (!\u4|fsmc_db[15]~18_combout\)))) # (!\u4|fsmc_db[0]~19_combout\ & 
-- (((\u5|u1|altsyncram_component|auto_generated|q_b\(0))) # (!\u4|fsmc_db[15]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~19_combout\,
	datab => \u4|fsmc_db[15]~18_combout\,
	datac => \u5|u2|altsyncram_component|auto_generated|q_b\(0),
	datad => \u5|u1|altsyncram_component|auto_generated|q_b\(0),
	combout => \u4|fsmc_db[0]~20_combout\);

-- Location: LCCOMB_X24_Y20_N12
\u4|fsmc_db[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~27_combout\ = (\u4|address_reg\(1) & (!\u4|address_reg\(0) & (\u4|address_reg\(2) & \u4|fsmc_db[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(1),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(2),
	datad => \u4|fsmc_db[15]~17_combout\,
	combout => \u4|fsmc_db[0]~27_combout\);

-- Location: LCCOMB_X24_Y20_N10
\u4|fsmc_db[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~28_combout\ = (\u4|address_reg\(1) & (\u4|address_reg\(0) & (\u4|address_reg\(2) & \u4|fsmc_db[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(1),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(2),
	datad => \u4|fsmc_db[15]~17_combout\,
	combout => \u4|fsmc_db[0]~28_combout\);

-- Location: LCCOMB_X24_Y25_N4
\u4|fsmc_db[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~29_combout\ = (\u5|u8|altsyncram_component|auto_generated|q_b\(0) & (((\u5|u7|altsyncram_component|auto_generated|q_b\(0))) # (!\u4|fsmc_db[0]~27_combout\))) # (!\u5|u8|altsyncram_component|auto_generated|q_b\(0) & 
-- (!\u4|fsmc_db[0]~28_combout\ & ((\u5|u7|altsyncram_component|auto_generated|q_b\(0)) # (!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|q_b\(0),
	datab => \u4|fsmc_db[0]~27_combout\,
	datac => \u4|fsmc_db[0]~28_combout\,
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(0),
	combout => \u4|fsmc_db[0]~29_combout\);

-- Location: LCCOMB_X24_Y20_N4
\u4|fsmc_db[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~21_combout\ = (\u4|address_reg\(1) & (!\u4|address_reg\(0) & (!\u4|address_reg\(2) & \u4|fsmc_db[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(1),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(2),
	datad => \u4|fsmc_db[15]~17_combout\,
	combout => \u4|fsmc_db[0]~21_combout\);

-- Location: LCCOMB_X24_Y20_N22
\u4|fsmc_db[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~22_combout\ = (\u4|address_reg\(1) & (\u4|address_reg\(0) & (!\u4|address_reg\(2) & \u4|fsmc_db[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|address_reg\(1),
	datab => \u4|address_reg\(0),
	datac => \u4|address_reg\(2),
	datad => \u4|fsmc_db[15]~17_combout\,
	combout => \u4|fsmc_db[0]~22_combout\);

-- Location: LCCOMB_X24_Y22_N20
\u4|fsmc_db[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~23_combout\ = (\u5|u4|altsyncram_component|auto_generated|q_b\(0) & (((\u5|u3|altsyncram_component|auto_generated|q_b\(0))) # (!\u4|fsmc_db[0]~21_combout\))) # (!\u5|u4|altsyncram_component|auto_generated|q_b\(0) & 
-- (!\u4|fsmc_db[0]~22_combout\ & ((\u5|u3|altsyncram_component|auto_generated|q_b\(0)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|altsyncram_component|auto_generated|q_b\(0),
	datab => \u4|fsmc_db[0]~21_combout\,
	datac => \u5|u3|altsyncram_component|auto_generated|q_b\(0),
	datad => \u4|fsmc_db[0]~22_combout\,
	combout => \u4|fsmc_db[0]~23_combout\);

-- Location: LCCOMB_X24_Y25_N10
\u4|fsmc_db[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[0]~30_combout\ = (\u4|fsmc_db[0]~26_combout\ & (\u4|fsmc_db[0]~20_combout\ & (\u4|fsmc_db[0]~29_combout\ & \u4|fsmc_db[0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~26_combout\,
	datab => \u4|fsmc_db[0]~20_combout\,
	datac => \u4|fsmc_db[0]~29_combout\,
	datad => \u4|fsmc_db[0]~23_combout\,
	combout => \u4|fsmc_db[0]~30_combout\);

-- Location: FF_X16_Y28_N29
\u5|vin_db1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[1]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(1));

-- Location: IOIBUF_X41_Y23_N1
\db[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(2),
	o => \db[2]~input_o\);

-- Location: LCCOMB_X16_Y28_N16
\u5|vin_db1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[2]~feeder_combout\ = \db[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[2]~input_o\,
	combout => \u5|vin_db1[2]~feeder_combout\);

-- Location: FF_X16_Y28_N17
\u5|vin_db1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[2]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(2));

-- Location: LCCOMB_X12_Y24_N4
\u5|vin_db2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[2]~feeder_combout\ = \db[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[2]~input_o\,
	combout => \u5|vin_db2[2]~feeder_combout\);

-- Location: FF_X12_Y24_N5
\u5|vin_db2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[2]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(2));

-- Location: FF_X16_Y28_N31
\u5|vin_db3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[1]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(1));

-- Location: FF_X17_Y28_N13
\u5|vin_db4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[1]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(1));

-- Location: FF_X14_Y24_N7
\u5|vin_db5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[1]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(1));

-- Location: FF_X14_Y24_N25
\u5|vin_db6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[1]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(1));

-- Location: FF_X19_Y28_N9
\u5|vin_db7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[1]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(1));

-- Location: FF_X17_Y28_N31
\u5|vin_db8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[1]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(1));

-- Location: M9K_X13_Y28_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y23_N12
\u4|fsmc_db[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[1]~31_combout\ = (\u4|fsmc_db[0]~19_combout\ & (\u5|u2|altsyncram_component|auto_generated|q_b\(1) & ((\u5|u1|altsyncram_component|auto_generated|q_b\(1)) # (!\u4|fsmc_db[15]~18_combout\)))) # (!\u4|fsmc_db[0]~19_combout\ & 
-- (((\u5|u1|altsyncram_component|auto_generated|q_b\(1)) # (!\u4|fsmc_db[15]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~19_combout\,
	datab => \u5|u2|altsyncram_component|auto_generated|q_b\(1),
	datac => \u4|fsmc_db[15]~18_combout\,
	datad => \u5|u1|altsyncram_component|auto_generated|q_b\(1),
	combout => \u4|fsmc_db[1]~31_combout\);

-- Location: LCCOMB_X16_Y26_N4
\u4|fsmc_db[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[1]~33_combout\ = (\u4|fsmc_db[0]~24_combout\ & (\u5|u5|altsyncram_component|auto_generated|q_b\(1) & ((\u5|u6|altsyncram_component|auto_generated|q_b\(1)) # (!\u4|fsmc_db[0]~25_combout\)))) # (!\u4|fsmc_db[0]~24_combout\ & 
-- (((\u5|u6|altsyncram_component|auto_generated|q_b\(1)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~24_combout\,
	datab => \u5|u5|altsyncram_component|auto_generated|q_b\(1),
	datac => \u5|u6|altsyncram_component|auto_generated|q_b\(1),
	datad => \u4|fsmc_db[0]~25_combout\,
	combout => \u4|fsmc_db[1]~33_combout\);

-- Location: LCCOMB_X24_Y25_N26
\u4|fsmc_db[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[1]~34_combout\ = (\u5|u8|altsyncram_component|auto_generated|q_b\(1) & (((\u5|u7|altsyncram_component|auto_generated|q_b\(1)) # (!\u4|fsmc_db[0]~27_combout\)))) # (!\u5|u8|altsyncram_component|auto_generated|q_b\(1) & 
-- (!\u4|fsmc_db[0]~28_combout\ & ((\u5|u7|altsyncram_component|auto_generated|q_b\(1)) # (!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|q_b\(1),
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u4|fsmc_db[0]~27_combout\,
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(1),
	combout => \u4|fsmc_db[1]~34_combout\);

-- Location: LCCOMB_X24_Y25_N0
\u4|fsmc_db[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[1]~32_combout\ = (\u5|u4|altsyncram_component|auto_generated|q_b\(1) & ((\u5|u3|altsyncram_component|auto_generated|q_b\(1)) # ((!\u4|fsmc_db[0]~21_combout\)))) # (!\u5|u4|altsyncram_component|auto_generated|q_b\(1) & 
-- (!\u4|fsmc_db[0]~22_combout\ & ((\u5|u3|altsyncram_component|auto_generated|q_b\(1)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|altsyncram_component|auto_generated|q_b\(1),
	datab => \u5|u3|altsyncram_component|auto_generated|q_b\(1),
	datac => \u4|fsmc_db[0]~21_combout\,
	datad => \u4|fsmc_db[0]~22_combout\,
	combout => \u4|fsmc_db[1]~32_combout\);

-- Location: LCCOMB_X24_Y25_N24
\u4|fsmc_db[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[1]~35_combout\ = (\u4|fsmc_db[1]~31_combout\ & (\u4|fsmc_db[1]~33_combout\ & (\u4|fsmc_db[1]~34_combout\ & \u4|fsmc_db[1]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[1]~31_combout\,
	datab => \u4|fsmc_db[1]~33_combout\,
	datac => \u4|fsmc_db[1]~34_combout\,
	datad => \u4|fsmc_db[1]~32_combout\,
	combout => \u4|fsmc_db[1]~35_combout\);

-- Location: IOIBUF_X41_Y22_N1
\db[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(3),
	o => \db[3]~input_o\);

-- Location: LCCOMB_X17_Y25_N26
\u5|vin_db1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[3]~feeder_combout\ = \db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[3]~input_o\,
	combout => \u5|vin_db1[3]~feeder_combout\);

-- Location: FF_X17_Y25_N27
\u5|vin_db1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(3));

-- Location: LCCOMB_X17_Y24_N24
\u5|vin_db2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[3]~feeder_combout\ = \db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[3]~input_o\,
	combout => \u5|vin_db2[3]~feeder_combout\);

-- Location: FF_X17_Y24_N25
\u5|vin_db2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(3));

-- Location: LCCOMB_X17_Y27_N20
\u5|vin_db3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[2]~feeder_combout\ = \db[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[2]~input_o\,
	combout => \u5|vin_db3[2]~feeder_combout\);

-- Location: FF_X17_Y27_N21
\u5|vin_db3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[2]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(2));

-- Location: FF_X21_Y27_N17
\u5|vin_db4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[2]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(2));

-- Location: LCCOMB_X17_Y24_N18
\u5|vin_db4[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[3]~feeder_combout\ = \db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[3]~input_o\,
	combout => \u5|vin_db4[3]~feeder_combout\);

-- Location: FF_X17_Y24_N19
\u5|vin_db4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(3));

-- Location: FF_X21_Y27_N23
\u5|vin_db5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[2]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(2));

-- Location: LCCOMB_X14_Y27_N8
\u5|vin_db6[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[2]~feeder_combout\ = \db[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[2]~input_o\,
	combout => \u5|vin_db6[2]~feeder_combout\);

-- Location: FF_X14_Y27_N9
\u5|vin_db6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[2]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(2));

-- Location: FF_X15_Y24_N13
\u5|vin_db7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[2]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(2));

-- Location: LCCOMB_X17_Y27_N6
\u5|vin_db8[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[2]~feeder_combout\ = \db[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[2]~input_o\,
	combout => \u5|vin_db8[2]~feeder_combout\);

-- Location: FF_X17_Y27_N7
\u5|vin_db8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[2]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(2));

-- Location: M9K_X13_Y27_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y26_N8
\u4|fsmc_db[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[2]~38_combout\ = (\u5|u6|altsyncram_component|auto_generated|q_b\(2) & ((\u5|u5|altsyncram_component|auto_generated|q_b\(2)) # ((!\u4|fsmc_db[0]~24_combout\)))) # (!\u5|u6|altsyncram_component|auto_generated|q_b\(2) & 
-- (!\u4|fsmc_db[0]~25_combout\ & ((\u5|u5|altsyncram_component|auto_generated|q_b\(2)) # (!\u4|fsmc_db[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u6|altsyncram_component|auto_generated|q_b\(2),
	datab => \u5|u5|altsyncram_component|auto_generated|q_b\(2),
	datac => \u4|fsmc_db[0]~25_combout\,
	datad => \u4|fsmc_db[0]~24_combout\,
	combout => \u4|fsmc_db[2]~38_combout\);

-- Location: LCCOMB_X24_Y25_N28
\u4|fsmc_db[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[2]~39_combout\ = (\u5|u8|altsyncram_component|auto_generated|q_b\(2) & (((\u5|u7|altsyncram_component|auto_generated|q_b\(2)) # (!\u4|fsmc_db[0]~27_combout\)))) # (!\u5|u8|altsyncram_component|auto_generated|q_b\(2) & 
-- (!\u4|fsmc_db[0]~28_combout\ & ((\u5|u7|altsyncram_component|auto_generated|q_b\(2)) # (!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|q_b\(2),
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u4|fsmc_db[0]~27_combout\,
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(2),
	combout => \u4|fsmc_db[2]~39_combout\);

-- Location: LCCOMB_X21_Y23_N26
\u4|fsmc_db[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[2]~36_combout\ = (\u4|fsmc_db[15]~18_combout\ & (\u5|u1|altsyncram_component|auto_generated|q_b\(2) & ((\u5|u2|altsyncram_component|auto_generated|q_b\(2)) # (!\u4|fsmc_db[0]~19_combout\)))) # (!\u4|fsmc_db[15]~18_combout\ & 
-- ((\u5|u2|altsyncram_component|auto_generated|q_b\(2)) # ((!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~18_combout\,
	datab => \u5|u2|altsyncram_component|auto_generated|q_b\(2),
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u1|altsyncram_component|auto_generated|q_b\(2),
	combout => \u4|fsmc_db[2]~36_combout\);

-- Location: LCCOMB_X24_Y25_N2
\u4|fsmc_db[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[2]~37_combout\ = (\u5|u4|altsyncram_component|auto_generated|q_b\(2) & ((\u5|u3|altsyncram_component|auto_generated|q_b\(2)) # ((!\u4|fsmc_db[0]~21_combout\)))) # (!\u5|u4|altsyncram_component|auto_generated|q_b\(2) & 
-- (!\u4|fsmc_db[0]~22_combout\ & ((\u5|u3|altsyncram_component|auto_generated|q_b\(2)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|altsyncram_component|auto_generated|q_b\(2),
	datab => \u5|u3|altsyncram_component|auto_generated|q_b\(2),
	datac => \u4|fsmc_db[0]~21_combout\,
	datad => \u4|fsmc_db[0]~22_combout\,
	combout => \u4|fsmc_db[2]~37_combout\);

-- Location: LCCOMB_X24_Y25_N14
\u4|fsmc_db[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[2]~40_combout\ = (\u4|fsmc_db[2]~38_combout\ & (\u4|fsmc_db[2]~39_combout\ & (\u4|fsmc_db[2]~36_combout\ & \u4|fsmc_db[2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[2]~38_combout\,
	datab => \u4|fsmc_db[2]~39_combout\,
	datac => \u4|fsmc_db[2]~36_combout\,
	datad => \u4|fsmc_db[2]~37_combout\,
	combout => \u4|fsmc_db[2]~40_combout\);

-- Location: IOIBUF_X9_Y29_N15
\db[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(4),
	o => \db[4]~input_o\);

-- Location: FF_X17_Y22_N9
\u5|vin_db1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[4]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(4));

-- Location: LCCOMB_X17_Y24_N8
\u5|vin_db2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[4]~feeder_combout\ = \db[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[4]~input_o\,
	combout => \u5|vin_db2[4]~feeder_combout\);

-- Location: FF_X17_Y24_N9
\u5|vin_db2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[4]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(4));

-- Location: LCCOMB_X17_Y22_N10
\u5|vin_db3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[3]~feeder_combout\ = \db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[3]~input_o\,
	combout => \u5|vin_db3[3]~feeder_combout\);

-- Location: FF_X17_Y22_N11
\u5|vin_db3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(3));

-- Location: FF_X16_Y21_N1
\u5|vin_db3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[4]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(4));

-- Location: LCCOMB_X17_Y21_N18
\u5|vin_db4[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[4]~feeder_combout\ = \db[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[4]~input_o\,
	combout => \u5|vin_db4[4]~feeder_combout\);

-- Location: FF_X17_Y21_N19
\u5|vin_db4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[4]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(4));

-- Location: LCCOMB_X14_Y24_N18
\u5|vin_db5[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[3]~feeder_combout\ = \db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[3]~input_o\,
	combout => \u5|vin_db5[3]~feeder_combout\);

-- Location: FF_X14_Y24_N19
\u5|vin_db5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(3));

-- Location: LCCOMB_X14_Y24_N8
\u5|vin_db6[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[3]~feeder_combout\ = \db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[3]~input_o\,
	combout => \u5|vin_db6[3]~feeder_combout\);

-- Location: FF_X14_Y24_N9
\u5|vin_db6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(3));

-- Location: LCCOMB_X15_Y24_N22
\u5|vin_db7[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db7[3]~feeder_combout\ = \db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[3]~input_o\,
	combout => \u5|vin_db7[3]~feeder_combout\);

-- Location: FF_X15_Y24_N23
\u5|vin_db7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db7[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(3));

-- Location: LCCOMB_X17_Y21_N8
\u5|vin_db8[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[3]~feeder_combout\ = \db[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[3]~input_o\,
	combout => \u5|vin_db8[3]~feeder_combout\);

-- Location: FF_X17_Y21_N9
\u5|vin_db8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[3]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(3));

-- Location: M9K_X13_Y21_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y21_N30
\u4|fsmc_db[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[3]~44_combout\ = (\u5|u8|altsyncram_component|auto_generated|q_b\(3) & (((\u5|u7|altsyncram_component|auto_generated|q_b\(3)) # (!\u4|fsmc_db[0]~27_combout\)))) # (!\u5|u8|altsyncram_component|auto_generated|q_b\(3) & 
-- (!\u4|fsmc_db[0]~28_combout\ & ((\u5|u7|altsyncram_component|auto_generated|q_b\(3)) # (!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|q_b\(3),
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u4|fsmc_db[0]~27_combout\,
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(3),
	combout => \u4|fsmc_db[3]~44_combout\);

-- Location: LCCOMB_X20_Y23_N4
\u4|fsmc_db[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[3]~42_combout\ = (\u5|u3|altsyncram_component|auto_generated|q_b\(3) & (((\u5|u4|altsyncram_component|auto_generated|q_b\(3))) # (!\u4|fsmc_db[0]~22_combout\))) # (!\u5|u3|altsyncram_component|auto_generated|q_b\(3) & 
-- (!\u4|fsmc_db[0]~21_combout\ & ((\u5|u4|altsyncram_component|auto_generated|q_b\(3)) # (!\u4|fsmc_db[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u3|altsyncram_component|auto_generated|q_b\(3),
	datab => \u4|fsmc_db[0]~22_combout\,
	datac => \u5|u4|altsyncram_component|auto_generated|q_b\(3),
	datad => \u4|fsmc_db[0]~21_combout\,
	combout => \u4|fsmc_db[3]~42_combout\);

-- Location: LCCOMB_X20_Y21_N0
\u4|fsmc_db[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[3]~43_combout\ = (\u5|u5|altsyncram_component|auto_generated|q_b\(3) & (((\u5|u6|altsyncram_component|auto_generated|q_b\(3))) # (!\u4|fsmc_db[0]~25_combout\))) # (!\u5|u5|altsyncram_component|auto_generated|q_b\(3) & 
-- (!\u4|fsmc_db[0]~24_combout\ & ((\u5|u6|altsyncram_component|auto_generated|q_b\(3)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u5|altsyncram_component|auto_generated|q_b\(3),
	datab => \u4|fsmc_db[0]~25_combout\,
	datac => \u4|fsmc_db[0]~24_combout\,
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(3),
	combout => \u4|fsmc_db[3]~43_combout\);

-- Location: LCCOMB_X21_Y23_N28
\u4|fsmc_db[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[3]~41_combout\ = (\u4|fsmc_db[15]~18_combout\ & (\u5|u1|altsyncram_component|auto_generated|q_b\(3) & ((\u5|u2|altsyncram_component|auto_generated|q_b\(3)) # (!\u4|fsmc_db[0]~19_combout\)))) # (!\u4|fsmc_db[15]~18_combout\ & 
-- ((\u5|u2|altsyncram_component|auto_generated|q_b\(3)) # ((!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~18_combout\,
	datab => \u5|u2|altsyncram_component|auto_generated|q_b\(3),
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u1|altsyncram_component|auto_generated|q_b\(3),
	combout => \u4|fsmc_db[3]~41_combout\);

-- Location: LCCOMB_X22_Y22_N12
\u4|fsmc_db[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[3]~45_combout\ = (\u4|fsmc_db[3]~44_combout\ & (\u4|fsmc_db[3]~42_combout\ & (\u4|fsmc_db[3]~43_combout\ & \u4|fsmc_db[3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[3]~44_combout\,
	datab => \u4|fsmc_db[3]~42_combout\,
	datac => \u4|fsmc_db[3]~43_combout\,
	datad => \u4|fsmc_db[3]~41_combout\,
	combout => \u4|fsmc_db[3]~45_combout\);

-- Location: IOIBUF_X41_Y23_N22
\db[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(5),
	o => \db[5]~input_o\);

-- Location: LCCOMB_X26_Y24_N30
\u5|vin_db1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[5]~feeder_combout\ = \db[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[5]~input_o\,
	combout => \u5|vin_db1[5]~feeder_combout\);

-- Location: FF_X26_Y24_N31
\u5|vin_db1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[5]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(5));

-- Location: LCCOMB_X26_Y24_N0
\u5|vin_db2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[5]~feeder_combout\ = \db[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[5]~input_o\,
	combout => \u5|vin_db2[5]~feeder_combout\);

-- Location: FF_X26_Y24_N1
\u5|vin_db2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[5]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(5));

-- Location: LCCOMB_X24_Y24_N12
\u5|vin_db3[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[5]~feeder_combout\ = \db[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[5]~input_o\,
	combout => \u5|vin_db3[5]~feeder_combout\);

-- Location: FF_X24_Y24_N13
\u5|vin_db3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[5]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(5));

-- Location: LCCOMB_X23_Y24_N8
\u5|vin_db4[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[5]~feeder_combout\ = \db[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[5]~input_o\,
	combout => \u5|vin_db4[5]~feeder_combout\);

-- Location: FF_X23_Y24_N9
\u5|vin_db4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[5]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(5));

-- Location: LCCOMB_X21_Y24_N6
\u5|vin_db5[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[4]~feeder_combout\ = \db[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[4]~input_o\,
	combout => \u5|vin_db5[4]~feeder_combout\);

-- Location: FF_X21_Y24_N7
\u5|vin_db5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[4]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(4));

-- Location: FF_X24_Y24_N15
\u5|vin_db6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[4]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(4));

-- Location: LCCOMB_X24_Y24_N18
\u5|vin_db6[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[5]~feeder_combout\ = \db[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[5]~input_o\,
	combout => \u5|vin_db6[5]~feeder_combout\);

-- Location: FF_X24_Y24_N19
\u5|vin_db6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[5]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(5));

-- Location: FF_X22_Y24_N21
\u5|vin_db7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[4]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(4));

-- Location: FF_X22_Y24_N31
\u5|vin_db8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[4]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(4));

-- Location: M9K_X25_Y24_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y22_N12
\u4|fsmc_db[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[4]~49_combout\ = (\u5|u8|altsyncram_component|auto_generated|q_b\(4) & (((\u5|u7|altsyncram_component|auto_generated|q_b\(4))) # (!\u4|fsmc_db[0]~27_combout\))) # (!\u5|u8|altsyncram_component|auto_generated|q_b\(4) & 
-- (!\u4|fsmc_db[0]~28_combout\ & ((\u5|u7|altsyncram_component|auto_generated|q_b\(4)) # (!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|q_b\(4),
	datab => \u4|fsmc_db[0]~27_combout\,
	datac => \u4|fsmc_db[0]~28_combout\,
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(4),
	combout => \u4|fsmc_db[4]~49_combout\);

-- Location: LCCOMB_X22_Y21_N0
\u4|fsmc_db[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[4]~47_combout\ = (\u5|u4|altsyncram_component|auto_generated|q_b\(4) & ((\u5|u3|altsyncram_component|auto_generated|q_b\(4)) # ((!\u4|fsmc_db[0]~21_combout\)))) # (!\u5|u4|altsyncram_component|auto_generated|q_b\(4) & 
-- (!\u4|fsmc_db[0]~22_combout\ & ((\u5|u3|altsyncram_component|auto_generated|q_b\(4)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|altsyncram_component|auto_generated|q_b\(4),
	datab => \u5|u3|altsyncram_component|auto_generated|q_b\(4),
	datac => \u4|fsmc_db[0]~21_combout\,
	datad => \u4|fsmc_db[0]~22_combout\,
	combout => \u4|fsmc_db[4]~47_combout\);

-- Location: LCCOMB_X21_Y23_N30
\u4|fsmc_db[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[4]~46_combout\ = (\u4|fsmc_db[15]~18_combout\ & (\u5|u1|altsyncram_component|auto_generated|q_b\(4) & ((\u5|u2|altsyncram_component|auto_generated|q_b\(4)) # (!\u4|fsmc_db[0]~19_combout\)))) # (!\u4|fsmc_db[15]~18_combout\ & 
-- (((\u5|u2|altsyncram_component|auto_generated|q_b\(4)) # (!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~18_combout\,
	datab => \u5|u1|altsyncram_component|auto_generated|q_b\(4),
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u2|altsyncram_component|auto_generated|q_b\(4),
	combout => \u4|fsmc_db[4]~46_combout\);

-- Location: LCCOMB_X22_Y22_N6
\u4|fsmc_db[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[4]~48_combout\ = (\u5|u5|altsyncram_component|auto_generated|q_b\(4) & (((\u5|u6|altsyncram_component|auto_generated|q_b\(4)) # (!\u4|fsmc_db[0]~25_combout\)))) # (!\u5|u5|altsyncram_component|auto_generated|q_b\(4) & 
-- (!\u4|fsmc_db[0]~24_combout\ & ((\u5|u6|altsyncram_component|auto_generated|q_b\(4)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u5|altsyncram_component|auto_generated|q_b\(4),
	datab => \u4|fsmc_db[0]~24_combout\,
	datac => \u4|fsmc_db[0]~25_combout\,
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(4),
	combout => \u4|fsmc_db[4]~48_combout\);

-- Location: LCCOMB_X21_Y22_N18
\u4|fsmc_db[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[4]~50_combout\ = (\u4|fsmc_db[4]~49_combout\ & (\u4|fsmc_db[4]~47_combout\ & (\u4|fsmc_db[4]~46_combout\ & \u4|fsmc_db[4]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[4]~49_combout\,
	datab => \u4|fsmc_db[4]~47_combout\,
	datac => \u4|fsmc_db[4]~46_combout\,
	datad => \u4|fsmc_db[4]~48_combout\,
	combout => \u4|fsmc_db[4]~50_combout\);

-- Location: LCCOMB_X14_Y26_N4
\u4|fsmc_db[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[5]~52_combout\ = (\u4|fsmc_db[0]~22_combout\ & (\u5|u4|altsyncram_component|auto_generated|q_b\(5) & ((\u5|u3|altsyncram_component|auto_generated|q_b\(5)) # (!\u4|fsmc_db[0]~21_combout\)))) # (!\u4|fsmc_db[0]~22_combout\ & 
-- (((\u5|u3|altsyncram_component|auto_generated|q_b\(5))) # (!\u4|fsmc_db[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~22_combout\,
	datab => \u4|fsmc_db[0]~21_combout\,
	datac => \u5|u4|altsyncram_component|auto_generated|q_b\(5),
	datad => \u5|u3|altsyncram_component|auto_generated|q_b\(5),
	combout => \u4|fsmc_db[5]~52_combout\);

-- Location: IOIBUF_X41_Y21_N1
\db[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(6),
	o => \db[6]~input_o\);

-- Location: LCCOMB_X23_Y25_N18
\u5|vin_db1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[6]~feeder_combout\ = \db[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[6]~input_o\,
	combout => \u5|vin_db1[6]~feeder_combout\);

-- Location: FF_X23_Y25_N19
\u5|vin_db1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[6]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(6));

-- Location: LCCOMB_X26_Y24_N12
\u5|vin_db2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[6]~feeder_combout\ = \db[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[6]~input_o\,
	combout => \u5|vin_db2[6]~feeder_combout\);

-- Location: FF_X26_Y24_N13
\u5|vin_db2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[6]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(6));

-- Location: LCCOMB_X24_Y24_N8
\u5|vin_db3[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[6]~feeder_combout\ = \db[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[6]~input_o\,
	combout => \u5|vin_db3[6]~feeder_combout\);

-- Location: FF_X24_Y24_N9
\u5|vin_db3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[6]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(6));

-- Location: FF_X24_Y22_N31
\u5|vin_db4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[6]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(6));

-- Location: FF_X21_Y25_N19
\u5|vin_db5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[5]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(5));

-- Location: LCCOMB_X22_Y25_N4
\u5|vin_db5[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[6]~feeder_combout\ = \db[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[6]~input_o\,
	combout => \u5|vin_db5[6]~feeder_combout\);

-- Location: FF_X22_Y25_N5
\u5|vin_db5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[6]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(6));

-- Location: LCCOMB_X23_Y25_N0
\u5|vin_db6[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[6]~feeder_combout\ = \db[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[6]~input_o\,
	combout => \u5|vin_db6[6]~feeder_combout\);

-- Location: FF_X23_Y25_N1
\u5|vin_db6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[6]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(6));

-- Location: FF_X21_Y25_N29
\u5|vin_db7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[5]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(5));

-- Location: LCCOMB_X24_Y25_N8
\u5|vin_db8[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[5]~feeder_combout\ = \db[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[5]~input_o\,
	combout => \u5|vin_db8[5]~feeder_combout\);

-- Location: FF_X24_Y25_N9
\u5|vin_db8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[5]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(5));

-- Location: M9K_X25_Y25_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y25_N30
\u4|fsmc_db[5]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[5]~53_combout\ = (\u5|u6|altsyncram_component|auto_generated|q_b\(5) & (((\u5|u5|altsyncram_component|auto_generated|q_b\(5)) # (!\u4|fsmc_db[0]~24_combout\)))) # (!\u5|u6|altsyncram_component|auto_generated|q_b\(5) & 
-- (!\u4|fsmc_db[0]~25_combout\ & ((\u5|u5|altsyncram_component|auto_generated|q_b\(5)) # (!\u4|fsmc_db[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u6|altsyncram_component|auto_generated|q_b\(5),
	datab => \u4|fsmc_db[0]~25_combout\,
	datac => \u4|fsmc_db[0]~24_combout\,
	datad => \u5|u5|altsyncram_component|auto_generated|q_b\(5),
	combout => \u4|fsmc_db[5]~53_combout\);

-- Location: LCCOMB_X22_Y24_N24
\u4|fsmc_db[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[5]~51_combout\ = (\u5|u1|altsyncram_component|auto_generated|q_b\(5) & (((\u5|u2|altsyncram_component|auto_generated|q_b\(5))) # (!\u4|fsmc_db[0]~19_combout\))) # (!\u5|u1|altsyncram_component|auto_generated|q_b\(5) & 
-- (!\u4|fsmc_db[15]~18_combout\ & ((\u5|u2|altsyncram_component|auto_generated|q_b\(5)) # (!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|altsyncram_component|auto_generated|q_b\(5),
	datab => \u4|fsmc_db[0]~19_combout\,
	datac => \u4|fsmc_db[15]~18_combout\,
	datad => \u5|u2|altsyncram_component|auto_generated|q_b\(5),
	combout => \u4|fsmc_db[5]~51_combout\);

-- Location: LCCOMB_X26_Y22_N26
\u4|fsmc_db[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[5]~54_combout\ = (\u4|fsmc_db[0]~27_combout\ & (\u5|u7|altsyncram_component|auto_generated|q_b\(5) & ((\u5|u8|altsyncram_component|auto_generated|q_b\(5)) # (!\u4|fsmc_db[0]~28_combout\)))) # (!\u4|fsmc_db[0]~27_combout\ & 
-- (((\u5|u8|altsyncram_component|auto_generated|q_b\(5))) # (!\u4|fsmc_db[0]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~27_combout\,
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u5|u8|altsyncram_component|auto_generated|q_b\(5),
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(5),
	combout => \u4|fsmc_db[5]~54_combout\);

-- Location: LCCOMB_X23_Y22_N28
\u4|fsmc_db[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[5]~55_combout\ = (\u4|fsmc_db[5]~52_combout\ & (\u4|fsmc_db[5]~53_combout\ & (\u4|fsmc_db[5]~51_combout\ & \u4|fsmc_db[5]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[5]~52_combout\,
	datab => \u4|fsmc_db[5]~53_combout\,
	datac => \u4|fsmc_db[5]~51_combout\,
	datad => \u4|fsmc_db[5]~54_combout\,
	combout => \u4|fsmc_db[5]~55_combout\);

-- Location: IOIBUF_X41_Y18_N1
\db[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(7),
	o => \db[7]~input_o\);

-- Location: LCCOMB_X24_Y26_N30
\u5|vin_db1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[7]~feeder_combout\ = \db[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[7]~input_o\,
	combout => \u5|vin_db1[7]~feeder_combout\);

-- Location: FF_X24_Y26_N31
\u5|vin_db1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[7]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(7));

-- Location: LCCOMB_X20_Y26_N24
\u5|vin_db2[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[7]~feeder_combout\ = \db[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[7]~input_o\,
	combout => \u5|vin_db2[7]~feeder_combout\);

-- Location: FF_X20_Y26_N25
\u5|vin_db2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[7]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(7));

-- Location: LCCOMB_X24_Y24_N2
\u5|vin_db3[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[7]~feeder_combout\ = \db[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[7]~input_o\,
	combout => \u5|vin_db3[7]~feeder_combout\);

-- Location: FF_X24_Y24_N3
\u5|vin_db3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[7]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(7));

-- Location: LCCOMB_X20_Y26_N10
\u5|vin_db4[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[7]~feeder_combout\ = \db[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[7]~input_o\,
	combout => \u5|vin_db4[7]~feeder_combout\);

-- Location: FF_X20_Y26_N11
\u5|vin_db4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[7]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(7));

-- Location: FF_X21_Y25_N3
\u5|vin_db5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[7]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(7));

-- Location: FF_X16_Y26_N15
\u5|vin_db6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[7]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(7));

-- Location: FF_X21_Y26_N25
\u5|vin_db7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[6]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(6));

-- Location: FF_X24_Y26_N17
\u5|vin_db8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[6]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(6));

-- Location: LCCOMB_X24_Y26_N12
\u5|vin_db8[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[7]~feeder_combout\ = \db[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[7]~input_o\,
	combout => \u5|vin_db8[7]~feeder_combout\);

-- Location: FF_X24_Y26_N13
\u5|vin_db8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[7]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(7));

-- Location: M9K_X25_Y26_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y25_N6
\u4|fsmc_db[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[6]~59_combout\ = (\u5|u8|altsyncram_component|auto_generated|q_b\(6) & (((\u5|u7|altsyncram_component|auto_generated|q_b\(6)) # (!\u4|fsmc_db[0]~27_combout\)))) # (!\u5|u8|altsyncram_component|auto_generated|q_b\(6) & 
-- (!\u4|fsmc_db[0]~28_combout\ & ((\u5|u7|altsyncram_component|auto_generated|q_b\(6)) # (!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|q_b\(6),
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u4|fsmc_db[0]~27_combout\,
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(6),
	combout => \u4|fsmc_db[6]~59_combout\);

-- Location: LCCOMB_X26_Y25_N12
\u4|fsmc_db[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[6]~58_combout\ = (\u5|u5|altsyncram_component|auto_generated|q_b\(6) & (((\u5|u6|altsyncram_component|auto_generated|q_b\(6))) # (!\u4|fsmc_db[0]~25_combout\))) # (!\u5|u5|altsyncram_component|auto_generated|q_b\(6) & 
-- (!\u4|fsmc_db[0]~24_combout\ & ((\u5|u6|altsyncram_component|auto_generated|q_b\(6)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u5|altsyncram_component|auto_generated|q_b\(6),
	datab => \u4|fsmc_db[0]~25_combout\,
	datac => \u4|fsmc_db[0]~24_combout\,
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(6),
	combout => \u4|fsmc_db[6]~58_combout\);

-- Location: LCCOMB_X22_Y24_N14
\u4|fsmc_db[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[6]~56_combout\ = (\u5|u1|altsyncram_component|auto_generated|q_b\(6) & (((\u5|u2|altsyncram_component|auto_generated|q_b\(6))) # (!\u4|fsmc_db[0]~19_combout\))) # (!\u5|u1|altsyncram_component|auto_generated|q_b\(6) & 
-- (!\u4|fsmc_db[15]~18_combout\ & ((\u5|u2|altsyncram_component|auto_generated|q_b\(6)) # (!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|altsyncram_component|auto_generated|q_b\(6),
	datab => \u4|fsmc_db[0]~19_combout\,
	datac => \u4|fsmc_db[15]~18_combout\,
	datad => \u5|u2|altsyncram_component|auto_generated|q_b\(6),
	combout => \u4|fsmc_db[6]~56_combout\);

-- Location: LCCOMB_X24_Y25_N16
\u4|fsmc_db[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[6]~57_combout\ = (\u5|u4|altsyncram_component|auto_generated|q_b\(6) & ((\u5|u3|altsyncram_component|auto_generated|q_b\(6)) # ((!\u4|fsmc_db[0]~21_combout\)))) # (!\u5|u4|altsyncram_component|auto_generated|q_b\(6) & 
-- (!\u4|fsmc_db[0]~22_combout\ & ((\u5|u3|altsyncram_component|auto_generated|q_b\(6)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|altsyncram_component|auto_generated|q_b\(6),
	datab => \u5|u3|altsyncram_component|auto_generated|q_b\(6),
	datac => \u4|fsmc_db[0]~21_combout\,
	datad => \u4|fsmc_db[0]~22_combout\,
	combout => \u4|fsmc_db[6]~57_combout\);

-- Location: LCCOMB_X24_Y25_N20
\u4|fsmc_db[6]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[6]~60_combout\ = (\u4|fsmc_db[6]~59_combout\ & (\u4|fsmc_db[6]~58_combout\ & (\u4|fsmc_db[6]~56_combout\ & \u4|fsmc_db[6]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[6]~59_combout\,
	datab => \u4|fsmc_db[6]~58_combout\,
	datac => \u4|fsmc_db[6]~56_combout\,
	datad => \u4|fsmc_db[6]~57_combout\,
	combout => \u4|fsmc_db[6]~60_combout\);

-- Location: LCCOMB_X24_Y26_N26
\u4|fsmc_db[7]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[7]~63_combout\ = (\u5|u5|altsyncram_component|auto_generated|q_b\(7) & (((\u5|u6|altsyncram_component|auto_generated|q_b\(7))) # (!\u4|fsmc_db[0]~25_combout\))) # (!\u5|u5|altsyncram_component|auto_generated|q_b\(7) & 
-- (!\u4|fsmc_db[0]~24_combout\ & ((\u5|u6|altsyncram_component|auto_generated|q_b\(7)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u5|altsyncram_component|auto_generated|q_b\(7),
	datab => \u4|fsmc_db[0]~25_combout\,
	datac => \u5|u6|altsyncram_component|auto_generated|q_b\(7),
	datad => \u4|fsmc_db[0]~24_combout\,
	combout => \u4|fsmc_db[7]~63_combout\);

-- Location: IOIBUF_X41_Y21_N8
\db[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(8),
	o => \db[8]~input_o\);

-- Location: FF_X19_Y26_N17
\u5|vin_db1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[8]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(8));

-- Location: FF_X21_Y26_N31
\u5|vin_db2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[8]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(8));

-- Location: LCCOMB_X14_Y26_N30
\u5|vin_db3[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[8]~feeder_combout\ = \db[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[8]~input_o\,
	combout => \u5|vin_db3[8]~feeder_combout\);

-- Location: FF_X14_Y26_N31
\u5|vin_db3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[8]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(8));

-- Location: LCCOMB_X17_Y26_N24
\u5|vin_db4[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[8]~feeder_combout\ = \db[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[8]~input_o\,
	combout => \u5|vin_db4[8]~feeder_combout\);

-- Location: FF_X17_Y26_N25
\u5|vin_db4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[8]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(8));

-- Location: FF_X14_Y24_N31
\u5|vin_db5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[8]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(8));

-- Location: FF_X14_Y24_N13
\u5|vin_db6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[8]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(8));

-- Location: FF_X16_Y26_N1
\u5|vin_db7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[7]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(7));

-- Location: LCCOMB_X17_Y26_N10
\u5|vin_db7[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db7[8]~feeder_combout\ = \db[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[8]~input_o\,
	combout => \u5|vin_db7[8]~feeder_combout\);

-- Location: FF_X17_Y26_N11
\u5|vin_db7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db7[8]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(8));

-- Location: LCCOMB_X14_Y26_N0
\u5|vin_db8[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[8]~feeder_combout\ = \db[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[8]~input_o\,
	combout => \u5|vin_db8[8]~feeder_combout\);

-- Location: FF_X14_Y26_N1
\u5|vin_db8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[8]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(8));

-- Location: M9K_X13_Y26_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y22_N24
\u4|fsmc_db[7]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[7]~64_combout\ = (\u5|u7|altsyncram_component|auto_generated|q_b\(7) & (((\u5|u8|altsyncram_component|auto_generated|q_b\(7))) # (!\u4|fsmc_db[0]~28_combout\))) # (!\u5|u7|altsyncram_component|auto_generated|q_b\(7) & 
-- (!\u4|fsmc_db[0]~27_combout\ & ((\u5|u8|altsyncram_component|auto_generated|q_b\(7)) # (!\u4|fsmc_db[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u7|altsyncram_component|auto_generated|q_b\(7),
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u4|fsmc_db[0]~27_combout\,
	datad => \u5|u8|altsyncram_component|auto_generated|q_b\(7),
	combout => \u4|fsmc_db[7]~64_combout\);

-- Location: LCCOMB_X24_Y25_N22
\u4|fsmc_db[7]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[7]~62_combout\ = (\u5|u3|altsyncram_component|auto_generated|q_b\(7) & ((\u5|u4|altsyncram_component|auto_generated|q_b\(7)) # ((!\u4|fsmc_db[0]~22_combout\)))) # (!\u5|u3|altsyncram_component|auto_generated|q_b\(7) & 
-- (!\u4|fsmc_db[0]~21_combout\ & ((\u5|u4|altsyncram_component|auto_generated|q_b\(7)) # (!\u4|fsmc_db[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u3|altsyncram_component|auto_generated|q_b\(7),
	datab => \u5|u4|altsyncram_component|auto_generated|q_b\(7),
	datac => \u4|fsmc_db[0]~21_combout\,
	datad => \u4|fsmc_db[0]~22_combout\,
	combout => \u4|fsmc_db[7]~62_combout\);

-- Location: LCCOMB_X24_Y26_N4
\u4|fsmc_db[7]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[7]~61_combout\ = (\u5|u2|altsyncram_component|auto_generated|q_b\(7) & (((\u5|u1|altsyncram_component|auto_generated|q_b\(7))) # (!\u4|fsmc_db[15]~18_combout\))) # (!\u5|u2|altsyncram_component|auto_generated|q_b\(7) & 
-- (!\u4|fsmc_db[0]~19_combout\ & ((\u5|u1|altsyncram_component|auto_generated|q_b\(7)) # (!\u4|fsmc_db[15]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u2|altsyncram_component|auto_generated|q_b\(7),
	datab => \u4|fsmc_db[15]~18_combout\,
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u1|altsyncram_component|auto_generated|q_b\(7),
	combout => \u4|fsmc_db[7]~61_combout\);

-- Location: LCCOMB_X21_Y22_N10
\u4|fsmc_db[7]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[7]~65_combout\ = (\u4|fsmc_db[7]~63_combout\ & (\u4|fsmc_db[7]~64_combout\ & (\u4|fsmc_db[7]~62_combout\ & \u4|fsmc_db[7]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[7]~63_combout\,
	datab => \u4|fsmc_db[7]~64_combout\,
	datac => \u4|fsmc_db[7]~62_combout\,
	datad => \u4|fsmc_db[7]~61_combout\,
	combout => \u4|fsmc_db[7]~65_combout\);

-- Location: LCCOMB_X14_Y25_N8
\u4|fsmc_db[8]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[8]~67_combout\ = (\u5|u3|altsyncram_component|auto_generated|q_b\(8) & (((\u5|u4|altsyncram_component|auto_generated|q_b\(8)) # (!\u4|fsmc_db[0]~22_combout\)))) # (!\u5|u3|altsyncram_component|auto_generated|q_b\(8) & 
-- (!\u4|fsmc_db[0]~21_combout\ & ((\u5|u4|altsyncram_component|auto_generated|q_b\(8)) # (!\u4|fsmc_db[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u3|altsyncram_component|auto_generated|q_b\(8),
	datab => \u4|fsmc_db[0]~21_combout\,
	datac => \u5|u4|altsyncram_component|auto_generated|q_b\(8),
	datad => \u4|fsmc_db[0]~22_combout\,
	combout => \u4|fsmc_db[8]~67_combout\);

-- Location: LCCOMB_X21_Y22_N20
\u4|fsmc_db[8]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[8]~69_combout\ = (\u5|u7|altsyncram_component|auto_generated|q_b\(8) & (((\u5|u8|altsyncram_component|auto_generated|q_b\(8))) # (!\u4|fsmc_db[0]~28_combout\))) # (!\u5|u7|altsyncram_component|auto_generated|q_b\(8) & 
-- (!\u4|fsmc_db[0]~27_combout\ & ((\u5|u8|altsyncram_component|auto_generated|q_b\(8)) # (!\u4|fsmc_db[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u7|altsyncram_component|auto_generated|q_b\(8),
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u4|fsmc_db[0]~27_combout\,
	datad => \u5|u8|altsyncram_component|auto_generated|q_b\(8),
	combout => \u4|fsmc_db[8]~69_combout\);

-- Location: LCCOMB_X21_Y23_N24
\u4|fsmc_db[8]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[8]~66_combout\ = (\u4|fsmc_db[15]~18_combout\ & (\u5|u1|altsyncram_component|auto_generated|q_b\(8) & ((\u5|u2|altsyncram_component|auto_generated|q_b\(8)) # (!\u4|fsmc_db[0]~19_combout\)))) # (!\u4|fsmc_db[15]~18_combout\ & 
-- (((\u5|u2|altsyncram_component|auto_generated|q_b\(8)) # (!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~18_combout\,
	datab => \u5|u1|altsyncram_component|auto_generated|q_b\(8),
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u2|altsyncram_component|auto_generated|q_b\(8),
	combout => \u4|fsmc_db[8]~66_combout\);

-- Location: LCCOMB_X22_Y22_N4
\u4|fsmc_db[8]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[8]~68_combout\ = (\u5|u5|altsyncram_component|auto_generated|q_b\(8) & (((\u5|u6|altsyncram_component|auto_generated|q_b\(8)) # (!\u4|fsmc_db[0]~25_combout\)))) # (!\u5|u5|altsyncram_component|auto_generated|q_b\(8) & 
-- (!\u4|fsmc_db[0]~24_combout\ & ((\u5|u6|altsyncram_component|auto_generated|q_b\(8)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u5|altsyncram_component|auto_generated|q_b\(8),
	datab => \u4|fsmc_db[0]~24_combout\,
	datac => \u4|fsmc_db[0]~25_combout\,
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(8),
	combout => \u4|fsmc_db[8]~68_combout\);

-- Location: LCCOMB_X21_Y22_N26
\u4|fsmc_db[8]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[8]~70_combout\ = (\u4|fsmc_db[8]~67_combout\ & (\u4|fsmc_db[8]~69_combout\ & (\u4|fsmc_db[8]~66_combout\ & \u4|fsmc_db[8]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[8]~67_combout\,
	datab => \u4|fsmc_db[8]~69_combout\,
	datac => \u4|fsmc_db[8]~66_combout\,
	datad => \u4|fsmc_db[8]~68_combout\,
	combout => \u4|fsmc_db[8]~70_combout\);

-- Location: IOIBUF_X19_Y29_N29
\db[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(9),
	o => \db[9]~input_o\);

-- Location: LCCOMB_X24_Y23_N0
\u5|vin_db1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[9]~feeder_combout\ = \db[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[9]~input_o\,
	combout => \u5|vin_db1[9]~feeder_combout\);

-- Location: FF_X24_Y23_N1
\u5|vin_db1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[9]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(9));

-- Location: FF_X20_Y23_N27
\u5|vin_db2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[9]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(9));

-- Location: IOIBUF_X9_Y29_N29
\db[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(10),
	o => \db[10]~input_o\);

-- Location: LCCOMB_X24_Y23_N30
\u5|vin_db2[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[10]~feeder_combout\ = \db[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[10]~input_o\,
	combout => \u5|vin_db2[10]~feeder_combout\);

-- Location: FF_X24_Y23_N31
\u5|vin_db2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[10]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(10));

-- Location: LCCOMB_X21_Y23_N8
\u5|vin_db3[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[9]~feeder_combout\ = \db[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[9]~input_o\,
	combout => \u5|vin_db3[9]~feeder_combout\);

-- Location: FF_X21_Y23_N9
\u5|vin_db3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[9]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(9));

-- Location: LCCOMB_X23_Y23_N8
\u5|vin_db4[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[9]~feeder_combout\ = \db[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[9]~input_o\,
	combout => \u5|vin_db4[9]~feeder_combout\);

-- Location: FF_X23_Y23_N9
\u5|vin_db4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[9]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(9));

-- Location: LCCOMB_X21_Y23_N22
\u5|vin_db5[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[9]~feeder_combout\ = \db[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[9]~input_o\,
	combout => \u5|vin_db5[9]~feeder_combout\);

-- Location: FF_X21_Y23_N23
\u5|vin_db5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[9]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(9));

-- Location: LCCOMB_X23_Y23_N18
\u5|vin_db6[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[9]~feeder_combout\ = \db[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[9]~input_o\,
	combout => \u5|vin_db6[9]~feeder_combout\);

-- Location: FF_X23_Y23_N19
\u5|vin_db6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[9]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(9));

-- Location: FF_X20_Y23_N1
\u5|vin_db7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[9]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(9));

-- Location: LCCOMB_X24_Y25_N30
\u5|vin_db8[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[9]~feeder_combout\ = \db[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[9]~input_o\,
	combout => \u5|vin_db8[9]~feeder_combout\);

-- Location: FF_X24_Y25_N31
\u5|vin_db8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[9]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(9));

-- Location: M9K_X25_Y23_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y23_N8
\u4|fsmc_db[9]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[9]~73_combout\ = (\u5|u5|altsyncram_component|auto_generated|q_b\(9) & (((\u5|u6|altsyncram_component|auto_generated|q_b\(9)) # (!\u4|fsmc_db[0]~25_combout\)))) # (!\u5|u5|altsyncram_component|auto_generated|q_b\(9) & 
-- (!\u4|fsmc_db[0]~24_combout\ & ((\u5|u6|altsyncram_component|auto_generated|q_b\(9)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u5|altsyncram_component|auto_generated|q_b\(9),
	datab => \u4|fsmc_db[0]~24_combout\,
	datac => \u4|fsmc_db[0]~25_combout\,
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(9),
	combout => \u4|fsmc_db[9]~73_combout\);

-- Location: LCCOMB_X26_Y22_N2
\u4|fsmc_db[9]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[9]~74_combout\ = (\u4|fsmc_db[0]~27_combout\ & (\u5|u7|altsyncram_component|auto_generated|q_b\(9) & ((\u5|u8|altsyncram_component|auto_generated|q_b\(9)) # (!\u4|fsmc_db[0]~28_combout\)))) # (!\u4|fsmc_db[0]~27_combout\ & 
-- (((\u5|u8|altsyncram_component|auto_generated|q_b\(9)) # (!\u4|fsmc_db[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~27_combout\,
	datab => \u5|u7|altsyncram_component|auto_generated|q_b\(9),
	datac => \u4|fsmc_db[0]~28_combout\,
	datad => \u5|u8|altsyncram_component|auto_generated|q_b\(9),
	combout => \u4|fsmc_db[9]~74_combout\);

-- Location: LCCOMB_X20_Y23_N30
\u4|fsmc_db[9]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[9]~72_combout\ = (\u4|fsmc_db[0]~21_combout\ & (\u5|u3|altsyncram_component|auto_generated|q_b\(9) & ((\u5|u4|altsyncram_component|auto_generated|q_b\(9)) # (!\u4|fsmc_db[0]~22_combout\)))) # (!\u4|fsmc_db[0]~21_combout\ & 
-- ((\u5|u4|altsyncram_component|auto_generated|q_b\(9)) # ((!\u4|fsmc_db[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~21_combout\,
	datab => \u5|u4|altsyncram_component|auto_generated|q_b\(9),
	datac => \u5|u3|altsyncram_component|auto_generated|q_b\(9),
	datad => \u4|fsmc_db[0]~22_combout\,
	combout => \u4|fsmc_db[9]~72_combout\);

-- Location: LCCOMB_X26_Y22_N0
\u4|fsmc_db[9]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[9]~71_combout\ = (\u4|fsmc_db[0]~19_combout\ & (\u5|u2|altsyncram_component|auto_generated|q_b\(9) & ((\u5|u1|altsyncram_component|auto_generated|q_b\(9)) # (!\u4|fsmc_db[15]~18_combout\)))) # (!\u4|fsmc_db[0]~19_combout\ & 
-- (((\u5|u1|altsyncram_component|auto_generated|q_b\(9))) # (!\u4|fsmc_db[15]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~19_combout\,
	datab => \u4|fsmc_db[15]~18_combout\,
	datac => \u5|u1|altsyncram_component|auto_generated|q_b\(9),
	datad => \u5|u2|altsyncram_component|auto_generated|q_b\(9),
	combout => \u4|fsmc_db[9]~71_combout\);

-- Location: LCCOMB_X26_Y22_N28
\u4|fsmc_db[9]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[9]~75_combout\ = (\u4|fsmc_db[9]~73_combout\ & (\u4|fsmc_db[9]~74_combout\ & (\u4|fsmc_db[9]~72_combout\ & \u4|fsmc_db[9]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[9]~73_combout\,
	datab => \u4|fsmc_db[9]~74_combout\,
	datac => \u4|fsmc_db[9]~72_combout\,
	datad => \u4|fsmc_db[9]~71_combout\,
	combout => \u4|fsmc_db[9]~75_combout\);

-- Location: LCCOMB_X24_Y27_N8
\u5|vin_db1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[10]~feeder_combout\ = \db[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[10]~input_o\,
	combout => \u5|vin_db1[10]~feeder_combout\);

-- Location: FF_X24_Y27_N9
\u5|vin_db1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[10]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(10));

-- Location: IOIBUF_X30_Y29_N8
\db[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(11),
	o => \db[11]~input_o\);

-- Location: FF_X24_Y27_N13
\u5|vin_db1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[11]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(11));

-- Location: LCCOMB_X26_Y24_N10
\u5|vin_db2[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[11]~feeder_combout\ = \db[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[11]~input_o\,
	combout => \u5|vin_db2[11]~feeder_combout\);

-- Location: FF_X26_Y24_N11
\u5|vin_db2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[11]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(11));

-- Location: LCCOMB_X20_Y27_N24
\u5|vin_db3[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[10]~feeder_combout\ = \db[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[10]~input_o\,
	combout => \u5|vin_db3[10]~feeder_combout\);

-- Location: FF_X20_Y27_N25
\u5|vin_db3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[10]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(10));

-- Location: LCCOMB_X21_Y27_N8
\u5|vin_db4[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[10]~feeder_combout\ = \db[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[10]~input_o\,
	combout => \u5|vin_db4[10]~feeder_combout\);

-- Location: FF_X21_Y27_N9
\u5|vin_db4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[10]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(10));

-- Location: LCCOMB_X26_Y27_N0
\u5|vin_db5[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[10]~feeder_combout\ = \db[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[10]~input_o\,
	combout => \u5|vin_db5[10]~feeder_combout\);

-- Location: FF_X26_Y27_N1
\u5|vin_db5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[10]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(10));

-- Location: LCCOMB_X24_Y24_N20
\u5|vin_db6[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[10]~feeder_combout\ = \db[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[10]~input_o\,
	combout => \u5|vin_db6[10]~feeder_combout\);

-- Location: FF_X24_Y24_N21
\u5|vin_db6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[10]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(10));

-- Location: LCCOMB_X20_Y27_N10
\u5|vin_db7[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db7[10]~feeder_combout\ = \db[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[10]~input_o\,
	combout => \u5|vin_db7[10]~feeder_combout\);

-- Location: FF_X20_Y27_N11
\u5|vin_db7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db7[10]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(10));

-- Location: LCCOMB_X24_Y27_N10
\u5|vin_db8[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[10]~feeder_combout\ = \db[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[10]~input_o\,
	combout => \u5|vin_db8[10]~feeder_combout\);

-- Location: FF_X24_Y27_N11
\u5|vin_db8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[10]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(10));

-- Location: M9K_X25_Y27_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y24_N4
\u4|fsmc_db[10]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[10]~79_combout\ = (\u4|fsmc_db[0]~28_combout\ & (\u5|u8|altsyncram_component|auto_generated|q_b\(10) & ((\u5|u7|altsyncram_component|auto_generated|q_b\(10)) # (!\u4|fsmc_db[0]~27_combout\)))) # (!\u4|fsmc_db[0]~28_combout\ & 
-- ((\u5|u7|altsyncram_component|auto_generated|q_b\(10)) # ((!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~28_combout\,
	datab => \u5|u7|altsyncram_component|auto_generated|q_b\(10),
	datac => \u4|fsmc_db[0]~27_combout\,
	datad => \u5|u8|altsyncram_component|auto_generated|q_b\(10),
	combout => \u4|fsmc_db[10]~79_combout\);

-- Location: LCCOMB_X20_Y23_N24
\u4|fsmc_db[10]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[10]~77_combout\ = (\u4|fsmc_db[0]~21_combout\ & (\u5|u3|altsyncram_component|auto_generated|q_b\(10) & ((\u5|u4|altsyncram_component|auto_generated|q_b\(10)) # (!\u4|fsmc_db[0]~22_combout\)))) # (!\u4|fsmc_db[0]~21_combout\ & 
-- (((\u5|u4|altsyncram_component|auto_generated|q_b\(10))) # (!\u4|fsmc_db[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~21_combout\,
	datab => \u4|fsmc_db[0]~22_combout\,
	datac => \u5|u3|altsyncram_component|auto_generated|q_b\(10),
	datad => \u5|u4|altsyncram_component|auto_generated|q_b\(10),
	combout => \u4|fsmc_db[10]~77_combout\);

-- Location: LCCOMB_X21_Y23_N10
\u4|fsmc_db[10]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[10]~76_combout\ = (\u4|fsmc_db[15]~18_combout\ & (\u5|u1|altsyncram_component|auto_generated|q_b\(10) & ((\u5|u2|altsyncram_component|auto_generated|q_b\(10)) # (!\u4|fsmc_db[0]~19_combout\)))) # (!\u4|fsmc_db[15]~18_combout\ & 
-- ((\u5|u2|altsyncram_component|auto_generated|q_b\(10)) # ((!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~18_combout\,
	datab => \u5|u2|altsyncram_component|auto_generated|q_b\(10),
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u1|altsyncram_component|auto_generated|q_b\(10),
	combout => \u4|fsmc_db[10]~76_combout\);

-- Location: LCCOMB_X24_Y27_N28
\u4|fsmc_db[10]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[10]~78_combout\ = (\u4|fsmc_db[0]~25_combout\ & (\u5|u6|altsyncram_component|auto_generated|q_b\(10) & ((\u5|u5|altsyncram_component|auto_generated|q_b\(10)) # (!\u4|fsmc_db[0]~24_combout\)))) # (!\u4|fsmc_db[0]~25_combout\ & 
-- (((\u5|u5|altsyncram_component|auto_generated|q_b\(10))) # (!\u4|fsmc_db[0]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~25_combout\,
	datab => \u4|fsmc_db[0]~24_combout\,
	datac => \u5|u5|altsyncram_component|auto_generated|q_b\(10),
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(10),
	combout => \u4|fsmc_db[10]~78_combout\);

-- Location: LCCOMB_X20_Y23_N10
\u4|fsmc_db[10]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[10]~80_combout\ = (\u4|fsmc_db[10]~79_combout\ & (\u4|fsmc_db[10]~77_combout\ & (\u4|fsmc_db[10]~76_combout\ & \u4|fsmc_db[10]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[10]~79_combout\,
	datab => \u4|fsmc_db[10]~77_combout\,
	datac => \u4|fsmc_db[10]~76_combout\,
	datad => \u4|fsmc_db[10]~78_combout\,
	combout => \u4|fsmc_db[10]~80_combout\);

-- Location: LCCOMB_X24_Y27_N30
\u4|fsmc_db[11]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[11]~81_combout\ = (\u4|fsmc_db[0]~19_combout\ & (\u5|u2|altsyncram_component|auto_generated|q_b\(11) & ((\u5|u1|altsyncram_component|auto_generated|q_b\(11)) # (!\u4|fsmc_db[15]~18_combout\)))) # (!\u4|fsmc_db[0]~19_combout\ & 
-- (((\u5|u1|altsyncram_component|auto_generated|q_b\(11))) # (!\u4|fsmc_db[15]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~19_combout\,
	datab => \u4|fsmc_db[15]~18_combout\,
	datac => \u5|u1|altsyncram_component|auto_generated|q_b\(11),
	datad => \u5|u2|altsyncram_component|auto_generated|q_b\(11),
	combout => \u4|fsmc_db[11]~81_combout\);

-- Location: IOIBUF_X37_Y29_N8
\db[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(12),
	o => \db[12]~input_o\);

-- Location: LCCOMB_X16_Y22_N22
\u5|vin_db1[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[12]~feeder_combout\ = \db[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[12]~input_o\,
	combout => \u5|vin_db1[12]~feeder_combout\);

-- Location: FF_X16_Y22_N23
\u5|vin_db1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[12]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(12));

-- Location: FF_X17_Y24_N17
\u5|vin_db2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[12]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(12));

-- Location: LCCOMB_X17_Y22_N30
\u5|vin_db3[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[11]~feeder_combout\ = \db[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[11]~input_o\,
	combout => \u5|vin_db3[11]~feeder_combout\);

-- Location: FF_X17_Y22_N31
\u5|vin_db3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[11]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(11));

-- Location: LCCOMB_X17_Y24_N14
\u5|vin_db4[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[11]~feeder_combout\ = \db[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[11]~input_o\,
	combout => \u5|vin_db4[11]~feeder_combout\);

-- Location: FF_X17_Y24_N15
\u5|vin_db4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[11]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(11));

-- Location: FF_X17_Y24_N11
\u5|vin_db4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[12]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(12));

-- Location: LCCOMB_X19_Y22_N0
\u5|vin_db5[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[11]~feeder_combout\ = \db[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[11]~input_o\,
	combout => \u5|vin_db5[11]~feeder_combout\);

-- Location: FF_X19_Y22_N1
\u5|vin_db5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[11]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(11));

-- Location: LCCOMB_X14_Y24_N20
\u5|vin_db6[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[11]~feeder_combout\ = \db[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[11]~input_o\,
	combout => \u5|vin_db6[11]~feeder_combout\);

-- Location: FF_X14_Y24_N21
\u5|vin_db6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[11]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(11));

-- Location: FF_X16_Y22_N1
\u5|vin_db7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[11]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(11));

-- Location: LCCOMB_X16_Y24_N2
\u5|vin_db8[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[11]~feeder_combout\ = \db[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[11]~input_o\,
	combout => \u5|vin_db8[11]~feeder_combout\);

-- Location: FF_X16_Y24_N3
\u5|vin_db8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[11]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(11));

-- Location: M9K_X13_Y22_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y22_N0
\u4|fsmc_db[11]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[11]~83_combout\ = (\u4|fsmc_db[0]~25_combout\ & (\u5|u6|altsyncram_component|auto_generated|q_b\(11) & ((\u5|u5|altsyncram_component|auto_generated|q_b\(11)) # (!\u4|fsmc_db[0]~24_combout\)))) # (!\u4|fsmc_db[0]~25_combout\ & 
-- (((\u5|u5|altsyncram_component|auto_generated|q_b\(11))) # (!\u4|fsmc_db[0]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~25_combout\,
	datab => \u4|fsmc_db[0]~24_combout\,
	datac => \u5|u5|altsyncram_component|auto_generated|q_b\(11),
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(11),
	combout => \u4|fsmc_db[11]~83_combout\);

-- Location: LCCOMB_X21_Y22_N4
\u4|fsmc_db[11]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[11]~84_combout\ = (\u5|u7|altsyncram_component|auto_generated|q_b\(11) & (((\u5|u8|altsyncram_component|auto_generated|q_b\(11)) # (!\u4|fsmc_db[0]~28_combout\)))) # (!\u5|u7|altsyncram_component|auto_generated|q_b\(11) & 
-- (!\u4|fsmc_db[0]~27_combout\ & ((\u5|u8|altsyncram_component|auto_generated|q_b\(11)) # (!\u4|fsmc_db[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u7|altsyncram_component|auto_generated|q_b\(11),
	datab => \u4|fsmc_db[0]~27_combout\,
	datac => \u4|fsmc_db[0]~28_combout\,
	datad => \u5|u8|altsyncram_component|auto_generated|q_b\(11),
	combout => \u4|fsmc_db[11]~84_combout\);

-- Location: LCCOMB_X22_Y22_N2
\u4|fsmc_db[11]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[11]~82_combout\ = (\u5|u4|altsyncram_component|auto_generated|q_b\(11) & (((\u5|u3|altsyncram_component|auto_generated|q_b\(11)) # (!\u4|fsmc_db[0]~21_combout\)))) # (!\u5|u4|altsyncram_component|auto_generated|q_b\(11) & 
-- (!\u4|fsmc_db[0]~22_combout\ & ((\u5|u3|altsyncram_component|auto_generated|q_b\(11)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|altsyncram_component|auto_generated|q_b\(11),
	datab => \u4|fsmc_db[0]~22_combout\,
	datac => \u4|fsmc_db[0]~21_combout\,
	datad => \u5|u3|altsyncram_component|auto_generated|q_b\(11),
	combout => \u4|fsmc_db[11]~82_combout\);

-- Location: LCCOMB_X22_Y22_N22
\u4|fsmc_db[11]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[11]~85_combout\ = (\u4|fsmc_db[11]~81_combout\ & (\u4|fsmc_db[11]~83_combout\ & (\u4|fsmc_db[11]~84_combout\ & \u4|fsmc_db[11]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[11]~81_combout\,
	datab => \u4|fsmc_db[11]~83_combout\,
	datac => \u4|fsmc_db[11]~84_combout\,
	datad => \u4|fsmc_db[11]~82_combout\,
	combout => \u4|fsmc_db[11]~85_combout\);

-- Location: IOIBUF_X28_Y29_N29
\db[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(13),
	o => \db[13]~input_o\);

-- Location: LCCOMB_X17_Y23_N6
\u5|vin_db1[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[13]~feeder_combout\ = \db[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[13]~input_o\,
	combout => \u5|vin_db1[13]~feeder_combout\);

-- Location: FF_X17_Y23_N7
\u5|vin_db1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[13]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(13));

-- Location: LCCOMB_X17_Y24_N28
\u5|vin_db2[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db2[13]~feeder_combout\ = \db[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[13]~input_o\,
	combout => \u5|vin_db2[13]~feeder_combout\);

-- Location: FF_X17_Y24_N29
\u5|vin_db2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db2[13]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(13));

-- Location: LCCOMB_X14_Y23_N16
\u5|vin_db3[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db3[12]~feeder_combout\ = \db[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[12]~input_o\,
	combout => \u5|vin_db3[12]~feeder_combout\);

-- Location: FF_X14_Y23_N17
\u5|vin_db3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db3[12]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(12));

-- Location: FF_X19_Y23_N9
\u5|vin_db3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[13]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(13));

-- Location: LCCOMB_X17_Y24_N22
\u5|vin_db4[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[13]~feeder_combout\ = \db[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[13]~input_o\,
	combout => \u5|vin_db4[13]~feeder_combout\);

-- Location: FF_X17_Y24_N23
\u5|vin_db4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[13]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(13));

-- Location: LCCOMB_X17_Y23_N16
\u5|vin_db5[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[12]~feeder_combout\ = \db[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[12]~input_o\,
	combout => \u5|vin_db5[12]~feeder_combout\);

-- Location: FF_X17_Y23_N17
\u5|vin_db5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[12]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(12));

-- Location: FF_X14_Y24_N27
\u5|vin_db6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[12]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(12));

-- Location: LCCOMB_X15_Y24_N16
\u5|vin_db7[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db7[12]~feeder_combout\ = \db[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[12]~input_o\,
	combout => \u5|vin_db7[12]~feeder_combout\);

-- Location: FF_X15_Y24_N17
\u5|vin_db7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db7[12]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(12));

-- Location: FF_X16_Y24_N5
\u5|vin_db8[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[12]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(12));

-- Location: M9K_X13_Y23_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y23_N12
\u4|fsmc_db[12]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[12]~87_combout\ = (\u5|u4|altsyncram_component|auto_generated|q_b\(12) & (((\u5|u3|altsyncram_component|auto_generated|q_b\(12)) # (!\u4|fsmc_db[0]~21_combout\)))) # (!\u5|u4|altsyncram_component|auto_generated|q_b\(12) & 
-- (!\u4|fsmc_db[0]~22_combout\ & ((\u5|u3|altsyncram_component|auto_generated|q_b\(12)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|altsyncram_component|auto_generated|q_b\(12),
	datab => \u4|fsmc_db[0]~22_combout\,
	datac => \u5|u3|altsyncram_component|auto_generated|q_b\(12),
	datad => \u4|fsmc_db[0]~21_combout\,
	combout => \u4|fsmc_db[12]~87_combout\);

-- Location: LCCOMB_X21_Y21_N0
\u4|fsmc_db[12]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[12]~89_combout\ = (\u4|fsmc_db[0]~27_combout\ & (\u5|u7|altsyncram_component|auto_generated|q_b\(12) & ((\u5|u8|altsyncram_component|auto_generated|q_b\(12)) # (!\u4|fsmc_db[0]~28_combout\)))) # (!\u4|fsmc_db[0]~27_combout\ & 
-- (((\u5|u8|altsyncram_component|auto_generated|q_b\(12))) # (!\u4|fsmc_db[0]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~27_combout\,
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u5|u8|altsyncram_component|auto_generated|q_b\(12),
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(12),
	combout => \u4|fsmc_db[12]~89_combout\);

-- Location: LCCOMB_X17_Y22_N0
\u4|fsmc_db[12]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[12]~88_combout\ = (\u5|u5|altsyncram_component|auto_generated|q_b\(12) & (((\u5|u6|altsyncram_component|auto_generated|q_b\(12))) # (!\u4|fsmc_db[0]~25_combout\))) # (!\u5|u5|altsyncram_component|auto_generated|q_b\(12) & 
-- (!\u4|fsmc_db[0]~24_combout\ & ((\u5|u6|altsyncram_component|auto_generated|q_b\(12)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u5|altsyncram_component|auto_generated|q_b\(12),
	datab => \u4|fsmc_db[0]~25_combout\,
	datac => \u4|fsmc_db[0]~24_combout\,
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(12),
	combout => \u4|fsmc_db[12]~88_combout\);

-- Location: LCCOMB_X21_Y23_N0
\u4|fsmc_db[12]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[12]~86_combout\ = (\u4|fsmc_db[15]~18_combout\ & (\u5|u1|altsyncram_component|auto_generated|q_b\(12) & ((\u5|u2|altsyncram_component|auto_generated|q_b\(12)) # (!\u4|fsmc_db[0]~19_combout\)))) # (!\u4|fsmc_db[15]~18_combout\ & 
-- (((\u5|u2|altsyncram_component|auto_generated|q_b\(12)) # (!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~18_combout\,
	datab => \u5|u1|altsyncram_component|auto_generated|q_b\(12),
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u2|altsyncram_component|auto_generated|q_b\(12),
	combout => \u4|fsmc_db[12]~86_combout\);

-- Location: LCCOMB_X21_Y23_N18
\u4|fsmc_db[12]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[12]~90_combout\ = (\u4|fsmc_db[12]~87_combout\ & (\u4|fsmc_db[12]~89_combout\ & (\u4|fsmc_db[12]~88_combout\ & \u4|fsmc_db[12]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[12]~87_combout\,
	datab => \u4|fsmc_db[12]~89_combout\,
	datac => \u4|fsmc_db[12]~88_combout\,
	datad => \u4|fsmc_db[12]~86_combout\,
	combout => \u4|fsmc_db[12]~90_combout\);

-- Location: LCCOMB_X20_Y23_N6
\u4|fsmc_db[13]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[13]~92_combout\ = (\u5|u3|altsyncram_component|auto_generated|q_b\(13) & (((\u5|u4|altsyncram_component|auto_generated|q_b\(13))) # (!\u4|fsmc_db[0]~22_combout\))) # (!\u5|u3|altsyncram_component|auto_generated|q_b\(13) & 
-- (!\u4|fsmc_db[0]~21_combout\ & ((\u5|u4|altsyncram_component|auto_generated|q_b\(13)) # (!\u4|fsmc_db[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u3|altsyncram_component|auto_generated|q_b\(13),
	datab => \u4|fsmc_db[0]~22_combout\,
	datac => \u5|u4|altsyncram_component|auto_generated|q_b\(13),
	datad => \u4|fsmc_db[0]~21_combout\,
	combout => \u4|fsmc_db[13]~92_combout\);

-- Location: IOIBUF_X39_Y29_N22
\db[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(14),
	o => \db[14]~input_o\);

-- Location: FF_X12_Y24_N1
\u5|vin_db1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[14]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(14));

-- Location: FF_X12_Y24_N31
\u5|vin_db2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[14]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(14));

-- Location: FF_X19_Y24_N11
\u5|vin_db3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[14]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(14));

-- Location: LCCOMB_X17_Y24_N12
\u5|vin_db4[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db4[14]~feeder_combout\ = \db[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[14]~input_o\,
	combout => \u5|vin_db4[14]~feeder_combout\);

-- Location: FF_X17_Y24_N13
\u5|vin_db4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db4[14]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(14));

-- Location: LCCOMB_X21_Y24_N16
\u5|vin_db5[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[13]~feeder_combout\ = \db[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[13]~input_o\,
	combout => \u5|vin_db5[13]~feeder_combout\);

-- Location: FF_X21_Y24_N17
\u5|vin_db5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[13]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(13));

-- Location: LCCOMB_X15_Y24_N30
\u5|vin_db6[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[13]~feeder_combout\ = \db[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[13]~input_o\,
	combout => \u5|vin_db6[13]~feeder_combout\);

-- Location: FF_X15_Y24_N31
\u5|vin_db6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[13]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(13));

-- Location: LCCOMB_X14_Y24_N0
\u5|vin_db6[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[14]~feeder_combout\ = \db[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[14]~input_o\,
	combout => \u5|vin_db6[14]~feeder_combout\);

-- Location: FF_X14_Y24_N1
\u5|vin_db6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[14]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(14));

-- Location: LCCOMB_X15_Y24_N0
\u5|vin_db7[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db7[13]~feeder_combout\ = \db[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[13]~input_o\,
	combout => \u5|vin_db7[13]~feeder_combout\);

-- Location: FF_X15_Y24_N1
\u5|vin_db7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db7[13]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(13));

-- Location: LCCOMB_X19_Y24_N24
\u5|vin_db8[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[13]~feeder_combout\ = \db[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[13]~input_o\,
	combout => \u5|vin_db8[13]~feeder_combout\);

-- Location: FF_X19_Y24_N25
\u5|vin_db8[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[13]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(13));

-- Location: M9K_X13_Y24_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y22_N6
\u4|fsmc_db[13]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[13]~94_combout\ = (\u5|u8|altsyncram_component|auto_generated|q_b\(13) & (((\u5|u7|altsyncram_component|auto_generated|q_b\(13))) # (!\u4|fsmc_db[0]~27_combout\))) # (!\u5|u8|altsyncram_component|auto_generated|q_b\(13) & 
-- (!\u4|fsmc_db[0]~28_combout\ & ((\u5|u7|altsyncram_component|auto_generated|q_b\(13)) # (!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|q_b\(13),
	datab => \u4|fsmc_db[0]~27_combout\,
	datac => \u4|fsmc_db[0]~28_combout\,
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(13),
	combout => \u4|fsmc_db[13]~94_combout\);

-- Location: LCCOMB_X21_Y23_N20
\u4|fsmc_db[13]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[13]~91_combout\ = (\u4|fsmc_db[15]~18_combout\ & (\u5|u1|altsyncram_component|auto_generated|q_b\(13) & ((\u5|u2|altsyncram_component|auto_generated|q_b\(13)) # (!\u4|fsmc_db[0]~19_combout\)))) # (!\u4|fsmc_db[15]~18_combout\ & 
-- ((\u5|u2|altsyncram_component|auto_generated|q_b\(13)) # ((!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~18_combout\,
	datab => \u5|u2|altsyncram_component|auto_generated|q_b\(13),
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u1|altsyncram_component|auto_generated|q_b\(13),
	combout => \u4|fsmc_db[13]~91_combout\);

-- Location: LCCOMB_X14_Y21_N24
\u4|fsmc_db[13]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[13]~93_combout\ = (\u4|fsmc_db[0]~24_combout\ & (\u5|u5|altsyncram_component|auto_generated|q_b\(13) & ((\u5|u6|altsyncram_component|auto_generated|q_b\(13)) # (!\u4|fsmc_db[0]~25_combout\)))) # (!\u4|fsmc_db[0]~24_combout\ & 
-- (((\u5|u6|altsyncram_component|auto_generated|q_b\(13)) # (!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~24_combout\,
	datab => \u5|u5|altsyncram_component|auto_generated|q_b\(13),
	datac => \u4|fsmc_db[0]~25_combout\,
	datad => \u5|u6|altsyncram_component|auto_generated|q_b\(13),
	combout => \u4|fsmc_db[13]~93_combout\);

-- Location: LCCOMB_X20_Y23_N16
\u4|fsmc_db[13]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[13]~95_combout\ = (\u4|fsmc_db[13]~92_combout\ & (\u4|fsmc_db[13]~94_combout\ & (\u4|fsmc_db[13]~91_combout\ & \u4|fsmc_db[13]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[13]~92_combout\,
	datab => \u4|fsmc_db[13]~94_combout\,
	datac => \u4|fsmc_db[13]~91_combout\,
	datad => \u4|fsmc_db[13]~93_combout\,
	combout => \u4|fsmc_db[13]~95_combout\);

-- Location: IOIBUF_X9_Y29_N22
\db[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_db(15),
	o => \db[15]~input_o\);

-- Location: LCCOMB_X17_Y25_N28
\u5|vin_db1[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db1[15]~feeder_combout\ = \db[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db[15]~input_o\,
	combout => \u5|vin_db1[15]~feeder_combout\);

-- Location: FF_X17_Y25_N29
\u5|vin_db1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db1[15]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db1\(15));

-- Location: FF_X17_Y24_N7
\u5|vin_db2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[15]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db2\(15));

-- Location: FF_X17_Y22_N13
\u5|vin_db3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[15]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db3\(15));

-- Location: FF_X17_Y24_N5
\u5|vin_db4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[15]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db4\(15));

-- Location: LCCOMB_X14_Y25_N12
\u5|vin_db5[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db5[14]~feeder_combout\ = \db[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[14]~input_o\,
	combout => \u5|vin_db5[14]~feeder_combout\);

-- Location: FF_X14_Y25_N13
\u5|vin_db5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db5[14]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(14));

-- Location: FF_X20_Y24_N1
\u5|vin_db5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[15]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db5\(15));

-- Location: LCCOMB_X14_Y24_N2
\u5|vin_db6[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db6[15]~feeder_combout\ = \db[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[15]~input_o\,
	combout => \u5|vin_db6[15]~feeder_combout\);

-- Location: FF_X14_Y24_N3
\u5|vin_db6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db6[15]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db6\(15));

-- Location: FF_X21_Y25_N25
\u5|vin_db7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	asdata => \db[14]~input_o\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(14));

-- Location: LCCOMB_X14_Y25_N14
\u5|vin_db8[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[14]~feeder_combout\ = \db[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[14]~input_o\,
	combout => \u5|vin_db8[14]~feeder_combout\);

-- Location: FF_X14_Y25_N15
\u5|vin_db8[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[14]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(14));

-- Location: M9K_X13_Y25_N0
\u5|u1|altsyncram_component|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u1|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u1|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y24_N24
\u4|fsmc_db[14]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[14]~98_combout\ = (\u5|u6|altsyncram_component|auto_generated|q_b\(14) & (((\u5|u5|altsyncram_component|auto_generated|q_b\(14)) # (!\u4|fsmc_db[0]~24_combout\)))) # (!\u5|u6|altsyncram_component|auto_generated|q_b\(14) & 
-- (!\u4|fsmc_db[0]~25_combout\ & ((\u5|u5|altsyncram_component|auto_generated|q_b\(14)) # (!\u4|fsmc_db[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u6|altsyncram_component|auto_generated|q_b\(14),
	datab => \u4|fsmc_db[0]~25_combout\,
	datac => \u4|fsmc_db[0]~24_combout\,
	datad => \u5|u5|altsyncram_component|auto_generated|q_b\(14),
	combout => \u4|fsmc_db[14]~98_combout\);

-- Location: LCCOMB_X20_Y23_N14
\u4|fsmc_db[14]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[14]~97_combout\ = (\u5|u4|altsyncram_component|auto_generated|q_b\(14) & (((\u5|u3|altsyncram_component|auto_generated|q_b\(14)) # (!\u4|fsmc_db[0]~21_combout\)))) # (!\u5|u4|altsyncram_component|auto_generated|q_b\(14) & 
-- (!\u4|fsmc_db[0]~22_combout\ & ((\u5|u3|altsyncram_component|auto_generated|q_b\(14)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|altsyncram_component|auto_generated|q_b\(14),
	datab => \u4|fsmc_db[0]~22_combout\,
	datac => \u5|u3|altsyncram_component|auto_generated|q_b\(14),
	datad => \u4|fsmc_db[0]~21_combout\,
	combout => \u4|fsmc_db[14]~97_combout\);

-- Location: LCCOMB_X21_Y23_N6
\u4|fsmc_db[14]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[14]~96_combout\ = (\u4|fsmc_db[15]~18_combout\ & (\u5|u1|altsyncram_component|auto_generated|q_b\(14) & ((\u5|u2|altsyncram_component|auto_generated|q_b\(14)) # (!\u4|fsmc_db[0]~19_combout\)))) # (!\u4|fsmc_db[15]~18_combout\ & 
-- ((\u5|u2|altsyncram_component|auto_generated|q_b\(14)) # ((!\u4|fsmc_db[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~18_combout\,
	datab => \u5|u2|altsyncram_component|auto_generated|q_b\(14),
	datac => \u4|fsmc_db[0]~19_combout\,
	datad => \u5|u1|altsyncram_component|auto_generated|q_b\(14),
	combout => \u4|fsmc_db[14]~96_combout\);

-- Location: LCCOMB_X21_Y22_N0
\u4|fsmc_db[14]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[14]~99_combout\ = (\u5|u8|altsyncram_component|auto_generated|q_b\(14) & (((\u5|u7|altsyncram_component|auto_generated|q_b\(14)) # (!\u4|fsmc_db[0]~27_combout\)))) # (!\u5|u8|altsyncram_component|auto_generated|q_b\(14) & 
-- (!\u4|fsmc_db[0]~28_combout\ & ((\u5|u7|altsyncram_component|auto_generated|q_b\(14)) # (!\u4|fsmc_db[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u8|altsyncram_component|auto_generated|q_b\(14),
	datab => \u4|fsmc_db[0]~28_combout\,
	datac => \u4|fsmc_db[0]~27_combout\,
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(14),
	combout => \u4|fsmc_db[14]~99_combout\);

-- Location: LCCOMB_X20_Y23_N8
\u4|fsmc_db[14]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[14]~100_combout\ = (\u4|fsmc_db[14]~98_combout\ & (\u4|fsmc_db[14]~97_combout\ & (\u4|fsmc_db[14]~96_combout\ & \u4|fsmc_db[14]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[14]~98_combout\,
	datab => \u4|fsmc_db[14]~97_combout\,
	datac => \u4|fsmc_db[14]~96_combout\,
	datad => \u4|fsmc_db[14]~99_combout\,
	combout => \u4|fsmc_db[14]~100_combout\);

-- Location: LCCOMB_X23_Y25_N4
\u4|fsmc_db[15]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[15]~102_combout\ = (\u4|fsmc_db[0]~22_combout\ & (\u5|u4|altsyncram_component|auto_generated|q_b\(15) & ((\u5|u3|altsyncram_component|auto_generated|q_b\(15)) # (!\u4|fsmc_db[0]~21_combout\)))) # (!\u4|fsmc_db[0]~22_combout\ & 
-- (((\u5|u3|altsyncram_component|auto_generated|q_b\(15)) # (!\u4|fsmc_db[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~22_combout\,
	datab => \u5|u4|altsyncram_component|auto_generated|q_b\(15),
	datac => \u4|fsmc_db[0]~21_combout\,
	datad => \u5|u3|altsyncram_component|auto_generated|q_b\(15),
	combout => \u4|fsmc_db[15]~102_combout\);

-- Location: LCCOMB_X24_Y28_N6
\u5|vin_db7[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db7[15]~feeder_combout\ = \db[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[15]~input_o\,
	combout => \u5|vin_db7[15]~feeder_combout\);

-- Location: FF_X24_Y28_N7
\u5|vin_db7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db7[15]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db7\(15));

-- Location: LCCOMB_X24_Y28_N4
\u5|vin_db8[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|vin_db8[15]~feeder_combout\ = \db[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db[15]~input_o\,
	combout => \u5|vin_db8[15]~feeder_combout\);

-- Location: FF_X24_Y28_N5
\u5|vin_db8[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_rd~clkctrl_outclk\,
	d => \u5|vin_db8[15]~feeder_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	ena => \u5|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|vin_db8\(15));

-- Location: M9K_X25_Y28_N0
\u5|u7|altsyncram_component|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "adc:u5|ad_ram:u7|altsyncram:altsyncram_component|altsyncram_3bn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u5|wr_state\(0),
	portbre => \u5|rden_r~2_combout\,
	clk0 => \busy~input_o\,
	clk1 => \u4|ALT_INV_read_clk~clkctrl_outclk\,
	ena0 => \u5|wr_state\(0),
	ena1 => \u5|u1|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u5|u7|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y24_N20
\u4|fsmc_db[15]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[15]~104_combout\ = (\u4|fsmc_db[0]~28_combout\ & (\u5|u8|altsyncram_component|auto_generated|q_b\(15) & ((\u5|u7|altsyncram_component|auto_generated|q_b\(15)) # (!\u4|fsmc_db[0]~27_combout\)))) # (!\u4|fsmc_db[0]~28_combout\ & 
-- (((\u5|u7|altsyncram_component|auto_generated|q_b\(15))) # (!\u4|fsmc_db[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~28_combout\,
	datab => \u4|fsmc_db[0]~27_combout\,
	datac => \u5|u8|altsyncram_component|auto_generated|q_b\(15),
	datad => \u5|u7|altsyncram_component|auto_generated|q_b\(15),
	combout => \u4|fsmc_db[15]~104_combout\);

-- Location: LCCOMB_X14_Y25_N30
\u4|fsmc_db[15]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[15]~103_combout\ = (\u4|fsmc_db[0]~24_combout\ & (\u5|u5|altsyncram_component|auto_generated|q_b\(15) & ((\u5|u6|altsyncram_component|auto_generated|q_b\(15)) # (!\u4|fsmc_db[0]~25_combout\)))) # (!\u4|fsmc_db[0]~24_combout\ & 
-- ((\u5|u6|altsyncram_component|auto_generated|q_b\(15)) # ((!\u4|fsmc_db[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~24_combout\,
	datab => \u5|u6|altsyncram_component|auto_generated|q_b\(15),
	datac => \u4|fsmc_db[0]~25_combout\,
	datad => \u5|u5|altsyncram_component|auto_generated|q_b\(15),
	combout => \u4|fsmc_db[15]~103_combout\);

-- Location: LCCOMB_X20_Y22_N0
\u4|fsmc_db[15]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[15]~101_combout\ = (\u4|fsmc_db[0]~19_combout\ & (\u5|u2|altsyncram_component|auto_generated|q_b\(15) & ((\u5|u1|altsyncram_component|auto_generated|q_b\(15)) # (!\u4|fsmc_db[15]~18_combout\)))) # (!\u4|fsmc_db[0]~19_combout\ & 
-- (((\u5|u1|altsyncram_component|auto_generated|q_b\(15))) # (!\u4|fsmc_db[15]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[0]~19_combout\,
	datab => \u4|fsmc_db[15]~18_combout\,
	datac => \u5|u1|altsyncram_component|auto_generated|q_b\(15),
	datad => \u5|u2|altsyncram_component|auto_generated|q_b\(15),
	combout => \u4|fsmc_db[15]~101_combout\);

-- Location: LCCOMB_X24_Y20_N8
\u4|fsmc_db[15]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|fsmc_db[15]~105_combout\ = (\u4|fsmc_db[15]~102_combout\ & (\u4|fsmc_db[15]~104_combout\ & (\u4|fsmc_db[15]~103_combout\ & \u4|fsmc_db[15]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|fsmc_db[15]~102_combout\,
	datab => \u4|fsmc_db[15]~104_combout\,
	datac => \u4|fsmc_db[15]~103_combout\,
	datad => \u4|fsmc_db[15]~101_combout\,
	combout => \u4|fsmc_db[15]~105_combout\);

-- Location: LCCOMB_X27_Y28_N8
\u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|counter\(0) $ (VCC)
-- \u3|Add0~1\ = CARRY(\u3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(0),
	datad => VCC,
	combout => \u3|Add0~0_combout\,
	cout => \u3|Add0~1\);

-- Location: LCCOMB_X27_Y27_N10
\u3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~34_combout\ = (\u3|counter\(17) & (!\u3|Add0~33\)) # (!\u3|counter\(17) & ((\u3|Add0~33\) # (GND)))
-- \u3|Add0~35\ = CARRY((!\u3|Add0~33\) # (!\u3|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(17),
	datad => VCC,
	cin => \u3|Add0~33\,
	combout => \u3|Add0~34_combout\,
	cout => \u3|Add0~35\);

-- Location: LCCOMB_X27_Y27_N12
\u3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~36_combout\ = (\u3|counter\(18) & (\u3|Add0~35\ $ (GND))) # (!\u3|counter\(18) & (!\u3|Add0~35\ & VCC))
-- \u3|Add0~37\ = CARRY((\u3|counter\(18) & !\u3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(18),
	datad => VCC,
	cin => \u3|Add0~35\,
	combout => \u3|Add0~36_combout\,
	cout => \u3|Add0~37\);

-- Location: FF_X27_Y27_N13
\u3|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(18));

-- Location: LCCOMB_X27_Y27_N14
\u3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~38_combout\ = (\u3|counter\(19) & (!\u3|Add0~37\)) # (!\u3|counter\(19) & ((\u3|Add0~37\) # (GND)))
-- \u3|Add0~39\ = CARRY((!\u3|Add0~37\) # (!\u3|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(19),
	datad => VCC,
	cin => \u3|Add0~37\,
	combout => \u3|Add0~38_combout\,
	cout => \u3|Add0~39\);

-- Location: LCCOMB_X27_Y27_N16
\u3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~40_combout\ = (\u3|counter\(20) & (\u3|Add0~39\ $ (GND))) # (!\u3|counter\(20) & (!\u3|Add0~39\ & VCC))
-- \u3|Add0~41\ = CARRY((\u3|counter\(20) & !\u3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(20),
	datad => VCC,
	cin => \u3|Add0~39\,
	combout => \u3|Add0~40_combout\,
	cout => \u3|Add0~41\);

-- Location: LCCOMB_X27_Y27_N18
\u3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~42_combout\ = (\u3|counter\(21) & (!\u3|Add0~41\)) # (!\u3|counter\(21) & ((\u3|Add0~41\) # (GND)))
-- \u3|Add0~43\ = CARRY((!\u3|Add0~41\) # (!\u3|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(21),
	datad => VCC,
	cin => \u3|Add0~41\,
	combout => \u3|Add0~42_combout\,
	cout => \u3|Add0~43\);

-- Location: FF_X27_Y27_N19
\u3|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(21));

-- Location: LCCOMB_X27_Y27_N20
\u3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~44_combout\ = (\u3|counter\(22) & (\u3|Add0~43\ $ (GND))) # (!\u3|counter\(22) & (!\u3|Add0~43\ & VCC))
-- \u3|Add0~45\ = CARRY((\u3|counter\(22) & !\u3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(22),
	datad => VCC,
	cin => \u3|Add0~43\,
	combout => \u3|Add0~44_combout\,
	cout => \u3|Add0~45\);

-- Location: FF_X27_Y27_N21
\u3|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(22));

-- Location: LCCOMB_X27_Y27_N22
\u3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~46_combout\ = \u3|counter\(23) $ (\u3|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(23),
	cin => \u3|Add0~45\,
	combout => \u3|Add0~46_combout\);

-- Location: LCCOMB_X27_Y28_N0
\u3|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~11_combout\ = (\u3|Add0~46_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~6_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~4_combout\,
	datab => \u3|Add0~46_combout\,
	datac => \u3|Equal0~6_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|counter~11_combout\);

-- Location: FF_X27_Y28_N1
\u3|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(23));

-- Location: LCCOMB_X26_Y27_N26
\u3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~6_combout\ = (!\u3|counter\(22) & (!\u3|counter\(21) & (\u3|counter\(20) & \u3|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(22),
	datab => \u3|counter\(21),
	datac => \u3|counter\(20),
	datad => \u3|counter\(23),
	combout => \u3|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y28_N4
\u3|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~5_combout\ = (\u3|Add0~38_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~6_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~4_combout\,
	datab => \u3|Add0~38_combout\,
	datac => \u3|Equal0~6_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|counter~5_combout\);

-- Location: FF_X27_Y28_N5
\u3|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(19));

-- Location: LCCOMB_X28_Y28_N4
\u3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~5_combout\ = (\u3|counter\(15) & (\u3|counter\(19) & (!\u3|counter\(14) & !\u3|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(15),
	datab => \u3|counter\(19),
	datac => \u3|counter\(14),
	datad => \u3|counter\(18),
	combout => \u3|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y28_N12
\u3|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~10_combout\ = (\u3|Add0~0_combout\ & (((!\u3|Equal0~6_combout\) # (!\u3|Equal0~5_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~0_combout\,
	datab => \u3|Equal0~4_combout\,
	datac => \u3|Equal0~5_combout\,
	datad => \u3|Equal0~6_combout\,
	combout => \u3|counter~10_combout\);

-- Location: FF_X28_Y28_N13
\u3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(0));

-- Location: LCCOMB_X27_Y28_N10
\u3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~2_combout\ = (\u3|counter\(1) & (!\u3|Add0~1\)) # (!\u3|counter\(1) & ((\u3|Add0~1\) # (GND)))
-- \u3|Add0~3\ = CARRY((!\u3|Add0~1\) # (!\u3|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(1),
	datad => VCC,
	cin => \u3|Add0~1\,
	combout => \u3|Add0~2_combout\,
	cout => \u3|Add0~3\);

-- Location: FF_X27_Y28_N11
\u3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(1));

-- Location: LCCOMB_X27_Y28_N12
\u3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~4_combout\ = (\u3|counter\(2) & (\u3|Add0~3\ $ (GND))) # (!\u3|counter\(2) & (!\u3|Add0~3\ & VCC))
-- \u3|Add0~5\ = CARRY((\u3|counter\(2) & !\u3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(2),
	datad => VCC,
	cin => \u3|Add0~3\,
	combout => \u3|Add0~4_combout\,
	cout => \u3|Add0~5\);

-- Location: FF_X27_Y28_N13
\u3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(2));

-- Location: LCCOMB_X27_Y28_N14
\u3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~6_combout\ = (\u3|counter\(3) & (!\u3|Add0~5\)) # (!\u3|counter\(3) & ((\u3|Add0~5\) # (GND)))
-- \u3|Add0~7\ = CARRY((!\u3|Add0~5\) # (!\u3|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(3),
	datad => VCC,
	cin => \u3|Add0~5\,
	combout => \u3|Add0~6_combout\,
	cout => \u3|Add0~7\);

-- Location: FF_X27_Y28_N15
\u3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(3));

-- Location: LCCOMB_X27_Y28_N16
\u3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~8_combout\ = (\u3|counter\(4) & (\u3|Add0~7\ $ (GND))) # (!\u3|counter\(4) & (!\u3|Add0~7\ & VCC))
-- \u3|Add0~9\ = CARRY((\u3|counter\(4) & !\u3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(4),
	datad => VCC,
	cin => \u3|Add0~7\,
	combout => \u3|Add0~8_combout\,
	cout => \u3|Add0~9\);

-- Location: FF_X27_Y28_N17
\u3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(4));

-- Location: LCCOMB_X27_Y28_N18
\u3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~10_combout\ = (\u3|counter\(5) & (!\u3|Add0~9\)) # (!\u3|counter\(5) & ((\u3|Add0~9\) # (GND)))
-- \u3|Add0~11\ = CARRY((!\u3|Add0~9\) # (!\u3|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(5),
	datad => VCC,
	cin => \u3|Add0~9\,
	combout => \u3|Add0~10_combout\,
	cout => \u3|Add0~11\);

-- Location: FF_X27_Y28_N19
\u3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(5));

-- Location: LCCOMB_X27_Y28_N20
\u3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~12_combout\ = (\u3|counter\(6) & (\u3|Add0~11\ $ (GND))) # (!\u3|counter\(6) & (!\u3|Add0~11\ & VCC))
-- \u3|Add0~13\ = CARRY((\u3|counter\(6) & !\u3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(6),
	datad => VCC,
	cin => \u3|Add0~11\,
	combout => \u3|Add0~12_combout\,
	cout => \u3|Add0~13\);

-- Location: FF_X27_Y28_N21
\u3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(6));

-- Location: LCCOMB_X27_Y28_N22
\u3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~14_combout\ = (\u3|counter\(7) & (!\u3|Add0~13\)) # (!\u3|counter\(7) & ((\u3|Add0~13\) # (GND)))
-- \u3|Add0~15\ = CARRY((!\u3|Add0~13\) # (!\u3|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(7),
	datad => VCC,
	cin => \u3|Add0~13\,
	combout => \u3|Add0~14_combout\,
	cout => \u3|Add0~15\);

-- Location: LCCOMB_X28_Y28_N24
\u3|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~7_combout\ = (\u3|Add0~14_combout\ & (((!\u3|Equal0~6_combout\) # (!\u3|Equal0~5_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~4_combout\,
	datab => \u3|Add0~14_combout\,
	datac => \u3|Equal0~5_combout\,
	datad => \u3|Equal0~6_combout\,
	combout => \u3|counter~7_combout\);

-- Location: FF_X28_Y28_N25
\u3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(7));

-- Location: LCCOMB_X27_Y28_N24
\u3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~16_combout\ = (\u3|counter\(8) & (\u3|Add0~15\ $ (GND))) # (!\u3|counter\(8) & (!\u3|Add0~15\ & VCC))
-- \u3|Add0~17\ = CARRY((\u3|counter\(8) & !\u3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(8),
	datad => VCC,
	cin => \u3|Add0~15\,
	combout => \u3|Add0~16_combout\,
	cout => \u3|Add0~17\);

-- Location: FF_X27_Y28_N25
\u3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(8));

-- Location: LCCOMB_X27_Y28_N26
\u3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~18_combout\ = (\u3|counter\(9) & (!\u3|Add0~17\)) # (!\u3|counter\(9) & ((\u3|Add0~17\) # (GND)))
-- \u3|Add0~19\ = CARRY((!\u3|Add0~17\) # (!\u3|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(9),
	datad => VCC,
	cin => \u3|Add0~17\,
	combout => \u3|Add0~18_combout\,
	cout => \u3|Add0~19\);

-- Location: LCCOMB_X28_Y28_N22
\u3|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~8_combout\ = (\u3|Add0~18_combout\ & (((!\u3|Equal0~6_combout\) # (!\u3|Equal0~5_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~18_combout\,
	datab => \u3|Equal0~4_combout\,
	datac => \u3|Equal0~5_combout\,
	datad => \u3|Equal0~6_combout\,
	combout => \u3|counter~8_combout\);

-- Location: FF_X28_Y28_N23
\u3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(9));

-- Location: LCCOMB_X27_Y28_N28
\u3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~20_combout\ = (\u3|counter\(10) & (\u3|Add0~19\ $ (GND))) # (!\u3|counter\(10) & (!\u3|Add0~19\ & VCC))
-- \u3|Add0~21\ = CARRY((\u3|counter\(10) & !\u3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(10),
	datad => VCC,
	cin => \u3|Add0~19\,
	combout => \u3|Add0~20_combout\,
	cout => \u3|Add0~21\);

-- Location: LCCOMB_X28_Y28_N8
\u3|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~9_combout\ = (\u3|Add0~20_combout\ & (((!\u3|Equal0~6_combout\) # (!\u3|Equal0~5_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~4_combout\,
	datab => \u3|Add0~20_combout\,
	datac => \u3|Equal0~5_combout\,
	datad => \u3|Equal0~6_combout\,
	combout => \u3|counter~9_combout\);

-- Location: FF_X28_Y28_N9
\u3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(10));

-- Location: LCCOMB_X27_Y28_N30
\u3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~22_combout\ = (\u3|counter\(11) & (!\u3|Add0~21\)) # (!\u3|counter\(11) & ((\u3|Add0~21\) # (GND)))
-- \u3|Add0~23\ = CARRY((!\u3|Add0~21\) # (!\u3|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(11),
	datad => VCC,
	cin => \u3|Add0~21\,
	combout => \u3|Add0~22_combout\,
	cout => \u3|Add0~23\);

-- Location: FF_X27_Y28_N31
\u3|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(11));

-- Location: LCCOMB_X27_Y27_N0
\u3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~24_combout\ = (\u3|counter\(12) & (\u3|Add0~23\ $ (GND))) # (!\u3|counter\(12) & (!\u3|Add0~23\ & VCC))
-- \u3|Add0~25\ = CARRY((\u3|counter\(12) & !\u3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(12),
	datad => VCC,
	cin => \u3|Add0~23\,
	combout => \u3|Add0~24_combout\,
	cout => \u3|Add0~25\);

-- Location: LCCOMB_X28_Y28_N0
\u3|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~6_combout\ = (\u3|Add0~24_combout\ & (((!\u3|Equal0~6_combout\) # (!\u3|Equal0~5_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~24_combout\,
	datab => \u3|Equal0~4_combout\,
	datac => \u3|Equal0~5_combout\,
	datad => \u3|Equal0~6_combout\,
	combout => \u3|counter~6_combout\);

-- Location: FF_X28_Y28_N1
\u3|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(12));

-- Location: LCCOMB_X27_Y27_N2
\u3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~26_combout\ = (\u3|counter\(13) & (!\u3|Add0~25\)) # (!\u3|counter\(13) & ((\u3|Add0~25\) # (GND)))
-- \u3|Add0~27\ = CARRY((!\u3|Add0~25\) # (!\u3|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(13),
	datad => VCC,
	cin => \u3|Add0~25\,
	combout => \u3|Add0~26_combout\,
	cout => \u3|Add0~27\);

-- Location: FF_X27_Y27_N3
\u3|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(13));

-- Location: LCCOMB_X27_Y27_N4
\u3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~28_combout\ = (\u3|counter\(14) & (\u3|Add0~27\ $ (GND))) # (!\u3|counter\(14) & (!\u3|Add0~27\ & VCC))
-- \u3|Add0~29\ = CARRY((\u3|counter\(14) & !\u3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(14),
	datad => VCC,
	cin => \u3|Add0~27\,
	combout => \u3|Add0~28_combout\,
	cout => \u3|Add0~29\);

-- Location: FF_X27_Y27_N5
\u3|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(14));

-- Location: LCCOMB_X27_Y27_N6
\u3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~30_combout\ = (\u3|counter\(15) & (!\u3|Add0~29\)) # (!\u3|counter\(15) & ((\u3|Add0~29\) # (GND)))
-- \u3|Add0~31\ = CARRY((!\u3|Add0~29\) # (!\u3|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(15),
	datad => VCC,
	cin => \u3|Add0~29\,
	combout => \u3|Add0~30_combout\,
	cout => \u3|Add0~31\);

-- Location: LCCOMB_X27_Y28_N2
\u3|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~4_combout\ = (\u3|Add0~30_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~6_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~4_combout\,
	datab => \u3|Add0~30_combout\,
	datac => \u3|Equal0~6_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|counter~4_combout\);

-- Location: FF_X27_Y28_N3
\u3|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(15));

-- Location: LCCOMB_X27_Y27_N8
\u3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~32_combout\ = (\u3|counter\(16) & (\u3|Add0~31\ $ (GND))) # (!\u3|counter\(16) & (!\u3|Add0~31\ & VCC))
-- \u3|Add0~33\ = CARRY((\u3|counter\(16) & !\u3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(16),
	datad => VCC,
	cin => \u3|Add0~31\,
	combout => \u3|Add0~32_combout\,
	cout => \u3|Add0~33\);

-- Location: FF_X27_Y27_N9
\u3|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(16));

-- Location: FF_X27_Y27_N11
\u3|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(17));

-- Location: LCCOMB_X28_Y28_N10
\u3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~0_combout\ = (!\u3|counter\(17) & (\u3|counter\(7) & (!\u3|counter\(16) & !\u3|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(17),
	datab => \u3|counter\(7),
	datac => \u3|counter\(16),
	datad => \u3|counter\(13),
	combout => \u3|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y28_N12
\u3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~1_combout\ = (!\u3|counter\(6) & (!\u3|counter\(5) & (!\u3|counter\(3) & !\u3|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(6),
	datab => \u3|counter\(5),
	datac => \u3|counter\(3),
	datad => \u3|counter\(4),
	combout => \u3|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y28_N6
\u3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~2_combout\ = (!\u3|counter\(0) & (!\u3|counter\(2) & (!\u3|counter\(1) & !\u3|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(0),
	datab => \u3|counter\(2),
	datac => \u3|counter\(1),
	datad => \u3|counter\(8),
	combout => \u3|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y28_N28
\u3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~3_combout\ = (\u3|counter\(9) & (!\u3|counter\(11) & (\u3|counter\(10) & \u3|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(9),
	datab => \u3|counter\(11),
	datac => \u3|counter\(10),
	datad => \u3|counter\(12),
	combout => \u3|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y28_N2
\u3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~4_combout\ = (\u3|Equal0~0_combout\ & (\u3|Equal0~1_combout\ & (\u3|Equal0~2_combout\ & \u3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~0_combout\,
	datab => \u3|Equal0~1_combout\,
	datac => \u3|Equal0~2_combout\,
	datad => \u3|Equal0~3_combout\,
	combout => \u3|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y28_N6
\u3|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|counter~12_combout\ = (\u3|Add0~40_combout\ & (((!\u3|Equal0~5_combout\) # (!\u3|Equal0~6_combout\)) # (!\u3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~4_combout\,
	datab => \u3|Add0~40_combout\,
	datac => \u3|Equal0~6_combout\,
	datad => \u3|Equal0~5_combout\,
	combout => \u3|counter~12_combout\);

-- Location: FF_X27_Y28_N7
\u3|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|counter\(20));

-- Location: LCCOMB_X28_Y28_N26
\u3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~1_combout\ = (!\u3|counter\(17) & (!\u3|counter\(12) & (!\u3|counter\(16) & !\u3|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(17),
	datab => \u3|counter\(12),
	datac => \u3|counter\(16),
	datad => \u3|counter\(13),
	combout => \u3|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y28_N0
\u3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~2_combout\ = (((!\u3|counter\(7) & !\u3|counter\(6))) # (!\u3|counter\(8))) # (!\u3|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(9),
	datab => \u3|counter\(7),
	datac => \u3|counter\(6),
	datad => \u3|counter\(8),
	combout => \u3|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y28_N18
\u3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~3_combout\ = (\u3|LessThan0~1_combout\ & (((!\u3|counter\(10) & \u3|LessThan0~2_combout\)) # (!\u3|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan0~1_combout\,
	datab => \u3|counter\(10),
	datac => \u3|counter\(11),
	datad => \u3|LessThan0~2_combout\,
	combout => \u3|LessThan0~3_combout\);

-- Location: LCCOMB_X28_Y28_N30
\u3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~4_combout\ = (!\u3|LessThan0~3_combout\ & ((\u3|counter\(17)) # ((\u3|counter\(16)) # (\u3|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(17),
	datab => \u3|counter\(16),
	datac => \u3|counter\(14),
	datad => \u3|LessThan0~3_combout\,
	combout => \u3|LessThan0~4_combout\);

-- Location: LCCOMB_X26_Y27_N6
\u3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~0_combout\ = (!\u3|counter\(18)) # (!\u3|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|counter\(19),
	datac => \u3|counter\(18),
	combout => \u3|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y27_N12
\u3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~5_combout\ = (\u3|counter\(20)) # ((!\u3|LessThan0~0_combout\ & ((\u3|counter\(15)) # (\u3|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|counter\(20),
	datab => \u3|counter\(15),
	datac => \u3|LessThan0~4_combout\,
	datad => \u3|LessThan0~0_combout\,
	combout => \u3|LessThan0~5_combout\);

-- Location: LCCOMB_X26_Y27_N28
\u3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~6_combout\ = (\u3|counter\(23)) # ((\u3|counter\(22) & ((\u3|LessThan0~5_combout\) # (\u3|counter\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan0~5_combout\,
	datab => \u3|counter\(21),
	datac => \u3|counter\(22),
	datad => \u3|counter\(23),
	combout => \u3|LessThan0~6_combout\);

-- Location: FF_X26_Y27_N29
\u3|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|led~q\);

-- Location: LCCOMB_X38_Y28_N8
\u5|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add4~0_combout\ = \u5|cs_cnt\(0) $ (VCC)
-- \u5|Add4~1\ = CARRY(\u5|cs_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|cs_cnt\(0),
	datad => VCC,
	combout => \u5|Add4~0_combout\,
	cout => \u5|Add4~1\);

-- Location: LCCOMB_X39_Y27_N10
\u5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~4_combout\ = (\u5|ad_rst_cnt\(2) & (\u5|Add0~3\ $ (GND))) # (!\u5|ad_rst_cnt\(2) & (!\u5|Add0~3\ & VCC))
-- \u5|Add0~5\ = CARRY((\u5|ad_rst_cnt\(2) & !\u5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ad_rst_cnt\(2),
	datad => VCC,
	cin => \u5|Add0~3\,
	combout => \u5|Add0~4_combout\,
	cout => \u5|Add0~5\);

-- Location: LCCOMB_X39_Y27_N12
\u5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~6_combout\ = (\u5|ad_rst_cnt\(3) & (!\u5|Add0~5\)) # (!\u5|ad_rst_cnt\(3) & ((\u5|Add0~5\) # (GND)))
-- \u5|Add0~7\ = CARRY((!\u5|Add0~5\) # (!\u5|ad_rst_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ad_rst_cnt\(3),
	datad => VCC,
	cin => \u5|Add0~5\,
	combout => \u5|Add0~6_combout\,
	cout => \u5|Add0~7\);

-- Location: FF_X39_Y27_N13
\u5|ad_rst_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add0~6_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ad_rst_cnt\(3));

-- Location: LCCOMB_X39_Y27_N14
\u5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~8_combout\ = \u5|ad_rst_cnt\(4) $ (!\u5|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ad_rst_cnt\(4),
	cin => \u5|Add0~7\,
	combout => \u5|Add0~8_combout\);

-- Location: FF_X39_Y27_N15
\u5|ad_rst_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add0~8_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ad_rst_cnt\(4));

-- Location: LCCOMB_X39_Y27_N24
\u5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal0~0_combout\ = (!\u5|ad_rst_cnt\(2) & (\u5|ad_rst_cnt\(3) & (!\u5|ad_rst_cnt\(4) & !\u5|ad_rst_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ad_rst_cnt\(2),
	datab => \u5|ad_rst_cnt\(3),
	datac => \u5|ad_rst_cnt\(4),
	datad => \u5|ad_rst_cnt\(1),
	combout => \u5|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y27_N6
\u5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~0_combout\ = \u5|ad_rst_cnt\(0) $ (VCC)
-- \u5|Add0~1\ = CARRY(\u5|ad_rst_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|ad_rst_cnt\(0),
	datad => VCC,
	combout => \u5|Add0~0_combout\,
	cout => \u5|Add0~1\);

-- Location: LCCOMB_X39_Y27_N0
\u5|ad_rst_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|ad_rst_cnt~1_combout\ = (\u5|Add0~0_combout\) # ((\u5|Equal0~0_combout\ & \u5|ad_rst_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Equal0~0_combout\,
	datac => \u5|ad_rst_cnt\(0),
	datad => \u5|Add0~0_combout\,
	combout => \u5|ad_rst_cnt~1_combout\);

-- Location: FF_X39_Y27_N1
\u5|ad_rst_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|ad_rst_cnt~1_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ad_rst_cnt\(0));

-- Location: LCCOMB_X39_Y27_N8
\u5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~2_combout\ = (\u5|ad_rst_cnt\(1) & (!\u5|Add0~1\)) # (!\u5|ad_rst_cnt\(1) & ((\u5|Add0~1\) # (GND)))
-- \u5|Add0~3\ = CARRY((!\u5|Add0~1\) # (!\u5|ad_rst_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|ad_rst_cnt\(1),
	datad => VCC,
	cin => \u5|Add0~1\,
	combout => \u5|Add0~2_combout\,
	cout => \u5|Add0~3\);

-- Location: LCCOMB_X39_Y27_N16
\u5|ad_rst_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|ad_rst_cnt~0_combout\ = (\u5|Add0~2_combout\ & ((!\u5|ad_rst_cnt\(0)) # (!\u5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Equal0~0_combout\,
	datac => \u5|Add0~2_combout\,
	datad => \u5|ad_rst_cnt\(0),
	combout => \u5|ad_rst_cnt~0_combout\);

-- Location: FF_X39_Y27_N17
\u5|ad_rst_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|ad_rst_cnt~0_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ad_rst_cnt\(1));

-- Location: FF_X39_Y27_N11
\u5|ad_rst_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add0~4_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|ad_rst_cnt\(2));

-- Location: LCCOMB_X39_Y27_N2
\u5|ad_rst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|ad_rst~0_combout\ = (!\u5|ad_rst_cnt\(3) & (!\u5|ad_rst_cnt\(4) & ((\u5|ad_rst_cnt\(2)) # (\u5|ad_rst_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ad_rst_cnt\(2),
	datab => \u5|ad_rst_cnt\(3),
	datac => \u5|ad_rst_cnt\(4),
	datad => \u5|ad_rst_cnt\(1),
	combout => \u5|ad_rst~0_combout\);

-- Location: LCCOMB_X37_Y28_N10
\u5|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add2~0_combout\ = \u5|convb_cnt\(0) $ (VCC)
-- \u5|Add2~1\ = CARRY(\u5|convb_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|convb_cnt\(0),
	datad => VCC,
	combout => \u5|Add2~0_combout\,
	cout => \u5|Add2~1\);

-- Location: FF_X37_Y29_N31
\u5|busy1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \busy~input_o\,
	asdata => VCC,
	aload => \u2|rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy1~q\);

-- Location: LCCOMB_X37_Y28_N24
\u5|busy1~INV\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|busy1~INV_combout\ = !\u5|busy1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|busy1~q\,
	combout => \u5|busy1~INV_combout\);

-- Location: FF_X37_Y28_N25
\u5|busy2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|busy1~INV_combout\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy2~q\);

-- Location: FF_X37_Y28_N27
\u5|busy_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u5|busy2~q\,
	clrn => \u2|ALT_INV_rsn~2clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_sig~q\);

-- Location: LCCOMB_X37_Y28_N28
\u5|state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|state[1]~0_combout\ = (\u5|state\(1) & (((\u5|state\(2)) # (!\u5|busy_sig~q\)) # (!\u5|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state\(0),
	datab => \u5|state\(1),
	datac => \u5|busy_sig~q\,
	datad => \u5|state\(2),
	combout => \u5|state[1]~0_combout\);

-- Location: LCCOMB_X37_Y28_N12
\u5|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add2~2_combout\ = (\u5|convb_cnt\(1) & (!\u5|Add2~1\)) # (!\u5|convb_cnt\(1) & ((\u5|Add2~1\) # (GND)))
-- \u5|Add2~3\ = CARRY((!\u5|Add2~1\) # (!\u5|convb_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|convb_cnt\(1),
	datad => VCC,
	cin => \u5|Add2~1\,
	combout => \u5|Add2~2_combout\,
	cout => \u5|Add2~3\);

-- Location: LCCOMB_X37_Y28_N4
\u5|convb_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|convb_cnt~1_combout\ = (\u5|Add2~2_combout\ & ((!\u5|convb_cnt\(0)) # (!\u5|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add2~2_combout\,
	datac => \u5|Equal2~0_combout\,
	datad => \u5|convb_cnt\(0),
	combout => \u5|convb_cnt~1_combout\);

-- Location: FF_X37_Y28_N5
\u5|convb_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|convb_cnt~1_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|convb_cnt\(1));

-- Location: LCCOMB_X37_Y28_N14
\u5|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add2~4_combout\ = (\u5|convb_cnt\(2) & (\u5|Add2~3\ $ (GND))) # (!\u5|convb_cnt\(2) & (!\u5|Add2~3\ & VCC))
-- \u5|Add2~5\ = CARRY((\u5|convb_cnt\(2) & !\u5|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|convb_cnt\(2),
	datad => VCC,
	cin => \u5|Add2~3\,
	combout => \u5|Add2~4_combout\,
	cout => \u5|Add2~5\);

-- Location: FF_X37_Y28_N15
\u5|convb_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add2~4_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|convb_cnt\(2));

-- Location: LCCOMB_X37_Y28_N16
\u5|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add2~6_combout\ = (\u5|convb_cnt\(3) & (!\u5|Add2~5\)) # (!\u5|convb_cnt\(3) & ((\u5|Add2~5\) # (GND)))
-- \u5|Add2~7\ = CARRY((!\u5|Add2~5\) # (!\u5|convb_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|convb_cnt\(3),
	datad => VCC,
	cin => \u5|Add2~5\,
	combout => \u5|Add2~6_combout\,
	cout => \u5|Add2~7\);

-- Location: LCCOMB_X37_Y28_N22
\u5|convb_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|convb_cnt~0_combout\ = (\u5|Add2~6_combout\ & ((!\u5|convb_cnt\(0)) # (!\u5|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Add2~6_combout\,
	datac => \u5|Equal2~0_combout\,
	datad => \u5|convb_cnt\(0),
	combout => \u5|convb_cnt~0_combout\);

-- Location: FF_X37_Y28_N23
\u5|convb_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|convb_cnt~0_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|convb_cnt\(3));

-- Location: LCCOMB_X37_Y28_N18
\u5|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add2~8_combout\ = \u5|convb_cnt\(4) $ (!\u5|Add2~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|convb_cnt\(4),
	cin => \u5|Add2~7\,
	combout => \u5|Add2~8_combout\);

-- Location: FF_X37_Y28_N19
\u5|convb_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add2~8_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|convb_cnt\(4));

-- Location: LCCOMB_X37_Y28_N8
\u5|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal2~0_combout\ = (\u5|convb_cnt\(3) & (!\u5|convb_cnt\(4) & (!\u5|convb_cnt\(2) & !\u5|convb_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|convb_cnt\(3),
	datab => \u5|convb_cnt\(4),
	datac => \u5|convb_cnt\(2),
	datad => \u5|convb_cnt\(1),
	combout => \u5|Equal2~0_combout\);

-- Location: LCCOMB_X37_Y28_N6
\u5|state[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|state[1]~1_combout\ = (\u5|state[1]~0_combout\) # ((\u5|convb_cnt\(0) & (\u5|Equal2~0_combout\ & \u5|Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|convb_cnt\(0),
	datab => \u5|state[1]~0_combout\,
	datac => \u5|Equal2~0_combout\,
	datad => \u5|Decoder0~2_combout\,
	combout => \u5|state[1]~1_combout\);

-- Location: FF_X37_Y28_N7
\u5|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|state[1]~1_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|state\(1));

-- Location: LCCOMB_X37_Y28_N0
\u5|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder0~2_combout\ = (\u5|state\(0) & (!\u5|state\(2) & !\u5|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state\(0),
	datab => \u5|state\(2),
	datac => \u5|state\(1),
	combout => \u5|Decoder0~2_combout\);

-- Location: FF_X37_Y28_N11
\u5|convb_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add2~0_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|convb_cnt\(0));

-- Location: LCCOMB_X37_Y28_N30
\u5|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal2~1_combout\ = (!\u5|Equal2~0_combout\) # (!\u5|convb_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|convb_cnt\(0),
	datac => \u5|Equal2~0_combout\,
	combout => \u5|Equal2~1_combout\);

-- Location: LCCOMB_X37_Y28_N26
\u5|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector2~0_combout\ = (\u5|state\(2)) # ((\u5|state\(1) & ((!\u5|busy_sig~q\))) # (!\u5|state\(1) & (\u5|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal2~1_combout\,
	datab => \u5|state\(1),
	datac => \u5|busy_sig~q\,
	datad => \u5|state\(2),
	combout => \u5|Selector2~0_combout\);

-- Location: LCCOMB_X36_Y28_N2
\u5|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add1~0_combout\ = \u5|conva_cnt\(0) $ (VCC)
-- \u5|Add1~1\ = CARRY(\u5|conva_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|conva_cnt\(0),
	datad => VCC,
	combout => \u5|Add1~0_combout\,
	cout => \u5|Add1~1\);

-- Location: LCCOMB_X36_Y28_N26
\u5|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder0~1_combout\ = (!\u5|state\(0) & (!\u5|state\(2) & !\u5|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state\(0),
	datac => \u5|state\(2),
	datad => \u5|state\(1),
	combout => \u5|Decoder0~1_combout\);

-- Location: FF_X36_Y28_N3
\u5|conva_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add1~0_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|conva_cnt\(0));

-- Location: LCCOMB_X35_Y28_N4
\u5|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~0_combout\ = \u5|busy_cnt\(0) $ (VCC)
-- \u5|Add3~1\ = CARRY(\u5|busy_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|busy_cnt\(0),
	datad => VCC,
	combout => \u5|Add3~0_combout\,
	cout => \u5|Add3~1\);

-- Location: LCCOMB_X35_Y28_N0
\u5|busy_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|busy_cnt~2_combout\ = (\u5|Add3~0_combout\ & !\u5|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|Add3~0_combout\,
	datad => \u5|Equal3~2_combout\,
	combout => \u5|busy_cnt~2_combout\);

-- Location: LCCOMB_X36_Y28_N18
\u5|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder0~3_combout\ = (!\u5|state\(0) & (!\u5|state\(2) & \u5|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state\(0),
	datac => \u5|state\(2),
	datad => \u5|state\(1),
	combout => \u5|Decoder0~3_combout\);

-- Location: FF_X35_Y28_N1
\u5|busy_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|busy_cnt~2_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(0));

-- Location: LCCOMB_X35_Y28_N6
\u5|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~2_combout\ = (\u5|busy_cnt\(1) & (!\u5|Add3~1\)) # (!\u5|busy_cnt\(1) & ((\u5|Add3~1\) # (GND)))
-- \u5|Add3~3\ = CARRY((!\u5|Add3~1\) # (!\u5|busy_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|busy_cnt\(1),
	datad => VCC,
	cin => \u5|Add3~1\,
	combout => \u5|Add3~2_combout\,
	cout => \u5|Add3~3\);

-- Location: LCCOMB_X35_Y28_N30
\u5|busy_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|busy_cnt~1_combout\ = (\u5|Add3~2_combout\ & !\u5|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add3~2_combout\,
	datad => \u5|Equal3~2_combout\,
	combout => \u5|busy_cnt~1_combout\);

-- Location: FF_X35_Y28_N31
\u5|busy_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|busy_cnt~1_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(1));

-- Location: LCCOMB_X35_Y28_N8
\u5|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~4_combout\ = (\u5|busy_cnt\(2) & (\u5|Add3~3\ $ (GND))) # (!\u5|busy_cnt\(2) & (!\u5|Add3~3\ & VCC))
-- \u5|Add3~5\ = CARRY((\u5|busy_cnt\(2) & !\u5|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|busy_cnt\(2),
	datad => VCC,
	cin => \u5|Add3~3\,
	combout => \u5|Add3~4_combout\,
	cout => \u5|Add3~5\);

-- Location: FF_X35_Y28_N9
\u5|busy_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add3~4_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(2));

-- Location: LCCOMB_X35_Y28_N10
\u5|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~6_combout\ = (\u5|busy_cnt\(3) & (!\u5|Add3~5\)) # (!\u5|busy_cnt\(3) & ((\u5|Add3~5\) # (GND)))
-- \u5|Add3~7\ = CARRY((!\u5|Add3~5\) # (!\u5|busy_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|busy_cnt\(3),
	datad => VCC,
	cin => \u5|Add3~5\,
	combout => \u5|Add3~6_combout\,
	cout => \u5|Add3~7\);

-- Location: LCCOMB_X35_Y28_N26
\u5|busy_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|busy_cnt~0_combout\ = (\u5|Add3~6_combout\ & !\u5|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add3~6_combout\,
	datad => \u5|Equal3~2_combout\,
	combout => \u5|busy_cnt~0_combout\);

-- Location: FF_X35_Y28_N27
\u5|busy_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|busy_cnt~0_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(3));

-- Location: LCCOMB_X35_Y28_N12
\u5|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~8_combout\ = (\u5|busy_cnt\(4) & (\u5|Add3~7\ $ (GND))) # (!\u5|busy_cnt\(4) & (!\u5|Add3~7\ & VCC))
-- \u5|Add3~9\ = CARRY((\u5|busy_cnt\(4) & !\u5|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|busy_cnt\(4),
	datad => VCC,
	cin => \u5|Add3~7\,
	combout => \u5|Add3~8_combout\,
	cout => \u5|Add3~9\);

-- Location: FF_X35_Y28_N13
\u5|busy_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add3~8_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(4));

-- Location: LCCOMB_X35_Y28_N14
\u5|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~10_combout\ = (\u5|busy_cnt\(5) & (!\u5|Add3~9\)) # (!\u5|busy_cnt\(5) & ((\u5|Add3~9\) # (GND)))
-- \u5|Add3~11\ = CARRY((!\u5|Add3~9\) # (!\u5|busy_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|busy_cnt\(5),
	datad => VCC,
	cin => \u5|Add3~9\,
	combout => \u5|Add3~10_combout\,
	cout => \u5|Add3~11\);

-- Location: FF_X35_Y28_N15
\u5|busy_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add3~10_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(5));

-- Location: LCCOMB_X35_Y28_N24
\u5|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal3~1_combout\ = (\u5|busy_cnt\(3) & (!\u5|busy_cnt\(5) & (!\u5|busy_cnt\(2) & !\u5|busy_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|busy_cnt\(3),
	datab => \u5|busy_cnt\(5),
	datac => \u5|busy_cnt\(2),
	datad => \u5|busy_cnt\(4),
	combout => \u5|Equal3~1_combout\);

-- Location: LCCOMB_X35_Y28_N16
\u5|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~12_combout\ = (\u5|busy_cnt\(6) & (\u5|Add3~11\ $ (GND))) # (!\u5|busy_cnt\(6) & (!\u5|Add3~11\ & VCC))
-- \u5|Add3~13\ = CARRY((\u5|busy_cnt\(6) & !\u5|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|busy_cnt\(6),
	datad => VCC,
	cin => \u5|Add3~11\,
	combout => \u5|Add3~12_combout\,
	cout => \u5|Add3~13\);

-- Location: FF_X35_Y28_N17
\u5|busy_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add3~12_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(6));

-- Location: LCCOMB_X35_Y28_N18
\u5|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~14_combout\ = (\u5|busy_cnt\(7) & (!\u5|Add3~13\)) # (!\u5|busy_cnt\(7) & ((\u5|Add3~13\) # (GND)))
-- \u5|Add3~15\ = CARRY((!\u5|Add3~13\) # (!\u5|busy_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|busy_cnt\(7),
	datad => VCC,
	cin => \u5|Add3~13\,
	combout => \u5|Add3~14_combout\,
	cout => \u5|Add3~15\);

-- Location: FF_X35_Y28_N19
\u5|busy_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add3~14_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(7));

-- Location: LCCOMB_X35_Y28_N20
\u5|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~16_combout\ = (\u5|busy_cnt\(8) & (\u5|Add3~15\ $ (GND))) # (!\u5|busy_cnt\(8) & (!\u5|Add3~15\ & VCC))
-- \u5|Add3~17\ = CARRY((\u5|busy_cnt\(8) & !\u5|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|busy_cnt\(8),
	datad => VCC,
	cin => \u5|Add3~15\,
	combout => \u5|Add3~16_combout\,
	cout => \u5|Add3~17\);

-- Location: FF_X35_Y28_N21
\u5|busy_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add3~16_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(8));

-- Location: LCCOMB_X35_Y28_N22
\u5|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add3~18_combout\ = \u5|busy_cnt\(9) $ (\u5|Add3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|busy_cnt\(9),
	cin => \u5|Add3~17\,
	combout => \u5|Add3~18_combout\);

-- Location: FF_X35_Y28_N23
\u5|busy_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add3~18_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|busy_cnt\(9));

-- Location: LCCOMB_X35_Y28_N28
\u5|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal3~0_combout\ = (!\u5|busy_cnt\(8) & (!\u5|busy_cnt\(7) & (!\u5|busy_cnt\(9) & !\u5|busy_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|busy_cnt\(8),
	datab => \u5|busy_cnt\(7),
	datac => \u5|busy_cnt\(9),
	datad => \u5|busy_cnt\(6),
	combout => \u5|Equal3~0_combout\);

-- Location: LCCOMB_X35_Y28_N2
\u5|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal3~2_combout\ = (\u5|Equal3~1_combout\ & (\u5|Equal3~0_combout\ & (\u5|busy_cnt\(1) & !\u5|busy_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal3~1_combout\,
	datab => \u5|Equal3~0_combout\,
	datac => \u5|busy_cnt\(1),
	datad => \u5|busy_cnt\(0),
	combout => \u5|Equal3~2_combout\);

-- Location: LCCOMB_X36_Y28_N4
\u5|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add1~2_combout\ = (\u5|conva_cnt\(1) & (!\u5|Add1~1\)) # (!\u5|conva_cnt\(1) & ((\u5|Add1~1\) # (GND)))
-- \u5|Add1~3\ = CARRY((!\u5|Add1~1\) # (!\u5|conva_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|conva_cnt\(1),
	datad => VCC,
	cin => \u5|Add1~1\,
	combout => \u5|Add1~2_combout\,
	cout => \u5|Add1~3\);

-- Location: LCCOMB_X36_Y28_N22
\u5|conva_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|conva_cnt~1_combout\ = (\u5|Add1~2_combout\ & ((!\u5|conva_cnt\(0)) # (!\u5|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Equal1~0_combout\,
	datac => \u5|Add1~2_combout\,
	datad => \u5|conva_cnt\(0),
	combout => \u5|conva_cnt~1_combout\);

-- Location: FF_X36_Y28_N23
\u5|conva_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|conva_cnt~1_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|conva_cnt\(1));

-- Location: LCCOMB_X36_Y28_N6
\u5|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add1~4_combout\ = (\u5|conva_cnt\(2) & (\u5|Add1~3\ $ (GND))) # (!\u5|conva_cnt\(2) & (!\u5|Add1~3\ & VCC))
-- \u5|Add1~5\ = CARRY((\u5|conva_cnt\(2) & !\u5|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|conva_cnt\(2),
	datad => VCC,
	cin => \u5|Add1~3\,
	combout => \u5|Add1~4_combout\,
	cout => \u5|Add1~5\);

-- Location: FF_X36_Y28_N7
\u5|conva_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add1~4_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|conva_cnt\(2));

-- Location: LCCOMB_X36_Y28_N8
\u5|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add1~6_combout\ = (\u5|conva_cnt\(3) & (!\u5|Add1~5\)) # (!\u5|conva_cnt\(3) & ((\u5|Add1~5\) # (GND)))
-- \u5|Add1~7\ = CARRY((!\u5|Add1~5\) # (!\u5|conva_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|conva_cnt\(3),
	datad => VCC,
	cin => \u5|Add1~5\,
	combout => \u5|Add1~6_combout\,
	cout => \u5|Add1~7\);

-- Location: LCCOMB_X36_Y28_N0
\u5|conva_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|conva_cnt~0_combout\ = (\u5|Add1~6_combout\ & ((!\u5|conva_cnt\(0)) # (!\u5|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Equal1~0_combout\,
	datac => \u5|Add1~6_combout\,
	datad => \u5|conva_cnt\(0),
	combout => \u5|conva_cnt~0_combout\);

-- Location: FF_X36_Y28_N1
\u5|conva_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|conva_cnt~0_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|conva_cnt\(3));

-- Location: LCCOMB_X36_Y28_N10
\u5|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add1~8_combout\ = \u5|conva_cnt\(4) $ (!\u5|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|conva_cnt\(4),
	cin => \u5|Add1~7\,
	combout => \u5|Add1~8_combout\);

-- Location: FF_X36_Y28_N11
\u5|conva_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add1~8_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|conva_cnt\(4));

-- Location: LCCOMB_X36_Y28_N28
\u5|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal1~0_combout\ = (!\u5|conva_cnt\(4) & (\u5|conva_cnt\(3) & (!\u5|conva_cnt\(1) & !\u5|conva_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|conva_cnt\(4),
	datab => \u5|conva_cnt\(3),
	datac => \u5|conva_cnt\(1),
	datad => \u5|conva_cnt\(2),
	combout => \u5|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y28_N24
\u5|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector2~1_combout\ = (\u5|state\(1) & (((\u5|Equal3~2_combout\)))) # (!\u5|state\(1) & (\u5|conva_cnt\(0) & ((\u5|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state\(1),
	datab => \u5|conva_cnt\(0),
	datac => \u5|Equal3~2_combout\,
	datad => \u5|Equal1~0_combout\,
	combout => \u5|Selector2~1_combout\);

-- Location: LCCOMB_X37_Y28_N2
\u5|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector2~2_combout\ = (\u5|state\(0) & (\u5|Selector2~0_combout\)) # (!\u5|state\(0) & (((\u5|Selector2~1_combout\ & !\u5|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Selector2~0_combout\,
	datab => \u5|Selector2~1_combout\,
	datac => \u5|state\(0),
	datad => \u5|state\(2),
	combout => \u5|Selector2~2_combout\);

-- Location: FF_X37_Y28_N3
\u5|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Selector2~2_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|state\(0));

-- Location: LCCOMB_X38_Y28_N6
\u5|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector0~0_combout\ = (\u5|state\(2) & ((\u5|state\(1)) # ((\u5|state\(0)) # (\u5|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state\(1),
	datab => \u5|state\(2),
	datac => \u5|state\(0),
	datad => \u5|Equal4~2_combout\,
	combout => \u5|Selector0~0_combout\);

-- Location: LCCOMB_X37_Y28_N20
\u5|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector0~1_combout\ = (\u5|Selector0~0_combout\) # ((\u5|state\(0) & (\u5|state\(1) & \u5|busy_sig~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state\(0),
	datab => \u5|state\(1),
	datac => \u5|busy_sig~q\,
	datad => \u5|Selector0~0_combout\,
	combout => \u5|Selector0~1_combout\);

-- Location: FF_X37_Y28_N21
\u5|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Selector0~1_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|state\(2));

-- Location: LCCOMB_X38_Y28_N4
\u5|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Decoder0~0_combout\ = (\u5|state\(2) & (!\u5|state\(0) & !\u5|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|state\(2),
	datac => \u5|state\(0),
	datad => \u5|state\(1),
	combout => \u5|Decoder0~0_combout\);

-- Location: FF_X38_Y28_N9
\u5|cs_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add4~0_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_cnt\(0));

-- Location: LCCOMB_X38_Y28_N10
\u5|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add4~2_combout\ = (\u5|cs_cnt\(1) & (!\u5|Add4~1\)) # (!\u5|cs_cnt\(1) & ((\u5|Add4~1\) # (GND)))
-- \u5|Add4~3\ = CARRY((!\u5|Add4~1\) # (!\u5|cs_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|cs_cnt\(1),
	datad => VCC,
	cin => \u5|Add4~1\,
	combout => \u5|Add4~2_combout\,
	cout => \u5|Add4~3\);

-- Location: LCCOMB_X38_Y28_N14
\u5|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add4~6_combout\ = (\u5|cs_cnt\(3) & (!\u5|Add4~5\)) # (!\u5|cs_cnt\(3) & ((\u5|Add4~5\) # (GND)))
-- \u5|Add4~7\ = CARRY((!\u5|Add4~5\) # (!\u5|cs_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|cs_cnt\(3),
	datad => VCC,
	cin => \u5|Add4~5\,
	combout => \u5|Add4~6_combout\,
	cout => \u5|Add4~7\);

-- Location: LCCOMB_X38_Y28_N16
\u5|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add4~8_combout\ = (\u5|cs_cnt\(4) & (\u5|Add4~7\ $ (GND))) # (!\u5|cs_cnt\(4) & (!\u5|Add4~7\ & VCC))
-- \u5|Add4~9\ = CARRY((\u5|cs_cnt\(4) & !\u5|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|cs_cnt\(4),
	datad => VCC,
	cin => \u5|Add4~7\,
	combout => \u5|Add4~8_combout\,
	cout => \u5|Add4~9\);

-- Location: FF_X38_Y28_N17
\u5|cs_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add4~8_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_cnt\(4));

-- Location: LCCOMB_X38_Y28_N18
\u5|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add4~10_combout\ = (\u5|cs_cnt\(5) & (!\u5|Add4~9\)) # (!\u5|cs_cnt\(5) & ((\u5|Add4~9\) # (GND)))
-- \u5|Add4~11\ = CARRY((!\u5|Add4~9\) # (!\u5|cs_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|cs_cnt\(5),
	datad => VCC,
	cin => \u5|Add4~9\,
	combout => \u5|Add4~10_combout\,
	cout => \u5|Add4~11\);

-- Location: FF_X38_Y28_N19
\u5|cs_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add4~10_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_cnt\(5));

-- Location: LCCOMB_X38_Y28_N20
\u5|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add4~12_combout\ = (\u5|cs_cnt\(6) & (\u5|Add4~11\ $ (GND))) # (!\u5|cs_cnt\(6) & (!\u5|Add4~11\ & VCC))
-- \u5|Add4~13\ = CARRY((\u5|cs_cnt\(6) & !\u5|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|cs_cnt\(6),
	datad => VCC,
	cin => \u5|Add4~11\,
	combout => \u5|Add4~12_combout\,
	cout => \u5|Add4~13\);

-- Location: LCCOMB_X38_Y28_N30
\u5|cs_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cs_cnt~0_combout\ = (\u5|Add4~12_combout\ & ((!\u5|Equal4~0_combout\) # (!\u5|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Add4~12_combout\,
	datac => \u5|Equal4~1_combout\,
	datad => \u5|Equal4~0_combout\,
	combout => \u5|cs_cnt~0_combout\);

-- Location: FF_X38_Y28_N31
\u5|cs_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|cs_cnt~0_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_cnt\(6));

-- Location: LCCOMB_X38_Y28_N22
\u5|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add4~14_combout\ = \u5|cs_cnt\(7) $ (\u5|Add4~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|cs_cnt\(7),
	cin => \u5|Add4~13\,
	combout => \u5|Add4~14_combout\);

-- Location: FF_X38_Y28_N23
\u5|cs_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add4~14_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_cnt\(7));

-- Location: LCCOMB_X38_Y28_N28
\u5|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal4~0_combout\ = (\u5|cs_cnt\(6) & (!\u5|cs_cnt\(5) & (!\u5|cs_cnt\(7) & !\u5|cs_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|cs_cnt\(6),
	datab => \u5|cs_cnt\(5),
	datac => \u5|cs_cnt\(7),
	datad => \u5|cs_cnt\(4),
	combout => \u5|Equal4~0_combout\);

-- Location: LCCOMB_X38_Y28_N24
\u5|cs_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cs_cnt~2_combout\ = (\u5|Add4~2_combout\ & ((!\u5|Equal4~0_combout\) # (!\u5|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add4~2_combout\,
	datac => \u5|Equal4~1_combout\,
	datad => \u5|Equal4~0_combout\,
	combout => \u5|cs_cnt~2_combout\);

-- Location: FF_X38_Y28_N25
\u5|cs_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|cs_cnt~2_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_cnt\(1));

-- Location: LCCOMB_X38_Y28_N12
\u5|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add4~4_combout\ = (\u5|cs_cnt\(2) & (\u5|Add4~3\ $ (GND))) # (!\u5|cs_cnt\(2) & (!\u5|Add4~3\ & VCC))
-- \u5|Add4~5\ = CARRY((\u5|cs_cnt\(2) & !\u5|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|cs_cnt\(2),
	datad => VCC,
	cin => \u5|Add4~3\,
	combout => \u5|Add4~4_combout\,
	cout => \u5|Add4~5\);

-- Location: LCCOMB_X38_Y28_N2
\u5|cs_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cs_cnt~1_combout\ = (\u5|Add4~4_combout\ & ((!\u5|Equal4~0_combout\) # (!\u5|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add4~4_combout\,
	datac => \u5|Equal4~1_combout\,
	datad => \u5|Equal4~0_combout\,
	combout => \u5|cs_cnt~1_combout\);

-- Location: FF_X38_Y28_N3
\u5|cs_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|cs_cnt~1_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_cnt\(2));

-- Location: FF_X38_Y28_N15
\u5|cs_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Add4~6_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_cnt\(3));

-- Location: LCCOMB_X38_Y28_N26
\u5|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal4~1_combout\ = (!\u5|cs_cnt\(3) & (\u5|cs_cnt\(2) & (\u5|cs_cnt\(0) & !\u5|cs_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|cs_cnt\(3),
	datab => \u5|cs_cnt\(2),
	datac => \u5|cs_cnt\(0),
	datad => \u5|cs_cnt\(1),
	combout => \u5|Equal4~1_combout\);

-- Location: LCCOMB_X38_Y28_N0
\u5|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal4~2_combout\ = (!\u5|Equal4~0_combout\) # (!\u5|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|Equal4~1_combout\,
	datad => \u5|Equal4~0_combout\,
	combout => \u5|Equal4~2_combout\);

-- Location: FF_X38_Y28_N1
\u5|cs_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Equal4~2_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|cs_r~q\);

-- Location: LCCOMB_X36_Y28_N12
\u5|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Equal1~1_combout\ = (!\u5|conva_cnt\(0)) # (!\u5|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Equal1~0_combout\,
	datad => \u5|conva_cnt\(0),
	combout => \u5|Equal1~1_combout\);

-- Location: FF_X36_Y28_N13
\u5|conva_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Equal1~1_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|conva_r~q\);

-- Location: FF_X37_Y28_N31
\u5|convb_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u5|Equal2~1_combout\,
	clrn => \u5|ALT_INV_ad_rst~0_combout\,
	ena => \u5|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|convb_r~q\);

-- Location: IOIBUF_X7_Y0_N29
\fsmc_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_clk,
	o => \fsmc_clk~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\fsmc_ab[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fsmc_ab(7),
	o => \fsmc_ab[7]~input_o\);
END structure;


