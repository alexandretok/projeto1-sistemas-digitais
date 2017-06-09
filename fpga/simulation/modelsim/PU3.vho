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

-- DATE "06/09/2017 02:42:39"

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

ENTITY 	main IS
    PORT (
	LED_SYS_EN : OUT std_logic;
	IN_BOTAO : IN std_logic;
	CLK_50M : IN std_logic;
	PWM_COOLER : OUT std_logic;
	LED_SENSOR : OUT std_logic;
	OUT_TEMPO : OUT std_logic_vector(17 DOWNTO 0);
	IN_SENSOR : IN std_logic_vector(9 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- LED_SYS_EN	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PWM_COOLER	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_SENSOR	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[17]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[16]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[15]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[14]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[13]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[12]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[11]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[10]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[9]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[8]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[7]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[6]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[5]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[4]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[3]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[2]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[1]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT_TEMPO[0]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IN_SENSOR[9]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[8]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[7]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[6]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[4]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_SENSOR[0]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN_BOTAO	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50M	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED_SYS_EN : std_logic;
SIGNAL ww_IN_BOTAO : std_logic;
SIGNAL ww_CLK_50M : std_logic;
SIGNAL ww_PWM_COOLER : std_logic;
SIGNAL ww_LED_SENSOR : std_logic;
SIGNAL ww_OUT_TEMPO : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_IN_SENSOR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK_50M~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~18_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[152]~24_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[163]~30_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[185]~42_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[184]~43_combout\ : std_logic;
SIGNAL \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \CLK_50M~combout\ : std_logic;
SIGNAL \CLK_50M~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \IN_BOTAO~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~1_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~0_combout\ : std_logic;
SIGNAL \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst2|inst4~combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~3_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~2_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~4_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst2|inst10~combout\ : std_logic;
SIGNAL \inst2|inst11~feeder_combout\ : std_logic;
SIGNAL \inst2|inst11~regout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~0_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~7\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~9\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~11\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~13\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~12_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~0_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~8_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~12_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~13\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~15_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~15_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[174]~36_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~15_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[183]~44_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[182]~45_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[181]~46_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[180]~47_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15_cout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\ : std_logic;
SIGNAL \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_17_result_int[11]~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_7~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_6~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_5~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_4~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_3~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_2~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_1~16_combout\ : std_logic;
SIGNAL \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_16~14_combout\ : std_logic;

BEGIN

LED_SYS_EN <= ww_LED_SYS_EN;
ww_IN_BOTAO <= IN_BOTAO;
ww_CLK_50M <= CLK_50M;
PWM_COOLER <= ww_PWM_COOLER;
LED_SENSOR <= ww_LED_SENSOR;
OUT_TEMPO <= ww_OUT_TEMPO;
ww_IN_SENSOR <= IN_SENSOR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_50M~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_50M~combout\);
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_17_result_int[11]~16_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\;
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_7~16_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\;
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_6~16_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\;
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_5~16_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\;
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_4~16_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\;
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_3~16_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\;
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_2~16_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\;
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_1~16_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\;
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_16~14_combout\ <= NOT \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\;

-- Location: LCCOMB_X62_Y26_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X62_Y26_N16
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X61_Y26_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X61_Y26_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X61_Y26_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X60_Y26_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X60_Y26_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X60_Y26_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X60_Y26_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\)) 
-- # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X60_Y26_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X60_Y27_N22
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~8_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~7\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~7\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~9\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~7\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~8_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X60_Y27_N24
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~10_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~9\)) 
-- # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~9\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~11\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~9\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~9\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~10_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X60_Y27_N26
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~12_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~11\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~11\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~13\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~11\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~12_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~13\);

-- Location: LCCOMB_X61_Y27_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X61_Y27_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\)) 
-- # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~11\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X61_Y27_N16
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~12_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~11\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~11\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~13\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~11\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~12_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X62_Y28_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~10_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\)) 
-- # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~10_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X62_Y28_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~13\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~13\);

-- Location: LCFF_X64_Y27_N21
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X64_Y22_N25
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X64_Y27_N20
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X64_Y22_N21
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~clkctrl_outclk\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCFF_X64_Y22_N17
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~clkctrl_outclk\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X64_Y22_N16
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X64_Y22_N20
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X64_Y22_N24
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X61_Y26_N26
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\);

