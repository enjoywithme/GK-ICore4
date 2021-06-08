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

-- DATE "07/31/2017 10:00:50"

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

ENTITY 	led IS
    PORT (
	clk_25m : IN std_logic;
	fpga_ledr : BUFFER std_logic;
	fpga_ledg : BUFFER std_logic;
	fpga_ledb : BUFFER std_logic
	);
END led;

-- Design Ports Information
-- fpga_ledr	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_ledg	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_ledb	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_25m	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF led IS
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
SIGNAL \clk_25m~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fpga_ledr~output_o\ : std_logic;
SIGNAL \fpga_ledg~output_o\ : std_logic;
SIGNAL \fpga_ledb~output_o\ : std_logic;
SIGNAL \clk_25m~input_o\ : std_logic;
SIGNAL \clk_25m~inputclkctrl_outclk\ : std_logic;
SIGNAL \u2|led_cnt~0_combout\ : std_logic;
SIGNAL \u2|Add1~0_combout\ : std_logic;
SIGNAL \u2|cnt~8_combout\ : std_logic;
SIGNAL \u2|Add1~1\ : std_logic;
SIGNAL \u2|Add1~2_combout\ : std_logic;
SIGNAL \u2|Add1~3\ : std_logic;
SIGNAL \u2|Add1~4_combout\ : std_logic;
SIGNAL \u2|Add1~5\ : std_logic;
SIGNAL \u2|Add1~6_combout\ : std_logic;
SIGNAL \u2|Add1~7\ : std_logic;
SIGNAL \u2|Add1~8_combout\ : std_logic;
SIGNAL \u2|Add1~9\ : std_logic;
SIGNAL \u2|Add1~10_combout\ : std_logic;
SIGNAL \u2|Add1~11\ : std_logic;
SIGNAL \u2|Add1~12_combout\ : std_logic;
SIGNAL \u2|cnt~7_combout\ : std_logic;
SIGNAL \u2|Add1~13\ : std_logic;
SIGNAL \u2|Add1~14_combout\ : std_logic;
SIGNAL \u2|Add1~15\ : std_logic;
SIGNAL \u2|Add1~16_combout\ : std_logic;
SIGNAL \u2|cnt~6_combout\ : std_logic;
SIGNAL \u2|Equal0~5_combout\ : std_logic;
SIGNAL \u2|Equal0~6_combout\ : std_logic;
SIGNAL \u2|Add1~17\ : std_logic;
SIGNAL \u2|Add1~18_combout\ : std_logic;
SIGNAL \u2|cnt~5_combout\ : std_logic;
SIGNAL \u2|Add1~19\ : std_logic;
SIGNAL \u2|Add1~20_combout\ : std_logic;
SIGNAL \u2|Add1~21\ : std_logic;
SIGNAL \u2|Add1~22_combout\ : std_logic;
SIGNAL \u2|cnt~4_combout\ : std_logic;
SIGNAL \u2|Add1~23\ : std_logic;
SIGNAL \u2|Add1~24_combout\ : std_logic;
SIGNAL \u2|Add1~25\ : std_logic;
SIGNAL \u2|Add1~26_combout\ : std_logic;
SIGNAL \u2|Add1~27\ : std_logic;
SIGNAL \u2|Add1~28_combout\ : std_logic;
SIGNAL \u2|cnt~3_combout\ : std_logic;
SIGNAL \u2|Add1~29\ : std_logic;
SIGNAL \u2|Add1~30_combout\ : std_logic;
SIGNAL \u2|Add1~31\ : std_logic;
SIGNAL \u2|Add1~32_combout\ : std_logic;
SIGNAL \u2|Add1~33\ : std_logic;
SIGNAL \u2|Add1~34_combout\ : std_logic;
SIGNAL \u2|Add1~35\ : std_logic;
SIGNAL \u2|Add1~36_combout\ : std_logic;
SIGNAL \u2|cnt~2_combout\ : std_logic;
SIGNAL \u2|Add1~37\ : std_logic;
SIGNAL \u2|Add1~38_combout\ : std_logic;
SIGNAL \u2|cnt~1_combout\ : std_logic;
SIGNAL \u2|Add1~39\ : std_logic;
SIGNAL \u2|Add1~40_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|Add1~41\ : std_logic;
SIGNAL \u2|Add1~42_combout\ : std_logic;
SIGNAL \u2|Add1~43\ : std_logic;
SIGNAL \u2|Add1~44_combout\ : std_logic;
SIGNAL \u2|cnt~0_combout\ : std_logic;
SIGNAL \u2|Add1~45\ : std_logic;
SIGNAL \u2|Add1~46_combout\ : std_logic;
SIGNAL \u2|Add1~47\ : std_logic;
SIGNAL \u2|Add1~48_combout\ : std_logic;
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \u2|Equal0~3_combout\ : std_logic;
SIGNAL \u2|Equal0~2_combout\ : std_logic;
SIGNAL \u2|Equal0~4_combout\ : std_logic;
SIGNAL \u2|Equal0~7_combout\ : std_logic;
SIGNAL \u2|led_cnt~2_combout\ : std_logic;
SIGNAL \u2|led_cnt[2]~1_combout\ : std_logic;
SIGNAL \u2|Decoder0~0_combout\ : std_logic;
SIGNAL \u2|ledr~q\ : std_logic;
SIGNAL \u2|Decoder0~1_combout\ : std_logic;
SIGNAL \u2|ledg~q\ : std_logic;
SIGNAL \u2|Decoder0~2_combout\ : std_logic;
SIGNAL \u2|ledb~q\ : std_logic;
SIGNAL \u2|led_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u2|cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u2|ALT_INV_ledb~q\ : std_logic;
SIGNAL \u2|ALT_INV_ledg~q\ : std_logic;
SIGNAL \u2|ALT_INV_ledr~q\ : std_logic;

