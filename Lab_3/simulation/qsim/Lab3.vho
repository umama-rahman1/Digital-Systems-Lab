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

-- DATE "03/06/2023 13:31:39"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
	X : IN std_logic;
	CLK : IN std_logic;
	state : OUT std_logic_vector(1 DOWNTO 0);
	Y : OUT std_logic
	);
END StateMachine;

-- Design Ports Information
-- state[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_X : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \JKFF1|Qtemp~feeder_combout\ : std_logic;
SIGNAL \JKFF1|Qtemp~DUPLICATE_q\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \JKFF2|Qtemp~feeder_combout\ : std_logic;
SIGNAL \JKFF2|Qtemp~q\ : std_logic;
SIGNAL \JKFF1|Qtemp~q\ : std_logic;
SIGNAL \JKFF2|ALT_INV_Qtemp~q\ : std_logic;
SIGNAL \JKFF1|ALT_INV_Qtemp~q\ : std_logic;
SIGNAL \ALT_INV_Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_X~input_o\ : std_logic;
SIGNAL \JKFF1|ALT_INV_Qtemp~DUPLICATE_q\ : std_logic;

BEGIN

ww_X <= X;
ww_CLK <= CLK;
state <= ww_state;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\JKFF2|ALT_INV_Qtemp~q\ <= NOT \JKFF2|Qtemp~q\;
\JKFF1|ALT_INV_Qtemp~q\ <= NOT \JKFF1|Qtemp~q\;
\ALT_INV_Y~0_combout\ <= NOT \Y~0_combout\;
\ALT_INV_X~input_o\ <= NOT \X~input_o\;
\JKFF1|ALT_INV_Qtemp~DUPLICATE_q\ <= NOT \JKFF1|Qtemp~DUPLICATE_q\;

-- Location: IOOBUF_X4_Y81_N19
\state[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF2|ALT_INV_Qtemp~q\,
	devoe => ww_devoe,
	o => ww_state(0));

-- Location: IOOBUF_X4_Y81_N2
\state[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF1|ALT_INV_Qtemp~q\,
	devoe => ww_devoe,
	o => ww_state(1));

-- Location: IOOBUF_X4_Y81_N36
\Y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => ww_Y);

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

-- Location: IOIBUF_X4_Y81_N52
\X~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LABCELL_X4_Y79_N57
\JKFF1|Qtemp~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF1|Qtemp~feeder_combout\ = ( \JKFF2|Qtemp~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \JKFF2|ALT_INV_Qtemp~q\,
	combout => \JKFF1|Qtemp~feeder_combout\);

-- Location: FF_X4_Y79_N59
\JKFF1|Qtemp~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \JKFF1|Qtemp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF1|Qtemp~DUPLICATE_q\);

-- Location: LABCELL_X4_Y79_N51
\Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \JKFF1|Qtemp~DUPLICATE_q\ & ( \JKFF2|Qtemp~q\ & ( \X~input_o\ ) ) ) # ( !\JKFF1|Qtemp~DUPLICATE_q\ & ( \JKFF2|Qtemp~q\ & ( !\X~input_o\ ) ) ) # ( \JKFF1|Qtemp~DUPLICATE_q\ & ( !\JKFF2|Qtemp~q\ & ( !\X~input_o\ ) ) ) # ( 
-- !\JKFF1|Qtemp~DUPLICATE_q\ & ( !\JKFF2|Qtemp~q\ & ( \X~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X~input_o\,
	datae => \JKFF1|ALT_INV_Qtemp~DUPLICATE_q\,
	dataf => \JKFF2|ALT_INV_Qtemp~q\,
	combout => \Y~0_combout\);

-- Location: LABCELL_X4_Y79_N42
\JKFF2|Qtemp~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \JKFF2|Qtemp~feeder_combout\ = ( \Y~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Y~0_combout\,
	combout => \JKFF2|Qtemp~feeder_combout\);

-- Location: FF_X4_Y79_N44
\JKFF2|Qtemp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \JKFF2|Qtemp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF2|Qtemp~q\);

-- Location: FF_X4_Y79_N58
\JKFF1|Qtemp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \JKFF1|Qtemp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF1|Qtemp~q\);

-- Location: MLABCELL_X25_Y53_N3
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


