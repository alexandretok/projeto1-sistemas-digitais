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

-- DATE "06/10/2017 17:06:02"

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

ENTITY 	pwm IS
    PORT (
	OUT_PWM : OUT std_logic;
	CLK_1K : IN std_logic;
	DUTY_CYCLE : IN std_logic_vector(6 DOWNTO 0);
	CONTADOR : OUT std_logic_vector(6 DOWNTO 0)
	);
END pwm;

-- Design Ports Information
-- OUT_PWM	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTADOR[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTADOR[5]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTADOR[4]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTADOR[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTADOR[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTADOR[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTADOR[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DUTY_CYCLE[6]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY_CYCLE[5]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY_CYCLE[4]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY_CYCLE[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY_CYCLE[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY_CYCLE[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY_CYCLE[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_1K	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OUT_PWM : std_logic;
SIGNAL ww_CLK_1K : std_logic;
SIGNAL ww_DUTY_CYCLE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CONTADOR : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK_1K~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_1K~combout\ : std_logic;
SIGNAL \CLK_1K~clkctrl_outclk\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\ : std_logic;
SIGNAL \inst2|LPM_COMPARE_component|auto_generated|aleb~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DUTY_CYCLE~combout\ : std_logic_vector(6 DOWNTO 0);

BEGIN

OUT_PWM <= ww_OUT_PWM;
ww_CLK_1K <= CLK_1K;
ww_DUTY_CYCLE <= DUTY_CYCLE;
CONTADOR <= ww_CONTADOR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_1K~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_1K~combout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY_CYCLE[0]~I\ : cycloneii_io
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
	padio => ww_DUTY_CYCLE(0),
	combout => \DUTY_CYCLE~combout\(0));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X22_Y35_N4
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X22_Y35_N26
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

-- Location: LCCOMB_X22_Y35_N6
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X22_Y35_N7
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X22_Y35_N2
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(0) & !\inst|LPM_COUNTER_component|auto_generated|safe_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X22_Y35_N10
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X22_Y35_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X22_Y35_N12
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X22_Y35_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X22_Y35_N20
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- !\inst|LPM_COUNTER_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X22_Y35_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X22_Y35_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~0_combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~0_combout\);

-- Location: LCCOMB_X22_Y35_N28
\inst|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~0_combout\) # ((\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ & 
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~0_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCFF_X22_Y35_N5
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X22_Y35_N8
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X22_Y35_N9
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X22_Y35_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X22_Y35_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X22_Y35_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_1K~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY_CYCLE[6]~I\ : cycloneii_io
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
	padio => ww_DUTY_CYCLE(6),
	combout => \DUTY_CYCLE~combout\(6));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY_CYCLE[5]~I\ : cycloneii_io
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
	padio => ww_DUTY_CYCLE(5),
	combout => \DUTY_CYCLE~combout\(5));

-- Location: LCCOMB_X23_Y35_N20
\inst2|LPM_COMPARE_component|auto_generated|aeb_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & (\DUTY_CYCLE~combout\(5) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) $ (!\DUTY_CYCLE~combout\(6))))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\DUTY_CYCLE~combout\(5) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) $ (!\DUTY_CYCLE~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datac => \DUTY_CYCLE~combout\(6),
	datad => \DUTY_CYCLE~combout\(5),
	combout => \inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY_CYCLE[3]~I\ : cycloneii_io
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
	padio => ww_DUTY_CYCLE(3),
	combout => \DUTY_CYCLE~combout\(3));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY_CYCLE[4]~I\ : cycloneii_io
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
	padio => ww_DUTY_CYCLE(4),
	combout => \DUTY_CYCLE~combout\(4));

-- Location: LCCOMB_X23_Y35_N0
\inst2|LPM_COMPARE_component|auto_generated|aeb_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\DUTY_CYCLE~combout\(4) & (\DUTY_CYCLE~combout\(3) $ (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3))))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\DUTY_CYCLE~combout\(4) & (\DUTY_CYCLE~combout\(3) $ (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \DUTY_CYCLE~combout\(3),
	datac => \DUTY_CYCLE~combout\(4),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY_CYCLE[2]~I\ : cycloneii_io
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
	padio => ww_DUTY_CYCLE(2),
	combout => \DUTY_CYCLE~combout\(2));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY_CYCLE[1]~I\ : cycloneii_io
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
	padio => ww_DUTY_CYCLE(1),
	combout => \DUTY_CYCLE~combout\(1));