BEGIN

ww_clk_25m <= clk_25m;
fpga_ledr <= ww_fpga_ledr;
fpga_ledg <= ww_fpga_ledg;
fpga_ledb <= ww_fpga_ledb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_25m~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_25m~input_o\);
\u2|ALT_INV_ledb~q\ <= NOT \u2|ledb~q\;
\u2|ALT_INV_ledg~q\ <= NOT \u2|ledg~q\;
\u2|ALT_INV_ledr~q\ <= NOT \u2|ledr~q\;

-- Location: IOOBUF_X3_Y0_N2
\fpga_ledr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_ledr~q\,
	devoe => ww_devoe,
	o => \fpga_ledr~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\fpga_ledg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_ledg~q\,
	devoe => ww_devoe,
	o => \fpga_ledg~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\fpga_ledb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_ledb~q\,
	devoe => ww_devoe,
	o => \fpga_ledb~output_o\);

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

-- Location: LCCOMB_X14_Y19_N30
\u2|led_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_cnt~0_combout\ = (!\u2|led_cnt\(0) & ((\u2|led_cnt\(2)) # (!\u2|led_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_cnt\(1),
	datac => \u2|led_cnt\(0),
	datad => \u2|led_cnt\(2),
	combout => \u2|led_cnt~0_combout\);

-- Location: LCCOMB_X15_Y20_N8
\u2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~0_combout\ = \u2|cnt\(0) $ (VCC)
-- \u2|Add1~1\ = CARRY(\u2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(0),
	datad => VCC,
	combout => \u2|Add1~0_combout\,
	cout => \u2|Add1~1\);

-- Location: LCCOMB_X15_Y20_N2
\u2|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~8_combout\ = (\u2|Add1~0_combout\ & !\u2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add1~0_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|cnt~8_combout\);

-- Location: FF_X15_Y20_N3
\u2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(0));

-- Location: LCCOMB_X15_Y20_N10
\u2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~2_combout\ = (\u2|cnt\(1) & (!\u2|Add1~1\)) # (!\u2|cnt\(1) & ((\u2|Add1~1\) # (GND)))
-- \u2|Add1~3\ = CARRY((!\u2|Add1~1\) # (!\u2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(1),
	datad => VCC,
	cin => \u2|Add1~1\,
	combout => \u2|Add1~2_combout\,
	cout => \u2|Add1~3\);

