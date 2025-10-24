-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/26/2023 19:38:54"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parking IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ECHO1 : IN std_logic;
	ECHO2 : IN std_logic;
	password : IN std_logic_vector(9 DOWNTO 0);
	trigger1 : OUT std_logic;
	trigger2 : OUT std_logic;
	ledr : OUT std_logic;
	ledg : OUT std_logic;
	ledy : OUT std_logic;
	clk_out1 : OUT std_logic;
	clk_out2 : OUT std_logic;
	clk_out3 : OUT std_logic;
	gate : OUT std_logic;
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	buzzer : OUT std_logic;
	clk_servo1 : OUT std_logic;
	clk_servo2 : OUT std_logic;
	pwm : OUT std_logic
	);
END parking;

-- Design Ports Information
-- trigger1	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger2	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledy	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out1	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out2	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out3	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gate	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buzzer	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_servo1	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_servo2	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ECHO1	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ECHO2	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parking IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ECHO1 : std_logic;
SIGNAL ww_ECHO2 : std_logic;
SIGNAL ww_password : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_trigger1 : std_logic;
SIGNAL ww_trigger2 : std_logic;
SIGNAL ww_ledr : std_logic;
SIGNAL ww_ledg : std_logic;
SIGNAL ww_ledy : std_logic;
SIGNAL ww_clk_out1 : std_logic;
SIGNAL ww_clk_out2 : std_logic;
SIGNAL ww_clk_out3 : std_logic;
SIGNAL ww_gate : std_logic;
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_clk_servo1 : std_logic;
SIGNAL ww_clk_servo2 : std_logic;
SIGNAL ww_pwm : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \tmpservo2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tmpservo1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tmp0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \trigger1~output_o\ : std_logic;
SIGNAL \trigger2~output_o\ : std_logic;
SIGNAL \ledr~output_o\ : std_logic;
SIGNAL \ledg~output_o\ : std_logic;
SIGNAL \ledy~output_o\ : std_logic;
SIGNAL \clk_out1~output_o\ : std_logic;
SIGNAL \clk_out2~output_o\ : std_logic;
SIGNAL \clk_out3~output_o\ : std_logic;
SIGNAL \gate~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \clk_servo1~output_o\ : std_logic;
SIGNAL \clk_servo2~output_o\ : std_logic;
SIGNAL \pwm~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \counter0[0]~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \counter0~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \counter0~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \counter0~2_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \tmp0~0_combout\ : std_logic;
SIGNAL \tmp0~feeder_combout\ : std_logic;
SIGNAL \tmp0~q\ : std_logic;
SIGNAL \tmp0~clkctrl_outclk\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \count1~0_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \count1~1_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \count1~2_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \count1~4_combout\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \count1~5_combout\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \count1~6_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Add9~45\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \count1[23]~feeder_combout\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \count1[25]~feeder_combout\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \count1~3_combout\ : std_logic;
SIGNAL \Equal10~7_combout\ : std_logic;
SIGNAL \Equal10~8_combout\ : std_logic;
SIGNAL \Equal10~9_combout\ : std_logic;
SIGNAL \trigger1~0_combout\ : std_logic;
SIGNAL \trigger1~reg0_q\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal10~10_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \trigger2~0_combout\ : std_logic;
SIGNAL \trigger2~1_combout\ : std_logic;
SIGNAL \trigger2~reg0_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \tmp~feeder_combout\ : std_logic;
SIGNAL \tmp~q\ : std_logic;
SIGNAL \ECHO1~input_o\ : std_logic;
SIGNAL \count11[0]~18_combout\ : std_logic;
SIGNAL \count11[11]~40_combout\ : std_logic;
SIGNAL \count11[11]~41_combout\ : std_logic;
SIGNAL \count11[0]~19\ : std_logic;
SIGNAL \count11[1]~20_combout\ : std_logic;
SIGNAL \count11[1]~21\ : std_logic;
SIGNAL \count11[2]~22_combout\ : std_logic;
SIGNAL \count11[2]~23\ : std_logic;
SIGNAL \count11[3]~24_combout\ : std_logic;
SIGNAL \count11[3]~25\ : std_logic;
SIGNAL \count11[4]~26_combout\ : std_logic;
SIGNAL \count11[4]~27\ : std_logic;
SIGNAL \count11[5]~28_combout\ : std_logic;
SIGNAL \count11[5]~29\ : std_logic;
SIGNAL \count11[6]~30_combout\ : std_logic;
SIGNAL \count11[6]~31\ : std_logic;
SIGNAL \count11[7]~32_combout\ : std_logic;
SIGNAL \count11[7]~33\ : std_logic;
SIGNAL \count11[8]~34_combout\ : std_logic;
SIGNAL \count11[8]~feeder_combout\ : std_logic;
SIGNAL \count11[8]~35\ : std_logic;
SIGNAL \count11[9]~36_combout\ : std_logic;
SIGNAL \count11[9]~37\ : std_logic;
SIGNAL \count11[10]~38_combout\ : std_logic;
SIGNAL \count11[10]~39\ : std_logic;
SIGNAL \count11[11]~42_combout\ : std_logic;
SIGNAL \count11[11]~43\ : std_logic;
SIGNAL \count11[12]~44_combout\ : std_logic;
SIGNAL \count11[12]~45\ : std_logic;
SIGNAL \count11[13]~46_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \count11[13]~47\ : std_logic;
SIGNAL \count11[14]~48_combout\ : std_logic;
SIGNAL \count11[14]~49\ : std_logic;
SIGNAL \count11[15]~50_combout\ : std_logic;
SIGNAL \count11[15]~51\ : std_logic;
SIGNAL \count11[16]~52_combout\ : std_logic;
SIGNAL \count11[16]~53\ : std_logic;
SIGNAL \count11[17]~54_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \x~q\ : std_logic;
SIGNAL \ECHO2~input_o\ : std_logic;
SIGNAL \count22[0]~18_combout\ : std_logic;
SIGNAL \count22[11]~40_combout\ : std_logic;
SIGNAL \count22[0]~19\ : std_logic;
SIGNAL \count22[1]~20_combout\ : std_logic;
SIGNAL \count22[1]~21\ : std_logic;
SIGNAL \count22[2]~22_combout\ : std_logic;
SIGNAL \count22[2]~23\ : std_logic;
SIGNAL \count22[3]~24_combout\ : std_logic;
SIGNAL \count22[3]~25\ : std_logic;
SIGNAL \count22[4]~26_combout\ : std_logic;
SIGNAL \count22[4]~27\ : std_logic;
SIGNAL \count22[5]~28_combout\ : std_logic;
SIGNAL \count22[5]~29\ : std_logic;
SIGNAL \count22[6]~30_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \count22[6]~31\ : std_logic;
SIGNAL \count22[7]~32_combout\ : std_logic;
SIGNAL \count22[7]~33\ : std_logic;
SIGNAL \count22[8]~34_combout\ : std_logic;
SIGNAL \count22[8]~35\ : std_logic;
SIGNAL \count22[9]~36_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \count22[9]~37\ : std_logic;
SIGNAL \count22[10]~38_combout\ : std_logic;
SIGNAL \count22[10]~39\ : std_logic;
SIGNAL \count22[11]~41_combout\ : std_logic;
SIGNAL \count22[11]~42\ : std_logic;
SIGNAL \count22[12]~43_combout\ : std_logic;
SIGNAL \count22[12]~44\ : std_logic;
SIGNAL \count22[13]~45_combout\ : std_logic;
SIGNAL \count22[13]~46\ : std_logic;
SIGNAL \count22[14]~47_combout\ : std_logic;
SIGNAL \count22[14]~48\ : std_logic;
SIGNAL \count22[15]~49_combout\ : std_logic;
SIGNAL \count22[15]~50\ : std_logic;
SIGNAL \count22[16]~51_combout\ : std_logic;
SIGNAL \count22[16]~52\ : std_logic;
SIGNAL \count22[17]~53_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \y~q\ : std_logic;
SIGNAL \password[3]~input_o\ : std_logic;
SIGNAL \password[4]~input_o\ : std_logic;
SIGNAL \password[2]~input_o\ : std_logic;
SIGNAL \password[0]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \password[6]~input_o\ : std_logic;
SIGNAL \password[8]~input_o\ : std_logic;
SIGNAL \password[5]~input_o\ : std_logic;
SIGNAL \password[7]~input_o\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \password[9]~input_o\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \password[1]~input_o\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pres_state.stop~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \pres_state.stpassword~q\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \pres_state.stopen~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \pres_state.initial~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \ledr~0_combout\ : std_logic;
SIGNAL \ledy~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \counter1~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \counter1~1_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \counter1~2_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \counter1~3_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \counter1~4_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \counter1~5_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \counter1~6_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \tmp1~0_combout\ : std_logic;
SIGNAL \tmp1~q\ : std_logic;
SIGNAL \HEX1~0_combout\ : std_logic;
SIGNAL \HEX1~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \counter2~13_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \counter2[4]~4_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \counter2[26]~14_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \counter2[27]~15_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \counter2[28]~16_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \counter2~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \counter2[0]~24_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \counter2~25_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \counter2~26_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \counter2~27_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \counter2~28_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \counter2~29_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \counter2~23_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \counter2~30_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \counter2~31_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \counter2~32_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \counter2~33_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \counter2~34_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \counter2~20_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \counter2~21_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \counter2~22_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \counter2~19_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \counter2~18_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \counter2~17_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \counter2~12_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \counter2~8_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \counter2~9_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \counter2~10_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \counter2~11_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \counter2~6_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \counter2~7_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \counter2[30]~2_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \counter2[30]~3_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \counter2[31]~35_combout\ : std_logic;
SIGNAL \counter2[30]~1_combout\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \counter2[29]~5_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \tmp2~0_combout\ : std_logic;
SIGNAL \tmp2~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \buzzer$latch~combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \countservo1~2_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \countservo1~0_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \countservo1~1_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \countservo1~3_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \countservo1~4_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \countservo1~5_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \countservo1~6_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \countservo1~7_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \countservo1~8_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Equal4~10_combout\ : std_logic;
SIGNAL \tmpservo1~0_combout\ : std_logic;
SIGNAL \tmpservo1~feeder_combout\ : std_logic;
SIGNAL \tmpservo1~q\ : std_logic;
SIGNAL \Add5~1_cout\ : std_logic;
SIGNAL \Add5~3_cout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \countservo2~1_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \countservo2~0_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \countservo2~2_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \countservo2~3_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \countservo2~4_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \countservo2~5_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \countservo2~6_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \tmpservo2~0_combout\ : std_logic;
SIGNAL \tmpservo2~feeder_combout\ : std_logic;
SIGNAL \tmpservo2~q\ : std_logic;
SIGNAL \tmpservo2~clkctrl_outclk\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~5_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~6_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~1_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~0_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~3_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~2_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~4_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~7_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~8_combout\ : std_logic;
SIGNAL \counts2~30_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \counts2~29_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \counts2~28_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \counts2~27_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \counts2~26_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \counts2~25_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \counts2~24_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \counts2~23_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \counts2~22_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \counts2~21_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \counts2~20_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \counts2~19_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \counts2~18_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \counts2~17_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \counts2~16_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \counts2~15_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \counts2~14_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \counts2~13_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \counts2~12_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \counts2~11_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \counts2~10_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \counts2~9_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \counts2~8_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \counts2~7_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \counts2~6_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \counts2~5_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \counts2~4_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \counts2~3_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \counts2~2_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \counts2~1_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \counts2~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~9_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~10_combout\ : std_logic;
SIGNAL \segnaleServoNovanta~q\ : std_logic;
SIGNAL \tmpservo1~clkctrl_outclk\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \counts1~0_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \counts1~1_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \segnaleServoZero~0_combout\ : std_logic;
SIGNAL \segnaleServoZero~1_combout\ : std_logic;
SIGNAL \segnaleServoZero~q\ : std_logic;
SIGNAL \pwm~0_combout\ : std_logic;
SIGNAL countservo1 : std_logic_vector(31 DOWNTO 0);
SIGNAL count11 : std_logic_vector(17 DOWNTO 0);
SIGNAL countservo2 : std_logic_vector(31 DOWNTO 0);
SIGNAL count22 : std_logic_vector(17 DOWNTO 0);
SIGNAL count1 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL counter0 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter1 : std_logic_vector(31 DOWNTO 0);
SIGNAL counts1 : std_logic_vector(31 DOWNTO 0);
SIGNAL counts2 : std_logic_vector(31 DOWNTO 0);
SIGNAL counter2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_HEX1~0_combout\ : std_logic;
SIGNAL \ALT_INV_ledr~0_combout\ : std_logic;
SIGNAL \ALT_INV_pres_state.initial~q\ : std_logic;
SIGNAL \ALT_INV_pres_state.stpassword~q\ : std_logic;
SIGNAL \ALT_INV_ECHO2~input_o\ : std_logic;
SIGNAL \ALT_INV_ECHO1~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ECHO1 <= ECHO1;
ww_ECHO2 <= ECHO2;
ww_password <= password;
trigger1 <= ww_trigger1;
trigger2 <= ww_trigger2;
ledr <= ww_ledr;
ledg <= ww_ledg;
ledy <= ww_ledy;
clk_out1 <= ww_clk_out1;
clk_out2 <= ww_clk_out2;
clk_out3 <= ww_clk_out3;
gate <= ww_gate;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
buzzer <= ww_buzzer;
clk_servo1 <= ww_clk_servo1;
clk_servo2 <= ww_clk_servo2;
pwm <= ww_pwm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\tmpservo2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tmpservo2~q\);

\tmpservo1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tmpservo1~q\);

\tmp0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tmp0~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_HEX1~0_combout\ <= NOT \HEX1~0_combout\;
\ALT_INV_ledr~0_combout\ <= NOT \ledr~0_combout\;
\ALT_INV_pres_state.initial~q\ <= NOT \pres_state.initial~q\;
\ALT_INV_pres_state.stpassword~q\ <= NOT \pres_state.stpassword~q\;
\ALT_INV_ECHO2~input_o\ <= NOT \ECHO2~input_o\;
\ALT_INV_ECHO1~input_o\ <= NOT \ECHO1~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X69_Y0_N23
\trigger1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trigger1~reg0_q\,
	devoe => ww_devoe,
	o => \trigger1~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\trigger2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trigger2~reg0_q\,
	devoe => ww_devoe,
	o => \trigger2~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\ledr~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector4~0_combout\,
	devoe => ww_devoe,
	o => \ledr~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\ledg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr~0_combout\,
	devoe => ww_devoe,
	o => \ledg~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ledy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledy~0_combout\,
	devoe => ww_devoe,
	o => \ledy~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\clk_out1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmp~q\,
	devoe => ww_devoe,
	o => \clk_out1~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\clk_out2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmp0~q\,
	devoe => ww_devoe,
	o => \clk_out2~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\clk_out3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmp1~q\,
	devoe => ww_devoe,
	o => \clk_out3~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\gate~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gate~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pres_state.initial~q\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledr~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pres_state.stpassword~q\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pres_state.stpassword~q\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pres_state.stpassword~q\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pres_state.stopen~q\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledr~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pres_state.initial~q\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pres_state.initial~q\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pres_state.initial~q\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pres_state.stpassword~q\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledr~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledr~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pres_state.initial~q\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pres_state.initial~q\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\buzzer~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buzzer$latch~combout\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\clk_servo1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmpservo1~q\,
	devoe => ww_devoe,
	o => \clk_servo1~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\clk_servo2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmpservo2~q\,
	devoe => ww_devoe,
	o => \clk_servo2~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\pwm~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm~0_combout\,
	devoe => ww_devoe,
	o => \pwm~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y50_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = counter0(0) $ (GND)
-- \Add1~1\ = CARRY(!counter0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X51_Y50_N2
\counter0[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter0[0]~3_combout\ = !\Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	combout => \counter0[0]~3_combout\);

-- Location: FF_X51_Y50_N3
\counter0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(0));

-- Location: LCCOMB_X52_Y50_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (counter0(1) & (!\Add1~1\)) # (!counter0(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!counter0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X51_Y50_N8
\counter0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter0~1_combout\ = (!\Equal1~10_combout\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add1~2_combout\,
	combout => \counter0~1_combout\);

-- Location: FF_X51_Y50_N9
\counter0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(1));

-- Location: LCCOMB_X52_Y50_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (counter0(2) & (\Add1~3\ $ (GND))) # (!counter0(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((counter0(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X52_Y50_N5
\counter0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(2));

-- Location: LCCOMB_X52_Y50_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (counter0(3) & (!\Add1~5\)) # (!counter0(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!counter0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X51_Y50_N14
\counter0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter0~0_combout\ = (!\Equal1~10_combout\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datad => \Add1~6_combout\,
	combout => \counter0~0_combout\);

-- Location: FF_X51_Y50_N15
\counter0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(3));

-- Location: LCCOMB_X52_Y50_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (counter0(4) & (\Add1~7\ $ (GND))) # (!counter0(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((counter0(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X51_Y50_N6
\counter0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter0~2_combout\ = (\Add1~8_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \Equal1~10_combout\,
	combout => \counter0~2_combout\);

-- Location: FF_X51_Y50_N7
\counter0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(4));

-- Location: LCCOMB_X52_Y50_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (counter0(5) & (!\Add1~9\)) # (!counter0(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!counter0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X52_Y50_N11
\counter0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(5));

-- Location: LCCOMB_X52_Y50_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (counter0(6) & (\Add1~11\ $ (GND))) # (!counter0(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((counter0(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X52_Y50_N13
\counter0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(6));

-- Location: LCCOMB_X52_Y50_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (counter0(7) & (!\Add1~13\)) # (!counter0(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!counter0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X52_Y50_N15
\counter0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(7));

-- Location: LCCOMB_X52_Y50_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (counter0(8) & (\Add1~15\ $ (GND))) # (!counter0(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((counter0(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X52_Y50_N17
\counter0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(8));

-- Location: LCCOMB_X52_Y50_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (counter0(9) & (!\Add1~17\)) # (!counter0(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!counter0(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X52_Y50_N19
\counter0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(9));

-- Location: LCCOMB_X52_Y50_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (counter0(10) & (\Add1~19\ $ (GND))) # (!counter0(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((counter0(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X52_Y50_N21
\counter0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(10));

-- Location: LCCOMB_X52_Y50_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (counter0(11) & (!\Add1~21\)) # (!counter0(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!counter0(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X52_Y50_N23
\counter0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(11));

-- Location: LCCOMB_X52_Y50_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (counter0(12) & (\Add1~23\ $ (GND))) # (!counter0(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((counter0(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X52_Y50_N25
\counter0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(12));

-- Location: LCCOMB_X52_Y50_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (counter0(13) & (!\Add1~25\)) # (!counter0(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!counter0(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X52_Y50_N27
\counter0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(13));

-- Location: LCCOMB_X52_Y50_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (counter0(14) & (\Add1~27\ $ (GND))) # (!counter0(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((counter0(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X52_Y50_N29
\counter0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(14));

-- Location: LCCOMB_X52_Y50_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (counter0(15) & (!\Add1~29\)) # (!counter0(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!counter0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X52_Y50_N31
\counter0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(15));

-- Location: LCCOMB_X52_Y49_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (counter0(16) & (\Add1~31\ $ (GND))) # (!counter0(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((counter0(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X52_Y49_N1
\counter0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(16));

-- Location: LCCOMB_X52_Y49_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (counter0(17) & (!\Add1~33\)) # (!counter0(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!counter0(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X52_Y49_N3
\counter0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(17));

-- Location: LCCOMB_X52_Y49_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (counter0(18) & (\Add1~35\ $ (GND))) # (!counter0(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((counter0(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X52_Y49_N5
\counter0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(18));

-- Location: LCCOMB_X52_Y49_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (counter0(19) & (!\Add1~37\)) # (!counter0(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!counter0(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X52_Y49_N7
\counter0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(19));

-- Location: LCCOMB_X52_Y49_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (counter0(20) & (\Add1~39\ $ (GND))) # (!counter0(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((counter0(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X52_Y49_N9
\counter0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(20));

