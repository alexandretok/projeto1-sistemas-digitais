-- megafunction wizard: %LPM_DIVIDE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_DIVIDE 

-- ============================================================
-- File Name: lpm_divide0.vhd
-- Megafunction Name(s):
-- 			LPM_DIVIDE
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_divide0 IS
	PORT
	(
		denom		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		numer		: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
		quotient		: OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
		remain		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END lpm_divide0;


ARCHITECTURE SYN OF lpm_divide0 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (17 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (9 DOWNTO 0);



	COMPONENT lpm_divide
	GENERIC (
		lpm_drepresentation		: STRING;
		lpm_hint		: STRING;
		lpm_nrepresentation		: STRING;
		lpm_type		: STRING;
		lpm_widthd		: NATURAL;
		lpm_widthn		: NATURAL
	);
	PORT (
			denom	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			numer	: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			quotient	: OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
			remain	: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	quotient    <= sub_wire0(17 DOWNTO 0);
	remain    <= sub_wire1(9 DOWNTO 0);

	LPM_DIVIDE_component : LPM_DIVIDE
	GENERIC MAP (
		lpm_drepresentation => "UNSIGNED",
		lpm_hint => "LPM_REMAINDERPOSITIVE=TRUE",
		lpm_nrepresentation => "UNSIGNED",
		lpm_type => "LPM_DIVIDE",
		lpm_widthd => 10,
		lpm_widthn => 18
	)
	PORT MAP (
		denom => denom,
		numer => numer,
		quotient => sub_wire0,
		remain => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: PRIVATE_LPM_REMAINDERPOSITIVE STRING "TRUE"
-- Retrieval info: PRIVATE: PRIVATE_MAXIMIZE_SPEED NUMERIC "-1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: USING_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: VERSION_NUMBER NUMERIC "2"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DREPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_HINT STRING "LPM_REMAINDERPOSITIVE=TRUE"
-- Retrieval info: CONSTANT: LPM_NREPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DIVIDE"
-- Retrieval info: CONSTANT: LPM_WIDTHD NUMERIC "10"
-- Retrieval info: CONSTANT: LPM_WIDTHN NUMERIC "18"
-- Retrieval info: USED_PORT: denom 0 0 10 0 INPUT NODEFVAL "denom[9..0]"
-- Retrieval info: USED_PORT: numer 0 0 18 0 INPUT NODEFVAL "numer[17..0]"
-- Retrieval info: USED_PORT: quotient 0 0 18 0 OUTPUT NODEFVAL "quotient[17..0]"
-- Retrieval info: USED_PORT: remain 0 0 10 0 OUTPUT NODEFVAL "remain[9..0]"
-- Retrieval info: CONNECT: @denom 0 0 10 0 denom 0 0 10 0
-- Retrieval info: CONNECT: @numer 0 0 18 0 numer 0 0 18 0
-- Retrieval info: CONNECT: quotient 0 0 18 0 @quotient 0 0 18 0
-- Retrieval info: CONNECT: remain 0 0 10 0 @remain 0 0 10 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide0.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide0.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide0.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide0.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide0_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
