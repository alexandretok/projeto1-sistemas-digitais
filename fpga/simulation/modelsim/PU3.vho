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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "06/11/2017 01:32:53"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	seletor_cuva IS
    PORT (
	duty_cycle : OUT std_logic_vector(6 DOWNTO 0);
	TEMPO_SEG : IN std_logic_vector(7 DOWNTO 0);
	\SELECT\ : OUT std_logic_vector(2 DOWNTO 0)
	);
END seletor_cuva;

-- Design Ports Information
-- duty_cycle[6]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- duty_cycle[5]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- duty_cycle[4]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- duty_cycle[3]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- duty_cycle[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- duty_cycle[1]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- duty_cycle[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SELECT[2]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SELECT[1]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SELECT[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_SEG[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMPO_SEG[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMPO_SEG[6]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMPO_SEG[3]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMPO_SEG[5]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMPO_SEG[4]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMPO_SEG[2]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TEMPO_SEG[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF seletor_cuva IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_duty_cycle : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_TEMPO_SEG : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_SELECT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst31|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst3~3_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst31|LPM_COMPARE_component|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;
SIGNAL \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ : std_logic;
SIGNAL \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ : std_logic;
SIGNAL \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \TEMPO_SEG~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst48|LPM_MUX_component|auto_generated|ALT_INV_muxlut_result1w~1_combout\ : std_logic;

BEGIN

duty_cycle <= ww_duty_cycle;
ww_TEMPO_SEG <= TEMPO_SEG;
\SELECT\ <= \ww_SELECT\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst48|LPM_MUX_component|auto_generated|ALT_INV_muxlut_result1w~1_combout\ <= NOT \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\;

-- Location: LCCOMB_X64_Y11_N12
\inst31|LPM_COMPARE_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = (((!\TEMPO_SEG~combout\(1)) # (!\TEMPO_SEG~combout\(4))) # (!\TEMPO_SEG~combout\(2))) # (!\TEMPO_SEG~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMPO_SEG~combout\(3),
	datab => \TEMPO_SEG~combout\(2),
	datac => \TEMPO_SEG~combout\(4),
	datad => \TEMPO_SEG~combout\(1),
	combout => \inst31|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X64_Y11_N24
\inst3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3~3_combout\ = (!\TEMPO_SEG~combout\(7) & \TEMPO_SEG~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TEMPO_SEG~combout\(7),
	datac => \TEMPO_SEG~combout\(6),
	combout => \inst3~3_combout\);

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMPO_SEG[2]~I\ : cycloneii_io
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
	padio => ww_TEMPO_SEG(2),
	combout => \TEMPO_SEG~combout\(2));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMPO_SEG[4]~I\ : cycloneii_io
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
	padio => ww_TEMPO_SEG(4),
	combout => \TEMPO_SEG~combout\(4));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMPO_SEG[5]~I\ : cycloneii_io
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
	padio => ww_TEMPO_SEG(5),
	combout => \TEMPO_SEG~combout\(5));

-- Location: LCCOMB_X64_Y11_N16
\inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (((!\TEMPO_SEG~combout\(3) & !\TEMPO_SEG~combout\(2))) # (!\TEMPO_SEG~combout\(5))) # (!\TEMPO_SEG~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMPO_SEG~combout\(3),
	datab => \TEMPO_SEG~combout\(2),
	datac => \TEMPO_SEG~combout\(4),
	datad => \TEMPO_SEG~combout\(5),
	combout => \inst3~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMPO_SEG[7]~I\ : cycloneii_io
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
	padio => ww_TEMPO_SEG(7),
	combout => \TEMPO_SEG~combout\(7));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMPO_SEG[6]~I\ : cycloneii_io
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
	padio => ww_TEMPO_SEG(6),
	combout => \TEMPO_SEG~combout\(6));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMPO_SEG[3]~I\ : cycloneii_io
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
	padio => ww_TEMPO_SEG(3),
	combout => \TEMPO_SEG~combout\(3));

-- Location: LCCOMB_X64_Y11_N2
\inst3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\inst3~0_combout\ & (\TEMPO_SEG~combout\(7) & (!\TEMPO_SEG~combout\(6)))) # (!\inst3~0_combout\ & (!\TEMPO_SEG~combout\(7) & (\TEMPO_SEG~combout\(6) & \TEMPO_SEG~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~0_combout\,
	datab => \TEMPO_SEG~combout\(7),
	datac => \TEMPO_SEG~combout\(6),
	datad => \TEMPO_SEG~combout\(3),
	combout => \inst3~1_combout\);

-- Location: LCCOMB_X64_Y11_N22
\inst31|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|LPM_COMPARE_component|auto_generated|op_1~1_combout\ = (\inst31|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & (!\TEMPO_SEG~combout\(6) & !\TEMPO_SEG~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datac => \TEMPO_SEG~combout\(6),
	datad => \TEMPO_SEG~combout\(5),
	combout => \inst31|LPM_COMPARE_component|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X64_Y11_N20
\inst34|LPM_COMPARE_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = (\TEMPO_SEG~combout\(3) & (\TEMPO_SEG~combout\(6) & (\TEMPO_SEG~combout\(4) & \TEMPO_SEG~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMPO_SEG~combout\(3),
	datab => \TEMPO_SEG~combout\(6),
	datac => \TEMPO_SEG~combout\(4),
	datad => \TEMPO_SEG~combout\(5),
	combout => \inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X64_Y11_N0
\inst3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = (\TEMPO_SEG~combout\(3) & (\TEMPO_SEG~combout\(4) & \TEMPO_SEG~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMPO_SEG~combout\(3),
	datac => \TEMPO_SEG~combout\(4),
	datad => \TEMPO_SEG~combout\(5),
	combout => \inst3~2_combout\);

-- Location: LCCOMB_X64_Y11_N26
\inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ = (!\TEMPO_SEG~combout\(6) & ((!\TEMPO_SEG~combout\(2)) # (!\inst3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3~2_combout\,
	datac => \TEMPO_SEG~combout\(6),
	datad => \TEMPO_SEG~combout\(2),
	combout => \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\);

-- Location: LCCOMB_X64_Y11_N30
\inst48|LPM_MUX_component|auto_generated|muxlut_result1w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ = (\TEMPO_SEG~combout\(7)) # ((\inst31|LPM_COMPARE_component|auto_generated|op_1~1_combout\) # ((\inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\) # 
-- (\inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMPO_SEG~combout\(7),
	datab => \inst31|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	datac => \inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datad => \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\,
	combout => \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\);

-- Location: LCCOMB_X64_Y11_N6
\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (!\TEMPO_SEG~combout\(7) & (((\TEMPO_SEG~combout\(6)) # (\TEMPO_SEG~combout\(5))) # (!\inst31|LPM_COMPARE_component|auto_generated|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datab => \TEMPO_SEG~combout\(7),
	datac => \TEMPO_SEG~combout\(6),
	datad => \TEMPO_SEG~combout\(5),
	combout => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMPO_SEG[1]~I\ : cycloneii_io
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
	padio => ww_TEMPO_SEG(1),
	combout => \TEMPO_SEG~combout\(1));

-- Location: LCCOMB_X64_Y11_N10
\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\TEMPO_SEG~combout\(3) & (\TEMPO_SEG~combout\(4) & ((\TEMPO_SEG~combout\(2)) # (\TEMPO_SEG~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMPO_SEG~combout\(3),
	datab => \TEMPO_SEG~combout\(2),
	datac => \TEMPO_SEG~combout\(4),
	datad => \TEMPO_SEG~combout\(1),
	combout => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X64_Y11_N28
\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst3~3_combout\ & (!\inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & ((\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # 
-- (\TEMPO_SEG~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~3_combout\,
	datab => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datac => \inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datad => \TEMPO_SEG~combout\(5),
	combout => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X64_Y11_N8
\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (!\inst3~1_combout\ & ((\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ & 
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datab => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\,
	datad => \inst3~1_combout\,
	combout => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: LCCOMB_X64_Y11_N18
\inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (!\TEMPO_SEG~combout\(7) & (!\inst31|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & (!\inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & !\inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEMPO_SEG~combout\(7),
	datab => \inst31|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	datac => \inst34|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datad => \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X64_Y11_N4
\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = (\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst48|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ & 
-- \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datab => \inst48|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\,
	datad => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	combout => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\duty_cycle[6]~I\ : cycloneii_io
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
	padio => ww_duty_cycle(6));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\duty_cycle[5]~I\ : cycloneii_io
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
	padio => ww_duty_cycle(5));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\duty_cycle[4]~I\ : cycloneii_io
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
	padio => ww_duty_cycle(4));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\duty_cycle[3]~I\ : cycloneii_io
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
	padio => ww_duty_cycle(3));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\duty_cycle[2]~I\ : cycloneii_io
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
	datain => \inst3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_duty_cycle(2));

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\duty_cycle[1]~I\ : cycloneii_io
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
	datain => \inst48|LPM_MUX_component|auto_generated|ALT_INV_muxlut_result1w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_duty_cycle(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\duty_cycle[0]~I\ : cycloneii_io
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
	datain => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_duty_cycle(0));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SELECT[2]~I\ : cycloneii_io
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
	datain => \inst3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_SELECT\(2));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SELECT[1]~I\ : cycloneii_io
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
	datain => \inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_SELECT\(1));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SELECT[0]~I\ : cycloneii_io
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
	datain => \inst48|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_SELECT\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TEMPO_SEG[0]~I\ : cycloneii_io
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
	padio => ww_TEMPO_SEG(0));
END structure;