-- Location: FF_X15_Y20_N11
\u2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(1));

-- Location: LCCOMB_X15_Y20_N12
\u2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~4_combout\ = (\u2|cnt\(2) & (\u2|Add1~3\ $ (GND))) # (!\u2|cnt\(2) & (!\u2|Add1~3\ & VCC))
-- \u2|Add1~5\ = CARRY((\u2|cnt\(2) & !\u2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(2),
	datad => VCC,
	cin => \u2|Add1~3\,
	combout => \u2|Add1~4_combout\,
	cout => \u2|Add1~5\);

-- Location: FF_X15_Y20_N13
\u2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(2));

-- Location: LCCOMB_X15_Y20_N14
\u2|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~6_combout\ = (\u2|cnt\(3) & (!\u2|Add1~5\)) # (!\u2|cnt\(3) & ((\u2|Add1~5\) # (GND)))
-- \u2|Add1~7\ = CARRY((!\u2|Add1~5\) # (!\u2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(3),
	datad => VCC,
	cin => \u2|Add1~5\,
	combout => \u2|Add1~6_combout\,
	cout => \u2|Add1~7\);

-- Location: FF_X15_Y20_N15
\u2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(3));

-- Location: LCCOMB_X15_Y20_N16
\u2|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~8_combout\ = (\u2|cnt\(4) & (\u2|Add1~7\ $ (GND))) # (!\u2|cnt\(4) & (!\u2|Add1~7\ & VCC))
-- \u2|Add1~9\ = CARRY((\u2|cnt\(4) & !\u2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(4),
	datad => VCC,
	cin => \u2|Add1~7\,
	combout => \u2|Add1~8_combout\,
	cout => \u2|Add1~9\);

-- Location: FF_X15_Y20_N17
\u2|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(4));

-- Location: LCCOMB_X15_Y20_N18
\u2|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~10_combout\ = (\u2|cnt\(5) & (!\u2|Add1~9\)) # (!\u2|cnt\(5) & ((\u2|Add1~9\) # (GND)))
-- \u2|Add1~11\ = CARRY((!\u2|Add1~9\) # (!\u2|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(5),
	datad => VCC,
	cin => \u2|Add1~9\,
	combout => \u2|Add1~10_combout\,
	cout => \u2|Add1~11\);

-- Location: FF_X15_Y20_N19
\u2|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(5));

-- Location: LCCOMB_X15_Y20_N20
\u2|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~12_combout\ = (\u2|cnt\(6) & (\u2|Add1~11\ $ (GND))) # (!\u2|cnt\(6) & (!\u2|Add1~11\ & VCC))
-- \u2|Add1~13\ = CARRY((\u2|cnt\(6) & !\u2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(6),
	datad => VCC,
	cin => \u2|Add1~11\,
	combout => \u2|Add1~12_combout\,
	cout => \u2|Add1~13\);

-- Location: LCCOMB_X14_Y19_N0
\u2|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~7_combout\ = (\u2|Add1~12_combout\ & !\u2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add1~12_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|cnt~7_combout\);

-- Location: FF_X14_Y19_N1
\u2|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(6));

-- Location: LCCOMB_X15_Y20_N22
\u2|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~14_combout\ = (\u2|cnt\(7) & (!\u2|Add1~13\)) # (!\u2|cnt\(7) & ((\u2|Add1~13\) # (GND)))
-- \u2|Add1~15\ = CARRY((!\u2|Add1~13\) # (!\u2|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(7),
	datad => VCC,
	cin => \u2|Add1~13\,
	combout => \u2|Add1~14_combout\,
	cout => \u2|Add1~15\);

-- Location: FF_X15_Y20_N23
\u2|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(7));

