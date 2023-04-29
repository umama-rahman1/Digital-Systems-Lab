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

-- DATE "02/17/2023 12:05:17"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	O : IN std_logic;
	P : IN std_logic;
	C : BUFFER std_logic;
	S : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- C	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_O : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \O~input_o\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \AddSub81|FA1|Cout~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \AddSub81|FA3|Cout~combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \AddSub81|FA5|Cout~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \AddSub81|FA7|Cout~combout\ : std_logic;
SIGNAL \MUX1|Mux7~0_combout\ : std_logic;
SIGNAL \MUX1|Mux6~0_combout\ : std_logic;
SIGNAL \MUX1|Mux5~0_combout\ : std_logic;
SIGNAL \MUX1|Mux4~0_combout\ : std_logic;
SIGNAL \AddSub81|comb~0_combout\ : std_logic;
SIGNAL \AddSub81|FA3|Cout~0_combout\ : std_logic;
SIGNAL \MUX1|Mux4~1_combout\ : std_logic;
SIGNAL \MUX1|Mux3~0_combout\ : std_logic;
SIGNAL \AddSub81|comb~1_combout\ : std_logic;
SIGNAL \MUX1|Mux2~0_combout\ : std_logic;
SIGNAL \AddSub81|FA5|Cout~0_combout\ : std_logic;
SIGNAL \MUX1|Mux2~1_combout\ : std_logic;
SIGNAL \MUX1|Mux1~0_combout\ : std_logic;
SIGNAL \AddSub81|FA7|Cout~0_combout\ : std_logic;
SIGNAL \MUX1|Mux0~0_combout\ : std_logic;
SIGNAL \AddSub81|comb~2_combout\ : std_logic;
SIGNAL \MUX1|Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_P~input_o\ : std_logic;
SIGNAL \ALT_INV_O~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \MUX1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \AddSub81|FA7|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \AddSub81|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \AddSub81|FA5|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \AddSub81|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \AddSub81|FA3|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \AddSub81|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \AddSub81|FA5|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \AddSub81|FA3|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \AddSub81|FA1|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ALT_INV_Cin~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_O <= O;
ww_P <= P;
C <= ww_C;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_P~input_o\ <= NOT \P~input_o\;
\ALT_INV_O~input_o\ <= NOT \O~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\MUX1|ALT_INV_Mux0~0_combout\ <= NOT \MUX1|Mux0~0_combout\;
\AddSub81|FA7|ALT_INV_Cout~0_combout\ <= NOT \AddSub81|FA7|Cout~0_combout\;
\AddSub81|ALT_INV_comb~2_combout\ <= NOT \AddSub81|comb~2_combout\;
\MUX1|ALT_INV_Mux2~0_combout\ <= NOT \MUX1|Mux2~0_combout\;
\AddSub81|FA5|ALT_INV_Cout~0_combout\ <= NOT \AddSub81|FA5|Cout~0_combout\;
\AddSub81|ALT_INV_comb~1_combout\ <= NOT \AddSub81|comb~1_combout\;
\MUX1|ALT_INV_Mux4~0_combout\ <= NOT \MUX1|Mux4~0_combout\;
\AddSub81|FA3|ALT_INV_Cout~0_combout\ <= NOT \AddSub81|FA3|Cout~0_combout\;
\AddSub81|ALT_INV_comb~0_combout\ <= NOT \AddSub81|comb~0_combout\;
\AddSub81|FA5|ALT_INV_Cout~combout\ <= NOT \AddSub81|FA5|Cout~combout\;
\AddSub81|FA3|ALT_INV_Cout~combout\ <= NOT \AddSub81|FA3|Cout~combout\;
\AddSub81|FA1|ALT_INV_Cout~combout\ <= NOT \AddSub81|FA1|Cout~combout\;
\ALT_INV_Cin~combout\ <= NOT \Cin~combout\;

-- Location: IOOBUF_X60_Y0_N19
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AddSub81|FA7|Cout~combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X62_Y0_N53
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X60_Y0_N36
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X64_Y0_N2
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X64_Y0_N53
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X68_Y0_N19
\S[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_S(4));

-- Location: IOOBUF_X72_Y0_N19
\S[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_S(5));

-- Location: IOOBUF_X58_Y0_N76
\S[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_S(6));

-- Location: IOOBUF_X70_Y0_N2
\S[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_S(7));