-- Location: LCCOMB_X60_Y26_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~18_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~18_combout\);

-- Location: LCCOMB_X60_Y26_N24
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\,
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\);

-- Location: LCCOMB_X60_Y26_N28
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~16_combout\,
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\);

-- Location: LCCOMB_X60_Y27_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[152]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[152]~24_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~19_combout\,
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~12_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[152]~24_combout\);

-- Location: LCCOMB_X60_Y27_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~10_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\);

-- Location: LCCOMB_X60_Y27_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~8_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~21_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\);

-- Location: LCCOMB_X61_Y27_N0
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[163]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[163]~30_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~12_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[151]~25_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[163]~30_combout\);

-- Location: LCCOMB_X61_Y27_N30
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[150]~26_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\);

-- Location: LCCOMB_X61_Y27_N2
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\);

-- Location: LCCOMB_X62_Y28_N30
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[185]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[185]~42_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[185]~42_combout\);

-- Location: LCCOMB_X62_Y28_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[184]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[184]~43_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~10_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[184]~43_combout\);

-- Location: LCCOMB_X64_Y22_N8
\inst1|inst|LPM_COMPARE_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6) & (((!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4) & 
-- !\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3))) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X64_Y22_N0
\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(2) & \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_50M~I\ : cycloneii_io
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
	padio => ww_CLK_50M,
	combout => \CLK_50M~combout\);

-- Location: CLKCTRL_G2
\CLK_50M~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50M~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50M~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y27_N14
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X64_Y22_N4
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

-- Location: LCCOMB_X64_Y27_N16
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

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

-- Location: LCCOMB_X64_Y27_N18
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X64_Y27_N19
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X64_Y27_N22
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X64_Y27_N23
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X64_Y27_N24
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X64_Y27_N25
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X64_Y27_N4
\inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3)) # ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2)) # 
-- ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4)) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X64_Y27_N26
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X64_Y27_N27
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X64_Y27_N28
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X64_Y27_N29
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X64_Y27_N30
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X64_Y27_N31
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X64_Y26_N0
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X64_Y26_N1
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X64_Y26_N2
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X64_Y26_N3
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X64_Y26_N4
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X64_Y26_N5
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X64_Y26_N6
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X64_Y26_N8
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X64_Y26_N9
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCFF_X64_Y26_N7
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X64_Y26_N26
\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~1_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10) & 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12),
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~1_combout\);

-- Location: LCCOMB_X64_Y26_N10
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X64_Y26_N12
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X64_Y26_N14
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X64_Y26_N15
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X64_Y26_N16
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCFF_X64_Y26_N17
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X64_Y26_N11
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X64_Y26_N28
\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~0_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~0_combout\);

-- Location: LCCOMB_X64_Y27_N12
\inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = ((\inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # ((!\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~0_combout\) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~1_combout\))) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~2_combout\,
	datab => \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~1_combout\,
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~0_combout\,
	combout => \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X64_Y27_N2
\inst2|inst4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst4~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0)) # (((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (\inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\)) # 
-- (!\IN_BOTAO~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \IN_BOTAO~combout\,
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	combout => \inst2|inst4~combout\);

-- Location: LCFF_X64_Y27_N17
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X64_Y27_N6
\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~3_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2) & 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) & \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~3_combout\);

-- Location: LCCOMB_X64_Y27_N8
\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~2_combout\ = (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7) & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9) & 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~2_combout\);

-- Location: LCCOMB_X64_Y26_N20
\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~4_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~1_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~0_combout\ & 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~3_combout\ & \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~1_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~0_combout\,
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~3_combout\,
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~2_combout\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~4_combout\);

-- Location: LCCOMB_X64_Y26_N18
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\ = !\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\);

-- Location: LCCOMB_X64_Y26_N24
\inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\) # ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst2|inst7|LPM_COUNTER_component|auto_generated|cmpr2|data_wire[6]~4_combout\,
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\,
	combout => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCFF_X64_Y27_N15
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X64_Y27_N10
\inst2|inst10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst10~combout\ = LCELL(((!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0) & !\inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\))) # 
-- (!\IN_BOTAO~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \IN_BOTAO~combout\,
	datad => \inst2|inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	combout => \inst2|inst10~combout\);