-- Location: LCCOMB_X15_Y20_N24
\u2|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~16_combout\ = (\u2|cnt\(8) & (\u2|Add1~15\ $ (GND))) # (!\u2|cnt\(8) & (!\u2|Add1~15\ & VCC))
-- \u2|Add1~17\ = CARRY((\u2|cnt\(8) & !\u2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(8),
	datad => VCC,
	cin => \u2|Add1~15\,
	combout => \u2|Add1~16_combout\,
	cout => \u2|Add1~17\);

-- Location: LCCOMB_X15_Y20_N4
\u2|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~6_combout\ = (\u2|Add1~16_combout\ & !\u2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add1~16_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|cnt~6_combout\);

-- Location: FF_X15_Y20_N5
\u2|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(8));

-- Location: LCCOMB_X14_Y19_N18
\u2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~5_combout\ = (!\u2|cnt\(5) & (\u2|cnt\(6) & (!\u2|cnt\(7) & \u2|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(5),
	datab => \u2|cnt\(6),
	datac => \u2|cnt\(7),
	datad => \u2|cnt\(8),
	combout => \u2|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y20_N12
\u2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~6_combout\ = (!\u2|cnt\(4) & (!\u2|cnt\(2) & (!\u2|cnt\(3) & !\u2|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(4),
	datab => \u2|cnt\(2),
	datac => \u2|cnt\(3),
	datad => \u2|cnt\(1),
	combout => \u2|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y20_N26
\u2|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~18_combout\ = (\u2|cnt\(9) & (!\u2|Add1~17\)) # (!\u2|cnt\(9) & ((\u2|Add1~17\) # (GND)))
-- \u2|Add1~19\ = CARRY((!\u2|Add1~17\) # (!\u2|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(9),
	datad => VCC,
	cin => \u2|Add1~17\,
	combout => \u2|Add1~18_combout\,
	cout => \u2|Add1~19\);

-- Location: LCCOMB_X15_Y20_N6
\u2|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~5_combout\ = (\u2|Add1~18_combout\ & !\u2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add1~18_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|cnt~5_combout\);

-- Location: FF_X15_Y20_N7
\u2|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(9));

-- Location: LCCOMB_X15_Y20_N28
\u2|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~20_combout\ = (\u2|cnt\(10) & (\u2|Add1~19\ $ (GND))) # (!\u2|cnt\(10) & (!\u2|Add1~19\ & VCC))
-- \u2|Add1~21\ = CARRY((\u2|cnt\(10) & !\u2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(10),
	datad => VCC,
	cin => \u2|Add1~19\,
	combout => \u2|Add1~20_combout\,
	cout => \u2|Add1~21\);

-- Location: FF_X15_Y20_N29
\u2|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(10));

-- Location: LCCOMB_X15_Y20_N30
\u2|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~22_combout\ = (\u2|cnt\(11) & (!\u2|Add1~21\)) # (!\u2|cnt\(11) & ((\u2|Add1~21\) # (GND)))
-- \u2|Add1~23\ = CARRY((!\u2|Add1~21\) # (!\u2|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(11),
	datad => VCC,
	cin => \u2|Add1~21\,
	combout => \u2|Add1~22_combout\,
	cout => \u2|Add1~23\);

-- Location: LCCOMB_X15_Y20_N0
\u2|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~4_combout\ = (\u2|Add1~22_combout\ & !\u2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add1~22_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|cnt~4_combout\);

-- Location: FF_X15_Y20_N1
\u2|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(11));

-- Location: LCCOMB_X15_Y19_N0
\u2|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~24_combout\ = (\u2|cnt\(12) & (\u2|Add1~23\ $ (GND))) # (!\u2|cnt\(12) & (!\u2|Add1~23\ & VCC))
-- \u2|Add1~25\ = CARRY((\u2|cnt\(12) & !\u2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(12),
	datad => VCC,
	cin => \u2|Add1~23\,
	combout => \u2|Add1~24_combout\,
	cout => \u2|Add1~25\);

-- Location: FF_X15_Y19_N1
\u2|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(12));

-- Location: LCCOMB_X15_Y19_N2
\u2|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~26_combout\ = (\u2|cnt\(13) & (!\u2|Add1~25\)) # (!\u2|cnt\(13) & ((\u2|Add1~25\) # (GND)))
-- \u2|Add1~27\ = CARRY((!\u2|Add1~25\) # (!\u2|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(13),
	datad => VCC,
	cin => \u2|Add1~25\,
	combout => \u2|Add1~26_combout\,
	cout => \u2|Add1~27\);

-- Location: FF_X15_Y19_N3
\u2|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(13));

-- Location: LCCOMB_X15_Y19_N4
\u2|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~28_combout\ = (\u2|cnt\(14) & (\u2|Add1~27\ $ (GND))) # (!\u2|cnt\(14) & (!\u2|Add1~27\ & VCC))
-- \u2|Add1~29\ = CARRY((\u2|cnt\(14) & !\u2|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(14),
	datad => VCC,
	cin => \u2|Add1~27\,
	combout => \u2|Add1~28_combout\,
	cout => \u2|Add1~29\);

-- Location: LCCOMB_X15_Y19_N28
\u2|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~3_combout\ = (!\u2|Equal0~7_combout\ & \u2|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~7_combout\,
	datac => \u2|Add1~28_combout\,
	combout => \u2|cnt~3_combout\);

-- Location: FF_X15_Y19_N29
\u2|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(14));

-- Location: LCCOMB_X15_Y19_N6
\u2|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~30_combout\ = (\u2|cnt\(15) & (!\u2|Add1~29\)) # (!\u2|cnt\(15) & ((\u2|Add1~29\) # (GND)))
-- \u2|Add1~31\ = CARRY((!\u2|Add1~29\) # (!\u2|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(15),
	datad => VCC,
	cin => \u2|Add1~29\,
	combout => \u2|Add1~30_combout\,
	cout => \u2|Add1~31\);

-- Location: FF_X15_Y19_N7
\u2|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(15));

-- Location: LCCOMB_X15_Y19_N8
\u2|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~32_combout\ = (\u2|cnt\(16) & (\u2|Add1~31\ $ (GND))) # (!\u2|cnt\(16) & (!\u2|Add1~31\ & VCC))
-- \u2|Add1~33\ = CARRY((\u2|cnt\(16) & !\u2|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(16),
	datad => VCC,
	cin => \u2|Add1~31\,
	combout => \u2|Add1~32_combout\,
	cout => \u2|Add1~33\);

-- Location: FF_X15_Y19_N9
\u2|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(16));

-- Location: LCCOMB_X15_Y19_N10
\u2|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~34_combout\ = (\u2|cnt\(17) & (!\u2|Add1~33\)) # (!\u2|cnt\(17) & ((\u2|Add1~33\) # (GND)))
-- \u2|Add1~35\ = CARRY((!\u2|Add1~33\) # (!\u2|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(17),
	datad => VCC,
	cin => \u2|Add1~33\,
	combout => \u2|Add1~34_combout\,
	cout => \u2|Add1~35\);

-- Location: FF_X15_Y19_N11
\u2|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(17));

-- Location: LCCOMB_X15_Y19_N12
\u2|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~36_combout\ = (\u2|cnt\(18) & (\u2|Add1~35\ $ (GND))) # (!\u2|cnt\(18) & (!\u2|Add1~35\ & VCC))
-- \u2|Add1~37\ = CARRY((\u2|cnt\(18) & !\u2|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(18),
	datad => VCC,
	cin => \u2|Add1~35\,
	combout => \u2|Add1~36_combout\,
	cout => \u2|Add1~37\);

-- Location: LCCOMB_X14_Y19_N8
\u2|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~2_combout\ = (\u2|Add1~36_combout\ & !\u2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add1~36_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|cnt~2_combout\);

-- Location: FF_X14_Y19_N9
\u2|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(18));

-- Location: LCCOMB_X15_Y19_N14
\u2|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~38_combout\ = (\u2|cnt\(19) & (!\u2|Add1~37\)) # (!\u2|cnt\(19) & ((\u2|Add1~37\) # (GND)))
-- \u2|Add1~39\ = CARRY((!\u2|Add1~37\) # (!\u2|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(19),
	datad => VCC,
	cin => \u2|Add1~37\,
	combout => \u2|Add1~38_combout\,
	cout => \u2|Add1~39\);

-- Location: LCCOMB_X14_Y19_N6
\u2|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~1_combout\ = (\u2|Add1~38_combout\ & !\u2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add1~38_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|cnt~1_combout\);

-- Location: FF_X14_Y19_N7
\u2|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(19));

