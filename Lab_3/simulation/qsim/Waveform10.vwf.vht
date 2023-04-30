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
-- Generated on "03/06/2023 13:31:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          StateMachine
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY StateMachine_vhd_vec_tst IS
END StateMachine_vhd_vec_tst;
ARCHITECTURE StateMachine_arch OF StateMachine_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT StateMachine
	PORT (
	CLK : IN STD_LOGIC;
	state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	X : IN STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : StateMachine
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	state => state,
	X => X,
	Y => Y
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

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 50000 ps;
	X <= '0';
	WAIT FOR 30000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 40000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 30000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 40000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 40000 ps;
	X <= '0';
	WAIT FOR 30000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 50000 ps;
	X <= '0';
	WAIT FOR 40000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 30000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 30000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
WAIT;
END PROCESS t_prcs_X;
END StateMachine_arch;
