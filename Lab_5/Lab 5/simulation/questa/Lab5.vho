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

-- DATE "03/30/2023 00:56:16"

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

ENTITY 	shiftreg10bit IS
    PORT (
	s0 : IN std_logic;
	s1 : IN std_logic;
	sil : IN std_logic;
	sir : IN std_logic;
	clk : IN std_logic;
	clrb : IN std_logic;
	l : IN std_logic_vector(9 DOWNTO 0);
	q : OUT std_logic_vector(9 DOWNTO 0)
	);
END shiftreg10bit;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sil	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clrb	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[2]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[3]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[4]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[5]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[8]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[9]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sir	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shiftreg10bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_sil : std_logic;
SIGNAL ww_sir : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clrb : std_logic;
SIGNAL ww_l : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \l[0]~input_o\ : std_logic;
SIGNAL \l[1]~input_o\ : std_logic;
SIGNAL \l[4]~input_o\ : std_logic;
SIGNAL \l[5]~input_o\ : std_logic;
SIGNAL \l[7]~input_o\ : std_logic;
SIGNAL \l[8]~input_o\ : std_logic;
SIGNAL \sir~input_o\ : std_logic;
SIGNAL \l[9]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \clrb~input_o\ : std_logic;
SIGNAL \regval[0]~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \l[6]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \l[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \l[2]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \sil~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL regval : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_regval : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_s1~input_o\ : std_logic;
SIGNAL \ALT_INV_sil~input_o\ : std_logic;
SIGNAL \ALT_INV_s0~input_o\ : std_logic;
SIGNAL \ALT_INV_l[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_l[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_sir~input_o\ : std_logic;

BEGIN

ww_s0 <= s0;
ww_s1 <= s1;
ww_sil <= sil;
ww_sir <= sir;
ww_clk <= clk;
ww_clrb <= clrb;
ww_l <= l;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_regval(0) <= NOT regval(0);
ALT_INV_regval(1) <= NOT regval(1);
ALT_INV_regval(2) <= NOT regval(2);
ALT_INV_regval(3) <= NOT regval(3);
ALT_INV_regval(5) <= NOT regval(5);
ALT_INV_regval(4) <= NOT regval(4);
ALT_INV_regval(6) <= NOT regval(6);
ALT_INV_regval(7) <= NOT regval(7);
ALT_INV_regval(8) <= NOT regval(8);
ALT_INV_regval(9) <= NOT regval(9);
\ALT_INV_s1~input_o\ <= NOT \s1~input_o\;
\ALT_INV_sil~input_o\ <= NOT \sil~input_o\;
\ALT_INV_s0~input_o\ <= NOT \s0~input_o\;
\ALT_INV_l[0]~input_o\ <= NOT \l[0]~input_o\;
\ALT_INV_l[1]~input_o\ <= NOT \l[1]~input_o\;
\ALT_INV_l[2]~input_o\ <= NOT \l[2]~input_o\;
\ALT_INV_l[3]~input_o\ <= NOT \l[3]~input_o\;
\ALT_INV_l[4]~input_o\ <= NOT \l[4]~input_o\;
\ALT_INV_l[5]~input_o\ <= NOT \l[5]~input_o\;
\ALT_INV_l[7]~input_o\ <= NOT \l[7]~input_o\;
\ALT_INV_l[6]~input_o\ <= NOT \l[6]~input_o\;
\ALT_INV_l[8]~input_o\ <= NOT \l[8]~input_o\;
\ALT_INV_l[9]~input_o\ <= NOT \l[9]~input_o\;
\ALT_INV_sir~input_o\ <= NOT \sir~input_o\;

-- Location: IOOBUF_X78_Y0_N36
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(0),
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X84_Y0_N53
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(1),
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X84_Y0_N36
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(2),
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X86_Y0_N36
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(3),
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X76_Y0_N2
\q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(4),
	devoe => ww_devoe,
	o => ww_q(4));

-- Location: IOOBUF_X84_Y0_N19
\q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(5),
	devoe => ww_devoe,
	o => ww_q(5));

-- Location: IOOBUF_X82_Y0_N59
\q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(6),
	devoe => ww_devoe,
	o => ww_q(6));

-- Location: IOOBUF_X82_Y0_N42
\q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(7),
	devoe => ww_devoe,
	o => ww_q(7));

-- Location: IOOBUF_X78_Y0_N53
\q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(8),
	devoe => ww_devoe,
	o => ww_q(8));

-- Location: IOOBUF_X82_Y0_N93
\q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => regval(9),
	devoe => ww_devoe,
	o => ww_q(9));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X74_Y0_N75
