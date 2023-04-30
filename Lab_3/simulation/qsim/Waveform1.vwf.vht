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
-- Generated on "03/06/2023 10:00:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UD_Counter2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UD_Counter2_vhd_vec_tst IS
END UD_Counter2_vhd_vec_tst;
ARCHITECTURE UD_Counter2_arch OF UD_Counter2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLRN : STD_LOGIC;
SIGNAL COUNT : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL E : STD_LOGIC;
SIGNAL PRN : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT UD_Counter2
	PORT (
	CLK : IN STD_LOGIC;
	CLRN : IN STD_LOGIC;
	COUNT : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	E : IN STD_LOGIC;
	PRN : IN STD_LOGIC;
	X : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UD_Counter2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLRN => CLRN,
	COUNT => COUNT,
	E => E,
	PRN => PRN,
	X => X
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

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
WAIT;
END PROCESS t_prcs_E;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
	WAIT FOR 450000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;
END UD_Counter2_arch;
