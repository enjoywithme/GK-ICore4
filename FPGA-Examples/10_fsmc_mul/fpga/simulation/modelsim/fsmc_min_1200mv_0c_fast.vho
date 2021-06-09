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

-- DATE "08/03/2017 14:51:45"

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

ENTITY 	fsmc IS
    PORT (
	clk_25m : IN std_logic;
	fpga_ledr : OUT std_logic;
	fpga_ledg : OUT std_logic;
	fpga_ledb : OUT std_logic;
	FSMC_CLK : IN std_logic;
	NADV : IN std_logic;
	WRn : IN std_logic;
	RDn : IN std_logic;
	CSn : IN std_logic;
	AB : IN std_logic_vector(23 DOWNTO 16);
	DB : INOUT std_logic_vector(15 DOWNTO 0)
	);
END fsmc;

-- Design Ports Information
-- fpga_ledr	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_ledg	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_ledb	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSMC_CLK	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB[16]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB[17]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB[18]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB[19]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB[20]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB[21]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB[22]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB[23]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[1]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[8]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[9]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[10]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[12]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[13]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[14]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[15]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDn	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CSn	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRn	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NADV	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_25m	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fsmc IS
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
SIGNAL ww_fpga_ledr : std_logic;
SIGNAL ww_fpga_ledg : std_logic;
SIGNAL ww_fpga_ledb : std_logic;
SIGNAL ww_FSMC_CLK : std_logic;
SIGNAL ww_NADV : std_logic;
SIGNAL ww_WRn : std_logic;
SIGNAL ww_RDn : std_logic;
SIGNAL ww_CSn : std_logic;
SIGNAL ww_AB : std_logic_vector(23 DOWNTO 16);
SIGNAL \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u3|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSMC_CLK~input_o\ : std_logic;
SIGNAL \AB[16]~input_o\ : std_logic;
SIGNAL \AB[17]~input_o\ : std_logic;
SIGNAL \AB[18]~input_o\ : std_logic;
SIGNAL \AB[19]~input_o\ : std_logic;
SIGNAL \AB[20]~input_o\ : std_logic;
SIGNAL \AB[21]~input_o\ : std_logic;
SIGNAL \AB[22]~input_o\ : std_logic;
SIGNAL \AB[23]~input_o\ : std_logic;
SIGNAL \WRn~input_o\ : std_logic;
SIGNAL \CSn~input_o\ : std_logic;
SIGNAL \u3|wr~combout\ : std_logic;
SIGNAL \RDn~input_o\ : std_logic;
SIGNAL \u3|rd~combout\ : std_logic;
SIGNAL \clk_25m~input_o\ : std_logic;
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \u3|wr_clk1~0_combout\ : std_logic;
SIGNAL \u3|wr_clk1~q\ : std_logic;
SIGNAL \u3|wr_clk2~q\ : std_logic;
SIGNAL \u3|clk~combout\ : std_logic;
SIGNAL \u3|clk~clkctrl_outclk\ : std_logic;
SIGNAL \DB[0]~input_o\ : std_logic;
SIGNAL \NADV~input_o\ : std_logic;
SIGNAL \u3|address[0]~feeder_combout\ : std_logic;
SIGNAL \DB[1]~input_o\ : std_logic;
SIGNAL \u3|address[1]~feeder_combout\ : std_logic;
SIGNAL \DB[2]~input_o\ : std_logic;
SIGNAL \u3|address[2]~feeder_combout\ : std_logic;
SIGNAL \DB[3]~input_o\ : std_logic;
SIGNAL \u3|address[3]~feeder_combout\ : std_logic;
SIGNAL \DB[4]~input_o\ : std_logic;
SIGNAL \DB[5]~input_o\ : std_logic;
SIGNAL \DB[6]~input_o\ : std_logic;
SIGNAL \DB[7]~input_o\ : std_logic;
SIGNAL \u3|address[7]~feeder_combout\ : std_logic;
SIGNAL \DB[8]~input_o\ : std_logic;
SIGNAL \DB[9]~input_o\ : std_logic;
SIGNAL \DB[10]~input_o\ : std_logic;
SIGNAL \DB[11]~input_o\ : std_logic;
SIGNAL \DB[12]~input_o\ : std_logic;
SIGNAL \DB[13]~input_o\ : std_logic;
SIGNAL \DB[14]~input_o\ : std_logic;
SIGNAL \DB[15]~input_o\ : std_logic;
SIGNAL \u3|u1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u3|address\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u3|ALT_INV_wr~combout\ : std_logic;