-- Location: LCCOMB_X52_Y49_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (counter0(21) & (!\Add1~41\)) # (!counter0(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!counter0(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X52_Y49_N11
\counter0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(21));

-- Location: LCCOMB_X52_Y49_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (counter0(22) & (\Add1~43\ $ (GND))) # (!counter0(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((counter0(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X52_Y49_N13
\counter0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(22));

-- Location: LCCOMB_X52_Y49_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (counter0(23) & (!\Add1~45\)) # (!counter0(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!counter0(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X52_Y49_N15
\counter0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(23));

-- Location: LCCOMB_X52_Y49_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (counter0(24) & (\Add1~47\ $ (GND))) # (!counter0(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((counter0(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X52_Y49_N17
\counter0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(24));

-- Location: LCCOMB_X52_Y49_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (counter0(25) & (!\Add1~49\)) # (!counter0(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!counter0(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X52_Y49_N19
\counter0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(25));

-- Location: LCCOMB_X52_Y49_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (counter0(26) & (\Add1~51\ $ (GND))) # (!counter0(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((counter0(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X52_Y49_N21
\counter0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(26));

-- Location: LCCOMB_X52_Y49_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (counter0(27) & (!\Add1~53\)) # (!counter0(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!counter0(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X52_Y49_N23
\counter0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(27));

-- Location: LCCOMB_X52_Y49_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (counter0(28) & (\Add1~55\ $ (GND))) # (!counter0(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((counter0(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X52_Y49_N25
\counter0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(28));

-- Location: LCCOMB_X52_Y49_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (counter0(29) & (!\Add1~57\)) # (!counter0(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!counter0(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X52_Y49_N27
\counter0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(29));

-- Location: LCCOMB_X52_Y49_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (counter0(30) & (\Add1~59\ $ (GND))) # (!counter0(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((counter0(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X52_Y49_N29
\counter0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(30));

-- Location: LCCOMB_X52_Y49_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = counter0(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X52_Y49_N31
\counter0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(31));