-- Location: LCCOMB_X15_Y19_N16
\u2|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~40_combout\ = (\u2|cnt\(20) & (\u2|Add1~39\ $ (GND))) # (!\u2|cnt\(20) & (!\u2|Add1~39\ & VCC))
-- \u2|Add1~41\ = CARRY((\u2|cnt\(20) & !\u2|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(20),
	datad => VCC,
	cin => \u2|Add1~39\,
	combout => \u2|Add1~40_combout\,
	cout => \u2|Add1~41\);

-- Location: FF_X15_Y19_N17
\u2|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(20));

-- Location: LCCOMB_X14_Y19_N22
\u2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = (\u2|cnt\(19) & (\u2|cnt\(18) & (!\u2|cnt\(17) & !\u2|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(19),
	datab => \u2|cnt\(18),
	datac => \u2|cnt\(17),
	datad => \u2|cnt\(20),
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y19_N18
\u2|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~42_combout\ = (\u2|cnt\(21) & (!\u2|Add1~41\)) # (!\u2|cnt\(21) & ((\u2|Add1~41\) # (GND)))
-- \u2|Add1~43\ = CARRY((!\u2|Add1~41\) # (!\u2|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|cnt\(21),
	datad => VCC,
	cin => \u2|Add1~41\,
	combout => \u2|Add1~42_combout\,
	cout => \u2|Add1~43\);

-- Location: FF_X15_Y19_N19
\u2|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(21));

-- Location: LCCOMB_X15_Y19_N20
\u2|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~44_combout\ = (\u2|cnt\(22) & (\u2|Add1~43\ $ (GND))) # (!\u2|cnt\(22) & (!\u2|Add1~43\ & VCC))
-- \u2|Add1~45\ = CARRY((\u2|cnt\(22) & !\u2|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(22),
	datad => VCC,
	cin => \u2|Add1~43\,
	combout => \u2|Add1~44_combout\,
	cout => \u2|Add1~45\);

-- Location: LCCOMB_X15_Y19_N30
\u2|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cnt~0_combout\ = (!\u2|Equal0~7_combout\ & \u2|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Equal0~7_combout\,
	datad => \u2|Add1~44_combout\,
	combout => \u2|cnt~0_combout\);

-- Location: FF_X15_Y19_N31
\u2|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(22));

-- Location: LCCOMB_X15_Y19_N22
\u2|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~46_combout\ = (\u2|cnt\(23) & (!\u2|Add1~45\)) # (!\u2|cnt\(23) & ((\u2|Add1~45\) # (GND)))
-- \u2|Add1~47\ = CARRY((!\u2|Add1~45\) # (!\u2|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(23),
	datad => VCC,
	cin => \u2|Add1~45\,
	combout => \u2|Add1~46_combout\,
	cout => \u2|Add1~47\);

-- Location: FF_X15_Y19_N23
\u2|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(23));

-- Location: LCCOMB_X15_Y19_N24
\u2|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~48_combout\ = \u2|Add1~47\ $ (!\u2|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u2|cnt\(24),
	cin => \u2|Add1~47\,
	combout => \u2|Add1~48_combout\);

-- Location: FF_X15_Y19_N25
\u2|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt\(24));