-- Location: IOIBUF_X62_Y0_N1
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\P~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\O~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_O,
	o => \O~input_o\);

-- Location: LABCELL_X66_Y1_N30
Cin : cyclonev_lcell_comb
-- Equation(s):
-- \Cin~combout\ = (\P~input_o\ & \O~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_O~input_o\,
	combout => \Cin~combout\);

-- Location: IOIBUF_X68_Y0_N52
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X66_Y1_N6
\AddSub81|FA1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|FA1|Cout~combout\ = ( \B[1]~input_o\ & ( \A[0]~input_o\ & ( ((\B[0]~input_o\ & ((!\O~input_o\) # (!\P~input_o\)))) # (\A[1]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (\O~input_o\ & (\P~input_o\))) # 
-- (\A[1]~input_o\ & (((\O~input_o\ & \P~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & ((!\O~input_o\) # ((!\P~input_o\) # (!\B[0]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[0]~input_o\ & ( 
-- (\O~input_o\ & (\P~input_o\ & ((!\B[0]~input_o\) # (\A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000001010101010101010000000011010101110101010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_O~input_o\,
	datac => \ALT_INV_P~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \AddSub81|FA1|Cout~combout\);

-- Location: IOIBUF_X68_Y0_N1
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X66_Y1_N12
\AddSub81|FA3|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|FA3|Cout~combout\ = ( \A[2]~input_o\ & ( \Cin~combout\ & ( (!\A[3]~input_o\ & (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\AddSub81|FA1|Cout~combout\)))) # (\A[3]~input_o\ & ((!\B[2]~input_o\) # ((!\B[3]~input_o\) # (\AddSub81|FA1|Cout~combout\)))) 
-- ) ) ) # ( !\A[2]~input_o\ & ( \Cin~combout\ & ( (!\A[3]~input_o\ & (!\B[2]~input_o\ & (\AddSub81|FA1|Cout~combout\ & !\B[3]~input_o\))) # (\A[3]~input_o\ & ((!\B[3]~input_o\) # ((!\B[2]~input_o\ & \AddSub81|FA1|Cout~combout\)))) ) ) ) # ( \A[2]~input_o\ & 
-- ( !\Cin~combout\ & ( (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\AddSub81|FA1|Cout~combout\) # (\B[2]~input_o\)))) # (\A[3]~input_o\ & (((\B[3]~input_o\) # (\AddSub81|FA1|Cout~combout\)) # (\B[2]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( !\Cin~combout\ & ( 
-- (!\A[3]~input_o\ & (\B[2]~input_o\ & (\AddSub81|FA1|Cout~combout\ & \B[3]~input_o\))) # (\A[3]~input_o\ & (((\B[2]~input_o\ & \AddSub81|FA1|Cout~combout\)) # (\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000001110111111100101111000000101011111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \AddSub81|FA1|ALT_INV_Cout~combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_Cin~combout\,
	combout => \AddSub81|FA3|Cout~combout\);

-- Location: IOIBUF_X66_Y0_N41
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X66_Y1_N18
\AddSub81|FA5|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|FA5|Cout~combout\ = ( \B[5]~input_o\ & ( \B[4]~input_o\ & ( (!\A[4]~input_o\ & (!\Cin~combout\ & ((\AddSub81|FA3|Cout~combout\) # (\A[5]~input_o\)))) # (\A[4]~input_o\ & ((!\Cin~combout\) # ((\A[5]~input_o\ & \AddSub81|FA3|Cout~combout\)))) ) ) 
-- ) # ( !\B[5]~input_o\ & ( \B[4]~input_o\ & ( (!\A[4]~input_o\ & (\A[5]~input_o\ & ((\AddSub81|FA3|Cout~combout\) # (\Cin~combout\)))) # (\A[4]~input_o\ & (((\Cin~combout\ & \AddSub81|FA3|Cout~combout\)) # (\A[5]~input_o\))) ) ) ) # ( \B[5]~input_o\ & ( 
-- !\B[4]~input_o\ & ( (!\A[4]~input_o\ & (\A[5]~input_o\ & ((!\Cin~combout\) # (\AddSub81|FA3|Cout~combout\)))) # (\A[4]~input_o\ & (((!\Cin~combout\ & \AddSub81|FA3|Cout~combout\)) # (\A[5]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( !\B[4]~input_o\ & ( 
-- (!\A[4]~input_o\ & (\Cin~combout\ & ((\AddSub81|FA3|Cout~combout\) # (\A[5]~input_o\)))) # (\A[4]~input_o\ & (((\A[5]~input_o\ & \AddSub81|FA3|Cout~combout\)) # (\Cin~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110111000011010100111100000111000111110100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_Cin~combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \AddSub81|FA3|ALT_INV_Cout~combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \AddSub81|FA5|Cout~combout\);

-- Location: IOIBUF_X64_Y0_N18
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X65_Y1_N0
\AddSub81|FA7|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|FA7|Cout~combout\ = ( \B[7]~input_o\ & ( \Cin~combout\ & ( (\A[7]~input_o\ & ((!\B[6]~input_o\ & ((\AddSub81|FA5|Cout~combout\) # (\A[6]~input_o\))) # (\B[6]~input_o\ & (\A[6]~input_o\ & \AddSub81|FA5|Cout~combout\)))) ) ) ) # ( !\B[7]~input_o\ 
-- & ( \Cin~combout\ & ( ((!\B[6]~input_o\ & ((\AddSub81|FA5|Cout~combout\) # (\A[6]~input_o\))) # (\B[6]~input_o\ & (\A[6]~input_o\ & \AddSub81|FA5|Cout~combout\))) # (\A[7]~input_o\) ) ) ) # ( \B[7]~input_o\ & ( !\Cin~combout\ & ( ((!\B[6]~input_o\ & 
-- (\A[6]~input_o\ & \AddSub81|FA5|Cout~combout\)) # (\B[6]~input_o\ & ((\AddSub81|FA5|Cout~combout\) # (\A[6]~input_o\)))) # (\A[7]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( !\Cin~combout\ & ( (\A[7]~input_o\ & ((!\B[6]~input_o\ & (\A[6]~input_o\ & 
-- \AddSub81|FA5|Cout~combout\)) # (\B[6]~input_o\ & ((\AddSub81|FA5|Cout~combout\) # (\A[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111100111011101111110000001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \AddSub81|FA5|ALT_INV_Cout~combout\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_Cin~combout\,
	combout => \AddSub81|FA7|Cout~combout\);

-- Location: LABCELL_X66_Y1_N33
\MUX1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux7~0_combout\ = ( \A[0]~input_o\ & ( (!\O~input_o\ & ((\B[0]~input_o\) # (\P~input_o\))) # (\O~input_o\ & ((!\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & ((\O~input_o\) # (\P~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011101111100011111000111110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_O~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \MUX1|Mux7~0_combout\);

-- Location: LABCELL_X66_Y1_N54
\MUX1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux6~0_combout\ = ( \B[1]~input_o\ & ( \A[0]~input_o\ & ( (!\O~input_o\ & (((\P~input_o\)) # (\A[1]~input_o\))) # (\O~input_o\ & (!\A[1]~input_o\ $ (((!\P~input_o\ & \B[0]~input_o\))))) ) ) ) # ( !\B[1]~input_o\ & ( \A[0]~input_o\ & ( (!\P~input_o\ 
-- & (\O~input_o\ & (!\A[1]~input_o\ $ (!\B[0]~input_o\)))) # (\P~input_o\ & (\A[1]~input_o\)) ) ) ) # ( \B[1]~input_o\ & ( !\A[0]~input_o\ & ( (!\O~input_o\ & (((\P~input_o\)) # (\A[1]~input_o\))) # (\O~input_o\ & (!\A[1]~input_o\ $ (((\P~input_o\ & 
-- \B[0]~input_o\))))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[0]~input_o\ & ( (!\O~input_o\ & (\A[1]~input_o\ & (\P~input_o\))) # (\O~input_o\ & (!\A[1]~input_o\ $ (((!\P~input_o\) # (!\B[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010110011011100110110100010101001001010110111001011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_O~input_o\,
	datac => \ALT_INV_P~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \MUX1|Mux6~0_combout\);

-- Location: LABCELL_X66_Y1_N3
\MUX1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux5~0_combout\ = ( \O~input_o\ & ( !\P~input_o\ $ (!\AddSub81|FA1|Cout~combout\ $ (!\B[2]~input_o\ $ (!\A[2]~input_o\))) ) ) # ( !\O~input_o\ & ( (!\P~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\)) # (\P~input_o\ & ((\A[2]~input_o\) # 
-- (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \AddSub81|FA1|ALT_INV_Cout~combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_O~input_o\,
	combout => \MUX1|Mux5~0_combout\);

-- Location: LABCELL_X66_Y1_N0
\MUX1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux4~0_combout\ = ( \B[3]~input_o\ & ( (\A[3]~input_o\) # (\P~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\P~input_o\ & \A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \MUX1|Mux4~0_combout\);

-- Location: LABCELL_X66_Y1_N36
\AddSub81|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|comb~0_combout\ = ( \O~input_o\ & ( !\P~input_o\ $ (!\B[2]~input_o\) ) ) # ( !\O~input_o\ & ( \B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_O~input_o\,
	combout => \AddSub81|comb~0_combout\);

-- Location: LABCELL_X66_Y1_N39
\AddSub81|FA3|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|FA3|Cout~0_combout\ = ( \O~input_o\ & ( !\P~input_o\ $ (!\B[3]~input_o\ $ (\A[3]~input_o\)) ) ) # ( !\O~input_o\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_O~input_o\,
	combout => \AddSub81|FA3|Cout~0_combout\);

-- Location: LABCELL_X66_Y1_N42
\MUX1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux4~1_combout\ = ( \A[2]~input_o\ & ( \O~input_o\ & ( !\AddSub81|FA3|Cout~0_combout\ $ (((!\AddSub81|FA1|Cout~combout\ & !\AddSub81|comb~0_combout\))) ) ) ) # ( !\A[2]~input_o\ & ( \O~input_o\ & ( !\AddSub81|FA3|Cout~0_combout\ $ 
-- (((!\AddSub81|FA1|Cout~combout\) # (!\AddSub81|comb~0_combout\))) ) ) ) # ( \A[2]~input_o\ & ( !\O~input_o\ & ( \MUX1|Mux4~0_combout\ ) ) ) # ( !\A[2]~input_o\ & ( !\O~input_o\ & ( \MUX1|Mux4~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011111111000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_Mux4~0_combout\,
	datab => \AddSub81|FA1|ALT_INV_Cout~combout\,
	datac => \AddSub81|ALT_INV_comb~0_combout\,
	datad => \AddSub81|FA3|ALT_INV_Cout~0_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_O~input_o\,
	combout => \MUX1|Mux4~1_combout\);

-- Location: LABCELL_X66_Y1_N51
\MUX1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux3~0_combout\ = ( \O~input_o\ & ( !\P~input_o\ $ (!\B[4]~input_o\ $ (!\AddSub81|FA3|Cout~combout\ $ (!\A[4]~input_o\))) ) ) # ( !\O~input_o\ & ( (!\P~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)) # (\P~input_o\ & ((\A[4]~input_o\) # 
-- (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \AddSub81|FA3|ALT_INV_Cout~combout\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_O~input_o\,
	combout => \MUX1|Mux3~0_combout\);

-- Location: LABCELL_X66_Y1_N24
\AddSub81|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|comb~1_combout\ = ( \B[4]~input_o\ & ( (!\P~input_o\) # (!\O~input_o\) ) ) # ( !\B[4]~input_o\ & ( (\P~input_o\ & \O~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_O~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \AddSub81|comb~1_combout\);

-- Location: LABCELL_X66_Y1_N48
\MUX1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux2~0_combout\ = ( \A[5]~input_o\ & ( (\B[5]~input_o\) # (\P~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\P~input_o\ & \B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \MUX1|Mux2~0_combout\);

-- Location: LABCELL_X66_Y1_N27
\AddSub81|FA5|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|FA5|Cout~0_combout\ = ( \A[5]~input_o\ & ( !\B[5]~input_o\ $ (((\P~input_o\ & \O~input_o\))) ) ) # ( !\A[5]~input_o\ & ( !\B[5]~input_o\ $ (((!\P~input_o\) # (!\O~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111011100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_O~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \AddSub81|FA5|Cout~0_combout\);

-- Location: LABCELL_X67_Y1_N3
\MUX1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux2~1_combout\ = ( \O~input_o\ & ( \A[4]~input_o\ & ( !\AddSub81|FA5|Cout~0_combout\ $ (((!\AddSub81|FA3|Cout~combout\ & !\AddSub81|comb~1_combout\))) ) ) ) # ( !\O~input_o\ & ( \A[4]~input_o\ & ( \MUX1|Mux2~0_combout\ ) ) ) # ( \O~input_o\ & ( 
-- !\A[4]~input_o\ & ( !\AddSub81|FA5|Cout~0_combout\ $ (((!\AddSub81|FA3|Cout~combout\) # (!\AddSub81|comb~1_combout\))) ) ) ) # ( !\O~input_o\ & ( !\A[4]~input_o\ & ( \MUX1|Mux2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000100011110111000001111000011110111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AddSub81|FA3|ALT_INV_Cout~combout\,
	datab => \AddSub81|ALT_INV_comb~1_combout\,
	datac => \MUX1|ALT_INV_Mux2~0_combout\,
	datad => \AddSub81|FA5|ALT_INV_Cout~0_combout\,
	datae => \ALT_INV_O~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \MUX1|Mux2~1_combout\);

-- Location: MLABCELL_X65_Y1_N6
\MUX1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux1~0_combout\ = ( \O~input_o\ & ( \A[6]~input_o\ & ( !\B[6]~input_o\ $ (!\AddSub81|FA5|Cout~combout\ $ (!\P~input_o\)) ) ) ) # ( !\O~input_o\ & ( \A[6]~input_o\ & ( (\P~input_o\) # (\B[6]~input_o\) ) ) ) # ( \O~input_o\ & ( !\A[6]~input_o\ & ( 
-- !\B[6]~input_o\ $ (!\AddSub81|FA5|Cout~combout\ $ (\P~input_o\)) ) ) ) # ( !\O~input_o\ & ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & \P~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101011010010110100101011111010111111001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \AddSub81|FA5|ALT_INV_Cout~combout\,
	datac => \ALT_INV_P~input_o\,
	datae => \ALT_INV_O~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \MUX1|Mux1~0_combout\);

-- Location: MLABCELL_X65_Y1_N51
\AddSub81|FA7|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|FA7|Cout~0_combout\ = ( \B[7]~input_o\ & ( !\A[7]~input_o\ $ (((\P~input_o\ & \O~input_o\))) ) ) # ( !\B[7]~input_o\ & ( !\A[7]~input_o\ $ (((!\P~input_o\) # (!\O~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010111100001010010100001111010110101111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_O~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	combout => \AddSub81|FA7|Cout~0_combout\);

-- Location: MLABCELL_X65_Y1_N42
\MUX1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux0~0_combout\ = (!\P~input_o\ & (\A[7]~input_o\ & \B[7]~input_o\)) # (\P~input_o\ & ((\B[7]~input_o\) # (\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	combout => \MUX1|Mux0~0_combout\);

-- Location: MLABCELL_X65_Y1_N45
\AddSub81|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddSub81|comb~2_combout\ = ( \B[6]~input_o\ & ( (!\P~input_o\) # (!\O~input_o\) ) ) # ( !\B[6]~input_o\ & ( (\P~input_o\ & \O~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datad => \ALT_INV_O~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \AddSub81|comb~2_combout\);

-- Location: MLABCELL_X65_Y1_N24
\MUX1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|Mux0~1_combout\ = ( \O~input_o\ & ( \AddSub81|FA5|Cout~combout\ & ( !\AddSub81|FA7|Cout~0_combout\ $ (((!\A[6]~input_o\ & !\AddSub81|comb~2_combout\))) ) ) ) # ( !\O~input_o\ & ( \AddSub81|FA5|Cout~combout\ & ( \MUX1|Mux0~0_combout\ ) ) ) # ( 
-- \O~input_o\ & ( !\AddSub81|FA5|Cout~combout\ & ( !\AddSub81|FA7|Cout~0_combout\ $ (((!\A[6]~input_o\) # (!\AddSub81|comb~2_combout\))) ) ) ) # ( !\O~input_o\ & ( !\AddSub81|FA5|Cout~combout\ & ( \MUX1|Mux0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101101000110011001100110101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AddSub81|FA7|ALT_INV_Cout~0_combout\,
	datab => \MUX1|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \AddSub81|ALT_INV_comb~2_combout\,
	datae => \ALT_INV_O~input_o\,
	dataf => \AddSub81|FA5|ALT_INV_Cout~combout\,
	combout => \MUX1|Mux0~1_combout\);

-- Location: LABCELL_X37_Y79_N3
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