-- Location: LCCOMB_X51_Y49_N0
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!counter0(28) & (!counter0(30) & (!counter0(31) & !counter0(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(28),
	datab => counter0(30),
	datac => counter0(31),
	datad => counter0(29),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X51_Y50_N30
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!counter0(15) & (!counter0(13) & (!counter0(14) & !counter0(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(15),
	datab => counter0(13),
	datac => counter0(14),
	datad => counter0(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X51_Y50_N4
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (counter0(4) & (!counter0(6) & (!counter0(5) & !counter0(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(4),
	datab => counter0(6),
	datac => counter0(5),
	datad => counter0(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X51_Y50_N26
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!counter0(8) & (!counter0(11) & (!counter0(10) & !counter0(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(8),
	datab => counter0(11),
	datac => counter0(10),
	datad => counter0(9),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X51_Y50_N12
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!counter0(0) & (counter0(3) & (!counter0(1) & !counter0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(0),
	datab => counter0(3),
	datac => counter0(1),
	datad => counter0(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X51_Y50_N28
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X51_Y49_N2
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!counter0(26) & (!counter0(27) & (!counter0(25) & !counter0(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(26),
	datab => counter0(27),
	datac => counter0(25),
	datad => counter0(24),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X51_Y49_N6
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!counter0(23) & !counter0(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter0(23),
	datad => counter0(22),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X51_Y49_N28
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!counter0(18) & (!counter0(16) & (!counter0(19) & !counter0(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(18),
	datab => counter0(16),
	datac => counter0(19),
	datad => counter0(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X51_Y49_N12
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\Equal1~6_combout\ & (!counter0(21) & (!counter0(20) & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => counter0(21),
	datac => counter0(20),
	datad => \Equal1~5_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X51_Y50_N18
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~9_combout\ & (\Equal1~4_combout\ & (\Equal1~8_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal1~8_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X51_Y50_N16
\tmp0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmp0~0_combout\ = \tmp0~q\ $ (\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp0~q\,
	datad => \Equal1~10_combout\,
	combout => \tmp0~0_combout\);

-- Location: LCCOMB_X51_Y50_N20
\tmp0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmp0~feeder_combout\ = \tmp0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmp0~0_combout\,
	combout => \tmp0~feeder_combout\);

-- Location: FF_X51_Y50_N21
tmp0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp0~q\);

-- Location: CLKCTRL_G13
\tmp0~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tmp0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tmp0~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y4_N0
\Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = count1(0) $ (VCC)
-- \Add9~1\ = CARRY(count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: FF_X51_Y4_N1
\count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(0));

-- Location: LCCOMB_X51_Y4_N2
\Add9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (count1(1) & (!\Add9~1\)) # (!count1(1) & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: FF_X51_Y4_N3
\count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(1));

-- Location: LCCOMB_X51_Y4_N4
\Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (count1(2) & (\Add9~3\ $ (GND))) # (!count1(2) & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((count1(2) & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: FF_X51_Y4_N5
\count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(2));

-- Location: LCCOMB_X51_Y4_N6
\Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (count1(3) & (!\Add9~5\)) # (!count1(3) & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: FF_X51_Y4_N7
\count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(3));

-- Location: LCCOMB_X51_Y4_N8
\Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (count1(4) & (\Add9~7\ $ (GND))) # (!count1(4) & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((count1(4) & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X52_Y4_N6
\count1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~0_combout\ = (\Add9~8_combout\ & !\Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~8_combout\,
	datad => \Equal11~3_combout\,
	combout => \count1~0_combout\);

-- Location: FF_X52_Y4_N7
\count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(4));

-- Location: LCCOMB_X51_Y4_N10
\Add9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (count1(5) & (!\Add9~9\)) # (!count1(5) & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: FF_X51_Y4_N11
\count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(5));

-- Location: LCCOMB_X51_Y4_N12
\Add9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (count1(6) & (\Add9~11\ $ (GND))) # (!count1(6) & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((count1(6) & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: FF_X51_Y4_N13
\count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(6));

-- Location: LCCOMB_X51_Y4_N14
\Add9~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (count1(7) & (!\Add9~13\)) # (!count1(7) & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!count1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(7),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X50_Y4_N14
\count1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~1_combout\ = (\Add9~14_combout\ & !\Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~14_combout\,
	datac => \Equal11~3_combout\,
	combout => \count1~1_combout\);

-- Location: FF_X50_Y4_N15
\count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(7));

-- Location: LCCOMB_X51_Y4_N16
\Add9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (count1(8) & (\Add9~15\ $ (GND))) # (!count1(8) & (!\Add9~15\ & VCC))
-- \Add9~17\ = CARRY((count1(8) & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: FF_X51_Y4_N17
\count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(8));

-- Location: LCCOMB_X51_Y4_N18
\Add9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (count1(9) & (!\Add9~17\)) # (!count1(9) & ((\Add9~17\) # (GND)))
-- \Add9~19\ = CARRY((!\Add9~17\) # (!count1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(9),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: FF_X51_Y4_N19
\count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(9));

-- Location: LCCOMB_X51_Y4_N20
\Add9~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (count1(10) & (\Add9~19\ $ (GND))) # (!count1(10) & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((count1(10) & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(10),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: FF_X51_Y4_N21
\count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(10));

-- Location: LCCOMB_X51_Y4_N22
\Add9~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (count1(11) & (!\Add9~21\)) # (!count1(11) & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!count1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: FF_X51_Y4_N23
\count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(11));

-- Location: LCCOMB_X51_Y4_N24
\Add9~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = (count1(12) & (\Add9~23\ $ (GND))) # (!count1(12) & (!\Add9~23\ & VCC))
-- \Add9~25\ = CARRY((count1(12) & !\Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(12),
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: LCCOMB_X50_Y4_N0
\count1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~2_combout\ = (!\Equal11~3_combout\ & \Add9~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal11~3_combout\,
	datad => \Add9~24_combout\,
	combout => \count1~2_combout\);

-- Location: FF_X50_Y4_N1
\count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(12));

-- Location: LCCOMB_X52_Y4_N14
\Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (count1(17) & count1(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count1(17),
	datad => count1(12),
	combout => \Equal11~2_combout\);

-- Location: LCCOMB_X51_Y4_N26
\Add9~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (count1(13) & (!\Add9~25\)) # (!count1(13) & ((\Add9~25\) # (GND)))
-- \Add9~27\ = CARRY((!\Add9~25\) # (!count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: FF_X51_Y4_N27
\count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(13));

-- Location: LCCOMB_X51_Y4_N28
\Add9~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (count1(14) & (\Add9~27\ $ (GND))) # (!count1(14) & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((count1(14) & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(14),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X50_Y4_N6
\count1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~4_combout\ = (\Add9~28_combout\ & !\Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~28_combout\,
	datac => \Equal11~3_combout\,
	combout => \count1~4_combout\);

-- Location: FF_X50_Y4_N7
\count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(14));

-- Location: LCCOMB_X51_Y4_N30
\Add9~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (count1(15) & (!\Add9~29\)) # (!count1(15) & ((\Add9~29\) # (GND)))
-- \Add9~31\ = CARRY((!\Add9~29\) # (!count1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X50_Y4_N8
\count1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~5_combout\ = (!\Equal11~3_combout\ & \Add9~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal11~3_combout\,
	datac => \Add9~30_combout\,
	combout => \count1~5_combout\);

-- Location: FF_X50_Y4_N9
\count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(15));

-- Location: LCCOMB_X51_Y3_N0
\Add9~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (count1(16) & (\Add9~31\ $ (GND))) # (!count1(16) & (!\Add9~31\ & VCC))
-- \Add9~33\ = CARRY((count1(16) & !\Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(16),
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: LCCOMB_X50_Y4_N22
\count1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~6_combout\ = (!\Equal11~3_combout\ & \Add9~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal11~3_combout\,
	datad => \Add9~32_combout\,
	combout => \count1~6_combout\);

-- Location: FF_X50_Y4_N23
\count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(16));

-- Location: LCCOMB_X50_Y4_N16
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (count1(16) & (count1(15) & (count1(0) & count1(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datab => count1(15),
	datac => count1(0),
	datad => count1(14),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X51_Y3_N2
\Add9~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (count1(17) & (!\Add9~33\)) # (!count1(17) & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!count1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(17),
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: LCCOMB_X51_Y3_N4
\Add9~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (count1(18) & (\Add9~35\ $ (GND))) # (!count1(18) & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((count1(18) & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(18),
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: FF_X51_Y3_N5
\count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(18));

-- Location: LCCOMB_X51_Y3_N6
\Add9~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (count1(19) & (!\Add9~37\)) # (!count1(19) & ((\Add9~37\) # (GND)))
-- \Add9~39\ = CARRY((!\Add9~37\) # (!count1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: FF_X51_Y3_N7
\count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(19));

-- Location: LCCOMB_X51_Y3_N8
\Add9~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (count1(20) & (\Add9~39\ $ (GND))) # (!count1(20) & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((count1(20) & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(20),
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: FF_X51_Y3_N9
\count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(20));

-- Location: LCCOMB_X51_Y3_N10
\Add9~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (count1(21) & (!\Add9~41\)) # (!count1(21) & ((\Add9~41\) # (GND)))
-- \Add9~43\ = CARRY((!\Add9~41\) # (!count1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: FF_X51_Y3_N11
\count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(21));

-- Location: LCCOMB_X51_Y3_N12
\Add9~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (count1(22) & (\Add9~43\ $ (GND))) # (!count1(22) & (!\Add9~43\ & VCC))
-- \Add9~45\ = CARRY((count1(22) & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: FF_X51_Y3_N13
\count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(22));

-- Location: LCCOMB_X51_Y3_N14
\Add9~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (count1(23) & (!\Add9~45\)) # (!count1(23) & ((\Add9~45\) # (GND)))
-- \Add9~47\ = CARRY((!\Add9~45\) # (!count1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(23),
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X52_Y4_N30
\count1[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[23]~feeder_combout\ = \Add9~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add9~46_combout\,
	combout => \count1[23]~feeder_combout\);

-- Location: FF_X52_Y4_N31
\count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(23));

-- Location: LCCOMB_X51_Y3_N16
\Add9~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (count1(24) & (\Add9~47\ $ (GND))) # (!count1(24) & (!\Add9~47\ & VCC))
-- \Add9~49\ = CARRY((count1(24) & !\Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(24),
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: FF_X52_Y4_N21
\count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	asdata => \Add9~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(24));

-- Location: LCCOMB_X51_Y3_N18
\Add9~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (count1(25) & (!\Add9~49\)) # (!count1(25) & ((\Add9~49\) # (GND)))
-- \Add9~51\ = CARRY((!\Add9~49\) # (!count1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(25),
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: LCCOMB_X52_Y4_N26
\count1[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[25]~feeder_combout\ = \Add9~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add9~50_combout\,
	combout => \count1[25]~feeder_combout\);

-- Location: FF_X52_Y4_N27
\count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(25));

-- Location: LCCOMB_X51_Y3_N20
\Add9~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (count1(26) & (\Add9~51\ $ (GND))) # (!count1(26) & (!\Add9~51\ & VCC))
-- \Add9~53\ = CARRY((count1(26) & !\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(26),
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: FF_X51_Y3_N21
\count1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(26));

-- Location: LCCOMB_X51_Y3_N22
\Add9~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (count1(27) & (!\Add9~53\)) # (!count1(27) & ((\Add9~53\) # (GND)))
-- \Add9~55\ = CARRY((!\Add9~53\) # (!count1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: FF_X51_Y3_N23
\count1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(27));

-- Location: LCCOMB_X51_Y3_N24
\Add9~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = (count1(28) & (\Add9~55\ $ (GND))) # (!count1(28) & (!\Add9~55\ & VCC))
-- \Add9~57\ = CARRY((count1(28) & !\Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(28),
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: FF_X51_Y3_N25
\count1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(28));

-- Location: LCCOMB_X51_Y3_N26
\Add9~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = (count1(29) & (!\Add9~57\)) # (!count1(29) & ((\Add9~57\) # (GND)))
-- \Add9~59\ = CARRY((!\Add9~57\) # (!count1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(29),
	datad => VCC,
	cin => \Add9~57\,
	combout => \Add9~58_combout\,
	cout => \Add9~59\);

-- Location: FF_X51_Y3_N27
\count1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(29));

-- Location: LCCOMB_X51_Y3_N28
\Add9~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~60_combout\ = (count1(30) & (\Add9~59\ $ (GND))) # (!count1(30) & (!\Add9~59\ & VCC))
-- \Add9~61\ = CARRY((count1(30) & !\Add9~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(30),
	datad => VCC,
	cin => \Add9~59\,
	combout => \Add9~60_combout\,
	cout => \Add9~61\);

-- Location: FF_X51_Y3_N29
\count1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(30));

-- Location: LCCOMB_X52_Y4_N24
\Equal10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (!count1(4) & (!count1(11) & (!count1(13) & !count1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datab => count1(11),
	datac => count1(13),
	datad => count1(6),
	combout => \Equal10~5_combout\);

-- Location: LCCOMB_X51_Y3_N30
\Add9~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = count1(31) $ (\Add9~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: FF_X51_Y3_N31
\count1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \Add9~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(31));

-- Location: LCCOMB_X52_Y4_N22
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!count1(8) & (!count1(9) & (!count1(5) & !count1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(8),
	datab => count1(9),
	datac => count1(5),
	datad => count1(10),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X52_Y4_N4
\Equal10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (!count1(25) & (!count1(24) & (!count1(23) & !count1(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(25),
	datab => count1(24),
	datac => count1(23),
	datad => count1(22),
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X52_Y4_N8
\Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (!count1(20) & (!count1(19) & (!count1(18) & !count1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(20),
	datab => count1(19),
	datac => count1(18),
	datad => count1(21),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X52_Y4_N18
\Equal10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (!count1(28) & (!count1(27) & (!count1(26) & !count1(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(28),
	datab => count1(27),
	datac => count1(26),
	datad => count1(29),
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X52_Y4_N0
\Equal10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (\Equal10~0_combout\ & (\Equal10~2_combout\ & (\Equal10~1_combout\ & \Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal10~2_combout\,
	datac => \Equal10~1_combout\,
	datad => \Equal10~3_combout\,
	combout => \Equal10~4_combout\);

-- Location: LCCOMB_X52_Y4_N2
\Equal10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (!count1(30) & (\Equal10~5_combout\ & (!count1(31) & \Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(30),
	datab => \Equal10~5_combout\,
	datac => count1(31),
	datad => \Equal10~4_combout\,
	combout => \Equal10~6_combout\);

-- Location: LCCOMB_X50_Y4_N2
\Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (count1(2) & (count1(1) & (count1(7) & count1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(2),
	datab => count1(1),
	datac => count1(7),
	datad => count1(3),
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X50_Y4_N4
\Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = (\Equal11~2_combout\ & (\Equal11~0_combout\ & (\Equal10~6_combout\ & \Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~2_combout\,
	datab => \Equal11~0_combout\,
	datac => \Equal10~6_combout\,
	datad => \Equal11~1_combout\,
	combout => \Equal11~3_combout\);

-- Location: LCCOMB_X50_Y4_N18
\count1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~3_combout\ = (!\Equal11~3_combout\ & \Add9~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal11~3_combout\,
	datad => \Add9~34_combout\,
	combout => \count1~3_combout\);

-- Location: FF_X50_Y4_N19
\count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(17));

-- Location: LCCOMB_X50_Y4_N12
\Equal10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~7_combout\ = (!count1(17) & (!count1(7) & !count1(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(17),
	datac => count1(7),
	datad => count1(12),
	combout => \Equal10~7_combout\);

-- Location: LCCOMB_X50_Y4_N24
\Equal10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~8_combout\ = (!count1(14) & (!count1(15) & (!count1(16) & !count1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(14),
	datab => count1(15),
	datac => count1(16),
	datad => count1(2),
	combout => \Equal10~8_combout\);

-- Location: LCCOMB_X50_Y4_N10
\Equal10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~9_combout\ = (\Equal10~7_combout\ & (!count1(0) & (\Equal10~6_combout\ & \Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~7_combout\,
	datab => count1(0),
	datac => \Equal10~6_combout\,
	datad => \Equal10~8_combout\,
	combout => \Equal10~9_combout\);

-- Location: LCCOMB_X50_Y4_N28
\trigger1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger1~0_combout\ = (count1(3) & (\trigger1~reg0_q\ & ((!\Equal10~9_combout\) # (!count1(1))))) # (!count1(3) & ((\trigger1~reg0_q\) # ((!count1(1) & \Equal10~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datab => count1(1),
	datac => \trigger1~reg0_q\,
	datad => \Equal10~9_combout\,
	combout => \trigger1~0_combout\);

-- Location: FF_X50_Y4_N29
\trigger1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \trigger1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trigger1~reg0_q\);

-- Location: LCCOMB_X52_Y4_N12
\Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (count1(4)) # ((!count1(1)) # (!count1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datab => count1(2),
	datac => count1(1),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X52_Y4_N28
\Equal10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~10_combout\ = (!count1(30) & (!count1(31) & \Equal10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(30),
	datac => count1(31),
	datad => \Equal10~4_combout\,
	combout => \Equal10~10_combout\);

-- Location: LCCOMB_X50_Y4_N26
\Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (count1(11) & (count1(6) & count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(11),
	datac => count1(6),
	datad => count1(13),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X50_Y4_N20
\Equal13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (!count1(3) & (\Equal11~0_combout\ & (\Equal13~0_combout\ & \Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datab => \Equal11~0_combout\,
	datac => \Equal13~0_combout\,
	datad => \Equal10~7_combout\,
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X52_Y4_N20
\Equal13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (count1(4) & (!count1(2) & !count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datab => count1(2),
	datad => count1(1),
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X52_Y4_N10
\trigger2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger2~0_combout\ = (\trigger2~reg0_q\ & (((!\Equal10~10_combout\) # (!\Equal13~1_combout\)) # (!\Equal13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~2_combout\,
	datab => \trigger2~reg0_q\,
	datac => \Equal13~1_combout\,
	datad => \Equal10~10_combout\,
	combout => \trigger2~0_combout\);

-- Location: LCCOMB_X52_Y4_N16
\trigger2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger2~1_combout\ = (\trigger2~0_combout\) # ((!\Equal12~0_combout\ & (\Equal10~10_combout\ & \Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \Equal10~10_combout\,
	datac => \Equal13~1_combout\,
	datad => \trigger2~0_combout\,
	combout => \trigger2~1_combout\);

-- Location: FF_X52_Y4_N17
\trigger2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \trigger2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trigger2~reg0_q\);

-- Location: LCCOMB_X46_Y26_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (GND)
-- \Add0~1\ = CARRY(!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X47_Y26_N20
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Equal0~10_combout\) # (!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X47_Y26_N21
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X46_Y26_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X46_Y26_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X46_Y26_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X46_Y26_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X46_Y26_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X46_Y26_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X46_Y26_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X46_Y26_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X46_Y26_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X46_Y26_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X46_Y26_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X47_Y26_N28
\counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~12_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X47_Y26_N29
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X46_Y26_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X46_Y26_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X46_Y26_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X46_Y26_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X46_Y26_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X46_Y26_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X46_Y26_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X46_Y26_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X46_Y26_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X47_Y26_N8
\counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~22_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X47_Y26_N9
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X46_Y26_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X47_Y26_N24
\counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (!\Equal0~10_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~24_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X47_Y26_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X46_Y26_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X47_Y26_N2
\counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~26_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X47_Y26_N3
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X46_Y26_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X47_Y26_N4
\counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (!\Equal0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~28_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X47_Y26_N5
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X46_Y26_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X46_Y26_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X46_Y25_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X47_Y25_N16
\counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~32_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X47_Y25_N17
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X46_Y25_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X46_Y25_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X46_Y25_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X47_Y25_N2
\counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~36_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X47_Y25_N3
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X46_Y25_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X47_Y25_N28
\counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add0~38_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~8_combout\);

-- Location: FF_X47_Y25_N29
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X46_Y25_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X47_Y25_N14
\counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (!\Equal0~10_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~40_combout\,
	combout => \counter~9_combout\);

-- Location: FF_X47_Y25_N15
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X46_Y25_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X47_Y25_N18
\counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (!\Equal0~10_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~42_combout\,
	combout => \counter~10_combout\);

-- Location: FF_X47_Y25_N19
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X46_Y25_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X47_Y25_N26
\counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (!\Equal0~10_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~44_combout\,
	combout => \counter~11_combout\);

-- Location: FF_X47_Y25_N27
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X46_Y25_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X46_Y25_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X47_Y25_N4
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter(20) & counter(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(20),
	datad => counter(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X47_Y25_N6
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(17) & (counter(16) & (counter(18) & counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(16),
	datac => counter(18),
	datad => counter(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X47_Y25_N10
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!counter(23) & (\Equal0~6_combout\ & (counter(22) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => \Equal0~6_combout\,
	datac => counter(22),
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X46_Y25_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X47_Y25_N8
\counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (\Add0~48_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~48_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~12_combout\);

-- Location: FF_X47_Y25_N9
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X46_Y25_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (!\Add0~49\)) # (!counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X46_Y25_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X46_Y25_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & (\Add0~51\ $ (GND))) # (!counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X46_Y25_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X46_Y25_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (!\Add0~53\)) # (!counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X46_Y25_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X46_Y25_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & (\Add0~55\ $ (GND))) # (!counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X46_Y25_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X46_Y25_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (!\Add0~57\)) # (!counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X46_Y25_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X46_Y25_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & (\Add0~59\ $ (GND))) # (!counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X46_Y25_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X46_Y25_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = counter(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X46_Y25_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X47_Y25_N24
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!counter(28) & (!counter(31) & (!counter(29) & !counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datab => counter(31),
	datac => counter(29),
	datad => counter(30),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X47_Y25_N22
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!counter(27) & (!counter(26) & (counter(24) & !counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datab => counter(26),
	datac => counter(24),
	datad => counter(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X47_Y26_N22
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(1) & (!counter(2) & (!counter(3) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(3),
	datad => counter(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X47_Y26_N10
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(12) & (counter(13) & (counter(14) & !counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(13),
	datac => counter(14),
	datad => counter(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X47_Y26_N30
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(8) & (!counter(9) & (counter(11) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => counter(11),
	datad => counter(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X47_Y26_N18
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(5) & (counter(6) & (!counter(4) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(6),
	datac => counter(4),
	datad => counter(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X47_Y26_N12
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X47_Y25_N0
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~7_combout\ & (\Equal0~9_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X47_Y25_N12
\tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = \tmp~q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~q\,
	datad => \Equal0~10_combout\,
	combout => \tmp~0_combout\);

-- Location: LCCOMB_X47_Y25_N20
\tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmp~feeder_combout\ = \tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tmp~0_combout\,
	combout => \tmp~feeder_combout\);

-- Location: FF_X47_Y25_N21
tmp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp~q\);

-- Location: IOIBUF_X58_Y0_N29
\ECHO1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ECHO1,
	o => \ECHO1~input_o\);

-- Location: LCCOMB_X57_Y5_N14
\count11[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[0]~18_combout\ = count11(0) $ (VCC)
-- \count11[0]~19\ = CARRY(count11(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count11(0),
	datad => VCC,
	combout => \count11[0]~18_combout\,
	cout => \count11[0]~19\);

-- Location: LCCOMB_X50_Y4_N30
\count11[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[11]~40_combout\ = (count1(3)) # ((count1(1)) # ((count1(0)) # (!\Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datab => count1(1),
	datac => count1(0),
	datad => \Equal10~8_combout\,
	combout => \count11[11]~40_combout\);

-- Location: LCCOMB_X57_Y4_N28
\count11[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[11]~41_combout\ = (\ECHO1~input_o\) # ((!\count11[11]~40_combout\ & (\Equal10~7_combout\ & \Equal10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count11[11]~40_combout\,
	datab => \Equal10~7_combout\,
	datac => \ECHO1~input_o\,
	datad => \Equal10~6_combout\,
	combout => \count11[11]~41_combout\);

-- Location: FF_X57_Y5_N15
\count11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[0]~18_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(0));

-- Location: LCCOMB_X57_Y5_N16
\count11[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[1]~20_combout\ = (count11(1) & (!\count11[0]~19\)) # (!count11(1) & ((\count11[0]~19\) # (GND)))
-- \count11[1]~21\ = CARRY((!\count11[0]~19\) # (!count11(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(1),
	datad => VCC,
	cin => \count11[0]~19\,
	combout => \count11[1]~20_combout\,
	cout => \count11[1]~21\);

-- Location: FF_X57_Y5_N17
\count11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[1]~20_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(1));

-- Location: LCCOMB_X57_Y5_N18
\count11[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[2]~22_combout\ = (count11(2) & (\count11[1]~21\ $ (GND))) # (!count11(2) & (!\count11[1]~21\ & VCC))
-- \count11[2]~23\ = CARRY((count11(2) & !\count11[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(2),
	datad => VCC,
	cin => \count11[1]~21\,
	combout => \count11[2]~22_combout\,
	cout => \count11[2]~23\);

-- Location: FF_X57_Y5_N19
\count11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[2]~22_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(2));

-- Location: LCCOMB_X57_Y5_N20
\count11[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[3]~24_combout\ = (count11(3) & (!\count11[2]~23\)) # (!count11(3) & ((\count11[2]~23\) # (GND)))
-- \count11[3]~25\ = CARRY((!\count11[2]~23\) # (!count11(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(3),
	datad => VCC,
	cin => \count11[2]~23\,
	combout => \count11[3]~24_combout\,
	cout => \count11[3]~25\);

-- Location: FF_X57_Y5_N21
\count11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[3]~24_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(3));

-- Location: LCCOMB_X57_Y5_N22
\count11[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[4]~26_combout\ = (count11(4) & (\count11[3]~25\ $ (GND))) # (!count11(4) & (!\count11[3]~25\ & VCC))
-- \count11[4]~27\ = CARRY((count11(4) & !\count11[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(4),
	datad => VCC,
	cin => \count11[3]~25\,
	combout => \count11[4]~26_combout\,
	cout => \count11[4]~27\);

-- Location: FF_X57_Y5_N23
\count11[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[4]~26_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(4));

-- Location: LCCOMB_X57_Y5_N24
\count11[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[5]~28_combout\ = (count11(5) & (!\count11[4]~27\)) # (!count11(5) & ((\count11[4]~27\) # (GND)))
-- \count11[5]~29\ = CARRY((!\count11[4]~27\) # (!count11(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count11(5),
	datad => VCC,
	cin => \count11[4]~27\,
	combout => \count11[5]~28_combout\,
	cout => \count11[5]~29\);

-- Location: FF_X57_Y5_N25
\count11[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[5]~28_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(5));

-- Location: LCCOMB_X57_Y5_N26
\count11[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[6]~30_combout\ = (count11(6) & (\count11[5]~29\ $ (GND))) # (!count11(6) & (!\count11[5]~29\ & VCC))
-- \count11[6]~31\ = CARRY((count11(6) & !\count11[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(6),
	datad => VCC,
	cin => \count11[5]~29\,
	combout => \count11[6]~30_combout\,
	cout => \count11[6]~31\);

-- Location: FF_X57_Y5_N27
\count11[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[6]~30_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(6));

-- Location: LCCOMB_X57_Y5_N28
\count11[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[7]~32_combout\ = (count11(7) & (!\count11[6]~31\)) # (!count11(7) & ((\count11[6]~31\) # (GND)))
-- \count11[7]~33\ = CARRY((!\count11[6]~31\) # (!count11(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(7),
	datad => VCC,
	cin => \count11[6]~31\,
	combout => \count11[7]~32_combout\,
	cout => \count11[7]~33\);

-- Location: FF_X57_Y5_N29
\count11[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[7]~32_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(7));

-- Location: LCCOMB_X57_Y5_N30
\count11[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[8]~34_combout\ = (count11(8) & (\count11[7]~33\ $ (GND))) # (!count11(8) & (!\count11[7]~33\ & VCC))
-- \count11[8]~35\ = CARRY((count11(8) & !\count11[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(8),
	datad => VCC,
	cin => \count11[7]~33\,
	combout => \count11[8]~34_combout\,
	cout => \count11[8]~35\);

-- Location: LCCOMB_X57_Y4_N30
\count11[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[8]~feeder_combout\ = \count11[8]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count11[8]~34_combout\,
	combout => \count11[8]~feeder_combout\);

-- Location: FF_X57_Y4_N31
\count11[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[8]~feeder_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(8));

-- Location: LCCOMB_X57_Y4_N0
\count11[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[9]~36_combout\ = (count11(9) & (!\count11[8]~35\)) # (!count11(9) & ((\count11[8]~35\) # (GND)))
-- \count11[9]~37\ = CARRY((!\count11[8]~35\) # (!count11(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(9),
	datad => VCC,
	cin => \count11[8]~35\,
	combout => \count11[9]~36_combout\,
	cout => \count11[9]~37\);

-- Location: FF_X57_Y4_N1
\count11[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[9]~36_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(9));

-- Location: LCCOMB_X57_Y4_N2
\count11[10]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[10]~38_combout\ = (count11(10) & (\count11[9]~37\ $ (GND))) # (!count11(10) & (!\count11[9]~37\ & VCC))
-- \count11[10]~39\ = CARRY((count11(10) & !\count11[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(10),
	datad => VCC,
	cin => \count11[9]~37\,
	combout => \count11[10]~38_combout\,
	cout => \count11[10]~39\);

-- Location: FF_X57_Y4_N3
\count11[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[10]~38_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(10));

-- Location: LCCOMB_X57_Y4_N4
\count11[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[11]~42_combout\ = (count11(11) & (!\count11[10]~39\)) # (!count11(11) & ((\count11[10]~39\) # (GND)))
-- \count11[11]~43\ = CARRY((!\count11[10]~39\) # (!count11(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(11),
	datad => VCC,
	cin => \count11[10]~39\,
	combout => \count11[11]~42_combout\,
	cout => \count11[11]~43\);

-- Location: FF_X57_Y4_N5
\count11[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[11]~42_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(11));

-- Location: LCCOMB_X57_Y4_N6
\count11[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[12]~44_combout\ = (count11(12) & (\count11[11]~43\ $ (GND))) # (!count11(12) & (!\count11[11]~43\ & VCC))
-- \count11[12]~45\ = CARRY((count11(12) & !\count11[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count11(12),
	datad => VCC,
	cin => \count11[11]~43\,
	combout => \count11[12]~44_combout\,
	cout => \count11[12]~45\);

-- Location: FF_X57_Y4_N7
\count11[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[12]~44_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(12));

-- Location: LCCOMB_X57_Y4_N8
\count11[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[13]~46_combout\ = (count11(13) & (!\count11[12]~45\)) # (!count11(13) & ((\count11[12]~45\) # (GND)))
-- \count11[13]~47\ = CARRY((!\count11[12]~45\) # (!count11(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(13),
	datad => VCC,
	cin => \count11[12]~45\,
	combout => \count11[13]~46_combout\,
	cout => \count11[13]~47\);

-- Location: FF_X57_Y4_N9
\count11[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[13]~46_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(13));

-- Location: LCCOMB_X57_Y4_N26
\LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!count11(12) & (!count11(13) & (!count11(11) & !count11(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count11(12),
	datab => count11(13),
	datac => count11(11),
	datad => count11(10),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X57_Y4_N10
\count11[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[14]~48_combout\ = (count11(14) & (\count11[13]~47\ $ (GND))) # (!count11(14) & (!\count11[13]~47\ & VCC))
-- \count11[14]~49\ = CARRY((count11(14) & !\count11[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count11(14),
	datad => VCC,
	cin => \count11[13]~47\,
	combout => \count11[14]~48_combout\,
	cout => \count11[14]~49\);

-- Location: FF_X57_Y4_N11
\count11[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[14]~48_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(14));

-- Location: LCCOMB_X57_Y4_N12
\count11[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[15]~50_combout\ = (count11(15) & (!\count11[14]~49\)) # (!count11(15) & ((\count11[14]~49\) # (GND)))
-- \count11[15]~51\ = CARRY((!\count11[14]~49\) # (!count11(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count11(15),
	datad => VCC,
	cin => \count11[14]~49\,
	combout => \count11[15]~50_combout\,
	cout => \count11[15]~51\);

-- Location: FF_X57_Y4_N13
\count11[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[15]~50_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(15));

-- Location: LCCOMB_X57_Y4_N14
\count11[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[16]~52_combout\ = (count11(16) & (\count11[15]~51\ $ (GND))) # (!count11(16) & (!\count11[15]~51\ & VCC))
-- \count11[16]~53\ = CARRY((count11(16) & !\count11[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count11(16),
	datad => VCC,
	cin => \count11[15]~51\,
	combout => \count11[16]~52_combout\,
	cout => \count11[16]~53\);

-- Location: FF_X57_Y4_N15
\count11[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[16]~52_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(16));

-- Location: LCCOMB_X57_Y4_N16
\count11[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count11[17]~54_combout\ = \count11[16]~53\ $ (count11(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count11(17),
	cin => \count11[16]~53\,
	combout => \count11[17]~54_combout\);

-- Location: FF_X57_Y4_N17
\count11[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count11[17]~54_combout\,
	sclr => \ALT_INV_ECHO1~input_o\,
	ena => \count11[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count11(17));

-- Location: LCCOMB_X57_Y4_N24
\LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (!count11(15) & (!count11(17) & (!count11(16) & !count11(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count11(15),
	datab => count11(17),
	datac => count11(16),
	datad => count11(14),
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X57_Y4_N22
\LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = ((!count11(7)) # (!count11(8))) # (!count11(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count11(9),
	datac => count11(8),
	datad => count11(7),
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X57_Y5_N12
\LessThan6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (((!count11(4) & !count11(3))) # (!count11(5))) # (!count11(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count11(4),
	datab => count11(3),
	datac => count11(6),
	datad => count11(5),
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X57_Y4_N20
\LessThan6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = (\LessThan6~0_combout\ & (\LessThan6~1_combout\ & ((\LessThan6~3_combout\) # (\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \LessThan6~1_combout\,
	datac => \LessThan6~3_combout\,
	datad => \LessThan6~2_combout\,
	combout => \LessThan6~4_combout\);

-- Location: FF_X57_Y4_N21
x : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ECHO1~input_o\,
	d => \LessThan6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x~q\);

-- Location: IOIBUF_X29_Y0_N8
\ECHO2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ECHO2,
	o => \ECHO2~input_o\);

-- Location: LCCOMB_X51_Y9_N14
\count22[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[0]~18_combout\ = count22(0) $ (VCC)
-- \count22[0]~19\ = CARRY(count22(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count22(0),
	datad => VCC,
	combout => \count22[0]~18_combout\,
	cout => \count22[0]~19\);

-- Location: LCCOMB_X51_Y8_N30
\count22[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[11]~40_combout\ = (\ECHO2~input_o\) # ((\Equal13~1_combout\ & (!\Equal12~0_combout\ & \Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => \Equal12~0_combout\,
	datac => \ECHO2~input_o\,
	datad => \Equal10~10_combout\,
	combout => \count22[11]~40_combout\);

-- Location: FF_X51_Y9_N15
\count22[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[0]~18_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(0));

-- Location: LCCOMB_X51_Y9_N16
\count22[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[1]~20_combout\ = (count22(1) & (!\count22[0]~19\)) # (!count22(1) & ((\count22[0]~19\) # (GND)))
-- \count22[1]~21\ = CARRY((!\count22[0]~19\) # (!count22(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count22(1),
	datad => VCC,
	cin => \count22[0]~19\,
	combout => \count22[1]~20_combout\,
	cout => \count22[1]~21\);

-- Location: FF_X51_Y9_N17
\count22[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[1]~20_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(1));

-- Location: LCCOMB_X51_Y9_N18
\count22[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[2]~22_combout\ = (count22(2) & (\count22[1]~21\ $ (GND))) # (!count22(2) & (!\count22[1]~21\ & VCC))
-- \count22[2]~23\ = CARRY((count22(2) & !\count22[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count22(2),
	datad => VCC,
	cin => \count22[1]~21\,
	combout => \count22[2]~22_combout\,
	cout => \count22[2]~23\);

-- Location: FF_X51_Y9_N19
\count22[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[2]~22_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(2));

-- Location: LCCOMB_X51_Y9_N20
\count22[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[3]~24_combout\ = (count22(3) & (!\count22[2]~23\)) # (!count22(3) & ((\count22[2]~23\) # (GND)))
-- \count22[3]~25\ = CARRY((!\count22[2]~23\) # (!count22(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count22(3),
	datad => VCC,
	cin => \count22[2]~23\,
	combout => \count22[3]~24_combout\,
	cout => \count22[3]~25\);

-- Location: FF_X51_Y9_N21
\count22[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[3]~24_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(3));

-- Location: LCCOMB_X51_Y9_N22
\count22[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[4]~26_combout\ = (count22(4) & (\count22[3]~25\ $ (GND))) # (!count22(4) & (!\count22[3]~25\ & VCC))
-- \count22[4]~27\ = CARRY((count22(4) & !\count22[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count22(4),
	datad => VCC,
	cin => \count22[3]~25\,
	combout => \count22[4]~26_combout\,
	cout => \count22[4]~27\);

-- Location: FF_X51_Y9_N23
\count22[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[4]~26_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(4));

-- Location: LCCOMB_X51_Y9_N24
\count22[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[5]~28_combout\ = (count22(5) & (!\count22[4]~27\)) # (!count22(5) & ((\count22[4]~27\) # (GND)))
-- \count22[5]~29\ = CARRY((!\count22[4]~27\) # (!count22(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count22(5),
	datad => VCC,
	cin => \count22[4]~27\,
	combout => \count22[5]~28_combout\,
	cout => \count22[5]~29\);

-- Location: FF_X51_Y9_N25
\count22[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[5]~28_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(5));

-- Location: LCCOMB_X51_Y9_N26
\count22[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[6]~30_combout\ = (count22(6) & (\count22[5]~29\ $ (GND))) # (!count22(6) & (!\count22[5]~29\ & VCC))
-- \count22[6]~31\ = CARRY((count22(6) & !\count22[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count22(6),
	datad => VCC,
	cin => \count22[5]~29\,
	combout => \count22[6]~30_combout\,
	cout => \count22[6]~31\);

-- Location: FF_X51_Y9_N27
\count22[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[6]~30_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(6));

-- Location: LCCOMB_X51_Y9_N10
\LessThan7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (((!count22(4) & !count22(3))) # (!count22(5))) # (!count22(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count22(6),
	datab => count22(5),
	datac => count22(4),
	datad => count22(3),
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X51_Y9_N28
\count22[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[7]~32_combout\ = (count22(7) & (!\count22[6]~31\)) # (!count22(7) & ((\count22[6]~31\) # (GND)))
-- \count22[7]~33\ = CARRY((!\count22[6]~31\) # (!count22(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count22(7),
	datad => VCC,
	cin => \count22[6]~31\,
	combout => \count22[7]~32_combout\,
	cout => \count22[7]~33\);

-- Location: FF_X51_Y9_N29
\count22[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[7]~32_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(7));

-- Location: LCCOMB_X51_Y9_N30
\count22[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[8]~34_combout\ = (count22(8) & (\count22[7]~33\ $ (GND))) # (!count22(8) & (!\count22[7]~33\ & VCC))
-- \count22[8]~35\ = CARRY((count22(8) & !\count22[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count22(8),
	datad => VCC,
	cin => \count22[7]~33\,
	combout => \count22[8]~34_combout\,
	cout => \count22[8]~35\);

-- Location: FF_X51_Y9_N31
\count22[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[8]~34_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(8));

-- Location: LCCOMB_X51_Y8_N0
\count22[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[9]~36_combout\ = (count22(9) & (!\count22[8]~35\)) # (!count22(9) & ((\count22[8]~35\) # (GND)))
-- \count22[9]~37\ = CARRY((!\count22[8]~35\) # (!count22(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count22(9),
	datad => VCC,
	cin => \count22[8]~35\,
	combout => \count22[9]~36_combout\,
	cout => \count22[9]~37\);

-- Location: FF_X51_Y8_N1
\count22[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[9]~36_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(9));

-- Location: LCCOMB_X51_Y9_N4
\LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = ((!count22(9)) # (!count22(8))) # (!count22(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count22(7),
	datac => count22(8),
	datad => count22(9),
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X51_Y8_N2
\count22[10]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[10]~38_combout\ = (count22(10) & (\count22[9]~37\ $ (GND))) # (!count22(10) & (!\count22[9]~37\ & VCC))
-- \count22[10]~39\ = CARRY((count22(10) & !\count22[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count22(10),
	datad => VCC,
	cin => \count22[9]~37\,
	combout => \count22[10]~38_combout\,
	cout => \count22[10]~39\);

-- Location: FF_X51_Y8_N3
\count22[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[10]~38_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(10));

-- Location: LCCOMB_X51_Y8_N4
\count22[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[11]~41_combout\ = (count22(11) & (!\count22[10]~39\)) # (!count22(11) & ((\count22[10]~39\) # (GND)))
-- \count22[11]~42\ = CARRY((!\count22[10]~39\) # (!count22(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count22(11),
	datad => VCC,
	cin => \count22[10]~39\,
	combout => \count22[11]~41_combout\,
	cout => \count22[11]~42\);

-- Location: FF_X51_Y8_N5
\count22[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[11]~41_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(11));

-- Location: LCCOMB_X51_Y8_N6
\count22[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[12]~43_combout\ = (count22(12) & (\count22[11]~42\ $ (GND))) # (!count22(12) & (!\count22[11]~42\ & VCC))
-- \count22[12]~44\ = CARRY((count22(12) & !\count22[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count22(12),
	datad => VCC,
	cin => \count22[11]~42\,
	combout => \count22[12]~43_combout\,
	cout => \count22[12]~44\);

-- Location: FF_X51_Y8_N7
\count22[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[12]~43_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(12));

-- Location: LCCOMB_X51_Y8_N8
\count22[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[13]~45_combout\ = (count22(13) & (!\count22[12]~44\)) # (!count22(13) & ((\count22[12]~44\) # (GND)))
-- \count22[13]~46\ = CARRY((!\count22[12]~44\) # (!count22(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count22(13),
	datad => VCC,
	cin => \count22[12]~44\,
	combout => \count22[13]~45_combout\,
	cout => \count22[13]~46\);

-- Location: FF_X51_Y8_N9
\count22[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[13]~45_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(13));

-- Location: LCCOMB_X51_Y8_N10
\count22[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[14]~47_combout\ = (count22(14) & (\count22[13]~46\ $ (GND))) # (!count22(14) & (!\count22[13]~46\ & VCC))
-- \count22[14]~48\ = CARRY((count22(14) & !\count22[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count22(14),
	datad => VCC,
	cin => \count22[13]~46\,
	combout => \count22[14]~47_combout\,
	cout => \count22[14]~48\);

-- Location: FF_X51_Y8_N11
\count22[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[14]~47_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(14));

-- Location: LCCOMB_X51_Y8_N12
\count22[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[15]~49_combout\ = (count22(15) & (!\count22[14]~48\)) # (!count22(15) & ((\count22[14]~48\) # (GND)))
-- \count22[15]~50\ = CARRY((!\count22[14]~48\) # (!count22(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count22(15),
	datad => VCC,
	cin => \count22[14]~48\,
	combout => \count22[15]~49_combout\,
	cout => \count22[15]~50\);

-- Location: FF_X51_Y8_N13
\count22[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[15]~49_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(15));

-- Location: LCCOMB_X51_Y8_N14
\count22[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[16]~51_combout\ = (count22(16) & (\count22[15]~50\ $ (GND))) # (!count22(16) & (!\count22[15]~50\ & VCC))
-- \count22[16]~52\ = CARRY((count22(16) & !\count22[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count22(16),
	datad => VCC,
	cin => \count22[15]~50\,
	combout => \count22[16]~51_combout\,
	cout => \count22[16]~52\);

-- Location: FF_X51_Y8_N15
\count22[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[16]~51_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(16));

-- Location: LCCOMB_X51_Y8_N16
\count22[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count22[17]~53_combout\ = \count22[16]~52\ $ (count22(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count22(17),
	cin => \count22[16]~52\,
	combout => \count22[17]~53_combout\);

-- Location: FF_X51_Y8_N17
\count22[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp0~clkctrl_outclk\,
	d => \count22[17]~53_combout\,
	sclr => \ALT_INV_ECHO2~input_o\,
	ena => \count22[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count22(17));

-- Location: LCCOMB_X51_Y8_N24
\LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!count22(15) & (!count22(17) & (!count22(16) & !count22(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count22(15),
	datab => count22(17),
	datac => count22(16),
	datad => count22(14),
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X51_Y8_N26
\LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (!count22(12) & (!count22(10) & (!count22(11) & !count22(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count22(12),
	datab => count22(10),
	datac => count22(11),
	datad => count22(13),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X51_Y9_N12
\LessThan7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = (\LessThan7~1_combout\ & (\LessThan7~0_combout\ & ((\LessThan7~2_combout\) # (\LessThan7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~2_combout\,
	datab => \LessThan7~3_combout\,
	datac => \LessThan7~1_combout\,
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~4_combout\);

-- Location: FF_X51_Y9_N13
y : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ECHO2~input_o\,
	d => \LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y~q\);

-- Location: IOIBUF_X54_Y54_N29
\password[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(3),
	o => \password[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\password[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(4),
	o => \password[4]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\password[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(2),
	o => \password[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\password[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(0),
	o => \password[0]~input_o\);

-- Location: LCCOMB_X52_Y13_N4
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\password[3]~input_o\ & (!\password[4]~input_o\ & (!\password[2]~input_o\ & \password[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password[3]~input_o\,
	datab => \password[4]~input_o\,
	datac => \password[2]~input_o\,
	datad => \password[0]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X54_Y54_N15
\password[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(6),
	o => \password[6]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\password[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(8),
	o => \password[8]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\password[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(5),
	o => \password[5]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\password[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(7),
	o => \password[7]~input_o\);

-- Location: LCCOMB_X54_Y53_N16
\Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (!\password[6]~input_o\ & (!\password[8]~input_o\ & (!\password[5]~input_o\ & !\password[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password[6]~input_o\,
	datab => \password[8]~input_o\,
	datac => \password[5]~input_o\,
	datad => \password[7]~input_o\,
	combout => \Equal16~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\password[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(9),
	o => \password[9]~input_o\);

-- Location: LCCOMB_X52_Y13_N24
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Equal16~0_combout\ & !\password[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal16~0_combout\,
	datac => \password[9]~input_o\,
	combout => \Selector2~1_combout\);

-- Location: IOIBUF_X51_Y54_N22
\password[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(1),
	o => \password[1]~input_o\);

-- Location: LCCOMB_X52_Y13_N6
\Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~0_combout\ & (\Selector2~1_combout\ & (!\y~q\ & !\password[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector2~1_combout\,
	datac => \y~q\,
	datad => \password[1]~input_o\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X52_Y13_N8
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\y~q\ & ((\pres_state.stop~q\) # ((\pres_state.stopen~q\ & \x~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pres_state.stopen~q\,
	datab => \y~q\,
	datac => \pres_state.stop~q\,
	datad => \x~q\,
	combout => \Selector3~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X52_Y13_N9
\pres_state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp~q\,
	d => \Selector3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.stop~q\);

-- Location: LCCOMB_X52_Y13_N2
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\y~q\ & ((\pres_state.stop~q\) # (!\pres_state.initial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~q\,
	datac => \pres_state.stop~q\,
	datad => \pres_state.initial~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X52_Y13_N16
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\x~q\ & ((\Selector1~0_combout\) # ((\pres_state.stpassword~q\ & !\Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~q\,
	datab => \Selector1~0_combout\,
	datac => \pres_state.stpassword~q\,
	datad => \Selector2~2_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X52_Y13_N17
\pres_state.stpassword\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp~q\,
	d => \Selector1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.stpassword~q\);

-- Location: LCCOMB_X52_Y13_N0
\Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\pres_state.stopen~q\ & (\y~q\ $ (\x~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~q\,
	datac => \pres_state.stopen~q\,
	datad => \x~q\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X52_Y13_N14
\Selector2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~3_combout\) # ((\Selector2~2_combout\ & (\pres_state.stpassword~q\ & \x~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \pres_state.stpassword~q\,
	datac => \x~q\,
	datad => \Selector2~3_combout\,
	combout => \Selector2~4_combout\);

-- Location: FF_X52_Y13_N15
\pres_state.stopen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp~q\,
	d => \Selector2~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.stopen~q\);

-- Location: LCCOMB_X52_Y13_N28
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\pres_state.stpassword~q\) # ((!\y~q\ & ((\pres_state.stopen~q\) # (\pres_state.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pres_state.stopen~q\,
	datab => \pres_state.stop~q\,
	datac => \y~q\,
	datad => \pres_state.stpassword~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X52_Y13_N18
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\x~q\ & (((\pres_state.initial~q\)) # (!\y~q\))) # (!\x~q\ & (((\pres_state.initial~q\ & !\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~q\,
	datab => \y~q\,
	datac => \pres_state.initial~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X52_Y13_N19
\pres_state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp~q\,
	d => \Selector0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.initial~q\);

-- Location: LCCOMB_X50_Y10_N8
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ((\pres_state.stpassword~q\) # ((\tmp~q\ & \pres_state.stop~q\))) # (!\pres_state.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pres_state.initial~q\,
	datab => \pres_state.stpassword~q\,
	datac => \tmp~q\,
	datad => \pres_state.stop~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X64_Y40_N8
\ledr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledr~0_combout\ = (!\pres_state.stpassword~q\ & \pres_state.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pres_state.stpassword~q\,
	datad => \pres_state.initial~q\,
	combout => \ledr~0_combout\);

-- Location: LCCOMB_X47_Y25_N30
\ledy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledy~0_combout\ = (\pres_state.stpassword~q\ & \tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pres_state.stpassword~q\,
	datad => \tmp~q\,
	combout => \ledy~0_combout\);

-- Location: LCCOMB_X54_Y10_N0
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = counter1(0) $ (GND)
-- \Add2~1\ = CARRY(!counter1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X55_Y10_N2
\counter1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1~0_combout\ = (\Equal2~10_combout\) # (!\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \Equal2~10_combout\,
	combout => \counter1~0_combout\);

-- Location: FF_X55_Y10_N3
\counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(0));

-- Location: LCCOMB_X54_Y10_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (counter1(1) & (!\Add2~1\)) # (!counter1(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!counter1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X54_Y10_N3
\counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(1));

-- Location: LCCOMB_X54_Y10_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (counter1(2) & (\Add2~3\ $ (GND))) # (!counter1(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((counter1(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X55_Y10_N0
\counter1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1~1_combout\ = (\Add2~4_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	datad => \Equal2~10_combout\,
	combout => \counter1~1_combout\);

-- Location: FF_X55_Y10_N1
\counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(2));

-- Location: LCCOMB_X54_Y10_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (counter1(3) & (!\Add2~5\)) # (!counter1(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!counter1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X54_Y10_N7
\counter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(3));

-- Location: LCCOMB_X54_Y10_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (counter1(4) & (\Add2~7\ $ (GND))) # (!counter1(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((counter1(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X55_Y10_N20
\counter1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1~2_combout\ = (\Add2~8_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datad => \Equal2~10_combout\,
	combout => \counter1~2_combout\);

-- Location: FF_X55_Y10_N21
\counter1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(4));

-- Location: LCCOMB_X54_Y10_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (counter1(5) & (!\Add2~9\)) # (!counter1(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!counter1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X54_Y10_N11
\counter1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(5));

-- Location: LCCOMB_X54_Y10_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (counter1(6) & (\Add2~11\ $ (GND))) # (!counter1(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((counter1(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X55_Y10_N22
\counter1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1~3_combout\ = (\Add2~12_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => \Equal2~10_combout\,
	combout => \counter1~3_combout\);

-- Location: FF_X55_Y10_N23
\counter1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(6));

-- Location: LCCOMB_X54_Y10_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (counter1(7) & (!\Add2~13\)) # (!counter1(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!counter1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X55_Y10_N28
\counter1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1~4_combout\ = (\Add2~14_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datad => \Equal2~10_combout\,
	combout => \counter1~4_combout\);

-- Location: FF_X55_Y10_N29
\counter1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(7));

-- Location: LCCOMB_X54_Y10_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (counter1(8) & (\Add2~15\ $ (GND))) # (!counter1(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((counter1(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X54_Y10_N17
\counter1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(8));

-- Location: LCCOMB_X54_Y10_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (counter1(9) & (!\Add2~17\)) # (!counter1(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!counter1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X54_Y10_N19
\counter1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(9));

-- Location: LCCOMB_X54_Y10_N20
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (counter1(10) & (\Add2~19\ $ (GND))) # (!counter1(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((counter1(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X54_Y10_N21
\counter1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(10));

-- Location: LCCOMB_X54_Y10_N22
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (counter1(11) & (!\Add2~21\)) # (!counter1(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!counter1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X54_Y10_N23
\counter1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(11));

-- Location: LCCOMB_X54_Y10_N24
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (counter1(12) & (\Add2~23\ $ (GND))) # (!counter1(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((counter1(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X55_Y10_N30
\counter1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1~5_combout\ = (!\Equal2~10_combout\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datad => \Add2~24_combout\,
	combout => \counter1~5_combout\);

-- Location: FF_X55_Y10_N31
\counter1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(12));

-- Location: LCCOMB_X54_Y10_N26
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (counter1(13) & (!\Add2~25\)) # (!counter1(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!counter1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X55_Y10_N24
\counter1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1~6_combout\ = (\Add2~26_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	datad => \Equal2~10_combout\,
	combout => \counter1~6_combout\);

-- Location: FF_X55_Y10_N25
\counter1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(13));

-- Location: LCCOMB_X54_Y10_N28
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (counter1(14) & (\Add2~27\ $ (GND))) # (!counter1(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((counter1(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X54_Y10_N29
\counter1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(14));

-- Location: LCCOMB_X54_Y10_N30
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (counter1(15) & (!\Add2~29\)) # (!counter1(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!counter1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X54_Y10_N31
\counter1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(15));

-- Location: LCCOMB_X54_Y9_N0
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (counter1(16) & (\Add2~31\ $ (GND))) # (!counter1(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((counter1(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X54_Y9_N1
\counter1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(16));

-- Location: LCCOMB_X54_Y9_N2
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (counter1(17) & (!\Add2~33\)) # (!counter1(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!counter1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X54_Y9_N3
\counter1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(17));

-- Location: LCCOMB_X54_Y9_N4
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (counter1(18) & (\Add2~35\ $ (GND))) # (!counter1(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((counter1(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X54_Y9_N5
\counter1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(18));

-- Location: LCCOMB_X54_Y9_N6
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (counter1(19) & (!\Add2~37\)) # (!counter1(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!counter1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X54_Y9_N7
\counter1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(19));

-- Location: LCCOMB_X54_Y9_N8
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (counter1(20) & (\Add2~39\ $ (GND))) # (!counter1(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((counter1(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X54_Y9_N9
\counter1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(20));

-- Location: LCCOMB_X54_Y9_N10
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (counter1(21) & (!\Add2~41\)) # (!counter1(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!counter1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X54_Y9_N11
\counter1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(21));

-- Location: LCCOMB_X54_Y9_N12
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (counter1(22) & (\Add2~43\ $ (GND))) # (!counter1(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((counter1(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X54_Y9_N13
\counter1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(22));

-- Location: LCCOMB_X54_Y9_N14
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (counter1(23) & (!\Add2~45\)) # (!counter1(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!counter1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X54_Y9_N15
\counter1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(23));

-- Location: LCCOMB_X54_Y9_N16
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (counter1(24) & (\Add2~47\ $ (GND))) # (!counter1(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((counter1(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X54_Y9_N17
\counter1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(24));

-- Location: LCCOMB_X54_Y9_N18
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (counter1(25) & (!\Add2~49\)) # (!counter1(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!counter1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X54_Y9_N19
\counter1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(25));

-- Location: LCCOMB_X54_Y9_N20
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (counter1(26) & (\Add2~51\ $ (GND))) # (!counter1(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((counter1(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X54_Y9_N21
\counter1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(26));

-- Location: LCCOMB_X54_Y9_N22
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (counter1(27) & (!\Add2~53\)) # (!counter1(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!counter1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X54_Y9_N23
\counter1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(27));

-- Location: LCCOMB_X55_Y9_N18
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!counter1(27) & (!counter1(26) & (!counter1(24) & !counter1(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(27),
	datab => counter1(26),
	datac => counter1(24),
	datad => counter1(25),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X55_Y9_N28
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!counter1(16) & (!counter1(19) & (!counter1(18) & !counter1(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(16),
	datab => counter1(19),
	datac => counter1(18),
	datad => counter1(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X55_Y9_N30
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!counter1(23) & !counter1(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(23),
	datad => counter1(22),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X55_Y9_N0
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!counter1(20) & (\Equal2~5_combout\ & (\Equal2~6_combout\ & !counter1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(20),
	datab => \Equal2~5_combout\,
	datac => \Equal2~6_combout\,
	datad => counter1(21),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X55_Y10_N12
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!counter1(11) & (!counter1(10) & (!counter1(8) & !counter1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(11),
	datab => counter1(10),
	datac => counter1(8),
	datad => counter1(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X55_Y10_N14
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!counter1(5) & (counter1(7) & (counter1(6) & counter1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(5),
	datab => counter1(7),
	datac => counter1(6),
	datad => counter1(4),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X55_Y10_N26
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (counter1(13) & (!counter1(14) & (counter1(12) & !counter1(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(13),
	datab => counter1(14),
	datac => counter1(12),
	datad => counter1(15),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X55_Y10_N18
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter1(1) & (counter1(0) & (!counter1(3) & counter1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(1),
	datab => counter1(0),
	datac => counter1(3),
	datad => counter1(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X55_Y10_N4
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~1_combout\ & (\Equal2~3_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X54_Y9_N24
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (counter1(28) & (\Add2~55\ $ (GND))) # (!counter1(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((counter1(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X54_Y9_N25
\counter1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(28));

-- Location: LCCOMB_X54_Y9_N26
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (counter1(29) & (!\Add2~57\)) # (!counter1(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!counter1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X54_Y9_N27
\counter1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(29));

-- Location: LCCOMB_X54_Y9_N28
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (counter1(30) & (\Add2~59\ $ (GND))) # (!counter1(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((counter1(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: FF_X54_Y9_N29
\counter1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(30));

-- Location: LCCOMB_X54_Y9_N30
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = counter1(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: FF_X54_Y9_N31
\counter1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(31));

-- Location: LCCOMB_X55_Y9_N8
\Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!counter1(31) & (!counter1(30) & (!counter1(29) & !counter1(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(31),
	datab => counter1(30),
	datac => counter1(29),
	datad => counter1(28),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X55_Y10_N10
\Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~8_combout\ & (\Equal2~7_combout\ & (\Equal2~4_combout\ & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~7_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~9_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X55_Y10_N16
\tmp1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmp1~0_combout\ = \tmp1~q\ $ (\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmp1~q\,
	datad => \Equal2~10_combout\,
	combout => \tmp1~0_combout\);

-- Location: FF_X55_Y10_N17
tmp1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp1~q\);

-- Location: LCCOMB_X64_Y41_N12
\HEX1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~0_combout\ = (\pres_state.stop~q\) # (!\pres_state.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pres_state.initial~q\,
	datad => \pres_state.stop~q\,
	combout => \HEX1~0_combout\);

-- Location: LCCOMB_X66_Y47_N8
\HEX1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~1_combout\ = (\pres_state.stopen~q\) # (!\pres_state.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pres_state.stopen~q\,
	datad => \pres_state.initial~q\,
	combout => \HEX1~1_combout\);

-- Location: LCCOMB_X56_Y29_N2
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!counter2(2) & (counter2(0) & (!counter2(3) & !counter2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(2),
	datab => counter2(0),
	datac => counter2(3),
	datad => counter2(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X56_Y29_N28
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!counter2(4) & (!counter2(5) & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(4),
	datac => counter2(5),
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X57_Y29_N22
\LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!counter2(16) & (!counter2(18) & !counter2(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter2(16),
	datac => counter2(18),
	datad => counter2(24),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X54_Y28_N16
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (counter2(24) & (\Add3~47\ $ (GND))) # (!counter2(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((counter2(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X54_Y28_N18
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (counter2(25) & (!\Add3~49\)) # (!counter2(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!counter2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X55_Y29_N28
\counter2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~13_combout\ = (\counter2[30]~1_combout\ & \Add3~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~50_combout\,
	combout => \counter2~13_combout\);

-- Location: FF_X55_Y29_N29
\counter2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~13_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(25));

-- Location: LCCOMB_X55_Y29_N24
\Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!counter2(25)) # (!counter2(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter2(17),
	datad => counter2(25),
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X57_Y29_N18
\Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = ((counter2(11)) # ((\Equal3~7_combout\) # (!counter2(7)))) # (!\LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => counter2(11),
	datac => counter2(7),
	datad => \Equal3~7_combout\,
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X55_Y29_N2
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (counter2(19) & (counter2(22) & (counter2(20) & counter2(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(19),
	datab => counter2(22),
	datac => counter2(20),
	datad => counter2(21),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X58_Y29_N16
\Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (counter2(23) & \LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter2(23),
	datad => \LessThan1~0_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X57_Y29_N20
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (counter2(12) & (counter2(13) & counter2(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter2(12),
	datac => counter2(13),
	datad => counter2(14),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X58_Y29_N12
\Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (counter2(8)) # ((counter2(6)) # ((counter2(10)) # (counter2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(8),
	datab => counter2(6),
	datac => counter2(10),
	datad => counter2(9),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X58_Y29_N14
\Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!counter2(30) & \Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter2(30),
	datad => \Equal3~2_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X57_Y29_N16
\Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (((\Equal3~5_combout\) # (!\Equal3~3_combout\)) # (!\LessThan1~4_combout\)) # (!counter2(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(15),
	datab => \LessThan1~4_combout\,
	datac => \Equal3~5_combout\,
	datad => \Equal3~3_combout\,
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X56_Y29_N0
\Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = ((\Equal3~8_combout\) # ((\Equal3~6_combout\) # (!\Equal3~4_combout\))) # (!\Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~8_combout\,
	datac => \Equal3~4_combout\,
	datad => \Equal3~6_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X56_Y29_N6
\counter2[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[4]~4_combout\ = (((\LessThan1~8_combout\ & \LessThan2~7_combout\)) # (!\Equal3~9_combout\)) # (!\LessThan1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~8_combout\,
	datab => \LessThan1~9_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Equal3~9_combout\,
	combout => \counter2[4]~4_combout\);

-- Location: LCCOMB_X54_Y28_N20
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (counter2(26) & (\Add3~51\ $ (GND))) # (!counter2(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((counter2(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X57_Y29_N30
\counter2[26]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[26]~14_combout\ = (\counter2[4]~4_combout\ & (\counter2[30]~1_combout\ & ((\Add3~52_combout\)))) # (!\counter2[4]~4_combout\ & (((counter2(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~1_combout\,
	datab => \counter2[4]~4_combout\,
	datac => counter2(26),
	datad => \Add3~52_combout\,
	combout => \counter2[26]~14_combout\);

-- Location: FF_X57_Y29_N31
\counter2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[26]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(26));

-- Location: LCCOMB_X54_Y28_N22
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (counter2(27) & (!\Add3~53\)) # (!counter2(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!counter2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X55_Y29_N30
\counter2[27]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[27]~15_combout\ = (\counter2[4]~4_combout\ & (\counter2[30]~1_combout\ & (\Add3~54_combout\))) # (!\counter2[4]~4_combout\ & (((counter2(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~1_combout\,
	datab => \Add3~54_combout\,
	datac => counter2(27),
	datad => \counter2[4]~4_combout\,
	combout => \counter2[27]~15_combout\);

-- Location: FF_X55_Y29_N31
\counter2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[27]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(27));

-- Location: LCCOMB_X54_Y28_N24
\Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (counter2(28) & (\Add3~55\ $ (GND))) # (!counter2(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((counter2(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X55_Y29_N12
\counter2[28]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[28]~16_combout\ = (\counter2[4]~4_combout\ & (\counter2[30]~1_combout\ & (\Add3~56_combout\))) # (!\counter2[4]~4_combout\ & (((counter2(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~1_combout\,
	datab => \Add3~56_combout\,
	datac => counter2(28),
	datad => \counter2[4]~4_combout\,
	combout => \counter2[28]~16_combout\);

-- Location: FF_X55_Y29_N13
\counter2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(28));

-- Location: LCCOMB_X58_Y29_N4
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!counter2(27) & (!counter2(26) & (!counter2(28) & !counter2(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(27),
	datab => counter2(26),
	datac => counter2(28),
	datad => counter2(29),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X58_Y29_N6
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!counter2(9) & (!counter2(10) & (!counter2(8) & !counter2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(9),
	datab => counter2(10),
	datac => counter2(8),
	datad => counter2(7),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X58_Y29_N24
\LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (((\LessThan2~2_combout\ & !counter2(11))) # (!\LessThan1~4_combout\)) # (!counter2(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => counter2(11),
	datac => counter2(15),
	datad => \LessThan1~4_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X58_Y29_N26
\LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ((\LessThan2~5_combout\ & \LessThan2~4_combout\)) # (!counter2(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(25),
	datab => \LessThan2~5_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X58_Y29_N18
\LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!counter2(24) & (((!counter2(18) & !counter2(17))) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(24),
	datab => counter2(18),
	datac => counter2(17),
	datad => \Equal3~4_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X58_Y29_N22
\LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\Equal3~2_combout\ & (!counter2(30) & ((\LessThan2~6_combout\) # (\LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => counter2(30),
	datac => \LessThan2~6_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X56_Y29_N14
\counter2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~0_combout\ = (\LessThan1~9_combout\ & ((!\LessThan2~7_combout\) # (!\LessThan1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~8_combout\,
	datac => \LessThan2~7_combout\,
	datad => \LessThan1~9_combout\,
	combout => \counter2~0_combout\);

-- Location: LCCOMB_X54_Y29_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = counter2(0) $ (GND)
-- \Add3~1\ = CARRY(!counter2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter2(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X56_Y29_N24
\counter2[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[0]~24_combout\ = (\counter2~0_combout\ & (counter2(0))) # (!\counter2~0_combout\ & ((!\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2~0_combout\,
	datac => counter2(0),
	datad => \Add3~0_combout\,
	combout => \counter2[0]~24_combout\);

-- Location: FF_X56_Y29_N25
\counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(0));

-- Location: LCCOMB_X54_Y29_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (counter2(1) & (!\Add3~1\)) # (!counter2(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!counter2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X55_Y29_N14
\counter2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~25_combout\ = (\Add3~2_combout\ & \counter2[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => \counter2[30]~1_combout\,
	combout => \counter2~25_combout\);

-- Location: FF_X55_Y29_N15
\counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~25_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(1));

-- Location: LCCOMB_X54_Y29_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (counter2(2) & (\Add3~3\ $ (GND))) # (!counter2(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((counter2(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X56_Y29_N30
\counter2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~26_combout\ = (\Add3~4_combout\ & \counter2[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datad => \counter2[30]~1_combout\,
	combout => \counter2~26_combout\);

-- Location: FF_X56_Y29_N31
\counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~26_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(2));

-- Location: LCCOMB_X54_Y29_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (counter2(3) & (!\Add3~5\)) # (!counter2(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!counter2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X56_Y29_N8
\counter2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~27_combout\ = (\Add3~6_combout\ & \counter2[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~6_combout\,
	datad => \counter2[30]~1_combout\,
	combout => \counter2~27_combout\);

-- Location: FF_X56_Y29_N9
\counter2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~27_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(3));

-- Location: LCCOMB_X54_Y29_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (counter2(4) & (\Add3~7\ $ (GND))) # (!counter2(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((counter2(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X56_Y29_N12
\counter2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~28_combout\ = (\Add3~8_combout\ & \counter2[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datad => \counter2[30]~1_combout\,
	combout => \counter2~28_combout\);

-- Location: FF_X56_Y29_N13
\counter2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~28_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(4));

-- Location: LCCOMB_X54_Y29_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (counter2(5) & (!\Add3~9\)) # (!counter2(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!counter2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X56_Y29_N26
\counter2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~29_combout\ = (\Add3~10_combout\ & \counter2[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~10_combout\,
	datad => \counter2[30]~1_combout\,
	combout => \counter2~29_combout\);

-- Location: FF_X56_Y29_N27
\counter2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~29_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(5));

-- Location: LCCOMB_X54_Y29_N12
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (counter2(6) & (\Add3~11\ $ (GND))) # (!counter2(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((counter2(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X56_Y29_N22
\counter2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~23_combout\ = (\Add3~12_combout\ & \counter2[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => \counter2[30]~1_combout\,
	combout => \counter2~23_combout\);

-- Location: FF_X56_Y29_N23
\counter2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~23_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(6));

-- Location: LCCOMB_X54_Y29_N14
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (counter2(7) & (!\Add3~13\)) # (!counter2(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!counter2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X58_Y29_N10
\counter2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~30_combout\ = (\counter2[30]~1_combout\ & \Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~1_combout\,
	datac => \Add3~14_combout\,
	combout => \counter2~30_combout\);

-- Location: FF_X58_Y29_N11
\counter2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~30_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(7));

-- Location: LCCOMB_X54_Y29_N16
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (counter2(8) & (\Add3~15\ $ (GND))) # (!counter2(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((counter2(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X58_Y29_N8
\counter2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~31_combout\ = (\counter2[30]~1_combout\ & \Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~1_combout\,
	datac => \Add3~16_combout\,
	combout => \counter2~31_combout\);

-- Location: FF_X58_Y29_N9
\counter2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~31_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(8));

-- Location: LCCOMB_X54_Y29_N18
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (counter2(9) & (!\Add3~17\)) # (!counter2(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!counter2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X58_Y29_N30
\counter2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~32_combout\ = (\counter2[30]~1_combout\ & \Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~18_combout\,
	combout => \counter2~32_combout\);

-- Location: FF_X58_Y29_N31
\counter2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~32_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(9));

-- Location: LCCOMB_X54_Y29_N20
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (counter2(10) & (\Add3~19\ $ (GND))) # (!counter2(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((counter2(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X58_Y29_N20
\counter2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~33_combout\ = (\counter2[30]~1_combout\ & \Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~1_combout\,
	datac => \Add3~20_combout\,
	combout => \counter2~33_combout\);

-- Location: FF_X58_Y29_N21
\counter2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~33_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(10));

-- Location: LCCOMB_X54_Y29_N22
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (counter2(11) & (!\Add3~21\)) # (!counter2(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!counter2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X57_Y29_N2
\counter2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~34_combout\ = (\counter2[30]~1_combout\ & \Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~22_combout\,
	combout => \counter2~34_combout\);

-- Location: FF_X57_Y29_N3
\counter2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~34_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(11));

-- Location: LCCOMB_X54_Y29_N24
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (counter2(12) & (\Add3~23\ $ (GND))) # (!counter2(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((counter2(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X57_Y29_N14
\counter2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~20_combout\ = (\counter2[30]~1_combout\ & \Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2[30]~1_combout\,
	datac => \Add3~24_combout\,
	combout => \counter2~20_combout\);

-- Location: FF_X57_Y29_N15
\counter2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~20_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(12));

-- Location: LCCOMB_X54_Y29_N26
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (counter2(13) & (!\Add3~25\)) # (!counter2(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!counter2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X57_Y29_N8
\counter2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~21_combout\ = (\counter2[30]~1_combout\ & \Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~26_combout\,
	combout => \counter2~21_combout\);

-- Location: FF_X57_Y29_N9
\counter2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~21_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(13));

-- Location: LCCOMB_X54_Y29_N28
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (counter2(14) & (\Add3~27\ $ (GND))) # (!counter2(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((counter2(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X57_Y29_N6
\counter2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~22_combout\ = (\Add3~28_combout\ & \counter2[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~28_combout\,
	datad => \counter2[30]~1_combout\,
	combout => \counter2~22_combout\);

-- Location: FF_X57_Y29_N7
\counter2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~22_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(14));

-- Location: LCCOMB_X54_Y29_N30
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (counter2(15) & (!\Add3~29\)) # (!counter2(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!counter2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X55_Y29_N10
\counter2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~19_combout\ = (\counter2[30]~1_combout\ & \Add3~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~30_combout\,
	combout => \counter2~19_combout\);

-- Location: FF_X55_Y29_N11
\counter2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~19_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(15));

-- Location: LCCOMB_X54_Y28_N0
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (counter2(16) & (\Add3~31\ $ (GND))) # (!counter2(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((counter2(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X57_Y29_N28
\counter2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~18_combout\ = (\counter2[30]~1_combout\ & \Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2[30]~1_combout\,
	datad => \Add3~32_combout\,
	combout => \counter2~18_combout\);

-- Location: FF_X57_Y29_N29
\counter2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~18_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(16));

-- Location: LCCOMB_X54_Y28_N2
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (counter2(17) & (!\Add3~33\)) # (!counter2(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!counter2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X55_Y29_N4
\counter2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~17_combout\ = (\counter2[30]~1_combout\ & \Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~34_combout\,
	combout => \counter2~17_combout\);

-- Location: FF_X55_Y29_N5
\counter2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~17_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(17));

-- Location: LCCOMB_X54_Y28_N4
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (counter2(18) & (\Add3~35\ $ (GND))) # (!counter2(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((counter2(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X57_Y29_N4
\counter2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~12_combout\ = (\counter2[30]~1_combout\ & \Add3~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~36_combout\,
	combout => \counter2~12_combout\);

-- Location: FF_X57_Y29_N5
\counter2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~12_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(18));

-- Location: LCCOMB_X54_Y28_N6
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (counter2(19) & (!\Add3~37\)) # (!counter2(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!counter2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X55_Y29_N22
\counter2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~8_combout\ = (\counter2[30]~1_combout\ & \Add3~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~38_combout\,
	combout => \counter2~8_combout\);

-- Location: FF_X55_Y29_N23
\counter2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~8_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(19));

-- Location: LCCOMB_X54_Y28_N8
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (counter2(20) & (\Add3~39\ $ (GND))) # (!counter2(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((counter2(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X55_Y29_N8
\counter2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~9_combout\ = (\counter2[30]~1_combout\ & \Add3~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~40_combout\,
	combout => \counter2~9_combout\);

-- Location: FF_X55_Y29_N9
\counter2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~9_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(20));

-- Location: LCCOMB_X54_Y28_N10
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (counter2(21) & (!\Add3~41\)) # (!counter2(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!counter2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X55_Y29_N18
\counter2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~10_combout\ = (\counter2[30]~1_combout\ & \Add3~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~42_combout\,
	combout => \counter2~10_combout\);

-- Location: FF_X55_Y29_N19
\counter2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~10_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(21));

-- Location: LCCOMB_X54_Y28_N12
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (counter2(22) & (\Add3~43\ $ (GND))) # (!counter2(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((counter2(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X55_Y29_N0
\counter2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~11_combout\ = (\counter2[30]~1_combout\ & \Add3~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~1_combout\,
	datad => \Add3~44_combout\,
	combout => \counter2~11_combout\);

-- Location: FF_X55_Y29_N1
\counter2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~11_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(22));

-- Location: LCCOMB_X54_Y28_N14
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (counter2(23) & (!\Add3~45\)) # (!counter2(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!counter2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X57_Y29_N26
\counter2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~6_combout\ = (\counter2[30]~1_combout\ & \Add3~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2[30]~1_combout\,
	datad => \Add3~46_combout\,
	combout => \counter2~6_combout\);

-- Location: FF_X57_Y29_N27
\counter2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~6_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(23));

-- Location: LCCOMB_X55_Y29_N16
\counter2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2~7_combout\ = (\counter2[30]~1_combout\ & \Add3~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~48_combout\,
	combout => \counter2~7_combout\);

-- Location: FF_X55_Y29_N17
\counter2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2~7_combout\,
	ena => \counter2[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(24));

-- Location: LCCOMB_X55_Y29_N6
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (counter2(28)) # ((counter2(25)) # ((counter2(27)) # (counter2(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(28),
	datab => counter2(25),
	datac => counter2(27),
	datad => counter2(26),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X55_Y29_N20
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (counter2(24) & ((counter2(17)) # ((counter2(15) & counter2(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(15),
	datab => counter2(17),
	datac => counter2(16),
	datad => counter2(24),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X56_Y29_N4
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~1_combout\) # ((counter2(18) & (\LessThan1~0_combout\ & \LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(18),
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X57_Y29_N0
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (counter2(16) & (counter2(18) & counter2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter2(16),
	datac => counter2(18),
	datad => counter2(11),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X56_Y29_N10
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ((counter2(6) & !\Equal3~1_combout\)) # (!\LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(6),
	datac => \LessThan2~2_combout\,
	datad => \Equal3~1_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X56_Y29_N20
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\LessThan1~4_combout\ & (\LessThan1~0_combout\ & (\LessThan1~6_combout\ & \LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~6_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X56_Y29_N18
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\LessThan1~3_combout\) # ((counter2(24) & ((counter2(23)) # (\LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(24),
	datab => counter2(23),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X57_Y29_N10
\counter2[30]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[30]~2_combout\ = (\counter2[30]~1_combout\) # ((!counter2(29) & !\LessThan1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(29),
	datab => \LessThan1~8_combout\,
	datad => \counter2[30]~1_combout\,
	combout => \counter2[30]~2_combout\);

-- Location: LCCOMB_X54_Y28_N26
\Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (counter2(29) & (!\Add3~57\)) # (!counter2(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!counter2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X54_Y28_N28
\Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (counter2(30) & (\Add3~59\ $ (GND))) # (!counter2(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((counter2(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X58_Y29_N28
\counter2[30]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[30]~3_combout\ = (\counter2[30]~2_combout\ & ((\Add3~60_combout\) # ((!counter2(31) & counter2(30))))) # (!\counter2[30]~2_combout\ & (!counter2(31) & (counter2(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~2_combout\,
	datab => counter2(31),
	datac => counter2(30),
	datad => \Add3~60_combout\,
	combout => \counter2[30]~3_combout\);

-- Location: FF_X58_Y29_N29
\counter2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(30));

-- Location: LCCOMB_X54_Y28_N30
\Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = \Add3~61\ $ (counter2(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter2(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X55_Y28_N24
\counter2[31]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[31]~35_combout\ = (\counter2[30]~1_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2[30]~1_combout\,
	datad => \Add3~62_combout\,
	combout => \counter2[31]~35_combout\);

-- Location: FF_X55_Y28_N25
\counter2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(31));

-- Location: LCCOMB_X57_Y29_N24
\counter2[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[30]~1_combout\ = (counter2(31)) # ((\Equal3~3_combout\ & ((\LessThan2~3_combout\) # (\LessThan2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(31),
	datab => \Equal3~3_combout\,
	datac => \LessThan2~3_combout\,
	datad => \LessThan2~6_combout\,
	combout => \counter2[30]~1_combout\);

-- Location: LCCOMB_X57_Y29_N12
\counter2[29]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2[29]~5_combout\ = (\counter2[4]~4_combout\ & (\counter2[30]~1_combout\ & ((\Add3~58_combout\)))) # (!\counter2[4]~4_combout\ & (((counter2(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2[30]~1_combout\,
	datab => \counter2[4]~4_combout\,
	datac => counter2(29),
	datad => \Add3~58_combout\,
	combout => \counter2[29]~5_combout\);

-- Location: FF_X57_Y29_N13
\counter2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[29]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(29));

-- Location: LCCOMB_X56_Y29_N16
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (!counter2(31) & ((counter2(29)) # ((counter2(30)) # (\LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(29),
	datab => counter2(30),
	datac => counter2(31),
	datad => \LessThan1~8_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X52_Y13_N20
\tmp2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmp2~0_combout\ = (\tmp1~q\ & (((\tmp2~q\ & \counter2~0_combout\)) # (!\LessThan1~9_combout\))) # (!\tmp1~q\ & (((\tmp2~q\ & \counter2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp1~q\,
	datab => \LessThan1~9_combout\,
	datac => \tmp2~q\,
	datad => \counter2~0_combout\,
	combout => \tmp2~0_combout\);

-- Location: FF_X52_Y13_N21
tmp2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp2~q\);

-- Location: LCCOMB_X52_Y13_N10
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\pres_state.stpassword~q\ & \tmp2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pres_state.stpassword~q\,
	datad => \tmp2~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X52_Y13_N22
\Equal16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (!\password[3]~input_o\ & (!\password[4]~input_o\ & (!\password[2]~input_o\ & !\password[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password[3]~input_o\,
	datab => \password[4]~input_o\,
	datac => \password[2]~input_o\,
	datad => \password[1]~input_o\,
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X52_Y13_N30
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\pres_state.stpassword~q\ & (((\password[9]~input_o\) # (!\Equal16~1_combout\)) # (!\Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~0_combout\,
	datab => \password[9]~input_o\,
	datac => \Equal16~1_combout\,
	datad => \pres_state.stpassword~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X52_Y13_N26
\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\pres_state.stop~q\) # (!\pres_state.initial~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datac => \pres_state.stop~q\,
	datad => \pres_state.initial~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X52_Y13_N12
\buzzer$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \buzzer$latch~combout\ = (\Selector5~1_combout\ & (\Selector6~0_combout\)) # (!\Selector5~1_combout\ & ((\buzzer$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~0_combout\,
	datac => \buzzer$latch~combout\,
	datad => \Selector5~1_combout\,
	combout => \buzzer$latch~combout\);

-- Location: LCCOMB_X50_Y50_N2
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (counter0(0) & (countservo1(1) & VCC)) # (!counter0(0) & (countservo1(1) $ (VCC)))
-- \Add4~1\ = CARRY((!counter0(0) & countservo1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(0),
	datab => countservo1(1),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: FF_X50_Y50_N3
\countservo1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(1));

-- Location: LCCOMB_X50_Y50_N4
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (countservo1(2) & (!\Add4~1\)) # (!countservo1(2) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!countservo1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(2),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: FF_X50_Y50_N5
\countservo1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(2));

-- Location: LCCOMB_X50_Y50_N6
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (countservo1(3) & (\Add4~3\ $ (GND))) # (!countservo1(3) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((countservo1(3) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(3),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X49_Y50_N16
\countservo1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~2_combout\ = (!\Equal4~10_combout\ & \Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~10_combout\,
	datad => \Add4~4_combout\,
	combout => \countservo1~2_combout\);

-- Location: FF_X49_Y50_N17
\countservo1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(3));

-- Location: LCCOMB_X50_Y50_N8
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (countservo1(4) & (!\Add4~5\)) # (!countservo1(4) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!countservo1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(4),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: FF_X50_Y50_N9
\countservo1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(4));

-- Location: LCCOMB_X50_Y50_N10
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (countservo1(5) & (\Add4~7\ $ (GND))) # (!countservo1(5) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((countservo1(5) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(5),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X50_Y50_N11
\countservo1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(5));

-- Location: LCCOMB_X50_Y50_N12
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (countservo1(6) & (!\Add4~9\)) # (!countservo1(6) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!countservo1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(6),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X49_Y50_N0
\countservo1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~0_combout\ = (\Add4~10_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~10_combout\,
	datad => \Equal4~10_combout\,
	combout => \countservo1~0_combout\);

-- Location: FF_X49_Y50_N1
\countservo1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(6));

-- Location: LCCOMB_X50_Y50_N14
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (countservo1(7) & (\Add4~11\ $ (GND))) # (!countservo1(7) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((countservo1(7) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(7),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X49_Y50_N26
\countservo1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~1_combout\ = (\Add4~12_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~12_combout\,
	datad => \Equal4~10_combout\,
	combout => \countservo1~1_combout\);

-- Location: FF_X49_Y50_N27
\countservo1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(7));

-- Location: LCCOMB_X50_Y50_N16
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (countservo1(8) & (!\Add4~13\)) # (!countservo1(8) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!countservo1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(8),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X49_Y50_N6
\countservo1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~3_combout\ = (!\Equal4~10_combout\ & \Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~10_combout\,
	datad => \Add4~14_combout\,
	combout => \countservo1~3_combout\);

-- Location: FF_X49_Y50_N7
\countservo1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(8));

-- Location: LCCOMB_X50_Y50_N18
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (countservo1(9) & (\Add4~15\ $ (GND))) # (!countservo1(9) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((countservo1(9) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(9),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X50_Y50_N0
\countservo1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~4_combout\ = (!\Equal4~10_combout\ & \Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~10_combout\,
	datad => \Add4~16_combout\,
	combout => \countservo1~4_combout\);

-- Location: FF_X50_Y50_N1
\countservo1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(9));

-- Location: LCCOMB_X50_Y50_N20
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (countservo1(10) & (!\Add4~17\)) # (!countservo1(10) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!countservo1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(10),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X49_Y50_N28
\countservo1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~5_combout\ = (\Add4~18_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~18_combout\,
	datad => \Equal4~10_combout\,
	combout => \countservo1~5_combout\);

-- Location: FF_X49_Y50_N29
\countservo1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(10));

-- Location: LCCOMB_X50_Y50_N22
\Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (countservo1(11) & (\Add4~19\ $ (GND))) # (!countservo1(11) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((countservo1(11) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(11),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X49_Y50_N24
\countservo1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~6_combout\ = (!\Equal4~10_combout\ & \Add4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~10_combout\,
	datad => \Add4~20_combout\,
	combout => \countservo1~6_combout\);

-- Location: FF_X49_Y50_N25
\countservo1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(11));

-- Location: LCCOMB_X49_Y50_N30
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (countservo1(8) & (countservo1(11) & (countservo1(9) & countservo1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(8),
	datab => countservo1(11),
	datac => countservo1(9),
	datad => countservo1(10),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X49_Y50_N8
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (countservo1(2) & (!counter0(0) & countservo1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(2),
	datac => counter0(0),
	datad => countservo1(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X49_Y50_N20
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (countservo1(7) & (!countservo1(4) & (!countservo1(5) & countservo1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(7),
	datab => countservo1(4),
	datac => countservo1(5),
	datad => countservo1(6),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X49_Y50_N18
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!countservo1(3) & (\Equal4~0_combout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countservo1(3),
	datac => \Equal4~0_combout\,
	datad => \Equal4~1_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X50_Y50_N24
\Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (countservo1(12) & (!\Add4~21\)) # (!countservo1(12) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!countservo1(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(12),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: FF_X50_Y50_N25
\countservo1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(12));

-- Location: LCCOMB_X50_Y50_N26
\Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (countservo1(13) & (\Add4~23\ $ (GND))) # (!countservo1(13) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((countservo1(13) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(13),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X49_Y50_N22
\countservo1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~7_combout\ = (!\Equal4~10_combout\ & \Add4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~10_combout\,
	datad => \Add4~24_combout\,
	combout => \countservo1~7_combout\);

-- Location: FF_X49_Y50_N23
\countservo1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(13));

-- Location: LCCOMB_X50_Y50_N28
\Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (countservo1(14) & (!\Add4~25\)) # (!countservo1(14) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!countservo1(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(14),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: FF_X50_Y50_N29
\countservo1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(14));

-- Location: LCCOMB_X50_Y50_N30
\Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (countservo1(15) & (\Add4~27\ $ (GND))) # (!countservo1(15) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((countservo1(15) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(15),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X49_Y50_N14
\countservo1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo1~8_combout\ = (\Add4~28_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~28_combout\,
	datad => \Equal4~10_combout\,
	combout => \countservo1~8_combout\);

-- Location: FF_X49_Y50_N15
\countservo1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(15));

-- Location: LCCOMB_X49_Y50_N4
\Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (countservo1(13) & (!countservo1(14) & (countservo1(15) & !countservo1(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(13),
	datab => countservo1(14),
	datac => countservo1(15),
	datad => countservo1(12),
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X50_Y49_N0
\Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (countservo1(16) & (!\Add4~29\)) # (!countservo1(16) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!countservo1(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(16),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: FF_X50_Y49_N1
\countservo1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(16));

-- Location: LCCOMB_X50_Y49_N2
\Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (countservo1(17) & (\Add4~31\ $ (GND))) # (!countservo1(17) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((countservo1(17) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(17),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: FF_X50_Y49_N3
\countservo1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(17));

-- Location: LCCOMB_X50_Y49_N4
\Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (countservo1(18) & (!\Add4~33\)) # (!countservo1(18) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!countservo1(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(18),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: FF_X50_Y49_N5
\countservo1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(18));

-- Location: LCCOMB_X50_Y49_N6
\Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (countservo1(19) & (\Add4~35\ $ (GND))) # (!countservo1(19) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((countservo1(19) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(19),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: FF_X50_Y49_N7
\countservo1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(19));

-- Location: LCCOMB_X50_Y49_N8
\Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (countservo1(20) & (!\Add4~37\)) # (!countservo1(20) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!countservo1(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(20),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: FF_X50_Y49_N9
\countservo1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(20));

-- Location: LCCOMB_X50_Y49_N10
\Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (countservo1(21) & (\Add4~39\ $ (GND))) # (!countservo1(21) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((countservo1(21) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(21),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: FF_X50_Y49_N11
\countservo1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(21));

-- Location: LCCOMB_X50_Y49_N12
\Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (countservo1(22) & (!\Add4~41\)) # (!countservo1(22) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!countservo1(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(22),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: FF_X50_Y49_N13
\countservo1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(22));

-- Location: LCCOMB_X50_Y49_N14
\Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (countservo1(23) & (\Add4~43\ $ (GND))) # (!countservo1(23) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((countservo1(23) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(23),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: FF_X50_Y49_N15
\countservo1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(23));

-- Location: LCCOMB_X49_Y49_N10
\Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (!countservo1(20) & (!countservo1(22) & (!countservo1(23) & !countservo1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(20),
	datab => countservo1(22),
	datac => countservo1(23),
	datad => countservo1(21),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X50_Y49_N16
\Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (countservo1(24) & (!\Add4~45\)) # (!countservo1(24) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!countservo1(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(24),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: FF_X50_Y49_N17
\countservo1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(24));

-- Location: LCCOMB_X50_Y49_N18
\Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (countservo1(25) & (\Add4~47\ $ (GND))) # (!countservo1(25) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((countservo1(25) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(25),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: FF_X50_Y49_N19
\countservo1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(25));

-- Location: LCCOMB_X50_Y49_N20
\Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (countservo1(26) & (!\Add4~49\)) # (!countservo1(26) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!countservo1(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(26),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: FF_X50_Y49_N21
\countservo1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(26));

-- Location: LCCOMB_X50_Y49_N22
\Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (countservo1(27) & (\Add4~51\ $ (GND))) # (!countservo1(27) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((countservo1(27) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(27),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: FF_X50_Y49_N23
\countservo1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(27));

-- Location: LCCOMB_X49_Y49_N8
\Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!countservo1(26) & (!countservo1(25) & (!countservo1(27) & !countservo1(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(26),
	datab => countservo1(25),
	datac => countservo1(27),
	datad => countservo1(24),
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X50_Y49_N24
\Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (countservo1(28) & (!\Add4~53\)) # (!countservo1(28) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!countservo1(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(28),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: FF_X50_Y49_N25
\countservo1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(28));

-- Location: LCCOMB_X50_Y49_N26
\Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (countservo1(29) & (\Add4~55\ $ (GND))) # (!countservo1(29) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((countservo1(29) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(29),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: FF_X50_Y49_N27
\countservo1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(29));

-- Location: LCCOMB_X50_Y49_N28
\Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (countservo1(30) & (!\Add4~57\)) # (!countservo1(30) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!countservo1(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(30),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: FF_X50_Y49_N29
\countservo1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(30));

-- Location: LCCOMB_X50_Y49_N30
\Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = countservo1(31) $ (!\Add4~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(31),
	cin => \Add4~59\,
	combout => \Add4~60_combout\);

-- Location: FF_X50_Y49_N31
\countservo1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo1(31));

-- Location: LCCOMB_X49_Y49_N30
\Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (!countservo1(29) & (!countservo1(30) & (!countservo1(31) & !countservo1(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(29),
	datab => countservo1(30),
	datac => countservo1(31),
	datad => countservo1(28),
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X49_Y49_N28
\Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!countservo1(18) & (!countservo1(16) & (!countservo1(19) & !countservo1(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(18),
	datab => countservo1(16),
	datac => countservo1(19),
	datad => countservo1(17),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X49_Y49_N0
\Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (\Equal4~6_combout\ & (\Equal4~7_combout\ & (\Equal4~8_combout\ & \Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~6_combout\,
	datab => \Equal4~7_combout\,
	datac => \Equal4~8_combout\,
	datad => \Equal4~5_combout\,
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X49_Y50_N10
\Equal4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~10_combout\ = (\Equal4~3_combout\ & (\Equal4~2_combout\ & (\Equal4~4_combout\ & \Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~4_combout\,
	datad => \Equal4~9_combout\,
	combout => \Equal4~10_combout\);

-- Location: LCCOMB_X49_Y50_N12
\tmpservo1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpservo1~0_combout\ = \tmpservo1~q\ $ (\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpservo1~q\,
	datad => \Equal4~10_combout\,
	combout => \tmpservo1~0_combout\);

-- Location: LCCOMB_X49_Y50_N2
\tmpservo1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpservo1~feeder_combout\ = \tmpservo1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpservo1~0_combout\,
	combout => \tmpservo1~feeder_combout\);

-- Location: FF_X49_Y50_N3
tmpservo1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmpservo1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpservo1~q\);

-- Location: LCCOMB_X55_Y50_N2
\Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~1_cout\ = CARRY((countservo1(1) & !counter0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo1(1),
	datab => counter0(0),
	datad => VCC,
	cout => \Add5~1_cout\);

-- Location: LCCOMB_X55_Y50_N4
\Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~3_cout\ = CARRY((!\Add5~1_cout\) # (!countservo1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo1(2),
	datad => VCC,
	cin => \Add5~1_cout\,
	cout => \Add5~3_cout\);

-- Location: LCCOMB_X55_Y50_N6
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (countservo2(3) & (\Add5~3_cout\ $ (GND))) # (!countservo2(3) & (!\Add5~3_cout\ & VCC))
-- \Add5~5\ = CARRY((countservo2(3) & !\Add5~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(3),
	datad => VCC,
	cin => \Add5~3_cout\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X55_Y50_N0
\countservo2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo2~1_combout\ = (\Add5~4_combout\ & !\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datac => \Equal5~9_combout\,
	combout => \countservo2~1_combout\);

-- Location: FF_X55_Y50_N1
\countservo2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(3));

-- Location: LCCOMB_X55_Y50_N8
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (countservo2(4) & (!\Add5~5\)) # (!countservo2(4) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!countservo2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(4),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X55_Y50_N9
\countservo2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(4));

-- Location: LCCOMB_X55_Y50_N10
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (countservo2(5) & (\Add5~7\ $ (GND))) # (!countservo2(5) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((countservo2(5) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(5),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: FF_X55_Y50_N11
\countservo2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(5));

-- Location: LCCOMB_X55_Y50_N12
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (countservo2(6) & (!\Add5~9\)) # (!countservo2(6) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!countservo2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(6),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X54_Y50_N16
\countservo2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo2~0_combout\ = (\Add5~10_combout\ & !\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~10_combout\,
	datad => \Equal5~9_combout\,
	combout => \countservo2~0_combout\);

-- Location: FF_X54_Y50_N17
\countservo2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(6));

-- Location: LCCOMB_X55_Y50_N14
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (countservo2(7) & (\Add5~11\ $ (GND))) # (!countservo2(7) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((countservo2(7) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(7),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: FF_X55_Y50_N15
\countservo2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(7));

-- Location: LCCOMB_X55_Y50_N16
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (countservo2(8) & (!\Add5~13\)) # (!countservo2(8) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!countservo2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(8),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X55_Y50_N17
\countservo2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(8));

-- Location: LCCOMB_X55_Y50_N18
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (countservo2(9) & (\Add5~15\ $ (GND))) # (!countservo2(9) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((countservo2(9) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(9),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X55_Y50_N19
\countservo2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(9));

-- Location: LCCOMB_X55_Y50_N20
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (countservo2(10) & (!\Add5~17\)) # (!countservo2(10) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!countservo2(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(10),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: FF_X55_Y50_N21
\countservo2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(10));

-- Location: LCCOMB_X55_Y50_N22
\Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (countservo2(11) & (\Add5~19\ $ (GND))) # (!countservo2(11) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((countservo2(11) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(11),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X54_Y50_N6
\countservo2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo2~2_combout\ = (!\Equal5~9_combout\ & \Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datad => \Add5~20_combout\,
	combout => \countservo2~2_combout\);

-- Location: FF_X54_Y50_N7
\countservo2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(11));

-- Location: LCCOMB_X55_Y50_N24
\Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (countservo2(12) & (!\Add5~21\)) # (!countservo2(12) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!countservo2(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(12),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: FF_X55_Y50_N25
\countservo2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(12));

-- Location: LCCOMB_X55_Y50_N26
\Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (countservo2(13) & (\Add5~23\ $ (GND))) # (!countservo2(13) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((countservo2(13) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(13),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X54_Y50_N14
\countservo2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo2~3_combout\ = (!\Equal5~9_combout\ & \Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datad => \Add5~24_combout\,
	combout => \countservo2~3_combout\);

-- Location: FF_X54_Y50_N15
\countservo2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(13));

-- Location: LCCOMB_X55_Y50_N28
\Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (countservo2(14) & (!\Add5~25\)) # (!countservo2(14) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!countservo2(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(14),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X54_Y50_N24
\countservo2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo2~4_combout\ = (!\Equal5~9_combout\ & \Add5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datad => \Add5~26_combout\,
	combout => \countservo2~4_combout\);

-- Location: FF_X54_Y50_N25
\countservo2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(14));

-- Location: LCCOMB_X55_Y50_N30
\Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (countservo2(15) & (\Add5~27\ $ (GND))) # (!countservo2(15) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((countservo2(15) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(15),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X54_Y50_N12
\countservo2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo2~5_combout\ = (\Add5~28_combout\ & !\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~28_combout\,
	datad => \Equal5~9_combout\,
	combout => \countservo2~5_combout\);

-- Location: FF_X54_Y50_N13
\countservo2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(15));

-- Location: LCCOMB_X54_Y50_N26
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!countservo2(12) & (countservo2(14) & (countservo2(13) & countservo2(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(12),
	datab => countservo2(14),
	datac => countservo2(13),
	datad => countservo2(15),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X54_Y50_N2
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!countservo2(10) & (!countservo2(9) & (countservo2(11) & !countservo2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(10),
	datab => countservo2(9),
	datac => countservo2(11),
	datad => countservo2(8),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X55_Y49_N0
\Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (countservo2(16) & (!\Add5~29\)) # (!countservo2(16) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!countservo2(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(16),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X54_Y50_N30
\countservo2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \countservo2~6_combout\ = (\Add5~30_combout\ & !\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datad => \Equal5~9_combout\,
	combout => \countservo2~6_combout\);

-- Location: FF_X54_Y50_N31
\countservo2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countservo2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(16));

-- Location: LCCOMB_X55_Y49_N2
\Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (countservo2(17) & (\Add5~31\ $ (GND))) # (!countservo2(17) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((countservo2(17) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(17),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: FF_X55_Y49_N3
\countservo2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(17));

-- Location: LCCOMB_X55_Y49_N4
\Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (countservo2(18) & (!\Add5~33\)) # (!countservo2(18) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!countservo2(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(18),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: FF_X55_Y49_N5
\countservo2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(18));

-- Location: LCCOMB_X55_Y49_N6
\Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (countservo2(19) & (\Add5~35\ $ (GND))) # (!countservo2(19) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((countservo2(19) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(19),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: FF_X55_Y49_N7
\countservo2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(19));

-- Location: LCCOMB_X55_Y49_N8
\Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (countservo2(20) & (!\Add5~37\)) # (!countservo2(20) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!countservo2(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(20),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: FF_X55_Y49_N9
\countservo2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(20));

-- Location: LCCOMB_X55_Y49_N10
\Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (countservo2(21) & (\Add5~39\ $ (GND))) # (!countservo2(21) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((countservo2(21) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(21),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: FF_X55_Y49_N11
\countservo2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(21));

-- Location: LCCOMB_X55_Y49_N12
\Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (countservo2(22) & (!\Add5~41\)) # (!countservo2(22) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!countservo2(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(22),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: FF_X55_Y49_N13
\countservo2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(22));

-- Location: LCCOMB_X55_Y49_N14
\Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (countservo2(23) & (\Add5~43\ $ (GND))) # (!countservo2(23) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((countservo2(23) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(23),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: FF_X55_Y49_N15
\countservo2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(23));

-- Location: LCCOMB_X55_Y49_N16
\Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (countservo2(24) & (!\Add5~45\)) # (!countservo2(24) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!countservo2(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(24),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: FF_X55_Y49_N17
\countservo2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(24));

-- Location: LCCOMB_X55_Y49_N18
\Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (countservo2(25) & (\Add5~47\ $ (GND))) # (!countservo2(25) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((countservo2(25) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(25),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: FF_X55_Y49_N19
\countservo2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(25));

-- Location: LCCOMB_X55_Y49_N20
\Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (countservo2(26) & (!\Add5~49\)) # (!countservo2(26) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!countservo2(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(26),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: FF_X55_Y49_N21
\countservo2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(26));

-- Location: LCCOMB_X55_Y49_N22
\Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (countservo2(27) & (\Add5~51\ $ (GND))) # (!countservo2(27) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((countservo2(27) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(27),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: FF_X55_Y49_N23
\countservo2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(27));

-- Location: LCCOMB_X55_Y49_N24
\Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (countservo2(28) & (!\Add5~53\)) # (!countservo2(28) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!countservo2(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(28),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: FF_X55_Y49_N25
\countservo2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(28));

-- Location: LCCOMB_X55_Y49_N26
\Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (countservo2(29) & (\Add5~55\ $ (GND))) # (!countservo2(29) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((countservo2(29) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(29),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: FF_X55_Y49_N27
\countservo2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(29));

-- Location: LCCOMB_X55_Y49_N28
\Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (countservo2(30) & (!\Add5~57\)) # (!countservo2(30) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!countservo2(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countservo2(30),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: FF_X55_Y49_N29
\countservo2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(30));

-- Location: LCCOMB_X55_Y49_N30
\Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = countservo2(31) $ (!\Add5~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(31),
	cin => \Add5~59\,
	combout => \Add5~60_combout\);

-- Location: FF_X55_Y49_N31
\countservo2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countservo2(31));

-- Location: LCCOMB_X56_Y49_N0
\Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (!countservo2(31) & (!countservo2(30) & (!countservo2(29) & !countservo2(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(31),
	datab => countservo2(30),
	datac => countservo2(29),
	datad => countservo2(28),
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X54_Y49_N0
\Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!countservo2(23) & (!countservo2(21) & (!countservo2(20) & !countservo2(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(23),
	datab => countservo2(21),
	datac => countservo2(20),
	datad => countservo2(22),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X54_Y50_N8
\Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (countservo2(16) & (!countservo2(18) & (!countservo2(19) & !countservo2(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(16),
	datab => countservo2(18),
	datac => countservo2(19),
	datad => countservo2(17),
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X54_Y49_N22
\Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!countservo2(26) & (!countservo2(24) & (!countservo2(25) & !countservo2(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(26),
	datab => countservo2(24),
	datac => countservo2(25),
	datad => countservo2(27),
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X54_Y50_N22
\Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (\Equal5~7_combout\ & (\Equal5~5_combout\ & (\Equal5~4_combout\ & \Equal5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~7_combout\,
	datab => \Equal5~5_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~6_combout\,
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X54_Y50_N20
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!countservo2(5) & (!countservo2(7) & (!countservo2(4) & countservo2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countservo2(5),
	datab => countservo2(7),
	datac => countservo2(4),
	datad => countservo2(6),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X54_Y50_N10
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Equal5~0_combout\ & (!countservo2(3) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => countservo2(3),
	datad => \Equal4~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X54_Y50_N18
\Equal5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (\Equal5~3_combout\ & (\Equal5~2_combout\ & (\Equal5~8_combout\ & \Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Equal5~2_combout\,
	datac => \Equal5~8_combout\,
	datad => \Equal5~1_combout\,
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X54_Y50_N4
\tmpservo2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpservo2~0_combout\ = \tmpservo2~q\ $ (\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpservo2~q\,
	datad => \Equal5~9_combout\,
	combout => \tmpservo2~0_combout\);

-- Location: LCCOMB_X54_Y50_N28
\tmpservo2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpservo2~feeder_combout\ = \tmpservo2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tmpservo2~0_combout\,
	combout => \tmpservo2~feeder_combout\);

-- Location: FF_X54_Y50_N29
tmpservo2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmpservo2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpservo2~q\);

-- Location: CLKCTRL_G12
\tmpservo2~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tmpservo2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tmpservo2~clkctrl_outclk\);

-- Location: FF_X66_Y28_N31
\counts2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \Add7~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(31));

-- Location: LCCOMB_X66_Y29_N0
\Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = counts2(0) $ (VCC)
-- \Add7~1\ = CARRY(counts2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counts2(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X66_Y29_N2
\Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (counts2(1) & (!\Add7~1\)) # (!counts2(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!counts2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X67_Y28_N30
\segnaleServoNovanta~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~5_combout\ = (!\Add7~44_combout\ & (!\Add7~42_combout\ & (!\Add7~40_combout\ & !\Add7~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~44_combout\,
	datab => \Add7~42_combout\,
	datac => \Add7~40_combout\,
	datad => \Add7~46_combout\,
	combout => \segnaleServoNovanta~5_combout\);

-- Location: LCCOMB_X67_Y28_N8
\segnaleServoNovanta~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~6_combout\ = (!\Add7~48_combout\ & (!\Add7~50_combout\ & (!\Add7~52_combout\ & !\Add7~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~48_combout\,
	datab => \Add7~50_combout\,
	datac => \Add7~52_combout\,
	datad => \Add7~54_combout\,
	combout => \segnaleServoNovanta~6_combout\);

-- Location: LCCOMB_X67_Y28_N22
\segnaleServoNovanta~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~1_combout\ = (!\Add7~18_combout\ & (!\Add7~20_combout\ & (!\Add7~16_combout\ & !\Add7~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~18_combout\,
	datab => \Add7~20_combout\,
	datac => \Add7~16_combout\,
	datad => \Add7~22_combout\,
	combout => \segnaleServoNovanta~1_combout\);

-- Location: LCCOMB_X67_Y28_N16
\segnaleServoNovanta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~0_combout\ = (!\Add7~10_combout\ & (!\Add7~14_combout\ & (!\Add7~12_combout\ & !\Add7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datab => \Add7~14_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~8_combout\,
	combout => \segnaleServoNovanta~0_combout\);

-- Location: LCCOMB_X67_Y28_N14
\segnaleServoNovanta~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~3_combout\ = (!\Add7~32_combout\ & (!\Add7~38_combout\ & (!\Add7~36_combout\ & !\Add7~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~32_combout\,
	datab => \Add7~38_combout\,
	datac => \Add7~36_combout\,
	datad => \Add7~34_combout\,
	combout => \segnaleServoNovanta~3_combout\);

-- Location: LCCOMB_X67_Y28_N24
\segnaleServoNovanta~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~2_combout\ = (!\Add7~30_combout\ & (!\Add7~24_combout\ & (!\Add7~26_combout\ & !\Add7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~30_combout\,
	datab => \Add7~24_combout\,
	datac => \Add7~26_combout\,
	datad => \Add7~28_combout\,
	combout => \segnaleServoNovanta~2_combout\);

-- Location: LCCOMB_X67_Y28_N4
\segnaleServoNovanta~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~4_combout\ = (\segnaleServoNovanta~1_combout\ & (\segnaleServoNovanta~0_combout\ & (\segnaleServoNovanta~3_combout\ & \segnaleServoNovanta~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segnaleServoNovanta~1_combout\,
	datab => \segnaleServoNovanta~0_combout\,
	datac => \segnaleServoNovanta~3_combout\,
	datad => \segnaleServoNovanta~2_combout\,
	combout => \segnaleServoNovanta~4_combout\);

-- Location: LCCOMB_X67_Y28_N10
\segnaleServoNovanta~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~7_combout\ = (!\Add7~56_combout\ & (!\Add7~58_combout\ & !\Add7~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~56_combout\,
	datac => \Add7~58_combout\,
	datad => \Add7~60_combout\,
	combout => \segnaleServoNovanta~7_combout\);

-- Location: LCCOMB_X67_Y28_N20
\segnaleServoNovanta~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~8_combout\ = (\segnaleServoNovanta~5_combout\ & (\segnaleServoNovanta~6_combout\ & (\segnaleServoNovanta~4_combout\ & \segnaleServoNovanta~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segnaleServoNovanta~5_combout\,
	datab => \segnaleServoNovanta~6_combout\,
	datac => \segnaleServoNovanta~4_combout\,
	datad => \segnaleServoNovanta~7_combout\,
	combout => \segnaleServoNovanta~8_combout\);

-- Location: LCCOMB_X67_Y28_N2
\counts2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~30_combout\ = (\Add7~2_combout\ & ((\Add7~62_combout\) # ((!\LessThan5~0_combout\ & \segnaleServoNovanta~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~62_combout\,
	datac => \LessThan5~0_combout\,
	datad => \segnaleServoNovanta~8_combout\,
	combout => \counts2~30_combout\);

-- Location: FF_X67_Y28_N3
\counts2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(1));

-- Location: LCCOMB_X66_Y29_N4
\Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (counts2(2) & (\Add7~3\ $ (GND))) # (!counts2(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((counts2(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X67_Y28_N0
\counts2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~29_combout\ = (\Add7~4_combout\ & ((\Add7~62_combout\) # ((!\LessThan5~0_combout\ & \segnaleServoNovanta~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add7~62_combout\,
	datac => \LessThan5~0_combout\,
	datad => \segnaleServoNovanta~8_combout\,
	combout => \counts2~29_combout\);

-- Location: FF_X67_Y28_N1
\counts2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(2));

-- Location: LCCOMB_X66_Y29_N6
\Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (counts2(3) & (!\Add7~5\)) # (!counts2(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!counts2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X67_Y29_N26
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Add7~6_combout\ & ((\Add7~4_combout\) # ((\Add7~0_combout\ & \Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add7~6_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~2_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X67_Y28_N18
\counts2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~28_combout\ = (\Add7~6_combout\ & ((\Add7~62_combout\) # ((!\LessThan5~0_combout\ & \segnaleServoNovanta~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \Add7~62_combout\,
	datac => \Add7~6_combout\,
	datad => \segnaleServoNovanta~8_combout\,
	combout => \counts2~28_combout\);

-- Location: FF_X67_Y28_N19
\counts2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(3));

-- Location: LCCOMB_X66_Y29_N8
\Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (counts2(4) & (\Add7~7\ $ (GND))) # (!counts2(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((counts2(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X65_Y28_N10
\counts2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~27_combout\ = (\Add7~62_combout\ & \Add7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~8_combout\,
	combout => \counts2~27_combout\);

-- Location: FF_X65_Y28_N11
\counts2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(4));

-- Location: LCCOMB_X66_Y29_N10
\Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (counts2(5) & (!\Add7~9\)) # (!counts2(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!counts2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X67_Y28_N12
\counts2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~26_combout\ = (\Add7~10_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~26_combout\);

-- Location: FF_X67_Y28_N13
\counts2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(5));

-- Location: LCCOMB_X66_Y29_N12
\Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (counts2(6) & (\Add7~11\ $ (GND))) # (!counts2(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((counts2(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X67_Y29_N20
\counts2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~25_combout\ = (\Add7~12_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~12_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~25_combout\);

-- Location: FF_X67_Y29_N21
\counts2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(6));

-- Location: LCCOMB_X66_Y29_N14
\Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (counts2(7) & (!\Add7~13\)) # (!counts2(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!counts2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X67_Y29_N18
\counts2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~24_combout\ = (\Add7~14_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~24_combout\);

-- Location: FF_X67_Y29_N19
\counts2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(7));

-- Location: LCCOMB_X66_Y29_N16
\Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (counts2(8) & (\Add7~15\ $ (GND))) # (!counts2(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((counts2(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X65_Y28_N12
\counts2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~23_combout\ = (\Add7~62_combout\ & \Add7~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~16_combout\,
	combout => \counts2~23_combout\);

-- Location: FF_X65_Y28_N13
\counts2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(8));

-- Location: LCCOMB_X66_Y29_N18
\Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (counts2(9) & (!\Add7~17\)) # (!counts2(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!counts2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X67_Y29_N12
\counts2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~22_combout\ = (\Add7~18_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~18_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~22_combout\);

-- Location: FF_X67_Y29_N13
\counts2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(9));

-- Location: LCCOMB_X66_Y29_N20
\Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (counts2(10) & (\Add7~19\ $ (GND))) # (!counts2(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((counts2(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X67_Y29_N22
\counts2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~21_combout\ = (\Add7~20_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~20_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~21_combout\);

-- Location: FF_X67_Y29_N23
\counts2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(10));

-- Location: LCCOMB_X66_Y29_N22
\Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (counts2(11) & (!\Add7~21\)) # (!counts2(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!counts2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X65_Y28_N2
\counts2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~20_combout\ = (\Add7~62_combout\ & \Add7~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~22_combout\,
	combout => \counts2~20_combout\);

-- Location: FF_X65_Y28_N3
\counts2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(11));

-- Location: LCCOMB_X66_Y29_N24
\Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (counts2(12) & (\Add7~23\ $ (GND))) # (!counts2(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((counts2(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X65_Y28_N0
\counts2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~19_combout\ = (\Add7~62_combout\ & \Add7~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~24_combout\,
	combout => \counts2~19_combout\);

-- Location: FF_X65_Y28_N1
\counts2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(12));

-- Location: LCCOMB_X66_Y29_N26
\Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (counts2(13) & (!\Add7~25\)) # (!counts2(13) & ((\Add7~25\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~25\) # (!counts2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X67_Y29_N0
\counts2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~18_combout\ = (\Add7~26_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~26_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~18_combout\);

-- Location: FF_X67_Y29_N1
\counts2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(13));

-- Location: LCCOMB_X66_Y29_N28
\Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (counts2(14) & (\Add7~27\ $ (GND))) # (!counts2(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((counts2(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X67_Y29_N10
\counts2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~17_combout\ = (\Add7~28_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~28_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~17_combout\);

-- Location: FF_X67_Y29_N11
\counts2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(14));

-- Location: LCCOMB_X66_Y29_N30
\Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (counts2(15) & (!\Add7~29\)) # (!counts2(15) & ((\Add7~29\) # (GND)))
-- \Add7~31\ = CARRY((!\Add7~29\) # (!counts2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X67_Y29_N24
\counts2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~16_combout\ = (\Add7~30_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~30_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~16_combout\);

-- Location: FF_X67_Y29_N25
\counts2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(15));

-- Location: LCCOMB_X66_Y28_N0
\Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (counts2(16) & (\Add7~31\ $ (GND))) # (!counts2(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((counts2(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X65_Y28_N6
\counts2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~15_combout\ = (\Add7~32_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~32_combout\,
	datac => \Add7~62_combout\,
	combout => \counts2~15_combout\);

-- Location: FF_X65_Y28_N7
\counts2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(16));

-- Location: LCCOMB_X66_Y28_N2
\Add7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (counts2(17) & (!\Add7~33\)) # (!counts2(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!counts2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X65_Y28_N16
\counts2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~14_combout\ = (\Add7~34_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~34_combout\,
	datac => \Add7~62_combout\,
	combout => \counts2~14_combout\);

-- Location: FF_X65_Y28_N17
\counts2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(17));

-- Location: LCCOMB_X66_Y28_N4
\Add7~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (counts2(18) & (\Add7~35\ $ (GND))) # (!counts2(18) & (!\Add7~35\ & VCC))
-- \Add7~37\ = CARRY((counts2(18) & !\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X65_Y28_N30
\counts2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~13_combout\ = (\Add7~62_combout\ & \Add7~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~36_combout\,
	combout => \counts2~13_combout\);

-- Location: FF_X65_Y28_N31
\counts2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(18));

-- Location: LCCOMB_X66_Y28_N6
\Add7~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (counts2(19) & (!\Add7~37\)) # (!counts2(19) & ((\Add7~37\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~37\) # (!counts2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X65_Y28_N24
\counts2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~12_combout\ = (\Add7~62_combout\ & \Add7~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~38_combout\,
	combout => \counts2~12_combout\);

-- Location: FF_X65_Y28_N25
\counts2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(19));

-- Location: LCCOMB_X66_Y28_N8
\Add7~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (counts2(20) & (\Add7~39\ $ (GND))) # (!counts2(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((counts2(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X65_Y28_N22
\counts2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~11_combout\ = (\Add7~62_combout\ & \Add7~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~40_combout\,
	combout => \counts2~11_combout\);

-- Location: FF_X65_Y28_N23
\counts2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(20));

-- Location: LCCOMB_X66_Y28_N10
\Add7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (counts2(21) & (!\Add7~41\)) # (!counts2(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!counts2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X65_Y28_N20
\counts2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~10_combout\ = (\Add7~62_combout\ & \Add7~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~42_combout\,
	combout => \counts2~10_combout\);

-- Location: FF_X65_Y28_N21
\counts2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(21));

-- Location: LCCOMB_X66_Y28_N12
\Add7~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (counts2(22) & (\Add7~43\ $ (GND))) # (!counts2(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((counts2(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X64_Y28_N4
\counts2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~9_combout\ = (\Add7~44_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~44_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~9_combout\);

-- Location: FF_X64_Y28_N5
\counts2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(22));

-- Location: LCCOMB_X66_Y28_N14
\Add7~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (counts2(23) & (!\Add7~45\)) # (!counts2(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!counts2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X65_Y28_N18
\counts2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~8_combout\ = (\Add7~62_combout\ & \Add7~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~46_combout\,
	combout => \counts2~8_combout\);

-- Location: FF_X65_Y28_N19
\counts2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(23));

-- Location: LCCOMB_X66_Y28_N16
\Add7~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (counts2(24) & (\Add7~47\ $ (GND))) # (!counts2(24) & (!\Add7~47\ & VCC))
-- \Add7~49\ = CARRY((counts2(24) & !\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X65_Y28_N28
\counts2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~7_combout\ = (\Add7~62_combout\ & \Add7~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~48_combout\,
	combout => \counts2~7_combout\);

-- Location: FF_X65_Y28_N29
\counts2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(24));

-- Location: LCCOMB_X66_Y28_N18
\Add7~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (counts2(25) & (!\Add7~49\)) # (!counts2(25) & ((\Add7~49\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~49\) # (!counts2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(25),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X65_Y28_N26
\counts2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~6_combout\ = (\Add7~62_combout\ & \Add7~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~50_combout\,
	combout => \counts2~6_combout\);

-- Location: FF_X65_Y28_N27
\counts2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(25));

-- Location: LCCOMB_X66_Y28_N20
\Add7~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (counts2(26) & (\Add7~51\ $ (GND))) # (!counts2(26) & (!\Add7~51\ & VCC))
-- \Add7~53\ = CARRY((counts2(26) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(26),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: LCCOMB_X67_Y29_N30
\counts2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~5_combout\ = (\Add7~52_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~52_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~5_combout\);

-- Location: FF_X67_Y29_N31
\counts2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(26));

-- Location: LCCOMB_X66_Y28_N22
\Add7~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (counts2(27) & (!\Add7~53\)) # (!counts2(27) & ((\Add7~53\) # (GND)))
-- \Add7~55\ = CARRY((!\Add7~53\) # (!counts2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(27),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X67_Y29_N4
\counts2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~4_combout\ = (\Add7~54_combout\ & \Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~54_combout\,
	datad => \Add7~62_combout\,
	combout => \counts2~4_combout\);

-- Location: FF_X67_Y29_N5
\counts2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(27));

-- Location: LCCOMB_X66_Y28_N24
\Add7~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (counts2(28) & (\Add7~55\ $ (GND))) # (!counts2(28) & (!\Add7~55\ & VCC))
-- \Add7~57\ = CARRY((counts2(28) & !\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts2(28),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X65_Y28_N4
\counts2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~3_combout\ = (\Add7~62_combout\ & \Add7~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~56_combout\,
	combout => \counts2~3_combout\);

-- Location: FF_X65_Y28_N5
\counts2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(28));

-- Location: LCCOMB_X66_Y28_N26
\Add7~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (counts2(29) & (!\Add7~57\)) # (!counts2(29) & ((\Add7~57\) # (GND)))
-- \Add7~59\ = CARRY((!\Add7~57\) # (!counts2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(29),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: LCCOMB_X65_Y28_N14
\counts2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~2_combout\ = (\Add7~62_combout\ & \Add7~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~58_combout\,
	combout => \counts2~2_combout\);

-- Location: FF_X65_Y28_N15
\counts2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(29));

-- Location: LCCOMB_X66_Y28_N28
\Add7~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (counts2(30) & (\Add7~59\ $ (GND))) # (!counts2(30) & (!\Add7~59\ & VCC))
-- \Add7~61\ = CARRY((counts2(30) & !\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(30),
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: LCCOMB_X65_Y28_N8
\counts2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~1_combout\ = (\Add7~62_combout\ & \Add7~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~62_combout\,
	datad => \Add7~60_combout\,
	combout => \counts2~1_combout\);

-- Location: FF_X65_Y28_N9
\counts2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(30));

-- Location: LCCOMB_X66_Y28_N30
\Add7~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = counts2(31) $ (\Add7~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts2(31),
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: LCCOMB_X67_Y28_N26
\counts2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts2~0_combout\ = (\Add7~0_combout\ & ((\Add7~62_combout\) # ((!\LessThan5~0_combout\ & \segnaleServoNovanta~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add7~62_combout\,
	datac => \LessThan5~0_combout\,
	datad => \segnaleServoNovanta~8_combout\,
	combout => \counts2~0_combout\);

-- Location: FF_X67_Y28_N27
\counts2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \counts2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts2(0));

-- Location: LCCOMB_X67_Y28_N6
\segnaleServoNovanta~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~9_combout\ = (!\Add7~2_combout\ & (!\Add7~6_combout\ & (!\Add7~4_combout\ & \segnaleServoNovanta~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~6_combout\,
	datac => \Add7~4_combout\,
	datad => \segnaleServoNovanta~8_combout\,
	combout => \segnaleServoNovanta~9_combout\);

-- Location: LCCOMB_X67_Y28_N28
\segnaleServoNovanta~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoNovanta~10_combout\ = (\Add7~62_combout\ & (((\segnaleServoNovanta~q\)))) # (!\Add7~62_combout\ & (\segnaleServoNovanta~9_combout\ & ((\Add7~0_combout\) # (\segnaleServoNovanta~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add7~62_combout\,
	datac => \segnaleServoNovanta~q\,
	datad => \segnaleServoNovanta~9_combout\,
	combout => \segnaleServoNovanta~10_combout\);

-- Location: FF_X67_Y28_N29
segnaleServoNovanta : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo2~clkctrl_outclk\,
	d => \segnaleServoNovanta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segnaleServoNovanta~q\);

-- Location: CLKCTRL_G10
\tmpservo1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tmpservo1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tmpservo1~clkctrl_outclk\);

-- Location: FF_X65_Y39_N27
\counts1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(29));

-- Location: LCCOMB_X65_Y40_N0
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = counts1(0) $ (VCC)
-- \Add6~1\ = CARRY(counts1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counts1(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: FF_X65_Y40_N1
\counts1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(0));

-- Location: LCCOMB_X65_Y40_N2
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (counts1(1) & (!\Add6~1\)) # (!counts1(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!counts1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X65_Y40_N4
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (counts1(2) & (\Add6~3\ $ (GND))) # (!counts1(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((counts1(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: FF_X65_Y40_N5
\counts1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(2));

-- Location: LCCOMB_X65_Y40_N6
\Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (counts1(3) & (!\Add6~5\)) # (!counts1(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!counts1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X65_Y40_N8
\Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (counts1(4) & (\Add6~7\ $ (GND))) # (!counts1(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((counts1(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: FF_X65_Y40_N9
\counts1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(4));

-- Location: LCCOMB_X65_Y40_N10
\Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (counts1(5) & (!\Add6~9\)) # (!counts1(5) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!counts1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: FF_X65_Y40_N11
\counts1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(5));

-- Location: LCCOMB_X65_Y40_N12
\Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (counts1(6) & (\Add6~11\ $ (GND))) # (!counts1(6) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((counts1(6) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: FF_X65_Y40_N13
\counts1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(6));

-- Location: LCCOMB_X65_Y40_N14
\Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (counts1(7) & (!\Add6~13\)) # (!counts1(7) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!counts1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: FF_X65_Y40_N15
\counts1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(7));

-- Location: LCCOMB_X65_Y40_N16
\Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (counts1(8) & (\Add6~15\ $ (GND))) # (!counts1(8) & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((counts1(8) & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: FF_X65_Y40_N17
\counts1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(8));

-- Location: LCCOMB_X65_Y40_N18
\Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (counts1(9) & (!\Add6~17\)) # (!counts1(9) & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!counts1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: FF_X65_Y40_N19
\counts1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(9));

-- Location: LCCOMB_X65_Y40_N20
\Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (counts1(10) & (\Add6~19\ $ (GND))) # (!counts1(10) & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((counts1(10) & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(10),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: FF_X65_Y40_N21
\counts1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(10));

-- Location: LCCOMB_X65_Y40_N22
\Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (counts1(11) & (!\Add6~21\)) # (!counts1(11) & ((\Add6~21\) # (GND)))
-- \Add6~23\ = CARRY((!\Add6~21\) # (!counts1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(11),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: FF_X65_Y40_N23
\counts1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(11));

-- Location: LCCOMB_X65_Y40_N24
\Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (counts1(12) & (\Add6~23\ $ (GND))) # (!counts1(12) & (!\Add6~23\ & VCC))
-- \Add6~25\ = CARRY((counts1(12) & !\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(12),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: FF_X65_Y40_N25
\counts1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(12));

-- Location: LCCOMB_X65_Y40_N26
\Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (counts1(13) & (!\Add6~25\)) # (!counts1(13) & ((\Add6~25\) # (GND)))
-- \Add6~27\ = CARRY((!\Add6~25\) # (!counts1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(13),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: FF_X65_Y40_N27
\counts1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(13));

-- Location: LCCOMB_X65_Y40_N28
\Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (counts1(14) & (\Add6~27\ $ (GND))) # (!counts1(14) & (!\Add6~27\ & VCC))
-- \Add6~29\ = CARRY((counts1(14) & !\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(14),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: FF_X65_Y40_N29
\counts1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(14));

-- Location: LCCOMB_X65_Y40_N30
\Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (counts1(15) & (!\Add6~29\)) # (!counts1(15) & ((\Add6~29\) # (GND)))
-- \Add6~31\ = CARRY((!\Add6~29\) # (!counts1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(15),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: FF_X65_Y40_N31
\counts1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(15));

-- Location: LCCOMB_X65_Y39_N0
\Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (counts1(16) & (\Add6~31\ $ (GND))) # (!counts1(16) & (!\Add6~31\ & VCC))
-- \Add6~33\ = CARRY((counts1(16) & !\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(16),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: FF_X65_Y39_N1
\counts1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(16));

-- Location: LCCOMB_X65_Y39_N2
\Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (counts1(17) & (!\Add6~33\)) # (!counts1(17) & ((\Add6~33\) # (GND)))
-- \Add6~35\ = CARRY((!\Add6~33\) # (!counts1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(17),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: FF_X65_Y39_N3
\counts1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(17));

-- Location: LCCOMB_X65_Y39_N4
\Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (counts1(18) & (\Add6~35\ $ (GND))) # (!counts1(18) & (!\Add6~35\ & VCC))
-- \Add6~37\ = CARRY((counts1(18) & !\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(18),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: FF_X65_Y39_N5
\counts1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(18));

-- Location: LCCOMB_X65_Y39_N6
\Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (counts1(19) & (!\Add6~37\)) # (!counts1(19) & ((\Add6~37\) # (GND)))
-- \Add6~39\ = CARRY((!\Add6~37\) # (!counts1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(19),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: FF_X65_Y39_N7
\counts1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(19));

-- Location: LCCOMB_X65_Y39_N8
\Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (counts1(20) & (\Add6~39\ $ (GND))) # (!counts1(20) & (!\Add6~39\ & VCC))
-- \Add6~41\ = CARRY((counts1(20) & !\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(20),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: FF_X65_Y39_N9
\counts1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(20));

-- Location: LCCOMB_X65_Y39_N10
\Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (counts1(21) & (!\Add6~41\)) # (!counts1(21) & ((\Add6~41\) # (GND)))
-- \Add6~43\ = CARRY((!\Add6~41\) # (!counts1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(21),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: FF_X65_Y39_N11
\counts1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(21));

-- Location: LCCOMB_X65_Y39_N12
\Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (counts1(22) & (\Add6~43\ $ (GND))) # (!counts1(22) & (!\Add6~43\ & VCC))
-- \Add6~45\ = CARRY((counts1(22) & !\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(22),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: FF_X65_Y39_N13
\counts1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(22));

-- Location: LCCOMB_X65_Y39_N14
\Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (counts1(23) & (!\Add6~45\)) # (!counts1(23) & ((\Add6~45\) # (GND)))
-- \Add6~47\ = CARRY((!\Add6~45\) # (!counts1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(23),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: FF_X65_Y39_N15
\counts1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(23));

-- Location: LCCOMB_X65_Y39_N16
\Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (counts1(24) & (\Add6~47\ $ (GND))) # (!counts1(24) & (!\Add6~47\ & VCC))
-- \Add6~49\ = CARRY((counts1(24) & !\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(24),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: FF_X65_Y39_N17
\counts1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(24));

-- Location: LCCOMB_X65_Y39_N18
\Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (counts1(25) & (!\Add6~49\)) # (!counts1(25) & ((\Add6~49\) # (GND)))
-- \Add6~51\ = CARRY((!\Add6~49\) # (!counts1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(25),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: FF_X65_Y39_N19
\counts1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(25));

-- Location: LCCOMB_X65_Y39_N20
\Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (counts1(26) & (\Add6~51\ $ (GND))) # (!counts1(26) & (!\Add6~51\ & VCC))
-- \Add6~53\ = CARRY((counts1(26) & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(26),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: FF_X65_Y39_N21
\counts1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(26));

-- Location: LCCOMB_X65_Y39_N22
\Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (counts1(27) & (!\Add6~53\)) # (!counts1(27) & ((\Add6~53\) # (GND)))
-- \Add6~55\ = CARRY((!\Add6~53\) # (!counts1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(27),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: FF_X65_Y39_N23
\counts1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(27));

-- Location: LCCOMB_X65_Y39_N24
\Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (counts1(28) & (\Add6~55\ $ (GND))) # (!counts1(28) & (!\Add6~55\ & VCC))
-- \Add6~57\ = CARRY((counts1(28) & !\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(28),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: FF_X65_Y39_N25
\counts1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(28));

-- Location: LCCOMB_X65_Y39_N26
\Add6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (counts1(29) & (!\Add6~57\)) # (!counts1(29) & ((\Add6~57\) # (GND)))
-- \Add6~59\ = CARRY((!\Add6~57\) # (!counts1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(29),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: FF_X65_Y39_N29
\counts1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(30));

-- Location: LCCOMB_X65_Y39_N28
\Add6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = (counts1(30) & (\Add6~59\ $ (GND))) # (!counts1(30) & (!\Add6~59\ & VCC))
-- \Add6~61\ = CARRY((counts1(30) & !\Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counts1(30),
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: LCCOMB_X64_Y40_N10
\Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!\Add6~24_combout\ & (!\Add6~26_combout\ & (!\Add6~22_combout\ & !\Add6~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~24_combout\,
	datab => \Add6~26_combout\,
	datac => \Add6~22_combout\,
	datad => \Add6~28_combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X64_Y40_N24
\Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!\Add6~14_combout\ & (!\Add6~16_combout\ & (!\Add6~20_combout\ & !\Add6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datab => \Add6~16_combout\,
	datac => \Add6~20_combout\,
	datad => \Add6~18_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X64_Y40_N26
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\Add6~4_combout\ & (!\Add6~8_combout\ & (!\Add6~10_combout\ & !\Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \Add6~8_combout\,
	datac => \Add6~10_combout\,
	datad => \Add6~12_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X64_Y40_N28
\Equal7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!\Add6~36_combout\ & (!\Add6~30_combout\ & (!\Add6~32_combout\ & !\Add6~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~36_combout\,
	datab => \Add6~30_combout\,
	datac => \Add6~32_combout\,
	datad => \Add6~34_combout\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X64_Y40_N30
\Equal7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~2_combout\ & (\Equal7~1_combout\ & (\Equal7~0_combout\ & \Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Equal7~1_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal7~3_combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X64_Y40_N20
\Equal7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (!\Add6~40_combout\ & (!\Add6~44_combout\ & (!\Add6~42_combout\ & !\Add6~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~40_combout\,
	datab => \Add6~44_combout\,
	datac => \Add6~42_combout\,
	datad => \Add6~38_combout\,
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X64_Y40_N18
\Equal7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (!\Add6~46_combout\ & (!\Add6~48_combout\ & (\Equal7~4_combout\ & \Equal7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~46_combout\,
	datab => \Add6~48_combout\,
	datac => \Equal7~4_combout\,
	datad => \Equal7~5_combout\,
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X64_Y40_N0
\Equal7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (!\Add6~54_combout\ & (!\Add6~52_combout\ & (!\Add6~50_combout\ & \Equal7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~54_combout\,
	datab => \Add6~52_combout\,
	datac => \Add6~50_combout\,
	datad => \Equal7~6_combout\,
	combout => \Equal7~7_combout\);

-- Location: LCCOMB_X64_Y40_N2
\Equal7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = (!\Add6~58_combout\ & (!\Add6~56_combout\ & (!\Add6~60_combout\ & \Equal7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~58_combout\,
	datab => \Add6~56_combout\,
	datac => \Add6~60_combout\,
	datad => \Equal7~7_combout\,
	combout => \Equal7~8_combout\);

-- Location: LCCOMB_X64_Y40_N6
\counts1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts1~0_combout\ = (\Add6~6_combout\ & ((!\Equal7~8_combout\) # (!\Equal7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datac => \Equal7~9_combout\,
	datad => \Equal7~8_combout\,
	combout => \counts1~0_combout\);

-- Location: FF_X64_Y40_N7
\counts1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \counts1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(3));

-- Location: FF_X65_Y39_N31
\counts1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \Add6~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(31));

-- Location: LCCOMB_X65_Y39_N30
\Add6~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = counts1(31) $ (\Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counts1(31),
	cin => \Add6~61\,
	combout => \Add6~62_combout\);

-- Location: LCCOMB_X64_Y40_N14
\Equal7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = (\Add6~6_combout\ & (!\Add6~0_combout\ & (\Add6~2_combout\ & !\Add6~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \Add6~0_combout\,
	datac => \Add6~2_combout\,
	datad => \Add6~62_combout\,
	combout => \Equal7~9_combout\);

-- Location: LCCOMB_X64_Y40_N16
\counts1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counts1~1_combout\ = (\Add6~2_combout\ & ((!\Equal7~8_combout\) # (!\Equal7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~2_combout\,
	datac => \Equal7~9_combout\,
	datad => \Equal7~8_combout\,
	combout => \counts1~1_combout\);

-- Location: FF_X64_Y40_N17
\counts1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \counts1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counts1(1));

-- Location: LCCOMB_X64_Y40_N12
\segnaleServoZero~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoZero~0_combout\ = (!\Add6~2_combout\ & (!\Add6~6_combout\ & ((\segnaleServoZero~q\) # (\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segnaleServoZero~q\,
	datab => \Add6~2_combout\,
	datac => \Add6~0_combout\,
	datad => \Add6~6_combout\,
	combout => \segnaleServoZero~0_combout\);

-- Location: LCCOMB_X64_Y40_N22
\segnaleServoZero~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \segnaleServoZero~1_combout\ = (\Add6~62_combout\ & (((\segnaleServoZero~q\)))) # (!\Add6~62_combout\ & (\segnaleServoZero~0_combout\ & ((\Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segnaleServoZero~0_combout\,
	datab => \Add6~62_combout\,
	datac => \segnaleServoZero~q\,
	datad => \Equal7~8_combout\,
	combout => \segnaleServoZero~1_combout\);

-- Location: FF_X64_Y40_N23
segnaleServoZero : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpservo1~clkctrl_outclk\,
	d => \segnaleServoZero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segnaleServoZero~q\);

-- Location: LCCOMB_X64_Y40_N4
\pwm~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm~0_combout\ = (\pres_state.initial~q\ & ((\pres_state.stpassword~q\ & ((\segnaleServoZero~q\))) # (!\pres_state.stpassword~q\ & (\segnaleServoNovanta~q\)))) # (!\pres_state.initial~q\ & (((\segnaleServoZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pres_state.initial~q\,
	datab => \segnaleServoNovanta~q\,
	datac => \segnaleServoZero~q\,
	datad => \pres_state.stpassword~q\,
	combout => \pwm~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_trigger1 <= \trigger1~output_o\;

ww_trigger2 <= \trigger2~output_o\;

ww_ledr <= \ledr~output_o\;

ww_ledg <= \ledg~output_o\;

ww_ledy <= \ledy~output_o\;

ww_clk_out1 <= \clk_out1~output_o\;

ww_clk_out2 <= \clk_out2~output_o\;

ww_clk_out3 <= \clk_out3~output_o\;

ww_gate <= \gate~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_buzzer <= \buzzer~output_o\;

ww_clk_servo1 <= \clk_servo1~output_o\;

ww_clk_servo2 <= \clk_servo2~output_o\;

ww_pwm <= \pwm~output_o\;
END structure;