BEGIN

ww_clk_25m <= clk_25m;
fpga_ledr <= ww_fpga_ledr;
fpga_ledg <= ww_fpga_ledg;
fpga_ledb <= ww_fpga_ledb;
ww_FSMC_CLK <= FSMC_CLK;
ww_NADV <= NADV;
ww_WRn <= WRn;
ww_RDn <= RDn;
ww_CSn <= CSn;
ww_AB <= AB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \DB[15]~input_o\ & \DB[14]~input_o\ & \DB[13]~input_o\ & \DB[12]~input_o\ & \DB[11]~input_o\ & \DB[10]~input_o\ & \DB[9]~input_o\ & \DB[8]~input_o\ & \DB[7]~input_o\
& \DB[6]~input_o\ & \DB[5]~input_o\ & \DB[4]~input_o\ & \DB[3]~input_o\ & \DB[2]~input_o\ & \DB[1]~input_o\ & \DB[0]~input_o\);

\u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u3|address\(7) & \u3|address\(6) & \u3|address\(5) & \u3|address\(4) & \u3|address\(3) & \u3|address\(2) & \u3|address\(1) & \u3|address\(0));

\u3|u1|altsyncram_component|auto_generated|q_a\(0) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u3|u1|altsyncram_component|auto_generated|q_a\(1) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u3|u1|altsyncram_component|auto_generated|q_a\(2) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u3|u1|altsyncram_component|auto_generated|q_a\(3) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u3|u1|altsyncram_component|auto_generated|q_a\(4) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u3|u1|altsyncram_component|auto_generated|q_a\(5) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u3|u1|altsyncram_component|auto_generated|q_a\(6) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u3|u1|altsyncram_component|auto_generated|q_a\(7) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\u3|u1|altsyncram_component|auto_generated|q_a\(8) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\u3|u1|altsyncram_component|auto_generated|q_a\(9) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\u3|u1|altsyncram_component|auto_generated|q_a\(10) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\u3|u1|altsyncram_component|auto_generated|q_a\(11) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\u3|u1|altsyncram_component|auto_generated|q_a\(12) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\u3|u1|altsyncram_component|auto_generated|q_a\(13) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\u3|u1|altsyncram_component|auto_generated|q_a\(14) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\u3|u1|altsyncram_component|auto_generated|q_a\(15) <= \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\u1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_25m~input_o\);

\u1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\u1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\u1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\u1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\u1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \u1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\u3|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|clk~combout\);

\u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|altpll_component|auto_generated|wire_pll1_clk\(0));
\u3|ALT_INV_wr~combout\ <= NOT \u3|wr~combout\;

-- Location: IOOBUF_X3_Y0_N2
\fpga_ledr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_fpga_ledr);

-- Location: IOOBUF_X19_Y0_N30
\fpga_ledg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fpga_ledg);

-- Location: IOOBUF_X9_Y0_N2
\fpga_ledb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_fpga_ledb);

-- Location: IOOBUF_X41_Y13_N23
\DB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(0),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(0));

-- Location: IOOBUF_X41_Y14_N9
\DB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(1),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(1));

-- Location: IOOBUF_X41_Y14_N2
\DB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(2),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(2));

-- Location: IOOBUF_X41_Y7_N23
\DB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(3),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(3));

-- Location: IOOBUF_X41_Y11_N2
\DB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(4),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(4));

-- Location: IOOBUF_X41_Y12_N23
\DB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(5),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(5));

