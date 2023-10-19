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

-- DATE "10/14/2023 08:41:06"

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

ENTITY 	sumadores_x_bits IS
    PORT (
	ivA : IN std_logic_vector(8 DOWNTO 0);
	ivB : IN std_logic_vector(8 DOWNTO 0);
	Cin : IN std_logic;
	ovS : OUT std_logic_vector(8 DOWNTO 0);
	Cout : OUT std_logic
	);
END sumadores_x_bits;

-- Design Ports Information
-- Cin	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ovS[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[2]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[3]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[4]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[5]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[7]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[8]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cout	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ivA[0]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[0]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[1]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[1]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[2]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[2]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[3]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[3]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[4]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[4]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[5]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[5]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[6]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[6]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[7]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[8]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sumadores_x_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ivA : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ivB : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_ovS : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \sum_1|sum_3|sum_1|sum_1|Cout~0_combout\ : std_logic;
SIGNAL \sum_1|sum_1|oS~0_combout\ : std_logic;
SIGNAL \sum_1|sum_2|sum_1|sum_1|oS~0_combout\ : std_logic;
SIGNAL \sum_1|sum_2|sum_1|sum_1|Cout~0_combout\ : std_logic;
SIGNAL \sum_1|sum_2|sum_1|sum_2|oS~0_combout\ : std_logic;
SIGNAL \sum_1|sum_2|sum_1|sum_2|Cout~0_combout\ : std_logic;
SIGNAL \sum_1|sum_2|sum_2|sum_1|oS~combout\ : std_logic;
SIGNAL \sum_1|sum_2|sum_2|sum_1|Cout~0_combout\ : std_logic;
SIGNAL \sum_1|sum_2|sum_2|sum_2|oS~combout\ : std_logic;
SIGNAL \sum_1|sum_2|sum_2|sum_2|Cout~0_combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_1|sum_1|oS~combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_1|sum_1|Cout~1_combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_1|sum_2|oS~combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_2|sum_1|oS~0_combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_2|sum_1|oS~combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_2|sum_1|Cout~0_combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_2|sum_1|Cout~1_combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_2|sum_1|Cout~2_combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_2|sum_2|oS~combout\ : std_logic;
SIGNAL \sum_1|sum_3|sum_2|sum_2|Cout~0_combout\ : std_logic;
SIGNAL \ivB~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ivA~combout\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_ivA <= ivA;
ww_ivB <= ivB;
ww_Cin <= Cin;
ovS <= ww_ovS;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X40_Y13_N12
\sum_1|sum_3|sum_1|sum_1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_1|sum_1|Cout~0_combout\ = (\sum_1|sum_2|sum_2|sum_1|Cout~0_combout\ & ((\ivA~combout\(4)) # (\ivB~combout\(4)))) # (!\sum_1|sum_2|sum_2|sum_1|Cout~0_combout\ & (\ivA~combout\(4) & \ivB~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum_1|sum_2|sum_2|sum_1|Cout~0_combout\,
	datac => \ivA~combout\(4),
	datad => \ivB~combout\(4),
	combout => \sum_1|sum_3|sum_1|sum_1|Cout~0_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[7]~I\ : cycloneii_io
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
	padio => ww_ivA(7),
	combout => \ivA~combout\(7));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y13_N0
\sum_1|sum_1|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_1|oS~0_combout\ = \ivB~combout\(0) $ (\ivA~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivB~combout\(0),
	datad => \ivA~combout\(0),
	combout => \sum_1|sum_1|oS~0_combout\);

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y13_N10
\sum_1|sum_2|sum_1|sum_1|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_2|sum_1|sum_1|oS~0_combout\ = \ivB~combout\(1) $ (\ivA~combout\(1) $ (((\ivB~combout\(0) & \ivA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(0),
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(1),
	datad => \ivA~combout\(0),
	combout => \sum_1|sum_2|sum_1|sum_1|oS~0_combout\);

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y13_N20
\sum_1|sum_2|sum_1|sum_1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_2|sum_1|sum_1|Cout~0_combout\ = (\ivB~combout\(1) & ((\ivA~combout\(1)) # ((\ivB~combout\(0) & \ivA~combout\(0))))) # (!\ivB~combout\(1) & (\ivB~combout\(0) & (\ivA~combout\(1) & \ivA~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(0),
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(1),
	datad => \ivA~combout\(0),
	combout => \sum_1|sum_2|sum_1|sum_1|Cout~0_combout\);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y13_N14
\sum_1|sum_2|sum_1|sum_2|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_2|sum_1|sum_2|oS~0_combout\ = \ivA~combout\(2) $ (\sum_1|sum_2|sum_1|sum_1|Cout~0_combout\ $ (\ivB~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivA~combout\(2),
	datac => \sum_1|sum_2|sum_1|sum_1|Cout~0_combout\,
	datad => \ivB~combout\(2),
	combout => \sum_1|sum_2|sum_1|sum_2|oS~0_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y13_N16
\sum_1|sum_2|sum_1|sum_2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_2|sum_1|sum_2|Cout~0_combout\ = (\ivA~combout\(2) & ((\sum_1|sum_2|sum_1|sum_1|Cout~0_combout\) # (\ivB~combout\(2)))) # (!\ivA~combout\(2) & (\sum_1|sum_2|sum_1|sum_1|Cout~0_combout\ & \ivB~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivA~combout\(2),
	datac => \sum_1|sum_2|sum_1|sum_1|Cout~0_combout\,
	datad => \ivB~combout\(2),
	combout => \sum_1|sum_2|sum_1|sum_2|Cout~0_combout\);

-- Location: LCCOMB_X40_Y13_N2
\sum_1|sum_2|sum_2|sum_1|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_2|sum_2|sum_1|oS~combout\ = \ivA~combout\(3) $ (\ivB~combout\(3) $ (\sum_1|sum_2|sum_1|sum_2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(3),
	datab => \ivB~combout\(3),
	datac => \sum_1|sum_2|sum_1|sum_2|Cout~0_combout\,
	combout => \sum_1|sum_2|sum_2|sum_1|oS~combout\);

-- Location: LCCOMB_X40_Y13_N28
\sum_1|sum_2|sum_2|sum_1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_2|sum_2|sum_1|Cout~0_combout\ = (\ivA~combout\(3) & ((\ivB~combout\(3)) # (\sum_1|sum_2|sum_1|sum_2|Cout~0_combout\))) # (!\ivA~combout\(3) & (\ivB~combout\(3) & \sum_1|sum_2|sum_1|sum_2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(3),
	datab => \ivB~combout\(3),
	datac => \sum_1|sum_2|sum_1|sum_2|Cout~0_combout\,
	combout => \sum_1|sum_2|sum_2|sum_1|Cout~0_combout\);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y13_N22
\sum_1|sum_2|sum_2|sum_2|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_2|sum_2|sum_2|oS~combout\ = \sum_1|sum_2|sum_2|sum_1|Cout~0_combout\ $ (\ivA~combout\(4) $ (\ivB~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum_1|sum_2|sum_2|sum_1|Cout~0_combout\,
	datac => \ivA~combout\(4),
	datad => \ivB~combout\(4),
	combout => \sum_1|sum_2|sum_2|sum_2|oS~combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[5]~I\ : cycloneii_io
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
	padio => ww_ivB(5),
	combout => \ivB~combout\(5));

-- Location: LCCOMB_X40_Y13_N24
\sum_1|sum_2|sum_2|sum_2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_2|sum_2|sum_2|Cout~0_combout\ = (\sum_1|sum_2|sum_2|sum_1|Cout~0_combout\ & ((\ivA~combout\(4)) # (\ivB~combout\(4)))) # (!\sum_1|sum_2|sum_2|sum_1|Cout~0_combout\ & (\ivA~combout\(4) & \ivB~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum_1|sum_2|sum_2|sum_1|Cout~0_combout\,
	datac => \ivA~combout\(4),
	datad => \ivB~combout\(4),
	combout => \sum_1|sum_2|sum_2|sum_2|Cout~0_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[5]~I\ : cycloneii_io
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
	padio => ww_ivA(5),
	combout => \ivA~combout\(5));

-- Location: LCCOMB_X40_Y13_N26
\sum_1|sum_3|sum_1|sum_1|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_1|sum_1|oS~combout\ = \ivB~combout\(5) $ (\sum_1|sum_2|sum_2|sum_2|Cout~0_combout\ $ (\ivA~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivB~combout\(5),
	datac => \sum_1|sum_2|sum_2|sum_2|Cout~0_combout\,
	datad => \ivA~combout\(5),
	combout => \sum_1|sum_3|sum_1|sum_1|oS~combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[6]~I\ : cycloneii_io
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
	padio => ww_ivA(6),
	combout => \ivA~combout\(6));

-- Location: LCCOMB_X40_Y13_N6
\sum_1|sum_3|sum_1|sum_1|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_1|sum_1|Cout~1_combout\ = (\sum_1|sum_3|sum_1|sum_1|Cout~0_combout\ & ((\ivB~combout\(5)) # (\ivA~combout\(5)))) # (!\sum_1|sum_3|sum_1|sum_1|Cout~0_combout\ & (\ivB~combout\(5) & \ivA~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_1|sum_3|sum_1|sum_1|Cout~0_combout\,
	datac => \ivB~combout\(5),
	datad => \ivA~combout\(5),
	combout => \sum_1|sum_3|sum_1|sum_1|Cout~1_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[6]~I\ : cycloneii_io
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
	padio => ww_ivB(6),
	combout => \ivB~combout\(6));

-- Location: LCCOMB_X22_Y26_N24
\sum_1|sum_3|sum_1|sum_2|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_1|sum_2|oS~combout\ = \ivA~combout\(6) $ (\sum_1|sum_3|sum_1|sum_1|Cout~1_combout\ $ (\ivB~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(6),
	datac => \sum_1|sum_3|sum_1|sum_1|Cout~1_combout\,
	datad => \ivB~combout\(6),
	combout => \sum_1|sum_3|sum_1|sum_2|oS~combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[7]~I\ : cycloneii_io
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
	padio => ww_ivB(7),
	combout => \ivB~combout\(7));

-- Location: LCCOMB_X22_Y26_N18
\sum_1|sum_3|sum_2|sum_1|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_2|sum_1|oS~0_combout\ = \ivA~combout\(7) $ (\ivB~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(7),
	datac => \ivB~combout\(7),
	combout => \sum_1|sum_3|sum_2|sum_1|oS~0_combout\);

-- Location: LCCOMB_X22_Y26_N28
\sum_1|sum_3|sum_2|sum_1|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_2|sum_1|oS~combout\ = \sum_1|sum_3|sum_2|sum_1|oS~0_combout\ $ (((\ivA~combout\(6) & ((\sum_1|sum_3|sum_1|sum_1|Cout~1_combout\) # (\ivB~combout\(6)))) # (!\ivA~combout\(6) & (\sum_1|sum_3|sum_1|sum_1|Cout~1_combout\ & 
-- \ivB~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(6),
	datab => \sum_1|sum_3|sum_2|sum_1|oS~0_combout\,
	datac => \sum_1|sum_3|sum_1|sum_1|Cout~1_combout\,
	datad => \ivB~combout\(6),
	combout => \sum_1|sum_3|sum_2|sum_1|oS~combout\);

-- Location: LCCOMB_X22_Y26_N6
\sum_1|sum_3|sum_2|sum_1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_2|sum_1|Cout~0_combout\ = (\ivA~combout\(7) & \ivB~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(7),
	datac => \ivB~combout\(7),
	combout => \sum_1|sum_3|sum_2|sum_1|Cout~0_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivB[8]~I\ : cycloneii_io
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
	padio => ww_ivB(8),
	combout => \ivB~combout\(8));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ivA[8]~I\ : cycloneii_io
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
	padio => ww_ivA(8),
	combout => \ivA~combout\(8));

-- Location: LCCOMB_X22_Y26_N0
\sum_1|sum_3|sum_2|sum_1|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_2|sum_1|Cout~1_combout\ = (\ivA~combout\(7)) # (\ivB~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(7),
	datac => \ivB~combout\(7),
	combout => \sum_1|sum_3|sum_2|sum_1|Cout~1_combout\);

-- Location: LCCOMB_X22_Y26_N2
\sum_1|sum_3|sum_2|sum_1|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_2|sum_1|Cout~2_combout\ = (\sum_1|sum_3|sum_2|sum_1|Cout~1_combout\ & ((\ivA~combout\(6) & ((\sum_1|sum_3|sum_1|sum_1|Cout~1_combout\) # (\ivB~combout\(6)))) # (!\ivA~combout\(6) & (\sum_1|sum_3|sum_1|sum_1|Cout~1_combout\ & 
-- \ivB~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(6),
	datab => \sum_1|sum_3|sum_2|sum_1|Cout~1_combout\,
	datac => \sum_1|sum_3|sum_1|sum_1|Cout~1_combout\,
	datad => \ivB~combout\(6),
	combout => \sum_1|sum_3|sum_2|sum_1|Cout~2_combout\);

-- Location: LCCOMB_X22_Y26_N12
\sum_1|sum_3|sum_2|sum_2|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_2|sum_2|oS~combout\ = \ivB~combout\(8) $ (\ivA~combout\(8) $ (((\sum_1|sum_3|sum_2|sum_1|Cout~0_combout\) # (\sum_1|sum_3|sum_2|sum_1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_1|sum_3|sum_2|sum_1|Cout~0_combout\,
	datab => \ivB~combout\(8),
	datac => \ivA~combout\(8),
	datad => \sum_1|sum_3|sum_2|sum_1|Cout~2_combout\,
	combout => \sum_1|sum_3|sum_2|sum_2|oS~combout\);

-- Location: LCCOMB_X22_Y26_N14
\sum_1|sum_3|sum_2|sum_2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sum_1|sum_3|sum_2|sum_2|Cout~0_combout\ = (\ivB~combout\(8) & ((\sum_1|sum_3|sum_2|sum_1|Cout~0_combout\) # ((\ivA~combout\(8)) # (\sum_1|sum_3|sum_2|sum_1|Cout~2_combout\)))) # (!\ivB~combout\(8) & (\ivA~combout\(8) & 
-- ((\sum_1|sum_3|sum_2|sum_1|Cout~0_combout\) # (\sum_1|sum_3|sum_2|sum_1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_1|sum_3|sum_2|sum_1|Cout~0_combout\,
	datab => \ivB~combout\(8),
	datac => \ivA~combout\(8),
	datad => \sum_1|sum_3|sum_2|sum_1|Cout~2_combout\,
	combout => \sum_1|sum_3|sum_2|sum_2|Cout~0_combout\);

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : cycloneii_io
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
	padio => ww_Cin);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_1|oS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(0));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_2|sum_1|sum_1|oS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(1));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_2|sum_1|sum_2|oS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(2));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_2|sum_2|sum_1|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(3));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_2|sum_2|sum_2|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(4));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_3|sum_1|sum_1|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_3|sum_1|sum_2|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(6));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_3|sum_2|sum_1|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(7));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \sum_1|sum_3|sum_2|sum_2|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(8));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cout~I\ : cycloneii_io
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
	datain => \sum_1|sum_3|sum_2|sum_2|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cout);
END structure;


