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

-- DATE "10/14/2023 12:41:57"

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

ENTITY 	comparador_xbits IS
    PORT (
	ivA : IN std_logic_vector(3 DOWNTO 0);
	ivB : IN std_logic_vector(3 DOWNTO 0);
	AGB : OUT std_logic;
	AEB : OUT std_logic;
	ALB : OUT std_logic
	);
END comparador_xbits;

-- Design Ports Information
-- AGB	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AEB	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALB	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ivA[3]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[2]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivA[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ivB[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF comparador_xbits IS
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
SIGNAL ww_ivB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AGB : std_logic;
SIGNAL ww_AEB : std_logic;
SIGNAL ww_ALB : std_logic;
SIGNAL \AGB~1_combout\ : std_logic;
SIGNAL \AGB~0_combout\ : std_logic;
SIGNAL \AGB~2_combout\ : std_logic;
SIGNAL \AGB~3_combout\ : std_logic;
SIGNAL \AEB~0_combout\ : std_logic;
SIGNAL \AEB~1_combout\ : std_logic;
SIGNAL \ALB~0_combout\ : std_logic;
SIGNAL \ALB~1_combout\ : std_logic;
SIGNAL \ALB~2_combout\ : std_logic;
SIGNAL \ivB~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ivA~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_AEB~1_combout\ : std_logic;

BEGIN

ww_ivA <= ivA;
ww_ivB <= ivB;
AGB <= ww_AGB;
AEB <= ww_AEB;
ALB <= ww_ALB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_AEB~1_combout\ <= NOT \AEB~1_combout\;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y26_N10
\AGB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \AGB~1_combout\ = (\ivB~combout\(1) & (!\ivB~combout\(0) & (\ivA~combout\(1) & \ivA~combout\(0)))) # (!\ivB~combout\(1) & ((\ivA~combout\(1)) # ((!\ivB~combout\(0) & \ivA~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(0),
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(1),
	datad => \ivA~combout\(0),
	combout => \AGB~1_combout\);

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y26_N0
\AGB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AGB~0_combout\ = (\ivB~combout\(3) & (\ivA~combout\(3) & (!\ivB~combout\(2) & \ivA~combout\(2)))) # (!\ivB~combout\(3) & ((\ivA~combout\(3)) # ((!\ivB~combout\(2) & \ivA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(3),
	datab => \ivA~combout\(3),
	datac => \ivB~combout\(2),
	datad => \ivA~combout\(2),
	combout => \AGB~0_combout\);

-- Location: LCCOMB_X26_Y26_N12
\AGB~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \AGB~2_combout\ = (\ivB~combout\(3) & (\ivA~combout\(3) & (\ivB~combout\(2) $ (!\ivA~combout\(2))))) # (!\ivB~combout\(3) & (!\ivA~combout\(3) & (\ivB~combout\(2) $ (!\ivA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(3),
	datab => \ivA~combout\(3),
	datac => \ivB~combout\(2),
	datad => \ivA~combout\(2),
	combout => \AGB~2_combout\);

-- Location: LCCOMB_X26_Y26_N22
\AGB~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \AGB~3_combout\ = (\AGB~0_combout\) # ((\AGB~1_combout\ & \AGB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AGB~1_combout\,
	datab => \AGB~0_combout\,
	datad => \AGB~2_combout\,
	combout => \AGB~3_combout\);

-- Location: LCCOMB_X26_Y26_N8
\AEB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AEB~0_combout\ = (\ivB~combout\(0) & ((\ivB~combout\(1) $ (\ivA~combout\(1))) # (!\ivA~combout\(0)))) # (!\ivB~combout\(0) & ((\ivA~combout\(0)) # (\ivB~combout\(1) $ (\ivA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(0),
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(1),
	datad => \ivA~combout\(0),
	combout => \AEB~0_combout\);

-- Location: LCCOMB_X26_Y26_N2
\AEB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \AEB~1_combout\ = (\AEB~0_combout\) # (!\AGB~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AEB~0_combout\,
	datad => \AGB~2_combout\,
	combout => \AEB~1_combout\);

-- Location: LCCOMB_X26_Y26_N28
\ALB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALB~0_combout\ = (\ivB~combout\(3) & (((\ivB~combout\(2) & !\ivA~combout\(2))) # (!\ivA~combout\(3)))) # (!\ivB~combout\(3) & (!\ivA~combout\(3) & (\ivB~combout\(2) & !\ivA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(3),
	datab => \ivA~combout\(3),
	datac => \ivB~combout\(2),
	datad => \ivA~combout\(2),
	combout => \ALB~0_combout\);

-- Location: LCCOMB_X26_Y26_N30
\ALB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALB~1_combout\ = (\ivB~combout\(1) & (((\ivB~combout\(0) & !\ivA~combout\(0))) # (!\ivA~combout\(1)))) # (!\ivB~combout\(1) & (\ivB~combout\(0) & (!\ivA~combout\(1) & !\ivA~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ivB~combout\(0),
	datab => \ivB~combout\(1),
	datac => \ivA~combout\(1),
	datad => \ivA~combout\(0),
	combout => \ALB~1_combout\);

-- Location: LCCOMB_X26_Y26_N24
\ALB~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALB~2_combout\ = (\ALB~0_combout\) # ((\AGB~2_combout\ & \ALB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AGB~2_combout\,
	datab => \ALB~0_combout\,
	datad => \ALB~1_combout\,
	combout => \ALB~2_combout\);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AGB~I\ : cycloneii_io
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
	datain => \AGB~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AGB);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AEB~I\ : cycloneii_io
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
	datain => \ALT_INV_AEB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AEB);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALB~I\ : cycloneii_io
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
	datain => \ALB~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALB);
END structure;


