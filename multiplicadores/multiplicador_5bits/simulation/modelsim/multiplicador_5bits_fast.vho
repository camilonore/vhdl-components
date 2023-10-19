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

-- DATE "10/14/2023 11:40:57"

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

ENTITY 	multiplicador_5bits IS
    PORT (
	ivA : IN std_logic_vector(4 DOWNTO 0);
	ivB : IN std_logic_vector(4 DOWNTO 0);
	ovS : OUT std_logic_vector(9 DOWNTO 0)
	);
END multiplicador_5bits;

-- Design Ports Information
-- ovS[0]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[1]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[6]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[7]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[8]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[9]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ivA[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[4]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[4]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador_5bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ivA : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ivB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ovS : std_logic_vector(9 DOWNTO 0);
SIGNAL \sum3|oS~0_combout\ : std_logic;
SIGNAL \sum11|Cout~0_combout\ : std_logic;
SIGNAL \sum9|oS~1_combout\ : std_logic;
SIGNAL \sum10|oS~2_combout\ : std_logic;
SIGNAL \A0B~0_combout\ : std_logic;
SIGNAL \sum1|oS~0_combout\ : std_logic;
SIGNAL \sum1|Cout~0_combout\ : std_logic;
SIGNAL \sum6|oS~3_combout\ : std_logic;
SIGNAL \sum6|oS~2_combout\ : std_logic;
SIGNAL \sum6|Cout~0_combout\ : std_logic;
SIGNAL \sum6|Cout~1_combout\ : std_logic;
SIGNAL \sum2|Cout~0_combout\ : std_logic;
SIGNAL \sum7|oS~combout\ : std_logic;
SIGNAL \sum11|oS~0_combout\ : std_logic;
SIGNAL \sum4|oS~0_combout\ : std_logic;
SIGNAL \sum8|oS~2_combout\ : std_logic;
SIGNAL \sum11|Cout~1_combout\ : std_logic;
SIGNAL \sum12|oS~0_combout\ : std_logic;
SIGNAL \sum16|oS~0_combout\ : std_logic;
SIGNAL \sum16|Cout~0_combout\ : std_logic;
SIGNAL \sum7|Cout~0_combout\ : std_logic;
SIGNAL \sum12|Cout~0_combout\ : std_logic;
SIGNAL \sum9|oS~0_combout\ : std_logic;
SIGNAL \sum4|Cout~0_combout\ : std_logic;
SIGNAL \sum13|oS~0_combout\ : std_logic;
SIGNAL \sum17|oS~combout\ : std_logic;
SIGNAL \sum9|Cout~0_combout\ : std_logic;
SIGNAL \sum14|oS~0_combout\ : std_logic;
SIGNAL \sum3|Cout~0_combout\ : std_logic;
SIGNAL \sum8|Cout~0_combout\ : std_logic;
SIGNAL \sum13|Cout~0_combout\ : std_logic;
SIGNAL \sum17|Cout~0_combout\ : std_logic;
SIGNAL \sum18|oS~combout\ : std_logic;
SIGNAL \sum10|Cout~0_combout\ : std_logic;
SIGNAL \sum15|oS~0_combout\ : std_logic;
SIGNAL \sum18|Cout~0_combout\ : std_logic;
SIGNAL \sum14|Cout~0_combout\ : std_logic;
SIGNAL \sum19|oS~combout\ : std_logic;
SIGNAL \sum15|Cout~0_combout\ : std_logic;
SIGNAL \sum19|Cout~0_combout\ : std_logic;
SIGNAL \sum20|oS~0_combout\ : std_logic;
SIGNAL \sum20|Cout~0_combout\ : std_logic;
SIGNAL A4B : std_logic_vector(4 DOWNTO 0);
SIGNAL A3B : std_logic_vector(4 DOWNTO 0);
SIGNAL A2B : std_logic_vector(4 DOWNTO 0);
SIGNAL A1B : std_logic_vector(4 DOWNTO 0);
SIGNAL A0B : std_logic_vector(4 DOWNTO 0);
SIGNAL \ivB~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ivA~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_ivA <= ivA;
ww_ivB <= ivB;
ovS <= ww_ovS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X36_Y25_N4
\sum3|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum3|oS~0_combout\ = (\ivA~combout\(2) & (\ivB~combout\(1) $ (((\ivB~combout\(0) & \ivA~combout\(3)))))) # (!\ivA~combout\(2) & (((\ivB~combout\(0) & \ivA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(2),
	datab => \ivB~combout\(1),
	datac => \ivB~combout\(0),
	datad => \ivA~combout\(3),
	combout => \sum3|oS~0_combout\);

