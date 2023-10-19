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

-- DATE "10/14/2023 15:51:15"

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

ENTITY 	restador_8bits IS
    PORT (
	ivA : IN std_logic_vector(7 DOWNTO 0);
	ivB : IN std_logic_vector(7 DOWNTO 0);
	ovS : OUT std_logic_vector(7 DOWNTO 0);
	oSign : OUT std_logic
	);
END restador_8bits;

-- Design Ports Information
-- ovS[0]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[3]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[4]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[5]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovS[7]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSign	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ivA[0]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[0]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[1]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[7]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[6]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[6]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[5]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[5]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[4]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[4]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[3]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[3]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[2]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[2]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[7]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF restador_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ivA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ivB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ovS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_oSign : std_logic;
SIGNAL \S1|sum_1|sum_2|sum_2|Cout~1_combout\ : std_logic;
SIGNAL \S1|sum_2|sum_2|sum_1|Cout~2_combout\ : std_logic;
SIGNAL \svX[4]~2_combout\ : std_logic;
SIGNAL \S1|sum_2|sum_1|sum_1|Cout~0_combout\ : std_logic;
SIGNAL \svX[0]~0_combout\ : std_logic;
SIGNAL \S1|sum_1|sum_1|sum_2|oS~0_combout\ : std_logic;
SIGNAL \S1|sum_2|sum_2|sum_1|Cout~1_combout\ : std_logic;
SIGNAL \S1|sum_2|sum_2|sum_1|Cout~3_combout\ : std_logic;
SIGNAL \S1|sum_2|sum_2|sum_1|Cout~0_combout\ : std_logic;
SIGNAL \S1|sum_2|sum_2|sum_2|Cout~0_combout\ : std_logic;
SIGNAL \S2|sum_1|sum_1|sum_2|oS~2_combout\ : std_logic;
SIGNAL \S1|sum_1|sum_1|sum_2|Cout~0_combout\ : std_logic;
SIGNAL \svX[2]~1_combout\ : std_logic;
SIGNAL \S2|sum_1|sum_2|sum_1|oS~combout\ : std_logic;
SIGNAL \S2|sum_1|sum_2|sum_1|Cout~0_combout\ : std_logic;
SIGNAL \S1|sum_1|sum_2|sum_1|Cout~0_combout\ : std_logic;
SIGNAL \S2|sum_1|sum_2|sum_2|oS~combout\ : std_logic;
SIGNAL \S1|sum_1|sum_2|sum_2|Cout~2_combout\ : std_logic;
SIGNAL \S1|sum_1|sum_2|sum_2|Cout~0_combout\ : std_logic;
SIGNAL \S2|sum_2|sum_1|sum_1|oS~combout\ : std_logic;
SIGNAL \S2|sum_2|sum_1|sum_2|oS~combout\ : std_logic;
SIGNAL \S1|sum_2|sum_1|sum_2|Cout~0_combout\ : std_logic;
SIGNAL \S2|sum_2|sum_1|sum_2|Cout~0_combout\ : std_logic;
SIGNAL \S2|sum_2|sum_2|sum_1|oS~combout\ : std_logic;
SIGNAL \S2|sum_2|sum_2|sum_2|oS~0_combout\ : std_logic;
SIGNAL \S2|sum_2|sum_2|sum_2|oS~combout\ : std_logic;
SIGNAL svX : std_logic_vector(7 DOWNTO 0);
SIGNAL \ivB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ivA~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \S2|sum_1|sum_1|sum_2|ALT_INV_oS~2_combout\ : std_logic;
SIGNAL \S2|sum_1|sum_2|sum_1|ALT_INV_oS~combout\ : std_logic;

BEGIN

ww_ivA <= ivA;
ww_ivB <= ivB;
ovS <= ww_ovS;
oSign <= ww_oSign;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\S2|sum_1|sum_1|sum_2|ALT_INV_oS~2_combout\ <= NOT \S2|sum_1|sum_1|sum_2|oS~2_combout\;
\S2|sum_1|sum_2|sum_1|ALT_INV_oS~combout\ <= NOT \S2|sum_1|sum_2|sum_1|oS~combout\;

-- Location: LCCOMB_X49_Y23_N30
\S1|sum_1|sum_2|sum_2|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_1|sum_2|sum_2|Cout~1_combout\ = (\ivA~combout\(3)) # (!\ivB~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivB~combout\(3),
	datad => \ivA~combout\(3),
	combout => \S1|sum_1|sum_2|sum_2|Cout~1_combout\);

