-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "03/06/2023 15:37:31"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StateMachine IS
    PORT (
	PRN : IN std_logic;
	CLRN : IN std_logic;
	CLK : IN std_logic;
	state : OUT std_logic_vector(1 DOWNTO 0);
	Y : OUT std_logic
	);
END StateMachine;

-- Design Ports Information
-- state[0]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLRN	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRN	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF StateMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PRN : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLRN~input_o\ : std_logic;
SIGNAL \PRN~input_o\ : std_logic;
SIGNAL \JKFF2|Qtemp~5_combout\ : std_logic;
SIGNAL \JKFF2|Qtemp~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \JKFF1|Qtemp~1_combout\ : std_logic;
SIGNAL \JKFF2|Qtemp~0_combout\ : std_logic;
SIGNAL \JKFF1|Qtemp~_emulated_q\ : std_logic;
SIGNAL \JKFF1|Qtemp~0_combout\ : std_logic;
SIGNAL \JKFF2|Qtemp~3_combout\ : std_logic;
SIGNAL \JKFF2|Qtemp~_emulated_q\ : std_logic;
SIGNAL \JKFF2|Qtemp~2_combout\ : std_logic;
SIGNAL \JKFF2|ALT_INV_Qtemp~_emulated_q\ : std_logic;
SIGNAL \JKFF2|ALT_INV_Qtemp~2_combout\ : std_logic;
SIGNAL \JKFF2|ALT_INV_Qtemp~0_combout\ : std_logic;
SIGNAL \JKFF2|ALT_INV_Qtemp~5_combout\ : std_logic;
SIGNAL \JKFF1|ALT_INV_Qtemp~_emulated_q\ : std_logic;
SIGNAL \JKFF1|ALT_INV_Qtemp~0_combout\ : std_logic;
SIGNAL \JKFF2|ALT_INV_Qtemp~1_combout\ : std_logic;
SIGNAL \ALT_INV_CLRN~input_o\ : std_logic;
SIGNAL \ALT_INV_PRN~input_o\ : std_logic;

BEGIN

ww_PRN <= PRN;
ww_CLRN <= CLRN;
ww_CLK <= CLK;
state <= ww_state;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\JKFF2|ALT_INV_Qtemp~_emulated_q\ <= NOT \JKFF2|Qtemp~_emulated_q\;
\JKFF2|ALT_INV_Qtemp~2_combout\ <= NOT \JKFF2|Qtemp~2_combout\;
\JKFF2|ALT_INV_Qtemp~0_combout\ <= NOT \JKFF2|Qtemp~0_combout\;
\JKFF2|ALT_INV_Qtemp~5_combout\ <= NOT \JKFF2|Qtemp~5_combout\;
\JKFF1|ALT_INV_Qtemp~_emulated_q\ <= NOT \JKFF1|Qtemp~_emulated_q\;
\JKFF1|ALT_INV_Qtemp~0_combout\ <= NOT \JKFF1|Qtemp~0_combout\;
\JKFF2|ALT_INV_Qtemp~1_combout\ <= NOT \JKFF2|Qtemp~1_combout\;
\ALT_INV_CLRN~input_o\ <= NOT \CLRN~input_o\;
\ALT_INV_PRN~input_o\ <= NOT \PRN~input_o\;

-- Location: IOOBUF_X89_Y6_N56
\state[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF2|Qtemp~2_combout\,
	devoe => ww_devoe,
	o => ww_state(0));

-- Location: IOOBUF_X89_Y4_N96
\state[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF1|Qtemp~0_combout\,
	devoe => ww_devoe,
	o => ww_state(1));

-- Location: IOOBUF_X89_Y4_N45
\Y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF1|Qtemp~0_combout\,
	devoe => ww_devoe,
	o => ww_Y);

-- Location: IOIBUF_X89_Y4_N61
\CLRN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLRN,
	o => \CLRN~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\PRN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PRN,
	o => \PRN~input_o\);

