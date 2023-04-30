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
-- Generated on "03/06/2023 12:05:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          JK_FlipFlop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY JK_FlipFlop_vhd_vec_tst IS
END JK_FlipFlop_vhd_vec_tst;
ARCHITECTURE JK_FlipFlop_arch OF JK_FlipFlop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLRN : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL PRN : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL QN : STD_LOGIC;
COMPONENT JK_FlipFlop
	PORT (
	CLK : IN STD_LOGIC;
	CLRN : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	PRN : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	QN : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : JK_FlipFlop
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLRN => CLRN,
	J => J,
	K => K,
	PRN => PRN,
	Q => Q,
	QN => QN
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- CLRN
t_prcs_CLRN: PROCESS
BEGIN
	CLRN <= '1';
WAIT;
END PROCESS t_prcs_CLRN;

-- PRN
t_prcs_PRN: PROCESS
BEGIN
	PRN <= '1';
WAIT;
END PROCESS t_prcs_PRN;

-- J
t_prcs_J: PROCESS
BEGIN
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 15000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 15000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 15000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 45000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 15000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 15000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 35000 ps;
	J <= '0';
	WAIT FOR 15000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 15000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 15000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 15000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 20000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 25000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 20000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 30000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 25000 ps;
	J <= '1';
	WAIT FOR 5000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 15000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 5000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
WAIT;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 15000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 15000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 35000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 15000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 25000 ps;
	K <= '1';
	WAIT FOR 25000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 40000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 15000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 15000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 25000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 15000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 15000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 15000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 5000 ps;
	K <= '1';
	WAIT FOR 5000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 15000 ps;
	K <= '0';
WAIT;
END PROCESS t_prcs_K;
END JK_FlipFlop_arch;