-- Location: LCCOMB_X49_Y19_N12
\S1|sum_2|sum_2|sum_1|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_2|sum_2|sum_1|Cout~2_combout\ = (\ivA~combout\(4) & ((\S1|sum_1|sum_2|sum_2|Cout~0_combout\) # ((\S1|sum_1|sum_2|sum_2|Cout~2_combout\) # (!\ivB~combout\(4))))) # (!\ivA~combout\(4) & (!\ivB~combout\(4) & ((\S1|sum_1|sum_2|sum_2|Cout~0_combout\) # 
-- (\S1|sum_1|sum_2|sum_2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(4),
	datab => \S1|sum_1|sum_2|sum_2|Cout~0_combout\,
	datac => \ivB~combout\(4),
	datad => \S1|sum_1|sum_2|sum_2|Cout~2_combout\,
	combout => \S1|sum_2|sum_2|sum_1|Cout~2_combout\);

-- Location: LCCOMB_X49_Y19_N10
\svX[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \svX[4]~2_combout\ = \ivB~combout\(4) $ (\ivA~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivB~combout\(4),
	datac => \ivA~combout\(4),
	combout => \svX[4]~2_combout\);

-- Location: LCCOMB_X49_Y19_N6
\S1|sum_2|sum_1|sum_1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_2|sum_1|sum_1|Cout~0_combout\ = (\ivA~combout\(4) & ((\S1|sum_1|sum_2|sum_2|Cout~0_combout\) # ((\S1|sum_1|sum_2|sum_2|Cout~2_combout\) # (!\ivB~combout\(4))))) # (!\ivA~combout\(4) & (!\ivB~combout\(4) & ((\S1|sum_1|sum_2|sum_2|Cout~0_combout\) # 
-- (\S1|sum_1|sum_2|sum_2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(4),
	datab => \S1|sum_1|sum_2|sum_2|Cout~0_combout\,
	datac => \ivB~combout\(4),
	datad => \S1|sum_1|sum_2|sum_2|Cout~2_combout\,
	combout => \S1|sum_2|sum_1|sum_1|Cout~0_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y23_N16
\svX[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \svX[0]~0_combout\ = \ivB~combout\(0) $ (\ivA~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivB~combout\(0),
	datad => \ivA~combout\(0),
	combout => \svX[0]~0_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y23_N10
\S1|sum_1|sum_1|sum_2|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_1|sum_1|sum_2|oS~0_combout\ = \ivA~combout\(1) $ (\ivB~combout\(1) $ (((\ivA~combout\(0)) # (!\ivB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivB~combout\(0),
	datac => \ivB~combout\(1),
	datad => \ivA~combout\(0),
	combout => \S1|sum_1|sum_1|sum_2|oS~0_combout\);

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y19_N26
\S1|sum_2|sum_2|sum_1|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_2|sum_2|sum_1|Cout~1_combout\ = (\ivB~combout\(6) & !\ivA~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivB~combout\(6),
	datad => \ivA~combout\(6),
	combout => \S1|sum_2|sum_2|sum_1|Cout~1_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y19_N30
\S1|sum_2|sum_2|sum_1|Cout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_2|sum_2|sum_1|Cout~3_combout\ = (!\S1|sum_2|sum_2|sum_1|Cout~1_combout\ & ((\S1|sum_2|sum_2|sum_1|Cout~2_combout\ & ((\ivA~combout\(5)) # (!\ivB~combout\(5)))) # (!\S1|sum_2|sum_2|sum_1|Cout~2_combout\ & (\ivA~combout\(5) & !\ivB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1|sum_2|sum_2|sum_1|Cout~2_combout\,
	datab => \S1|sum_2|sum_2|sum_1|Cout~1_combout\,
	datac => \ivA~combout\(5),
	datad => \ivB~combout\(5),
	combout => \S1|sum_2|sum_2|sum_1|Cout~3_combout\);

-- Location: LCCOMB_X49_Y19_N8
\S1|sum_2|sum_2|sum_1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_2|sum_2|sum_1|Cout~0_combout\ = (!\ivB~combout\(6) & \ivA~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivB~combout\(6),
	datad => \ivA~combout\(6),
	combout => \S1|sum_2|sum_2|sum_1|Cout~0_combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y19_N24
\S1|sum_2|sum_2|sum_2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_2|sum_2|sum_2|Cout~0_combout\ = (\ivA~combout\(7) & ((\S1|sum_2|sum_2|sum_1|Cout~3_combout\) # ((\S1|sum_2|sum_2|sum_1|Cout~0_combout\) # (!\ivB~combout\(7))))) # (!\ivA~combout\(7) & (!\ivB~combout\(7) & ((\S1|sum_2|sum_2|sum_1|Cout~3_combout\) # 
-- (\S1|sum_2|sum_2|sum_1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(7),
	datab => \S1|sum_2|sum_2|sum_1|Cout~3_combout\,
	datac => \S1|sum_2|sum_2|sum_1|Cout~0_combout\,
	datad => \ivB~combout\(7),
	combout => \S1|sum_2|sum_2|sum_2|Cout~0_combout\);

-- Location: LCCOMB_X49_Y23_N6
\S2|sum_1|sum_1|sum_2|oS~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_1|sum_1|sum_2|oS~2_combout\ = \S1|sum_1|sum_1|sum_2|oS~0_combout\ $ (((!\S1|sum_2|sum_2|sum_2|Cout~0_combout\ & (\ivB~combout\(0) $ (\ivA~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1|sum_1|sum_1|sum_2|oS~0_combout\,
	datab => \ivB~combout\(0),
	datac => \ivA~combout\(0),
	datad => \S1|sum_2|sum_2|sum_2|Cout~0_combout\,
	combout => \S2|sum_1|sum_1|sum_2|oS~2_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y23_N8
\S1|sum_1|sum_1|sum_2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_1|sum_1|sum_2|Cout~0_combout\ = (\ivA~combout\(1) & (((\ivA~combout\(0)) # (!\ivB~combout\(1))) # (!\ivB~combout\(0)))) # (!\ivA~combout\(1) & (!\ivB~combout\(1) & ((\ivA~combout\(0)) # (!\ivB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivB~combout\(0),
	datac => \ivB~combout\(1),
	datad => \ivA~combout\(0),
	combout => \S1|sum_1|sum_1|sum_2|Cout~0_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y23_N4
\svX[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \svX[2]~1_combout\ = \ivB~combout\(2) $ (\S1|sum_1|sum_1|sum_2|Cout~0_combout\ $ (\ivA~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivB~combout\(2),
	datac => \S1|sum_1|sum_1|sum_2|Cout~0_combout\,
	datad => \ivA~combout\(2),
	combout => \svX[2]~1_combout\);

-- Location: LCCOMB_X49_Y23_N14
\S2|sum_1|sum_2|sum_1|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_1|sum_2|sum_1|oS~combout\ = \svX[2]~1_combout\ $ (((!\S1|sum_2|sum_2|sum_2|Cout~0_combout\ & ((\svX[0]~0_combout\) # (!\S1|sum_1|sum_1|sum_2|oS~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1|sum_1|sum_1|sum_2|oS~0_combout\,
	datab => \svX[2]~1_combout\,
	datac => \svX[0]~0_combout\,
	datad => \S1|sum_2|sum_2|sum_2|Cout~0_combout\,
	combout => \S2|sum_1|sum_2|sum_1|oS~combout\);

-- Location: LCCOMB_X49_Y23_N24
\S2|sum_1|sum_2|sum_1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_1|sum_2|sum_1|Cout~0_combout\ = (\S1|sum_1|sum_1|sum_2|oS~0_combout\ & (\svX[2]~1_combout\ & (!\svX[0]~0_combout\ & !\S1|sum_2|sum_2|sum_2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1|sum_1|sum_1|sum_2|oS~0_combout\,
	datab => \svX[2]~1_combout\,
	datac => \svX[0]~0_combout\,
	datad => \S1|sum_2|sum_2|sum_2|Cout~0_combout\,
	combout => \S2|sum_1|sum_2|sum_1|Cout~0_combout\);

-- Location: LCCOMB_X49_Y23_N2
\S1|sum_1|sum_2|sum_1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_1|sum_2|sum_1|Cout~0_combout\ = (\ivB~combout\(2) & (\S1|sum_1|sum_1|sum_2|Cout~0_combout\ & \ivA~combout\(2))) # (!\ivB~combout\(2) & ((\S1|sum_1|sum_1|sum_2|Cout~0_combout\) # (\ivA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ivB~combout\(2),
	datac => \S1|sum_1|sum_1|sum_2|Cout~0_combout\,
	datad => \ivA~combout\(2),
	combout => \S1|sum_1|sum_2|sum_1|Cout~0_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y23_N28
\svX[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- svX(3) = \ivA~combout\(3) $ (\S1|sum_1|sum_2|sum_1|Cout~0_combout\ $ (\ivB~combout\(3) $ (\S1|sum_2|sum_2|sum_2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(3),
	datab => \S1|sum_1|sum_2|sum_1|Cout~0_combout\,
	datac => \ivB~combout\(3),
	datad => \S1|sum_2|sum_2|sum_2|Cout~0_combout\,
	combout => svX(3));

-- Location: LCCOMB_X49_Y23_N22
\S2|sum_1|sum_2|sum_2|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_1|sum_2|sum_2|oS~combout\ = \S2|sum_1|sum_2|sum_1|Cout~0_combout\ $ (svX(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S2|sum_1|sum_2|sum_1|Cout~0_combout\,
	datad => svX(3),
	combout => \S2|sum_1|sum_2|sum_2|oS~combout\);

-- Location: LCCOMB_X49_Y23_N18
\S1|sum_1|sum_2|sum_2|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_1|sum_2|sum_2|Cout~2_combout\ = (\S1|sum_1|sum_2|sum_2|Cout~1_combout\ & ((\S1|sum_1|sum_1|sum_2|Cout~0_combout\ & ((\ivA~combout\(2)) # (!\ivB~combout\(2)))) # (!\S1|sum_1|sum_1|sum_2|Cout~0_combout\ & (!\ivB~combout\(2) & \ivA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1|sum_1|sum_2|sum_2|Cout~1_combout\,
	datab => \S1|sum_1|sum_1|sum_2|Cout~0_combout\,
	datac => \ivB~combout\(2),
	datad => \ivA~combout\(2),
	combout => \S1|sum_1|sum_2|sum_2|Cout~2_combout\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X49_Y23_N20
\S1|sum_1|sum_2|sum_2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_1|sum_2|sum_2|Cout~0_combout\ = (!\ivB~combout\(3) & \ivA~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ivB~combout\(3),
	datad => \ivA~combout\(3),
	combout => \S1|sum_1|sum_2|sum_2|Cout~0_combout\);

-- Location: LCCOMB_X49_Y19_N4
\svX[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- svX(4) = \svX[4]~2_combout\ $ (\S1|sum_2|sum_2|sum_2|Cout~0_combout\ $ (((\S1|sum_1|sum_2|sum_2|Cout~2_combout\) # (\S1|sum_1|sum_2|sum_2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svX[4]~2_combout\,
	datab => \S1|sum_2|sum_2|sum_2|Cout~0_combout\,
	datac => \S1|sum_1|sum_2|sum_2|Cout~2_combout\,
	datad => \S1|sum_1|sum_2|sum_2|Cout~0_combout\,
	combout => svX(4));

-- Location: LCCOMB_X49_Y23_N0
\S2|sum_2|sum_1|sum_1|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_2|sum_1|sum_1|oS~combout\ = svX(4) $ (((\S2|sum_1|sum_2|sum_1|Cout~0_combout\ & svX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => svX(4),
	datac => \S2|sum_1|sum_2|sum_1|Cout~0_combout\,
	datad => svX(3),
	combout => \S2|sum_2|sum_1|sum_1|oS~combout\);

-- Location: LCCOMB_X49_Y19_N0
\svX[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- svX(5) = \S1|sum_2|sum_1|sum_1|Cout~0_combout\ $ (\ivA~combout\(5) $ (\S1|sum_2|sum_2|sum_2|Cout~0_combout\ $ (\ivB~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1|sum_2|sum_1|sum_1|Cout~0_combout\,
	datab => \ivA~combout\(5),
	datac => \S1|sum_2|sum_2|sum_2|Cout~0_combout\,
	datad => \ivB~combout\(5),
	combout => svX(5));

-- Location: LCCOMB_X49_Y23_N26
\S2|sum_2|sum_1|sum_2|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_2|sum_1|sum_2|oS~combout\ = svX(5) $ (((svX(3) & (\S2|sum_1|sum_2|sum_1|Cout~0_combout\ & svX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => svX(5),
	datab => svX(3),
	datac => \S2|sum_1|sum_2|sum_1|Cout~0_combout\,
	datad => svX(4),
	combout => \S2|sum_2|sum_1|sum_2|oS~combout\);

-- Location: LCCOMB_X49_Y19_N18
\S1|sum_2|sum_1|sum_2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S1|sum_2|sum_1|sum_2|Cout~0_combout\ = (\S1|sum_2|sum_1|sum_1|Cout~0_combout\ & ((\ivA~combout\(5)) # (!\ivB~combout\(5)))) # (!\S1|sum_2|sum_1|sum_1|Cout~0_combout\ & (\ivA~combout\(5) & !\ivB~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1|sum_2|sum_1|sum_1|Cout~0_combout\,
	datac => \ivA~combout\(5),
	datad => \ivB~combout\(5),
	combout => \S1|sum_2|sum_1|sum_2|Cout~0_combout\);

-- Location: LCCOMB_X49_Y19_N28
\svX[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- svX(6) = \S1|sum_2|sum_2|sum_2|Cout~0_combout\ $ (\S1|sum_2|sum_1|sum_2|Cout~0_combout\ $ (\ivB~combout\(6) $ (\ivA~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1|sum_2|sum_2|sum_2|Cout~0_combout\,
	datab => \S1|sum_2|sum_1|sum_2|Cout~0_combout\,
	datac => \ivB~combout\(6),
	datad => \ivA~combout\(6),
	combout => svX(6));

-- Location: LCCOMB_X49_Y23_N12
\S2|sum_2|sum_1|sum_2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_2|sum_1|sum_2|Cout~0_combout\ = (svX(5) & (svX(3) & (\S2|sum_1|sum_2|sum_1|Cout~0_combout\ & svX(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => svX(5),
	datab => svX(3),
	datac => \S2|sum_1|sum_2|sum_1|Cout~0_combout\,
	datad => svX(4),
	combout => \S2|sum_2|sum_1|sum_2|Cout~0_combout\);

-- Location: LCCOMB_X49_Y19_N22
\S2|sum_2|sum_2|sum_1|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_2|sum_2|sum_1|oS~combout\ = svX(6) $ (\S2|sum_2|sum_1|sum_2|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => svX(6),
	datad => \S2|sum_2|sum_1|sum_2|Cout~0_combout\,
	combout => \S2|sum_2|sum_2|sum_1|oS~combout\);

-- Location: LCCOMB_X49_Y19_N16
\S2|sum_2|sum_2|sum_2|oS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_2|sum_2|sum_2|oS~0_combout\ = (\ivA~combout\(7) & (!\ivB~combout\(7) & ((\S1|sum_2|sum_2|sum_1|Cout~3_combout\) # (\S1|sum_2|sum_2|sum_1|Cout~0_combout\)))) # (!\ivA~combout\(7) & (!\S1|sum_2|sum_2|sum_1|Cout~3_combout\ & 
-- (!\S1|sum_2|sum_2|sum_1|Cout~0_combout\ & \ivB~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(7),
	datab => \S1|sum_2|sum_2|sum_1|Cout~3_combout\,
	datac => \S1|sum_2|sum_2|sum_1|Cout~0_combout\,
	datad => \ivB~combout\(7),
	combout => \S2|sum_2|sum_2|sum_2|oS~0_combout\);

-- Location: LCCOMB_X49_Y19_N2
\S2|sum_2|sum_2|sum_2|oS\ : cycloneii_lcell_comb
-- Equation(s):
-- \S2|sum_2|sum_2|sum_2|oS~combout\ = \S2|sum_2|sum_2|sum_2|oS~0_combout\ $ (((svX(6) & \S2|sum_2|sum_1|sum_2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => svX(6),
	datac => \S2|sum_2|sum_2|sum_2|oS~0_combout\,
	datad => \S2|sum_2|sum_1|sum_2|Cout~0_combout\,
	combout => \S2|sum_2|sum_2|sum_2|oS~combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \svX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(0));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \S2|sum_1|sum_1|sum_2|ALT_INV_oS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \S2|sum_1|sum_2|sum_1|ALT_INV_oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(2));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \S2|sum_1|sum_2|sum_2|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(3));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \S2|sum_2|sum_1|sum_1|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(4));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \S2|sum_2|sum_1|sum_2|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \S2|sum_2|sum_2|sum_1|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(6));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \S2|sum_2|sum_2|sum_2|oS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovS(7));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSign~I\ : cycloneii_io
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
	datain => \S1|sum_2|sum_2|sum_2|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSign);
END structure;