-- Location: LABCELL_X88_Y4_N12
\JKFF2|Qtemp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF2|Qtemp~5_combout\ = ( !\PRN~input_o\ & ( \CLRN~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CLRN~input_o\,
	dataf => \ALT_INV_PRN~input_o\,
	combout => \JKFF2|Qtemp~5_combout\);

-- Location: LABCELL_X88_Y4_N24
\JKFF2|Qtemp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF2|Qtemp~1_combout\ = ( \CLRN~input_o\ & ( \JKFF2|Qtemp~1_combout\ ) ) # ( \CLRN~input_o\ & ( !\JKFF2|Qtemp~1_combout\ & ( \JKFF2|Qtemp~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \JKFF2|ALT_INV_Qtemp~5_combout\,
	datae => \ALT_INV_CLRN~input_o\,
	dataf => \JKFF2|ALT_INV_Qtemp~1_combout\,
	combout => \JKFF2|Qtemp~1_combout\);

-- Location: IOIBUF_X89_Y25_N21
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y4_N15
\JKFF1|Qtemp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF1|Qtemp~1_combout\ = ( \JKFF2|Qtemp~2_combout\ & ( !\JKFF2|Qtemp~1_combout\ ) ) # ( !\JKFF2|Qtemp~2_combout\ & ( \JKFF2|Qtemp~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JKFF2|ALT_INV_Qtemp~1_combout\,
	dataf => \JKFF2|ALT_INV_Qtemp~2_combout\,
	combout => \JKFF1|Qtemp~1_combout\);

-- Location: LABCELL_X88_Y4_N9
\JKFF2|Qtemp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF2|Qtemp~0_combout\ = ( \JKFF2|Qtemp~5_combout\ ) # ( !\JKFF2|Qtemp~5_combout\ & ( !\CLRN~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CLRN~input_o\,
	dataf => \JKFF2|ALT_INV_Qtemp~5_combout\,
	combout => \JKFF2|Qtemp~0_combout\);

-- Location: FF_X88_Y4_N17
\JKFF1|Qtemp~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \JKFF1|Qtemp~1_combout\,
	clrn => \JKFF2|ALT_INV_Qtemp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF1|Qtemp~_emulated_q\);

-- Location: LABCELL_X88_Y4_N42
\JKFF1|Qtemp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF1|Qtemp~0_combout\ = ( \CLRN~input_o\ & ( \JKFF1|Qtemp~_emulated_q\ & ( (!\JKFF2|Qtemp~1_combout\) # (\JKFF2|Qtemp~5_combout\) ) ) ) # ( \CLRN~input_o\ & ( !\JKFF1|Qtemp~_emulated_q\ & ( (\JKFF2|Qtemp~5_combout\) # (\JKFF2|Qtemp~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JKFF2|ALT_INV_Qtemp~1_combout\,
	datab => \JKFF2|ALT_INV_Qtemp~5_combout\,
	datae => \ALT_INV_CLRN~input_o\,
	dataf => \JKFF1|ALT_INV_Qtemp~_emulated_q\,
	combout => \JKFF1|Qtemp~0_combout\);

-- Location: LABCELL_X88_Y4_N6
\JKFF2|Qtemp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF2|Qtemp~3_combout\ = ( \JKFF1|Qtemp~0_combout\ & ( \JKFF2|Qtemp~1_combout\ ) ) # ( !\JKFF1|Qtemp~0_combout\ & ( !\JKFF2|Qtemp~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \JKFF2|ALT_INV_Qtemp~1_combout\,
	dataf => \JKFF1|ALT_INV_Qtemp~0_combout\,
	combout => \JKFF2|Qtemp~3_combout\);

-- Location: FF_X88_Y4_N8
\JKFF2|Qtemp~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \JKFF2|Qtemp~3_combout\,
	clrn => \JKFF2|ALT_INV_Qtemp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF2|Qtemp~_emulated_q\);

-- Location: LABCELL_X88_Y4_N51
\JKFF2|Qtemp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF2|Qtemp~2_combout\ = ( \JKFF2|Qtemp~_emulated_q\ & ( (\CLRN~input_o\ & ((!\JKFF2|Qtemp~1_combout\) # (\JKFF2|Qtemp~5_combout\))) ) ) # ( !\JKFF2|Qtemp~_emulated_q\ & ( (\CLRN~input_o\ & ((\JKFF2|Qtemp~5_combout\) # (\JKFF2|Qtemp~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JKFF2|ALT_INV_Qtemp~1_combout\,
	datab => \ALT_INV_CLRN~input_o\,
	datac => \JKFF2|ALT_INV_Qtemp~5_combout\,
	dataf => \JKFF2|ALT_INV_Qtemp~_emulated_q\,
	combout => \JKFF2|Qtemp~2_combout\);

-- Location: LABCELL_X42_Y34_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