-- Location: IOOBUF_X41_Y10_N16
\DB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(6),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(6));

-- Location: IOOBUF_X41_Y10_N9
\DB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(7),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(7));

-- Location: IOOBUF_X41_Y8_N9
\DB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(8),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(8));

-- Location: IOOBUF_X41_Y8_N2
\DB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(9),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(9));

-- Location: IOOBUF_X41_Y7_N2
\DB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(10),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(10));

-- Location: IOOBUF_X41_Y8_N23
\DB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(11),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(11));

-- Location: IOOBUF_X41_Y5_N9
\DB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(12),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(12));

-- Location: IOOBUF_X41_Y5_N2
\DB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(13),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(13));

-- Location: IOOBUF_X41_Y8_N16
\DB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(14),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(14));

-- Location: IOOBUF_X41_Y9_N23
\DB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|altsyncram_component|auto_generated|q_a\(15),
	oe => \u3|rd~combout\,
	devoe => ww_devoe,
	o => DB(15));

-- Location: IOIBUF_X41_Y14_N22
\WRn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRn,
	o => \WRn~input_o\);

-- Location: IOIBUF_X41_Y14_N15
\CSn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CSn,
	o => \CSn~input_o\);

-- Location: LCCOMB_X40_Y14_N6
\u3|wr\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr~combout\ = (\WRn~input_o\) # (\CSn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WRn~input_o\,
	datad => \CSn~input_o\,
	combout => \u3|wr~combout\);

-- Location: IOIBUF_X41_Y13_N15
\RDn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDn,
	o => \RDn~input_o\);

-- Location: LCCOMB_X40_Y14_N30
\u3|rd\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd~combout\ = (!\RDn~input_o\ & !\CSn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RDn~input_o\,
	datad => \CSn~input_o\,
	combout => \u3|rd~combout\);

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
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
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
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
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
	compensate_clock => "clock0",
	inclk0_input_frequency => 40000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 24,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3334,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \u1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \u1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \u1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \u1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y14_N8
\u3|wr_clk1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_clk1~0_combout\ = !\u3|wr~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|wr~combout\,
	combout => \u3|wr_clk1~0_combout\);

-- Location: FF_X40_Y14_N9
\u3|wr_clk1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u3|wr_clk1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_clk1~q\);

-- Location: FF_X40_Y14_N23
\u3|wr_clk2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u3|wr_clk1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_clk2~q\);

-- Location: LCCOMB_X40_Y14_N22
\u3|clk\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|clk~combout\ = LCELL((\u3|wr_clk2~q\) # ((!\RDn~input_o\ & !\CSn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RDn~input_o\,
	datac => \u3|wr_clk2~q\,
	datad => \CSn~input_o\,
	combout => \u3|clk~combout\);

-- Location: CLKCTRL_G9
\u3|clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|clk~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y13_N22
\DB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(0),
	o => \DB[0]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\NADV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NADV,
	o => \NADV~input_o\);

-- Location: LCCOMB_X40_Y18_N0
\u3|address[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|address[0]~feeder_combout\ = \DB[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DB[0]~input_o\,
	combout => \u3|address[0]~feeder_combout\);

-- Location: FF_X40_Y18_N1
\u3|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \NADV~input_o\,
	d => \u3|address[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|address\(0));

-- Location: IOIBUF_X41_Y14_N8
\DB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(1),
	o => \DB[1]~input_o\);

-- Location: LCCOMB_X26_Y14_N4
\u3|address[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|address[1]~feeder_combout\ = \DB[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DB[1]~input_o\,
	combout => \u3|address[1]~feeder_combout\);

-- Location: FF_X26_Y14_N5
\u3|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \NADV~input_o\,
	d => \u3|address[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|address\(1));

-- Location: IOIBUF_X41_Y14_N1
\DB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(2),
	o => \DB[2]~input_o\);

