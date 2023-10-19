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

-- DATE "10/19/2023 14:37:02"

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

ENTITY 	bcd_2_7seg IS
    PORT (
	ivA : IN std_logic_vector(3 DOWNTO 0);
	ovX : OUT std_logic_vector(6 DOWNTO 0)
	);
END bcd_2_7seg;

-- Design Ports Information
-- ovX[0]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovX[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovX[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovX[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovX[4]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovX[5]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovX[6]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ivA[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[2]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[1]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[0]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bcd_2_7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ivA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ovX : std_logic_vector(6 DOWNTO 0);
SIGNAL \ovX~0_combout\ : std_logic;
SIGNAL \ovX~1_combout\ : std_logic;
SIGNAL \ovX~2_combout\ : std_logic;
SIGNAL \ovX~3_combout\ : std_logic;
SIGNAL \ovX~4_combout\ : std_logic;
SIGNAL \ovX~5_combout\ : std_logic;
SIGNAL \ovX~6_combout\ : std_logic;
SIGNAL \ivA~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_ovX~5_combout\ : std_logic;
SIGNAL \ALT_INV_ovX~2_combout\ : std_logic;

BEGIN

ww_ivA <= ivA;
ovX <= ww_ovX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ovX~5_combout\ <= NOT \ovX~5_combout\;
\ALT_INV_ovX~2_combout\ <= NOT \ovX~2_combout\;

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y19_N0
\ovX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovX~0_combout\ = (\ivA~combout\(1) & (((\ivA~combout\(3))))) # (!\ivA~combout\(1) & (\ivA~combout\(2) $ (((!\ivA~combout\(3) & \ivA~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivA~combout\(2),
	datac => \ivA~combout\(3),
	datad => \ivA~combout\(0),
	combout => \ovX~0_combout\);

-- Location: LCCOMB_X1_Y19_N2
\ovX~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovX~1_combout\ = (\ivA~combout\(2) & ((\ivA~combout\(3)) # (\ivA~combout\(1) $ (\ivA~combout\(0))))) # (!\ivA~combout\(2) & (\ivA~combout\(1) & (\ivA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivA~combout\(2),
	datac => \ivA~combout\(3),
	datad => \ivA~combout\(0),
	combout => \ovX~1_combout\);

-- Location: LCCOMB_X1_Y19_N4
\ovX~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovX~2_combout\ = (\ivA~combout\(2) & (((!\ivA~combout\(3))))) # (!\ivA~combout\(2) & (((!\ivA~combout\(3) & \ivA~combout\(0))) # (!\ivA~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivA~combout\(2),
	datac => \ivA~combout\(3),
	datad => \ivA~combout\(0),
	combout => \ovX~2_combout\);

-- Location: LCCOMB_X1_Y19_N22
\ovX~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovX~3_combout\ = (\ivA~combout\(1) & ((\ivA~combout\(3)) # ((\ivA~combout\(2) & \ivA~combout\(0))))) # (!\ivA~combout\(1) & (\ivA~combout\(2) $ (((!\ivA~combout\(3) & \ivA~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivA~combout\(2),
	datac => \ivA~combout\(3),
	datad => \ivA~combout\(0),
	combout => \ovX~3_combout\);

-- Location: LCCOMB_X1_Y19_N8
\ovX~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovX~4_combout\ = (\ivA~combout\(0)) # ((\ivA~combout\(1) & ((\ivA~combout\(3)))) # (!\ivA~combout\(1) & (\ivA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivA~combout\(2),
	datac => \ivA~combout\(3),
	datad => \ivA~combout\(0),
	combout => \ovX~4_combout\);

-- Location: LCCOMB_X1_Y19_N10
\ovX~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovX~5_combout\ = (\ivA~combout\(2) & (!\ivA~combout\(3) & ((!\ivA~combout\(0)) # (!\ivA~combout\(1))))) # (!\ivA~combout\(2) & (!\ivA~combout\(1) & ((\ivA~combout\(3)) # (!\ivA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivA~combout\(2),
	datac => \ivA~combout\(3),
	datad => \ivA~combout\(0),
	combout => \ovX~5_combout\);

-- Location: LCCOMB_X1_Y19_N12
\ovX~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovX~6_combout\ = (\ivA~combout\(1) & ((\ivA~combout\(3)) # ((\ivA~combout\(2) & \ivA~combout\(0))))) # (!\ivA~combout\(1) & (\ivA~combout\(2) $ ((!\ivA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivA~combout\(1),
	datab => \ivA~combout\(2),
	datac => \ivA~combout\(3),
	datad => \ivA~combout\(0),
	combout => \ovX~6_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovX[0]~I\ : cycloneii_io
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
	datain => \ovX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovX(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovX[1]~I\ : cycloneii_io
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
	datain => \ovX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovX(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovX[2]~I\ : cycloneii_io
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
	datain => \ALT_INV_ovX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovX(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovX[3]~I\ : cycloneii_io
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
	datain => \ovX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovX(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovX[4]~I\ : cycloneii_io
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
	datain => \ovX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovX(4));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovX[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_ovX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovX(5));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovX[6]~I\ : cycloneii_io
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
	datain => \ovX~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovX(6));
END structure;