-- Location: LCCOMB_X63_Y27_N8
\inst2|inst11~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst11~feeder_combout\ = \IN_BOTAO~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_BOTAO~combout\,
	combout => \inst2|inst11~feeder_combout\);

-- Location: LCFF_X63_Y27_N9
\inst2|inst11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|inst10~combout\,
	datain => \inst2|inst11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst11~regout\);

-- Location: LCCOMB_X64_Y22_N18
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X64_Y22_N10
\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ = (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7) & \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X64_Y21_N12
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X64_Y21_N14
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X64_Y21_N15
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X64_Y21_N16
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~0_combout\ = !\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~0_combout\);

-- Location: LCCOMB_X64_Y21_N10
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X64_Y21_N11
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X64_Y21_N30
\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9) & 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13) & \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8),
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X64_Y21_N6
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X64_Y21_N7
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X64_Y21_N18
\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(12) & 
-- !\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(11),
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X64_Y21_N26
\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ & (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15) & 
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	datac => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X64_Y21_N28
\inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~0_combout\) # ((\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ & 
-- (\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ & \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\,
	datac => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita15~0_combout\,
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCFF_X64_Y22_N19
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~clkctrl_outclk\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X64_Y22_N22
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X64_Y22_N23
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X64_Y22_N26
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X64_Y22_N27
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X64_Y22_N28
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X64_Y22_N29
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X64_Y22_N30
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X64_Y22_N31
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X64_Y21_N0
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X64_Y21_N1
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X64_Y21_N2
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X64_Y21_N3
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X64_Y21_N4
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X64_Y21_N5
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~clkctrl_outclk\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X64_Y21_N8
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X64_Y21_N9
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X64_Y21_N13
\inst1|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50M~combout\,
	datain => \inst1|inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X64_Y21_N20
\inst1|inst|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~1_combout\ = (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8)) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(8),
	combout => \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X64_Y21_N24
\inst1|inst|LPM_COMPARE_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~2_combout\ = (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9) & (\inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ & 
-- ((\inst1|inst|LPM_COMPARE_component|auto_generated|op_1~0_combout\) # (\inst1|inst|LPM_COMPARE_component|auto_generated|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	combout => \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X64_Y21_N22
\rtl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15) & (((\inst1|inst|LPM_COMPARE_component|auto_generated|op_1~2_combout\) # (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13))) # 
-- (!\inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datac => \inst1|inst|LPM_COMPARE_component|auto_generated|op_1~2_combout\,
	datad => \inst1|inst2|LPM_COUNTER_component|auto_generated|safe_q\(13),
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X63_Y26_N0
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X63_Y26_N2
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~2_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~1_cout\ & VCC)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~1_cout\))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~3\ = CARRY((!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~1_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~2_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X63_Y26_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~4_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~3\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~3\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~5\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~3\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~4_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X63_Y26_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~6_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~5\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14) & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~5\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~7\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~5\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~5\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~6_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~7\);

-- Location: LCCOMB_X63_Y26_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~8_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~7\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~7\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~9\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~7\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~8_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~9\);

-- Location: LCCOMB_X63_Y26_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~10_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~9\)) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16) & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~9\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~11\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~9\) # (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~9\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~10_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~11\);

-- Location: LCCOMB_X63_Y26_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~12_combout\ = (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~11\ $ (GND))) # 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~11\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~13\ = CARRY((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17) & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~11\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~12_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~13\);

-- Location: LCCOMB_X63_Y26_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ = !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~13\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\);

-- Location: LCCOMB_X63_Y26_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~0_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17))) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~12_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~0_combout\);

-- Location: LCCOMB_X63_Y26_N30
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16))) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~10_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\);

-- Location: LCFF_X64_Y26_N13
\inst2|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0_combout\,
	datain => \inst2|inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst2|inst7|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	ena => \inst2|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X63_Y26_N28
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15)))) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~8_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\,
	datad => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\);

-- Location: LCCOMB_X63_Y26_N24
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13))) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~4_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\);

-- Location: LCCOMB_X63_Y26_N18
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12))) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~2_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\);

-- Location: LCCOMB_X62_Y26_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\);