-- Location: LCCOMB_X26_Y14_N22
\u3|address[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|address[2]~feeder_combout\ = \DB[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DB[2]~input_o\,
	combout => \u3|address[2]~feeder_combout\);

-- Location: FF_X26_Y14_N23
\u3|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \NADV~input_o\,
	d => \u3|address[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|address\(2));

-- Location: IOIBUF_X41_Y7_N22
\DB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(3),
	o => \DB[3]~input_o\);

-- Location: LCCOMB_X40_Y18_N2
\u3|address[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|address[3]~feeder_combout\ = \DB[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DB[3]~input_o\,
	combout => \u3|address[3]~feeder_combout\);

-- Location: FF_X40_Y18_N3
\u3|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \NADV~input_o\,
	d => \u3|address[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|address\(3));

-- Location: IOIBUF_X41_Y11_N1
\DB[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(4),
	o => \DB[4]~input_o\);

-- Location: FF_X26_Y14_N25
\u3|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \NADV~input_o\,
	asdata => \DB[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|address\(4));

-- Location: IOIBUF_X41_Y12_N22
\DB[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(5),
	o => \DB[5]~input_o\);

-- Location: FF_X26_Y14_N15
\u3|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \NADV~input_o\,
	asdata => \DB[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|address\(5));

-- Location: IOIBUF_X41_Y10_N15
\DB[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(6),
	o => \DB[6]~input_o\);

-- Location: FF_X26_Y14_N13
\u3|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \NADV~input_o\,
	asdata => \DB[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|address\(6));

-- Location: IOIBUF_X41_Y10_N8
\DB[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(7),
	o => \DB[7]~input_o\);

-- Location: LCCOMB_X40_Y18_N12
\u3|address[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|address[7]~feeder_combout\ = \DB[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DB[7]~input_o\,
	combout => \u3|address[7]~feeder_combout\);

-- Location: FF_X40_Y18_N13
\u3|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \NADV~input_o\,
	d => \u3|address[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|address\(7));

-- Location: IOIBUF_X41_Y8_N8
\DB[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(8),
	o => \DB[8]~input_o\);

-- Location: IOIBUF_X41_Y8_N1
\DB[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(9),
	o => \DB[9]~input_o\);

-- Location: IOIBUF_X41_Y7_N1
\DB[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(10),
	o => \DB[10]~input_o\);

-- Location: IOIBUF_X41_Y8_N22
\DB[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(11),
	o => \DB[11]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\DB[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(12),
	o => \DB[12]~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\DB[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(13),
	o => \DB[13]~input_o\);

-- Location: IOIBUF_X41_Y8_N15
\DB[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(14),
	o => \DB[14]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\DB[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DB(15),
	o => \DB[15]~input_o\);

-- Location: M9K_X25_Y14_N0
\u3|u1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fsmc_ctrl:u3|my_ram:u1|altsyncram:altsyncram_component|altsyncram_vqg1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u3|ALT_INV_wr~combout\,
	portare => \u3|rd~combout\,
	clk0 => \u3|clk~clkctrl_outclk\,
	portadatain => \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u3|u1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X41_Y13_N8
\FSMC_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSMC_CLK,
	o => \FSMC_CLK~input_o\);

-- Location: IOIBUF_X41_Y10_N1
\AB[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AB(16),
	o => \AB[16]~input_o\);

-- Location: IOIBUF_X41_Y12_N8
\AB[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AB(17),
	o => \AB[17]~input_o\);

-- Location: IOIBUF_X41_Y12_N15
\AB[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AB(18),
	o => \AB[18]~input_o\);

-- Location: IOIBUF_X41_Y19_N15
\AB[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AB(19),
	o => \AB[19]~input_o\);

-- Location: IOIBUF_X41_Y19_N8
\AB[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AB(20),
	o => \AB[20]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\AB[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AB(21),
	o => \AB[21]~input_o\);

-- Location: IOIBUF_X41_Y20_N22
\AB[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AB(22),
	o => \AB[22]~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\AB[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AB(23),
	o => \AB[23]~input_o\);
END structure;