-- Location: LCCOMB_X23_Y35_N2
\inst2|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((\DUTY_CYCLE~combout\(0) & !\inst|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_CYCLE~combout\(0),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	cout => \inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X23_Y35_N4
\inst2|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((!\inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\) # (!\DUTY_CYCLE~combout\(1)))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\DUTY_CYCLE~combout\(1) & !\inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \DUTY_CYCLE~combout\(1),
	datad => VCC,
	cin => \inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X23_Y35_N6
\inst2|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\DUTY_CYCLE~combout\(2) & !\inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\DUTY_CYCLE~combout\(2)) # (!\inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \DUTY_CYCLE~combout\(2),
	datad => VCC,
	cin => \inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X23_Y35_N8
\inst2|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((!\inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\) # (!\DUTY_CYCLE~combout\(3)))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\DUTY_CYCLE~combout\(3) & !\inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \DUTY_CYCLE~combout\(3),
	datad => VCC,
	cin => \inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X23_Y35_N10
\inst2|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\DUTY_CYCLE~combout\(4) & ((!\inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(4)))) # (!\DUTY_CYCLE~combout\(4) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_CYCLE~combout\(4),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X23_Y35_N12
\inst2|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\DUTY_CYCLE~combout\(5) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\)) # (!\DUTY_CYCLE~combout\(5) & 
-- ((\inst|LPM_COUNTER_component|auto_generated|safe_q\(5)) # (!\inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_CYCLE~combout\(5),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X23_Y35_N14
\inst2|LPM_COMPARE_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|op_1~12_combout\ = (\DUTY_CYCLE~combout\(6) & ((!\inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(6)))) # (!\DUTY_CYCLE~combout\(6) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_CYCLE~combout\(6),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	cin => \inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	combout => \inst2|LPM_COMPARE_component|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X23_Y35_N22
\inst2|LPM_COMPARE_component|auto_generated|aeb_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\DUTY_CYCLE~combout\(2) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (!\DUTY_CYCLE~combout\(1))))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\DUTY_CYCLE~combout\(2) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (!\DUTY_CYCLE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \DUTY_CYCLE~combout\(2),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \DUTY_CYCLE~combout\(1),
	combout => \inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\);

-- Location: LCCOMB_X23_Y35_N28
\inst2|LPM_COMPARE_component|auto_generated|aeb_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\ = (\inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\ & (\DUTY_CYCLE~combout\(0) $ (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_CYCLE~combout\(0),
	datab => \inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\);

-- Location: LCCOMB_X23_Y35_N26
\inst2|LPM_COMPARE_component|auto_generated|aleb\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COMPARE_component|auto_generated|aleb~combout\ = (\inst2|LPM_COMPARE_component|auto_generated|op_1~12_combout\) # ((\inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\ & (\inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\ 
-- & \inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\,
	datab => \inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\,
	datac => \inst2|LPM_COMPARE_component|auto_generated|op_1~12_combout\,
	datad => \inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\,
	combout => \inst2|LPM_COMPARE_component|auto_generated|aleb~combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_PWM~I\ : cycloneii_io
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
	datain => \inst2|LPM_COMPARE_component|auto_generated|aleb~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_PWM);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CONTADOR[6]~I\ : cycloneii_io
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
	datain => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CONTADOR(6));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CONTADOR[5]~I\ : cycloneii_io
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
	datain => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CONTADOR(5));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CONTADOR[4]~I\ : cycloneii_io
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
	datain => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CONTADOR(4));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CONTADOR[3]~I\ : cycloneii_io
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
	datain => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CONTADOR(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CONTADOR[2]~I\ : cycloneii_io
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
	datain => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CONTADOR(2));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CONTADOR[1]~I\ : cycloneii_io
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
	datain => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CONTADOR(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CONTADOR[0]~I\ : cycloneii_io
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
	datain => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CONTADOR(0));
END structure;