-- Location: LCCOMB_X62_Y26_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ $ 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ $ 
-- ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11)))))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ $ 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X62_Y26_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X62_Y26_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X62_Y26_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X62_Y26_N18
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~0_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~0_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\);

-- Location: LCCOMB_X62_Y26_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ = \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\);

-- Location: LCCOMB_X62_Y26_N0
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~6_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~1_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~6_combout\);

-- Location: LCCOMB_X62_Y26_N30
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~2_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\);

-- Location: LCCOMB_X63_Y26_N26
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14))) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~6_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\);

-- Location: LCCOMB_X62_Y26_N22
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~3_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\);

-- Location: LCCOMB_X62_Y26_N24
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~4_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\);

-- Location: LCCOMB_X62_Y26_N28
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11) $ 
-- ((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\)))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_16~14_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~11_combout\);

-- Location: LCCOMB_X61_Y26_N0
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\);

-- Location: LCCOMB_X61_Y26_N2
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10)))))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X61_Y26_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X61_Y26_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X61_Y26_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~6_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~6_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\);

-- Location: LCCOMB_X61_Y26_N16
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ = \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\);

-- Location: LCCOMB_X61_Y26_N18
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~12_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~7_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~12_combout\);

-- Location: LCCOMB_X61_Y26_N24
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~8_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~13_combout\);

-- Location: LCCOMB_X61_Y26_N30
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~9_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~14_combout\);

-- Location: LCCOMB_X62_Y26_N26
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~5_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\);

-- Location: LCCOMB_X61_Y26_N28
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~10_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\);

-- Location: LCCOMB_X61_Y26_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ ((!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\);

-- Location: LCCOMB_X60_Y26_N2
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\);

-- Location: LCCOMB_X60_Y26_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ 
-- ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9)))))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X60_Y26_N16
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~12_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~12_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\);

-- Location: LCCOMB_X60_Y26_N18
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ = \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\);

-- Location: LCCOMB_X60_Y26_N26
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\,
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~15_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~20_combout\);

-- Location: LCCOMB_X60_Y26_N22
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\,
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~17_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\);

-- Location: LCCOMB_X60_Y26_N0
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ ((!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\);

-- Location: LCCOMB_X60_Y27_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_cout\);

-- Location: LCCOMB_X60_Y27_N16
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_cout\ & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) $ 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_cout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) $ 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\))))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~3\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_cout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) $ 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X60_Y27_N18
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~4_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~3\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~3\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~5\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~3\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~4_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X60_Y27_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~6_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~5\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~5\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~7\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~5\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~5\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~6_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X60_Y27_N28
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~15_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~18_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~18_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~13\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~15_cout\);

-- Location: LCCOMB_X60_Y27_N30
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ = \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~15_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\);

-- Location: LCCOMB_X60_Y27_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~22_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~6_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[149]~27_combout\);

-- Location: LCCOMB_X60_Y27_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~4_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\);

-- Location: LCCOMB_X61_Y27_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X61_Y27_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ $ 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ $ 
-- ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7)))))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ $ 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X61_Y27_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X61_Y27_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X61_Y27_N18
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~15_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[152]~24_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[152]~24_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~13\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~15_cout\);

-- Location: LCCOMB_X61_Y27_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ = \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~15_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\);

-- Location: LCCOMB_X61_Y27_N24
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[148]~28_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\);

-- Location: LCCOMB_X60_Y27_N2
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8) $ 
-- ((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ & 
-- (((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\);

-- Location: LCCOMB_X61_Y27_N22
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[147]~29_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\);

-- Location: LCCOMB_X61_Y27_N28
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\ $ ((!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ & 
-- (((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\);

-- Location: LCCOMB_X62_Y27_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X62_Y27_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ $ 
-- (!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ $ 
-- ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6)))))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ $ 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X62_Y27_N16
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X62_Y27_N18
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X62_Y27_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X62_Y27_N22
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\)) 
-- # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X62_Y27_N24
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X62_Y27_N26
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[163]~30_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[163]~30_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15_cout\);

-- Location: LCCOMB_X62_Y27_N28
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ = \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\);

-- Location: LCCOMB_X62_Y27_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[174]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[174]~36_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[162]~31_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[174]~36_combout\);

