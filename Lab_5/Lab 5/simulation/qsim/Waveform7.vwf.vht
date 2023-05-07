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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/30/2023 00:57:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          shiftreg10bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shiftreg10bit_vhd_vec_tst IS
END shiftreg10bit_vhd_vec_tst;
ARCHITECTURE shiftreg10bit_arch OF shiftreg10bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clrb : STD_LOGIC;
SIGNAL l : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL s0 : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
SIGNAL sil : STD_LOGIC;
SIGNAL sir : STD_LOGIC;
COMPONENT shiftreg10bit
	PORT (
	clk : IN STD_LOGIC;
	clrb : IN STD_LOGIC;
	l : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	s0 : IN STD_LOGIC;
	s1 : IN STD_LOGIC;
	sil : IN STD_LOGIC;
	sir : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : shiftreg10bit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clrb => clrb,
	l => l,
	q => q,
	s0 => s0,
	s1 => s1,
	sil => sil,
	sir => sir
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 99
	LOOP
		clk <= '0';
		WAIT FOR 5010 ps;
		clk <= '1';
		WAIT FOR 5010 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 5010 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- clrb
t_prcs_clrb: PROCESS
BEGIN
	clrb <= '0';
WAIT;
END PROCESS t_prcs_clrb;

-- l[9]
t_prcs_l_9: PROCESS
BEGIN
	l(9) <= '0';
WAIT;
END PROCESS t_prcs_l_9;

-- l[8]
t_prcs_l_8: PROCESS
BEGIN
	l(8) <= '0';
WAIT;
END PROCESS t_prcs_l_8;

-- l[7]
t_prcs_l_7: PROCESS
BEGIN
	l(7) <= '0';
WAIT;
END PROCESS t_prcs_l_7;

-- l[6]
t_prcs_l_6: PROCESS
BEGIN
	l(6) <= '0';
WAIT;
END PROCESS t_prcs_l_6;

-- l[5]
t_prcs_l_5: PROCESS
BEGIN
	l(5) <= '0';
WAIT;
END PROCESS t_prcs_l_5;

-- l[4]
t_prcs_l_4: PROCESS
BEGIN
	l(4) <= '0';
WAIT;
END PROCESS t_prcs_l_4;

-- l[3]
t_prcs_l_3: PROCESS
BEGIN
	l(3) <= '0';
WAIT;
END PROCESS t_prcs_l_3;

-- l[2]
t_prcs_l_2: PROCESS
BEGIN
	l(2) <= '0';
WAIT;
END PROCESS t_prcs_l_2;

-- l[1]
t_prcs_l_1: PROCESS
BEGIN
	l(1) <= '0';
WAIT;
END PROCESS t_prcs_l_1;

-- l[0]
t_prcs_l_0: PROCESS
BEGIN
	l(0) <= '0';
WAIT;
END PROCESS t_prcs_l_0;
END shiftreg10bit_arch;
