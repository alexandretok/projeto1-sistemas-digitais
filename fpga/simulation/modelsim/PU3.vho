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

-- DATE "06/09/2017 16:20:22"

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

ENTITY 	contador_180 IS
    PORT (
	SYS_EN : OUT std_logic;
	CLK_1K : IN std_logic;
	IN_BOTAO : IN std_logic;
	CT_EN : OUT std_logic;
	OUT_COMP : OUT std_logic;
	FF_CLK : OUT std_logic;
	TEMPO_EM_SEG : OUT std_logic_vector(17 DOWNTO 0)
	);
END contador_180;

-- Design Ports Information
-- SYS_EN	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CT_EN	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_COMP	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FF_CLK	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[17]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[16]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[15]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[14]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[13]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[12]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[11]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[10]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[9]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[8]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[7]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[6]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[5]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[4]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[3]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[2]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[1]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TEMPO_EM_SEG[0]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IN_BOTAO	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_1K	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador_180 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SYS_EN : std_logic;
SIGNAL ww_CLK_1K : std_logic;
SIGNAL ww_IN_BOTAO : std_logic;
SIGNAL ww_CT_EN : std_logic;
SIGNAL ww_OUT_COMP : std_logic;
SIGNAL ww_FF_CLK : std_logic;
SIGNAL ww_TEMPO_EM_SEG : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK_1K~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \CLK_1K~clkctrl_outclk\ : std_logic;
SIGNAL \IN_BOTAO~combout\ : std_logic;
SIGNAL \CLK_1K~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst221~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~regout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);

BEGIN

SYS_EN <= ww_SYS_EN;
ww_CLK_1K <= CLK_1K;
ww_IN_BOTAO <= IN_BOTAO;
CT_EN <= ww_CT_EN;
OUT_COMP <= ww_OUT_COMP;
FF_CLK <= ww_FF_CLK;
TEMPO_EM_SEG <= ww_TEMPO_EM_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_1K~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_1K~combout\);

-- Location: LCCOMB_X64_Y19_N20
\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(10) & 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst7|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(12),
	combout => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: CLKCTRL_G6
\CLK_1K~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_1K~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_1K~clkctrl_outclk\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_BOTAO~I\ : cycloneii_io
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
	padio => ww_IN_BOTAO,
	combout => \IN_BOTAO~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_1K~I\ : cycloneii_io
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
	padio => ww_CLK_1K,
	combout => \CLK_1K~combout\);

-- Location: LCCOMB_X64_Y20_N14
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst7|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X64_Y20_N12
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X64_Y20_N18
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X64_Y20_N20
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X64_Y20_N22
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X63_Y19_N18
inst221 : cycloneii_lcell_comb
-- Equation(s):
-- \inst221~combout\ = (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst11~regout\ & \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst11~regout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	combout => \inst221~combout\);

-- Location: LCFF_X64_Y20_N23
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X64_Y20_N24
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X64_Y20_N26
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X64_Y20_N27
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X64_Y20_N28
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X64_Y20_N29
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X64_Y20_N30
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X64_Y20_N31
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X64_Y19_N0
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X64_Y19_N1
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X64_Y19_N2
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X64_Y19_N3
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X64_Y19_N4
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X64_Y19_N5
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X64_Y19_N6
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X64_Y19_N8
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X64_Y19_N9
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X64_Y19_N10
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X64_Y19_N12
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X64_Y19_N14
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X64_Y19_N15
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X64_Y19_N16
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCFF_X64_Y19_N17
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X64_Y19_N11
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X64_Y19_N26
\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & !\inst7|LPM_COUNTER_component|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datac => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCFF_X64_Y20_N25
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X64_Y20_N6
\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ = (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- !\inst7|LPM_COUNTER_component|auto_generated|safe_q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X64_Y20_N8
\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ = (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(6) & 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(7) & !\inst7|LPM_COUNTER_component|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datac => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(9),
	combout => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X64_Y19_N28
\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ & (\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ & 
-- (\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ & \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X64_Y20_N16
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X64_Y20_N17
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X64_Y20_N4
\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X64_Y19_N18
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\ = !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\);

-- Location: LCCOMB_X64_Y19_N24
\inst7|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\) # ((\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ & 
-- \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCFF_X64_Y20_N15
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCFF_X64_Y20_N19
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X64_Y19_N22
\inst8|LPM_COMPARE_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(2)) # (!\inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \inst7|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	combout => \inst8|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X64_Y19_N30
inst20 : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~combout\ = LCELL((\CLK_1K~combout\ & ((\inst8|LPM_COMPARE_component|auto_generated|op_1~0_combout\) # ((!\inst11~regout\ & !\IN_BOTAO~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~regout\,
	datab => \IN_BOTAO~combout\,
	datac => \CLK_1K~combout\,
	datad => \inst8|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X63_Y19_N12
\inst11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = !\IN_BOTAO~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IN_BOTAO~combout\,
	combout => \inst11~0_combout\);

-- Location: LCFF_X63_Y19_N13
inst11 : cycloneii_lcell_ff
PORT MAP (
	clk => \inst20~combout\,
	datain => \inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11~regout\);

-- Location: LCFF_X64_Y19_N13
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X64_Y19_N7
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X64_Y20_N21
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~combout\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SYS_EN~I\ : cycloneii_io
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
	datain => \inst11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SYS_EN);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CT_EN~I\ : cycloneii_io
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
	datain => \inst221~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CT_EN);

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_COMP~I\ : cycloneii_io
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
	datain => \inst8|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_COMP);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FF_CLK~I\ : cycloneii_io
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
	datain => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FF_CLK);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[17]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(17));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[16]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(16));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[15]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(15));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[14]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(14));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[13]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(13));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[12]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(12));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[11]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(11));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[10]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(10));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[9]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(9));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[8]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(8));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[7]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(7));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[6]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(6));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[5]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(5));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[4]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(4));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[3]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(3));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[2]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(2));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[1]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(1));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TEMPO_EM_SEG[0]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TEMPO_EM_SEG(0));
END structure;