\s1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\s0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\l[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(0),
	o => \l[0]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\l[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(1),
	o => \l[1]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\l[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(4),
	o => \l[4]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\l[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(5),
	o => \l[5]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\l[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(7),
	o => \l[7]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\l[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(8),
	o => \l[8]~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\sir~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sir,
	o => \sir~input_o\);

-- Location: IOIBUF_X78_Y0_N1
\l[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(9),
	o => \l[9]~input_o\);

-- Location: LABCELL_X79_Y1_N33
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \l[9]~input_o\ & ( regval(8) & ( ((!\s1~input_o\) # (\s0~input_o\)) # (\sir~input_o\) ) ) ) # ( !\l[9]~input_o\ & ( regval(8) & ( (!\s1~input_o\) # ((\sir~input_o\ & !\s0~input_o\)) ) ) ) # ( \l[9]~input_o\ & ( !regval(8) & ( 
-- (\s1~input_o\ & ((\s0~input_o\) # (\sir~input_o\))) ) ) ) # ( !\l[9]~input_o\ & ( !regval(8) & ( (\sir~input_o\ & (\s1~input_o\ & !\s0~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100110001001111011100110111001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sir~input_o\,
	datab => \ALT_INV_s1~input_o\,
	datac => \ALT_INV_s0~input_o\,
	datae => \ALT_INV_l[9]~input_o\,
	dataf => ALT_INV_regval(8),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X74_Y0_N41
\clrb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clrb,
	o => \clrb~input_o\);

-- Location: LABCELL_X79_Y1_N12
\regval[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regval[0]~0_combout\ = ( \s1~input_o\ ) # ( !\s1~input_o\ & ( \s0~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s0~input_o\,
	dataf => \ALT_INV_s1~input_o\,
	combout => \regval[0]~0_combout\);

-- Location: FF_X79_Y1_N35
\regval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(9));

-- Location: LABCELL_X79_Y1_N48
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \s1~input_o\ & ( regval(9) & ( (!\s0~input_o\) # (\l[8]~input_o\) ) ) ) # ( !\s1~input_o\ & ( regval(9) & ( regval(7) ) ) ) # ( \s1~input_o\ & ( !regval(9) & ( (\l[8]~input_o\ & \s0~input_o\) ) ) ) # ( !\s1~input_o\ & ( !regval(9) & ( 
-- regval(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000100010001000100001111000011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_l[8]~input_o\,
	datab => \ALT_INV_s0~input_o\,
	datac => ALT_INV_regval(7),
	datae => \ALT_INV_s1~input_o\,
	dataf => ALT_INV_regval(9),
	combout => \Mux1~0_combout\);

-- Location: FF_X79_Y1_N50
\regval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(8));

-- Location: LABCELL_X79_Y1_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( regval(8) & ( (!\s1~input_o\ & (((regval(6))))) # (\s1~input_o\ & ((!\s0~input_o\) # ((\l[7]~input_o\)))) ) ) # ( !regval(8) & ( (!\s1~input_o\ & (((regval(6))))) # (\s1~input_o\ & (\s0~input_o\ & (\l[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1~input_o\,
	datab => \ALT_INV_s0~input_o\,
	datac => \ALT_INV_l[7]~input_o\,
	datad => ALT_INV_regval(6),
	dataf => ALT_INV_regval(8),
	combout => \Mux2~0_combout\);

-- Location: FF_X79_Y1_N26
\regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(7));

-- Location: IOIBUF_X80_Y0_N18
\l[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(6),
	o => \l[6]~input_o\);

-- Location: LABCELL_X79_Y1_N54
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( regval(5) & ( (!\s1~input_o\) # ((!\s0~input_o\ & (regval(7))) # (\s0~input_o\ & ((\l[6]~input_o\)))) ) ) # ( !regval(5) & ( (\s1~input_o\ & ((!\s0~input_o\ & (regval(7))) # (\s0~input_o\ & ((\l[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101101011101011111100000100000101011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1~input_o\,
	datab => \ALT_INV_s0~input_o\,
	datac => ALT_INV_regval(7),
	datad => \ALT_INV_l[6]~input_o\,
	datae => ALT_INV_regval(5),
	combout => \Mux3~0_combout\);

-- Location: FF_X79_Y1_N56
\regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(6));

-- Location: LABCELL_X79_Y1_N21
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( regval(6) & ( regval(4) & ( ((!\s0~input_o\) # (!\s1~input_o\)) # (\l[5]~input_o\) ) ) ) # ( !regval(6) & ( regval(4) & ( (!\s1~input_o\) # ((\l[5]~input_o\ & \s0~input_o\)) ) ) ) # ( regval(6) & ( !regval(4) & ( (\s1~input_o\ & 
-- ((!\s0~input_o\) # (\l[5]~input_o\))) ) ) ) # ( !regval(6) & ( !regval(4) & ( (\l[5]~input_o\ & (\s0~input_o\ & \s1~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000011010000110111110001111100011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_l[5]~input_o\,
	datab => \ALT_INV_s0~input_o\,
	datac => \ALT_INV_s1~input_o\,
	datae => ALT_INV_regval(6),
	dataf => ALT_INV_regval(4),
	combout => \Mux4~0_combout\);

-- Location: FF_X79_Y1_N23
\regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(5));

-- Location: LABCELL_X79_Y1_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( regval(5) & ( (!\s1~input_o\ & (((regval(3))))) # (\s1~input_o\ & ((!\s0~input_o\) # ((\l[4]~input_o\)))) ) ) # ( !regval(5) & ( (!\s1~input_o\ & (((regval(3))))) # (\s1~input_o\ & (\s0~input_o\ & (\l[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1~input_o\,
	datab => \ALT_INV_s0~input_o\,
	datac => \ALT_INV_l[4]~input_o\,
	datad => ALT_INV_regval(3),
	dataf => ALT_INV_regval(5),
	combout => \Mux5~0_combout\);

-- Location: FF_X79_Y1_N41
\regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(4));

-- Location: IOIBUF_X80_Y0_N35
\l[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(3),
	o => \l[3]~input_o\);

-- Location: LABCELL_X79_Y1_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \l[3]~input_o\ & ( regval(2) & ( ((!\s1~input_o\) # (regval(4))) # (\s0~input_o\) ) ) ) # ( !\l[3]~input_o\ & ( regval(2) & ( (!\s1~input_o\) # ((!\s0~input_o\ & regval(4))) ) ) ) # ( \l[3]~input_o\ & ( !regval(2) & ( (\s1~input_o\ & 
-- ((regval(4)) # (\s0~input_o\))) ) ) ) # ( !\l[3]~input_o\ & ( !regval(2) & ( (!\s0~input_o\ & (\s1~input_o\ & regval(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000110000111111110000111111001111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s0~input_o\,
	datac => \ALT_INV_s1~input_o\,
	datad => ALT_INV_regval(4),
	datae => \ALT_INV_l[3]~input_o\,
	dataf => ALT_INV_regval(2),
	combout => \Mux6~0_combout\);

-- Location: FF_X79_Y1_N2
\regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(3));

-- Location: IOIBUF_X82_Y0_N75
\l[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(2),
	o => \l[2]~input_o\);

-- Location: LABCELL_X79_Y1_N15
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \s1~input_o\ & ( (!\s0~input_o\ & (regval(3))) # (\s0~input_o\ & ((\l[2]~input_o\))) ) ) # ( !\s1~input_o\ & ( regval(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_regval(3),
	datab => \ALT_INV_s0~input_o\,
	datac => \ALT_INV_l[2]~input_o\,
	datad => ALT_INV_regval(1),
	dataf => \ALT_INV_s1~input_o\,
	combout => \Mux7~0_combout\);

-- Location: FF_X79_Y1_N17
\regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux7~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(2));

-- Location: LABCELL_X79_Y1_N36
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( regval(2) & ( (!\s1~input_o\ & (((regval(0))))) # (\s1~input_o\ & ((!\s0~input_o\) # ((\l[1]~input_o\)))) ) ) # ( !regval(2) & ( (!\s1~input_o\ & (((regval(0))))) # (\s1~input_o\ & (\s0~input_o\ & (\l[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1~input_o\,
	datab => \ALT_INV_s0~input_o\,
	datac => \ALT_INV_l[1]~input_o\,
	datad => ALT_INV_regval(0),
	dataf => ALT_INV_regval(2),
	combout => \Mux8~0_combout\);

-- Location: FF_X79_Y1_N38
\regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(1));

-- Location: IOIBUF_X80_Y0_N52
\sil~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sil,
	o => \sil~input_o\);

-- Location: LABCELL_X79_Y1_N27
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \sil~input_o\ & ( (!\s1~input_o\) # ((!\s0~input_o\ & ((regval(1)))) # (\s0~input_o\ & (\l[0]~input_o\))) ) ) # ( !\sil~input_o\ & ( (\s1~input_o\ & ((!\s0~input_o\ & ((regval(1)))) # (\s0~input_o\ & (\l[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1~input_o\,
	datab => \ALT_INV_s0~input_o\,
	datac => \ALT_INV_l[0]~input_o\,
	datad => ALT_INV_regval(1),
	dataf => \ALT_INV_sil~input_o\,
	combout => \Mux9~0_combout\);

-- Location: FF_X79_Y1_N29
\regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	clrn => \clrb~input_o\,
	ena => \regval[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(0));

-- Location: LABCELL_X48_Y40_N0
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


