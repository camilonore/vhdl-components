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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/15/2023 09:31:23"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bin_2_bcd IS
    PORT (
	Bin : IN std_logic_vector(8 DOWNTO 0);
	Cen : OUT std_logic_vector(3 DOWNTO 0);
	Dec : OUT std_logic_vector(3 DOWNTO 0);
	Uni : OUT std_logic_vector(3 DOWNTO 0)
	);
END bin_2_bcd;

-- Design Ports Information
-- Cen[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cen[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cen[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cen[3]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Dec[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Dec[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Dec[2]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Dec[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Uni[0]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Uni[1]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Uni[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Uni[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Bin[5]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bin[8]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bin[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bin[7]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bin[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bin[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bin[2]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bin[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Bin[0]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bin_2_bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Bin : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Cen : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dec : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Uni : std_logic_vector(3 DOWNTO 0);
SIGNAL \Z~2_combout\ : std_logic;
SIGNAL \Z~5_combout\ : std_logic;
SIGNAL \Z~11_combout\ : std_logic;
SIGNAL \Z~12_combout\ : std_logic;
SIGNAL \Z~17_combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \Z~8_combout\ : std_logic;
SIGNAL \Z~9_combout\ : std_logic;
SIGNAL \Z~7_combout\ : std_logic;
SIGNAL \Z~14_combout\ : std_logic;
SIGNAL \Z~4_combout\ : std_logic;
SIGNAL \Z~3_combout\ : std_logic;
SIGNAL \Z~6_combout\ : std_logic;
SIGNAL \Z~13_combout\ : std_logic;
SIGNAL \Z~21_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Z~10_combout\ : std_logic;
SIGNAL \Z~15_combout\ : std_logic;
SIGNAL \Z~20_combout\ : std_logic;
SIGNAL \Z~18_combout\ : std_logic;
SIGNAL \Z~16_combout\ : std_logic;
SIGNAL \Z~19_combout\ : std_logic;
SIGNAL \Z~22_combout\ : std_logic;
SIGNAL \Z~23_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan4~9_combout\ : std_logic;
SIGNAL \Z~26_combout\ : std_logic;
SIGNAL \Z~25_combout\ : std_logic;
SIGNAL \Z~24_combout\ : std_logic;
SIGNAL \Z~27_combout\ : std_logic;
SIGNAL \Z~28_combout\ : std_logic;
SIGNAL \Z~29_combout\ : std_logic;
SIGNAL \Z~30_combout\ : std_logic;
SIGNAL \Z~31_combout\ : std_logic;
SIGNAL \Z~32_combout\ : std_logic;
SIGNAL \Z~33_combout\ : std_logic;
SIGNAL \Bin~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Z~29_combout\ : std_logic;
SIGNAL \ALT_INV_Z~28_combout\ : std_logic;
SIGNAL \ALT_INV_Z~27_combout\ : std_logic;
SIGNAL \ALT_INV_Z~23_combout\ : std_logic;
SIGNAL \ALT_INV_Z~22_combout\ : std_logic;

BEGIN

ww_Bin <= Bin;
Cen <= ww_Cen;
Dec <= ww_Dec;
Uni <= ww_Uni;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Z~29_combout\ <= NOT \Z~29_combout\;
\ALT_INV_Z~28_combout\ <= NOT \Z~28_combout\;
\ALT_INV_Z~27_combout\ <= NOT \Z~27_combout\;
\ALT_INV_Z~23_combout\ <= NOT \Z~23_combout\;
\ALT_INV_Z~22_combout\ <= NOT \Z~22_combout\;

-- Location: LCCOMB_X25_Y22_N12
\Z~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~2_combout\ = (\Bin~combout\(6) & (!\Bin~combout\(8) & ((\Bin~combout\(5)) # (!\Bin~combout\(7))))) # (!\Bin~combout\(6) & (\Bin~combout\(8) & ((\Bin~combout\(7)) # (!\Bin~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(6),
	datab => \Bin~combout\(8),
	datac => \Bin~combout\(7),
	datad => \Bin~combout\(5),
	combout => \Z~2_combout\);

-- Location: LCCOMB_X25_Y22_N10
\Z~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~5_combout\ = (\Z~2_combout\ & (!\Bin~combout\(4) & ((\Z~0_combout\) # (\Z~1_combout\)))) # (!\Z~2_combout\ & (\Bin~combout\(4) $ (((\Z~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~2_combout\,
	datab => \Bin~combout\(4),
	datac => \Z~0_combout\,
	datad => \Z~1_combout\,
	combout => \Z~5_combout\);

-- Location: LCCOMB_X25_Y22_N4
\Z~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~11_combout\ = (\Bin~combout\(6) & (\Bin~combout\(8) & (\Bin~combout\(7) & \Bin~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(6),
	datab => \Bin~combout\(8),
	datac => \Bin~combout\(7),
	datad => \Bin~combout\(5),
	combout => \Z~11_combout\);

-- Location: LCCOMB_X25_Y22_N14
\Z~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~12_combout\ = (\Z~11_combout\) # ((!\Z~8_combout\ & ((!\Z~9_combout\) # (!\Bin~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(8),
	datab => \Z~9_combout\,
	datac => \Z~11_combout\,
	datad => \Z~8_combout\,
	combout => \Z~12_combout\);

-- Location: LCCOMB_X31_Y23_N12
\Z~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~17_combout\ = (\Z~3_combout\ & (!\Z~5_combout\ & ((!\Bin~combout\(3))))) # (!\Z~3_combout\ & (\Z~4_combout\ & ((\Z~5_combout\) # (\Bin~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~5_combout\,
	datab => \Z~4_combout\,
	datac => \Z~3_combout\,
	datad => \Bin~combout\(3),
	combout => \Z~17_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(4),
	combout => \Bin~combout\(4));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(8),
	combout => \Bin~combout\(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(7),
	combout => \Bin~combout\(7));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(5),
	combout => \Bin~combout\(5));

-- Location: LCCOMB_X25_Y22_N16
\Z~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (\Bin~combout\(7) & ((\Bin~combout\(6) & (!\Bin~combout\(8) & !\Bin~combout\(5))) # (!\Bin~combout\(6) & (\Bin~combout\(8) & \Bin~combout\(5))))) # (!\Bin~combout\(7) & (\Bin~combout\(5) $ (((!\Bin~combout\(6) & \Bin~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(6),
	datab => \Bin~combout\(8),
	datac => \Bin~combout\(7),
	datad => \Bin~combout\(5),
	combout => \Z~0_combout\);

-- Location: LCCOMB_X25_Y22_N26
\Z~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = (\Bin~combout\(7) & (!\Bin~combout\(5) & (\Bin~combout\(6) $ (!\Bin~combout\(8))))) # (!\Bin~combout\(7) & (!\Bin~combout\(6) & (\Bin~combout\(8) & \Bin~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(6),
	datab => \Bin~combout\(8),
	datac => \Bin~combout\(7),
	datad => \Bin~combout\(5),
	combout => \Z~1_combout\);

-- Location: LCCOMB_X25_Y22_N30
\Z~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~8_combout\ = \Z~1_combout\ $ ((((!\Bin~combout\(4) & !\Z~0_combout\)) # (!\Z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~2_combout\,
	datab => \Bin~combout\(4),
	datac => \Z~0_combout\,
	datad => \Z~1_combout\,
	combout => \Z~8_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(6),
	combout => \Bin~combout\(6));

-- Location: LCCOMB_X25_Y22_N8
\Z~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~9_combout\ = (\Bin~combout\(7)) # (\Bin~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin~combout\(7),
	datac => \Bin~combout\(6),
	combout => \Z~9_combout\);

-- Location: LCCOMB_X25_Y22_N28
\Z~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~7_combout\ = (\Bin~combout\(6) & (((\Bin~combout\(8) & !\Bin~combout\(5))) # (!\Bin~combout\(7)))) # (!\Bin~combout\(6) & ((\Bin~combout\(8) & (\Bin~combout\(7))) # (!\Bin~combout\(8) & ((!\Bin~combout\(5)) # (!\Bin~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(6),
	datab => \Bin~combout\(8),
	datac => \Bin~combout\(7),
	datad => \Bin~combout\(5),
	combout => \Z~7_combout\);

-- Location: LCCOMB_X25_Y22_N18
\Z~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~14_combout\ = (!\Z~7_combout\ & (((!\Z~9_combout\) # (!\Z~8_combout\)) # (!\Bin~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(8),
	datab => \Z~8_combout\,
	datac => \Z~9_combout\,
	datad => \Z~7_combout\,
	combout => \Z~14_combout\);

-- Location: LCCOMB_X25_Y22_N0
\Z~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~4_combout\ = (\Z~2_combout\ & (!\Bin~combout\(4) & (!\Z~0_combout\))) # (!\Z~2_combout\ & (\Z~1_combout\ & ((\Bin~combout\(4)) # (\Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~2_combout\,
	datab => \Bin~combout\(4),
	datac => \Z~0_combout\,
	datad => \Z~1_combout\,
	combout => \Z~4_combout\);

-- Location: LCCOMB_X25_Y22_N6
\Z~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~3_combout\ = (\Bin~combout\(4) & (((\Z~0_combout\)))) # (!\Bin~combout\(4) & ((\Z~0_combout\ & (!\Z~2_combout\ & !\Z~1_combout\)) # (!\Z~0_combout\ & ((\Z~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~2_combout\,
	datab => \Bin~combout\(4),
	datac => \Z~0_combout\,
	datad => \Z~1_combout\,
	combout => \Z~3_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(3),
	combout => \Bin~combout\(3));

-- Location: LCCOMB_X31_Y23_N16
\Z~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~6_combout\ = \Z~4_combout\ $ ((((!\Z~5_combout\ & !\Bin~combout\(3))) # (!\Z~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~5_combout\,
	datab => \Z~4_combout\,
	datac => \Z~3_combout\,
	datad => \Bin~combout\(3),
	combout => \Z~6_combout\);

-- Location: LCCOMB_X25_Y22_N24
\Z~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~13_combout\ = (\Bin~combout\(8) & (\Z~8_combout\ & (\Z~9_combout\ & \Z~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(8),
	datab => \Z~8_combout\,
	datac => \Z~9_combout\,
	datad => \Z~7_combout\,
	combout => \Z~13_combout\);

-- Location: LCCOMB_X26_Y22_N30
\Z~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~21_combout\ = (\Z~14_combout\ & (\Z~10_combout\ & (\Z~6_combout\))) # (!\Z~14_combout\ & (\Z~13_combout\ & ((!\Z~6_combout\) # (!\Z~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~10_combout\,
	datab => \Z~14_combout\,
	datac => \Z~6_combout\,
	datad => \Z~13_combout\,
	combout => \Z~21_combout\);

-- Location: LCCOMB_X26_Y22_N8
\LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\Z~13_combout\) # ((\Z~14_combout\ & ((!\Z~6_combout\) # (!\Z~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~10_combout\,
	datab => \Z~14_combout\,
	datac => \Z~6_combout\,
	datad => \Z~13_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X25_Y22_N2
\Z~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~10_combout\ = (\Bin~combout\(8) & ((\Z~8_combout\ & ((\Z~7_combout\) # (!\Z~9_combout\))) # (!\Z~8_combout\ & (\Z~9_combout\)))) # (!\Bin~combout\(8) & (\Z~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin~combout\(8),
	datab => \Z~8_combout\,
	datac => \Z~9_combout\,
	datad => \Z~7_combout\,
	combout => \Z~10_combout\);

-- Location: LCCOMB_X26_Y22_N2
\Z~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~15_combout\ = (\LessThan6~0_combout\ & ((\Z~6_combout\ $ (!\Z~10_combout\)))) # (!\LessThan6~0_combout\ & (\Z~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~12_combout\,
	datab => \Z~6_combout\,
	datac => \LessThan6~0_combout\,
	datad => \Z~10_combout\,
	combout => \Z~15_combout\);

-- Location: LCCOMB_X26_Y22_N28
\Z~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~20_combout\ = (\Z~14_combout\ & (((\Z~10_combout\ & !\Z~13_combout\)) # (!\Z~6_combout\))) # (!\Z~14_combout\ & ((\Z~6_combout\ $ (\Z~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~10_combout\,
	datab => \Z~14_combout\,
	datac => \Z~6_combout\,
	datad => \Z~13_combout\,
	combout => \Z~20_combout\);

-- Location: LCCOMB_X31_Y23_N30
\Z~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~18_combout\ = (\Z~4_combout\ & (((!\Bin~combout\(3))))) # (!\Z~4_combout\ & ((\Z~3_combout\ & (\Z~5_combout\ & !\Bin~combout\(3))) # (!\Z~3_combout\ & ((\Bin~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~5_combout\,
	datab => \Z~4_combout\,
	datac => \Z~3_combout\,
	datad => \Bin~combout\(3),
	combout => \Z~18_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(2),
	combout => \Bin~combout\(2));

-- Location: LCCOMB_X31_Y23_N18
\Z~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~16_combout\ = (\Z~5_combout\ & ((\Bin~combout\(3)) # ((!\Z~4_combout\ & !\Z~3_combout\)))) # (!\Z~5_combout\ & (\Z~4_combout\ & ((!\Bin~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~5_combout\,
	datab => \Z~4_combout\,
	datac => \Z~3_combout\,
	datad => \Bin~combout\(3),
	combout => \Z~16_combout\);

-- Location: LCCOMB_X31_Y23_N24
\Z~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~19_combout\ = \Z~17_combout\ $ ((((!\Z~18_combout\ & !\Bin~combout\(2))) # (!\Z~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~17_combout\,
	datab => \Z~18_combout\,
	datac => \Bin~combout\(2),
	datad => \Z~16_combout\,
	combout => \Z~19_combout\);

-- Location: LCCOMB_X26_Y22_N0
\Z~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~22_combout\ = \Z~21_combout\ $ ((((\Z~20_combout\ & \Z~19_combout\)) # (!\Z~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~21_combout\,
	datab => \Z~15_combout\,
	datac => \Z~20_combout\,
	datad => \Z~19_combout\,
	combout => \Z~22_combout\);

-- Location: LCCOMB_X26_Y22_N10
\Z~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~23_combout\ = \Z~13_combout\ $ ((((\Z~10_combout\ & \Z~6_combout\)) # (!\Z~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~10_combout\,
	datab => \Z~14_combout\,
	datac => \Z~6_combout\,
	datad => \Z~13_combout\,
	combout => \Z~23_combout\);

-- Location: LCCOMB_X25_Y22_N20
\LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (\Bin~combout\(4)) # (\Bin~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin~combout\(4),
	datad => \Bin~combout\(5),
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X25_Y22_N22
\LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~9_combout\ = (\Bin~combout\(7) & (\Bin~combout\(8) & ((\LessThan4~3_combout\) # (\Bin~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~3_combout\,
	datab => \Bin~combout\(7),
	datac => \Bin~combout\(6),
	datad => \Bin~combout\(8),
	combout => \LessThan4~9_combout\);

-- Location: LCCOMB_X31_Y23_N22
\Z~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~26_combout\ = (\Z~17_combout\ & (((!\Bin~combout\(2))))) # (!\Z~17_combout\ & ((\Bin~combout\(2) & ((!\Z~16_combout\))) # (!\Bin~combout\(2) & (\Z~18_combout\ & \Z~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~17_combout\,
	datab => \Z~18_combout\,
	datac => \Bin~combout\(2),
	datad => \Z~16_combout\,
	combout => \Z~26_combout\);

-- Location: LCCOMB_X31_Y23_N28
\Z~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~25_combout\ = (\Z~16_combout\ & (((!\Z~18_combout\ & !\Bin~combout\(2))))) # (!\Z~16_combout\ & (\Z~17_combout\ & ((\Z~18_combout\) # (\Bin~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~17_combout\,
	datab => \Z~18_combout\,
	datac => \Bin~combout\(2),
	datad => \Z~16_combout\,
	combout => \Z~25_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(1),
	combout => \Bin~combout\(1));

-- Location: LCCOMB_X31_Y23_N26
\Z~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~24_combout\ = (\Z~17_combout\ & (\Z~18_combout\ $ ((!\Bin~combout\(2))))) # (!\Z~17_combout\ & (\Z~18_combout\ & ((\Bin~combout\(2)) # (!\Z~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~17_combout\,
	datab => \Z~18_combout\,
	datac => \Bin~combout\(2),
	datad => \Z~16_combout\,
	combout => \Z~24_combout\);

-- Location: LCCOMB_X31_Y23_N0
\Z~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~27_combout\ = \Z~25_combout\ $ ((((!\Z~26_combout\ & !\Bin~combout\(1))) # (!\Z~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~26_combout\,
	datab => \Z~25_combout\,
	datac => \Bin~combout\(1),
	datad => \Z~24_combout\,
	combout => \Z~27_combout\);

-- Location: LCCOMB_X26_Y22_N12
\Z~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~28_combout\ = (\Z~21_combout\ & (((!\Z~19_combout\)))) # (!\Z~21_combout\ & ((\Z~15_combout\ & ((\Z~20_combout\) # (!\Z~19_combout\))) # (!\Z~15_combout\ & ((\Z~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~21_combout\,
	datab => \Z~15_combout\,
	datac => \Z~20_combout\,
	datad => \Z~19_combout\,
	combout => \Z~28_combout\);

-- Location: LCCOMB_X26_Y22_N22
\Z~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~29_combout\ = (\Z~21_combout\ & ((\Z~20_combout\ $ (\Z~19_combout\)))) # (!\Z~21_combout\ & ((\Z~20_combout\) # ((\Z~15_combout\ & \Z~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~21_combout\,
	datab => \Z~15_combout\,
	datac => \Z~20_combout\,
	datad => \Z~19_combout\,
	combout => \Z~29_combout\);

-- Location: LCCOMB_X26_Y22_N24
\Z~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~30_combout\ = (\Z~15_combout\ & (((\Z~20_combout\ & \Z~19_combout\)))) # (!\Z~15_combout\ & (\Z~21_combout\ & ((!\Z~19_combout\) # (!\Z~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~21_combout\,
	datab => \Z~15_combout\,
	datac => \Z~20_combout\,
	datad => \Z~19_combout\,
	combout => \Z~30_combout\);

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Bin[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Bin(0),
	combout => \Bin~combout\(0));

-- Location: LCCOMB_X31_Y23_N2
\Z~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~31_combout\ = (\Z~25_combout\ & (((!\Bin~combout\(1))))) # (!\Z~25_combout\ & ((\Bin~combout\(1) & ((!\Z~24_combout\))) # (!\Bin~combout\(1) & (\Z~26_combout\ & \Z~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~26_combout\,
	datab => \Z~25_combout\,
	datac => \Bin~combout\(1),
	datad => \Z~24_combout\,
	combout => \Z~31_combout\);

-- Location: LCCOMB_X31_Y23_N4
\Z~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~32_combout\ = (\Z~26_combout\ & ((\Bin~combout\(1)) # ((!\Z~25_combout\ & !\Z~24_combout\)))) # (!\Z~26_combout\ & (\Z~25_combout\ & (!\Bin~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~26_combout\,
	datab => \Z~25_combout\,
	datac => \Bin~combout\(1),
	datad => \Z~24_combout\,
	combout => \Z~32_combout\);

-- Location: LCCOMB_X31_Y23_N6
\Z~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~33_combout\ = (\Z~24_combout\ & (!\Z~26_combout\ & ((!\Bin~combout\(1))))) # (!\Z~24_combout\ & (\Z~25_combout\ & ((\Z~26_combout\) # (\Bin~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~26_combout\,
	datab => \Z~25_combout\,
	datac => \Bin~combout\(1),
	datad => \Z~24_combout\,
	combout => \Z~33_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cen[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Z~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cen(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cen[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Z~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cen(1));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cen[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cen(2));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cen[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cen(3));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Dec[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Z~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Dec(0));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Dec[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Z~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Dec(1));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Dec[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Z~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Dec(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Dec[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Z~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Dec(3));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Uni[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Bin~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Uni(0));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Uni[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Z~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Uni(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Uni[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Z~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Uni(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Uni[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Z~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Uni(3));
END structure;