-- Location: LCCOMB_X62_Y27_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[161]~32_combout\,
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[173]~37_combout\);

-- Location: LCCOMB_X62_Y27_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[160]~33_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[172]~38_combout\);

-- Location: LCCOMB_X62_Y27_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[159]~34_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\);

-- Location: LCCOMB_X62_Y27_N0
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[158]~35_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\);

-- Location: LCCOMB_X62_Y28_N0
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\);

-- Location: LCCOMB_X62_Y28_N2
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & ((\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) $ 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\)))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) $ 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\))))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) $ 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X62_Y28_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X62_Y28_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\)) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\ & ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\) # (GND)))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X62_Y28_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\ & (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ $ 
-- (GND))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\ & (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ & VCC))
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\ & !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X62_Y28_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~15_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[174]~36_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[174]~36_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~13\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~15_cout\);

-- Location: LCCOMB_X62_Y28_N16
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ = \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~15_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\);

-- Location: LCCOMB_X62_Y28_N26
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[183]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[183]~44_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[171]~39_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[183]~44_combout\);

-- Location: LCCOMB_X62_Y28_N28
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[182]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[182]~45_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\)) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[170]~40_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[182]~45_combout\);

-- Location: LCCOMB_X62_Y27_N2
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\ $ ((!\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6))))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ & 
-- (((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\);

-- Location: LCCOMB_X62_Y28_N22
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[181]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[181]~46_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- ((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\,
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[169]~41_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[181]~46_combout\);

-- Location: LCCOMB_X62_Y28_N24
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[180]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[180]~47_combout\ = (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5) $ 
-- ((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\)))) # (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\ & 
-- (((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\,
	datab => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	datad => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[180]~47_combout\);

-- Location: LCCOMB_X63_Y28_N4
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\ = CARRY(\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\);

-- Location: LCCOMB_X63_Y28_N6
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\ & 
-- (\inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~16_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3_cout\);

-- Location: LCCOMB_X63_Y28_N8
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5_cout\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[180]~47_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[180]~47_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3_cout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5_cout\);

-- Location: LCCOMB_X63_Y28_N10
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5_cout\) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[181]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[181]~46_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5_cout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7_cout\);

-- Location: LCCOMB_X63_Y28_N12
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9_cout\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[182]~45_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[182]~45_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7_cout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9_cout\);

-- Location: LCCOMB_X63_Y28_N14
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9_cout\) # 
-- (!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[183]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[183]~44_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9_cout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11_cout\);

-- Location: LCCOMB_X63_Y28_N16
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13_cout\ = CARRY((\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[184]~43_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[184]~43_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11_cout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13_cout\);

-- Location: LCCOMB_X63_Y28_N18
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15_cout\ = CARRY((!\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[185]~42_combout\ & 
-- !\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[185]~42_combout\,
	datad => VCC,
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13_cout\,
	cout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15_cout\);

-- Location: LCCOMB_X63_Y28_N20
\inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\ = \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15_cout\,
	combout => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_SYS_EN~I\ : cycloneii_io
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
	datain => \inst2|inst11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_SYS_EN);

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PWM_COOLER~I\ : cycloneii_io
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
	datain => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PWM_COOLER);

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_SENSOR~I\ : cycloneii_io
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
	padio => ww_LED_SENSOR);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[17]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(17));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[16]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(16));

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[15]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(15));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[14]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(14));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[13]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(13));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[12]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(12));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[11]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(11));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[10]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(10));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[9]~I\ : cycloneii_io
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
	padio => ww_OUT_TEMPO(9));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[8]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_16~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(8));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[7]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(7));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[6]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(6));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[5]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(5));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[4]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(4));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[3]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(3));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[2]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_6~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(2));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[1]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_7~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(1));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT_TEMPO[0]~I\ : cycloneii_io
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
	datain => \inst2|inst9|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_17_result_int[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUT_TEMPO(0));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[9]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(9));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[8]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(8));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[7]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(7));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[6]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(6));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[5]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[4]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(4));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[3]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(3));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[2]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(2));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[1]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(1));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN_SENSOR[0]~I\ : cycloneii_io
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
	padio => ww_IN_SENSOR(0));
END structure;