-- Location: LCCOMB_X36_Y24_N24
\sum11|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum11|Cout~0_combout\ = \sum3|oS~0_combout\ $ (\sum6|Cout~1_combout\ $ (\sum2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum3|oS~0_combout\,
	datac => \sum6|Cout~1_combout\,
	datad => \sum2|Cout~0_combout\,
	combout => \sum11|Cout~0_combout\);

-- Location: LCCOMB_X36_Y24_N6
\A1B[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- A1B(3) = (\ivA~combout\(1) & \ivB~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivA~combout\(1),
	datad => \ivB~combout\(3),
	combout => A1B(3));

-- Location: LCCOMB_X37_Y24_N20
\sum9|oS~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum9|oS~1_combout\ = \sum9|oS~0_combout\ $ (\sum4|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum9|oS~0_combout\,
	datad => \sum4|Cout~0_combout\,
	combout => \sum9|oS~1_combout\);

-- Location: LCCOMB_X37_Y24_N14
\sum10|oS~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum10|oS~2_combout\ = (\ivA~combout\(4) & (\ivB~combout\(2) $ (((\sum4|Cout~0_combout\ & \ivB~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum4|Cout~0_combout\,
	datab => \ivA~combout\(4),
	datac => \ivB~combout\(1),
	datad => \ivB~combout\(2),
	combout => \sum10|oS~2_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[0]~I\ : cycloneii_io
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
	padio => ww_ivA(0),
	combout => \ivA~combout\(0));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[0]~I\ : cycloneii_io
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
	padio => ww_ivB(0),
	combout => \ivB~combout\(0));

-- Location: LCCOMB_X36_Y25_N24
\A0B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A0B~0_combout\ = (\ivA~combout\(0) & \ivB~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(0),
	datac => \ivB~combout\(0),
	combout => \A0B~0_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[1]~I\ : cycloneii_io
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
	padio => ww_ivB(1),
	combout => \ivB~combout\(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[1]~I\ : cycloneii_io
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
	padio => ww_ivA(1),
	combout => \ivA~combout\(1));

-- Location: LCCOMB_X36_Y25_N26
\sum1|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|oS~0_combout\ = (\ivB~combout\(0) & (\ivA~combout\(1) $ (((\ivB~combout\(1) & \ivA~combout\(0)))))) # (!\ivB~combout\(0) & (\ivB~combout\(1) & (\ivA~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(0),
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(0),
	datad => \ivA~combout\(1),
	combout => \sum1|oS~0_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[2]~I\ : cycloneii_io
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
	padio => ww_ivB(2),
	combout => \ivB~combout\(2));

-- Location: LCCOMB_X36_Y25_N20
\sum1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum1|Cout~0_combout\ = (\ivB~combout\(0) & (\ivB~combout\(1) & (\ivA~combout\(0) & \ivA~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(0),
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(0),
	datad => \ivA~combout\(1),
	combout => \sum1|Cout~0_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[2]~I\ : cycloneii_io
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
	padio => ww_ivA(2),
	combout => \ivA~combout\(2));

-- Location: LCCOMB_X36_Y25_N8
\sum6|oS~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum6|oS~3_combout\ = (\ivA~combout\(1) & (\ivB~combout\(1) $ (((\ivB~combout\(0) & \ivA~combout\(2)))))) # (!\ivA~combout\(1) & (((\ivB~combout\(0) & \ivA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivB~combout\(1),
	datac => \ivB~combout\(0),
	datad => \ivA~combout\(2),
	combout => \sum6|oS~3_combout\);

-- Location: LCCOMB_X36_Y25_N0
\sum6|oS~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum6|oS~2_combout\ = \sum1|Cout~0_combout\ $ (\sum6|oS~3_combout\ $ (((\ivA~combout\(0) & \ivB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(0),
	datab => \ivB~combout\(2),
	datac => \sum1|Cout~0_combout\,
	datad => \sum6|oS~3_combout\,
	combout => \sum6|oS~2_combout\);

-- Location: LCCOMB_X36_Y24_N0
\A1B[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- A1B(2) = (\ivB~combout\(2) & \ivA~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(2),
	datac => \ivA~combout\(1),
	combout => A1B(2));

-- Location: LCCOMB_X36_Y25_N6
\sum6|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum6|Cout~0_combout\ = (\ivB~combout\(0) & (((\ivA~combout\(2))))) # (!\ivB~combout\(0) & (\ivA~combout\(1) & (\ivB~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivB~combout\(1),
	datac => \ivB~combout\(0),
	datad => \ivA~combout\(2),
	combout => \sum6|Cout~0_combout\);

-- Location: LCCOMB_X36_Y25_N16
\sum6|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum6|Cout~1_combout\ = (\ivA~combout\(0) & (\ivB~combout\(2) & \sum6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(0),
	datac => \ivB~combout\(2),
	datad => \sum6|Cout~0_combout\,
	combout => \sum6|Cout~1_combout\);

-- Location: LCCOMB_X36_Y25_N22
\A1B[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- A1B(1) = (\ivA~combout\(1) & \ivB~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datad => \ivB~combout\(1),
	combout => A1B(1));

-- Location: LCCOMB_X36_Y25_N10
\sum2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum2|Cout~0_combout\ = (\sum1|Cout~0_combout\ & ((A1B(1)) # ((\ivB~combout\(0) & \ivA~combout\(2))))) # (!\sum1|Cout~0_combout\ & (A1B(1) & (\ivB~combout\(0) & \ivA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|Cout~0_combout\,
	datab => A1B(1),
	datac => \ivB~combout\(0),
	datad => \ivA~combout\(2),
	combout => \sum2|Cout~0_combout\);

-- Location: LCCOMB_X36_Y24_N10
\sum7|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum7|oS~combout\ = \sum3|oS~0_combout\ $ (A1B(2) $ (\sum6|Cout~1_combout\ $ (\sum2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum3|oS~0_combout\,
	datab => A1B(2),
	datac => \sum6|Cout~1_combout\,
	datad => \sum2|Cout~0_combout\,
	combout => \sum7|oS~combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[3]~I\ : cycloneii_io
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
	padio => ww_ivB(3),
	combout => \ivB~combout\(3));

-- Location: LCCOMB_X36_Y24_N20
\sum11|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum11|oS~0_combout\ = \sum7|oS~combout\ $ (((\ivA~combout\(0) & \ivB~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum7|oS~combout\,
	datab => \ivA~combout\(0),
	datad => \ivB~combout\(3),
	combout => \sum11|oS~0_combout\);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[4]~I\ : cycloneii_io
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
	padio => ww_ivA(4),
	combout => \ivA~combout\(4));

-- Location: LCCOMB_X37_Y24_N0
\sum4|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum4|oS~0_combout\ = (\ivA~combout\(3) & (\ivB~combout\(1) $ (((\ivB~combout\(0) & \ivA~combout\(4)))))) # (!\ivA~combout\(3) & (((\ivB~combout\(0) & \ivA~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(3),
	datab => \ivB~combout\(1),
	datac => \ivB~combout\(0),
	datad => \ivA~combout\(4),
	combout => \sum4|oS~0_combout\);

-- Location: LCCOMB_X37_Y24_N4
\sum8|oS~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum8|oS~2_combout\ = \sum3|Cout~0_combout\ $ (\sum4|oS~0_combout\ $ (((\ivA~combout\(2) & \ivB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum3|Cout~0_combout\,
	datab => \sum4|oS~0_combout\,
	datac => \ivA~combout\(2),
	datad => \ivB~combout\(2),
	combout => \sum8|oS~2_combout\);

-- Location: LCCOMB_X36_Y24_N18
\sum11|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum11|Cout~1_combout\ = (\ivA~combout\(0) & (\ivB~combout\(3) & (\sum11|Cout~0_combout\ $ (A1B(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum11|Cout~0_combout\,
	datab => A1B(2),
	datac => \ivA~combout\(0),
	datad => \ivB~combout\(3),
	combout => \sum11|Cout~1_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[4]~I\ : cycloneii_io
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
	padio => ww_ivB(4),
	combout => \ivB~combout\(4));

-- Location: LCCOMB_X36_Y24_N14
\A0B[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- A0B(4) = (\ivA~combout\(0) & \ivB~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivA~combout\(0),
	datac => \ivB~combout\(4),
	combout => A0B(4));

-- Location: LCCOMB_X36_Y24_N30
\sum12|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum12|oS~0_combout\ = \sum7|Cout~0_combout\ $ (((\ivA~combout\(1) & \ivB~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum7|Cout~0_combout\,
	datac => \ivA~combout\(1),
	datad => \ivB~combout\(3),
	combout => \sum12|oS~0_combout\);

-- Location: LCCOMB_X36_Y24_N8
\sum16|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum16|oS~0_combout\ = \sum8|oS~2_combout\ $ (\sum11|Cout~1_combout\ $ (A0B(4) $ (\sum12|oS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum8|oS~2_combout\,
	datab => \sum11|Cout~1_combout\,
	datac => A0B(4),
	datad => \sum12|oS~0_combout\,
	combout => \sum16|oS~0_combout\);

-- Location: LCCOMB_X36_Y24_N26
\sum16|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum16|Cout~0_combout\ = (A0B(4) & (\sum8|oS~2_combout\ $ (\sum11|Cout~1_combout\ $ (\sum12|oS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum8|oS~2_combout\,
	datab => \sum11|Cout~1_combout\,
	datac => A0B(4),
	datad => \sum12|oS~0_combout\,
	combout => \sum16|Cout~0_combout\);

-- Location: LCCOMB_X36_Y24_N28
\A1B[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- A1B(4) = (\ivB~combout\(4) & \ivA~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivB~combout\(4),
	datac => \ivA~combout\(1),
	combout => A1B(4));

-- Location: LCCOMB_X36_Y24_N12
\sum7|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum7|Cout~0_combout\ = (A1B(2) & ((\sum6|Cout~1_combout\) # (\sum3|oS~0_combout\ $ (\sum2|Cout~0_combout\)))) # (!A1B(2) & (\sum6|Cout~1_combout\ & (\sum3|oS~0_combout\ $ (\sum2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum3|oS~0_combout\,
	datab => A1B(2),
	datac => \sum6|Cout~1_combout\,
	datad => \sum2|Cout~0_combout\,
	combout => \sum7|Cout~0_combout\);

-- Location: LCCOMB_X36_Y24_N16
\sum12|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum12|Cout~0_combout\ = (A1B(3) & ((\sum11|Cout~1_combout\) # (\sum7|Cout~0_combout\ $ (\sum8|oS~2_combout\)))) # (!A1B(3) & (\sum11|Cout~1_combout\ & (\sum7|Cout~0_combout\ $ (\sum8|oS~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A1B(3),
	datab => \sum11|Cout~1_combout\,
	datac => \sum7|Cout~0_combout\,
	datad => \sum8|oS~2_combout\,
	combout => \sum12|Cout~0_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[3]~I\ : cycloneii_io
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
	padio => ww_ivA(3),
	combout => \ivA~combout\(3));

-- Location: LCCOMB_X37_Y24_N22
\sum9|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum9|oS~0_combout\ = (\ivB~combout\(2) & (\ivA~combout\(3) $ (((\ivB~combout\(1) & \ivA~combout\(4)))))) # (!\ivB~combout\(2) & (\ivB~combout\(1) & ((\ivA~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(2),
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(3),
	datad => \ivA~combout\(4),
	combout => \sum9|oS~0_combout\);

-- Location: LCCOMB_X37_Y24_N8
\A2B[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- A2B(3) = (\ivA~combout\(2) & \ivB~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivA~combout\(2),
	datad => \ivB~combout\(3),
	combout => A2B(3));

-- Location: LCCOMB_X37_Y24_N2
\A3B[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- A3B(1) = (\ivB~combout\(1) & \ivA~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(3),
	combout => A3B(1));

-- Location: LCCOMB_X37_Y24_N12
\sum4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum4|Cout~0_combout\ = (\sum3|Cout~0_combout\ & ((A3B(1)) # ((\ivB~combout\(0) & \ivA~combout\(4))))) # (!\sum3|Cout~0_combout\ & (A3B(1) & (\ivB~combout\(0) & \ivA~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum3|Cout~0_combout\,
	datab => A3B(1),
	datac => \ivB~combout\(0),
	datad => \ivA~combout\(4),
	combout => \sum4|Cout~0_combout\);

-- Location: LCCOMB_X37_Y24_N28
\sum13|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum13|oS~0_combout\ = \sum8|Cout~0_combout\ $ (\sum9|oS~0_combout\ $ (A2B(3) $ (\sum4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum8|Cout~0_combout\,
	datab => \sum9|oS~0_combout\,
	datac => A2B(3),
	datad => \sum4|Cout~0_combout\,
	combout => \sum13|oS~0_combout\);

-- Location: LCCOMB_X36_Y24_N2
\sum17|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum17|oS~combout\ = \sum16|Cout~0_combout\ $ (A1B(4) $ (\sum12|Cout~0_combout\ $ (\sum13|oS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum16|Cout~0_combout\,
	datab => A1B(4),
	datac => \sum12|Cout~0_combout\,
	datad => \sum13|oS~0_combout\,
	combout => \sum17|oS~combout\);

-- Location: LCCOMB_X37_Y24_N30
\A4B[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- A4B(1) = (\ivB~combout\(1) & \ivA~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivB~combout\(1),
	datad => \ivA~combout\(4),
	combout => A4B(1));

-- Location: LCCOMB_X37_Y24_N16
\A3B[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- A3B(2) = (\ivB~combout\(2) & \ivA~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(2),
	datac => \ivA~combout\(3),
	combout => A3B(2));

-- Location: LCCOMB_X37_Y24_N26
\sum9|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum9|Cout~0_combout\ = (\sum8|Cout~0_combout\ & ((A3B(2)) # (A4B(1) $ (\sum4|Cout~0_combout\)))) # (!\sum8|Cout~0_combout\ & (A3B(2) & (A4B(1) $ (\sum4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum8|Cout~0_combout\,
	datab => A4B(1),
	datac => A3B(2),
	datad => \sum4|Cout~0_combout\,
	combout => \sum9|Cout~0_combout\);

-- Location: LCCOMB_X38_Y24_N24
\sum14|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum14|oS~0_combout\ = \sum10|oS~2_combout\ $ (\sum9|Cout~0_combout\ $ (((\ivA~combout\(3) & \ivB~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum10|oS~2_combout\,
	datab => \sum9|Cout~0_combout\,
	datac => \ivA~combout\(3),
	datad => \ivB~combout\(3),
	combout => \sum14|oS~0_combout\);

-- Location: LCCOMB_X36_Y25_N2
\A2B[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- A2B(2) = (\ivB~combout\(2) & \ivA~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivB~combout\(2),
	datad => \ivA~combout\(2),
	combout => A2B(2));

-- Location: LCCOMB_X36_Y25_N28
\A2B[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- A2B(1) = (\ivA~combout\(2) & \ivB~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(2),
	datad => \ivB~combout\(1),
	combout => A2B(1));

-- Location: LCCOMB_X36_Y25_N30
\sum3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum3|Cout~0_combout\ = (\sum2|Cout~0_combout\ & ((A2B(1)) # ((\ivB~combout\(0) & \ivA~combout\(3))))) # (!\sum2|Cout~0_combout\ & (A2B(1) & (\ivB~combout\(0) & \ivA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum2|Cout~0_combout\,
	datab => A2B(1),
	datac => \ivB~combout\(0),
	datad => \ivA~combout\(3),
	combout => \sum3|Cout~0_combout\);

-- Location: LCCOMB_X37_Y24_N10
\sum8|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum8|Cout~0_combout\ = (\sum7|Cout~0_combout\ & ((A2B(2)) # (\sum3|Cout~0_combout\ $ (\sum4|oS~0_combout\)))) # (!\sum7|Cout~0_combout\ & (A2B(2) & (\sum3|Cout~0_combout\ $ (\sum4|oS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum7|Cout~0_combout\,
	datab => A2B(2),
	datac => \sum3|Cout~0_combout\,
	datad => \sum4|oS~0_combout\,
	combout => \sum8|Cout~0_combout\);

-- Location: LCCOMB_X37_Y24_N6
\sum13|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum13|Cout~0_combout\ = (\sum12|Cout~0_combout\ & ((A2B(3)) # (\sum9|oS~1_combout\ $ (\sum8|Cout~0_combout\)))) # (!\sum12|Cout~0_combout\ & (A2B(3) & (\sum9|oS~1_combout\ $ (\sum8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum9|oS~1_combout\,
	datab => \sum12|Cout~0_combout\,
	datac => A2B(3),
	datad => \sum8|Cout~0_combout\,
	combout => \sum13|Cout~0_combout\);

-- Location: LCCOMB_X36_Y24_N4
\sum17|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum17|Cout~0_combout\ = (\sum16|Cout~0_combout\ & ((A1B(4)) # (\sum12|Cout~0_combout\ $ (\sum13|oS~0_combout\)))) # (!\sum16|Cout~0_combout\ & (A1B(4) & (\sum12|Cout~0_combout\ $ (\sum13|oS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum16|Cout~0_combout\,
	datab => A1B(4),
	datac => \sum12|Cout~0_combout\,
	datad => \sum13|oS~0_combout\,
	combout => \sum17|Cout~0_combout\);

-- Location: LCCOMB_X38_Y24_N2
\A2B[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- A2B(4) = (\ivB~combout\(4) & \ivA~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivB~combout\(4),
	datad => \ivA~combout\(2),
	combout => A2B(4));

-- Location: LCCOMB_X38_Y24_N12
\sum18|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum18|oS~combout\ = \sum14|oS~0_combout\ $ (\sum13|Cout~0_combout\ $ (\sum17|Cout~0_combout\ $ (A2B(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum14|oS~0_combout\,
	datab => \sum13|Cout~0_combout\,
	datac => \sum17|Cout~0_combout\,
	datad => A2B(4),
	combout => \sum18|oS~combout\);

-- Location: LCCOMB_X38_Y24_N10
\A3B[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- A3B(4) = (\ivA~combout\(3) & \ivB~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(3),
	datac => \ivB~combout\(4),
	combout => A3B(4));

-- Location: LCCOMB_X37_Y24_N24
\A4B[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- A4B(2) = (\ivB~combout\(2) & \ivA~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(2),
	datad => \ivA~combout\(4),
	combout => A4B(2));

-- Location: LCCOMB_X37_Y24_N18
\sum10|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum10|Cout~0_combout\ = (A4B(2) & ((\sum9|Cout~0_combout\) # ((\sum4|Cout~0_combout\ & A4B(1))))) # (!A4B(2) & (\sum4|Cout~0_combout\ & (A4B(1) & \sum9|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum4|Cout~0_combout\,
	datab => A4B(1),
	datac => A4B(2),
	datad => \sum9|Cout~0_combout\,
	combout => \sum10|Cout~0_combout\);

-- Location: LCCOMB_X38_Y24_N22
\sum15|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum15|oS~0_combout\ = \sum10|Cout~0_combout\ $ (((\ivB~combout\(3) & \ivA~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(3),
	datab => \sum10|Cout~0_combout\,
	datad => \ivA~combout\(4),
	combout => \sum15|oS~0_combout\);

-- Location: LCCOMB_X38_Y24_N16
\sum18|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum18|Cout~0_combout\ = (\sum17|Cout~0_combout\ & ((A2B(4)) # (\sum14|oS~0_combout\ $ (\sum13|Cout~0_combout\)))) # (!\sum17|Cout~0_combout\ & (A2B(4) & (\sum14|oS~0_combout\ $ (\sum13|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum14|oS~0_combout\,
	datab => \sum13|Cout~0_combout\,
	datac => \sum17|Cout~0_combout\,
	datad => A2B(4),
	combout => \sum18|Cout~0_combout\);

-- Location: LCCOMB_X38_Y24_N20
\A3B[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- A3B(3) = (\ivB~combout\(3) & \ivA~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(3),
	datac => \ivA~combout\(3),
	combout => A3B(3));

-- Location: LCCOMB_X38_Y24_N30
\sum14|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum14|Cout~0_combout\ = (\sum13|Cout~0_combout\ & ((A3B(3)) # (\sum10|oS~2_combout\ $ (\sum9|Cout~0_combout\)))) # (!\sum13|Cout~0_combout\ & (A3B(3) & (\sum10|oS~2_combout\ $ (\sum9|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum10|oS~2_combout\,
	datab => \sum13|Cout~0_combout\,
	datac => A3B(3),
	datad => \sum9|Cout~0_combout\,
	combout => \sum14|Cout~0_combout\);

-- Location: LCCOMB_X38_Y24_N8
\sum19|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum19|oS~combout\ = A3B(4) $ (\sum15|oS~0_combout\ $ (\sum18|Cout~0_combout\ $ (\sum14|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A3B(4),
	datab => \sum15|oS~0_combout\,
	datac => \sum18|Cout~0_combout\,
	datad => \sum14|Cout~0_combout\,
	combout => \sum19|oS~combout\);

-- Location: LCCOMB_X38_Y24_N28
\sum15|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum15|Cout~0_combout\ = (\sum14|Cout~0_combout\ & ((\sum10|Cout~0_combout\) # ((\ivB~combout\(3) & \ivA~combout\(4))))) # (!\sum14|Cout~0_combout\ & (\ivB~combout\(3) & (\sum10|Cout~0_combout\ & \ivA~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(3),
	datab => \sum14|Cout~0_combout\,
	datac => \sum10|Cout~0_combout\,
	datad => \ivA~combout\(4),
	combout => \sum15|Cout~0_combout\);

-- Location: LCCOMB_X38_Y24_N18
\sum19|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum19|Cout~0_combout\ = (A3B(4) & ((\sum18|Cout~0_combout\) # (\sum15|oS~0_combout\ $ (\sum14|Cout~0_combout\)))) # (!A3B(4) & (\sum18|Cout~0_combout\ & (\sum15|oS~0_combout\ $ (\sum14|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A3B(4),
	datab => \sum15|oS~0_combout\,
	datac => \sum18|Cout~0_combout\,
	datad => \sum14|Cout~0_combout\,
	combout => \sum19|Cout~0_combout\);

-- Location: LCCOMB_X38_Y24_N6
\sum20|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum20|oS~0_combout\ = \sum15|Cout~0_combout\ $ (\sum19|Cout~0_combout\ $ (((\ivB~combout\(4) & \ivA~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum15|Cout~0_combout\,
	datab => \sum19|Cout~0_combout\,
	datac => \ivB~combout\(4),
	datad => \ivA~combout\(4),
	combout => \sum20|oS~0_combout\);

-- Location: LCCOMB_X38_Y24_N0
\sum20|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum20|Cout~0_combout\ = (\sum15|Cout~0_combout\ & ((\sum19|Cout~0_combout\) # ((\ivB~combout\(4) & \ivA~combout\(4))))) # (!\sum15|Cout~0_combout\ & (\sum19|Cout~0_combout\ & (\ivB~combout\(4) & \ivA~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum15|Cout~0_combout\,
	datab => \sum19|Cout~0_combout\,
	datac => \ivB~combout\(4),
	datad => \ivA~combout\(4),
	combout => \sum20|Cout~0_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[0]~I\ : cycloneii_io
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
	datain => \A0B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(0));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[1]~I\ : cycloneii_io
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
	datain => \sum1|oS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(1));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[2]~I\ : cycloneii_io
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
	datain => \sum6|oS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[3]~I\ : cycloneii_io
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
	datain => \sum11|oS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[4]~I\ : cycloneii_io
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
	datain => \sum16|oS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(4));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[5]~I\ : cycloneii_io
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
	datain => \sum17|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(5));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[6]~I\ : cycloneii_io
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
	datain => \sum18|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(6));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[7]~I\ : cycloneii_io
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
	datain => \sum19|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(7));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[8]~I\ : cycloneii_io
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
	datain => \sum20|oS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(8));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovS[9]~I\ : cycloneii_io
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
	datain => \sum20|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(9));
END structure;


