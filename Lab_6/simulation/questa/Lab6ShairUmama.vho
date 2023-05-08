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

-- DATE "04/05/2023 16:17:22"

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

ENTITY 	digital_clock IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END digital_clock;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF digital_clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \counter_hr[8]~45_combout\ : std_logic;
SIGNAL \counter_hr[6]~5_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dut|Add0~41_sumout\ : std_logic;
SIGNAL \dut|Add0~98\ : std_logic;
SIGNAL \dut|Add0~57_sumout\ : std_logic;
SIGNAL \dut|cnt[11]~feeder_combout\ : std_logic;
SIGNAL \dut|Add0~58\ : std_logic;
SIGNAL \dut|Add0~61_sumout\ : std_logic;
SIGNAL \dut|cnt[12]~feeder_combout\ : std_logic;
SIGNAL \dut|Add0~62\ : std_logic;
SIGNAL \dut|Add0~73_sumout\ : std_logic;
SIGNAL \dut|Add0~74\ : std_logic;
SIGNAL \dut|Add0~89_sumout\ : std_logic;
SIGNAL \dut|Add0~90\ : std_logic;
SIGNAL \dut|Add0~69_sumout\ : std_logic;
SIGNAL \dut|Add0~70\ : std_logic;
SIGNAL \dut|Add0~65_sumout\ : std_logic;
SIGNAL \dut|Add0~66\ : std_logic;
SIGNAL \dut|Add0~77_sumout\ : std_logic;
SIGNAL \dut|Add0~78\ : std_logic;
SIGNAL \dut|Add0~25_sumout\ : std_logic;
SIGNAL \dut|Add0~26\ : std_logic;
SIGNAL \dut|Add0~29_sumout\ : std_logic;
SIGNAL \dut|Add0~30\ : std_logic;
SIGNAL \dut|Add0~33_sumout\ : std_logic;
SIGNAL \dut|Add0~34\ : std_logic;
SIGNAL \dut|Add0~81_sumout\ : std_logic;
SIGNAL \dut|Add0~82\ : std_logic;
SIGNAL \dut|Add0~85_sumout\ : std_logic;
SIGNAL \dut|Add0~86\ : std_logic;
SIGNAL \dut|Add0~37_sumout\ : std_logic;
SIGNAL \dut|Add0~38\ : std_logic;
SIGNAL \dut|Add0~45_sumout\ : std_logic;
SIGNAL \dut|Add0~46\ : std_logic;
SIGNAL \dut|Add0~93_sumout\ : std_logic;
SIGNAL \dut|Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \dut|Equal0~1_combout\ : std_logic;
SIGNAL \dut|Add0~42\ : std_logic;
SIGNAL \dut|Add0~1_sumout\ : std_logic;
SIGNAL \dut|Add0~2\ : std_logic;
SIGNAL \dut|Add0~5_sumout\ : std_logic;
SIGNAL \dut|Add0~6\ : std_logic;
SIGNAL \dut|Add0~9_sumout\ : std_logic;
SIGNAL \dut|Add0~10\ : std_logic;
SIGNAL \dut|Add0~13_sumout\ : std_logic;
SIGNAL \dut|Add0~14\ : std_logic;
SIGNAL \dut|Add0~21_sumout\ : std_logic;
SIGNAL \dut|Add0~22\ : std_logic;
SIGNAL \dut|Add0~17_sumout\ : std_logic;
SIGNAL \dut|Add0~18\ : std_logic;
SIGNAL \dut|Add0~49_sumout\ : std_logic;
SIGNAL \dut|Add0~50\ : std_logic;
SIGNAL \dut|Add0~53_sumout\ : std_logic;
SIGNAL \dut|Add0~54\ : std_logic;
SIGNAL \dut|Add0~101_sumout\ : std_logic;
SIGNAL \dut|Add0~102\ : std_logic;
SIGNAL \dut|Add0~97_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \counter_hr[0]~29_combout\ : std_logic;
SIGNAL \Add4~125_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \counter_hr[5]~9_combout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \counter_hr[4]~13_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \counter_hr[3]~17_combout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \counter_hr[1]~25_combout\ : std_logic;
SIGNAL \Add4~126\ : std_logic;
SIGNAL \Add4~121_sumout\ : std_logic;
SIGNAL \counter_hr[1]~27_combout\ : std_logic;
SIGNAL \counter_hr[8]~44_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \counter_min[8]~46_combout\ : std_logic;
SIGNAL \counter_min[7]~1_combout\ : std_logic;
SIGNAL \counter_min[6]~5_combout\ : std_logic;
SIGNAL \counter_min[0]~29_combout\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \counter_min[0]~31_combout\ : std_logic;
SIGNAL \counter_min[8]~45_combout\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \sec_display[5]~3_combout\ : std_logic;
SIGNAL \sec_display[5]~1_combout\ : std_logic;
SIGNAL \sec_display[5]~0_combout\ : std_logic;
SIGNAL \LessThan14~1_combout\ : std_logic;
SIGNAL \sec_display[5]~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \counter_sec[31]~0_combout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \counter_min[7]~43_combout\ : std_logic;
SIGNAL \counter_min[0]~_emulated_q\ : std_logic;
SIGNAL \counter_min[0]~30_combout\ : std_logic;
SIGNAL \counter_min[2]~21_combout\ : std_logic;
SIGNAL \counter_min[1]~25_combout\ : std_logic;
SIGNAL \Add3~126\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \counter_min[1]~27_combout\ : std_logic;
SIGNAL \counter_min[1]~_emulated_q\ : std_logic;
SIGNAL \counter_min[1]~26_combout\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \counter_min[2]~23_combout\ : std_logic;
SIGNAL \counter_min[2]~_emulated_q\ : std_logic;
SIGNAL \counter_min[2]~22_combout\ : std_logic;
SIGNAL \counter_min[3]~17_combout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \counter_min[3]~19_combout\ : std_logic;
SIGNAL \counter_min[3]~_emulated_q\ : std_logic;
SIGNAL \counter_min[3]~18_combout\ : std_logic;
SIGNAL \counter_min[4]~13_combout\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \counter_min[4]~15_combout\ : std_logic;
SIGNAL \counter_min[4]~_emulated_q\ : std_logic;
SIGNAL \counter_min[4]~14_combout\ : std_logic;
SIGNAL \counter_min[5]~9_combout\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \counter_min[5]~11_combout\ : std_logic;
SIGNAL \counter_min[5]~_emulated_q\ : std_logic;
SIGNAL \counter_min[5]~10_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \min_display[5]~0_combout\ : std_logic;
SIGNAL \min_display[5]~2_combout\ : std_logic;
SIGNAL \min_display[5]~1_combout\ : std_logic;
SIGNAL \min_display[5]~5_combout\ : std_logic;
SIGNAL \min_display[5]~3_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \counter_min[6]~7_combout\ : std_logic;
SIGNAL \counter_min[6]~_emulated_q\ : std_logic;
SIGNAL \counter_min[6]~6_combout\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \counter_min[7]~3_combout\ : std_logic;
SIGNAL \counter_min[7]~_emulated_q\ : std_logic;
SIGNAL \counter_min[7]~2_combout\ : std_logic;
SIGNAL \min_display[5]~4_combout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \counter_min~44_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \counter_min[31]~42_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \counter_hr[31]~40_combout\ : std_logic;
SIGNAL \counter_hr[31]~41_combout\ : std_logic;
SIGNAL \counter_hr[1]~_emulated_q\ : std_logic;
SIGNAL \counter_hr[1]~26_combout\ : std_logic;
SIGNAL \Add4~122\ : std_logic;
SIGNAL \Add4~101_sumout\ : std_logic;
SIGNAL \counter_hr[2]~21_combout\ : std_logic;
SIGNAL \counter_hr[2]~23_combout\ : std_logic;
SIGNAL \counter_hr[2]~_emulated_q\ : std_logic;
SIGNAL \counter_hr[2]~22_combout\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add4~97_sumout\ : std_logic;
SIGNAL \counter_hr[3]~19_combout\ : std_logic;
SIGNAL \counter_hr[3]~_emulated_q\ : std_logic;
SIGNAL \counter_hr[3]~18_combout\ : std_logic;
SIGNAL \Add4~98\ : std_logic;
SIGNAL \Add4~105_sumout\ : std_logic;
SIGNAL \counter_hr[4]~15_combout\ : std_logic;
SIGNAL \counter_hr[4]~_emulated_q\ : std_logic;
SIGNAL \counter_hr[4]~14_combout\ : std_logic;
SIGNAL \Add4~106\ : std_logic;
SIGNAL \Add4~117_sumout\ : std_logic;
SIGNAL \counter_hr[5]~11_combout\ : std_logic;
SIGNAL \counter_hr[5]~_emulated_q\ : std_logic;
SIGNAL \counter_hr[5]~10_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \counter_hr[7]~1_combout\ : std_logic;
SIGNAL \Add4~118\ : std_logic;
SIGNAL \Add4~114\ : std_logic;
SIGNAL \Add4~109_sumout\ : std_logic;
SIGNAL \counter_hr[7]~3_combout\ : std_logic;
SIGNAL \counter_hr[7]~_emulated_q\ : std_logic;
SIGNAL \counter_hr[7]~2_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \counter_hr[0]~31_combout\ : std_logic;
SIGNAL \counter_hr[0]~_emulated_q\ : std_logic;
SIGNAL \counter_hr[0]~30_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \Add4~110\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \counter_hr~43_combout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \counter_min[8]~40_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~69_sumout\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~65_sumout\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~73_sumout\ : std_logic;
SIGNAL \Add4~74\ : std_logic;
SIGNAL \Add4~77_sumout\ : std_logic;
SIGNAL \Add4~78\ : std_logic;
SIGNAL \Add4~93_sumout\ : std_logic;
SIGNAL \Add4~94\ : std_logic;
SIGNAL \Add4~89_sumout\ : std_logic;
SIGNAL \Add4~90\ : std_logic;
SIGNAL \Add4~85_sumout\ : std_logic;
SIGNAL \Add4~86\ : std_logic;
SIGNAL \Add4~81_sumout\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~113_sumout\ : std_logic;
SIGNAL \counter_hr[6]~7_combout\ : std_logic;
SIGNAL \counter_hr[6]~_emulated_q\ : std_logic;
SIGNAL \counter_hr[6]~6_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \hours_display|HEX1~0_combout\ : std_logic;
SIGNAL \hours_display|HEX1~1_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \hr_display[4]~0_combout\ : std_logic;
SIGNAL \hours_display|HEX1[5]~2_combout\ : std_logic;
SIGNAL \hours_display|HEX0[1]~0_combout\ : std_logic;
SIGNAL \hours_display|HEX0[2]~1_combout\ : std_logic;
SIGNAL \hours_display|HEX0[4]~2_combout\ : std_logic;
SIGNAL \hours_display|HEX0[5]~3_combout\ : std_logic;
SIGNAL \hours_display|HEX0[6]~4_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \min_display[5]~7_combout\ : std_logic;
SIGNAL \min_1~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \min_display[5]~8_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \min_1~1_combout\ : std_logic;
SIGNAL \min_display[5]~6_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \minutes_display|HEX1[1]~0_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \minutes_display|HEX1[0]~1_combout\ : std_logic;
SIGNAL \min_display[5]~9_combout\ : std_logic;
SIGNAL \minutes_display|HEX1[1]~2_combout\ : std_logic;
SIGNAL \minutes_display|HEX1[1]~3_combout\ : std_logic;
SIGNAL \minutes_display|HEX1~4_combout\ : std_logic;
SIGNAL \minutes_display|HEX1[3]~5_combout\ : std_logic;
SIGNAL \min_1~2_combout\ : std_logic;
SIGNAL \min_1~3_combout\ : std_logic;
SIGNAL \minutes_display|HEX1[5]~6_combout\ : std_logic;
SIGNAL \minutes_display|HEX1[6]~7_combout\ : std_logic;
SIGNAL \LessThan9~4_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \LessThan9~3_combout\ : std_logic;
SIGNAL \min_display[4]~11_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \min_display[5]~10_combout\ : std_logic;
SIGNAL \minutes_display|HEX0[1]~0_combout\ : std_logic;
SIGNAL \minutes_display|HEX0[2]~1_combout\ : std_logic;
SIGNAL \minutes_display|HEX0[4]~2_combout\ : std_logic;
SIGNAL \minutes_display|HEX0[5]~3_combout\ : std_logic;
SIGNAL \minutes_display|HEX0[6]~4_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \seconds_display|HEX1[1]~0_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \LessThan14~2_combout\ : std_logic;
SIGNAL \LessThan14~3_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \sec_display[5]~4_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \sec_1~0_combout\ : std_logic;
SIGNAL \seconds_display|HEX1[0]~1_combout\ : std_logic;
SIGNAL \seconds_display|HEX1[1]~2_combout\ : std_logic;
SIGNAL \seconds_display|HEX1[1]~3_combout\ : std_logic;
SIGNAL \seconds_display|HEX1~4_combout\ : std_logic;
SIGNAL \seconds_display|HEX1[3]~5_combout\ : std_logic;
SIGNAL \seconds_display|HEX1[5]~6_combout\ : std_logic;
SIGNAL \seconds_display|HEX1[6]~7_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \sec_display[4]~5_combout\ : std_logic;
SIGNAL \seconds_display|HEX0[0]~0_combout\ : std_logic;
SIGNAL \seconds_display|HEX0[1]~1_combout\ : std_logic;
SIGNAL \seconds_display|HEX0[2]~2_combout\ : std_logic;
SIGNAL \seconds_display|HEX0[3]~3_combout\ : std_logic;
SIGNAL \seconds_display|HEX0[4]~4_combout\ : std_logic;
SIGNAL \seconds_display|HEX0[5]~5_combout\ : std_logic;
SIGNAL \seconds_display|HEX0[6]~6_combout\ : std_logic;
SIGNAL counter_hr : std_logic_vector(31 DOWNTO 0);
SIGNAL \hours_display|HEX0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL counter_min : std_logic_vector(31 DOWNTO 0);
SIGNAL \minutes_display|HEX0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL counter_sec : std_logic_vector(31 DOWNTO 0);
SIGNAL \minutes_display|HEX1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dut|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \seconds_display|HEX1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_counter_min[0]~29_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[6]~5_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[7]~1_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[4]~13_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[5]~9_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[1]~25_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[2]~21_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[3]~17_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[0]~29_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[1]~25_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[5]~9_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[6]~5_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[7]~1_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[4]~13_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[2]~21_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[3]~17_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[8]~46_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[8]~45_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[0]~30_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_min[8]~45_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[6]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_min[7]~2_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[7]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_min[31]~42_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[4]~14_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[4]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_min[5]~10_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[5]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_min[1]~26_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_min[2]~22_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_min[3]~18_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[0]~30_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[1]~26_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[8]~44_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[5]~10_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[5]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[6]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[7]~2_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[7]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[4]~14_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[4]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[2]~22_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[3]~18_combout\ : std_logic;
SIGNAL \ALT_INV_counter_hr[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_counter_hr[31]~40_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_counter_min[8]~40_combout\ : std_logic;
SIGNAL \ALT_INV_Add10~0_combout\ : std_logic;
SIGNAL \ALT_INV_sec_display[4]~5_combout\ : std_logic;
SIGNAL \seconds_display|ALT_INV_HEX1[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sec_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \ALT_INV_sec_display[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan12~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan12~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \seconds_display|ALT_INV_HEX1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan13~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan14~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan14~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan14~1_combout\ : std_logic;
SIGNAL \ALT_INV_sec_display[5]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sec_display[5]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sec_display[5]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sec_display[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[4]~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \ALT_INV_min_1~3_combout\ : std_logic;
SIGNAL \ALT_INV_min_1~2_combout\ : std_logic;
SIGNAL \minutes_display|ALT_INV_HEX1[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~9_combout\ : std_logic;
SIGNAL \ALT_INV_min_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_min_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~7_combout\ : std_logic;
SIGNAL \minutes_display|ALT_INV_HEX1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~3_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~2_combout\ : std_logic;
SIGNAL \ALT_INV_min_display[5]~1_combout\ : std_logic;
SIGNAL ALT_INV_counter_min : std_logic_vector(31 DOWNTO 8);
SIGNAL \ALT_INV_min_display[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \ALT_INV_hr_display[4]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \hours_display|ALT_INV_HEX1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL ALT_INV_counter_hr : std_logic_vector(31 DOWNTO 8);
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~97_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_counter_sec : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_counter_min[0]~29_combout\ <= NOT \counter_min[0]~29_combout\;
\ALT_INV_counter_min[6]~5_combout\ <= NOT \counter_min[6]~5_combout\;
\ALT_INV_counter_min[7]~1_combout\ <= NOT \counter_min[7]~1_combout\;
\ALT_INV_counter_min[4]~13_combout\ <= NOT \counter_min[4]~13_combout\;
\ALT_INV_counter_min[5]~9_combout\ <= NOT \counter_min[5]~9_combout\;
\ALT_INV_counter_min[1]~25_combout\ <= NOT \counter_min[1]~25_combout\;
\ALT_INV_counter_min[2]~21_combout\ <= NOT \counter_min[2]~21_combout\;
\ALT_INV_counter_min[3]~17_combout\ <= NOT \counter_min[3]~17_combout\;
\ALT_INV_counter_hr[0]~29_combout\ <= NOT \counter_hr[0]~29_combout\;
\ALT_INV_counter_hr[1]~25_combout\ <= NOT \counter_hr[1]~25_combout\;
\ALT_INV_counter_hr[5]~9_combout\ <= NOT \counter_hr[5]~9_combout\;
\ALT_INV_counter_hr[6]~5_combout\ <= NOT \counter_hr[6]~5_combout\;
\ALT_INV_counter_hr[7]~1_combout\ <= NOT \counter_hr[7]~1_combout\;
\ALT_INV_counter_hr[4]~13_combout\ <= NOT \counter_hr[4]~13_combout\;
\ALT_INV_counter_hr[2]~21_combout\ <= NOT \counter_hr[2]~21_combout\;
\ALT_INV_counter_hr[3]~17_combout\ <= NOT \counter_hr[3]~17_combout\;
\dut|ALT_INV_Equal0~0_combout\ <= NOT \dut|Equal0~0_combout\;
\ALT_INV_counter_min[8]~46_combout\ <= NOT \counter_min[8]~46_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_counter_hr[8]~45_combout\ <= NOT \counter_hr[8]~45_combout\;
\ALT_INV_LessThan2~10_combout\ <= NOT \LessThan2~10_combout\;
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_counter_min[0]~30_combout\ <= NOT \counter_min[0]~30_combout\;
\ALT_INV_counter_min[0]~_emulated_q\ <= NOT \counter_min[0]~_emulated_q\;
\ALT_INV_counter_min[8]~45_combout\ <= NOT \counter_min[8]~45_combout\;
\ALT_INV_counter_min[6]~6_combout\ <= NOT \counter_min[6]~6_combout\;
\ALT_INV_counter_min[6]~_emulated_q\ <= NOT \counter_min[6]~_emulated_q\;
\ALT_INV_counter_min[7]~2_combout\ <= NOT \counter_min[7]~2_combout\;
\ALT_INV_counter_min[7]~_emulated_q\ <= NOT \counter_min[7]~_emulated_q\;
\ALT_INV_counter_min[31]~42_combout\ <= NOT \counter_min[31]~42_combout\;
\ALT_INV_counter_min[4]~14_combout\ <= NOT \counter_min[4]~14_combout\;
\ALT_INV_counter_min[4]~_emulated_q\ <= NOT \counter_min[4]~_emulated_q\;
\ALT_INV_counter_min[5]~10_combout\ <= NOT \counter_min[5]~10_combout\;
\ALT_INV_counter_min[5]~_emulated_q\ <= NOT \counter_min[5]~_emulated_q\;
\ALT_INV_counter_min[1]~26_combout\ <= NOT \counter_min[1]~26_combout\;
\ALT_INV_counter_min[1]~_emulated_q\ <= NOT \counter_min[1]~_emulated_q\;
\ALT_INV_counter_min[2]~22_combout\ <= NOT \counter_min[2]~22_combout\;
\ALT_INV_counter_min[2]~_emulated_q\ <= NOT \counter_min[2]~_emulated_q\;
\ALT_INV_counter_min[3]~18_combout\ <= NOT \counter_min[3]~18_combout\;
\ALT_INV_counter_min[3]~_emulated_q\ <= NOT \counter_min[3]~_emulated_q\;
\ALT_INV_counter_hr[0]~30_combout\ <= NOT \counter_hr[0]~30_combout\;
\ALT_INV_counter_hr[0]~_emulated_q\ <= NOT \counter_hr[0]~_emulated_q\;
\ALT_INV_counter_hr[1]~26_combout\ <= NOT \counter_hr[1]~26_combout\;
\ALT_INV_counter_hr[1]~_emulated_q\ <= NOT \counter_hr[1]~_emulated_q\;
\ALT_INV_counter_hr[8]~44_combout\ <= NOT \counter_hr[8]~44_combout\;
\ALT_INV_counter_hr[5]~10_combout\ <= NOT \counter_hr[5]~10_combout\;
\ALT_INV_counter_hr[5]~_emulated_q\ <= NOT \counter_hr[5]~_emulated_q\;
\ALT_INV_counter_hr[6]~6_combout\ <= NOT \counter_hr[6]~6_combout\;
\ALT_INV_counter_hr[6]~_emulated_q\ <= NOT \counter_hr[6]~_emulated_q\;
\ALT_INV_counter_hr[7]~2_combout\ <= NOT \counter_hr[7]~2_combout\;
\ALT_INV_counter_hr[7]~_emulated_q\ <= NOT \counter_hr[7]~_emulated_q\;
\ALT_INV_counter_hr[4]~14_combout\ <= NOT \counter_hr[4]~14_combout\;
\ALT_INV_counter_hr[4]~_emulated_q\ <= NOT \counter_hr[4]~_emulated_q\;
\ALT_INV_counter_hr[2]~22_combout\ <= NOT \counter_hr[2]~22_combout\;
\ALT_INV_counter_hr[2]~_emulated_q\ <= NOT \counter_hr[2]~_emulated_q\;
\ALT_INV_counter_hr[3]~18_combout\ <= NOT \counter_hr[3]~18_combout\;
\ALT_INV_counter_hr[3]~_emulated_q\ <= NOT \counter_hr[3]~_emulated_q\;
\ALT_INV_counter_hr[31]~40_combout\ <= NOT \counter_hr[31]~40_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
\ALT_INV_counter_min[8]~40_combout\ <= NOT \counter_min[8]~40_combout\;
\ALT_INV_Add10~0_combout\ <= NOT \Add10~0_combout\;
\ALT_INV_sec_display[4]~5_combout\ <= NOT \sec_display[4]~5_combout\;
\seconds_display|ALT_INV_HEX1[1]~2_combout\ <= NOT \seconds_display|HEX1[1]~2_combout\;
\ALT_INV_sec_1~0_combout\ <= NOT \sec_1~0_combout\;
\ALT_INV_LessThan10~1_combout\ <= NOT \LessThan10~1_combout\;
\ALT_INV_LessThan10~0_combout\ <= NOT \LessThan10~0_combout\;
\ALT_INV_sec_display[5]~4_combout\ <= NOT \sec_display[5]~4_combout\;
\ALT_INV_LessThan12~1_combout\ <= NOT \LessThan12~1_combout\;
\ALT_INV_LessThan12~0_combout\ <= NOT \LessThan12~0_combout\;
\ALT_INV_LessThan11~1_combout\ <= NOT \LessThan11~1_combout\;
\ALT_INV_LessThan11~0_combout\ <= NOT \LessThan11~0_combout\;
\seconds_display|ALT_INV_HEX1[1]~0_combout\ <= NOT \seconds_display|HEX1[1]~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_LessThan13~0_combout\ <= NOT \LessThan13~0_combout\;
\ALT_INV_LessThan14~3_combout\ <= NOT \LessThan14~3_combout\;
\ALT_INV_LessThan14~2_combout\ <= NOT \LessThan14~2_combout\;
\ALT_INV_LessThan14~1_combout\ <= NOT \LessThan14~1_combout\;
\ALT_INV_sec_display[5]~3_combout\ <= NOT \sec_display[5]~3_combout\;
\ALT_INV_sec_display[5]~2_combout\ <= NOT \sec_display[5]~2_combout\;
\ALT_INV_sec_display[5]~1_combout\ <= NOT \sec_display[5]~1_combout\;
\ALT_INV_sec_display[5]~0_combout\ <= NOT \sec_display[5]~0_combout\;
\ALT_INV_LessThan14~0_combout\ <= NOT \LessThan14~0_combout\;
\ALT_INV_Add8~0_combout\ <= NOT \Add8~0_combout\;
\ALT_INV_LessThan9~4_combout\ <= NOT \LessThan9~4_combout\;
\ALT_INV_min_display[4]~11_combout\ <= NOT \min_display[4]~11_combout\;
\ALT_INV_LessThan9~3_combout\ <= NOT \LessThan9~3_combout\;
\ALT_INV_min_display[5]~10_combout\ <= NOT \min_display[5]~10_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan7~2_combout\ <= NOT \LessThan7~2_combout\;
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
\ALT_INV_min_1~3_combout\ <= NOT \min_1~3_combout\;
\ALT_INV_min_1~2_combout\ <= NOT \min_1~2_combout\;
\minutes_display|ALT_INV_HEX1[1]~2_combout\ <= NOT \minutes_display|HEX1[1]~2_combout\;
\ALT_INV_min_display[5]~9_combout\ <= NOT \min_display[5]~9_combout\;
\ALT_INV_min_1~1_combout\ <= NOT \min_1~1_combout\;
\ALT_INV_min_1~0_combout\ <= NOT \min_1~0_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_LessThan7~1_combout\ <= NOT \LessThan7~1_combout\;
\ALT_INV_min_display[5]~8_combout\ <= NOT \min_display[5]~8_combout\;
\ALT_INV_min_display[5]~7_combout\ <= NOT \min_display[5]~7_combout\;
\minutes_display|ALT_INV_HEX1[1]~0_combout\ <= NOT \minutes_display|HEX1[1]~0_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
\ALT_INV_min_display[5]~6_combout\ <= NOT \min_display[5]~6_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_min_display[5]~5_combout\ <= NOT \min_display[5]~5_combout\;
\ALT_INV_LessThan9~2_combout\ <= NOT \LessThan9~2_combout\;
\ALT_INV_LessThan9~1_combout\ <= NOT \LessThan9~1_combout\;
\ALT_INV_min_display[5]~4_combout\ <= NOT \min_display[5]~4_combout\;
\ALT_INV_min_display[5]~3_combout\ <= NOT \min_display[5]~3_combout\;
\ALT_INV_min_display[5]~2_combout\ <= NOT \min_display[5]~2_combout\;
\ALT_INV_min_display[5]~1_combout\ <= NOT \min_display[5]~1_combout\;
ALT_INV_counter_min(8) <= NOT counter_min(8);
\ALT_INV_min_display[5]~0_combout\ <= NOT \min_display[5]~0_combout\;
\ALT_INV_LessThan9~0_combout\ <= NOT \LessThan9~0_combout\;
\ALT_INV_hr_display[4]~0_combout\ <= NOT \hr_display[4]~0_combout\;
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\hours_display|ALT_INV_HEX1~1_combout\ <= NOT \hours_display|HEX1~1_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
ALT_INV_counter_hr(8) <= NOT counter_hr(8);
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\dut|ALT_INV_Add0~61_sumout\ <= NOT \dut|Add0~61_sumout\;
\dut|ALT_INV_Add0~57_sumout\ <= NOT \dut|Add0~57_sumout\;
\ALT_INV_Add3~125_sumout\ <= NOT \Add3~125_sumout\;
\ALT_INV_Add3~121_sumout\ <= NOT \Add3~121_sumout\;
\ALT_INV_Add3~117_sumout\ <= NOT \Add3~117_sumout\;
\ALT_INV_Add3~113_sumout\ <= NOT \Add3~113_sumout\;
\ALT_INV_Add3~109_sumout\ <= NOT \Add3~109_sumout\;
\ALT_INV_Add3~105_sumout\ <= NOT \Add3~105_sumout\;
\ALT_INV_Add3~101_sumout\ <= NOT \Add3~101_sumout\;
\ALT_INV_Add3~97_sumout\ <= NOT \Add3~97_sumout\;
\ALT_INV_Add4~125_sumout\ <= NOT \Add4~125_sumout\;
\ALT_INV_Add4~121_sumout\ <= NOT \Add4~121_sumout\;
\ALT_INV_Add4~117_sumout\ <= NOT \Add4~117_sumout\;
\ALT_INV_Add4~113_sumout\ <= NOT \Add4~113_sumout\;
\ALT_INV_Add4~109_sumout\ <= NOT \Add4~109_sumout\;
\ALT_INV_Add4~105_sumout\ <= NOT \Add4~105_sumout\;
\ALT_INV_Add4~101_sumout\ <= NOT \Add4~101_sumout\;
\ALT_INV_Add4~97_sumout\ <= NOT \Add4~97_sumout\;
\dut|ALT_INV_cnt\(9) <= NOT \dut|cnt\(9);
\dut|ALT_INV_cnt\(10) <= NOT \dut|cnt\(10);
\dut|ALT_INV_cnt\(25) <= NOT \dut|cnt\(25);
\dut|ALT_INV_cnt\(14) <= NOT \dut|cnt\(14);
\dut|ALT_INV_cnt\(22) <= NOT \dut|cnt\(22);
\dut|ALT_INV_cnt\(21) <= NOT \dut|cnt\(21);
\dut|ALT_INV_cnt\(17) <= NOT \dut|cnt\(17);
\dut|ALT_INV_cnt\(13) <= NOT \dut|cnt\(13);
\dut|ALT_INV_cnt\(15) <= NOT \dut|cnt\(15);
\dut|ALT_INV_cnt\(16) <= NOT \dut|cnt\(16);
\dut|ALT_INV_cnt\(12) <= NOT \dut|cnt\(12);
\dut|ALT_INV_cnt\(11) <= NOT \dut|cnt\(11);
\dut|ALT_INV_cnt\(8) <= NOT \dut|cnt\(8);
\dut|ALT_INV_cnt\(7) <= NOT \dut|cnt\(7);
\dut|ALT_INV_cnt\(24) <= NOT \dut|cnt\(24);
\dut|ALT_INV_cnt\(0) <= NOT \dut|cnt\(0);
\dut|ALT_INV_cnt\(23) <= NOT \dut|cnt\(23);
\dut|ALT_INV_cnt\(20) <= NOT \dut|cnt\(20);
\dut|ALT_INV_cnt\(19) <= NOT \dut|cnt\(19);
\dut|ALT_INV_cnt\(18) <= NOT \dut|cnt\(18);
\dut|ALT_INV_cnt\(5) <= NOT \dut|cnt\(5);
\dut|ALT_INV_cnt\(6) <= NOT \dut|cnt\(6);
\dut|ALT_INV_cnt\(4) <= NOT \dut|cnt\(4);
\dut|ALT_INV_cnt\(3) <= NOT \dut|cnt\(3);
\dut|ALT_INV_cnt\(2) <= NOT \dut|cnt\(2);
\dut|ALT_INV_cnt\(1) <= NOT \dut|cnt\(1);
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_counter_sec(0) <= NOT counter_sec(0);
ALT_INV_counter_sec(30) <= NOT counter_sec(30);
ALT_INV_counter_sec(29) <= NOT counter_sec(29);
ALT_INV_counter_sec(28) <= NOT counter_sec(28);
ALT_INV_counter_sec(25) <= NOT counter_sec(25);
ALT_INV_counter_sec(27) <= NOT counter_sec(27);
ALT_INV_counter_sec(24) <= NOT counter_sec(24);
ALT_INV_counter_sec(26) <= NOT counter_sec(26);
ALT_INV_counter_sec(16) <= NOT counter_sec(16);
ALT_INV_counter_sec(15) <= NOT counter_sec(15);
ALT_INV_counter_sec(14) <= NOT counter_sec(14);
ALT_INV_counter_sec(13) <= NOT counter_sec(13);
ALT_INV_counter_sec(12) <= NOT counter_sec(12);
ALT_INV_counter_sec(11) <= NOT counter_sec(11);
ALT_INV_counter_sec(19) <= NOT counter_sec(19);
ALT_INV_counter_sec(9) <= NOT counter_sec(9);
ALT_INV_counter_sec(8) <= NOT counter_sec(8);
ALT_INV_counter_sec(7) <= NOT counter_sec(7);
ALT_INV_counter_sec(6) <= NOT counter_sec(6);
ALT_INV_counter_sec(10) <= NOT counter_sec(10);
ALT_INV_counter_sec(23) <= NOT counter_sec(23);
ALT_INV_counter_sec(22) <= NOT counter_sec(22);
ALT_INV_counter_sec(21) <= NOT counter_sec(21);
ALT_INV_counter_sec(20) <= NOT counter_sec(20);
ALT_INV_counter_sec(18) <= NOT counter_sec(18);
ALT_INV_counter_sec(17) <= NOT counter_sec(17);
ALT_INV_counter_sec(1) <= NOT counter_sec(1);
ALT_INV_counter_sec(2) <= NOT counter_sec(2);
ALT_INV_counter_sec(3) <= NOT counter_sec(3);
ALT_INV_counter_sec(5) <= NOT counter_sec(5);
ALT_INV_counter_sec(4) <= NOT counter_sec(4);
ALT_INV_counter_sec(31) <= NOT counter_sec(31);
ALT_INV_counter_min(30) <= NOT counter_min(30);
ALT_INV_counter_min(29) <= NOT counter_min(29);
ALT_INV_counter_min(28) <= NOT counter_min(28);
ALT_INV_counter_min(24) <= NOT counter_min(24);
ALT_INV_counter_min(25) <= NOT counter_min(25);
ALT_INV_counter_min(26) <= NOT counter_min(26);
ALT_INV_counter_min(27) <= NOT counter_min(27);
ALT_INV_counter_min(15) <= NOT counter_min(15);
ALT_INV_counter_min(16) <= NOT counter_min(16);
ALT_INV_counter_min(17) <= NOT counter_min(17);
ALT_INV_counter_min(18) <= NOT counter_min(18);
ALT_INV_counter_min(19) <= NOT counter_min(19);
ALT_INV_counter_min(21) <= NOT counter_min(21);
ALT_INV_counter_min(22) <= NOT counter_min(22);
ALT_INV_counter_min(23) <= NOT counter_min(23);
ALT_INV_counter_min(12) <= NOT counter_min(12);
ALT_INV_counter_min(11) <= NOT counter_min(11);
ALT_INV_counter_min(10) <= NOT counter_min(10);
ALT_INV_counter_min(20) <= NOT counter_min(20);
ALT_INV_counter_min(9) <= NOT counter_min(9);
ALT_INV_counter_min(13) <= NOT counter_min(13);
ALT_INV_counter_min(14) <= NOT counter_min(14);
ALT_INV_counter_min(31) <= NOT counter_min(31);
ALT_INV_counter_hr(27) <= NOT counter_hr(27);
ALT_INV_counter_hr(28) <= NOT counter_hr(28);
ALT_INV_counter_hr(29) <= NOT counter_hr(29);
ALT_INV_counter_hr(30) <= NOT counter_hr(30);
ALT_INV_counter_hr(26) <= NOT counter_hr(26);
ALT_INV_counter_hr(25) <= NOT counter_hr(25);
ALT_INV_counter_hr(12) <= NOT counter_hr(12);
ALT_INV_counter_hr(13) <= NOT counter_hr(13);
ALT_INV_counter_hr(14) <= NOT counter_hr(14);
ALT_INV_counter_hr(15) <= NOT counter_hr(15);
ALT_INV_counter_hr(16) <= NOT counter_hr(16);
ALT_INV_counter_hr(19) <= NOT counter_hr(19);
ALT_INV_counter_hr(20) <= NOT counter_hr(20);
ALT_INV_counter_hr(21) <= NOT counter_hr(21);
ALT_INV_counter_hr(22) <= NOT counter_hr(22);
ALT_INV_counter_hr(23) <= NOT counter_hr(23);
ALT_INV_counter_hr(24) <= NOT counter_hr(24);
ALT_INV_counter_hr(18) <= NOT counter_hr(18);
ALT_INV_counter_hr(17) <= NOT counter_hr(17);
ALT_INV_counter_hr(9) <= NOT counter_hr(9);
ALT_INV_counter_hr(10) <= NOT counter_hr(10);
ALT_INV_counter_hr(11) <= NOT counter_hr(11);
ALT_INV_counter_hr(31) <= NOT counter_hr(31);

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|ALT_INV_HEX1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr_display[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX1[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX0\(0),
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX0[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX0[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX0\(3),
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX0[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX0[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hours_display|HEX0[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX1[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX1[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX1~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX1[3]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX1\(4),
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX1[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX1[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX0\(0),
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX0[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX0[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX0\(3),
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX0[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX0[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \minutes_display|HEX0[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX1[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX1[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX1~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX1[3]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX1\(4),
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX1[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX1[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX0[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX0[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX0[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seconds_display|HEX0[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X34_Y1_N30
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \SW[4]~input_o\ ) + ( \SW[1]~input_o\ ) + ( !VCC ))
-- \Add0~26\ = CARRY(( \SW[4]~input_o\ ) + ( \SW[1]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	cin => GND,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X34_Y1_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \SW[5]~input_o\ ) + ( \SW[2]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~6\ = CARRY(( \SW[5]~input_o\ ) + ( \SW[2]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X34_Y1_N36
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\SW[4]~input_o\ $ (!\SW[3]~input_o\) ) + ( \SW[6]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( !\SW[4]~input_o\ $ (!\SW[3]~input_o\) ) + ( \SW[6]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X34_Y1_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\SW[5]~input_o\ $ (((!\SW[4]~input_o\) # (!\SW[3]~input_o\))) ) + ( \SW[7]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~10\ = CARRY(( !\SW[5]~input_o\ $ (((!\SW[4]~input_o\) # (!\SW[3]~input_o\))) ) + ( \SW[7]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X34_Y1_N42
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( (\SW[4]~input_o\ & (\SW[5]~input_o\ & \SW[3]~input_o\)) ) + ( \SW[6]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~22\ = CARRY(( (\SW[4]~input_o\ & (\SW[5]~input_o\ & \SW[3]~input_o\)) ) + ( \SW[6]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X34_Y1_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \SW[7]~input_o\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( \SW[7]~input_o\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: MLABCELL_X39_Y1_N57
\counter_hr[8]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[8]~45_combout\ = ( \KEY[0]~input_o\ & ( !\KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_hr[8]~45_combout\);

-- Location: MLABCELL_X39_Y2_N45
\counter_hr[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[6]~5_combout\ = ( \counter_hr[8]~45_combout\ & ( \KEY[0]~input_o\ & ( \Add0~17_sumout\ ) ) ) # ( !\counter_hr[8]~45_combout\ & ( \KEY[0]~input_o\ & ( \counter_hr[6]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_hr[6]~5_combout\,
	datad => \ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_counter_hr[8]~45_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_hr[6]~5_combout\);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X43_Y3_N30
\dut|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~41_sumout\ = SUM(( \dut|cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \dut|Add0~42\ = CARRY(( \dut|cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_cnt\(0),
	cin => GND,
	sumout => \dut|Add0~41_sumout\,
	cout => \dut|Add0~42\);

-- Location: LABCELL_X43_Y2_N0
\dut|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~97_sumout\ = SUM(( \dut|cnt\(10) ) + ( GND ) + ( \dut|Add0~102\ ))
-- \dut|Add0~98\ = CARRY(( \dut|cnt\(10) ) + ( GND ) + ( \dut|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_cnt\(10),
	cin => \dut|Add0~102\,
	sumout => \dut|Add0~97_sumout\,
	cout => \dut|Add0~98\);

-- Location: LABCELL_X43_Y2_N3
\dut|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~57_sumout\ = SUM(( \dut|cnt\(11) ) + ( GND ) + ( \dut|Add0~98\ ))
-- \dut|Add0~58\ = CARRY(( \dut|cnt\(11) ) + ( GND ) + ( \dut|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(11),
	cin => \dut|Add0~98\,
	sumout => \dut|Add0~57_sumout\,
	cout => \dut|Add0~58\);

-- Location: LABCELL_X43_Y3_N9
\dut|cnt[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|cnt[11]~feeder_combout\ = ( \dut|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dut|ALT_INV_Add0~57_sumout\,
	combout => \dut|cnt[11]~feeder_combout\);

-- Location: FF_X43_Y3_N11
\dut|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|cnt[11]~feeder_combout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(11));

-- Location: LABCELL_X43_Y2_N6
\dut|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~61_sumout\ = SUM(( \dut|cnt\(12) ) + ( GND ) + ( \dut|Add0~58\ ))
-- \dut|Add0~62\ = CARRY(( \dut|cnt\(12) ) + ( GND ) + ( \dut|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(12),
	cin => \dut|Add0~58\,
	sumout => \dut|Add0~61_sumout\,
	cout => \dut|Add0~62\);

-- Location: LABCELL_X43_Y3_N6
\dut|cnt[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|cnt[12]~feeder_combout\ = ( \dut|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dut|ALT_INV_Add0~61_sumout\,
	combout => \dut|cnt[12]~feeder_combout\);

-- Location: FF_X43_Y3_N8
\dut|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|cnt[12]~feeder_combout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(12));

-- Location: LABCELL_X43_Y2_N9
\dut|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~73_sumout\ = SUM(( \dut|cnt\(13) ) + ( GND ) + ( \dut|Add0~62\ ))
-- \dut|Add0~74\ = CARRY(( \dut|cnt\(13) ) + ( GND ) + ( \dut|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(13),
	cin => \dut|Add0~62\,
	sumout => \dut|Add0~73_sumout\,
	cout => \dut|Add0~74\);

-- Location: FF_X43_Y2_N11
\dut|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~73_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(13));

-- Location: LABCELL_X43_Y2_N12
\dut|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~89_sumout\ = SUM(( \dut|cnt\(14) ) + ( GND ) + ( \dut|Add0~74\ ))
-- \dut|Add0~90\ = CARRY(( \dut|cnt\(14) ) + ( GND ) + ( \dut|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_cnt\(14),
	cin => \dut|Add0~74\,
	sumout => \dut|Add0~89_sumout\,
	cout => \dut|Add0~90\);

-- Location: FF_X43_Y2_N14
\dut|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~89_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(14));

-- Location: LABCELL_X43_Y2_N15
\dut|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~69_sumout\ = SUM(( \dut|cnt\(15) ) + ( GND ) + ( \dut|Add0~90\ ))
-- \dut|Add0~70\ = CARRY(( \dut|cnt\(15) ) + ( GND ) + ( \dut|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(15),
	cin => \dut|Add0~90\,
	sumout => \dut|Add0~69_sumout\,
	cout => \dut|Add0~70\);

-- Location: FF_X43_Y3_N5
\dut|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \dut|Add0~69_sumout\,
	sclr => \dut|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(15));

-- Location: LABCELL_X43_Y2_N18
\dut|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~65_sumout\ = SUM(( \dut|cnt\(16) ) + ( GND ) + ( \dut|Add0~70\ ))
-- \dut|Add0~66\ = CARRY(( \dut|cnt\(16) ) + ( GND ) + ( \dut|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(16),
	cin => \dut|Add0~70\,
	sumout => \dut|Add0~65_sumout\,
	cout => \dut|Add0~66\);

-- Location: FF_X43_Y2_N20
\dut|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~65_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(16));

-- Location: LABCELL_X43_Y2_N21
\dut|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~77_sumout\ = SUM(( \dut|cnt\(17) ) + ( GND ) + ( \dut|Add0~66\ ))
-- \dut|Add0~78\ = CARRY(( \dut|cnt\(17) ) + ( GND ) + ( \dut|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_cnt\(17),
	cin => \dut|Add0~66\,
	sumout => \dut|Add0~77_sumout\,
	cout => \dut|Add0~78\);

-- Location: FF_X43_Y2_N23
\dut|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~77_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(17));

-- Location: LABCELL_X43_Y2_N24
\dut|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~25_sumout\ = SUM(( \dut|cnt\(18) ) + ( GND ) + ( \dut|Add0~78\ ))
-- \dut|Add0~26\ = CARRY(( \dut|cnt\(18) ) + ( GND ) + ( \dut|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(18),
	cin => \dut|Add0~78\,
	sumout => \dut|Add0~25_sumout\,
	cout => \dut|Add0~26\);

-- Location: FF_X43_Y2_N26
\dut|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~25_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(18));

-- Location: LABCELL_X43_Y2_N27
\dut|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~29_sumout\ = SUM(( \dut|cnt\(19) ) + ( GND ) + ( \dut|Add0~26\ ))
-- \dut|Add0~30\ = CARRY(( \dut|cnt\(19) ) + ( GND ) + ( \dut|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_cnt\(19),
	cin => \dut|Add0~26\,
	sumout => \dut|Add0~29_sumout\,
	cout => \dut|Add0~30\);

-- Location: FF_X43_Y2_N29
\dut|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~29_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(19));

-- Location: LABCELL_X43_Y2_N30
\dut|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~33_sumout\ = SUM(( \dut|cnt\(20) ) + ( GND ) + ( \dut|Add0~30\ ))
-- \dut|Add0~34\ = CARRY(( \dut|cnt\(20) ) + ( GND ) + ( \dut|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_cnt\(20),
	cin => \dut|Add0~30\,
	sumout => \dut|Add0~33_sumout\,
	cout => \dut|Add0~34\);

-- Location: FF_X43_Y2_N32
\dut|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~33_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(20));

-- Location: LABCELL_X43_Y2_N33
\dut|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~81_sumout\ = SUM(( \dut|cnt\(21) ) + ( GND ) + ( \dut|Add0~34\ ))
-- \dut|Add0~82\ = CARRY(( \dut|cnt\(21) ) + ( GND ) + ( \dut|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(21),
	cin => \dut|Add0~34\,
	sumout => \dut|Add0~81_sumout\,
	cout => \dut|Add0~82\);

-- Location: FF_X43_Y2_N35
\dut|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~81_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(21));

-- Location: LABCELL_X43_Y2_N36
\dut|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~85_sumout\ = SUM(( \dut|cnt\(22) ) + ( GND ) + ( \dut|Add0~82\ ))
-- \dut|Add0~86\ = CARRY(( \dut|cnt\(22) ) + ( GND ) + ( \dut|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(22),
	cin => \dut|Add0~82\,
	sumout => \dut|Add0~85_sumout\,
	cout => \dut|Add0~86\);

-- Location: FF_X43_Y2_N38
\dut|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~85_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(22));

-- Location: LABCELL_X43_Y2_N39
\dut|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~37_sumout\ = SUM(( \dut|cnt\(23) ) + ( GND ) + ( \dut|Add0~86\ ))
-- \dut|Add0~38\ = CARRY(( \dut|cnt\(23) ) + ( GND ) + ( \dut|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(23),
	cin => \dut|Add0~86\,
	sumout => \dut|Add0~37_sumout\,
	cout => \dut|Add0~38\);

-- Location: FF_X43_Y2_N41
\dut|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~37_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(23));

-- Location: LABCELL_X43_Y2_N42
\dut|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~45_sumout\ = SUM(( \dut|cnt\(24) ) + ( GND ) + ( \dut|Add0~38\ ))
-- \dut|Add0~46\ = CARRY(( \dut|cnt\(24) ) + ( GND ) + ( \dut|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_cnt\(24),
	cin => \dut|Add0~38\,
	sumout => \dut|Add0~45_sumout\,
	cout => \dut|Add0~46\);

-- Location: FF_X43_Y2_N44
\dut|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~45_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(24));

-- Location: LABCELL_X43_Y2_N45
\dut|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~93_sumout\ = SUM(( \dut|cnt\(25) ) + ( GND ) + ( \dut|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(25),
	cin => \dut|Add0~46\,
	sumout => \dut|Add0~93_sumout\);

-- Location: FF_X43_Y2_N47
\dut|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~93_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(25));

-- Location: LABCELL_X43_Y2_N48
\dut|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Equal0~0_combout\ = ( \dut|cnt\(17) & ( \dut|cnt\(13) & ( (\dut|cnt\(21) & (\dut|cnt\(25) & (\dut|cnt\(22) & \dut|cnt\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(21),
	datab => \dut|ALT_INV_cnt\(25),
	datac => \dut|ALT_INV_cnt\(22),
	datad => \dut|ALT_INV_cnt\(14),
	datae => \dut|ALT_INV_cnt\(17),
	dataf => \dut|ALT_INV_cnt\(13),
	combout => \dut|Equal0~0_combout\);

-- Location: LABCELL_X43_Y3_N0
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \dut|cnt\(15) & ( !\dut|cnt\(7) & ( (!\dut|cnt\(16) & (!\dut|cnt\(11) & (!\dut|cnt\(8) & \dut|cnt\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(16),
	datab => \dut|ALT_INV_cnt\(11),
	datac => \dut|ALT_INV_cnt\(8),
	datad => \dut|ALT_INV_cnt\(12),
	datae => \dut|ALT_INV_cnt\(15),
	dataf => \dut|ALT_INV_cnt\(7),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X43_Y3_N12
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \dut|cnt\(5) & ( \dut|cnt\(6) & ( (\dut|cnt\(1) & (\dut|cnt\(3) & (\dut|cnt\(2) & \dut|cnt\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(1),
	datab => \dut|ALT_INV_cnt\(3),
	datac => \dut|ALT_INV_cnt\(2),
	datad => \dut|ALT_INV_cnt\(4),
	datae => \dut|ALT_INV_cnt\(5),
	dataf => \dut|ALT_INV_cnt\(6),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X43_Y3_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\dut|cnt\(24) & ( \dut|cnt\(20) & ( (!\dut|cnt\(18) & (\dut|cnt\(0) & (\dut|cnt\(19) & \dut|cnt\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(18),
	datab => \dut|ALT_INV_cnt\(0),
	datac => \dut|ALT_INV_cnt\(19),
	datad => \dut|ALT_INV_cnt\(23),
	datae => \dut|ALT_INV_cnt\(24),
	dataf => \dut|ALT_INV_cnt\(20),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X43_Y3_N18
\dut|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Equal0~1_combout\ = ( !\dut|cnt\(9) & ( \Equal0~1_combout\ & ( (!\dut|cnt\(10) & (\dut|Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(10),
	datab => \dut|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \dut|ALT_INV_cnt\(9),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \dut|Equal0~1_combout\);

-- Location: FF_X43_Y3_N32
\dut|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~41_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(0));

-- Location: LABCELL_X43_Y3_N33
\dut|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~1_sumout\ = SUM(( \dut|cnt\(1) ) + ( GND ) + ( \dut|Add0~42\ ))
-- \dut|Add0~2\ = CARRY(( \dut|cnt\(1) ) + ( GND ) + ( \dut|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(1),
	cin => \dut|Add0~42\,
	sumout => \dut|Add0~1_sumout\,
	cout => \dut|Add0~2\);

-- Location: FF_X43_Y3_N35
\dut|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~1_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(1));

-- Location: LABCELL_X43_Y3_N36
\dut|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~5_sumout\ = SUM(( \dut|cnt\(2) ) + ( GND ) + ( \dut|Add0~2\ ))
-- \dut|Add0~6\ = CARRY(( \dut|cnt\(2) ) + ( GND ) + ( \dut|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_cnt\(2),
	cin => \dut|Add0~2\,
	sumout => \dut|Add0~5_sumout\,
	cout => \dut|Add0~6\);

-- Location: FF_X43_Y3_N38
\dut|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~5_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(2));

-- Location: LABCELL_X43_Y3_N39
\dut|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~9_sumout\ = SUM(( \dut|cnt\(3) ) + ( GND ) + ( \dut|Add0~6\ ))
-- \dut|Add0~10\ = CARRY(( \dut|cnt\(3) ) + ( GND ) + ( \dut|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(3),
	cin => \dut|Add0~6\,
	sumout => \dut|Add0~9_sumout\,
	cout => \dut|Add0~10\);

-- Location: FF_X43_Y3_N41
\dut|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~9_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(3));

-- Location: LABCELL_X43_Y3_N42
\dut|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~13_sumout\ = SUM(( \dut|cnt\(4) ) + ( GND ) + ( \dut|Add0~10\ ))
-- \dut|Add0~14\ = CARRY(( \dut|cnt\(4) ) + ( GND ) + ( \dut|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_cnt\(4),
	cin => \dut|Add0~10\,
	sumout => \dut|Add0~13_sumout\,
	cout => \dut|Add0~14\);

-- Location: FF_X43_Y3_N44
\dut|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~13_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(4));

-- Location: LABCELL_X43_Y3_N45
\dut|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~21_sumout\ = SUM(( \dut|cnt\(5) ) + ( GND ) + ( \dut|Add0~14\ ))
-- \dut|Add0~22\ = CARRY(( \dut|cnt\(5) ) + ( GND ) + ( \dut|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_cnt\(5),
	cin => \dut|Add0~14\,
	sumout => \dut|Add0~21_sumout\,
	cout => \dut|Add0~22\);

-- Location: FF_X43_Y3_N47
\dut|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~21_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(5));

-- Location: LABCELL_X43_Y3_N48
\dut|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~17_sumout\ = SUM(( \dut|cnt\(6) ) + ( GND ) + ( \dut|Add0~22\ ))
-- \dut|Add0~18\ = CARRY(( \dut|cnt\(6) ) + ( GND ) + ( \dut|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_cnt\(6),
	cin => \dut|Add0~22\,
	sumout => \dut|Add0~17_sumout\,
	cout => \dut|Add0~18\);

-- Location: FF_X43_Y3_N50
\dut|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~17_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(6));

-- Location: LABCELL_X43_Y3_N51
\dut|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~49_sumout\ = SUM(( \dut|cnt\(7) ) + ( GND ) + ( \dut|Add0~18\ ))
-- \dut|Add0~50\ = CARRY(( \dut|cnt\(7) ) + ( GND ) + ( \dut|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(7),
	cin => \dut|Add0~18\,
	sumout => \dut|Add0~49_sumout\,
	cout => \dut|Add0~50\);

-- Location: FF_X43_Y3_N53
\dut|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~49_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(7));

-- Location: LABCELL_X43_Y3_N54
\dut|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~53_sumout\ = SUM(( \dut|cnt\(8) ) + ( GND ) + ( \dut|Add0~50\ ))
-- \dut|Add0~54\ = CARRY(( \dut|cnt\(8) ) + ( GND ) + ( \dut|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_cnt\(8),
	cin => \dut|Add0~50\,
	sumout => \dut|Add0~53_sumout\,
	cout => \dut|Add0~54\);

-- Location: FF_X43_Y3_N56
\dut|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~53_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(8));

-- Location: LABCELL_X43_Y3_N57
\dut|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~101_sumout\ = SUM(( \dut|cnt\(9) ) + ( GND ) + ( \dut|Add0~54\ ))
-- \dut|Add0~102\ = CARRY(( \dut|cnt\(9) ) + ( GND ) + ( \dut|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_cnt\(9),
	cin => \dut|Add0~54\,
	sumout => \dut|Add0~101_sumout\,
	cout => \dut|Add0~102\);

-- Location: FF_X43_Y3_N59
\dut|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~101_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(9));

-- Location: FF_X43_Y2_N2
\dut|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dut|Add0~97_sumout\,
	sclr => \dut|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|cnt\(10));

-- Location: LABCELL_X43_Y2_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\dut|cnt\(17) & ( !\dut|cnt\(13) & ( (!\dut|cnt\(21) & (!\dut|cnt\(14) & (!\dut|cnt\(22) & !\dut|cnt\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(21),
	datab => \dut|ALT_INV_cnt\(14),
	datac => \dut|ALT_INV_cnt\(22),
	datad => \dut|ALT_INV_cnt\(25),
	datae => \dut|ALT_INV_cnt\(17),
	dataf => \dut|ALT_INV_cnt\(13),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X42_Y3_N48
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL(( \dut|cnt\(9) & ( \Equal0~3_combout\ & ( (\dut|cnt\(10) & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_cnt\(10),
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \dut|ALT_INV_cnt\(9),
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \rtl~0_combout\);

-- Location: MLABCELL_X39_Y2_N48
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( !counter_hr(28) & ( !counter_hr(30) & ( (!counter_hr(26) & (!counter_hr(25) & (!counter_hr(27) & !counter_hr(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(26),
	datab => ALT_INV_counter_hr(25),
	datac => ALT_INV_counter_hr(27),
	datad => ALT_INV_counter_hr(29),
	datae => ALT_INV_counter_hr(28),
	dataf => ALT_INV_counter_hr(30),
	combout => \LessThan2~4_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X39_Y1_N45
\counter_hr[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[0]~29_combout\ = ( \KEY[0]~input_o\ & ( (!\counter_hr[8]~45_combout\ & (\counter_hr[0]~29_combout\)) # (\counter_hr[8]~45_combout\ & ((\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[0]~29_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_counter_hr[8]~45_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_hr[0]~29_combout\);

-- Location: LABCELL_X40_Y2_N0
\Add4~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~125_sumout\ = SUM(( \counter_hr[0]~30_combout\ ) + ( VCC ) + ( !VCC ))
-- \Add4~126\ = CARRY(( \counter_hr[0]~30_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_hr[0]~30_combout\,
	cin => GND,
	sumout => \Add4~125_sumout\,
	cout => \Add4~126\);

-- Location: LABCELL_X37_Y1_N27
\counter_hr[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[5]~9_combout\ = ( \counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & \Add0~21_sumout\) ) ) # ( !\counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & \counter_hr[5]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_counter_hr[5]~9_combout\,
	dataf => \ALT_INV_counter_hr[8]~45_combout\,
	combout => \counter_hr[5]~9_combout\);

-- Location: MLABCELL_X39_Y1_N48
\counter_hr[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[4]~13_combout\ = ( \KEY[0]~input_o\ & ( (!\counter_hr[8]~45_combout\ & ((\counter_hr[4]~13_combout\))) # (\counter_hr[8]~45_combout\ & (\Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_counter_hr[4]~13_combout\,
	datad => \ALT_INV_counter_hr[8]~45_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_hr[4]~13_combout\);

-- Location: MLABCELL_X39_Y1_N6
\counter_hr[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[3]~17_combout\ = ( \counter_hr[3]~17_combout\ & ( (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\) # (\Add0~1_sumout\))) ) ) # ( !\counter_hr[3]~17_combout\ & ( (\counter_hr[8]~45_combout\ & (\KEY[0]~input_o\ & \Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[8]~45_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_counter_hr[3]~17_combout\,
	combout => \counter_hr[3]~17_combout\);

-- Location: LABCELL_X37_Y1_N36
\counter_hr[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[1]~25_combout\ = ( \counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & \Add0~25_sumout\) ) ) # ( !\counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & \counter_hr[1]~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_counter_hr[1]~25_combout\,
	dataf => \ALT_INV_counter_hr[8]~45_combout\,
	combout => \counter_hr[1]~25_combout\);

-- Location: LABCELL_X40_Y2_N3
\Add4~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~121_sumout\ = SUM(( \counter_hr[1]~26_combout\ ) + ( GND ) + ( \Add4~126\ ))
-- \Add4~122\ = CARRY(( \counter_hr[1]~26_combout\ ) + ( GND ) + ( \Add4~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	cin => \Add4~126\,
	sumout => \Add4~121_sumout\,
	cout => \Add4~122\);

-- Location: MLABCELL_X39_Y1_N51
\counter_hr[1]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[1]~27_combout\ = ( counter_hr(31) & ( !\counter_hr[1]~25_combout\ $ (!\Add4~121_sumout\) ) ) # ( !counter_hr(31) & ( !\counter_hr[1]~25_combout\ $ (((!\Add4~121_sumout\) # (!\LessThan2~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[1]~25_combout\,
	datac => \ALT_INV_Add4~121_sumout\,
	datad => \ALT_INV_LessThan2~10_combout\,
	dataf => ALT_INV_counter_hr(31),
	combout => \counter_hr[1]~27_combout\);

-- Location: MLABCELL_X39_Y1_N30
\counter_hr[8]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[8]~44_combout\ = ( \KEY[0]~input_o\ & ( \counter_hr[8]~45_combout\ ) ) # ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[8]~45_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_hr[8]~44_combout\);

-- Location: LABCELL_X37_Y2_N57
\LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = ( !counter_min(29) & ( !counter_min(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_counter_min(29),
	dataf => ALT_INV_counter_min(28),
	combout => \LessThan9~1_combout\);

-- Location: MLABCELL_X34_Y1_N48
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( GND ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X36_Y1_N57
\counter_min[8]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[8]~46_combout\ = ( \KEY[0]~input_o\ & ( (!\KEY[3]~input_o\ & \KEY[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[8]~46_combout\);

-- Location: LABCELL_X35_Y1_N54
\counter_min[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[7]~1_combout\ = ( \counter_min[7]~1_combout\ & ( \KEY[0]~input_o\ & ( (!\counter_min[8]~46_combout\) # (\Add0~13_sumout\) ) ) ) # ( !\counter_min[7]~1_combout\ & ( \KEY[0]~input_o\ & ( (\Add0~13_sumout\ & \counter_min[8]~46_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	datae => \ALT_INV_counter_min[7]~1_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[7]~1_combout\);

-- Location: LABCELL_X37_Y1_N39
\counter_min[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[6]~5_combout\ = ( \KEY[0]~input_o\ & ( (!\counter_min[8]~46_combout\ & ((\counter_min[6]~5_combout\))) # (\counter_min[8]~46_combout\ & (\Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_counter_min[6]~5_combout\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[6]~5_combout\);

-- Location: LABCELL_X35_Y1_N12
\counter_min[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[0]~29_combout\ = ( \counter_min[8]~46_combout\ & ( \KEY[0]~input_o\ & ( \SW[0]~input_o\ ) ) ) # ( !\counter_min[8]~46_combout\ & ( \KEY[0]~input_o\ & ( \counter_min[0]~29_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_counter_min[0]~29_combout\,
	datae => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[0]~29_combout\);

-- Location: LABCELL_X37_Y3_N0
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( \counter_min[0]~30_combout\ ) + ( VCC ) + ( !VCC ))
-- \Add3~126\ = CARRY(( \counter_min[0]~30_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_min[0]~30_combout\,
	cin => GND,
	sumout => \Add3~125_sumout\,
	cout => \Add3~126\);

-- Location: LABCELL_X36_Y1_N18
\counter_min[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[0]~31_combout\ = ( \LessThan1~3_combout\ & ( !\counter_min[0]~29_combout\ $ (!\Add3~125_sumout\) ) ) # ( !\LessThan1~3_combout\ & ( !\counter_min[0]~29_combout\ $ (((!\Add3~125_sumout\) # (!counter_min(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[0]~29_combout\,
	datac => \ALT_INV_Add3~125_sumout\,
	datad => ALT_INV_counter_min(31),
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \counter_min[0]~31_combout\);

-- Location: LABCELL_X37_Y1_N30
\counter_min[8]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[8]~45_combout\ = ( \KEY[0]~input_o\ & ( \counter_min[8]~46_combout\ ) ) # ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[8]~45_combout\);

-- Location: LABCELL_X42_Y4_N0
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( counter_sec(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~126\ = CARRY(( counter_sec(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(0),
	cin => GND,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: LABCELL_X43_Y4_N21
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( counter_sec(3) & ( counter_sec(1) & ( (counter_sec(4) & (counter_sec(5) & ((counter_sec(2)) # (counter_sec(0))))) ) ) ) # ( counter_sec(3) & ( !counter_sec(1) & ( (counter_sec(4) & (counter_sec(5) & counter_sec(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(4),
	datab => ALT_INV_counter_sec(5),
	datac => ALT_INV_counter_sec(0),
	datad => ALT_INV_counter_sec(2),
	datae => ALT_INV_counter_sec(3),
	dataf => ALT_INV_counter_sec(1),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X42_Y3_N36
\sec_display[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_display[5]~3_combout\ = ( !counter_sec(27) & ( !counter_sec(25) & ( (!counter_sec(26) & !counter_sec(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(26),
	datad => ALT_INV_counter_sec(24),
	datae => ALT_INV_counter_sec(27),
	dataf => ALT_INV_counter_sec(25),
	combout => \sec_display[5]~3_combout\);

-- Location: LABCELL_X43_Y4_N0
\sec_display[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_display[5]~1_combout\ = ( !counter_sec(9) & ( !counter_sec(10) & ( (!counter_sec(7) & (!counter_sec(19) & (!counter_sec(6) & !counter_sec(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(7),
	datab => ALT_INV_counter_sec(19),
	datac => ALT_INV_counter_sec(6),
	datad => ALT_INV_counter_sec(8),
	datae => ALT_INV_counter_sec(9),
	dataf => ALT_INV_counter_sec(10),
	combout => \sec_display[5]~1_combout\);

-- Location: LABCELL_X43_Y4_N42
\sec_display[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_display[5]~0_combout\ = ( !counter_sec(21) & ( !counter_sec(20) & ( (!counter_sec(17) & (!counter_sec(18) & (!counter_sec(22) & !counter_sec(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(17),
	datab => ALT_INV_counter_sec(18),
	datac => ALT_INV_counter_sec(22),
	datad => ALT_INV_counter_sec(23),
	datae => ALT_INV_counter_sec(21),
	dataf => ALT_INV_counter_sec(20),
	combout => \sec_display[5]~0_combout\);

-- Location: LABCELL_X42_Y3_N57
\LessThan14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan14~1_combout\ = ( !counter_sec(29) & ( !counter_sec(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_counter_sec(29),
	dataf => ALT_INV_counter_sec(28),
	combout => \LessThan14~1_combout\);

-- Location: LABCELL_X43_Y4_N6
\sec_display[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_display[5]~2_combout\ = ( !counter_sec(16) & ( !counter_sec(13) & ( (!counter_sec(15) & (!counter_sec(14) & (!counter_sec(11) & !counter_sec(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(15),
	datab => ALT_INV_counter_sec(14),
	datac => ALT_INV_counter_sec(11),
	datad => ALT_INV_counter_sec(12),
	datae => ALT_INV_counter_sec(16),
	dataf => ALT_INV_counter_sec(13),
	combout => \sec_display[5]~2_combout\);

-- Location: LABCELL_X43_Y4_N54
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \LessThan14~1_combout\ & ( \sec_display[5]~2_combout\ & ( (!counter_sec(30) & (\sec_display[5]~3_combout\ & (\sec_display[5]~1_combout\ & \sec_display[5]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(30),
	datab => \ALT_INV_sec_display[5]~3_combout\,
	datac => \ALT_INV_sec_display[5]~1_combout\,
	datad => \ALT_INV_sec_display[5]~0_combout\,
	datae => \ALT_INV_LessThan14~1_combout\,
	dataf => \ALT_INV_sec_display[5]~2_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X42_Y3_N42
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~0_combout\ & ( (!counter_sec(31) & \LessThan0~1_combout\) ) ) # ( !\LessThan0~0_combout\ & ( !counter_sec(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(31),
	datac => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X40_Y3_N3
\counter_sec[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_sec[31]~0_combout\ = ( \KEY[2]~input_o\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \counter_sec[31]~0_combout\);

-- Location: FF_X42_Y4_N2
\counter_sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~125_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(0));

-- Location: LABCELL_X42_Y4_N3
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( counter_sec(1) ) + ( GND ) + ( \Add2~126\ ))
-- \Add2~22\ = CARRY(( counter_sec(1) ) + ( GND ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sec(1),
	cin => \Add2~126\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X42_Y4_N5
\counter_sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(1));

-- Location: LABCELL_X42_Y4_N6
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( counter_sec(2) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( counter_sec(2) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(2),
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X42_Y4_N8
\counter_sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(2));

-- Location: LABCELL_X42_Y4_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( counter_sec(3) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( counter_sec(3) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(3),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X42_Y4_N11
\counter_sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(3));

-- Location: LABCELL_X42_Y4_N12
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( counter_sec(4) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~6\ = CARRY(( counter_sec(4) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(4),
	cin => \Add2~14\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X43_Y4_N53
\counter_sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \Add2~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	sload => VCC,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(4));

-- Location: LABCELL_X42_Y4_N15
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( counter_sec(5) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( counter_sec(5) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(5),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X43_Y4_N32
\counter_sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \Add2~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	sload => VCC,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(5));

-- Location: LABCELL_X42_Y4_N18
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( counter_sec(6) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~54\ = CARRY(( counter_sec(6) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(6),
	cin => \Add2~10\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X42_Y4_N20
\counter_sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~53_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(6));

-- Location: LABCELL_X42_Y4_N21
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( counter_sec(7) ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( counter_sec(7) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(7),
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X42_Y4_N23
\counter_sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~57_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(7));

-- Location: LABCELL_X42_Y4_N24
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( counter_sec(8) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( counter_sec(8) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(8),
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X42_Y4_N26
\counter_sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~61_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(8));

-- Location: LABCELL_X42_Y4_N27
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( counter_sec(9) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( counter_sec(9) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(9),
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X42_Y4_N29
\counter_sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~65_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(9));

-- Location: LABCELL_X42_Y4_N30
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( counter_sec(10) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~50\ = CARRY(( counter_sec(10) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sec(10),
	cin => \Add2~66\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X42_Y4_N32
\counter_sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~49_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(10));

-- Location: LABCELL_X42_Y4_N33
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( counter_sec(11) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~74\ = CARRY(( counter_sec(11) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(11),
	cin => \Add2~50\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X42_Y4_N35
\counter_sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~73_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(11));

-- Location: LABCELL_X42_Y4_N36
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( counter_sec(12) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( counter_sec(12) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(12),
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X42_Y4_N38
\counter_sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~77_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(12));

-- Location: LABCELL_X42_Y4_N39
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( counter_sec(13) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~82\ = CARRY(( counter_sec(13) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(13),
	cin => \Add2~78\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X42_Y4_N41
\counter_sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~81_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(13));

-- Location: LABCELL_X42_Y4_N42
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( counter_sec(14) ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~86\ = CARRY(( counter_sec(14) ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(14),
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X42_Y4_N44
\counter_sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~85_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(14));

-- Location: LABCELL_X42_Y4_N45
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( counter_sec(15) ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~90\ = CARRY(( counter_sec(15) ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(15),
	cin => \Add2~86\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X42_Y4_N47
\counter_sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~89_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(15));

-- Location: LABCELL_X42_Y4_N48
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( counter_sec(16) ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~94\ = CARRY(( counter_sec(16) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(16),
	cin => \Add2~90\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X42_Y4_N50
\counter_sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~93_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(16));

-- Location: LABCELL_X42_Y4_N51
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( counter_sec(17) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~26\ = CARRY(( counter_sec(17) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sec(17),
	cin => \Add2~94\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X42_Y4_N53
\counter_sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(17));

-- Location: LABCELL_X42_Y4_N54
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( counter_sec(18) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( counter_sec(18) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(18),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X42_Y4_N56
\counter_sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(18));

-- Location: LABCELL_X42_Y4_N57
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( counter_sec(19) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~70\ = CARRY(( counter_sec(19) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(19),
	cin => \Add2~30\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X42_Y4_N59
\counter_sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~69_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(19));

-- Location: LABCELL_X42_Y3_N0
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( counter_sec(20) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~34\ = CARRY(( counter_sec(20) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(20),
	cin => \Add2~70\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X42_Y3_N2
\counter_sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(20));

-- Location: LABCELL_X42_Y3_N3
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( counter_sec(21) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( counter_sec(21) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sec(21),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X42_Y3_N5
\counter_sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(21));

-- Location: LABCELL_X42_Y3_N6
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( counter_sec(22) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( counter_sec(22) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(22),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X42_Y3_N8
\counter_sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~41_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(22));

-- Location: LABCELL_X42_Y3_N9
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( counter_sec(23) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( counter_sec(23) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(23),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X42_Y3_N11
\counter_sec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~45_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(23));

-- Location: LABCELL_X42_Y3_N12
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( counter_sec(24) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~102\ = CARRY(( counter_sec(24) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(24),
	cin => \Add2~46\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X42_Y3_N14
\counter_sec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~101_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(24));

-- Location: LABCELL_X42_Y3_N15
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( counter_sec(25) ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~110\ = CARRY(( counter_sec(25) ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(25),
	cin => \Add2~102\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X42_Y3_N17
\counter_sec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~109_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(25));

-- Location: LABCELL_X42_Y3_N18
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( counter_sec(26) ) + ( GND ) + ( \Add2~110\ ))
-- \Add2~98\ = CARRY(( counter_sec(26) ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(26),
	cin => \Add2~110\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X42_Y3_N20
\counter_sec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~97_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(26));

-- Location: LABCELL_X42_Y3_N21
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( counter_sec(27) ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~106\ = CARRY(( counter_sec(27) ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sec(27),
	cin => \Add2~98\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X42_Y3_N23
\counter_sec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~105_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(27));

-- Location: LABCELL_X42_Y3_N24
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( counter_sec(28) ) + ( GND ) + ( \Add2~106\ ))
-- \Add2~114\ = CARRY(( counter_sec(28) ) + ( GND ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sec(28),
	cin => \Add2~106\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X42_Y3_N26
\counter_sec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~113_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(28));

-- Location: LABCELL_X42_Y3_N27
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( counter_sec(29) ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~118\ = CARRY(( counter_sec(29) ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(29),
	cin => \Add2~114\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X42_Y3_N29
\counter_sec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~117_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(29));

-- Location: LABCELL_X42_Y3_N30
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( counter_sec(30) ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~122\ = CARRY(( counter_sec(30) ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(30),
	cin => \Add2~118\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X42_Y3_N32
\counter_sec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~121_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(30));

-- Location: LABCELL_X42_Y3_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( counter_sec(31) ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(31),
	cin => \Add2~122\,
	sumout => \Add2~1_sumout\);

-- Location: FF_X42_Y3_N35
\counter_sec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add2~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \LessThan0~2_combout\,
	ena => \counter_sec[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(31));

-- Location: LABCELL_X37_Y4_N6
\counter_min[7]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[7]~43_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~0_combout\ & ( (!counter_sec(31) & \KEY[2]~input_o\) ) ) ) # ( \LessThan0~1_combout\ & ( !\LessThan0~0_combout\ & ( (!counter_sec(31) & \KEY[2]~input_o\) ) ) ) # ( !\LessThan0~1_combout\ 
-- & ( !\LessThan0~0_combout\ & ( (!counter_sec(31) & \KEY[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(31),
	datac => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \counter_min[7]~43_combout\);

-- Location: FF_X36_Y1_N20
\counter_min[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min[0]~31_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_min[0]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N21
\counter_min[0]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[0]~30_combout\ = ( \counter_min[0]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (!\counter_min[0]~29_combout\)) # (\counter_min[8]~46_combout\ & ((\SW[0]~input_o\))))) ) ) # ( !\counter_min[0]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (\counter_min[0]~29_combout\)) # (\counter_min[8]~46_combout\ & ((\SW[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100100010000000110010001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[0]~29_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_counter_min[0]~_emulated_q\,
	combout => \counter_min[0]~30_combout\);

-- Location: LABCELL_X35_Y1_N48
\counter_min[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[2]~21_combout\ = ( \counter_min[8]~46_combout\ & ( \KEY[0]~input_o\ & ( \Add0~5_sumout\ ) ) ) # ( !\counter_min[8]~46_combout\ & ( \KEY[0]~input_o\ & ( \counter_min[2]~21_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_counter_min[2]~21_combout\,
	datae => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[2]~21_combout\);

-- Location: LABCELL_X37_Y1_N45
\counter_min[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[1]~25_combout\ = ( \KEY[0]~input_o\ & ( (!\counter_min[8]~46_combout\ & ((\counter_min[1]~25_combout\))) # (\counter_min[8]~46_combout\ & (\Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_counter_min[1]~25_combout\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[1]~25_combout\);

-- Location: LABCELL_X37_Y3_N3
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( \counter_min[1]~26_combout\ ) + ( GND ) + ( \Add3~126\ ))
-- \Add3~106\ = CARRY(( \counter_min[1]~26_combout\ ) + ( GND ) + ( \Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_min[1]~26_combout\,
	cin => \Add3~126\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: LABCELL_X36_Y1_N30
\counter_min[1]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[1]~27_combout\ = ( \LessThan1~3_combout\ & ( !\counter_min[1]~25_combout\ $ (!\Add3~105_sumout\) ) ) # ( !\LessThan1~3_combout\ & ( !\counter_min[1]~25_combout\ $ (((!\Add3~105_sumout\) # (!counter_min(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[1]~25_combout\,
	datac => \ALT_INV_Add3~105_sumout\,
	datad => ALT_INV_counter_min(31),
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \counter_min[1]~27_combout\);

-- Location: FF_X36_Y1_N32
\counter_min[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min[1]~27_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_min[1]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N33
\counter_min[1]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[1]~26_combout\ = ( \counter_min[1]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (!\counter_min[1]~25_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~25_sumout\))))) ) ) # ( !\counter_min[1]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (\counter_min[1]~25_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100100010000000110010001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[1]~25_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_counter_min[1]~_emulated_q\,
	combout => \counter_min[1]~26_combout\);

-- Location: LABCELL_X37_Y3_N6
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( \counter_min[2]~22_combout\ ) + ( GND ) + ( \Add3~106\ ))
-- \Add3~102\ = CARRY(( \counter_min[2]~22_combout\ ) + ( GND ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_min[2]~22_combout\,
	cin => \Add3~106\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: LABCELL_X36_Y1_N12
\counter_min[2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[2]~23_combout\ = ( \LessThan1~3_combout\ & ( !\counter_min[2]~21_combout\ $ (!\Add3~101_sumout\) ) ) # ( !\LessThan1~3_combout\ & ( !\counter_min[2]~21_combout\ $ (((!\Add3~101_sumout\) # (!counter_min(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_min[2]~21_combout\,
	datac => \ALT_INV_Add3~101_sumout\,
	datad => ALT_INV_counter_min(31),
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \counter_min[2]~23_combout\);

-- Location: FF_X36_Y1_N14
\counter_min[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min[2]~23_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_min[2]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N15
\counter_min[2]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[2]~22_combout\ = ( \counter_min[2]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & ((!\counter_min[2]~21_combout\))) # (\counter_min[8]~46_combout\ & (\Add0~5_sumout\)))) ) ) # ( !\counter_min[2]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & ((\counter_min[2]~21_combout\))) # (\counter_min[8]~46_combout\ & (\Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100001100000001010000110000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_counter_min[2]~21_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_counter_min[2]~_emulated_q\,
	combout => \counter_min[2]~22_combout\);

-- Location: LABCELL_X36_Y1_N54
\counter_min[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[3]~17_combout\ = ( \KEY[0]~input_o\ & ( (!\counter_min[8]~46_combout\ & (\counter_min[3]~17_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[3]~17_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[3]~17_combout\);

-- Location: LABCELL_X37_Y3_N9
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( \counter_min[3]~18_combout\ ) + ( GND ) + ( \Add3~102\ ))
-- \Add3~98\ = CARRY(( \counter_min[3]~18_combout\ ) + ( GND ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[3]~18_combout\,
	cin => \Add3~102\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: LABCELL_X36_Y1_N42
\counter_min[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[3]~19_combout\ = ( \LessThan1~3_combout\ & ( !\counter_min[3]~17_combout\ $ (!\Add3~97_sumout\) ) ) # ( !\LessThan1~3_combout\ & ( !\counter_min[3]~17_combout\ $ (((!\Add3~97_sumout\) # (!counter_min(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[3]~17_combout\,
	datac => \ALT_INV_Add3~97_sumout\,
	datad => ALT_INV_counter_min(31),
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \counter_min[3]~19_combout\);

-- Location: FF_X36_Y1_N44
\counter_min[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min[3]~19_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_min[3]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N45
\counter_min[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[3]~18_combout\ = ( \counter_min[3]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (!\counter_min[3]~17_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~1_sumout\))))) ) ) # ( !\counter_min[3]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (\counter_min[3]~17_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100100010000000110010001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[3]~17_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_counter_min[3]~_emulated_q\,
	combout => \counter_min[3]~18_combout\);

-- Location: LABCELL_X35_Y1_N42
\counter_min[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[4]~13_combout\ = ( \counter_min[8]~46_combout\ & ( \KEY[0]~input_o\ & ( \Add0~9_sumout\ ) ) ) # ( !\counter_min[8]~46_combout\ & ( \KEY[0]~input_o\ & ( \counter_min[4]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_counter_min[4]~13_combout\,
	datae => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[4]~13_combout\);

-- Location: LABCELL_X37_Y3_N12
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( \counter_min[4]~14_combout\ ) + ( GND ) + ( \Add3~98\ ))
-- \Add3~114\ = CARRY(( \counter_min[4]~14_combout\ ) + ( GND ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_min[4]~14_combout\,
	cin => \Add3~98\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: LABCELL_X36_Y1_N39
\counter_min[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[4]~15_combout\ = ( \LessThan1~3_combout\ & ( !\counter_min[4]~13_combout\ $ (!\Add3~113_sumout\) ) ) # ( !\LessThan1~3_combout\ & ( !\counter_min[4]~13_combout\ $ (((!\Add3~113_sumout\) # (!counter_min(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_min[4]~13_combout\,
	datac => \ALT_INV_Add3~113_sumout\,
	datad => ALT_INV_counter_min(31),
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \counter_min[4]~15_combout\);

-- Location: FF_X36_Y1_N41
\counter_min[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min[4]~15_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_min[4]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N36
\counter_min[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[4]~14_combout\ = ( \counter_min[4]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (!\counter_min[4]~13_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~9_sumout\))))) ) ) # ( !\counter_min[4]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (\counter_min[4]~13_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010101000100000001010100010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_counter_min[4]~13_combout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_counter_min[4]~_emulated_q\,
	combout => \counter_min[4]~14_combout\);

-- Location: LABCELL_X37_Y1_N54
\counter_min[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[5]~9_combout\ = ( \KEY[0]~input_o\ & ( (!\counter_min[8]~46_combout\ & ((\counter_min[5]~9_combout\))) # (\counter_min[8]~46_combout\ & (\Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_counter_min[5]~9_combout\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[5]~9_combout\);

-- Location: LABCELL_X37_Y3_N15
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( \counter_min[5]~10_combout\ ) + ( GND ) + ( \Add3~114\ ))
-- \Add3~110\ = CARRY(( \counter_min[5]~10_combout\ ) + ( GND ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_min[5]~10_combout\,
	cin => \Add3~114\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: LABCELL_X36_Y1_N24
\counter_min[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[5]~11_combout\ = ( \LessThan1~3_combout\ & ( !\counter_min[5]~9_combout\ $ (!\Add3~109_sumout\) ) ) # ( !\LessThan1~3_combout\ & ( !\counter_min[5]~9_combout\ $ (((!counter_min(31)) # (!\Add3~109_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_min[5]~9_combout\,
	datac => ALT_INV_counter_min(31),
	datad => \ALT_INV_Add3~109_sumout\,
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \counter_min[5]~11_combout\);

-- Location: FF_X36_Y1_N26
\counter_min[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min[5]~11_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_min[5]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N27
\counter_min[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[5]~10_combout\ = ( \counter_min[5]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & ((!\counter_min[5]~9_combout\))) # (\counter_min[8]~46_combout\ & (\Add0~21_sumout\)))) ) ) # ( !\counter_min[5]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & ((\counter_min[5]~9_combout\))) # (\counter_min[8]~46_combout\ & (\Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100001100000001010000110000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~21_sumout\,
	datab => \ALT_INV_counter_min[5]~9_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_counter_min[8]~46_combout\,
	dataf => \ALT_INV_counter_min[5]~_emulated_q\,
	combout => \counter_min[5]~10_combout\);

-- Location: LABCELL_X36_Y1_N6
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \counter_min[4]~14_combout\ & ( \counter_min[5]~10_combout\ & ( (\counter_min[3]~18_combout\ & (((\counter_min[0]~30_combout\ & \counter_min[1]~26_combout\)) # (\counter_min[2]~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[0]~30_combout\,
	datab => \ALT_INV_counter_min[2]~22_combout\,
	datac => \ALT_INV_counter_min[1]~26_combout\,
	datad => \ALT_INV_counter_min[3]~18_combout\,
	datae => \ALT_INV_counter_min[4]~14_combout\,
	dataf => \ALT_INV_counter_min[5]~10_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X37_Y1_N24
\min_display[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~0_combout\ = ( !counter_min(20) & ( (!counter_min(9) & (!counter_min(14) & !counter_min(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(9),
	datac => ALT_INV_counter_min(14),
	datad => ALT_INV_counter_min(13),
	dataf => ALT_INV_counter_min(20),
	combout => \min_display[5]~0_combout\);

-- Location: LABCELL_X37_Y1_N12
\min_display[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~2_combout\ = ( !counter_min(19) & ( !counter_min(16) & ( (!counter_min(18) & (!counter_min(17) & (!counter_min(15) & !counter_min(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(18),
	datab => ALT_INV_counter_min(17),
	datac => ALT_INV_counter_min(15),
	datad => ALT_INV_counter_min(21),
	datae => ALT_INV_counter_min(19),
	dataf => ALT_INV_counter_min(16),
	combout => \min_display[5]~2_combout\);

-- Location: LABCELL_X37_Y1_N18
\min_display[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~1_combout\ = ( !counter_min(11) & ( !counter_min(12) & ( (!counter_min(8) & (!counter_min(10) & (!counter_min(22) & !counter_min(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(8),
	datab => ALT_INV_counter_min(10),
	datac => ALT_INV_counter_min(22),
	datad => ALT_INV_counter_min(23),
	datae => ALT_INV_counter_min(11),
	dataf => ALT_INV_counter_min(12),
	combout => \min_display[5]~1_combout\);

-- Location: LABCELL_X37_Y1_N42
\min_display[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~5_combout\ = ( \min_display[5]~1_combout\ & ( (!\counter_min[6]~6_combout\ & (\min_display[5]~0_combout\ & \min_display[5]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_min[6]~6_combout\,
	datac => \ALT_INV_min_display[5]~0_combout\,
	datad => \ALT_INV_min_display[5]~2_combout\,
	dataf => \ALT_INV_min_display[5]~1_combout\,
	combout => \min_display[5]~5_combout\);

-- Location: LABCELL_X37_Y2_N48
\min_display[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~3_combout\ = ( !counter_min(27) & ( !counter_min(26) & ( (!counter_min(25) & !counter_min(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(25),
	datad => ALT_INV_counter_min(24),
	datae => ALT_INV_counter_min(27),
	dataf => ALT_INV_counter_min(26),
	combout => \min_display[5]~3_combout\);

-- Location: LABCELL_X36_Y1_N3
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( \LessThan9~1_combout\ & ( !\counter_min[7]~2_combout\ & ( (!\LessThan1~1_combout\ & (\min_display[5]~5_combout\ & (\min_display[5]~3_combout\ & !counter_min(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_min_display[5]~5_combout\,
	datac => \ALT_INV_min_display[5]~3_combout\,
	datad => ALT_INV_counter_min(30),
	datae => \ALT_INV_LessThan9~1_combout\,
	dataf => \ALT_INV_counter_min[7]~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LABCELL_X37_Y3_N18
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( \counter_min[6]~6_combout\ ) + ( GND ) + ( \Add3~110\ ))
-- \Add3~122\ = CARRY(( \counter_min[6]~6_combout\ ) + ( GND ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_min[6]~6_combout\,
	cin => \Add3~110\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: LABCELL_X37_Y1_N57
\counter_min[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[6]~7_combout\ = ( \Add3~121_sumout\ & ( !\counter_min[6]~5_combout\ $ (((!\LessThan1~3_combout\ & !counter_min(31)))) ) ) # ( !\Add3~121_sumout\ & ( \counter_min[6]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100111100000011110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan1~3_combout\,
	datac => \ALT_INV_counter_min[6]~5_combout\,
	datad => ALT_INV_counter_min(31),
	dataf => \ALT_INV_Add3~121_sumout\,
	combout => \counter_min[6]~7_combout\);

-- Location: FF_X37_Y1_N59
\counter_min[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min[6]~7_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_min[6]~_emulated_q\);

-- Location: LABCELL_X37_Y1_N6
\counter_min[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[6]~6_combout\ = ( \counter_min[8]~46_combout\ & ( (\KEY[0]~input_o\ & \Add0~17_sumout\) ) ) # ( !\counter_min[8]~46_combout\ & ( (\KEY[0]~input_o\ & (!\counter_min[6]~5_combout\ $ (!\counter_min[6]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_counter_min[6]~5_combout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_counter_min[6]~_emulated_q\,
	dataf => \ALT_INV_counter_min[8]~46_combout\,
	combout => \counter_min[6]~6_combout\);

-- Location: LABCELL_X37_Y3_N21
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( \counter_min[7]~2_combout\ ) + ( GND ) + ( \Add3~122\ ))
-- \Add3~118\ = CARRY(( \counter_min[7]~2_combout\ ) + ( GND ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_min[7]~2_combout\,
	cin => \Add3~122\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: LABCELL_X36_Y1_N48
\counter_min[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[7]~3_combout\ = ( \LessThan1~3_combout\ & ( !\counter_min[7]~1_combout\ $ (!\Add3~117_sumout\) ) ) # ( !\LessThan1~3_combout\ & ( !\counter_min[7]~1_combout\ $ (((!\Add3~117_sumout\) # (!counter_min(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[7]~1_combout\,
	datac => \ALT_INV_Add3~117_sumout\,
	datad => ALT_INV_counter_min(31),
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \counter_min[7]~3_combout\);

-- Location: FF_X36_Y1_N50
\counter_min[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min[7]~3_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_min[7]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N51
\counter_min[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[7]~2_combout\ = ( \counter_min[7]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (!\counter_min[7]~1_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~13_sumout\))))) ) ) # ( !\counter_min[7]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_min[8]~46_combout\ & (\counter_min[7]~1_combout\)) # (\counter_min[8]~46_combout\ & ((\Add0~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000100000001001100100000001000110010000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[7]~1_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_counter_min[8]~46_combout\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_counter_min[7]~_emulated_q\,
	combout => \counter_min[7]~2_combout\);

-- Location: LABCELL_X37_Y1_N48
\min_display[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~4_combout\ = ( \min_display[5]~3_combout\ & ( \min_display[5]~2_combout\ & ( (!\counter_min[7]~2_combout\ & (!\counter_min[6]~6_combout\ & (\min_display[5]~0_combout\ & \min_display[5]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[7]~2_combout\,
	datab => \ALT_INV_counter_min[6]~6_combout\,
	datac => \ALT_INV_min_display[5]~0_combout\,
	datad => \ALT_INV_min_display[5]~1_combout\,
	datae => \ALT_INV_min_display[5]~3_combout\,
	dataf => \ALT_INV_min_display[5]~2_combout\,
	combout => \min_display[5]~4_combout\);

-- Location: LABCELL_X37_Y3_N24
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( counter_min(8) ) + ( GND ) + ( \Add3~118\ ))
-- \Add3~22\ = CARRY(( counter_min(8) ) + ( GND ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(8),
	cin => \Add3~118\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X36_Y3_N48
\counter_min~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min~44_combout\ = ( \LessThan1~1_combout\ & ( \Add3~21_sumout\ & ( counter_min(31) ) ) ) # ( !\LessThan1~1_combout\ & ( \Add3~21_sumout\ & ( ((\LessThan9~1_combout\ & (\min_display[5]~4_combout\ & !counter_min(30)))) # (counter_min(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010111010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(31),
	datab => \ALT_INV_LessThan9~1_combout\,
	datac => \ALT_INV_min_display[5]~4_combout\,
	datad => ALT_INV_counter_min(30),
	datae => \ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_Add3~21_sumout\,
	combout => \counter_min~44_combout\);

-- Location: FF_X36_Y3_N50
\counter_min[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_min~44_combout\,
	clrn => \ALT_INV_counter_min[8]~45_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(8));

-- Location: LABCELL_X37_Y3_N27
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( counter_min(9) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~14\ = CARRY(( counter_min(9) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(9),
	cin => \Add3~22\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X36_Y3_N3
\counter_min[31]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[31]~42_combout\ = ( \KEY[2]~input_o\ & ( \KEY[0]~input_o\ & ( !\KEY[3]~input_o\ ) ) ) # ( \KEY[2]~input_o\ & ( !\KEY[0]~input_o\ ) ) # ( !\KEY[2]~input_o\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[31]~42_combout\);

-- Location: LABCELL_X37_Y2_N36
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( \min_display[5]~4_combout\ & ( \LessThan9~1_combout\ & ( (!counter_min(31) & ((counter_min(30)) # (\LessThan1~1_combout\))) ) ) ) # ( !\min_display[5]~4_combout\ & ( \LessThan9~1_combout\ & ( !counter_min(31) ) ) ) # ( 
-- \min_display[5]~4_combout\ & ( !\LessThan9~1_combout\ & ( !counter_min(31) ) ) ) # ( !\min_display[5]~4_combout\ & ( !\LessThan9~1_combout\ & ( !counter_min(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datac => ALT_INV_counter_min(31),
	datad => ALT_INV_counter_min(30),
	datae => \ALT_INV_min_display[5]~4_combout\,
	dataf => \ALT_INV_LessThan9~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: FF_X37_Y3_N29
\counter_min[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~13_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(9));

-- Location: LABCELL_X37_Y3_N30
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( counter_min(10) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~26\ = CARRY(( counter_min(10) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_min(10),
	cin => \Add3~14\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X37_Y3_N32
\counter_min[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~25_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(10));

-- Location: LABCELL_X37_Y3_N33
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( counter_min(11) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( counter_min(11) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(11),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X37_Y3_N35
\counter_min[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~29_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(11));

-- Location: LABCELL_X37_Y3_N36
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( counter_min(12) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( counter_min(12) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(12),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X37_Y3_N38
\counter_min[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~33_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(12));

-- Location: LABCELL_X37_Y3_N39
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( counter_min(13) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~10\ = CARRY(( counter_min(13) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_min(13),
	cin => \Add3~34\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X37_Y3_N41
\counter_min[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~9_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(13));

-- Location: LABCELL_X37_Y3_N42
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( counter_min(14) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~6\ = CARRY(( counter_min(14) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_min(14),
	cin => \Add3~10\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X37_Y3_N44
\counter_min[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~5_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(14));

-- Location: LABCELL_X37_Y3_N45
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( counter_min(15) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~66\ = CARRY(( counter_min(15) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(15),
	cin => \Add3~6\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: FF_X37_Y3_N47
\counter_min[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~65_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(15));

-- Location: LABCELL_X37_Y3_N48
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( counter_min(16) ) + ( GND ) + ( \Add3~66\ ))
-- \Add3~62\ = CARRY(( counter_min(16) ) + ( GND ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(16),
	cin => \Add3~66\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: FF_X37_Y3_N50
\counter_min[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~61_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(16));

-- Location: LABCELL_X37_Y3_N51
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( counter_min(17) ) + ( GND ) + ( \Add3~62\ ))
-- \Add3~58\ = CARRY(( counter_min(17) ) + ( GND ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(17),
	cin => \Add3~62\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: FF_X37_Y3_N53
\counter_min[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~57_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(17));

-- Location: LABCELL_X37_Y3_N54
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( counter_min(18) ) + ( GND ) + ( \Add3~58\ ))
-- \Add3~54\ = CARRY(( counter_min(18) ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(18),
	cin => \Add3~58\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: FF_X37_Y3_N56
\counter_min[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~53_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(18));

-- Location: LABCELL_X37_Y3_N57
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( counter_min(19) ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~50\ = CARRY(( counter_min(19) ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_min(19),
	cin => \Add3~54\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: FF_X37_Y3_N59
\counter_min[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~49_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(19));

-- Location: LABCELL_X37_Y2_N0
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( counter_min(20) ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~18\ = CARRY(( counter_min(20) ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_min(20),
	cin => \Add3~50\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X37_Y2_N2
\counter_min[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~17_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(20));

-- Location: LABCELL_X37_Y2_N3
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( counter_min(21) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~46\ = CARRY(( counter_min(21) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(21),
	cin => \Add3~18\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: FF_X37_Y2_N5
\counter_min[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~45_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(21));

-- Location: LABCELL_X37_Y2_N6
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( counter_min(22) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~42\ = CARRY(( counter_min(22) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(22),
	cin => \Add3~46\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X37_Y2_N8
\counter_min[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~41_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(22));

-- Location: LABCELL_X37_Y2_N9
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( counter_min(23) ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~38\ = CARRY(( counter_min(23) ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_min(23),
	cin => \Add3~42\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X37_Y2_N11
\counter_min[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~37_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(23));

-- Location: LABCELL_X37_Y2_N12
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( counter_min(24) ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~82\ = CARRY(( counter_min(24) ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_min(24),
	cin => \Add3~38\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: FF_X37_Y2_N14
\counter_min[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~81_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(24));

-- Location: LABCELL_X37_Y2_N15
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( counter_min(25) ) + ( GND ) + ( \Add3~82\ ))
-- \Add3~78\ = CARRY(( counter_min(25) ) + ( GND ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(25),
	cin => \Add3~82\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: FF_X37_Y2_N17
\counter_min[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~77_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(25));

-- Location: LABCELL_X37_Y2_N18
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( counter_min(26) ) + ( GND ) + ( \Add3~78\ ))
-- \Add3~74\ = CARRY(( counter_min(26) ) + ( GND ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(26),
	cin => \Add3~78\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: FF_X37_Y2_N20
\counter_min[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~73_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(26));

-- Location: LABCELL_X37_Y2_N21
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( counter_min(27) ) + ( GND ) + ( \Add3~74\ ))
-- \Add3~70\ = CARRY(( counter_min(27) ) + ( GND ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_min(27),
	cin => \Add3~74\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: FF_X37_Y2_N23
\counter_min[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~69_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(27));

-- Location: LABCELL_X37_Y2_N24
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( counter_min(28) ) + ( GND ) + ( \Add3~70\ ))
-- \Add3~86\ = CARRY(( counter_min(28) ) + ( GND ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(28),
	cin => \Add3~70\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: FF_X37_Y2_N26
\counter_min[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~85_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(28));

-- Location: LABCELL_X37_Y2_N27
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( counter_min(29) ) + ( GND ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( counter_min(29) ) + ( GND ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(29),
	cin => \Add3~86\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: FF_X37_Y2_N29
\counter_min[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~89_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(29));

-- Location: LABCELL_X37_Y2_N30
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( counter_min(30) ) + ( GND ) + ( \Add3~90\ ))
-- \Add3~94\ = CARRY(( counter_min(30) ) + ( GND ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_min(30),
	cin => \Add3~90\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: FF_X37_Y2_N32
\counter_min[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~93_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(30));

-- Location: LABCELL_X37_Y2_N33
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( counter_min(31) ) + ( GND ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(31),
	cin => \Add3~94\,
	sumout => \Add3~1_sumout\);

-- Location: FF_X37_Y2_N35
\counter_min[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add3~1_sumout\,
	clrn => \ALT_INV_counter_min[31]~42_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \counter_min[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min(31));

-- Location: LABCELL_X40_Y1_N42
\counter_hr[31]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[31]~40_combout\ = ( \LessThan0~0_combout\ & ( (!counter_sec(31) & (\LessThan0~1_combout\ & \KEY[3]~input_o\)) ) ) # ( !\LessThan0~0_combout\ & ( (!counter_sec(31) & \KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(31),
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \counter_hr[31]~40_combout\);

-- Location: LABCELL_X40_Y1_N54
\counter_hr[31]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[31]~41_combout\ = ( \min_display[5]~4_combout\ & ( \counter_hr[31]~40_combout\ & ( (!counter_min(31) & (((!\LessThan9~1_combout\) # (\LessThan1~1_combout\)) # (counter_min(30)))) ) ) ) # ( !\min_display[5]~4_combout\ & ( 
-- \counter_hr[31]~40_combout\ & ( !counter_min(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(31),
	datab => ALT_INV_counter_min(30),
	datac => \ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_LessThan9~1_combout\,
	datae => \ALT_INV_min_display[5]~4_combout\,
	dataf => \ALT_INV_counter_hr[31]~40_combout\,
	combout => \counter_hr[31]~41_combout\);

-- Location: FF_X39_Y1_N53
\counter_hr[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr[1]~27_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_hr[1]~_emulated_q\);

-- Location: MLABCELL_X39_Y1_N33
\counter_hr[1]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[1]~26_combout\ = ( \counter_hr[1]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\ & ((!\counter_hr[1]~25_combout\))) # (\counter_hr[8]~45_combout\ & (\Add0~25_sumout\)))) ) ) # ( !\counter_hr[1]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\ & ((\counter_hr[1]~25_combout\))) # (\counter_hr[8]~45_combout\ & (\Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_counter_hr[8]~45_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_counter_hr[1]~25_combout\,
	dataf => \ALT_INV_counter_hr[1]~_emulated_q\,
	combout => \counter_hr[1]~26_combout\);

-- Location: LABCELL_X40_Y2_N6
\Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~101_sumout\ = SUM(( \counter_hr[2]~22_combout\ ) + ( GND ) + ( \Add4~122\ ))
-- \Add4~102\ = CARRY(( \counter_hr[2]~22_combout\ ) + ( GND ) + ( \Add4~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_hr[2]~22_combout\,
	cin => \Add4~122\,
	sumout => \Add4~101_sumout\,
	cout => \Add4~102\);

-- Location: LABCELL_X37_Y1_N3
\counter_hr[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[2]~21_combout\ = ( \counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & \Add0~5_sumout\) ) ) # ( !\counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & \counter_hr[2]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_counter_hr[2]~21_combout\,
	dataf => \ALT_INV_counter_hr[8]~45_combout\,
	combout => \counter_hr[2]~21_combout\);

-- Location: MLABCELL_X39_Y1_N42
\counter_hr[2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[2]~23_combout\ = ( \counter_hr[2]~21_combout\ & ( (!\Add4~101_sumout\) # ((!counter_hr(31) & !\LessThan2~10_combout\)) ) ) # ( !\counter_hr[2]~21_combout\ & ( (\Add4~101_sumout\ & ((\LessThan2~10_combout\) # (counter_hr(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010111111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~101_sumout\,
	datac => ALT_INV_counter_hr(31),
	datad => \ALT_INV_LessThan2~10_combout\,
	dataf => \ALT_INV_counter_hr[2]~21_combout\,
	combout => \counter_hr[2]~23_combout\);

-- Location: FF_X39_Y1_N43
\counter_hr[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr[2]~23_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_hr[2]~_emulated_q\);

-- Location: MLABCELL_X39_Y1_N9
\counter_hr[2]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[2]~22_combout\ = ( \counter_hr[2]~21_combout\ & ( (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\ & ((!\counter_hr[2]~_emulated_q\))) # (\counter_hr[8]~45_combout\ & (\Add0~5_sumout\)))) ) ) # ( !\counter_hr[2]~21_combout\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\ & ((\counter_hr[2]~_emulated_q\))) # (\counter_hr[8]~45_combout\ & (\Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_counter_hr[8]~45_combout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_counter_hr[2]~_emulated_q\,
	dataf => \ALT_INV_counter_hr[2]~21_combout\,
	combout => \counter_hr[2]~22_combout\);

-- Location: LABCELL_X40_Y2_N9
\Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~97_sumout\ = SUM(( \counter_hr[3]~18_combout\ ) + ( GND ) + ( \Add4~102\ ))
-- \Add4~98\ = CARRY(( \counter_hr[3]~18_combout\ ) + ( GND ) + ( \Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_hr[3]~18_combout\,
	cin => \Add4~102\,
	sumout => \Add4~97_sumout\,
	cout => \Add4~98\);

-- Location: MLABCELL_X39_Y1_N27
\counter_hr[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[3]~19_combout\ = ( counter_hr(31) & ( !\counter_hr[3]~17_combout\ $ (!\Add4~97_sumout\) ) ) # ( !counter_hr(31) & ( !\counter_hr[3]~17_combout\ $ (((!\LessThan2~10_combout\) # (!\Add4~97_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[3]~17_combout\,
	datac => \ALT_INV_LessThan2~10_combout\,
	datad => \ALT_INV_Add4~97_sumout\,
	dataf => ALT_INV_counter_hr(31),
	combout => \counter_hr[3]~19_combout\);

-- Location: FF_X39_Y1_N29
\counter_hr[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr[3]~19_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_hr[3]~_emulated_q\);

-- Location: MLABCELL_X39_Y1_N24
\counter_hr[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[3]~18_combout\ = ( \counter_hr[8]~45_combout\ & ( (\Add0~1_sumout\ & \KEY[0]~input_o\) ) ) # ( !\counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & (!\counter_hr[3]~17_combout\ $ (!\counter_hr[3]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_counter_hr[3]~17_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_counter_hr[3]~_emulated_q\,
	dataf => \ALT_INV_counter_hr[8]~45_combout\,
	combout => \counter_hr[3]~18_combout\);

-- Location: LABCELL_X40_Y2_N12
\Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~105_sumout\ = SUM(( \counter_hr[4]~14_combout\ ) + ( GND ) + ( \Add4~98\ ))
-- \Add4~106\ = CARRY(( \counter_hr[4]~14_combout\ ) + ( GND ) + ( \Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_hr[4]~14_combout\,
	cin => \Add4~98\,
	sumout => \Add4~105_sumout\,
	cout => \Add4~106\);

-- Location: MLABCELL_X39_Y1_N39
\counter_hr[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[4]~15_combout\ = ( counter_hr(31) & ( !\counter_hr[4]~13_combout\ $ (!\Add4~105_sumout\) ) ) # ( !counter_hr(31) & ( !\counter_hr[4]~13_combout\ $ (((!\Add4~105_sumout\) # (!\LessThan2~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[4]~13_combout\,
	datac => \ALT_INV_Add4~105_sumout\,
	datad => \ALT_INV_LessThan2~10_combout\,
	dataf => ALT_INV_counter_hr(31),
	combout => \counter_hr[4]~15_combout\);

-- Location: FF_X39_Y1_N41
\counter_hr[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr[4]~15_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_hr[4]~_emulated_q\);

-- Location: MLABCELL_X39_Y1_N36
\counter_hr[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[4]~14_combout\ = ( \counter_hr[8]~45_combout\ & ( (\Add0~9_sumout\ & \KEY[0]~input_o\) ) ) # ( !\counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & (!\counter_hr[4]~13_combout\ $ (!\counter_hr[4]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[4]~13_combout\,
	datab => \ALT_INV_counter_hr[4]~_emulated_q\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_counter_hr[8]~45_combout\,
	combout => \counter_hr[4]~14_combout\);

-- Location: LABCELL_X40_Y2_N15
\Add4~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~117_sumout\ = SUM(( \counter_hr[5]~10_combout\ ) + ( GND ) + ( \Add4~106\ ))
-- \Add4~118\ = CARRY(( \counter_hr[5]~10_combout\ ) + ( GND ) + ( \Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_hr[5]~10_combout\,
	cin => \Add4~106\,
	sumout => \Add4~117_sumout\,
	cout => \Add4~118\);

-- Location: MLABCELL_X39_Y1_N18
\counter_hr[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[5]~11_combout\ = ( \Add4~117_sumout\ & ( !\counter_hr[5]~9_combout\ $ (((!counter_hr(31) & !\LessThan2~10_combout\))) ) ) # ( !\Add4~117_sumout\ & ( \counter_hr[5]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100110011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[5]~9_combout\,
	datac => ALT_INV_counter_hr(31),
	datad => \ALT_INV_LessThan2~10_combout\,
	dataf => \ALT_INV_Add4~117_sumout\,
	combout => \counter_hr[5]~11_combout\);

-- Location: FF_X39_Y1_N20
\counter_hr[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr[5]~11_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_hr[5]~_emulated_q\);

-- Location: MLABCELL_X39_Y1_N21
\counter_hr[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[5]~10_combout\ = ( \counter_hr[5]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\ & (!\counter_hr[5]~9_combout\)) # (\counter_hr[8]~45_combout\ & ((\Add0~21_sumout\))))) ) ) # ( !\counter_hr[5]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\ & (\counter_hr[5]~9_combout\)) # (\counter_hr[8]~45_combout\ & ((\Add0~21_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010101000000010001010100000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_counter_hr[5]~9_combout\,
	datac => \ALT_INV_counter_hr[8]~45_combout\,
	datad => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_counter_hr[5]~_emulated_q\,
	combout => \counter_hr[5]~10_combout\);

-- Location: LABCELL_X40_Y1_N48
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !counter_hr(8) & ( !counter_hr(24) & ( (!counter_hr(20) & (!counter_hr(23) & (!counter_hr(21) & !counter_hr(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(20),
	datab => ALT_INV_counter_hr(23),
	datac => ALT_INV_counter_hr(21),
	datad => ALT_INV_counter_hr(22),
	datae => ALT_INV_counter_hr(8),
	dataf => ALT_INV_counter_hr(24),
	combout => \LessThan2~1_combout\);

-- Location: MLABCELL_X39_Y2_N36
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !counter_hr(10) & ( !counter_hr(17) & ( (!counter_hr(9) & (!counter_hr(11) & !counter_hr(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(9),
	datac => ALT_INV_counter_hr(11),
	datad => ALT_INV_counter_hr(18),
	datae => ALT_INV_counter_hr(10),
	dataf => ALT_INV_counter_hr(17),
	combout => \LessThan2~0_combout\);

-- Location: MLABCELL_X39_Y2_N30
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( !counter_hr(12) & ( !counter_hr(15) & ( (!counter_hr(13) & (!counter_hr(19) & (!counter_hr(16) & !counter_hr(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(13),
	datab => ALT_INV_counter_hr(19),
	datac => ALT_INV_counter_hr(16),
	datad => ALT_INV_counter_hr(14),
	datae => ALT_INV_counter_hr(12),
	dataf => ALT_INV_counter_hr(15),
	combout => \LessThan2~2_combout\);

-- Location: MLABCELL_X39_Y2_N15
\LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = ( \LessThan2~2_combout\ & ( (\LessThan2~1_combout\ & \LessThan2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~2_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LABCELL_X37_Y1_N9
\counter_hr[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[7]~1_combout\ = ( \counter_hr[7]~1_combout\ & ( (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\) # (\Add0~13_sumout\))) ) ) # ( !\counter_hr[7]~1_combout\ & ( (\KEY[0]~input_o\ & (\counter_hr[8]~45_combout\ & \Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_counter_hr[8]~45_combout\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_counter_hr[7]~1_combout\,
	combout => \counter_hr[7]~1_combout\);

-- Location: LABCELL_X40_Y2_N18
\Add4~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~113_sumout\ = SUM(( \counter_hr[6]~6_combout\ ) + ( GND ) + ( \Add4~118\ ))
-- \Add4~114\ = CARRY(( \counter_hr[6]~6_combout\ ) + ( GND ) + ( \Add4~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_hr[6]~6_combout\,
	cin => \Add4~118\,
	sumout => \Add4~113_sumout\,
	cout => \Add4~114\);

-- Location: LABCELL_X40_Y2_N21
\Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~109_sumout\ = SUM(( \counter_hr[7]~2_combout\ ) + ( GND ) + ( \Add4~114\ ))
-- \Add4~110\ = CARRY(( \counter_hr[7]~2_combout\ ) + ( GND ) + ( \Add4~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_hr[7]~2_combout\,
	cin => \Add4~114\,
	sumout => \Add4~109_sumout\,
	cout => \Add4~110\);

-- Location: MLABCELL_X39_Y1_N15
\counter_hr[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[7]~3_combout\ = ( counter_hr(31) & ( !\counter_hr[7]~1_combout\ $ (!\Add4~109_sumout\) ) ) # ( !counter_hr(31) & ( !\counter_hr[7]~1_combout\ $ (((!\Add4~109_sumout\) # (!\LessThan2~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[7]~1_combout\,
	datac => \ALT_INV_Add4~109_sumout\,
	datad => \ALT_INV_LessThan2~10_combout\,
	dataf => ALT_INV_counter_hr(31),
	combout => \counter_hr[7]~3_combout\);

-- Location: FF_X39_Y1_N17
\counter_hr[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr[7]~3_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_hr[7]~_emulated_q\);

-- Location: MLABCELL_X39_Y1_N12
\counter_hr[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[7]~2_combout\ = ( \counter_hr[7]~_emulated_q\ & ( (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\ & (!\counter_hr[7]~1_combout\)) # (\counter_hr[8]~45_combout\ & ((\Add0~13_sumout\))))) ) ) # ( !\counter_hr[7]~_emulated_q\ & ( 
-- (\KEY[0]~input_o\ & ((!\counter_hr[8]~45_combout\ & (\counter_hr[7]~1_combout\)) # (\counter_hr[8]~45_combout\ & ((\Add0~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010101000000010001010100000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_counter_hr[7]~1_combout\,
	datac => \ALT_INV_counter_hr[8]~45_combout\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_counter_hr[7]~_emulated_q\,
	combout => \counter_hr[7]~2_combout\);

-- Location: MLABCELL_X39_Y2_N24
\LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = ( !\LessThan2~7_combout\ & ( !\counter_hr[7]~2_combout\ & ( (!\counter_hr[6]~6_combout\ & (\LessThan2~4_combout\ & (!\counter_hr[5]~10_combout\ & \LessThan2~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[6]~6_combout\,
	datab => \ALT_INV_LessThan2~4_combout\,
	datac => \ALT_INV_counter_hr[5]~10_combout\,
	datad => \ALT_INV_LessThan2~9_combout\,
	datae => \ALT_INV_LessThan2~7_combout\,
	dataf => \ALT_INV_counter_hr[7]~2_combout\,
	combout => \LessThan2~10_combout\);

-- Location: MLABCELL_X39_Y1_N0
\counter_hr[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[0]~31_combout\ = ( counter_hr(31) & ( !\counter_hr[0]~29_combout\ $ (!\Add4~125_sumout\) ) ) # ( !counter_hr(31) & ( !\counter_hr[0]~29_combout\ $ (((!\Add4~125_sumout\) # (!\LessThan2~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[0]~29_combout\,
	datac => \ALT_INV_Add4~125_sumout\,
	datad => \ALT_INV_LessThan2~10_combout\,
	dataf => ALT_INV_counter_hr(31),
	combout => \counter_hr[0]~31_combout\);

-- Location: FF_X39_Y1_N2
\counter_hr[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr[0]~31_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_hr[0]~_emulated_q\);

-- Location: MLABCELL_X39_Y1_N3
\counter_hr[0]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[0]~30_combout\ = ( \counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & \SW[0]~input_o\) ) ) # ( !\counter_hr[8]~45_combout\ & ( (\KEY[0]~input_o\ & (!\counter_hr[0]~29_combout\ $ (!\counter_hr[0]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_counter_hr[0]~29_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_counter_hr[0]~_emulated_q\,
	dataf => \ALT_INV_counter_hr[8]~45_combout\,
	combout => \counter_hr[0]~30_combout\);

-- Location: MLABCELL_X39_Y1_N54
\LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = ( \counter_hr[3]~18_combout\ & ( \counter_hr[4]~14_combout\ ) ) # ( !\counter_hr[3]~18_combout\ & ( (\counter_hr[0]~30_combout\ & (\counter_hr[2]~22_combout\ & (\counter_hr[1]~26_combout\ & \counter_hr[4]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[0]~30_combout\,
	datab => \ALT_INV_counter_hr[2]~22_combout\,
	datac => \ALT_INV_counter_hr[1]~26_combout\,
	datad => \ALT_INV_counter_hr[4]~14_combout\,
	dataf => \ALT_INV_counter_hr[3]~18_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LABCELL_X40_Y2_N24
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( counter_hr(8) ) + ( GND ) + ( \Add4~110\ ))
-- \Add4~26\ = CARRY(( counter_hr(8) ) + ( GND ) + ( \Add4~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_hr(8),
	cin => \Add4~110\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: MLABCELL_X39_Y2_N6
\counter_hr~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr~43_combout\ = ( \Add4~25_sumout\ & ( ((\LessThan2~4_combout\ & (\LessThan2~3_combout\ & !\LessThan2~7_combout\))) # (counter_hr(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(31),
	datab => \ALT_INV_LessThan2~4_combout\,
	datac => \ALT_INV_LessThan2~3_combout\,
	datad => \ALT_INV_LessThan2~7_combout\,
	dataf => \ALT_INV_Add4~25_sumout\,
	combout => \counter_hr~43_combout\);

-- Location: FF_X39_Y2_N8
\counter_hr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr~43_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(8));

-- Location: LABCELL_X40_Y2_N27
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( counter_hr(9) ) + ( GND ) + ( \Add4~26\ ))
-- \Add4~14\ = CARRY(( counter_hr(9) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(9),
	cin => \Add4~26\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: MLABCELL_X39_Y2_N18
\counter_min[8]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_min[8]~40_combout\ = ( \KEY[0]~input_o\ & ( !\KEY[2]~input_o\ ) ) # ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \counter_min[8]~40_combout\);

-- Location: LABCELL_X40_Y1_N45
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( !\counter_hr[5]~10_combout\ & ( (\LessThan2~0_combout\ & (\LessThan2~1_combout\ & \LessThan2~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan2~0_combout\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_LessThan2~2_combout\,
	dataf => \ALT_INV_counter_hr[5]~10_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LABCELL_X40_Y1_N36
\LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = ( \LessThan2~5_combout\ & ( \counter_hr[7]~2_combout\ & ( !counter_hr(31) ) ) ) # ( !\LessThan2~5_combout\ & ( \counter_hr[7]~2_combout\ & ( !counter_hr(31) ) ) ) # ( \LessThan2~5_combout\ & ( !\counter_hr[7]~2_combout\ & ( 
-- (!counter_hr(31) & (((!\LessThan2~4_combout\) # (\LessThan2~7_combout\)) # (\counter_hr[6]~6_combout\))) ) ) ) # ( !\LessThan2~5_combout\ & ( !\counter_hr[7]~2_combout\ & ( !counter_hr(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[6]~6_combout\,
	datab => \ALT_INV_LessThan2~7_combout\,
	datac => ALT_INV_counter_hr(31),
	datad => \ALT_INV_LessThan2~4_combout\,
	datae => \ALT_INV_LessThan2~5_combout\,
	dataf => \ALT_INV_counter_hr[7]~2_combout\,
	combout => \LessThan2~8_combout\);

-- Location: FF_X40_Y2_N29
\counter_hr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~13_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(9));

-- Location: LABCELL_X40_Y2_N30
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( counter_hr(10) ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~10\ = CARRY(( counter_hr(10) ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_hr(10),
	cin => \Add4~14\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X40_Y2_N32
\counter_hr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~9_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(10));

-- Location: LABCELL_X40_Y2_N33
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( counter_hr(11) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~6\ = CARRY(( counter_hr(11) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(11),
	cin => \Add4~10\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X40_Y2_N35
\counter_hr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~5_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(11));

-- Location: LABCELL_X40_Y2_N36
\Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~69_sumout\ = SUM(( counter_hr(12) ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~70\ = CARRY(( counter_hr(12) ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_hr(12),
	cin => \Add4~6\,
	sumout => \Add4~69_sumout\,
	cout => \Add4~70\);

-- Location: FF_X40_Y2_N38
\counter_hr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~69_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(12));

-- Location: LABCELL_X40_Y2_N39
\Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~65_sumout\ = SUM(( counter_hr(13) ) + ( GND ) + ( \Add4~70\ ))
-- \Add4~66\ = CARRY(( counter_hr(13) ) + ( GND ) + ( \Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(13),
	cin => \Add4~70\,
	sumout => \Add4~65_sumout\,
	cout => \Add4~66\);

-- Location: FF_X40_Y2_N41
\counter_hr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~65_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(13));

-- Location: LABCELL_X40_Y2_N42
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( counter_hr(14) ) + ( GND ) + ( \Add4~66\ ))
-- \Add4~62\ = CARRY(( counter_hr(14) ) + ( GND ) + ( \Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_hr(14),
	cin => \Add4~66\,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\);

-- Location: FF_X40_Y2_N44
\counter_hr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~61_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(14));

-- Location: LABCELL_X40_Y2_N45
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( counter_hr(15) ) + ( GND ) + ( \Add4~62\ ))
-- \Add4~58\ = CARRY(( counter_hr(15) ) + ( GND ) + ( \Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(15),
	cin => \Add4~62\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: FF_X40_Y2_N47
\counter_hr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~57_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(15));

-- Location: LABCELL_X40_Y2_N48
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( counter_hr(16) ) + ( GND ) + ( \Add4~58\ ))
-- \Add4~54\ = CARRY(( counter_hr(16) ) + ( GND ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_hr(16),
	cin => \Add4~58\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: FF_X40_Y2_N50
\counter_hr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~53_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(16));

-- Location: LABCELL_X40_Y2_N51
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( counter_hr(17) ) + ( GND ) + ( \Add4~54\ ))
-- \Add4~18\ = CARRY(( counter_hr(17) ) + ( GND ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_hr(17),
	cin => \Add4~54\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X40_Y2_N53
\counter_hr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~17_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(17));

-- Location: LABCELL_X40_Y2_N54
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( counter_hr(18) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( counter_hr(18) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_hr(18),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X40_Y2_N56
\counter_hr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~21_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(18));

-- Location: LABCELL_X40_Y2_N57
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( counter_hr(19) ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~50\ = CARRY(( counter_hr(19) ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_hr(19),
	cin => \Add4~22\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: FF_X40_Y2_N59
\counter_hr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~49_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(19));

-- Location: LABCELL_X40_Y1_N0
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( counter_hr(20) ) + ( GND ) + ( \Add4~50\ ))
-- \Add4~46\ = CARRY(( counter_hr(20) ) + ( GND ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_hr(20),
	cin => \Add4~50\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: FF_X40_Y1_N2
\counter_hr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~45_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(20));

-- Location: LABCELL_X40_Y1_N3
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( counter_hr(21) ) + ( GND ) + ( \Add4~46\ ))
-- \Add4~42\ = CARRY(( counter_hr(21) ) + ( GND ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(21),
	cin => \Add4~46\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: FF_X40_Y1_N5
\counter_hr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~41_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(21));

-- Location: LABCELL_X40_Y1_N6
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( counter_hr(22) ) + ( GND ) + ( \Add4~42\ ))
-- \Add4~38\ = CARRY(( counter_hr(22) ) + ( GND ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(22),
	cin => \Add4~42\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: FF_X40_Y1_N8
\counter_hr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~37_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(22));

-- Location: LABCELL_X40_Y1_N9
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( GND ) + ( counter_hr(23) ) + ( \Add4~38\ ))
-- \Add4~34\ = CARRY(( GND ) + ( counter_hr(23) ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_counter_hr(23),
	cin => \Add4~38\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: FF_X40_Y1_N11
\counter_hr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~33_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(23));

-- Location: LABCELL_X40_Y1_N12
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( counter_hr(24) ) + ( GND ) + ( \Add4~34\ ))
-- \Add4~30\ = CARRY(( counter_hr(24) ) + ( GND ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(24),
	cin => \Add4~34\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: FF_X40_Y1_N14
\counter_hr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~29_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(24));

-- Location: LABCELL_X40_Y1_N15
\Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~73_sumout\ = SUM(( GND ) + ( counter_hr(25) ) + ( \Add4~30\ ))
-- \Add4~74\ = CARRY(( GND ) + ( counter_hr(25) ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_counter_hr(25),
	cin => \Add4~30\,
	sumout => \Add4~73_sumout\,
	cout => \Add4~74\);

-- Location: FF_X40_Y1_N17
\counter_hr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~73_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(25));

-- Location: LABCELL_X40_Y1_N18
\Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~77_sumout\ = SUM(( counter_hr(26) ) + ( GND ) + ( \Add4~74\ ))
-- \Add4~78\ = CARRY(( counter_hr(26) ) + ( GND ) + ( \Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(26),
	cin => \Add4~74\,
	sumout => \Add4~77_sumout\,
	cout => \Add4~78\);

-- Location: FF_X40_Y1_N20
\counter_hr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~77_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(26));

-- Location: LABCELL_X40_Y1_N21
\Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~93_sumout\ = SUM(( GND ) + ( counter_hr(27) ) + ( \Add4~78\ ))
-- \Add4~94\ = CARRY(( GND ) + ( counter_hr(27) ) + ( \Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_counter_hr(27),
	cin => \Add4~78\,
	sumout => \Add4~93_sumout\,
	cout => \Add4~94\);

-- Location: FF_X40_Y1_N23
\counter_hr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~93_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(27));

-- Location: LABCELL_X40_Y1_N24
\Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~89_sumout\ = SUM(( counter_hr(28) ) + ( GND ) + ( \Add4~94\ ))
-- \Add4~90\ = CARRY(( counter_hr(28) ) + ( GND ) + ( \Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_hr(28),
	cin => \Add4~94\,
	sumout => \Add4~89_sumout\,
	cout => \Add4~90\);

-- Location: FF_X40_Y1_N26
\counter_hr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~89_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(28));

-- Location: LABCELL_X40_Y1_N27
\Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~85_sumout\ = SUM(( counter_hr(29) ) + ( GND ) + ( \Add4~90\ ))
-- \Add4~86\ = CARRY(( counter_hr(29) ) + ( GND ) + ( \Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(29),
	cin => \Add4~90\,
	sumout => \Add4~85_sumout\,
	cout => \Add4~86\);

-- Location: FF_X40_Y1_N29
\counter_hr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~85_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(29));

-- Location: LABCELL_X40_Y1_N30
\Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~81_sumout\ = SUM(( counter_hr(30) ) + ( GND ) + ( \Add4~86\ ))
-- \Add4~82\ = CARRY(( counter_hr(30) ) + ( GND ) + ( \Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_hr(30),
	cin => \Add4~86\,
	sumout => \Add4~81_sumout\,
	cout => \Add4~82\);

-- Location: FF_X40_Y1_N32
\counter_hr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~81_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(30));

-- Location: LABCELL_X40_Y1_N33
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( counter_hr(31) ) + ( GND ) + ( \Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(31),
	cin => \Add4~82\,
	sumout => \Add4~1_sumout\);

-- Location: FF_X40_Y1_N35
\counter_hr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \Add4~1_sumout\,
	clrn => \ALT_INV_counter_min[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr(31));

-- Location: MLABCELL_X39_Y2_N9
\counter_hr[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[6]~7_combout\ = ( \Add4~113_sumout\ & ( !\counter_hr[6]~5_combout\ $ (((!counter_hr(31) & !\LessThan2~10_combout\))) ) ) # ( !\Add4~113_sumout\ & ( \counter_hr[6]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(31),
	datac => \ALT_INV_LessThan2~10_combout\,
	datad => \ALT_INV_counter_hr[6]~5_combout\,
	dataf => \ALT_INV_Add4~113_sumout\,
	combout => \counter_hr[6]~7_combout\);

-- Location: FF_X39_Y2_N11
\counter_hr[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \counter_hr[6]~7_combout\,
	clrn => \ALT_INV_counter_hr[8]~44_combout\,
	ena => \counter_hr[31]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_hr[6]~_emulated_q\);

-- Location: MLABCELL_X39_Y2_N57
\counter_hr[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_hr[6]~6_combout\ = ( \counter_hr[8]~45_combout\ & ( \counter_hr[6]~_emulated_q\ & ( (\KEY[0]~input_o\ & \Add0~17_sumout\) ) ) ) # ( !\counter_hr[8]~45_combout\ & ( \counter_hr[6]~_emulated_q\ & ( (!\counter_hr[6]~5_combout\ & \KEY[0]~input_o\) ) 
-- ) ) # ( \counter_hr[8]~45_combout\ & ( !\counter_hr[6]~_emulated_q\ & ( (\KEY[0]~input_o\ & \Add0~17_sumout\) ) ) ) # ( !\counter_hr[8]~45_combout\ & ( !\counter_hr[6]~_emulated_q\ & ( (\counter_hr[6]~5_combout\ & \KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000111100001100000011000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_hr[6]~5_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_counter_hr[8]~45_combout\,
	dataf => \ALT_INV_counter_hr[6]~_emulated_q\,
	combout => \counter_hr[6]~6_combout\);

-- Location: MLABCELL_X39_Y2_N0
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( \LessThan2~0_combout\ & ( !\counter_hr[5]~10_combout\ & ( (!\counter_hr[6]~6_combout\ & (\LessThan2~2_combout\ & (!\counter_hr[7]~2_combout\ & \LessThan2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[6]~6_combout\,
	datab => \ALT_INV_LessThan2~2_combout\,
	datac => \ALT_INV_counter_hr[7]~2_combout\,
	datad => \ALT_INV_LessThan2~1_combout\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_counter_hr[5]~10_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LABCELL_X42_Y1_N57
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( !\counter_hr[4]~14_combout\ & ( \counter_hr[2]~22_combout\ & ( !\counter_hr[3]~18_combout\ ) ) ) # ( !\counter_hr[4]~14_combout\ & ( !\counter_hr[2]~22_combout\ & ( (!\counter_hr[3]~18_combout\) # (!\counter_hr[1]~26_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	datae => \ALT_INV_counter_hr[4]~14_combout\,
	dataf => \ALT_INV_counter_hr[2]~22_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X42_Y1_N39
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( \counter_hr[4]~14_combout\ & ( \counter_hr[2]~22_combout\ ) ) # ( \counter_hr[4]~14_combout\ & ( !\counter_hr[2]~22_combout\ & ( \counter_hr[3]~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datae => \ALT_INV_counter_hr[4]~14_combout\,
	dataf => \ALT_INV_counter_hr[2]~22_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X42_Y1_N12
\hours_display|HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX1~0_combout\ = ( !\LessThan3~0_combout\ & ( !\LessThan4~0_combout\ & ( (\LessThan2~3_combout\ & (!counter_hr(31) & \LessThan2~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan2~3_combout\,
	datac => ALT_INV_counter_hr(31),
	datad => \ALT_INV_LessThan2~4_combout\,
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \hours_display|HEX1~0_combout\);

-- Location: LABCELL_X42_Y1_N42
\hours_display|HEX1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX1~1_combout\ = ( \LessThan2~5_combout\ & ( \counter_hr[6]~6_combout\ & ( counter_hr(31) ) ) ) # ( !\LessThan2~5_combout\ & ( \counter_hr[6]~6_combout\ & ( counter_hr(31) ) ) ) # ( \LessThan2~5_combout\ & ( !\counter_hr[6]~6_combout\ & ( 
-- ((!\LessThan4~0_combout\ & (!\counter_hr[7]~2_combout\ & \LessThan2~4_combout\))) # (counter_hr(31)) ) ) ) # ( !\LessThan2~5_combout\ & ( !\counter_hr[6]~6_combout\ & ( counter_hr(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(31),
	datab => \ALT_INV_LessThan4~0_combout\,
	datac => \ALT_INV_counter_hr[7]~2_combout\,
	datad => \ALT_INV_LessThan2~4_combout\,
	datae => \ALT_INV_LessThan2~5_combout\,
	dataf => \ALT_INV_counter_hr[6]~6_combout\,
	combout => \hours_display|HEX1~1_combout\);

-- Location: MLABCELL_X39_Y2_N12
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( !\counter_hr[6]~6_combout\ & ( (\LessThan2~2_combout\ & (\LessThan2~1_combout\ & (!\counter_hr[5]~10_combout\ & \LessThan2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~2_combout\,
	datab => \ALT_INV_LessThan2~1_combout\,
	datac => \ALT_INV_counter_hr[5]~10_combout\,
	datad => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_counter_hr[6]~6_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LABCELL_X42_Y1_N48
\hr_display[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr_display[4]~0_combout\ = ( !\counter_hr[7]~2_combout\ & ( !\LessThan4~0_combout\ & ( (\LessThan2~6_combout\ & (!\LessThan3~0_combout\ & (!counter_hr(31) & \LessThan2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~6_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => ALT_INV_counter_hr(31),
	datad => \ALT_INV_LessThan2~4_combout\,
	datae => \ALT_INV_counter_hr[7]~2_combout\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \hr_display[4]~0_combout\);

-- Location: LABCELL_X42_Y1_N33
\hours_display|HEX1[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX1[5]~2_combout\ = ( \LessThan3~0_combout\ & ( \LessThan4~0_combout\ & ( !counter_hr(31) ) ) ) # ( !\LessThan3~0_combout\ & ( \LessThan4~0_combout\ & ( !counter_hr(31) ) ) ) # ( \LessThan3~0_combout\ & ( !\LessThan4~0_combout\ & ( 
-- (!counter_hr(31) & ((!\LessThan2~4_combout\) # (!\LessThan2~3_combout\))) ) ) ) # ( !\LessThan3~0_combout\ & ( !\LessThan4~0_combout\ & ( !counter_hr(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010001010100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_hr(31),
	datab => \ALT_INV_LessThan2~4_combout\,
	datac => \ALT_INV_LessThan2~3_combout\,
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \hours_display|HEX1[5]~2_combout\);

-- Location: LABCELL_X48_Y7_N48
\hours_display|HEX0[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX0\(0) = ( \hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[3]~18_combout\ & (\counter_hr[0]~30_combout\ & (\counter_hr[2]~22_combout\))) # (\counter_hr[3]~18_combout\ & (\counter_hr[1]~26_combout\ & 
-- (!\counter_hr[0]~30_combout\ $ (!\counter_hr[2]~22_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[3]~18_combout\ & (!\counter_hr[1]~26_combout\ & (!\counter_hr[0]~30_combout\ $ 
-- (!\counter_hr[2]~22_combout\)))) # (\counter_hr[3]~18_combout\ & (\counter_hr[0]~30_combout\ & (!\counter_hr[2]~22_combout\ $ (!\counter_hr[1]~26_combout\)))) ) ) ) # ( \hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( 
-- (!\counter_hr[3]~18_combout\ & (!\counter_hr[0]~30_combout\ & (!\counter_hr[2]~22_combout\ & \counter_hr[1]~26_combout\))) # (\counter_hr[3]~18_combout\ & (\counter_hr[0]~30_combout\ & ((!\counter_hr[2]~22_combout\) # (\counter_hr[1]~26_combout\)))) ) ) ) 
-- # ( !\hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[2]~22_combout\ & (!\counter_hr[1]~26_combout\ & (!\counter_hr[3]~18_combout\ $ (!\counter_hr[0]~30_combout\)))) # (\counter_hr[2]~22_combout\ & 
-- (\counter_hr[0]~30_combout\ & (!\counter_hr[3]~18_combout\ $ (\counter_hr[1]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001000000001000100001001000100101001000100000000001000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datab => \ALT_INV_counter_hr[0]~30_combout\,
	datac => \ALT_INV_counter_hr[2]~22_combout\,
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	datae => \ALT_INV_hr_display[4]~0_combout\,
	dataf => \hours_display|ALT_INV_HEX1~1_combout\,
	combout => \hours_display|HEX0\(0));

-- Location: LABCELL_X48_Y7_N42
\hours_display|HEX0[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX0[1]~0_combout\ = ( \hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[1]~26_combout\ & (!\counter_hr[2]~22_combout\ $ (((!\counter_hr[3]~18_combout\ & \counter_hr[0]~30_combout\))))) # 
-- (\counter_hr[1]~26_combout\ & (\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\ $ (\counter_hr[0]~30_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[3]~18_combout\ & 
-- (\counter_hr[2]~22_combout\ & (!\counter_hr[0]~30_combout\ $ (!\counter_hr[1]~26_combout\)))) # (\counter_hr[3]~18_combout\ & ((!\counter_hr[0]~30_combout\ & (\counter_hr[2]~22_combout\)) # (\counter_hr[0]~30_combout\ & ((\counter_hr[1]~26_combout\))))) ) 
-- ) ) # ( \hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[1]~26_combout\ & ((!\counter_hr[0]~30_combout\ & ((\counter_hr[2]~22_combout\))) # (\counter_hr[0]~30_combout\ & (\counter_hr[3]~18_combout\)))) # 
-- (\counter_hr[1]~26_combout\ & (!\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\ $ (!\counter_hr[0]~30_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[1]~26_combout\ & 
-- (!\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\ $ (\counter_hr[0]~30_combout\)))) # (\counter_hr[1]~26_combout\ & (!\counter_hr[2]~22_combout\ $ (((\counter_hr[3]~18_combout\ & \counter_hr[0]~30_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000011100001000111010110000000000110000111011101001000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datab => \ALT_INV_counter_hr[0]~30_combout\,
	datac => \ALT_INV_counter_hr[2]~22_combout\,
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	datae => \ALT_INV_hr_display[4]~0_combout\,
	dataf => \hours_display|ALT_INV_HEX1~1_combout\,
	combout => \hours_display|HEX0[1]~0_combout\);

-- Location: LABCELL_X48_Y7_N24
\hours_display|HEX0[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX0[2]~1_combout\ = ( \hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[2]~22_combout\ & (\counter_hr[3]~18_combout\ & ((!\counter_hr[1]~26_combout\)))) # (\counter_hr[2]~22_combout\ & 
-- (!\counter_hr[0]~30_combout\ & (!\counter_hr[3]~18_combout\ $ (!\counter_hr[1]~26_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[3]~18_combout\ & (!\counter_hr[0]~30_combout\ & 
-- (!\counter_hr[2]~22_combout\ & \counter_hr[1]~26_combout\))) # (\counter_hr[3]~18_combout\ & (\counter_hr[2]~22_combout\ & ((!\counter_hr[0]~30_combout\) # (\counter_hr[1]~26_combout\)))) ) ) ) # ( \hr_display[4]~0_combout\ & ( 
-- !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[2]~22_combout\ & (!\counter_hr[0]~30_combout\ & (!\counter_hr[3]~18_combout\ $ (\counter_hr[1]~26_combout\)))) # (\counter_hr[2]~22_combout\ & (\counter_hr[3]~18_combout\ & 
-- ((!\counter_hr[1]~26_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[3]~18_combout\ & ((!\counter_hr[0]~30_combout\ & ((!\counter_hr[2]~22_combout\) # (\counter_hr[1]~26_combout\))) # 
-- (\counter_hr[0]~30_combout\ & (!\counter_hr[2]~22_combout\ & \counter_hr[1]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010101000100001010100000000000100100001010101010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datab => \ALT_INV_counter_hr[0]~30_combout\,
	datac => \ALT_INV_counter_hr[2]~22_combout\,
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	datae => \ALT_INV_hr_display[4]~0_combout\,
	dataf => \hours_display|ALT_INV_HEX1~1_combout\,
	combout => \hours_display|HEX0[2]~1_combout\);

-- Location: LABCELL_X48_Y7_N18
\hours_display|HEX0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX0\(3) = ( \hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & (\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\ $ (\counter_hr[1]~26_combout\)))) # (\counter_hr[0]~30_combout\ & 
-- (((!\counter_hr[2]~22_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & ((!\counter_hr[3]~18_combout\ & (\counter_hr[2]~22_combout\ & !\counter_hr[1]~26_combout\)) # 
-- (\counter_hr[3]~18_combout\ & (!\counter_hr[2]~22_combout\ & \counter_hr[1]~26_combout\)))) # (\counter_hr[0]~30_combout\ & ((!\counter_hr[2]~22_combout\ $ (\counter_hr[1]~26_combout\)))) ) ) ) # ( \hr_display[4]~0_combout\ & ( 
-- !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & (!\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\ $ (!\counter_hr[1]~26_combout\)))) # (\counter_hr[0]~30_combout\ & (((\counter_hr[2]~22_combout\)))) ) ) ) # ( 
-- !\hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & (\counter_hr[3]~18_combout\ & (!\counter_hr[2]~22_combout\ $ (\counter_hr[1]~26_combout\)))) # (\counter_hr[0]~30_combout\ & ((!\counter_hr[2]~22_combout\ $ 
-- (!\counter_hr[1]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100110100010000111000001100111000010000110011100000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datab => \ALT_INV_counter_hr[0]~30_combout\,
	datac => \ALT_INV_counter_hr[2]~22_combout\,
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	datae => \ALT_INV_hr_display[4]~0_combout\,
	dataf => \hours_display|ALT_INV_HEX1~1_combout\,
	combout => \hours_display|HEX0\(3));

-- Location: LABCELL_X48_Y7_N36
\hours_display|HEX0[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX0[4]~2_combout\ = ( \hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[2]~22_combout\ & (\counter_hr[0]~30_combout\ & ((!\counter_hr[3]~18_combout\) # (\counter_hr[1]~26_combout\)))) # 
-- (\counter_hr[2]~22_combout\ & (\counter_hr[3]~18_combout\ & ((\counter_hr[1]~26_combout\) # (\counter_hr[0]~30_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[1]~26_combout\ & 
-- ((!\counter_hr[2]~22_combout\ & ((\counter_hr[0]~30_combout\))) # (\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\)))) # (\counter_hr[1]~26_combout\ & (!\counter_hr[3]~18_combout\ & (\counter_hr[0]~30_combout\))) ) ) ) # ( 
-- \hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[1]~26_combout\ & (!\counter_hr[3]~18_combout\ & (\counter_hr[0]~30_combout\))) # (\counter_hr[1]~26_combout\ & ((!\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\)) # 
-- (\counter_hr[2]~22_combout\ & ((\counter_hr[0]~30_combout\))))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[2]~22_combout\ & (\counter_hr[3]~18_combout\ & ((!\counter_hr[1]~26_combout\) # 
-- (\counter_hr[0]~30_combout\)))) # (\counter_hr[2]~22_combout\ & (\counter_hr[0]~30_combout\ & ((!\counter_hr[3]~18_combout\) # (!\counter_hr[1]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100010010001000101010001100111010001000100010000100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datab => \ALT_INV_counter_hr[0]~30_combout\,
	datac => \ALT_INV_counter_hr[2]~22_combout\,
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	datae => \ALT_INV_hr_display[4]~0_combout\,
	dataf => \hours_display|ALT_INV_HEX1~1_combout\,
	combout => \hours_display|HEX0[4]~2_combout\);

-- Location: LABCELL_X48_Y7_N30
\hours_display|HEX0[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX0[5]~3_combout\ = ( \hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & (\counter_hr[3]~18_combout\ & (\counter_hr[2]~22_combout\ & !\counter_hr[1]~26_combout\))) # (\counter_hr[0]~30_combout\ 
-- & (!\counter_hr[3]~18_combout\ $ (!\counter_hr[2]~22_combout\ $ (!\counter_hr[1]~26_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & (!\counter_hr[3]~18_combout\ & 
-- (!\counter_hr[2]~22_combout\ & \counter_hr[1]~26_combout\))) # (\counter_hr[0]~30_combout\ & (!\counter_hr[3]~18_combout\ $ (((\counter_hr[2]~22_combout\ & !\counter_hr[1]~26_combout\))))) ) ) ) # ( \hr_display[4]~0_combout\ & ( 
-- !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[3]~18_combout\ & (!\counter_hr[1]~26_combout\ & ((!\counter_hr[2]~22_combout\) # (\counter_hr[0]~30_combout\)))) # (\counter_hr[3]~18_combout\ & (\counter_hr[0]~30_combout\ & 
-- ((\counter_hr[1]~26_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[3]~18_combout\ & ((!\counter_hr[1]~26_combout\ & (\counter_hr[0]~30_combout\)) # (\counter_hr[1]~26_combout\ & 
-- ((\counter_hr[2]~22_combout\))))) # (\counter_hr[3]~18_combout\ & (\counter_hr[0]~30_combout\ & (!\counter_hr[2]~22_combout\ & \counter_hr[1]~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000011010101000100001000100100001101000100010010100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datab => \ALT_INV_counter_hr[0]~30_combout\,
	datac => \ALT_INV_counter_hr[2]~22_combout\,
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	datae => \ALT_INV_hr_display[4]~0_combout\,
	dataf => \hours_display|ALT_INV_HEX1~1_combout\,
	combout => \hours_display|HEX0[5]~3_combout\);

-- Location: LABCELL_X48_Y7_N0
\hours_display|HEX0[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \hours_display|HEX0[6]~4_combout\ = ( \hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & (\counter_hr[1]~26_combout\ & (!\counter_hr[3]~18_combout\ $ (!\counter_hr[2]~22_combout\)))) # 
-- (\counter_hr[0]~30_combout\ & (!\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\ $ (\counter_hr[1]~26_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( \hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & 
-- (!\counter_hr[1]~26_combout\ & (!\counter_hr[3]~18_combout\ $ (\counter_hr[2]~22_combout\)))) # (\counter_hr[0]~30_combout\ & (!\counter_hr[3]~18_combout\ & (!\counter_hr[2]~22_combout\ $ (\counter_hr[1]~26_combout\)))) ) ) ) # ( \hr_display[4]~0_combout\ 
-- & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[0]~30_combout\ & (\counter_hr[3]~18_combout\ & ((\counter_hr[1]~26_combout\)))) # (\counter_hr[0]~30_combout\ & (\counter_hr[2]~22_combout\ & (!\counter_hr[3]~18_combout\ $ 
-- (\counter_hr[1]~26_combout\)))) ) ) ) # ( !\hr_display[4]~0_combout\ & ( !\hours_display|HEX1~1_combout\ & ( (!\counter_hr[3]~18_combout\ & (!\counter_hr[1]~26_combout\ & ((!\counter_hr[0]~30_combout\) # (\counter_hr[2]~22_combout\)))) # 
-- (\counter_hr[3]~18_combout\ & (\counter_hr[0]~30_combout\ & (!\counter_hr[2]~22_combout\ & \counter_hr[1]~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000010000000000100100010110100100000000100010000001011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_hr[3]~18_combout\,
	datab => \ALT_INV_counter_hr[0]~30_combout\,
	datac => \ALT_INV_counter_hr[2]~22_combout\,
	datad => \ALT_INV_counter_hr[1]~26_combout\,
	datae => \ALT_INV_hr_display[4]~0_combout\,
	dataf => \hours_display|ALT_INV_HEX1~1_combout\,
	combout => \hours_display|HEX0[6]~4_combout\);

-- Location: LABCELL_X37_Y4_N21
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\counter_min[4]~14_combout\ & ((\counter_min[3]~18_combout\) # (\counter_min[2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_counter_min[4]~14_combout\,
	datad => \ALT_INV_counter_min[3]~18_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X37_Y1_N33
\min_display[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~7_combout\ = ( !\counter_min[7]~2_combout\ & ( (\min_display[5]~1_combout\ & (\min_display[5]~0_combout\ & (!\counter_min[6]~6_combout\ & \min_display[5]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_display[5]~1_combout\,
	datab => \ALT_INV_min_display[5]~0_combout\,
	datac => \ALT_INV_counter_min[6]~6_combout\,
	datad => \ALT_INV_min_display[5]~2_combout\,
	dataf => \ALT_INV_counter_min[7]~2_combout\,
	combout => \min_display[5]~7_combout\);

-- Location: LABCELL_X37_Y4_N51
\min_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_1~0_combout\ = ( !counter_min(30) & ( !counter_min(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_min(29),
	dataf => ALT_INV_counter_min(30),
	combout => \min_1~0_combout\);

-- Location: LABCELL_X37_Y4_N48
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ( \counter_min[1]~26_combout\ & ( (!\counter_min[5]~10_combout\ & (!\counter_min[4]~14_combout\ & !\counter_min[3]~18_combout\)) ) ) # ( !\counter_min[1]~26_combout\ & ( (!\counter_min[5]~10_combout\ & (!\counter_min[4]~14_combout\ 
-- & ((!\counter_min[2]~22_combout\) # (!\counter_min[3]~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[5]~10_combout\,
	datab => \ALT_INV_counter_min[4]~14_combout\,
	datac => \ALT_INV_counter_min[2]~22_combout\,
	datad => \ALT_INV_counter_min[3]~18_combout\,
	dataf => \ALT_INV_counter_min[1]~26_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LABCELL_X37_Y1_N0
\min_display[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~8_combout\ = ( \min_display[5]~2_combout\ & ( (\min_display[5]~1_combout\ & \min_display[5]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_min_display[5]~1_combout\,
	datac => \ALT_INV_min_display[5]~0_combout\,
	dataf => \ALT_INV_min_display[5]~2_combout\,
	combout => \min_display[5]~8_combout\);

-- Location: LABCELL_X37_Y4_N45
\LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ( \min_display[5]~8_combout\ & ( (!\counter_min[5]~10_combout\ & (!\counter_min[7]~2_combout\ & (\min_display[5]~3_combout\ & !\counter_min[6]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[5]~10_combout\,
	datab => \ALT_INV_counter_min[7]~2_combout\,
	datac => \ALT_INV_min_display[5]~3_combout\,
	datad => \ALT_INV_counter_min[6]~6_combout\,
	dataf => \ALT_INV_min_display[5]~8_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LABCELL_X37_Y4_N18
\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( !counter_min(28) & ( (!\counter_min[2]~22_combout\) # ((!\counter_min[4]~14_combout\) # ((!\counter_min[1]~26_combout\) # (!\counter_min[3]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_counter_min[4]~14_combout\,
	datac => \ALT_INV_counter_min[1]~26_combout\,
	datad => \ALT_INV_counter_min[3]~18_combout\,
	dataf => ALT_INV_counter_min(28),
	combout => \LessThan7~0_combout\);

-- Location: LABCELL_X37_Y4_N54
\min_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_1~1_combout\ = ( \LessThan7~1_combout\ & ( \LessThan7~0_combout\ & ( (\min_1~0_combout\ & (((\min_display[5]~7_combout\ & \LessThan5~0_combout\)) # (\LessThan6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => \ALT_INV_min_display[5]~7_combout\,
	datac => \ALT_INV_min_1~0_combout\,
	datad => \ALT_INV_LessThan5~0_combout\,
	datae => \ALT_INV_LessThan7~1_combout\,
	dataf => \ALT_INV_LessThan7~0_combout\,
	combout => \min_1~1_combout\);

-- Location: LABCELL_X37_Y4_N27
\min_display[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~6_combout\ = ( !\LessThan6~0_combout\ & ( \min_display[5]~5_combout\ & ( (!\counter_min[5]~10_combout\ & (\min_display[5]~3_combout\ & (!\counter_min[7]~2_combout\ & \LessThan7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[5]~10_combout\,
	datab => \ALT_INV_min_display[5]~3_combout\,
	datac => \ALT_INV_counter_min[7]~2_combout\,
	datad => \ALT_INV_LessThan7~0_combout\,
	datae => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_min_display[5]~5_combout\,
	combout => \min_display[5]~6_combout\);

-- Location: LABCELL_X37_Y4_N15
\LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = ( \counter_min[3]~18_combout\ & ( \counter_min[1]~26_combout\ & ( (\counter_min[5]~10_combout\ & \counter_min[4]~14_combout\) ) ) ) # ( !\counter_min[3]~18_combout\ & ( \counter_min[1]~26_combout\ & ( (\counter_min[5]~10_combout\ & 
-- \counter_min[4]~14_combout\) ) ) ) # ( \counter_min[3]~18_combout\ & ( !\counter_min[1]~26_combout\ & ( (\counter_min[5]~10_combout\ & \counter_min[4]~14_combout\) ) ) ) # ( !\counter_min[3]~18_combout\ & ( !\counter_min[1]~26_combout\ & ( 
-- (\counter_min[5]~10_combout\ & (\counter_min[4]~14_combout\ & \counter_min[2]~22_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[5]~10_combout\,
	datac => \ALT_INV_counter_min[4]~14_combout\,
	datad => \ALT_INV_counter_min[2]~22_combout\,
	datae => \ALT_INV_counter_min[3]~18_combout\,
	dataf => \ALT_INV_counter_min[1]~26_combout\,
	combout => \LessThan9~0_combout\);

-- Location: LABCELL_X37_Y4_N42
\LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ( \counter_min[4]~14_combout\ & ( \counter_min[5]~10_combout\ ) ) # ( !\counter_min[4]~14_combout\ & ( (\counter_min[5]~10_combout\ & \counter_min[3]~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[5]~10_combout\,
	datac => \ALT_INV_counter_min[3]~18_combout\,
	dataf => \ALT_INV_counter_min[4]~14_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LABCELL_X36_Y3_N57
\minutes_display|HEX1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1[1]~0_combout\ = ( \min_display[5]~3_combout\ & ( !\counter_min[7]~2_combout\ & ( (\min_display[5]~5_combout\ & (\LessThan9~1_combout\ & (!counter_min(30) & !\LessThan8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_display[5]~5_combout\,
	datab => \ALT_INV_LessThan9~1_combout\,
	datac => ALT_INV_counter_min(30),
	datad => \ALT_INV_LessThan8~0_combout\,
	datae => \ALT_INV_min_display[5]~3_combout\,
	dataf => \ALT_INV_counter_min[7]~2_combout\,
	combout => \minutes_display|HEX1[1]~0_combout\);

-- Location: MLABCELL_X39_Y4_N39
\LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = ( \min_display[5]~4_combout\ & ( !counter_min(31) & ( (!\LessThan9~1_combout\) # ((\LessThan9~0_combout\) # (counter_min(30))) ) ) ) # ( !\min_display[5]~4_combout\ & ( !counter_min(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan9~1_combout\,
	datab => ALT_INV_counter_min(30),
	datac => \ALT_INV_LessThan9~0_combout\,
	datae => \ALT_INV_min_display[5]~4_combout\,
	dataf => ALT_INV_counter_min(31),
	combout => \LessThan9~2_combout\);

-- Location: MLABCELL_X39_Y4_N18
\minutes_display|HEX1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1[0]~1_combout\ = ( \minutes_display|HEX1[1]~0_combout\ & ( !\LessThan9~2_combout\ & ( (!counter_min(31) & (!\min_1~1_combout\ & ((\LessThan9~0_combout\) # (\min_display[5]~6_combout\)))) ) ) ) # ( !\minutes_display|HEX1[1]~0_combout\ 
-- & ( !\LessThan9~2_combout\ & ( !counter_min(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(31),
	datab => \ALT_INV_min_1~1_combout\,
	datac => \ALT_INV_min_display[5]~6_combout\,
	datad => \ALT_INV_LessThan9~0_combout\,
	datae => \minutes_display|ALT_INV_HEX1[1]~0_combout\,
	dataf => \ALT_INV_LessThan9~2_combout\,
	combout => \minutes_display|HEX1[0]~1_combout\);

-- Location: LABCELL_X36_Y3_N45
\min_display[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~9_combout\ = ( !counter_min(31) & ( \LessThan9~1_combout\ & ( (!\LessThan8~0_combout\ & (!counter_min(30) & \min_display[5]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan8~0_combout\,
	datac => ALT_INV_counter_min(30),
	datad => \ALT_INV_min_display[5]~4_combout\,
	datae => ALT_INV_counter_min(31),
	dataf => \ALT_INV_LessThan9~1_combout\,
	combout => \min_display[5]~9_combout\);

-- Location: MLABCELL_X39_Y4_N24
\minutes_display|HEX1[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1[1]~2_combout\ = ( \min_display[5]~4_combout\ & ( \LessThan8~0_combout\ & ( !counter_min(31) ) ) ) # ( !\min_display[5]~4_combout\ & ( \LessThan8~0_combout\ & ( !counter_min(31) ) ) ) # ( \min_display[5]~4_combout\ & ( 
-- !\LessThan8~0_combout\ & ( (!counter_min(31) & ((!\LessThan9~1_combout\) # ((\LessThan9~0_combout\) # (counter_min(30))))) ) ) ) # ( !\min_display[5]~4_combout\ & ( !\LessThan8~0_combout\ & ( !counter_min(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan9~1_combout\,
	datab => ALT_INV_counter_min(30),
	datac => ALT_INV_counter_min(31),
	datad => \ALT_INV_LessThan9~0_combout\,
	datae => \ALT_INV_min_display[5]~4_combout\,
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \minutes_display|HEX1[1]~2_combout\);

-- Location: MLABCELL_X39_Y4_N30
\minutes_display|HEX1[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1[1]~3_combout\ = ( \min_1~1_combout\ & ( \minutes_display|HEX1[1]~2_combout\ & ( !\LessThan9~2_combout\ $ (((!\min_display[5]~9_combout\) # ((\min_display[5]~6_combout\) # (\LessThan9~0_combout\)))) ) ) ) # ( !\min_1~1_combout\ & ( 
-- \minutes_display|HEX1[1]~2_combout\ & ( (!\min_display[5]~9_combout\ & (((\LessThan9~2_combout\)))) # (\min_display[5]~9_combout\ & (((\min_display[5]~6_combout\)) # (\LessThan9~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101101111110100000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_display[5]~9_combout\,
	datab => \ALT_INV_LessThan9~0_combout\,
	datac => \ALT_INV_min_display[5]~6_combout\,
	datad => \ALT_INV_LessThan9~2_combout\,
	datae => \ALT_INV_min_1~1_combout\,
	dataf => \minutes_display|ALT_INV_HEX1[1]~2_combout\,
	combout => \minutes_display|HEX1[1]~3_combout\);

-- Location: MLABCELL_X39_Y4_N48
\minutes_display|HEX1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1~4_combout\ = ( \min_1~1_combout\ & ( !\minutes_display|HEX1[1]~2_combout\ & ( (\min_display[5]~9_combout\ & (!\LessThan9~0_combout\ & (!\min_display[5]~6_combout\ & !\LessThan9~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_display[5]~9_combout\,
	datab => \ALT_INV_LessThan9~0_combout\,
	datac => \ALT_INV_min_display[5]~6_combout\,
	datad => \ALT_INV_LessThan9~2_combout\,
	datae => \ALT_INV_min_1~1_combout\,
	dataf => \minutes_display|ALT_INV_HEX1[1]~2_combout\,
	combout => \minutes_display|HEX1~4_combout\);

-- Location: MLABCELL_X39_Y4_N6
\minutes_display|HEX1[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1[3]~5_combout\ = ( \minutes_display|HEX1[1]~0_combout\ & ( \LessThan9~2_combout\ & ( (!counter_min(31) & (!\min_display[5]~6_combout\ & !\LessThan9~0_combout\)) ) ) ) # ( \minutes_display|HEX1[1]~0_combout\ & ( !\LessThan9~2_combout\ 
-- & ( (!counter_min(31) & (!\min_1~1_combout\ & ((\LessThan9~0_combout\) # (\min_display[5]~6_combout\)))) ) ) ) # ( !\minutes_display|HEX1[1]~0_combout\ & ( !\LessThan9~2_combout\ & ( !counter_min(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000010001000100000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(31),
	datab => \ALT_INV_min_1~1_combout\,
	datac => \ALT_INV_min_display[5]~6_combout\,
	datad => \ALT_INV_LessThan9~0_combout\,
	datae => \minutes_display|ALT_INV_HEX1[1]~0_combout\,
	dataf => \ALT_INV_LessThan9~2_combout\,
	combout => \minutes_display|HEX1[3]~5_combout\);

-- Location: MLABCELL_X39_Y4_N12
\minutes_display|HEX1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1\(4) = ( \min_1~1_combout\ & ( \minutes_display|HEX1[1]~2_combout\ & ( (!\min_display[5]~9_combout\) # (((\LessThan9~2_combout\) # (\min_display[5]~6_combout\)) # (\LessThan9~0_combout\)) ) ) ) # ( !\min_1~1_combout\ & ( 
-- \minutes_display|HEX1[1]~2_combout\ ) ) # ( \min_1~1_combout\ & ( !\minutes_display|HEX1[1]~2_combout\ & ( \LessThan9~2_combout\ ) ) ) # ( !\min_1~1_combout\ & ( !\minutes_display|HEX1[1]~2_combout\ & ( (\LessThan9~2_combout\) # 
-- (\min_display[5]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000001111111111111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_display[5]~9_combout\,
	datab => \ALT_INV_LessThan9~0_combout\,
	datac => \ALT_INV_min_display[5]~6_combout\,
	datad => \ALT_INV_LessThan9~2_combout\,
	datae => \ALT_INV_min_1~1_combout\,
	dataf => \minutes_display|ALT_INV_HEX1[1]~2_combout\,
	combout => \minutes_display|HEX1\(4));

-- Location: LABCELL_X37_Y4_N3
\min_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_1~2_combout\ = ( !\LessThan5~0_combout\ & ( \min_display[5]~5_combout\ & ( (!\LessThan6~0_combout\ & (\min_display[5]~3_combout\ & (!\counter_min[7]~2_combout\ & !\counter_min[5]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => \ALT_INV_min_display[5]~3_combout\,
	datac => \ALT_INV_counter_min[7]~2_combout\,
	datad => \ALT_INV_counter_min[5]~10_combout\,
	datae => \ALT_INV_LessThan5~0_combout\,
	dataf => \ALT_INV_min_display[5]~5_combout\,
	combout => \min_1~2_combout\);

-- Location: LABCELL_X36_Y4_N51
\min_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_1~3_combout\ = ( \min_display[5]~5_combout\ & ( !\counter_min[7]~2_combout\ & ( (\min_1~0_combout\ & (!\counter_min[5]~10_combout\ & (\LessThan7~0_combout\ & \min_display[5]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_1~0_combout\,
	datab => \ALT_INV_counter_min[5]~10_combout\,
	datac => \ALT_INV_LessThan7~0_combout\,
	datad => \ALT_INV_min_display[5]~3_combout\,
	datae => \ALT_INV_min_display[5]~5_combout\,
	dataf => \ALT_INV_counter_min[7]~2_combout\,
	combout => \min_1~3_combout\);

-- Location: MLABCELL_X39_Y4_N42
\minutes_display|HEX1[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1[5]~6_combout\ = ( \min_1~3_combout\ & ( \min_display[5]~9_combout\ & ( (!\LessThan9~0_combout\ & (((!\min_display[5]~6_combout\ & !\minutes_display|HEX1[1]~2_combout\)) # (\min_1~2_combout\))) ) ) ) # ( !\min_1~3_combout\ & ( 
-- \min_display[5]~9_combout\ & ( !\LessThan9~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_display[5]~6_combout\,
	datab => \ALT_INV_min_1~2_combout\,
	datac => \minutes_display|ALT_INV_HEX1[1]~2_combout\,
	datad => \ALT_INV_LessThan9~0_combout\,
	datae => \ALT_INV_min_1~3_combout\,
	dataf => \ALT_INV_min_display[5]~9_combout\,
	combout => \minutes_display|HEX1[5]~6_combout\);

-- Location: MLABCELL_X39_Y4_N0
\minutes_display|HEX1[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX1[6]~7_combout\ = ( \min_1~1_combout\ & ( \minutes_display|HEX1[1]~2_combout\ & ( (\min_display[5]~9_combout\ & (!\LessThan9~0_combout\ & (!\min_display[5]~6_combout\ & \LessThan9~2_combout\))) ) ) ) # ( !\min_1~1_combout\ & ( 
-- \minutes_display|HEX1[1]~2_combout\ & ( (\min_display[5]~9_combout\ & (!\LessThan9~0_combout\ & !\min_display[5]~6_combout\)) ) ) ) # ( \min_1~1_combout\ & ( !\minutes_display|HEX1[1]~2_combout\ & ( (!\min_display[5]~9_combout\) # 
-- ((\min_display[5]~6_combout\) # (\LessThan9~0_combout\)) ) ) ) # ( !\min_1~1_combout\ & ( !\minutes_display|HEX1[1]~2_combout\ & ( (!\min_display[5]~9_combout\) # ((\min_display[5]~6_combout\) # (\LessThan9~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111101000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_display[5]~9_combout\,
	datab => \ALT_INV_LessThan9~0_combout\,
	datac => \ALT_INV_min_display[5]~6_combout\,
	datad => \ALT_INV_LessThan9~2_combout\,
	datae => \ALT_INV_min_1~1_combout\,
	dataf => \minutes_display|ALT_INV_HEX1[1]~2_combout\,
	combout => \minutes_display|HEX1[6]~7_combout\);

-- Location: LABCELL_X36_Y3_N30
\LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan9~4_combout\ = ( !\counter_min[6]~6_combout\ & ( \min_display[5]~8_combout\ & ( (\LessThan9~1_combout\ & (!\counter_min[7]~2_combout\ & \min_display[5]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan9~1_combout\,
	datab => \ALT_INV_counter_min[7]~2_combout\,
	datac => \ALT_INV_min_display[5]~3_combout\,
	datae => \ALT_INV_counter_min[6]~6_combout\,
	dataf => \ALT_INV_min_display[5]~8_combout\,
	combout => \LessThan9~4_combout\);

-- Location: LABCELL_X36_Y3_N39
\Add8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = ( \LessThan9~0_combout\ & ( \LessThan8~0_combout\ & ( !counter_min(31) $ (\counter_min[3]~18_combout\) ) ) ) # ( !\LessThan9~0_combout\ & ( \LessThan8~0_combout\ & ( !counter_min(31) $ (\counter_min[3]~18_combout\) ) ) ) # ( 
-- \LessThan9~0_combout\ & ( !\LessThan8~0_combout\ & ( !counter_min(31) $ (\counter_min[3]~18_combout\) ) ) ) # ( !\LessThan9~0_combout\ & ( !\LessThan8~0_combout\ & ( !\counter_min[3]~18_combout\ $ ((((!counter_min(30) & \LessThan9~4_combout\)) # 
-- (counter_min(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001001011101101010100101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(31),
	datab => ALT_INV_counter_min(30),
	datac => \ALT_INV_LessThan9~4_combout\,
	datad => \ALT_INV_counter_min[3]~18_combout\,
	datae => \ALT_INV_LessThan9~0_combout\,
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \Add8~0_combout\);

-- Location: LABCELL_X36_Y3_N24
\LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan9~3_combout\ = ( \min_display[5]~5_combout\ & ( !\counter_min[7]~2_combout\ & ( (\min_display[5]~3_combout\ & (!counter_min(30) & (!\LessThan9~0_combout\ & \LessThan9~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_min_display[5]~3_combout\,
	datab => ALT_INV_counter_min(30),
	datac => \ALT_INV_LessThan9~0_combout\,
	datad => \ALT_INV_LessThan9~1_combout\,
	datae => \ALT_INV_min_display[5]~5_combout\,
	dataf => \ALT_INV_counter_min[7]~2_combout\,
	combout => \LessThan9~3_combout\);

-- Location: MLABCELL_X39_Y4_N54
\min_display[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[4]~11_combout\ = ( \min_1~3_combout\ & ( \min_1~2_combout\ & ( (!counter_min(31) & ((!\LessThan9~3_combout\) # (\minutes_display|HEX1[1]~0_combout\))) ) ) ) # ( !\min_1~3_combout\ & ( \min_1~2_combout\ & ( (!counter_min(31) & 
-- ((!\LessThan9~3_combout\) # (\minutes_display|HEX1[1]~0_combout\))) ) ) ) # ( \min_1~3_combout\ & ( !\min_1~2_combout\ & ( (!\LessThan9~3_combout\ & !counter_min(31)) ) ) ) # ( !\min_1~3_combout\ & ( !\min_1~2_combout\ & ( (!counter_min(31) & 
-- ((!\LessThan9~3_combout\) # (\minutes_display|HEX1[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001100000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan9~3_combout\,
	datac => ALT_INV_counter_min(31),
	datad => \minutes_display|ALT_INV_HEX1[1]~0_combout\,
	datae => \ALT_INV_min_1~3_combout\,
	dataf => \ALT_INV_min_1~2_combout\,
	combout => \min_display[4]~11_combout\);

-- Location: LABCELL_X37_Y4_N24
\LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = ( !\counter_min[6]~6_combout\ & ( \min_display[5]~8_combout\ & ( (!\counter_min[5]~10_combout\ & (\min_display[5]~3_combout\ & (\LessThan7~0_combout\ & !\counter_min[7]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[5]~10_combout\,
	datab => \ALT_INV_min_display[5]~3_combout\,
	datac => \ALT_INV_LessThan7~0_combout\,
	datad => \ALT_INV_counter_min[7]~2_combout\,
	datae => \ALT_INV_counter_min[6]~6_combout\,
	dataf => \ALT_INV_min_display[5]~8_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LABCELL_X37_Y4_N30
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \min_display[5]~3_combout\ & ( \min_display[5]~8_combout\ & ( (\LessThan9~1_combout\ & (!\counter_min[7]~2_combout\ & (!counter_min(30) & !\counter_min[6]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan9~1_combout\,
	datab => \ALT_INV_counter_min[7]~2_combout\,
	datac => ALT_INV_counter_min(30),
	datad => \ALT_INV_counter_min[6]~6_combout\,
	datae => \ALT_INV_min_display[5]~3_combout\,
	dataf => \ALT_INV_min_display[5]~8_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X37_Y4_N0
\LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( !\counter_min[6]~6_combout\ & ( \min_display[5]~8_combout\ & ( (!\LessThan6~0_combout\ & (\min_display[5]~3_combout\ & (!\counter_min[5]~10_combout\ & !\counter_min[7]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => \ALT_INV_min_display[5]~3_combout\,
	datac => \ALT_INV_counter_min[5]~10_combout\,
	datad => \ALT_INV_counter_min[7]~2_combout\,
	datae => \ALT_INV_counter_min[6]~6_combout\,
	dataf => \ALT_INV_min_display[5]~8_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LABCELL_X37_Y4_N36
\min_display[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \min_display[5]~10_combout\ = ( \LessThan6~1_combout\ & ( !\LessThan8~0_combout\ & ( (!counter_min(31) & (!\LessThan9~0_combout\ & (!\LessThan7~2_combout\ & \LessThan1~0_combout\))) ) ) ) # ( !\LessThan6~1_combout\ & ( !\LessThan8~0_combout\ & ( 
-- (!counter_min(31) & (!\LessThan9~0_combout\ & \LessThan1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_min(31),
	datab => \ALT_INV_LessThan9~0_combout\,
	datac => \ALT_INV_LessThan7~2_combout\,
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \min_display[5]~10_combout\);

-- Location: LABCELL_X83_Y13_N24
\minutes_display|HEX0[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX0\(0) = ( \min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\Add8~0_combout\ & (!\counter_min[2]~22_combout\ & (!\counter_min[0]~30_combout\ & \counter_min[1]~26_combout\))) # (\Add8~0_combout\ & 
-- (\counter_min[0]~30_combout\ & ((!\counter_min[2]~22_combout\) # (\counter_min[1]~26_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[2]~22_combout\ & (!\counter_min[1]~26_combout\ & (!\Add8~0_combout\ 
-- $ (!\counter_min[0]~30_combout\)))) # (\counter_min[2]~22_combout\ & (\counter_min[0]~30_combout\ & (!\Add8~0_combout\ $ (\counter_min[1]~26_combout\)))) ) ) ) # ( \min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( (!\Add8~0_combout\ & 
-- (\counter_min[2]~22_combout\ & (\counter_min[0]~30_combout\))) # (\Add8~0_combout\ & (\counter_min[1]~26_combout\ & (!\counter_min[2]~22_combout\ $ (!\counter_min[0]~30_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & 
-- ( (!\counter_min[2]~22_combout\ & (\counter_min[0]~30_combout\ & (!\Add8~0_combout\ $ (\counter_min[1]~26_combout\)))) # (\counter_min[2]~22_combout\ & (!\counter_min[1]~26_combout\ & (!\Add8~0_combout\ $ (\counter_min[0]~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000010000001000001011000101100000000010000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_Add8~0_combout\,
	datac => \ALT_INV_counter_min[0]~30_combout\,
	datad => \ALT_INV_counter_min[1]~26_combout\,
	datae => \ALT_INV_min_display[4]~11_combout\,
	dataf => \ALT_INV_min_display[5]~10_combout\,
	combout => \minutes_display|HEX0\(0));

-- Location: LABCELL_X83_Y13_N42
\minutes_display|HEX0[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX0[1]~0_combout\ = ( \min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[1]~26_combout\ & ((!\counter_min[0]~30_combout\ & (\counter_min[2]~22_combout\)) # (\counter_min[0]~30_combout\ & 
-- ((\Add8~0_combout\))))) # (\counter_min[1]~26_combout\ & (!\counter_min[2]~22_combout\ & (!\Add8~0_combout\ $ (!\counter_min[0]~30_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[1]~26_combout\ & 
-- (!\counter_min[2]~22_combout\ & (!\Add8~0_combout\ $ (\counter_min[0]~30_combout\)))) # (\counter_min[1]~26_combout\ & (!\counter_min[2]~22_combout\ $ (((\Add8~0_combout\ & \counter_min[0]~30_combout\))))) ) ) ) # ( \min_display[4]~11_combout\ & ( 
-- !\min_display[5]~10_combout\ & ( (!\counter_min[1]~26_combout\ & (!\counter_min[2]~22_combout\ $ (((!\Add8~0_combout\ & \counter_min[0]~30_combout\))))) # (\counter_min[1]~26_combout\ & (\counter_min[2]~22_combout\ & (!\Add8~0_combout\ $ 
-- (\counter_min[0]~30_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( (!\Add8~0_combout\ & (\counter_min[2]~22_combout\ & (!\counter_min[0]~30_combout\ $ (!\counter_min[1]~26_combout\)))) # (\Add8~0_combout\ & 
-- ((!\counter_min[0]~30_combout\ & (\counter_min[2]~22_combout\)) # (\counter_min[0]~30_combout\ & ((\counter_min[1]~26_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010011101001100100000110000010101010010101001100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_Add8~0_combout\,
	datac => \ALT_INV_counter_min[0]~30_combout\,
	datad => \ALT_INV_counter_min[1]~26_combout\,
	datae => \ALT_INV_min_display[4]~11_combout\,
	dataf => \ALT_INV_min_display[5]~10_combout\,
	combout => \minutes_display|HEX0[1]~0_combout\);

-- Location: LABCELL_X83_Y13_N12
\minutes_display|HEX0[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX0[2]~1_combout\ = ( \min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[2]~22_combout\ & (!\counter_min[0]~30_combout\ & (!\Add8~0_combout\ $ (\counter_min[1]~26_combout\)))) # (\counter_min[2]~22_combout\ & 
-- (\Add8~0_combout\ & ((!\counter_min[1]~26_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\Add8~0_combout\ & ((!\counter_min[2]~22_combout\ & ((!\counter_min[0]~30_combout\) # (\counter_min[1]~26_combout\))) # 
-- (\counter_min[2]~22_combout\ & (!\counter_min[0]~30_combout\ & \counter_min[1]~26_combout\)))) ) ) ) # ( \min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( (!\counter_min[2]~22_combout\ & (\Add8~0_combout\ & 
-- ((!\counter_min[1]~26_combout\)))) # (\counter_min[2]~22_combout\ & (!\counter_min[0]~30_combout\ & (!\Add8~0_combout\ $ (!\counter_min[1]~26_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( 
-- (!\counter_min[2]~22_combout\ & (!\Add8~0_combout\ & (!\counter_min[0]~30_combout\ & \counter_min[1]~26_combout\))) # (\counter_min[2]~22_combout\ & (\Add8~0_combout\ & ((!\counter_min[0]~30_combout\) # (\counter_min[1]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010001001100100100000010000000110010001001000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_Add8~0_combout\,
	datac => \ALT_INV_counter_min[0]~30_combout\,
	datad => \ALT_INV_counter_min[1]~26_combout\,
	datae => \ALT_INV_min_display[4]~11_combout\,
	dataf => \ALT_INV_min_display[5]~10_combout\,
	combout => \minutes_display|HEX0[2]~1_combout\);

-- Location: LABCELL_X83_Y13_N54
\minutes_display|HEX0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX0\(3) = ( \min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[2]~22_combout\ & (!\counter_min[0]~30_combout\ & (!\Add8~0_combout\ $ (!\counter_min[1]~26_combout\)))) # (\counter_min[2]~22_combout\ & 
-- (((\counter_min[0]~30_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[0]~30_combout\ & (\Add8~0_combout\ & (!\counter_min[2]~22_combout\ $ (\counter_min[1]~26_combout\)))) # 
-- (\counter_min[0]~30_combout\ & (!\counter_min[2]~22_combout\ $ (((!\counter_min[1]~26_combout\))))) ) ) ) # ( \min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( (!\counter_min[2]~22_combout\ & (((\counter_min[0]~30_combout\)))) # 
-- (\counter_min[2]~22_combout\ & (!\counter_min[0]~30_combout\ & (!\Add8~0_combout\ $ (\counter_min[1]~26_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( (!\counter_min[0]~30_combout\ & ((!\counter_min[2]~22_combout\ 
-- & (\Add8~0_combout\ & \counter_min[1]~26_combout\)) # (\counter_min[2]~22_combout\ & (!\Add8~0_combout\ & !\counter_min[1]~26_combout\)))) # (\counter_min[0]~30_combout\ & (!\counter_min[2]~22_combout\ $ (((\counter_min[1]~26_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101000100101010010100001101000100101000110100010010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_Add8~0_combout\,
	datac => \ALT_INV_counter_min[0]~30_combout\,
	datad => \ALT_INV_counter_min[1]~26_combout\,
	datae => \ALT_INV_min_display[4]~11_combout\,
	dataf => \ALT_INV_min_display[5]~10_combout\,
	combout => \minutes_display|HEX0\(3));

-- Location: LABCELL_X83_Y13_N48
\minutes_display|HEX0[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX0[4]~2_combout\ = ( \min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[1]~26_combout\ & (((!\Add8~0_combout\ & \counter_min[0]~30_combout\)))) # (\counter_min[1]~26_combout\ & ((!\counter_min[2]~22_combout\ 
-- & (!\Add8~0_combout\)) # (\counter_min[2]~22_combout\ & ((\counter_min[0]~30_combout\))))) ) ) ) # ( !\min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[2]~22_combout\ & (\Add8~0_combout\ & ((!\counter_min[1]~26_combout\) # 
-- (\counter_min[0]~30_combout\)))) # (\counter_min[2]~22_combout\ & (\counter_min[0]~30_combout\ & ((!\Add8~0_combout\) # (!\counter_min[1]~26_combout\)))) ) ) ) # ( \min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( 
-- (!\counter_min[2]~22_combout\ & (\counter_min[0]~30_combout\ & ((!\Add8~0_combout\) # (\counter_min[1]~26_combout\)))) # (\counter_min[2]~22_combout\ & (\Add8~0_combout\ & ((\counter_min[1]~26_combout\) # (\counter_min[0]~30_combout\)))) ) ) ) # ( 
-- !\min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( (!\counter_min[1]~26_combout\ & ((!\counter_min[2]~22_combout\ & ((\counter_min[0]~30_combout\))) # (\counter_min[2]~22_combout\ & (!\Add8~0_combout\)))) # (\counter_min[1]~26_combout\ & 
-- (((!\Add8~0_combout\ & \counter_min[0]~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111000001100000010010001101100100111000001100000110010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_Add8~0_combout\,
	datac => \ALT_INV_counter_min[0]~30_combout\,
	datad => \ALT_INV_counter_min[1]~26_combout\,
	datae => \ALT_INV_min_display[4]~11_combout\,
	dataf => \ALT_INV_min_display[5]~10_combout\,
	combout => \minutes_display|HEX0[4]~2_combout\);

-- Location: LABCELL_X83_Y13_N30
\minutes_display|HEX0[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX0[5]~3_combout\ = ( \min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\Add8~0_combout\ & (!\counter_min[1]~26_combout\ & ((!\counter_min[2]~22_combout\) # (\counter_min[0]~30_combout\)))) # (\Add8~0_combout\ & 
-- (((\counter_min[0]~30_combout\ & \counter_min[1]~26_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[2]~22_combout\ & (\counter_min[0]~30_combout\ & (!\Add8~0_combout\ $ 
-- (\counter_min[1]~26_combout\)))) # (\counter_min[2]~22_combout\ & (!\Add8~0_combout\ & ((\counter_min[1]~26_combout\) # (\counter_min[0]~30_combout\)))) ) ) ) # ( \min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( 
-- (!\counter_min[0]~30_combout\ & (\counter_min[2]~22_combout\ & (\Add8~0_combout\ & !\counter_min[1]~26_combout\))) # (\counter_min[0]~30_combout\ & (!\counter_min[2]~22_combout\ $ (!\Add8~0_combout\ $ (!\counter_min[1]~26_combout\)))) ) ) ) # ( 
-- !\min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( (!\counter_min[2]~22_combout\ & (!\Add8~0_combout\ & ((\counter_min[1]~26_combout\) # (\counter_min[0]~30_combout\)))) # (\counter_min[2]~22_combout\ & (\counter_min[0]~30_combout\ & 
-- (!\Add8~0_combout\ $ (!\counter_min[1]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110001100000110010000011000001100010001101000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_Add8~0_combout\,
	datac => \ALT_INV_counter_min[0]~30_combout\,
	datad => \ALT_INV_counter_min[1]~26_combout\,
	datae => \ALT_INV_min_display[4]~11_combout\,
	dataf => \ALT_INV_min_display[5]~10_combout\,
	combout => \minutes_display|HEX0[5]~3_combout\);

-- Location: LABCELL_X83_Y13_N36
\minutes_display|HEX0[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \minutes_display|HEX0[6]~4_combout\ = ( \min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\counter_min[0]~30_combout\ & (((\Add8~0_combout\ & \counter_min[1]~26_combout\)))) # (\counter_min[0]~30_combout\ & (\counter_min[2]~22_combout\ & 
-- (!\Add8~0_combout\ $ (\counter_min[1]~26_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( \min_display[5]~10_combout\ & ( (!\Add8~0_combout\ & (!\counter_min[1]~26_combout\ & ((!\counter_min[0]~30_combout\) # (\counter_min[2]~22_combout\)))) # 
-- (\Add8~0_combout\ & (!\counter_min[2]~22_combout\ & (\counter_min[0]~30_combout\ & \counter_min[1]~26_combout\))) ) ) ) # ( \min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( (!\counter_min[0]~30_combout\ & (\counter_min[1]~26_combout\ & 
-- (!\counter_min[2]~22_combout\ $ (!\Add8~0_combout\)))) # (\counter_min[0]~30_combout\ & (!\counter_min[2]~22_combout\ & (!\Add8~0_combout\ $ (\counter_min[1]~26_combout\)))) ) ) ) # ( !\min_display[4]~11_combout\ & ( !\min_display[5]~10_combout\ & ( 
-- (!\counter_min[0]~30_combout\ & (!\counter_min[1]~26_combout\ & (!\counter_min[2]~22_combout\ $ (\Add8~0_combout\)))) # (\counter_min[0]~30_combout\ & (!\Add8~0_combout\ & (!\counter_min[2]~22_combout\ $ (\counter_min[1]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100000000100000010000110001011000100000000100000010000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_min[2]~22_combout\,
	datab => \ALT_INV_Add8~0_combout\,
	datac => \ALT_INV_counter_min[0]~30_combout\,
	datad => \ALT_INV_counter_min[1]~26_combout\,
	datae => \ALT_INV_min_display[4]~11_combout\,
	dataf => \ALT_INV_min_display[5]~10_combout\,
	combout => \minutes_display|HEX0[6]~4_combout\);

-- Location: LABCELL_X45_Y4_N48
\LessThan13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = ( counter_sec(5) & ( (counter_sec(4)) # (counter_sec(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sec(3),
	datac => ALT_INV_counter_sec(4),
	dataf => ALT_INV_counter_sec(5),
	combout => \LessThan13~0_combout\);

-- Location: LABCELL_X45_Y4_N18
\seconds_display|HEX1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1[1]~0_combout\ = ( !\LessThan13~0_combout\ & ( \LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan13~0_combout\,
	combout => \seconds_display|HEX1[1]~0_combout\);

-- Location: LABCELL_X43_Y4_N39
\LessThan14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = ( counter_sec(5) & ( (counter_sec(4) & (((counter_sec(3)) # (counter_sec(1))) # (counter_sec(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(4),
	datab => ALT_INV_counter_sec(2),
	datac => ALT_INV_counter_sec(1),
	datad => ALT_INV_counter_sec(3),
	dataf => ALT_INV_counter_sec(5),
	combout => \LessThan14~0_combout\);

-- Location: LABCELL_X43_Y4_N15
\LessThan14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan14~2_combout\ = ( \LessThan14~1_combout\ & ( (\sec_display[5]~1_combout\ & (\sec_display[5]~2_combout\ & (\sec_display[5]~3_combout\ & \sec_display[5]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec_display[5]~1_combout\,
	datab => \ALT_INV_sec_display[5]~2_combout\,
	datac => \ALT_INV_sec_display[5]~3_combout\,
	datad => \ALT_INV_sec_display[5]~0_combout\,
	dataf => \ALT_INV_LessThan14~1_combout\,
	combout => \LessThan14~2_combout\);

-- Location: LABCELL_X48_Y6_N39
\LessThan14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan14~3_combout\ = ( \LessThan14~2_combout\ & ( (!counter_sec(31) & ((counter_sec(30)) # (\LessThan14~0_combout\))) ) ) # ( !\LessThan14~2_combout\ & ( !counter_sec(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(31),
	datac => \ALT_INV_LessThan14~0_combout\,
	datad => ALT_INV_counter_sec(30),
	dataf => \ALT_INV_LessThan14~2_combout\,
	combout => \LessThan14~3_combout\);

-- Location: LABCELL_X43_Y4_N36
\LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (counter_sec(4) & ((counter_sec(3)) # (counter_sec(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(4),
	datab => ALT_INV_counter_sec(2),
	datac => ALT_INV_counter_sec(3),
	combout => \LessThan11~0_combout\);

-- Location: LABCELL_X43_Y4_N48
\LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = ( \sec_display[5]~0_combout\ & ( \sec_display[5]~3_combout\ & ( (!\LessThan11~0_combout\ & (!counter_sec(5) & (\sec_display[5]~1_combout\ & \sec_display[5]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan11~0_combout\,
	datab => ALT_INV_counter_sec(5),
	datac => \ALT_INV_sec_display[5]~1_combout\,
	datad => \ALT_INV_sec_display[5]~2_combout\,
	datae => \ALT_INV_sec_display[5]~0_combout\,
	dataf => \ALT_INV_sec_display[5]~3_combout\,
	combout => \LessThan11~1_combout\);

-- Location: LABCELL_X43_Y4_N24
\LessThan12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = ( counter_sec(2) & ( (!counter_sec(28) & ((!counter_sec(4)) # ((!counter_sec(1)) # (!counter_sec(3))))) ) ) # ( !counter_sec(2) & ( !counter_sec(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(4),
	datab => ALT_INV_counter_sec(1),
	datac => ALT_INV_counter_sec(28),
	datad => ALT_INV_counter_sec(3),
	dataf => ALT_INV_counter_sec(2),
	combout => \LessThan12~0_combout\);

-- Location: LABCELL_X43_Y4_N33
\LessThan12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = ( \sec_display[5]~3_combout\ & ( !counter_sec(5) & ( (\sec_display[5]~1_combout\ & (\sec_display[5]~0_combout\ & (\sec_display[5]~2_combout\ & \LessThan12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec_display[5]~1_combout\,
	datab => \ALT_INV_sec_display[5]~0_combout\,
	datac => \ALT_INV_sec_display[5]~2_combout\,
	datad => \ALT_INV_LessThan12~0_combout\,
	datae => \ALT_INV_sec_display[5]~3_combout\,
	dataf => ALT_INV_counter_sec(5),
	combout => \LessThan12~1_combout\);

-- Location: LABCELL_X45_Y3_N36
\sec_display[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_display[5]~4_combout\ = ( \LessThan12~1_combout\ & ( !counter_sec(31) & ( (!\LessThan13~0_combout\ & (\LessThan0~0_combout\ & (!\LessThan11~1_combout\ & !\LessThan14~0_combout\))) ) ) ) # ( !\LessThan12~1_combout\ & ( !counter_sec(31) & ( 
-- (!\LessThan13~0_combout\ & (\LessThan0~0_combout\ & !\LessThan14~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan13~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan11~1_combout\,
	datad => \ALT_INV_LessThan14~0_combout\,
	datae => \ALT_INV_LessThan12~1_combout\,
	dataf => ALT_INV_counter_sec(31),
	combout => \sec_display[5]~4_combout\);

-- Location: LABCELL_X43_Y4_N27
\LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = ( counter_sec(2) & ( (!counter_sec(4) & !counter_sec(3)) ) ) # ( !counter_sec(2) & ( (!counter_sec(4) & ((!counter_sec(1)) # (!counter_sec(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(4),
	datac => ALT_INV_counter_sec(1),
	datad => ALT_INV_counter_sec(3),
	dataf => ALT_INV_counter_sec(2),
	combout => \LessThan10~0_combout\);

-- Location: LABCELL_X43_Y4_N12
\LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = ( !counter_sec(5) & ( (\sec_display[5]~1_combout\ & (\sec_display[5]~2_combout\ & (\LessThan10~0_combout\ & \sec_display[5]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec_display[5]~1_combout\,
	datab => \ALT_INV_sec_display[5]~2_combout\,
	datac => \ALT_INV_LessThan10~0_combout\,
	datad => \ALT_INV_sec_display[5]~0_combout\,
	dataf => ALT_INV_counter_sec(5),
	combout => \LessThan10~1_combout\);

-- Location: LABCELL_X45_Y3_N42
\sec_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_1~0_combout\ = ( \LessThan10~1_combout\ & ( !counter_sec(30) & ( (\LessThan12~1_combout\ & !counter_sec(29)) ) ) ) # ( !\LessThan10~1_combout\ & ( !counter_sec(30) & ( (\LessThan12~1_combout\ & (!counter_sec(29) & !\LessThan11~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan12~1_combout\,
	datab => ALT_INV_counter_sec(29),
	datac => \ALT_INV_LessThan11~1_combout\,
	datae => \ALT_INV_LessThan10~1_combout\,
	dataf => ALT_INV_counter_sec(30),
	combout => \sec_1~0_combout\);

-- Location: LABCELL_X48_Y6_N33
\seconds_display|HEX1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1[0]~1_combout\ = ( !counter_sec(31) & ( (!\LessThan14~3_combout\ & ((!\seconds_display|HEX1[1]~0_combout\) # ((!\sec_display[5]~4_combout\ & !\sec_1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_display|ALT_INV_HEX1[1]~0_combout\,
	datab => \ALT_INV_LessThan14~3_combout\,
	datac => \ALT_INV_sec_display[5]~4_combout\,
	datad => \ALT_INV_sec_1~0_combout\,
	dataf => ALT_INV_counter_sec(31),
	combout => \seconds_display|HEX1[0]~1_combout\);

-- Location: LABCELL_X45_Y3_N12
\seconds_display|HEX1[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1[1]~2_combout\ = ( \LessThan13~0_combout\ & ( !counter_sec(31) ) ) # ( !\LessThan13~0_combout\ & ( (!counter_sec(31) & ((!\LessThan14~2_combout\) # ((\LessThan14~0_combout\) # (counter_sec(30))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011110000101100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan14~2_combout\,
	datab => ALT_INV_counter_sec(30),
	datac => ALT_INV_counter_sec(31),
	datad => \ALT_INV_LessThan14~0_combout\,
	dataf => \ALT_INV_LessThan13~0_combout\,
	combout => \seconds_display|HEX1[1]~2_combout\);

-- Location: LABCELL_X48_Y6_N24
\seconds_display|HEX1[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1[1]~3_combout\ = ( \sec_1~0_combout\ & ( counter_sec(31) & ( (\seconds_display|HEX1[1]~2_combout\ & (!\LessThan14~3_combout\ $ (!\sec_display[5]~4_combout\))) ) ) ) # ( !\sec_1~0_combout\ & ( counter_sec(31) & ( 
-- (\seconds_display|HEX1[1]~2_combout\ & (!\LessThan14~3_combout\ $ (!\sec_display[5]~4_combout\))) ) ) ) # ( \sec_1~0_combout\ & ( !counter_sec(31) & ( (\seconds_display|HEX1[1]~2_combout\ & (!\LessThan14~3_combout\ $ (!\sec_display[5]~4_combout\))) ) ) ) 
-- # ( !\sec_1~0_combout\ & ( !counter_sec(31) & ( (\seconds_display|HEX1[1]~2_combout\ & (!\sec_display[5]~4_combout\ $ (((!\seconds_display|HEX1[1]~0_combout\ & !\LessThan14~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001000000000110000110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_display|ALT_INV_HEX1[1]~0_combout\,
	datab => \ALT_INV_LessThan14~3_combout\,
	datac => \seconds_display|ALT_INV_HEX1[1]~2_combout\,
	datad => \ALT_INV_sec_display[5]~4_combout\,
	datae => \ALT_INV_sec_1~0_combout\,
	dataf => ALT_INV_counter_sec(31),
	combout => \seconds_display|HEX1[1]~3_combout\);

-- Location: LABCELL_X48_Y6_N42
\seconds_display|HEX1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1~4_combout\ = ( \sec_1~0_combout\ & ( counter_sec(31) & ( (!\LessThan14~3_combout\ & (!\seconds_display|HEX1[1]~2_combout\ & \sec_display[5]~4_combout\)) ) ) ) # ( !\sec_1~0_combout\ & ( counter_sec(31) & ( (!\LessThan14~3_combout\ & 
-- (!\seconds_display|HEX1[1]~2_combout\ & \sec_display[5]~4_combout\)) ) ) ) # ( \sec_1~0_combout\ & ( !counter_sec(31) & ( (!\LessThan14~3_combout\ & (!\seconds_display|HEX1[1]~2_combout\ & \sec_display[5]~4_combout\)) ) ) ) # ( !\sec_1~0_combout\ & ( 
-- !counter_sec(31) & ( (!\seconds_display|HEX1[1]~0_combout\ & (!\LessThan14~3_combout\ & (!\seconds_display|HEX1[1]~2_combout\ & \sec_display[5]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_display|ALT_INV_HEX1[1]~0_combout\,
	datab => \ALT_INV_LessThan14~3_combout\,
	datac => \seconds_display|ALT_INV_HEX1[1]~2_combout\,
	datad => \ALT_INV_sec_display[5]~4_combout\,
	datae => \ALT_INV_sec_1~0_combout\,
	dataf => ALT_INV_counter_sec(31),
	combout => \seconds_display|HEX1~4_combout\);

-- Location: LABCELL_X48_Y6_N36
\seconds_display|HEX1[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1[3]~5_combout\ = ( \LessThan14~3_combout\ & ( \sec_display[5]~4_combout\ ) ) # ( !\LessThan14~3_combout\ & ( (!counter_sec(31) & ((!\seconds_display|HEX1[1]~0_combout\) # ((!\sec_display[5]~4_combout\ & !\sec_1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000000101010101000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(31),
	datab => \ALT_INV_sec_display[5]~4_combout\,
	datac => \ALT_INV_sec_1~0_combout\,
	datad => \seconds_display|ALT_INV_HEX1[1]~0_combout\,
	dataf => \ALT_INV_LessThan14~3_combout\,
	combout => \seconds_display|HEX1[3]~5_combout\);

-- Location: LABCELL_X48_Y6_N0
\seconds_display|HEX1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1\(4) = ( \sec_1~0_combout\ & ( counter_sec(31) & ( ((\seconds_display|HEX1[1]~2_combout\ & !\sec_display[5]~4_combout\)) # (\LessThan14~3_combout\) ) ) ) # ( !\sec_1~0_combout\ & ( counter_sec(31) & ( 
-- ((\seconds_display|HEX1[1]~2_combout\ & !\sec_display[5]~4_combout\)) # (\LessThan14~3_combout\) ) ) ) # ( \sec_1~0_combout\ & ( !counter_sec(31) & ( ((\seconds_display|HEX1[1]~2_combout\ & !\sec_display[5]~4_combout\)) # (\LessThan14~3_combout\) ) ) ) # 
-- ( !\sec_1~0_combout\ & ( !counter_sec(31) & ( (((\seconds_display|HEX1[1]~2_combout\ & !\sec_display[5]~4_combout\)) # (\LessThan14~3_combout\)) # (\seconds_display|HEX1[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111001111110011001100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_display|ALT_INV_HEX1[1]~0_combout\,
	datab => \ALT_INV_LessThan14~3_combout\,
	datac => \seconds_display|ALT_INV_HEX1[1]~2_combout\,
	datad => \ALT_INV_sec_display[5]~4_combout\,
	datae => \ALT_INV_sec_1~0_combout\,
	dataf => ALT_INV_counter_sec(31),
	combout => \seconds_display|HEX1\(4));

-- Location: LABCELL_X48_Y6_N54
\seconds_display|HEX1[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1[5]~6_combout\ = ( \seconds_display|HEX1[1]~0_combout\ & ( counter_sec(31) & ( \sec_display[5]~4_combout\ ) ) ) # ( !\seconds_display|HEX1[1]~0_combout\ & ( counter_sec(31) & ( \sec_display[5]~4_combout\ ) ) ) # ( 
-- \seconds_display|HEX1[1]~0_combout\ & ( !counter_sec(31) & ( (!\LessThan14~0_combout\ & ((!\sec_1~0_combout\) # ((\sec_display[5]~4_combout\ & \LessThan14~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010001000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan14~0_combout\,
	datab => \ALT_INV_sec_display[5]~4_combout\,
	datac => \ALT_INV_sec_1~0_combout\,
	datad => \ALT_INV_LessThan14~2_combout\,
	datae => \seconds_display|ALT_INV_HEX1[1]~0_combout\,
	dataf => ALT_INV_counter_sec(31),
	combout => \seconds_display|HEX1[5]~6_combout\);

-- Location: LABCELL_X48_Y6_N48
\seconds_display|HEX1[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX1[6]~7_combout\ = ( \sec_1~0_combout\ & ( counter_sec(31) & ( (!\seconds_display|HEX1[1]~2_combout\ & ((!\sec_display[5]~4_combout\))) # (\seconds_display|HEX1[1]~2_combout\ & (\LessThan14~3_combout\ & \sec_display[5]~4_combout\)) ) ) 
-- ) # ( !\sec_1~0_combout\ & ( counter_sec(31) & ( (!\seconds_display|HEX1[1]~2_combout\ & ((!\sec_display[5]~4_combout\))) # (\seconds_display|HEX1[1]~2_combout\ & (\LessThan14~3_combout\ & \sec_display[5]~4_combout\)) ) ) ) # ( \sec_1~0_combout\ & ( 
-- !counter_sec(31) & ( (!\seconds_display|HEX1[1]~2_combout\ & ((!\sec_display[5]~4_combout\))) # (\seconds_display|HEX1[1]~2_combout\ & (\LessThan14~3_combout\ & \sec_display[5]~4_combout\)) ) ) ) # ( !\sec_1~0_combout\ & ( !counter_sec(31) & ( 
-- (!\seconds_display|HEX1[1]~2_combout\ & (((!\sec_display[5]~4_combout\)))) # (\seconds_display|HEX1[1]~2_combout\ & (\sec_display[5]~4_combout\ & ((\LessThan14~3_combout\) # (\seconds_display|HEX1[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000111111100000000001111110000000000111111000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_display|ALT_INV_HEX1[1]~0_combout\,
	datab => \ALT_INV_LessThan14~3_combout\,
	datac => \seconds_display|ALT_INV_HEX1[1]~2_combout\,
	datad => \ALT_INV_sec_display[5]~4_combout\,
	datae => \ALT_INV_sec_1~0_combout\,
	dataf => ALT_INV_counter_sec(31),
	combout => \seconds_display|HEX1[6]~7_combout\);

-- Location: LABCELL_X45_Y4_N12
\Add10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = ( \LessThan14~0_combout\ & ( \LessThan13~0_combout\ & ( !counter_sec(31) $ (counter_sec(3)) ) ) ) # ( !\LessThan14~0_combout\ & ( \LessThan13~0_combout\ & ( !counter_sec(31) $ (counter_sec(3)) ) ) ) # ( \LessThan14~0_combout\ & ( 
-- !\LessThan13~0_combout\ & ( !counter_sec(31) $ (counter_sec(3)) ) ) ) # ( !\LessThan14~0_combout\ & ( !\LessThan13~0_combout\ & ( !counter_sec(3) $ ((((\LessThan14~2_combout\ & !counter_sec(30))) # (counter_sec(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000001001111111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan14~2_combout\,
	datab => ALT_INV_counter_sec(30),
	datac => ALT_INV_counter_sec(31),
	datad => ALT_INV_counter_sec(3),
	datae => \ALT_INV_LessThan14~0_combout\,
	dataf => \ALT_INV_LessThan13~0_combout\,
	combout => \Add10~0_combout\);

-- Location: LABCELL_X48_Y6_N30
\sec_display[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec_display[4]~5_combout\ = ( counter_sec(31) & ( !\LessThan14~3_combout\ ) ) # ( !counter_sec(31) & ( (!\LessThan14~3_combout\ & ((!\seconds_display|HEX1[1]~0_combout\) # (\sec_1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_display|ALT_INV_HEX1[1]~0_combout\,
	datab => \ALT_INV_LessThan14~3_combout\,
	datac => \ALT_INV_sec_1~0_combout\,
	dataf => ALT_INV_counter_sec(31),
	combout => \sec_display[4]~5_combout\);

-- Location: LABCELL_X48_Y7_N54
\seconds_display|HEX0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX0[0]~0_combout\ = ( counter_sec(2) & ( \sec_display[4]~5_combout\ & ( (!\sec_display[5]~4_combout\ & (!counter_sec(1) & (!\Add10~0_combout\ $ (counter_sec(0))))) # (\sec_display[5]~4_combout\ & (counter_sec(0) & (!counter_sec(1) $ 
-- (\Add10~0_combout\)))) ) ) ) # ( !counter_sec(2) & ( \sec_display[4]~5_combout\ & ( (!\sec_display[5]~4_combout\ & (counter_sec(0) & (!counter_sec(1) $ (\Add10~0_combout\)))) # (\sec_display[5]~4_combout\ & (!counter_sec(1) & (!\Add10~0_combout\ $ 
-- (!counter_sec(0))))) ) ) ) # ( counter_sec(2) & ( !\sec_display[4]~5_combout\ & ( (!\Add10~0_combout\ & (!\sec_display[5]~4_combout\ & ((counter_sec(0))))) # (\Add10~0_combout\ & (counter_sec(1) & (!\sec_display[5]~4_combout\ $ (counter_sec(0))))) ) ) ) # 
-- ( !counter_sec(2) & ( !\sec_display[4]~5_combout\ & ( (!\Add10~0_combout\ & (\sec_display[5]~4_combout\ & (counter_sec(1) & !counter_sec(0)))) # (\Add10~0_combout\ & (counter_sec(0) & ((counter_sec(1)) # (\sec_display[5]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000111000000101010000100000100110000101000000001001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec_display[5]~4_combout\,
	datab => ALT_INV_counter_sec(1),
	datac => \ALT_INV_Add10~0_combout\,
	datad => ALT_INV_counter_sec(0),
	datae => ALT_INV_counter_sec(2),
	dataf => \ALT_INV_sec_display[4]~5_combout\,
	combout => \seconds_display|HEX0[0]~0_combout\);

-- Location: LABCELL_X48_Y7_N12
\seconds_display|HEX0[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX0[1]~1_combout\ = ( counter_sec(2) & ( \sec_display[4]~5_combout\ & ( (!counter_sec(1) & (!\sec_display[5]~4_combout\ & (!\Add10~0_combout\ $ (!counter_sec(0))))) # (counter_sec(1) & ((!counter_sec(0) & (!\sec_display[5]~4_combout\)) # 
-- (counter_sec(0) & ((\Add10~0_combout\))))) ) ) ) # ( !counter_sec(2) & ( \sec_display[4]~5_combout\ & ( (!counter_sec(1) & (\sec_display[5]~4_combout\ & (!\Add10~0_combout\ $ (counter_sec(0))))) # (counter_sec(1) & (!\sec_display[5]~4_combout\ $ 
-- (((!\Add10~0_combout\) # (!counter_sec(0)))))) ) ) ) # ( counter_sec(2) & ( !\sec_display[4]~5_combout\ & ( (!counter_sec(1) & (!\sec_display[5]~4_combout\ $ (((!counter_sec(0)) # (\Add10~0_combout\))))) # (counter_sec(1) & (!\sec_display[5]~4_combout\ & 
-- (!\Add10~0_combout\ $ (counter_sec(0))))) ) ) ) # ( !counter_sec(2) & ( !\sec_display[4]~5_combout\ & ( (!counter_sec(1) & ((!counter_sec(0) & (!\sec_display[5]~4_combout\)) # (counter_sec(0) & ((\Add10~0_combout\))))) # (counter_sec(1) & 
-- (\sec_display[5]~4_combout\ & (!\Add10~0_combout\ $ (!counter_sec(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100100011100011001001000011001010001000101100010101010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec_display[5]~4_combout\,
	datab => ALT_INV_counter_sec(1),
	datac => \ALT_INV_Add10~0_combout\,
	datad => ALT_INV_counter_sec(0),
	datae => ALT_INV_counter_sec(2),
	dataf => \ALT_INV_sec_display[4]~5_combout\,
	combout => \seconds_display|HEX0[1]~1_combout\);

-- Location: LABCELL_X48_Y7_N6
\seconds_display|HEX0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX0[2]~2_combout\ = ( counter_sec(2) & ( \sec_display[4]~5_combout\ & ( (!\sec_display[5]~4_combout\ & (\Add10~0_combout\ & ((!counter_sec(0)) # (counter_sec(1))))) # (\sec_display[5]~4_combout\ & (counter_sec(1) & (!\Add10~0_combout\ & 
-- !counter_sec(0)))) ) ) ) # ( !counter_sec(2) & ( \sec_display[4]~5_combout\ & ( (!\Add10~0_combout\ & ((!\sec_display[5]~4_combout\ & (counter_sec(1) & !counter_sec(0))) # (\sec_display[5]~4_combout\ & ((!counter_sec(0)) # (counter_sec(1)))))) ) ) ) # ( 
-- counter_sec(2) & ( !\sec_display[4]~5_combout\ & ( (!\sec_display[5]~4_combout\ & (!counter_sec(0) & (!counter_sec(1) $ (!\Add10~0_combout\)))) # (\sec_display[5]~4_combout\ & (!counter_sec(1) & (\Add10~0_combout\))) ) ) ) # ( !counter_sec(2) & ( 
-- !\sec_display[4]~5_combout\ & ( (!\sec_display[5]~4_combout\ & (!counter_sec(1) & (\Add10~0_combout\))) # (\sec_display[5]~4_combout\ & (!counter_sec(0) & (!counter_sec(1) $ (\Add10~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100001000001011000000010001110000000100000001101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec_display[5]~4_combout\,
	datab => ALT_INV_counter_sec(1),
	datac => \ALT_INV_Add10~0_combout\,
	datad => ALT_INV_counter_sec(0),
	datae => ALT_INV_counter_sec(2),
	dataf => \ALT_INV_sec_display[4]~5_combout\,
	combout => \seconds_display|HEX0[2]~2_combout\);

-- Location: LABCELL_X48_Y6_N18
\seconds_display|HEX0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX0[3]~3_combout\ = ( counter_sec(0) & ( \sec_display[4]~5_combout\ & ( !counter_sec(2) $ (!counter_sec(1) $ (!\sec_display[5]~4_combout\)) ) ) ) # ( !counter_sec(0) & ( \sec_display[4]~5_combout\ & ( (!counter_sec(2) & 
-- (\Add10~0_combout\ & (!counter_sec(1) $ (!\sec_display[5]~4_combout\)))) # (counter_sec(2) & ((!\Add10~0_combout\ & (!counter_sec(1) & !\sec_display[5]~4_combout\)) # (\Add10~0_combout\ & (counter_sec(1) & \sec_display[5]~4_combout\)))) ) ) ) # ( 
-- counter_sec(0) & ( !\sec_display[4]~5_combout\ & ( !counter_sec(2) $ (\sec_display[5]~4_combout\) ) ) ) # ( !counter_sec(0) & ( !\sec_display[4]~5_combout\ & ( (!counter_sec(2) & (\sec_display[5]~4_combout\ & (!\Add10~0_combout\ $ (!counter_sec(1))))) # 
-- (counter_sec(2) & (!\sec_display[5]~4_combout\ & (!\Add10~0_combout\ $ (counter_sec(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100101000101010100101010101000010001000011010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(2),
	datab => \ALT_INV_Add10~0_combout\,
	datac => ALT_INV_counter_sec(1),
	datad => \ALT_INV_sec_display[5]~4_combout\,
	datae => ALT_INV_counter_sec(0),
	dataf => \ALT_INV_sec_display[4]~5_combout\,
	combout => \seconds_display|HEX0[3]~3_combout\);

-- Location: MLABCELL_X47_Y7_N15
\seconds_display|HEX0[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX0[4]~4_combout\ = ( \sec_display[4]~5_combout\ & ( \Add10~0_combout\ & ( (!counter_sec(1) & ((!counter_sec(0) & (!counter_sec(2) & \sec_display[5]~4_combout\)) # (counter_sec(0) & ((!counter_sec(2)) # (\sec_display[5]~4_combout\))))) # 
-- (counter_sec(1) & (counter_sec(0) & (!counter_sec(2) & \sec_display[5]~4_combout\))) ) ) ) # ( !\sec_display[4]~5_combout\ & ( \Add10~0_combout\ & ( (!counter_sec(1) & (counter_sec(0) & (counter_sec(2) & !\sec_display[5]~4_combout\))) # (counter_sec(1) & 
-- ((!counter_sec(0) & (counter_sec(2) & !\sec_display[5]~4_combout\)) # (counter_sec(0) & ((!\sec_display[5]~4_combout\) # (counter_sec(2)))))) ) ) ) # ( \sec_display[4]~5_combout\ & ( !\Add10~0_combout\ & ( (!counter_sec(0) & (!counter_sec(1) & 
-- (counter_sec(2) & !\sec_display[5]~4_combout\))) # (counter_sec(0) & (((!\sec_display[5]~4_combout\) # (counter_sec(2))))) ) ) ) # ( !\sec_display[4]~5_combout\ & ( !\Add10~0_combout\ & ( (!counter_sec(0) & (counter_sec(1) & (!counter_sec(2) & 
-- \sec_display[5]~4_combout\))) # (counter_sec(0) & (((!counter_sec(2)) # (\sec_display[5]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110011001110110000001100010111000000010010000010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(1),
	datab => ALT_INV_counter_sec(0),
	datac => ALT_INV_counter_sec(2),
	datad => \ALT_INV_sec_display[5]~4_combout\,
	datae => \ALT_INV_sec_display[4]~5_combout\,
	dataf => \ALT_INV_Add10~0_combout\,
	combout => \seconds_display|HEX0[4]~4_combout\);

-- Location: LABCELL_X48_Y6_N12
\seconds_display|HEX0[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX0[5]~5_combout\ = ( counter_sec(0) & ( \sec_display[4]~5_combout\ & ( !\Add10~0_combout\ $ (((!counter_sec(2) & (counter_sec(1) & \sec_display[5]~4_combout\)) # (counter_sec(2) & (!counter_sec(1) & !\sec_display[5]~4_combout\)))) ) ) ) 
-- # ( !counter_sec(0) & ( \sec_display[4]~5_combout\ & ( (!\Add10~0_combout\ & (counter_sec(1) & (!counter_sec(2) $ (\sec_display[5]~4_combout\)))) ) ) ) # ( counter_sec(0) & ( !\sec_display[4]~5_combout\ & ( !\Add10~0_combout\ $ (!counter_sec(1) $ 
-- (((!counter_sec(2)) # (\sec_display[5]~4_combout\)))) ) ) ) # ( !counter_sec(0) & ( !\sec_display[4]~5_combout\ & ( (!counter_sec(1) & ((!counter_sec(2) & (!\Add10~0_combout\ & \sec_display[5]~4_combout\)) # (counter_sec(2) & (\Add10~0_combout\ & 
-- !\sec_display[5]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010000000100101101100001100001000000001001001110011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(2),
	datab => \ALT_INV_Add10~0_combout\,
	datac => ALT_INV_counter_sec(1),
	datad => \ALT_INV_sec_display[5]~4_combout\,
	datae => ALT_INV_counter_sec(0),
	dataf => \ALT_INV_sec_display[4]~5_combout\,
	combout => \seconds_display|HEX0[5]~5_combout\);

-- Location: LABCELL_X48_Y6_N6
\seconds_display|HEX0[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \seconds_display|HEX0[6]~6_combout\ = ( counter_sec(0) & ( \sec_display[4]~5_combout\ & ( (!counter_sec(2) & ((!\Add10~0_combout\ & (!counter_sec(1) & !\sec_display[5]~4_combout\)) # (\Add10~0_combout\ & (counter_sec(1) & \sec_display[5]~4_combout\)))) # 
-- (counter_sec(2) & (!\Add10~0_combout\ & (!counter_sec(1) $ (!\sec_display[5]~4_combout\)))) ) ) ) # ( !counter_sec(0) & ( \sec_display[4]~5_combout\ & ( (!counter_sec(1) & (!\Add10~0_combout\ $ (((counter_sec(2) & !\sec_display[5]~4_combout\))))) ) ) ) # 
-- ( counter_sec(0) & ( !\sec_display[4]~5_combout\ & ( (!counter_sec(2) & (!\sec_display[5]~4_combout\ & (!\Add10~0_combout\ $ (counter_sec(1))))) # (counter_sec(2) & (\sec_display[5]~4_combout\ & (!\Add10~0_combout\ $ (counter_sec(1))))) ) ) ) # ( 
-- !counter_sec(0) & ( !\sec_display[4]~5_combout\ & ( (counter_sec(1) & (!\Add10~0_combout\ $ (((!counter_sec(2)) # (\sec_display[5]~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000011100000100100000110010000110000001000010001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sec(2),
	datab => \ALT_INV_Add10~0_combout\,
	datac => ALT_INV_counter_sec(1),
	datad => \ALT_INV_sec_display[5]~4_combout\,
	datae => ALT_INV_counter_sec(0),
	dataf => \ALT_INV_sec_display[4]~5_combout\,
	combout => \seconds_display|HEX0[6]~6_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X71_Y27_N0
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


