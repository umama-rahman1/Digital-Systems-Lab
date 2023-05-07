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
-- Generated on "03/29/2023 23:31:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counter_4bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_4bit_vhd_vec_tst IS
END counter_4bit_vhd_vec_tst;
ARCHITECTURE counter_4bit_arch OF counter_4bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL load_value : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL parallel_load : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT counter_4bit
	PORT (
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	load_value : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	parallel_load : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counter_4bit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count => count,
	load_value => load_value,
	parallel_load => parallel_load,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- load_value[3]
t_prcs_load_value_3: PROCESS
BEGIN
	load_value(3) <= '0';
WAIT;
END PROCESS t_prcs_load_value_3;
-- load_value[2]
t_prcs_load_value_2: PROCESS
BEGIN
	load_value(2) <= '0';
WAIT;
END PROCESS t_prcs_load_value_2;
-- load_value[1]
t_prcs_load_value_1: PROCESS
BEGIN
	load_value(1) <= '0';
WAIT;
END PROCESS t_prcs_load_value_1;
-- load_value[0]
t_prcs_load_value_0: PROCESS
BEGIN
	load_value(0) <= '1';
WAIT;
END PROCESS t_prcs_load_value_0;

-- parallel_load
t_prcs_parallel_load: PROCESS
BEGIN
	parallel_load <= '0';
	WAIT FOR 20000 ps;
	parallel_load <= '1';
	WAIT FOR 30000 ps;
	parallel_load <= '0';
WAIT;
END PROCESS t_prcs_parallel_load;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END counter_4bit_arch;