-- Location: LCCOMB_X14_Y19_N28
\u2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = (\u2|cnt\(22) & (!\u2|cnt\(21) & (!\u2|cnt\(24) & !\u2|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(22),
	datab => \u2|cnt\(21),
	datac => \u2|cnt\(24),
	datad => \u2|cnt\(23),
	combout => \u2|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y19_N4
\u2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~3_combout\ = (\u2|cnt\(9) & (\u2|cnt\(11) & (!\u2|cnt\(12) & !\u2|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(9),
	datab => \u2|cnt\(11),
	datac => \u2|cnt\(12),
	datad => \u2|cnt\(10),
	combout => \u2|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y19_N26
\u2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~2_combout\ = (!\u2|cnt\(15) & (\u2|cnt\(14) & (!\u2|cnt\(16) & !\u2|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(15),
	datab => \u2|cnt\(14),
	datac => \u2|cnt\(16),
	datad => \u2|cnt\(13),
	combout => \u2|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y19_N2
\u2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~4_combout\ = (\u2|Equal0~1_combout\ & (\u2|Equal0~0_combout\ & (\u2|Equal0~3_combout\ & \u2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~1_combout\,
	datab => \u2|Equal0~0_combout\,
	datac => \u2|Equal0~3_combout\,
	datad => \u2|Equal0~2_combout\,
	combout => \u2|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y19_N16
\u2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~7_combout\ = (!\u2|cnt\(0) & (\u2|Equal0~5_combout\ & (\u2|Equal0~6_combout\ & \u2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cnt\(0),
	datab => \u2|Equal0~5_combout\,
	datac => \u2|Equal0~6_combout\,
	datad => \u2|Equal0~4_combout\,
	combout => \u2|Equal0~7_combout\);

-- Location: FF_X14_Y19_N31
\u2|led_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|led_cnt~0_combout\,
	ena => \u2|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_cnt\(0));

-- Location: LCCOMB_X14_Y19_N26
\u2|led_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_cnt~2_combout\ = (\u2|led_cnt\(1) & (\u2|led_cnt\(2) & !\u2|led_cnt\(0))) # (!\u2|led_cnt\(1) & ((\u2|led_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|led_cnt\(2),
	datac => \u2|led_cnt\(1),
	datad => \u2|led_cnt\(0),
	combout => \u2|led_cnt~2_combout\);

-- Location: FF_X14_Y19_N27
\u2|led_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|led_cnt~2_combout\,
	ena => \u2|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_cnt\(1));

-- Location: LCCOMB_X14_Y19_N24
\u2|led_cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_cnt[2]~1_combout\ = \u2|led_cnt\(2) $ (((\u2|led_cnt\(1) & (\u2|Equal0~7_combout\ & \u2|led_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_cnt\(1),
	datab => \u2|Equal0~7_combout\,
	datac => \u2|led_cnt\(2),
	datad => \u2|led_cnt\(0),
	combout => \u2|led_cnt[2]~1_combout\);

-- Location: FF_X14_Y19_N25
\u2|led_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|led_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_cnt\(2));

-- Location: LCCOMB_X14_Y19_N20
\u2|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Decoder0~0_combout\ = (!\u2|led_cnt\(2) & (!\u2|led_cnt\(1) & !\u2|led_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|led_cnt\(2),
	datac => \u2|led_cnt\(1),
	datad => \u2|led_cnt\(0),
	combout => \u2|Decoder0~0_combout\);

-- Location: FF_X14_Y19_N21
\u2|ledr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|ledr~q\);

-- Location: LCCOMB_X14_Y19_N14
\u2|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Decoder0~1_combout\ = (!\u2|led_cnt\(1) & (\u2|led_cnt\(0) & !\u2|led_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_cnt\(1),
	datac => \u2|led_cnt\(0),
	datad => \u2|led_cnt\(2),
	combout => \u2|Decoder0~1_combout\);

-- Location: FF_X14_Y19_N15
\u2|ledg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|ledg~q\);

-- Location: LCCOMB_X14_Y19_N12
\u2|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Decoder0~2_combout\ = (!\u2|led_cnt\(2) & (\u2|led_cnt\(1) & !\u2|led_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|led_cnt\(2),
	datac => \u2|led_cnt\(1),
	datad => \u2|led_cnt\(0),
	combout => \u2|Decoder0~2_combout\);

-- Location: FF_X14_Y19_N13
\u2|ledb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|ledb~q\);

ww_fpga_ledr <= \fpga_ledr~output_o\;

ww_fpga_ledg <= \fpga_ledg~output_o\;

ww_fpga_ledb <= \fpga_ledb~output_o\;
END structure;


