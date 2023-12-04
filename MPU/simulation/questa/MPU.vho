-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "12/04/2023 00:06:22"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	MPU IS
    PORT (
	CLK : IN std_logic;
	ARST : IN std_logic;
	CE_CONT : IN std_logic;
	DATOS : BUFFER std_logic_vector(7 DOWNTO 0);
	DIRECCIONES : BUFFER std_logic_vector(9 DOWNTO 0);
	RW : BUFFER std_logic;
	ESTADOS : BUFFER std_logic_vector(3 DOWNTO 0);
	TIEMPOS : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END MPU;

-- Design Ports Information
-- DIRECCIONES[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[8]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[9]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPOS[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPOS[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPOS[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPOS[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[6]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARST	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CE_CONT	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ARST : std_logic;
SIGNAL ww_CE_CONT : std_logic;
SIGNAL ww_DATOS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DIRECCIONES : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_RW : std_logic;
SIGNAL ww_ESTADOS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TIEMPOS : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ARST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DATOS[0]~output_o\ : std_logic;
SIGNAL \DATOS[1]~output_o\ : std_logic;
SIGNAL \DATOS[2]~output_o\ : std_logic;
SIGNAL \DATOS[3]~output_o\ : std_logic;
SIGNAL \DATOS[4]~output_o\ : std_logic;
SIGNAL \DATOS[5]~output_o\ : std_logic;
SIGNAL \DATOS[6]~output_o\ : std_logic;
SIGNAL \DATOS[7]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[0]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[1]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[2]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[3]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[4]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[5]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[6]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[7]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[8]~output_o\ : std_logic;
SIGNAL \DIRECCIONES[9]~output_o\ : std_logic;
SIGNAL \RW~output_o\ : std_logic;
SIGNAL \ESTADOS[0]~output_o\ : std_logic;
SIGNAL \ESTADOS[1]~output_o\ : std_logic;
SIGNAL \ESTADOS[2]~output_o\ : std_logic;
SIGNAL \ESTADOS[3]~output_o\ : std_logic;
SIGNAL \TIEMPOS[0]~output_o\ : std_logic;
SIGNAL \TIEMPOS[1]~output_o\ : std_logic;
SIGNAL \TIEMPOS[2]~output_o\ : std_logic;
SIGNAL \TIEMPOS[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U6|PC[0]~10_combout\ : std_logic;
SIGNAL \ARST~input_o\ : std_logic;
SIGNAL \ARST~inputclkctrl_outclk\ : std_logic;
SIGNAL \U13|cuenta~0_combout\ : std_logic;
SIGNAL \CE_CONT~input_o\ : std_logic;
SIGNAL \U13|cuenta[0]~1_combout\ : std_logic;
SIGNAL \U13|cuenta~2_combout\ : std_logic;
SIGNAL \U13|cuenta~4_combout\ : std_logic;
SIGNAL \U13|cuenta~5_combout\ : std_logic;
SIGNAL \U14|Equal0~6_combout\ : std_logic;
SIGNAL \U14|comb~10_combout\ : std_logic;
SIGNAL \U14|X[15]~125_combout\ : std_logic;
SIGNAL \U14|Equal0~3_combout\ : std_logic;
SIGNAL \U14|process_0~1_combout\ : std_logic;
SIGNAL \U14|Equal0~4_combout\ : std_logic;
SIGNAL \DATOS[1]~input_o\ : std_logic;
SIGNAL \U6|PC[3]~18\ : std_logic;
SIGNAL \U6|PC[4]~19_combout\ : std_logic;
SIGNAL \DATOS[4]~input_o\ : std_logic;
SIGNAL \U14|X[16]~124_combout\ : std_logic;
SIGNAL \U14|X[16]~126_combout\ : std_logic;
SIGNAL \U14|X[17]~90_combout\ : std_logic;
SIGNAL \U14|X[15]~127_combout\ : std_logic;
SIGNAL \U14|X[15]~128_combout\ : std_logic;
SIGNAL \U14|X[15]~129_combout\ : std_logic;
SIGNAL \U14|X[15]~130_combout\ : std_logic;
SIGNAL \U14|X[15]~131_combout\ : std_logic;
SIGNAL \U14|X[16]~132_combout\ : std_logic;
SIGNAL \U14|comb~29_combout\ : std_logic;
SIGNAL \U14|comb~30_combout\ : std_logic;
SIGNAL \U14|X[15]~141_combout\ : std_logic;
SIGNAL \U14|X[15]~142_combout\ : std_logic;
SIGNAL \U14|X[15]~143_combout\ : std_logic;
SIGNAL \U14|comb~33_combout\ : std_logic;
SIGNAL \U14|comb~34_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~18_combout\ : std_logic;
SIGNAL \DATOS[5]~input_o\ : std_logic;
SIGNAL \U7|Mux2~0_combout\ : std_logic;
SIGNAL \U7|Mux2~1_combout\ : std_logic;
SIGNAL \U14|X[1]~99_combout\ : std_logic;
SIGNAL \U14|X[1]~79_combout\ : std_logic;
SIGNAL \U14|X[1]~121_combout\ : std_logic;
SIGNAL \U14|comb~26_combout\ : std_logic;
SIGNAL \U14|comb~25_combout\ : std_logic;
SIGNAL \U14|Equal0~7_combout\ : std_logic;
SIGNAL \U14|process_0~4_combout\ : std_logic;
SIGNAL \U14|comb~22_combout\ : std_logic;
SIGNAL \U17|OR4_OUT~0_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~6_combout\ : std_logic;
SIGNAL \DATOS[6]~input_o\ : std_logic;
SIGNAL \U7|Mux1~0_combout\ : std_logic;
SIGNAL \U7|Mux1~1_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~14_combout\ : std_logic;
SIGNAL \U14|X[19]~156_combout\ : std_logic;
SIGNAL \U14|X[5]~93_combout\ : std_logic;
SIGNAL \U14|X[19]~149_combout\ : std_logic;
SIGNAL \U14|Equal4~3_combout\ : std_logic;
SIGNAL \U14|X[17]~136_combout\ : std_logic;
SIGNAL \U14|X[19]~145_combout\ : std_logic;
SIGNAL \U14|X[19]~146_combout\ : std_logic;
SIGNAL \U14|X[17]~137_combout\ : std_logic;
SIGNAL \U14|X[17]~138_combout\ : std_logic;
SIGNAL \U14|X[19]~147_combout\ : std_logic;
SIGNAL \U14|X[19]~148_combout\ : std_logic;
SIGNAL \U14|X[19]~144_combout\ : std_logic;
SIGNAL \U14|X[19]~150_combout\ : std_logic;
SIGNAL \U14|comb~35_combout\ : std_logic;
SIGNAL \U14|comb~36_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~15_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~16_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~31_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~23_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~27_combout\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~10_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~11_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~12_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~13_combout\ : std_logic;
SIGNAL \U0|auxf~2_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~28_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~29_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~30_combout\ : std_logic;
SIGNAL \U0|auxf~1_combout\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~24_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~25_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~26_combout\ : std_logic;
SIGNAL \U0|auxf~3_combout\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~32_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~33_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~34_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~17_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~35_combout\ : std_logic;
SIGNAL \U0|auxf~0_combout\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~7_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~8_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~9_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~19_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~20_combout\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~21_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~22_combout\ : std_logic;
SIGNAL \U7|Mux3~0_combout\ : std_logic;
SIGNAL \U7|Mux3~1_combout\ : std_logic;
SIGNAL \U14|X[7]~88_combout\ : std_logic;
SIGNAL \U14|X[15]~107_combout\ : std_logic;
SIGNAL \U14|X[6]~108_combout\ : std_logic;
SIGNAL \U14|X[8]~85_combout\ : std_logic;
SIGNAL \U14|X[6]~109_combout\ : std_logic;
SIGNAL \U14|comb~15_combout\ : std_logic;
SIGNAL \U14|comb~16_combout\ : std_logic;
SIGNAL \U6|PC[3]~12_combout\ : std_logic;
SIGNAL \U6|PC[4]~20\ : std_logic;
SIGNAL \U6|PC[5]~21_combout\ : std_logic;
SIGNAL \U6|PC[5]~22\ : std_logic;
SIGNAL \U6|PC[6]~23_combout\ : std_logic;
SIGNAL \U6|PC[6]~24\ : std_logic;
SIGNAL \U6|PC[7]~25_combout\ : std_logic;
SIGNAL \DATOS[7]~input_o\ : std_logic;
SIGNAL \U7|Mux0~0_combout\ : std_logic;
SIGNAL \U7|Mux0~1_combout\ : std_logic;
SIGNAL \U6|PC[7]~26\ : std_logic;
SIGNAL \U6|PC[8]~27_combout\ : std_logic;
SIGNAL \U3|MBRAUX_SIG[0]~feeder_combout\ : std_logic;
SIGNAL \U13|Add0~1_combout\ : std_logic;
SIGNAL \U14|X[8]~80_combout\ : std_logic;
SIGNAL \U14|X[10]~122_combout\ : std_logic;
SIGNAL \U14|X[10]~123_combout\ : std_logic;
SIGNAL \U14|X[10]~114_combout\ : std_logic;
SIGNAL \U14|comb~28_combout\ : std_logic;
SIGNAL \U14|comb~27_combout\ : std_logic;
SIGNAL \U6|PC[8]~28\ : std_logic;
SIGNAL \U6|PC[9]~29_combout\ : std_logic;
SIGNAL \U3|MBRAUX_SIG[1]~feeder_combout\ : std_logic;
SIGNAL \U7|Mux6~0_combout\ : std_logic;
SIGNAL \U7|Mux6~1_combout\ : std_logic;
SIGNAL \U14|Equal4~2_combout\ : std_logic;
SIGNAL \U14|X[17]~133_combout\ : std_logic;
SIGNAL \U14|X[17]~134_combout\ : std_logic;
SIGNAL \U13|Add0~0_combout\ : std_logic;
SIGNAL \U14|X[17]~135_combout\ : std_logic;
SIGNAL \U14|X[17]~139_combout\ : std_logic;
SIGNAL \U14|X[17]~140_combout\ : std_logic;
SIGNAL \U14|comb~32_combout\ : std_logic;
SIGNAL \U14|comb~31_combout\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~2_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~36_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~3_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~4_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~5_combout\ : std_logic;
SIGNAL \U0|tmp[7]~0_combout\ : std_logic;
SIGNAL \U0|tmp[7]~1_combout\ : std_logic;
SIGNAL \U2|CCRZ~q\ : std_logic;
SIGNAL \U0|ALU_OUT_C~0_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|ALU_OUT_C~1_combout\ : std_logic;
SIGNAL \U2|CCRC~q\ : std_logic;
SIGNAL \U14|X[5]~164_combout\ : std_logic;
SIGNAL \U14|X[5]~165_combout\ : std_logic;
SIGNAL \U14|X[5]~19_combout\ : std_logic;
SIGNAL \U14|X[5]~157_combout\ : std_logic;
SIGNAL \U14|comb~14_combout\ : std_logic;
SIGNAL \U14|comb~13_combout\ : std_logic;
SIGNAL \U6|PC[0]~11\ : std_logic;
SIGNAL \U6|PC[1]~13_combout\ : std_logic;
SIGNAL \U6|PC[1]~14\ : std_logic;
SIGNAL \U6|PC[2]~15_combout\ : std_logic;
SIGNAL \U6|PC[2]~16\ : std_logic;
SIGNAL \U6|PC[3]~17_combout\ : std_logic;
SIGNAL \DATOS[3]~input_o\ : std_logic;
SIGNAL \U7|Mux4~0_combout\ : std_logic;
SIGNAL \U7|Mux4~1_combout\ : std_logic;
SIGNAL \U14|X[14]~102_combout\ : std_logic;
SIGNAL \U14|Equal4~5_combout\ : std_logic;
SIGNAL \U14|X[14]~103_combout\ : std_logic;
SIGNAL \U14|X[14]~104_combout\ : std_logic;
SIGNAL \U14|X[14]~97_combout\ : std_logic;
SIGNAL \U14|X[14]~98_combout\ : std_logic;
SIGNAL \U14|X[14]~153_combout\ : std_logic;
SIGNAL \U14|X[14]~154_combout\ : std_logic;
SIGNAL \U14|X[14]~100_combout\ : std_logic;
SIGNAL \U14|X[14]~101_combout\ : std_logic;
SIGNAL \U14|X[14]~94_combout\ : std_logic;
SIGNAL \U14|X[14]~95_combout\ : std_logic;
SIGNAL \U14|X[14]~96_combout\ : std_logic;
SIGNAL \U14|X[14]~105_combout\ : std_logic;
SIGNAL \U14|X[14]~91_combout\ : std_logic;
SIGNAL \U14|X[14]~92_combout\ : std_logic;
SIGNAL \U14|X[14]~166_combout\ : std_logic;
SIGNAL \U14|X[14]~167_combout\ : std_logic;
SIGNAL \U14|X[14]~163_combout\ : std_logic;
SIGNAL \U14|X[14]~106_combout\ : std_logic;
SIGNAL \U14|comb~11_combout\ : std_logic;
SIGNAL \U14|comb~12_combout\ : std_logic;
SIGNAL \U13|cuenta~3_combout\ : std_logic;
SIGNAL \U14|X[0]~70_combout\ : std_logic;
SIGNAL \U14|Equal4~0_combout\ : std_logic;
SIGNAL \U14|X[0]~71_combout\ : std_logic;
SIGNAL \U14|Equal0~5_combout\ : std_logic;
SIGNAL \U14|Equal0~0_combout\ : std_logic;
SIGNAL \U14|X[0]~151_combout\ : std_logic;
SIGNAL \U14|X[0]~69_combout\ : std_logic;
SIGNAL \U14|X[0]~74_combout\ : std_logic;
SIGNAL \U14|Equal0~1_combout\ : std_logic;
SIGNAL \U14|X[0]~75_combout\ : std_logic;
SIGNAL \U14|X[0]~72_combout\ : std_logic;
SIGNAL \U14|Equal4~4_combout\ : std_logic;
SIGNAL \U14|X[0]~73_combout\ : std_logic;
SIGNAL \U14|process_0~2_combout\ : std_logic;
SIGNAL \U14|X[0]~76_combout\ : std_logic;
SIGNAL \U14|X[0]~77_combout\ : std_logic;
SIGNAL \U14|X[0]~169_combout\ : std_logic;
SIGNAL \U14|X[0]~161_combout\ : std_logic;
SIGNAL \U14|X[0]~159_combout\ : std_logic;
SIGNAL \U14|X[0]~160_combout\ : std_logic;
SIGNAL \U14|X[0]~158_combout\ : std_logic;
SIGNAL \U14|X[0]~67_combout\ : std_logic;
SIGNAL \U14|Equal0~2_combout\ : std_logic;
SIGNAL \U14|process_0~0_combout\ : std_logic;
SIGNAL \U14|X[0]~68_combout\ : std_logic;
SIGNAL \U14|X[0]~162_combout\ : std_logic;
SIGNAL \U14|X[0]~152_combout\ : std_logic;
SIGNAL \U14|X[0]~78_combout\ : std_logic;
SIGNAL \U14|X[8]~83_combout\ : std_logic;
SIGNAL \U14|X[2]~115_combout\ : std_logic;
SIGNAL \U14|X[2]~155_combout\ : std_logic;
SIGNAL \U14|X[2]~118_combout\ : std_logic;
SIGNAL \U14|X[2]~116_combout\ : std_logic;
SIGNAL \U14|X[2]~117_combout\ : std_logic;
SIGNAL \U14|X[2]~119_combout\ : std_logic;
SIGNAL \U14|X[2]~120_combout\ : std_logic;
SIGNAL \U14|comb~23_combout\ : std_logic;
SIGNAL \U14|comb~24_combout\ : std_logic;
SIGNAL \U19|OR2_OUT~0_combout\ : std_logic;
SIGNAL \DATOS[2]~input_o\ : std_logic;
SIGNAL \U7|Mux5~0_combout\ : std_logic;
SIGNAL \U7|Mux5~1_combout\ : std_logic;
SIGNAL \U14|Equal4~1_combout\ : std_logic;
SIGNAL \U14|process_0~3_combout\ : std_logic;
SIGNAL \U14|comb~21_combout\ : std_logic;
SIGNAL \U18|OR2_OUT~0_combout\ : std_logic;
SIGNAL \DATOS[0]~input_o\ : std_logic;
SIGNAL \U7|Mux7~0_combout\ : std_logic;
SIGNAL \U7|Mux7~1_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~0_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~1_combout\ : std_logic;
SIGNAL \U14|comb~3_combout\ : std_logic;
SIGNAL \U14|comb~2_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~combout\ : std_logic;
SIGNAL \U5|SP[0]~8_combout\ : std_logic;
SIGNAL \U14|X[13]~110_combout\ : std_logic;
SIGNAL \U14|comb~18_combout\ : std_logic;
SIGNAL \U14|comb~17_combout\ : std_logic;
SIGNAL \U14|X[12]~111_combout\ : std_logic;
SIGNAL \U14|X[12]~112_combout\ : std_logic;
SIGNAL \U14|X[12]~113_combout\ : std_logic;
SIGNAL \U14|comb~19_combout\ : std_logic;
SIGNAL \U14|comb~20_combout\ : std_logic;
SIGNAL \U5|SP[2]~10_combout\ : std_logic;
SIGNAL \U14|comb~37_combout\ : std_logic;
SIGNAL \U5|SP[2]~11_combout\ : std_logic;
SIGNAL \U14|X[9]~81_combout\ : std_logic;
SIGNAL \U14|X[9]~82_combout\ : std_logic;
SIGNAL \U14|comb~5_combout\ : std_logic;
SIGNAL \U14|comb~4_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[0]~0_combout\ : std_logic;
SIGNAL \U14|X[8]~84_combout\ : std_logic;
SIGNAL \U14|X[8]~86_combout\ : std_logic;
SIGNAL \U14|X[8]~87_combout\ : std_logic;
SIGNAL \U14|comb~7_combout\ : std_logic;
SIGNAL \U14|comb~6_combout\ : std_logic;
SIGNAL \U15|OR2_OUT~0_combout\ : std_logic;
SIGNAL \U14|X[7]~89_combout\ : std_logic;
SIGNAL \U14|comb~9_combout\ : std_logic;
SIGNAL \U14|comb~8_combout\ : std_logic;
SIGNAL \U16|OR3_OUT~combout\ : std_logic;
SIGNAL \U5|SP[0]~9\ : std_logic;
SIGNAL \U5|SP[1]~12_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[1]~1_combout\ : std_logic;
SIGNAL \U5|SP[1]~13\ : std_logic;
SIGNAL \U5|SP[2]~14_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[2]~2_combout\ : std_logic;
SIGNAL \U5|SP[2]~15\ : std_logic;
SIGNAL \U5|SP[3]~16_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[3]~3_combout\ : std_logic;
SIGNAL \U5|SP[3]~17\ : std_logic;
SIGNAL \U5|SP[4]~18_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[4]~4_combout\ : std_logic;
SIGNAL \U5|SP[4]~19\ : std_logic;
SIGNAL \U5|SP[5]~20_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[5]~5_combout\ : std_logic;
SIGNAL \U5|SP[5]~21\ : std_logic;
SIGNAL \U5|SP[6]~22_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[6]~6_combout\ : std_logic;
SIGNAL \U5|SP[6]~23\ : std_logic;
SIGNAL \U5|SP[7]~24_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[7]~7_combout\ : std_logic;
SIGNAL \U10|MUX1_OUT[8]~0_combout\ : std_logic;
SIGNAL \U10|MUX1_OUT[9]~1_combout\ : std_logic;
SIGNAL \U0|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|MBRAUX_SIG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|MAR_SIG\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U6|PC\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U13|cuenta\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|SP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|IR_SIG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U9|MBR_SIG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|ACC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U14|X\ : std_logic_vector(0 TO 19);
SIGNAL \U14|ALT_INV_UC_OUT_RW~combout\ : std_logic;
SIGNAL \ALT_INV_ARST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_ARST <= ARST;
ww_CE_CONT <= CE_CONT;
DATOS <= ww_DATOS;
DIRECCIONES <= ww_DIRECCIONES;
RW <= ww_RW;
ESTADOS <= ww_ESTADOS;
TIEMPOS <= ww_TIEMPOS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\ARST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ARST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U14|ALT_INV_UC_OUT_RW~combout\ <= NOT \U14|UC_OUT_RW~combout\;
\ALT_INV_ARST~inputclkctrl_outclk\ <= NOT \ARST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X34_Y39_N23
\DATOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(0),
	oe => \U14|ALT_INV_UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \DATOS[0]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\DATOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(1),
	oe => \U14|ALT_INV_UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \DATOS[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\DATOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(2),
	oe => \U14|ALT_INV_UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \DATOS[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\DATOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(3),
	oe => \U14|ALT_INV_UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \DATOS[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\DATOS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(4),
	oe => \U14|ALT_INV_UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \DATOS[4]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\DATOS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(5),
	oe => \U14|ALT_INV_UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \DATOS[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\DATOS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(6),
	oe => \U14|ALT_INV_UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \DATOS[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\DATOS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(7),
	oe => \U14|ALT_INV_UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \DATOS[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\DIRECCIONES[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(0),
	devoe => ww_devoe,
	o => \DIRECCIONES[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\DIRECCIONES[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(1),
	devoe => ww_devoe,
	o => \DIRECCIONES[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\DIRECCIONES[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(2),
	devoe => ww_devoe,
	o => \DIRECCIONES[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\DIRECCIONES[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(3),
	devoe => ww_devoe,
	o => \DIRECCIONES[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\DIRECCIONES[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(4),
	devoe => ww_devoe,
	o => \DIRECCIONES[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\DIRECCIONES[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(5),
	devoe => ww_devoe,
	o => \DIRECCIONES[5]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\DIRECCIONES[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(6),
	devoe => ww_devoe,
	o => \DIRECCIONES[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\DIRECCIONES[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(7),
	devoe => ww_devoe,
	o => \DIRECCIONES[7]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\DIRECCIONES[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(8),
	devoe => ww_devoe,
	o => \DIRECCIONES[8]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\DIRECCIONES[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|MAR_SIG\(9),
	devoe => ww_devoe,
	o => \DIRECCIONES[9]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\RW~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|UC_OUT_RW~combout\,
	devoe => ww_devoe,
	o => \RW~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\ESTADOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|IR_SIG\(0),
	devoe => ww_devoe,
	o => \ESTADOS[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\ESTADOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|IR_SIG\(1),
	devoe => ww_devoe,
	o => \ESTADOS[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\ESTADOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|IR_SIG\(2),
	devoe => ww_devoe,
	o => \ESTADOS[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\ESTADOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|IR_SIG\(3),
	devoe => ww_devoe,
	o => \ESTADOS[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\TIEMPOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|cuenta\(0),
	devoe => ww_devoe,
	o => \TIEMPOS[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\TIEMPOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|cuenta\(1),
	devoe => ww_devoe,
	o => \TIEMPOS[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\TIEMPOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|cuenta\(2),
	devoe => ww_devoe,
	o => \TIEMPOS[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\TIEMPOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|cuenta\(3),
	devoe => ww_devoe,
	o => \TIEMPOS[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X37_Y36_N0
\U6|PC[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[0]~10_combout\ = \U6|PC\(0) $ (VCC)
-- \U6|PC[0]~11\ = CARRY(\U6|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(0),
	datad => VCC,
	combout => \U6|PC[0]~10_combout\,
	cout => \U6|PC[0]~11\);

-- Location: IOIBUF_X0_Y18_N22
\ARST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARST,
	o => \ARST~input_o\);

-- Location: CLKCTRL_G4
\ARST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ARST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ARST~inputclkctrl_outclk\);

-- Location: LCCOMB_X34_Y35_N20
\U13|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~0_combout\ = (!\U14|X\(14) & !\U13|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(14),
	datac => \U13|cuenta\(0),
	combout => \U13|cuenta~0_combout\);

-- Location: IOIBUF_X31_Y39_N29
\CE_CONT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CE_CONT,
	o => \CE_CONT~input_o\);

-- Location: LCCOMB_X34_Y35_N0
\U13|cuenta[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta[0]~1_combout\ = (\U14|X\(14)) # (\CE_CONT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(14),
	datad => \CE_CONT~input_o\,
	combout => \U13|cuenta[0]~1_combout\);

-- Location: FF_X34_Y35_N21
\U13|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U13|cuenta~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U13|cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(0));

-- Location: LCCOMB_X34_Y35_N2
\U13|cuenta~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~2_combout\ = (!\U14|X\(14) & (\U13|cuenta\(1) $ (\U13|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(14),
	datac => \U13|cuenta\(1),
	datad => \U13|cuenta\(0),
	combout => \U13|cuenta~2_combout\);

-- Location: FF_X34_Y35_N3
\U13|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U13|cuenta~2_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U13|cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(1));

-- Location: LCCOMB_X34_Y35_N10
\U13|cuenta~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~4_combout\ = (!\U13|cuenta\(0)) # (!\U13|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(0),
	combout => \U13|cuenta~4_combout\);

-- Location: LCCOMB_X34_Y35_N26
\U13|cuenta~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~5_combout\ = (!\U14|X\(14) & (\U13|cuenta\(3) $ (((\U13|cuenta\(1) & !\U13|cuenta~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(14),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta~4_combout\,
	combout => \U13|cuenta~5_combout\);

-- Location: FF_X34_Y35_N27
\U13|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U13|cuenta~5_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U13|cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(3));

-- Location: LCCOMB_X37_Y37_N10
\U14|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~6_combout\ = (!\U13|cuenta\(2) & (\U13|cuenta\(1) & (!\U13|cuenta\(0) & !\U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(0),
	datad => \U13|cuenta\(3),
	combout => \U14|Equal0~6_combout\);

-- Location: LCCOMB_X37_Y37_N4
\U14|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~10_combout\ = (\U14|X[0]~78_combout\ & !\U14|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~78_combout\,
	datad => \U14|Equal0~6_combout\,
	combout => \U14|comb~10_combout\);

-- Location: LCCOMB_X37_Y37_N16
\U14|X[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(0) = (!\U14|comb~10_combout\ & ((\U14|Equal0~6_combout\) # (\U14|X\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~6_combout\,
	datac => \U14|comb~10_combout\,
	datad => \U14|X\(0),
	combout => \U14|X\(0));

-- Location: FF_X36_Y38_N13
\U4|IR_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U9|MBR_SIG\(0),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_SIG\(0));

-- Location: LCCOMB_X36_Y37_N6
\U14|X[15]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~125_combout\ = (\U13|cuenta\(0) & (!\U13|cuenta\(3) & (\U13|cuenta\(2) & !\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|X[15]~125_combout\);

-- Location: LCCOMB_X36_Y35_N12
\U14|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~3_combout\ = (\U13|cuenta\(0) & (\U13|cuenta\(1) & (!\U13|cuenta\(3) & \U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y35_N4
\U14|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~1_combout\ = (\U14|Equal4~1_combout\ & \U14|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Equal4~1_combout\,
	datad => \U14|Equal0~3_combout\,
	combout => \U14|process_0~1_combout\);

-- Location: LCCOMB_X34_Y37_N24
\U14|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~4_combout\ = (\U13|cuenta\(0) & (\U13|cuenta\(1) & (!\U13|cuenta\(2) & !\U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|Equal0~4_combout\);

-- Location: IOIBUF_X36_Y39_N15
\DATOS[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATOS(1),
	o => \DATOS[1]~input_o\);

-- Location: LCCOMB_X37_Y36_N6
\U6|PC[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[3]~17_combout\ = (\U6|PC\(3) & (!\U6|PC[2]~16\)) # (!\U6|PC\(3) & ((\U6|PC[2]~16\) # (GND)))
-- \U6|PC[3]~18\ = CARRY((!\U6|PC[2]~16\) # (!\U6|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(3),
	datad => VCC,
	cin => \U6|PC[2]~16\,
	combout => \U6|PC[3]~17_combout\,
	cout => \U6|PC[3]~18\);

-- Location: LCCOMB_X37_Y36_N8
\U6|PC[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[4]~19_combout\ = (\U6|PC\(4) & (\U6|PC[3]~18\ $ (GND))) # (!\U6|PC\(4) & (!\U6|PC[3]~18\ & VCC))
-- \U6|PC[4]~20\ = CARRY((\U6|PC\(4) & !\U6|PC[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(4),
	datad => VCC,
	cin => \U6|PC[3]~18\,
	combout => \U6|PC[4]~19_combout\,
	cout => \U6|PC[4]~20\);

-- Location: IOIBUF_X34_Y39_N29
\DATOS[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATOS(4),
	o => \DATOS[4]~input_o\);

-- Location: LCCOMB_X35_Y37_N0
\U14|X[16]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[16]~124_combout\ = (!\U4|IR_SIG\(2) & !\U4|IR_SIG\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[16]~124_combout\);

-- Location: LCCOMB_X35_Y37_N30
\U14|X[16]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[16]~126_combout\ = (\U14|X[16]~124_combout\ & ((\U14|X[15]~125_combout\) # ((\U13|cuenta\(1) & \U14|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[15]~125_combout\,
	datab => \U13|cuenta\(1),
	datac => \U14|process_0~1_combout\,
	datad => \U14|X[16]~124_combout\,
	combout => \U14|X[16]~126_combout\);

-- Location: LCCOMB_X34_Y37_N26
\U14|X[17]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~90_combout\ = (!\U13|cuenta\(2) & \U13|cuenta\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|X[17]~90_combout\);

-- Location: LCCOMB_X34_Y36_N12
\U14|X[15]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~127_combout\ = (!\U13|cuenta\(0) & (!\U4|IR_SIG\(3) & (\U14|X[17]~90_combout\ & \U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U4|IR_SIG\(3),
	datac => \U14|X[17]~90_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X[15]~127_combout\);

-- Location: LCCOMB_X34_Y36_N6
\U14|X[15]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~128_combout\ = (\U14|X[15]~127_combout\ & (((\U14|process_0~1_combout\ & \U4|IR_SIG\(3))) # (!\U4|IR_SIG\(2)))) # (!\U14|X[15]~127_combout\ & (((\U14|process_0~1_combout\ & \U4|IR_SIG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[15]~127_combout\,
	datab => \U4|IR_SIG\(2),
	datac => \U14|process_0~1_combout\,
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[15]~128_combout\);

-- Location: LCCOMB_X34_Y37_N30
\U14|X[15]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~129_combout\ = (\U14|Equal0~4_combout\) # ((\U13|cuenta\(2) & (\U13|cuenta\(1) & \U14|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~4_combout\,
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(1),
	datad => \U14|process_0~1_combout\,
	combout => \U14|X[15]~129_combout\);

-- Location: LCCOMB_X34_Y36_N4
\U14|X[15]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~130_combout\ = (\U14|X[15]~128_combout\) # ((\U4|IR_SIG\(2) & (\U14|X[15]~129_combout\ & !\U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[15]~128_combout\,
	datab => \U4|IR_SIG\(2),
	datac => \U14|X[15]~129_combout\,
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[15]~130_combout\);

-- Location: LCCOMB_X34_Y36_N26
\U14|X[15]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~131_combout\ = (\U4|IR_SIG\(2) & ((\U14|X[15]~127_combout\) # ((\U14|process_0~1_combout\ & \U4|IR_SIG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[15]~127_combout\,
	datab => \U4|IR_SIG\(2),
	datac => \U14|process_0~1_combout\,
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[15]~131_combout\);

-- Location: LCCOMB_X34_Y36_N0
\U14|X[16]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[16]~132_combout\ = (\U4|IR_SIG\(1) & ((\U4|IR_SIG\(0) & (\U14|X[15]~130_combout\)) # (!\U4|IR_SIG\(0) & ((\U14|X[15]~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U4|IR_SIG\(1),
	datac => \U14|X[15]~130_combout\,
	datad => \U14|X[15]~131_combout\,
	combout => \U14|X[16]~132_combout\);

-- Location: LCCOMB_X34_Y36_N22
\U14|comb~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~29_combout\ = (\U14|X[0]~78_combout\ & (!\U14|X[16]~132_combout\ & ((\U4|IR_SIG\(1)) # (!\U14|X[16]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datab => \U14|X[16]~126_combout\,
	datac => \U4|IR_SIG\(1),
	datad => \U14|X[16]~132_combout\,
	combout => \U14|comb~29_combout\);

-- Location: LCCOMB_X34_Y36_N8
\U14|comb~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~30_combout\ = (\U14|X[0]~78_combout\ & ((\U14|X[16]~132_combout\) # ((\U14|X[16]~126_combout\ & !\U4|IR_SIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datab => \U14|X[16]~126_combout\,
	datac => \U4|IR_SIG\(1),
	datad => \U14|X[16]~132_combout\,
	combout => \U14|comb~30_combout\);

-- Location: LCCOMB_X34_Y36_N16
\U14|X[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(16) = (!\U14|comb~29_combout\ & ((\U14|comb~30_combout\) # (\U14|X\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~29_combout\,
	datac => \U14|comb~30_combout\,
	datad => \U14|X\(16),
	combout => \U14|X\(16));

-- Location: LCCOMB_X34_Y36_N18
\U14|X[15]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~141_combout\ = (\U14|X[16]~126_combout\) # ((\U14|X[15]~129_combout\ & (!\U4|IR_SIG\(2) & \U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[15]~129_combout\,
	datab => \U4|IR_SIG\(2),
	datac => \U14|X[16]~126_combout\,
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[15]~141_combout\);

-- Location: LCCOMB_X34_Y36_N20
\U14|X[15]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~142_combout\ = (\U4|IR_SIG\(0) & (\U4|IR_SIG\(1))) # (!\U4|IR_SIG\(0) & ((\U4|IR_SIG\(1) & (\U14|process_0~1_combout\)) # (!\U4|IR_SIG\(1) & ((\U14|X[15]~141_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U4|IR_SIG\(1),
	datac => \U14|process_0~1_combout\,
	datad => \U14|X[15]~141_combout\,
	combout => \U14|X[15]~142_combout\);

-- Location: LCCOMB_X34_Y36_N2
\U14|X[15]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~143_combout\ = (\U4|IR_SIG\(0) & ((\U14|X[15]~142_combout\ & (\U14|X[15]~130_combout\)) # (!\U14|X[15]~142_combout\ & ((\U14|X[15]~131_combout\))))) # (!\U4|IR_SIG\(0) & (((\U14|X[15]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U14|X[15]~130_combout\,
	datac => \U14|X[15]~131_combout\,
	datad => \U14|X[15]~142_combout\,
	combout => \U14|X[15]~143_combout\);

-- Location: LCCOMB_X34_Y36_N28
\U14|comb~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~33_combout\ = (\U14|X[0]~78_combout\ & !\U14|X[15]~143_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datad => \U14|X[15]~143_combout\,
	combout => \U14|comb~33_combout\);

-- Location: LCCOMB_X34_Y36_N30
\U14|comb~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~34_combout\ = (\U14|X[0]~78_combout\ & \U14|X[15]~143_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datad => \U14|X[15]~143_combout\,
	combout => \U14|comb~34_combout\);

-- Location: LCCOMB_X34_Y36_N10
\U14|X[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(15) = (!\U14|comb~33_combout\ & ((\U14|comb~34_combout\) # (\U14|X\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~33_combout\,
	datac => \U14|comb~34_combout\,
	datad => \U14|X\(15),
	combout => \U14|X\(15));

-- Location: LCCOMB_X38_Y36_N22
\U0|ALU_OUT[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~18_combout\ = (\U1|ACC\(4) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(4)) # (!\U14|X\(15)))))) # (!\U1|ACC\(4) & ((\U9|MBR_SIG\(4)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(4),
	datac => \U14|X\(17),
	datad => \U9|MBR_SIG\(4),
	combout => \U0|ALU_OUT[4]~18_combout\);

-- Location: IOIBUF_X36_Y39_N22
\DATOS[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATOS(5),
	o => \DATOS[5]~input_o\);

-- Location: LCCOMB_X36_Y36_N16
\U7|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux2~0_combout\ = (\U14|X\(4) & (((\DATOS[5]~input_o\)))) # (!\U14|X\(4) & ((\U14|X\(2) & ((\DATOS[5]~input_o\))) # (!\U14|X\(2) & (\U1|ACC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(5),
	datab => \U14|X\(4),
	datac => \U14|X\(2),
	datad => \DATOS[5]~input_o\,
	combout => \U7|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y36_N22
\U7|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux2~1_combout\ = (\U18|OR2_OUT~0_combout\ & (((\U7|Mux2~0_combout\)))) # (!\U18|OR2_OUT~0_combout\ & (\U6|PC\(5) & (\U19|OR2_OUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(5),
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U7|Mux2~0_combout\,
	datad => \U18|OR2_OUT~0_combout\,
	combout => \U7|Mux2~1_combout\);

-- Location: LCCOMB_X34_Y37_N20
\U14|X[1]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[1]~99_combout\ = (\U4|IR_SIG\(1) & !\U4|IR_SIG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[1]~99_combout\);

-- Location: LCCOMB_X35_Y38_N12
\U14|X[1]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[1]~79_combout\ = (\U13|cuenta\(3) & \U4|IR_SIG\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(3),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[1]~79_combout\);

-- Location: LCCOMB_X34_Y35_N16
\U14|X[1]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[1]~121_combout\ = (\U4|IR_SIG\(2) & (!\U13|cuenta\(0) & (\U13|cuenta\(2) & \U13|cuenta\(1)))) # (!\U4|IR_SIG\(2) & (\U13|cuenta\(0) & (!\U13|cuenta\(2) & !\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|X[1]~121_combout\);

-- Location: LCCOMB_X37_Y35_N12
\U14|comb~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~26_combout\ = (\U14|X[1]~99_combout\ & (\U14|X[1]~79_combout\ & (\U14|X[0]~78_combout\ & \U14|X[1]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[1]~99_combout\,
	datab => \U14|X[1]~79_combout\,
	datac => \U14|X[0]~78_combout\,
	datad => \U14|X[1]~121_combout\,
	combout => \U14|comb~26_combout\);

-- Location: LCCOMB_X37_Y35_N26
\U14|comb~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~25_combout\ = (\U14|X[0]~78_combout\ & (((!\U14|X[1]~121_combout\) # (!\U14|X[1]~79_combout\)) # (!\U14|X[1]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[1]~99_combout\,
	datab => \U14|X[1]~79_combout\,
	datac => \U14|X[0]~78_combout\,
	datad => \U14|X[1]~121_combout\,
	combout => \U14|comb~25_combout\);

-- Location: LCCOMB_X37_Y35_N6
\U14|X[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(1) = (!\U14|comb~25_combout\ & ((\U14|comb~26_combout\) # (\U14|X\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~26_combout\,
	datac => \U14|comb~25_combout\,
	datad => \U14|X\(1),
	combout => \U14|X\(1));

-- Location: LCCOMB_X35_Y38_N8
\U14|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~7_combout\ = (!\U13|cuenta\(1) & (\U13|cuenta\(0) & (!\U13|cuenta\(2) & \U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|Equal0~7_combout\);

-- Location: LCCOMB_X37_Y35_N24
\U14|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~4_combout\ = (\U14|Equal4~1_combout\ & \U14|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Equal4~1_combout\,
	datad => \U14|Equal0~7_combout\,
	combout => \U14|process_0~4_combout\);

-- Location: LCCOMB_X37_Y35_N22
\U14|comb~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~22_combout\ = (\U14|X[0]~78_combout\ & ((!\U14|Equal4~1_combout\) # (!\U14|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~7_combout\,
	datab => \U14|X[0]~78_combout\,
	datac => \U14|Equal4~1_combout\,
	combout => \U14|comb~22_combout\);

-- Location: LCCOMB_X37_Y35_N20
\U14|X[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(3) = (!\U14|comb~22_combout\ & ((\U14|process_0~4_combout\) # (\U14|X\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|process_0~4_combout\,
	datac => \U14|comb~22_combout\,
	datad => \U14|X\(3),
	combout => \U14|X\(3));

-- Location: LCCOMB_X37_Y35_N0
\U17|OR4_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U17|OR4_OUT~0_combout\ = (\U14|X\(1)) # ((\U14|X\(4)) # ((\U14|X\(2)) # (\U14|X\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(1),
	datab => \U14|X\(4),
	datac => \U14|X\(2),
	datad => \U14|X\(3),
	combout => \U17|OR4_OUT~0_combout\);

-- Location: FF_X39_Y36_N9
\U9|MBR_SIG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U7|Mux2~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(5));

-- Location: LCCOMB_X41_Y36_N0
\U0|ALU_OUT[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~6_combout\ = (\U1|ACC\(5) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(5)) # (!\U14|X\(15)))))) # (!\U1|ACC\(5) & ((\U9|MBR_SIG\(5)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U1|ACC\(5),
	datad => \U9|MBR_SIG\(5),
	combout => \U0|ALU_OUT[5]~6_combout\);

-- Location: IOIBUF_X34_Y39_N8
\DATOS[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATOS(6),
	o => \DATOS[6]~input_o\);

-- Location: LCCOMB_X38_Y36_N14
\U7|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux1~0_combout\ = (\U18|OR2_OUT~0_combout\ & ((\U19|OR2_OUT~0_combout\ & ((\U1|ACC\(6)))) # (!\U19|OR2_OUT~0_combout\ & (\DATOS[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~0_combout\,
	datab => \U19|OR2_OUT~0_combout\,
	datac => \DATOS[6]~input_o\,
	datad => \U1|ACC\(6),
	combout => \U7|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y36_N12
\U7|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux1~1_combout\ = (\U7|Mux1~0_combout\) # ((\U6|PC\(6) & (\U19|OR2_OUT~0_combout\ & !\U18|OR2_OUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(6),
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U7|Mux1~0_combout\,
	datad => \U18|OR2_OUT~0_combout\,
	combout => \U7|Mux1~1_combout\);

-- Location: FF_X38_Y36_N13
\U9|MBR_SIG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U7|Mux1~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(6));

-- Location: LCCOMB_X41_Y36_N30
\U0|ALU_OUT[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~14_combout\ = (\U1|ACC\(6) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(6)) # (!\U14|X\(15)))))) # (!\U1|ACC\(6) & ((\U9|MBR_SIG\(6)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U1|ACC\(6),
	datad => \U9|MBR_SIG\(6),
	combout => \U0|ALU_OUT[6]~14_combout\);

-- Location: LCCOMB_X34_Y37_N6
\U14|X[19]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~156_combout\ = (\U13|cuenta\(2) & (((\U14|X[17]~133_combout\)))) # (!\U13|cuenta\(2) & (\U13|cuenta\(3) & (\U14|X[17]~133_combout\ $ (!\U4|IR_SIG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U14|X[17]~133_combout\,
	datac => \U13|cuenta\(2),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[19]~156_combout\);

-- Location: LCCOMB_X35_Y37_N24
\U14|X[5]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~93_combout\ = (\U4|IR_SIG\(0) & \U4|IR_SIG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datac => \U4|IR_SIG\(1),
	combout => \U14|X[5]~93_combout\);

-- Location: LCCOMB_X34_Y37_N14
\U14|X[19]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~149_combout\ = (!\U13|cuenta\(0) & (\U13|cuenta\(1) & (\U4|IR_SIG\(2) & !\U14|X[5]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U4|IR_SIG\(2),
	datad => \U14|X[5]~93_combout\,
	combout => \U14|X[19]~149_combout\);

-- Location: LCCOMB_X35_Y37_N16
\U14|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~3_combout\ = (!\U4|IR_SIG\(2) & (!\U4|IR_SIG\(1) & (\U4|IR_SIG\(0) & \U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|Equal4~3_combout\);

-- Location: LCCOMB_X35_Y37_N6
\U14|X[17]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~136_combout\ = (\U14|Equal0~4_combout\ & ((\U14|Equal4~2_combout\) # (\U14|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~4_combout\,
	datac => \U14|Equal4~2_combout\,
	datad => \U14|Equal4~3_combout\,
	combout => \U14|X[17]~136_combout\);

-- Location: LCCOMB_X34_Y37_N22
\U14|X[19]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~145_combout\ = (\U13|cuenta\(0) & (\U4|IR_SIG\(2) & (!\U13|cuenta\(2) & !\U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U4|IR_SIG\(2),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|X[19]~145_combout\);

-- Location: LCCOMB_X34_Y37_N28
\U14|X[19]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~146_combout\ = (\U14|X[19]~145_combout\ & (\U4|IR_SIG\(3) $ (((!\U14|X[17]~136_combout\ & !\U14|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~136_combout\,
	datab => \U4|IR_SIG\(3),
	datac => \U14|X[19]~145_combout\,
	datad => \U14|process_0~1_combout\,
	combout => \U14|X[19]~146_combout\);

-- Location: LCCOMB_X34_Y37_N12
\U14|X[17]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~137_combout\ = (\U14|X[17]~90_combout\ & (\U4|IR_SIG\(3) $ (((!\U14|X[17]~136_combout\ & !\U14|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~136_combout\,
	datab => \U4|IR_SIG\(3),
	datac => \U14|X[17]~90_combout\,
	datad => \U14|process_0~1_combout\,
	combout => \U14|X[17]~137_combout\);

-- Location: LCCOMB_X34_Y37_N2
\U14|X[17]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~138_combout\ = (\U4|IR_SIG\(2) & (((\U14|X[17]~133_combout\)))) # (!\U4|IR_SIG\(2) & ((\U14|X[17]~137_combout\) # ((\U13|cuenta\(2) & \U14|X[17]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U14|X[17]~133_combout\,
	datac => \U4|IR_SIG\(2),
	datad => \U14|X[17]~137_combout\,
	combout => \U14|X[17]~138_combout\);

-- Location: LCCOMB_X34_Y37_N18
\U14|X[19]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~147_combout\ = (\U14|X[19]~146_combout\) # ((!\U13|cuenta\(0) & \U14|X[17]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|X[19]~146_combout\,
	datad => \U14|X[17]~138_combout\,
	combout => \U14|X[19]~147_combout\);

-- Location: LCCOMB_X34_Y37_N8
\U14|X[19]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~148_combout\ = (\U14|X[17]~135_combout\) # ((\U14|X[19]~147_combout\ & (\U13|cuenta\(1) & \U14|X[5]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~135_combout\,
	datab => \U14|X[19]~147_combout\,
	datac => \U13|cuenta\(1),
	datad => \U14|X[5]~93_combout\,
	combout => \U14|X[19]~148_combout\);

-- Location: LCCOMB_X34_Y37_N16
\U14|X[19]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~144_combout\ = (\U4|IR_SIG\(1) & (!\U4|IR_SIG\(0) & (\U14|X[17]~133_combout\ & \U13|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(0),
	datac => \U14|X[17]~133_combout\,
	datad => \U13|cuenta\(0),
	combout => \U14|X[19]~144_combout\);

-- Location: LCCOMB_X34_Y37_N0
\U14|X[19]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~150_combout\ = (\U14|X[19]~148_combout\) # ((\U14|X[19]~144_combout\) # ((\U14|X[19]~156_combout\ & \U14|X[19]~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[19]~156_combout\,
	datab => \U14|X[19]~149_combout\,
	datac => \U14|X[19]~148_combout\,
	datad => \U14|X[19]~144_combout\,
	combout => \U14|X[19]~150_combout\);

-- Location: LCCOMB_X34_Y38_N12
\U14|comb~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~35_combout\ = (\U14|X[0]~78_combout\ & !\U14|X[19]~150_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~78_combout\,
	datad => \U14|X[19]~150_combout\,
	combout => \U14|comb~35_combout\);

-- Location: LCCOMB_X34_Y38_N18
\U14|comb~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~36_combout\ = (\U14|X[0]~78_combout\ & \U14|X[19]~150_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~78_combout\,
	datad => \U14|X[19]~150_combout\,
	combout => \U14|comb~36_combout\);

-- Location: LCCOMB_X34_Y38_N6
\U14|X[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(19) = (!\U14|comb~35_combout\ & ((\U14|comb~36_combout\) # (\U14|X\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~35_combout\,
	datab => \U14|comb~36_combout\,
	datad => \U14|X\(19),
	combout => \U14|X\(19));

-- Location: FF_X40_Y36_N31
\U1|ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|ALU_OUT[7]~5_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(7));

-- Location: LCCOMB_X41_Y36_N8
\U0|ALU_OUT[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~15_combout\ = (\U14|X\(15) & (\U1|ACC\(5))) # (!\U14|X\(15) & (((\U1|ACC\(6) & \U9|MBR_SIG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(5),
	datac => \U1|ACC\(6),
	datad => \U9|MBR_SIG\(6),
	combout => \U0|ALU_OUT[6]~15_combout\);

-- Location: LCCOMB_X41_Y36_N14
\U0|ALU_OUT[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~16_combout\ = (\U14|X\(17) & ((\U0|ALU_OUT[6]~15_combout\))) # (!\U14|X\(17) & (!\U14|X\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(17),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[6]~15_combout\,
	combout => \U0|ALU_OUT[6]~16_combout\);

-- Location: LCCOMB_X40_Y36_N20
\U0|ALU_OUT[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~31_combout\ = (\U1|ACC\(3) & (\U14|X\(17) $ (((!\U14|X\(15)) # (!\U9|MBR_SIG\(3)))))) # (!\U1|ACC\(3) & ((\U9|MBR_SIG\(3)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(3),
	datab => \U14|X\(15),
	datac => \U1|ACC\(3),
	datad => \U14|X\(17),
	combout => \U0|ALU_OUT[3]~31_combout\);

-- Location: LCCOMB_X41_Y36_N20
\U0|ALU_OUT[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~23_combout\ = (\U1|ACC\(2) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(2)) # (!\U14|X\(15)))))) # (!\U1|ACC\(2) & ((\U9|MBR_SIG\(2)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(2),
	datac => \U14|X\(17),
	datad => \U9|MBR_SIG\(2),
	combout => \U0|ALU_OUT[2]~23_combout\);

-- Location: LCCOMB_X41_Y36_N4
\U0|ALU_OUT[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~27_combout\ = (\U1|ACC\(1) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(1)) # (!\U14|X\(15)))))) # (!\U1|ACC\(1) & ((\U9|MBR_SIG\(1)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U9|MBR_SIG\(1),
	datad => \U1|ACC\(1),
	combout => \U0|ALU_OUT[1]~27_combout\);

-- Location: LCCOMB_X39_Y36_N8
\U0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = (\U9|MBR_SIG\(0) & (\U1|ACC\(0) $ (VCC))) # (!\U9|MBR_SIG\(0) & (\U1|ACC\(0) & VCC))
-- \U0|Add0~1\ = CARRY((\U9|MBR_SIG\(0) & \U1|ACC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(0),
	datab => \U1|ACC\(0),
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: LCCOMB_X40_Y36_N18
\U0|ALU_OUT[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~10_combout\ = (\U14|X\(15) & ((\U1|ACC\(1)))) # (!\U14|X\(15) & (\U1|ACC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(0),
	datab => \U14|X\(15),
	datad => \U1|ACC\(1),
	combout => \U0|ALU_OUT[0]~10_combout\);

-- Location: LCCOMB_X40_Y36_N24
\U0|ALU_OUT[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~11_combout\ = (\U14|X\(15) & (((!\U14|X\(16))))) # (!\U14|X\(15) & ((\U0|ALU_OUT[0]~10_combout\ & ((\U14|X\(16)))) # (!\U0|ALU_OUT[0]~10_combout\ & (\U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U14|X\(16),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[0]~10_combout\,
	combout => \U0|ALU_OUT[0]~11_combout\);

-- Location: LCCOMB_X40_Y36_N26
\U0|ALU_OUT[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~12_combout\ = (\U0|ALU_OUT[0]~10_combout\ & (\U14|X\(17) $ (\U14|X\(16) $ (\U14|X\(15))))) # (!\U0|ALU_OUT[0]~10_combout\ & (\U14|X\(16) & ((\U14|X\(17)) # (!\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U14|X\(16),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[0]~10_combout\,
	combout => \U0|ALU_OUT[0]~12_combout\);

-- Location: LCCOMB_X39_Y36_N0
\U0|ALU_OUT[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~13_combout\ = (\U0|ALU_OUT[0]~11_combout\ & (((\U0|ALU_OUT[0]~12_combout\)))) # (!\U0|ALU_OUT[0]~11_combout\ & ((\U0|ALU_OUT[0]~12_combout\ & ((\U9|MBR_SIG\(0)))) # (!\U0|ALU_OUT[0]~12_combout\ & (\U0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~0_combout\,
	datab => \U0|ALU_OUT[0]~11_combout\,
	datac => \U9|MBR_SIG\(0),
	datad => \U0|ALU_OUT[0]~12_combout\,
	combout => \U0|ALU_OUT[0]~13_combout\);

-- Location: FF_X39_Y36_N13
\U1|ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U0|ALU_OUT[0]~13_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(0));

-- Location: LCCOMB_X39_Y36_N26
\U0|auxf~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|auxf~2_combout\ = (\U9|MBR_SIG\(1) & \U1|ACC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|MBR_SIG\(1),
	datac => \U1|ACC\(1),
	combout => \U0|auxf~2_combout\);

-- Location: LCCOMB_X39_Y36_N10
\U0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U1|ACC\(1) & ((\U9|MBR_SIG\(1) & (\U0|Add0~1\ & VCC)) # (!\U9|MBR_SIG\(1) & (!\U0|Add0~1\)))) # (!\U1|ACC\(1) & ((\U9|MBR_SIG\(1) & (!\U0|Add0~1\)) # (!\U9|MBR_SIG\(1) & ((\U0|Add0~1\) # (GND)))))
-- \U0|Add0~3\ = CARRY((\U1|ACC\(1) & (!\U9|MBR_SIG\(1) & !\U0|Add0~1\)) # (!\U1|ACC\(1) & ((!\U0|Add0~1\) # (!\U9|MBR_SIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(1),
	datab => \U9|MBR_SIG\(1),
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~2_combout\,
	cout => \U0|Add0~3\);

-- Location: LCCOMB_X39_Y36_N4
\U0|ALU_OUT[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~28_combout\ = (\U14|X\(15) & (((\U14|X\(17))))) # (!\U14|X\(15) & ((\U14|X\(17) & (\U0|auxf~2_combout\)) # (!\U14|X\(17) & ((\U0|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U0|auxf~2_combout\,
	datac => \U14|X\(17),
	datad => \U0|Add0~2_combout\,
	combout => \U0|ALU_OUT[1]~28_combout\);

-- Location: LCCOMB_X40_Y36_N6
\U0|ALU_OUT[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~29_combout\ = (\U14|X\(15) & ((\U0|ALU_OUT[1]~28_combout\ & (\U1|ACC\(0))) # (!\U0|ALU_OUT[1]~28_combout\ & ((\U1|ACC\(2)))))) # (!\U14|X\(15) & (((\U0|ALU_OUT[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(0),
	datab => \U14|X\(15),
	datac => \U0|ALU_OUT[1]~28_combout\,
	datad => \U1|ACC\(2),
	combout => \U0|ALU_OUT[1]~29_combout\);

-- Location: LCCOMB_X40_Y36_N8
\U0|ALU_OUT[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~30_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[1]~27_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[1]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[1]~27_combout\,
	datab => \U14|X\(16),
	datad => \U0|ALU_OUT[1]~29_combout\,
	combout => \U0|ALU_OUT[1]~30_combout\);

-- Location: FF_X39_Y36_N27
\U1|ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U0|ALU_OUT[1]~30_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(1));

-- Location: LCCOMB_X41_Y36_N18
\U0|auxf~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|auxf~1_combout\ = (\U1|ACC\(2) & \U9|MBR_SIG\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ACC\(2),
	datad => \U9|MBR_SIG\(2),
	combout => \U0|auxf~1_combout\);

-- Location: LCCOMB_X39_Y36_N12
\U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = ((\U9|MBR_SIG\(2) $ (\U1|ACC\(2) $ (!\U0|Add0~3\)))) # (GND)
-- \U0|Add0~5\ = CARRY((\U9|MBR_SIG\(2) & ((\U1|ACC\(2)) # (!\U0|Add0~3\))) # (!\U9|MBR_SIG\(2) & (\U1|ACC\(2) & !\U0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(2),
	datab => \U1|ACC\(2),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: LCCOMB_X39_Y36_N30
\U0|ALU_OUT[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~24_combout\ = (\U14|X\(15) & ((\U1|ACC\(3)) # ((\U14|X\(17))))) # (!\U14|X\(15) & (((!\U14|X\(17) & \U0|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(3),
	datac => \U14|X\(17),
	datad => \U0|Add0~4_combout\,
	combout => \U0|ALU_OUT[2]~24_combout\);

-- Location: LCCOMB_X40_Y36_N2
\U0|ALU_OUT[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~25_combout\ = (\U14|X\(17) & ((\U0|ALU_OUT[2]~24_combout\ & (\U1|ACC\(1))) # (!\U0|ALU_OUT[2]~24_combout\ & ((\U0|auxf~1_combout\))))) # (!\U14|X\(17) & (((\U0|ALU_OUT[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(1),
	datab => \U0|auxf~1_combout\,
	datac => \U14|X\(17),
	datad => \U0|ALU_OUT[2]~24_combout\,
	combout => \U0|ALU_OUT[2]~25_combout\);

-- Location: LCCOMB_X40_Y36_N4
\U0|ALU_OUT[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~26_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[2]~23_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[2]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(16),
	datac => \U0|ALU_OUT[2]~23_combout\,
	datad => \U0|ALU_OUT[2]~25_combout\,
	combout => \U0|ALU_OUT[2]~26_combout\);

-- Location: FF_X40_Y36_N19
\U1|ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U0|ALU_OUT[2]~26_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(2));

-- Location: LCCOMB_X40_Y36_N10
\U0|auxf~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|auxf~3_combout\ = (\U1|ACC\(3) & \U9|MBR_SIG\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ACC\(3),
	datad => \U9|MBR_SIG\(3),
	combout => \U0|auxf~3_combout\);

-- Location: LCCOMB_X39_Y36_N14
\U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U1|ACC\(3) & ((\U9|MBR_SIG\(3) & (\U0|Add0~5\ & VCC)) # (!\U9|MBR_SIG\(3) & (!\U0|Add0~5\)))) # (!\U1|ACC\(3) & ((\U9|MBR_SIG\(3) & (!\U0|Add0~5\)) # (!\U9|MBR_SIG\(3) & ((\U0|Add0~5\) # (GND)))))
-- \U0|Add0~7\ = CARRY((\U1|ACC\(3) & (!\U9|MBR_SIG\(3) & !\U0|Add0~5\)) # (!\U1|ACC\(3) & ((!\U0|Add0~5\) # (!\U9|MBR_SIG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(3),
	datab => \U9|MBR_SIG\(3),
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: LCCOMB_X39_Y36_N6
\U0|ALU_OUT[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~32_combout\ = (\U14|X\(15) & (((\U14|X\(17))))) # (!\U14|X\(15) & ((\U14|X\(17) & (\U0|auxf~3_combout\)) # (!\U14|X\(17) & ((\U0|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U0|auxf~3_combout\,
	datac => \U14|X\(17),
	datad => \U0|Add0~6_combout\,
	combout => \U0|ALU_OUT[3]~32_combout\);

-- Location: LCCOMB_X39_Y36_N28
\U0|ALU_OUT[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~33_combout\ = (\U14|X\(15) & ((\U0|ALU_OUT[3]~32_combout\ & (\U1|ACC\(2))) # (!\U0|ALU_OUT[3]~32_combout\ & ((\U1|ACC\(4)))))) # (!\U14|X\(15) & (((\U0|ALU_OUT[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(2),
	datac => \U1|ACC\(4),
	datad => \U0|ALU_OUT[3]~32_combout\,
	combout => \U0|ALU_OUT[3]~33_combout\);

-- Location: LCCOMB_X40_Y36_N28
\U0|ALU_OUT[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~34_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[3]~31_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[3]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(16),
	datac => \U0|ALU_OUT[3]~31_combout\,
	datad => \U0|ALU_OUT[3]~33_combout\,
	combout => \U0|ALU_OUT[3]~34_combout\);

-- Location: FF_X40_Y36_N21
\U1|ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U0|ALU_OUT[3]~34_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(3));

-- Location: LCCOMB_X39_Y36_N16
\U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = ((\U1|ACC\(4) $ (\U9|MBR_SIG\(4) $ (!\U0|Add0~7\)))) # (GND)
-- \U0|Add0~9\ = CARRY((\U1|ACC\(4) & ((\U9|MBR_SIG\(4)) # (!\U0|Add0~7\))) # (!\U1|ACC\(4) & (\U9|MBR_SIG\(4) & !\U0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(4),
	datab => \U9|MBR_SIG\(4),
	datad => VCC,
	cin => \U0|Add0~7\,
	combout => \U0|Add0~8_combout\,
	cout => \U0|Add0~9\);

-- Location: LCCOMB_X39_Y36_N18
\U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (\U1|ACC\(5) & ((\U9|MBR_SIG\(5) & (\U0|Add0~9\ & VCC)) # (!\U9|MBR_SIG\(5) & (!\U0|Add0~9\)))) # (!\U1|ACC\(5) & ((\U9|MBR_SIG\(5) & (!\U0|Add0~9\)) # (!\U9|MBR_SIG\(5) & ((\U0|Add0~9\) # (GND)))))
-- \U0|Add0~11\ = CARRY((\U1|ACC\(5) & (!\U9|MBR_SIG\(5) & !\U0|Add0~9\)) # (!\U1|ACC\(5) & ((!\U0|Add0~9\) # (!\U9|MBR_SIG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(5),
	datab => \U9|MBR_SIG\(5),
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: LCCOMB_X39_Y36_N20
\U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = ((\U9|MBR_SIG\(6) $ (\U1|ACC\(6) $ (!\U0|Add0~11\)))) # (GND)
-- \U0|Add0~13\ = CARRY((\U9|MBR_SIG\(6) & ((\U1|ACC\(6)) # (!\U0|Add0~11\))) # (!\U9|MBR_SIG\(6) & (\U1|ACC\(6) & !\U0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(6),
	datab => \U1|ACC\(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: LCCOMB_X40_Y36_N16
\U0|ALU_OUT[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~17_combout\ = (\U14|X\(17) & (((\U0|ALU_OUT[6]~16_combout\)))) # (!\U14|X\(17) & ((\U0|ALU_OUT[6]~16_combout\ & ((\U0|Add0~12_combout\))) # (!\U0|ALU_OUT[6]~16_combout\ & (\U1|ACC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U1|ACC\(7),
	datac => \U0|ALU_OUT[6]~16_combout\,
	datad => \U0|Add0~12_combout\,
	combout => \U0|ALU_OUT[6]~17_combout\);

-- Location: LCCOMB_X41_Y36_N26
\U0|ALU_OUT[6]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~35_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[6]~14_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[6]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[6]~14_combout\,
	datac => \U0|ALU_OUT[6]~17_combout\,
	datad => \U14|X\(16),
	combout => \U0|ALU_OUT[6]~35_combout\);

-- Location: FF_X41_Y36_N27
\U1|ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|ALU_OUT[6]~35_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(6));

-- Location: LCCOMB_X41_Y36_N22
\U0|auxf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|auxf~0_combout\ = (\U1|ACC\(5) & \U9|MBR_SIG\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ACC\(5),
	datad => \U9|MBR_SIG\(5),
	combout => \U0|auxf~0_combout\);

-- Location: LCCOMB_X41_Y36_N12
\U0|ALU_OUT[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~7_combout\ = (\U14|X\(15) & (\U14|X\(17))) # (!\U14|X\(15) & ((\U14|X\(17) & (\U0|auxf~0_combout\)) # (!\U14|X\(17) & ((\U0|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U0|auxf~0_combout\,
	datad => \U0|Add0~10_combout\,
	combout => \U0|ALU_OUT[5]~7_combout\);

-- Location: LCCOMB_X41_Y36_N2
\U0|ALU_OUT[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~8_combout\ = (\U14|X\(15) & ((\U0|ALU_OUT[5]~7_combout\ & (\U1|ACC\(4))) # (!\U0|ALU_OUT[5]~7_combout\ & ((\U1|ACC\(6)))))) # (!\U14|X\(15) & (((\U0|ALU_OUT[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(4),
	datac => \U1|ACC\(6),
	datad => \U0|ALU_OUT[5]~7_combout\,
	combout => \U0|ALU_OUT[5]~8_combout\);

-- Location: LCCOMB_X41_Y36_N24
\U0|ALU_OUT[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~9_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[5]~6_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[5]~6_combout\,
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[5]~8_combout\,
	combout => \U0|ALU_OUT[5]~9_combout\);

-- Location: FF_X41_Y36_N1
\U1|ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U0|ALU_OUT[5]~9_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(5));

-- Location: LCCOMB_X38_Y36_N20
\U0|ALU_OUT[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~19_combout\ = (\U14|X\(15) & (((\U1|ACC\(3))))) # (!\U14|X\(15) & (\U1|ACC\(4) & ((\U9|MBR_SIG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(4),
	datac => \U1|ACC\(3),
	datad => \U9|MBR_SIG\(4),
	combout => \U0|ALU_OUT[4]~19_combout\);

-- Location: LCCOMB_X38_Y36_N26
\U0|ALU_OUT[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~20_combout\ = (\U14|X\(17) & ((\U0|ALU_OUT[4]~19_combout\))) # (!\U14|X\(17) & (!\U14|X\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(17),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[4]~19_combout\,
	combout => \U0|ALU_OUT[4]~20_combout\);

-- Location: LCCOMB_X39_Y36_N2
\U0|ALU_OUT[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~21_combout\ = (\U14|X\(17) & (((\U0|ALU_OUT[4]~20_combout\)))) # (!\U14|X\(17) & ((\U0|ALU_OUT[4]~20_combout\ & ((\U0|Add0~8_combout\))) # (!\U0|ALU_OUT[4]~20_combout\ & (\U1|ACC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(5),
	datab => \U14|X\(17),
	datac => \U0|ALU_OUT[4]~20_combout\,
	datad => \U0|Add0~8_combout\,
	combout => \U0|ALU_OUT[4]~21_combout\);

-- Location: LCCOMB_X40_Y36_N12
\U0|ALU_OUT[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~22_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[4]~18_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[4]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(16),
	datac => \U0|ALU_OUT[4]~18_combout\,
	datad => \U0|ALU_OUT[4]~21_combout\,
	combout => \U0|ALU_OUT[4]~22_combout\);

-- Location: FF_X39_Y36_N29
\U1|ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U0|ALU_OUT[4]~22_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(4));

-- Location: LCCOMB_X38_Y36_N18
\U7|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux3~0_combout\ = (\U18|OR2_OUT~0_combout\ & ((\U19|OR2_OUT~0_combout\ & ((\U1|ACC\(4)))) # (!\U19|OR2_OUT~0_combout\ & (\DATOS[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~0_combout\,
	datab => \U19|OR2_OUT~0_combout\,
	datac => \DATOS[4]~input_o\,
	datad => \U1|ACC\(4),
	combout => \U7|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y36_N0
\U7|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux3~1_combout\ = (\U7|Mux3~0_combout\) # ((\U6|PC\(4) & (\U19|OR2_OUT~0_combout\ & !\U18|OR2_OUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(4),
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U7|Mux3~0_combout\,
	datad => \U18|OR2_OUT~0_combout\,
	combout => \U7|Mux3~1_combout\);

-- Location: FF_X39_Y36_N25
\U9|MBR_SIG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U7|Mux3~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(4));

-- Location: LCCOMB_X35_Y37_N12
\U14|X[7]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[7]~88_combout\ = (\U4|IR_SIG\(2) & (!\U4|IR_SIG\(3) & ((!\U4|IR_SIG\(0)) # (!\U4|IR_SIG\(1))))) # (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(1) & (\U4|IR_SIG\(0) $ (\U4|IR_SIG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[7]~88_combout\);

-- Location: LCCOMB_X36_Y35_N28
\U14|X[15]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~107_combout\ = (\U13|cuenta\(1) & \U13|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(1),
	datad => \U13|cuenta\(2),
	combout => \U14|X[15]~107_combout\);

-- Location: LCCOMB_X36_Y35_N30
\U14|X[6]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[6]~108_combout\ = (\U14|X[15]~107_combout\ & ((\U13|cuenta\(0) & (\U14|X[7]~88_combout\)) # (!\U13|cuenta\(0) & ((\U14|Equal4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|X[7]~88_combout\,
	datac => \U14|Equal4~1_combout\,
	datad => \U14|X[15]~107_combout\,
	combout => \U14|X[6]~108_combout\);

-- Location: LCCOMB_X34_Y35_N6
\U14|X[8]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~85_combout\ = (\U4|IR_SIG\(2) & (\U4|IR_SIG\(0) & ((\U4|IR_SIG\(1))))) # (!\U4|IR_SIG\(2) & (((\U4|IR_SIG\(3) & !\U4|IR_SIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[8]~85_combout\);

-- Location: LCCOMB_X35_Y35_N24
\U14|X[6]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[6]~109_combout\ = (!\U13|cuenta\(1) & ((\U13|cuenta\(2) & (!\U13|cuenta\(0) & !\U14|X[8]~85_combout\)) # (!\U13|cuenta\(2) & (\U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(0),
	datac => \U14|X[8]~85_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X[6]~109_combout\);

-- Location: LCCOMB_X36_Y35_N16
\U14|comb~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~15_combout\ = (\U14|X[0]~78_combout\ & ((\U13|cuenta\(3)) # ((!\U14|X[6]~108_combout\ & !\U14|X[6]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[6]~108_combout\,
	datab => \U14|X[6]~109_combout\,
	datac => \U13|cuenta\(3),
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~15_combout\);

-- Location: LCCOMB_X36_Y35_N22
\U14|comb~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~16_combout\ = (!\U13|cuenta\(3) & (\U14|X[0]~78_combout\ & ((\U14|X[6]~108_combout\) # (\U14|X[6]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[6]~108_combout\,
	datab => \U14|X[6]~109_combout\,
	datac => \U13|cuenta\(3),
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~16_combout\);

-- Location: LCCOMB_X36_Y35_N20
\U14|X[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(6) = (!\U14|comb~15_combout\ & ((\U14|comb~16_combout\) # (\U14|X\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~15_combout\,
	datac => \U14|comb~16_combout\,
	datad => \U14|X\(6),
	combout => \U14|X\(6));

-- Location: LCCOMB_X37_Y36_N24
\U6|PC[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[3]~12_combout\ = \U14|X\(6) $ (\U14|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(6),
	datad => \U14|X\(5),
	combout => \U6|PC[3]~12_combout\);

-- Location: FF_X37_Y36_N9
\U6|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[4]~19_combout\,
	asdata => \U9|MBR_SIG\(4),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(4));

-- Location: LCCOMB_X37_Y36_N10
\U6|PC[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[5]~21_combout\ = (\U6|PC\(5) & (!\U6|PC[4]~20\)) # (!\U6|PC\(5) & ((\U6|PC[4]~20\) # (GND)))
-- \U6|PC[5]~22\ = CARRY((!\U6|PC[4]~20\) # (!\U6|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(5),
	datad => VCC,
	cin => \U6|PC[4]~20\,
	combout => \U6|PC[5]~21_combout\,
	cout => \U6|PC[5]~22\);

-- Location: FF_X37_Y36_N11
\U6|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[5]~21_combout\,
	asdata => \U9|MBR_SIG\(5),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(5));

-- Location: LCCOMB_X37_Y36_N12
\U6|PC[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[6]~23_combout\ = (\U6|PC\(6) & (\U6|PC[5]~22\ $ (GND))) # (!\U6|PC\(6) & (!\U6|PC[5]~22\ & VCC))
-- \U6|PC[6]~24\ = CARRY((\U6|PC\(6) & !\U6|PC[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(6),
	datad => VCC,
	cin => \U6|PC[5]~22\,
	combout => \U6|PC[6]~23_combout\,
	cout => \U6|PC[6]~24\);

-- Location: FF_X37_Y36_N13
\U6|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[6]~23_combout\,
	asdata => \U9|MBR_SIG\(6),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(6));

-- Location: LCCOMB_X37_Y36_N14
\U6|PC[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[7]~25_combout\ = (\U6|PC\(7) & (!\U6|PC[6]~24\)) # (!\U6|PC\(7) & ((\U6|PC[6]~24\) # (GND)))
-- \U6|PC[7]~26\ = CARRY((!\U6|PC[6]~24\) # (!\U6|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(7),
	datad => VCC,
	cin => \U6|PC[6]~24\,
	combout => \U6|PC[7]~25_combout\,
	cout => \U6|PC[7]~26\);

-- Location: IOIBUF_X34_Y39_N1
\DATOS[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATOS(7),
	o => \DATOS[7]~input_o\);

-- Location: LCCOMB_X38_Y36_N8
\U7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux0~0_combout\ = (\U18|OR2_OUT~0_combout\ & ((\U19|OR2_OUT~0_combout\ & ((\U1|ACC\(7)))) # (!\U19|OR2_OUT~0_combout\ & (\DATOS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~0_combout\,
	datab => \U19|OR2_OUT~0_combout\,
	datac => \DATOS[7]~input_o\,
	datad => \U1|ACC\(7),
	combout => \U7|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y36_N6
\U7|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux0~1_combout\ = (\U7|Mux0~0_combout\) # ((\U6|PC\(7) & (\U19|OR2_OUT~0_combout\ & !\U18|OR2_OUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(7),
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U7|Mux0~0_combout\,
	datad => \U18|OR2_OUT~0_combout\,
	combout => \U7|Mux0~1_combout\);

-- Location: FF_X38_Y36_N7
\U9|MBR_SIG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U7|Mux0~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(7));

-- Location: FF_X37_Y36_N15
\U6|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[7]~25_combout\,
	asdata => \U9|MBR_SIG\(7),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(7));

-- Location: LCCOMB_X37_Y36_N16
\U6|PC[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[8]~27_combout\ = (\U6|PC\(8) & (\U6|PC[7]~26\ $ (GND))) # (!\U6|PC\(8) & (!\U6|PC[7]~26\ & VCC))
-- \U6|PC[8]~28\ = CARRY((\U6|PC\(8) & !\U6|PC[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(8),
	datad => VCC,
	cin => \U6|PC[7]~26\,
	combout => \U6|PC[8]~27_combout\,
	cout => \U6|PC[8]~28\);

-- Location: LCCOMB_X35_Y36_N24
\U3|MBRAUX_SIG[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|MBRAUX_SIG[0]~feeder_combout\ = \U9|MBR_SIG\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U9|MBR_SIG\(0),
	combout => \U3|MBRAUX_SIG[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y35_N0
\U13|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|Add0~1_combout\ = \U13|cuenta\(0) $ (\U13|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(0),
	datad => \U13|cuenta\(1),
	combout => \U13|Add0~1_combout\);

-- Location: LCCOMB_X34_Y35_N28
\U14|X[8]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~80_combout\ = (\U4|IR_SIG\(3) & (\U4|IR_SIG\(2) & \U4|IR_SIG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[8]~80_combout\);

-- Location: LCCOMB_X36_Y38_N12
\U14|X[10]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~122_combout\ = (\U4|IR_SIG\(2) & (((!\U4|IR_SIG\(1)) # (!\U4|IR_SIG\(0))))) # (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(1) & ((\U4|IR_SIG\(3)) # (\U4|IR_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[10]~122_combout\);

-- Location: LCCOMB_X36_Y35_N0
\U14|X[10]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~123_combout\ = (\U13|cuenta\(0) & (((\U14|X[10]~122_combout\)))) # (!\U13|cuenta\(0) & (\U14|X[8]~80_combout\ & ((\U4|IR_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~80_combout\,
	datab => \U14|X[10]~122_combout\,
	datac => \U13|cuenta\(0),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[10]~123_combout\);

-- Location: LCCOMB_X35_Y35_N20
\U14|X[10]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~114_combout\ = (!\U13|cuenta\(3) & \U13|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|X[10]~114_combout\);

-- Location: LCCOMB_X35_Y35_N12
\U14|comb~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~28_combout\ = (\U14|X[0]~78_combout\ & (\U13|Add0~1_combout\ & (\U14|X[10]~123_combout\ & \U14|X[10]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datab => \U13|Add0~1_combout\,
	datac => \U14|X[10]~123_combout\,
	datad => \U14|X[10]~114_combout\,
	combout => \U14|comb~28_combout\);

-- Location: LCCOMB_X35_Y35_N14
\U14|comb~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~27_combout\ = (\U14|X[0]~78_combout\ & (((!\U14|X[10]~114_combout\) # (!\U14|X[10]~123_combout\)) # (!\U13|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datab => \U13|Add0~1_combout\,
	datac => \U14|X[10]~123_combout\,
	datad => \U14|X[10]~114_combout\,
	combout => \U14|comb~27_combout\);

-- Location: LCCOMB_X35_Y35_N2
\U14|X[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(10) = (!\U14|comb~27_combout\ & ((\U14|comb~28_combout\) # (\U14|X\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~28_combout\,
	datac => \U14|comb~27_combout\,
	datad => \U14|X\(10),
	combout => \U14|X\(10));

-- Location: FF_X35_Y36_N25
\U3|MBRAUX_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|MBRAUX_SIG[0]~feeder_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U14|X\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|MBRAUX_SIG\(0));

-- Location: FF_X37_Y36_N17
\U6|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[8]~27_combout\,
	asdata => \U3|MBRAUX_SIG\(0),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(8));

-- Location: LCCOMB_X37_Y36_N18
\U6|PC[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[9]~29_combout\ = \U6|PC\(9) $ (\U6|PC[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(9),
	cin => \U6|PC[8]~28\,
	combout => \U6|PC[9]~29_combout\);

-- Location: LCCOMB_X35_Y36_N30
\U3|MBRAUX_SIG[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|MBRAUX_SIG[1]~feeder_combout\ = \U9|MBR_SIG\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U9|MBR_SIG\(1),
	combout => \U3|MBRAUX_SIG[1]~feeder_combout\);

-- Location: FF_X35_Y36_N31
\U3|MBRAUX_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|MBRAUX_SIG[1]~feeder_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U14|X\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|MBRAUX_SIG\(1));

-- Location: FF_X37_Y36_N19
\U6|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[9]~29_combout\,
	asdata => \U3|MBRAUX_SIG\(1),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(9));

-- Location: LCCOMB_X37_Y36_N28
\U7|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux6~0_combout\ = (\U18|OR2_OUT~0_combout\ & (\U19|OR2_OUT~0_combout\ & (\U1|ACC\(1)))) # (!\U18|OR2_OUT~0_combout\ & (((\U6|PC\(1))) # (!\U19|OR2_OUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~0_combout\,
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U1|ACC\(1),
	datad => \U6|PC\(1),
	combout => \U7|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y36_N30
\U7|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux6~1_combout\ = (\U19|OR2_OUT~0_combout\ & (((\U7|Mux6~0_combout\)))) # (!\U19|OR2_OUT~0_combout\ & ((\U7|Mux6~0_combout\ & ((\U6|PC\(9)))) # (!\U7|Mux6~0_combout\ & (\DATOS[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATOS[1]~input_o\,
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U6|PC\(9),
	datad => \U7|Mux6~0_combout\,
	combout => \U7|Mux6~1_combout\);

-- Location: FF_X39_Y36_N15
\U9|MBR_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U7|Mux6~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(1));

-- Location: FF_X36_Y38_N31
\U4|IR_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U9|MBR_SIG\(1),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_SIG\(1));

-- Location: LCCOMB_X35_Y37_N14
\U14|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~2_combout\ = (!\U4|IR_SIG\(2) & (!\U4|IR_SIG\(1) & (!\U4|IR_SIG\(0) & \U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|Equal4~2_combout\);

-- Location: LCCOMB_X35_Y37_N8
\U14|X[17]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~133_combout\ = (\U14|process_0~1_combout\) # ((\U14|Equal0~4_combout\ & ((\U14|Equal4~2_combout\) # (\U14|Equal4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|process_0~1_combout\,
	datab => \U14|Equal0~4_combout\,
	datac => \U14|Equal4~2_combout\,
	datad => \U14|Equal4~3_combout\,
	combout => \U14|X[17]~133_combout\);

-- Location: LCCOMB_X35_Y37_N10
\U14|X[17]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~134_combout\ = (\U14|X[15]~125_combout\ & (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) $ (!\U14|X[17]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[15]~125_combout\,
	datab => \U4|IR_SIG\(3),
	datac => \U14|X[17]~133_combout\,
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[17]~134_combout\);

-- Location: LCCOMB_X36_Y37_N20
\U13|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|Add0~0_combout\ = (\U13|cuenta\(0) & \U13|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datad => \U13|cuenta\(1),
	combout => \U13|Add0~0_combout\);

-- Location: LCCOMB_X35_Y37_N20
\U14|X[17]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~135_combout\ = (!\U4|IR_SIG\(1) & ((\U14|X[17]~134_combout\) # ((\U13|Add0~0_combout\ & \U14|X[17]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~134_combout\,
	datab => \U4|IR_SIG\(1),
	datac => \U13|Add0~0_combout\,
	datad => \U14|X[17]~133_combout\,
	combout => \U14|X[17]~135_combout\);

-- Location: LCCOMB_X34_Y37_N4
\U14|X[17]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~139_combout\ = (!\U13|cuenta\(0) & (\U14|X[17]~138_combout\ & (\U13|cuenta\(1) & \U14|X[5]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|X[17]~138_combout\,
	datac => \U13|cuenta\(1),
	datad => \U14|X[5]~93_combout\,
	combout => \U14|X[17]~139_combout\);

-- Location: LCCOMB_X34_Y37_N10
\U14|X[17]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~140_combout\ = (\U14|X[17]~135_combout\) # ((\U14|X[17]~139_combout\) # ((\U14|X[17]~133_combout\ & \U14|X[1]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~135_combout\,
	datab => \U14|X[17]~139_combout\,
	datac => \U14|X[17]~133_combout\,
	datad => \U14|X[1]~99_combout\,
	combout => \U14|X[17]~140_combout\);

-- Location: LCCOMB_X36_Y34_N14
\U14|comb~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~32_combout\ = (\U14|X[17]~140_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[17]~140_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~32_combout\);

-- Location: LCCOMB_X36_Y34_N24
\U14|comb~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~31_combout\ = (!\U14|X[17]~140_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[17]~140_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~31_combout\);

-- Location: LCCOMB_X37_Y34_N24
\U14|X[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(17) = (!\U14|comb~31_combout\ & ((\U14|comb~32_combout\) # (\U14|X\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~32_combout\,
	datab => \U14|comb~31_combout\,
	datad => \U14|X\(17),
	combout => \U14|X\(17));

-- Location: LCCOMB_X39_Y36_N22
\U0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~14_combout\ = (\U1|ACC\(7) & ((\U9|MBR_SIG\(7) & (\U0|Add0~13\ & VCC)) # (!\U9|MBR_SIG\(7) & (!\U0|Add0~13\)))) # (!\U1|ACC\(7) & ((\U9|MBR_SIG\(7) & (!\U0|Add0~13\)) # (!\U9|MBR_SIG\(7) & ((\U0|Add0~13\) # (GND)))))
-- \U0|Add0~15\ = CARRY((\U1|ACC\(7) & (!\U9|MBR_SIG\(7) & !\U0|Add0~13\)) # (!\U1|ACC\(7) & ((!\U0|Add0~13\) # (!\U9|MBR_SIG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(7),
	datab => \U9|MBR_SIG\(7),
	datad => VCC,
	cin => \U0|Add0~13\,
	combout => \U0|Add0~14_combout\,
	cout => \U0|Add0~15\);

-- Location: LCCOMB_X41_Y36_N16
\U0|ALU_OUT[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~2_combout\ = (\U1|ACC\(7) & (\U14|X\(17) $ (((!\U14|X\(15)) # (!\U9|MBR_SIG\(7)))))) # (!\U1|ACC\(7) & ((\U9|MBR_SIG\(7)) # ((\U14|X\(17) & !\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U1|ACC\(7),
	datac => \U9|MBR_SIG\(7),
	datad => \U14|X\(15),
	combout => \U0|ALU_OUT[7]~2_combout\);

-- Location: LCCOMB_X41_Y36_N10
\U0|ALU_OUT[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~36_combout\ = ((!\U14|X\(15) & (\U9|MBR_SIG\(7) & \U1|ACC\(7)))) # (!\U14|X\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U9|MBR_SIG\(7),
	datad => \U1|ACC\(7),
	combout => \U0|ALU_OUT[7]~36_combout\);

-- Location: LCCOMB_X41_Y36_N6
\U0|ALU_OUT[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~3_combout\ = (\U14|X\(15) & (\U1|ACC\(6) & !\U0|ALU_OUT[7]~36_combout\)) # (!\U14|X\(15) & ((\U0|ALU_OUT[7]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(6),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[7]~36_combout\,
	combout => \U0|ALU_OUT[7]~3_combout\);

-- Location: LCCOMB_X41_Y36_N28
\U0|ALU_OUT[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~4_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[7]~2_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U0|ALU_OUT[7]~2_combout\,
	datad => \U0|ALU_OUT[7]~3_combout\,
	combout => \U0|ALU_OUT[7]~4_combout\);

-- Location: LCCOMB_X40_Y36_N30
\U0|ALU_OUT[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~5_combout\ = (\U0|ALU_OUT[7]~4_combout\ & ((\U14|X\(17)) # ((\U14|X\(16)) # (\U0|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U14|X\(16),
	datac => \U0|Add0~14_combout\,
	datad => \U0|ALU_OUT[7]~4_combout\,
	combout => \U0|ALU_OUT[7]~5_combout\);

-- Location: LCCOMB_X40_Y36_N14
\U0|tmp[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~0_combout\ = (\U0|ALU_OUT[0]~13_combout\) # ((\U14|X\(16) & (\U0|ALU_OUT[6]~14_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[6]~14_combout\,
	datab => \U14|X\(16),
	datac => \U0|ALU_OUT[0]~13_combout\,
	datad => \U0|ALU_OUT[6]~17_combout\,
	combout => \U0|tmp[7]~0_combout\);

-- Location: LCCOMB_X40_Y36_N22
\U0|tmp[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~1_combout\ = (\U0|ALU_OUT[4]~22_combout\) # ((\U0|ALU_OUT[1]~30_combout\) # ((\U0|ALU_OUT[2]~26_combout\) # (\U0|ALU_OUT[3]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[4]~22_combout\,
	datab => \U0|ALU_OUT[1]~30_combout\,
	datac => \U0|ALU_OUT[2]~26_combout\,
	datad => \U0|ALU_OUT[3]~34_combout\,
	combout => \U0|tmp[7]~1_combout\);

-- Location: LCCOMB_X40_Y36_N0
\U0|tmp[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp\(7) = (!\U0|ALU_OUT[7]~5_combout\ & (!\U0|tmp[7]~0_combout\ & (!\U0|tmp[7]~1_combout\ & !\U0|ALU_OUT[5]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[7]~5_combout\,
	datab => \U0|tmp[7]~0_combout\,
	datac => \U0|tmp[7]~1_combout\,
	datad => \U0|ALU_OUT[5]~9_combout\,
	combout => \U0|tmp\(7));

-- Location: FF_X40_Y36_N1
\U2|CCRZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|tmp\(7),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CCRZ~q\);

-- Location: LCCOMB_X38_Y36_N30
\U0|ALU_OUT_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT_C~0_combout\ = (\U14|X\(15) & ((\U14|X\(17) & ((\U1|ACC\(7)))) # (!\U14|X\(17) & (\U1|ACC\(0))))) # (!\U14|X\(15) & (((!\U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(0),
	datac => \U14|X\(17),
	datad => \U1|ACC\(7),
	combout => \U0|ALU_OUT_C~0_combout\);

-- Location: LCCOMB_X39_Y36_N24
\U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~16_combout\ = !\U0|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add0~15\,
	combout => \U0|Add0~16_combout\);

-- Location: LCCOMB_X38_Y36_N24
\U0|ALU_OUT_C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT_C~1_combout\ = (\U0|ALU_OUT_C~0_combout\ & (!\U14|X\(16) & ((\U14|X\(15)) # (\U0|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT_C~0_combout\,
	datab => \U14|X\(16),
	datac => \U14|X\(15),
	datad => \U0|Add0~16_combout\,
	combout => \U0|ALU_OUT_C~1_combout\);

-- Location: FF_X38_Y36_N25
\U2|CCRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|ALU_OUT_C~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CCRC~q\);

-- Location: LCCOMB_X36_Y38_N30
\U14|X[5]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~164_combout\ = (\U4|IR_SIG\(0) & (\U4|IR_SIG\(1))) # (!\U4|IR_SIG\(0) & (!\U4|IR_SIG\(1) & \U2|CCRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datac => \U4|IR_SIG\(1),
	datad => \U2|CCRC~q\,
	combout => \U14|X[5]~164_combout\);

-- Location: LCCOMB_X36_Y38_N2
\U14|X[5]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~165_combout\ = (\U14|X[5]~164_combout\ & (\U4|IR_SIG\(0) $ (((\U4|IR_SIG\(2)))))) # (!\U14|X[5]~164_combout\ & (\U4|IR_SIG\(0) & (\U2|CCRZ~q\ & \U4|IR_SIG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U2|CCRZ~q\,
	datac => \U14|X[5]~164_combout\,
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[5]~165_combout\);

-- Location: LCCOMB_X35_Y38_N6
\U14|X[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~19_combout\ = (\U13|cuenta\(3) & (!\U13|cuenta\(2) & \U14|X[5]~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(2),
	datad => \U14|X[5]~165_combout\,
	combout => \U14|X[5]~19_combout\);

-- Location: LCCOMB_X35_Y38_N4
\U14|X[5]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~157_combout\ = (\U14|X[5]~19_combout\ & (!\U13|cuenta\(0) & (!\U13|cuenta\(1) & \U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[5]~19_combout\,
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(1),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[5]~157_combout\);

-- Location: LCCOMB_X36_Y34_N26
\U14|comb~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~14_combout\ = (\U14|X[5]~157_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[5]~157_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~14_combout\);

-- Location: LCCOMB_X36_Y34_N4
\U14|comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~13_combout\ = (!\U14|X[5]~157_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[5]~157_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~13_combout\);

-- Location: LCCOMB_X36_Y34_N10
\U14|X[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(5) = (!\U14|comb~13_combout\ & ((\U14|comb~14_combout\) # (\U14|X\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~14_combout\,
	datac => \U14|comb~13_combout\,
	datad => \U14|X\(5),
	combout => \U14|X\(5));

-- Location: FF_X37_Y36_N1
\U6|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[0]~10_combout\,
	asdata => \U9|MBR_SIG\(0),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(0));

-- Location: LCCOMB_X37_Y36_N2
\U6|PC[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[1]~13_combout\ = (\U6|PC\(1) & (!\U6|PC[0]~11\)) # (!\U6|PC\(1) & ((\U6|PC[0]~11\) # (GND)))
-- \U6|PC[1]~14\ = CARRY((!\U6|PC[0]~11\) # (!\U6|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(1),
	datad => VCC,
	cin => \U6|PC[0]~11\,
	combout => \U6|PC[1]~13_combout\,
	cout => \U6|PC[1]~14\);

-- Location: FF_X37_Y36_N3
\U6|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[1]~13_combout\,
	asdata => \U9|MBR_SIG\(1),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(1));

-- Location: LCCOMB_X37_Y36_N4
\U6|PC[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[2]~15_combout\ = (\U6|PC\(2) & (\U6|PC[1]~14\ $ (GND))) # (!\U6|PC\(2) & (!\U6|PC[1]~14\ & VCC))
-- \U6|PC[2]~16\ = CARRY((\U6|PC\(2) & !\U6|PC[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(2),
	datad => VCC,
	cin => \U6|PC[1]~14\,
	combout => \U6|PC[2]~15_combout\,
	cout => \U6|PC[2]~16\);

-- Location: FF_X37_Y36_N5
\U6|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[2]~15_combout\,
	asdata => \U9|MBR_SIG\(2),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(2));

-- Location: FF_X37_Y36_N7
\U6|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|PC[3]~17_combout\,
	asdata => \U9|MBR_SIG\(3),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U14|X\(5),
	ena => \U6|PC[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(3));

-- Location: IOIBUF_X34_Y39_N15
\DATOS[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATOS(3),
	o => \DATOS[3]~input_o\);

-- Location: LCCOMB_X38_Y36_N2
\U7|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux4~0_combout\ = (\U14|X\(4) & (\DATOS[3]~input_o\)) # (!\U14|X\(4) & ((\U14|X\(2) & (\DATOS[3]~input_o\)) # (!\U14|X\(2) & ((\U1|ACC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(4),
	datab => \DATOS[3]~input_o\,
	datac => \U1|ACC\(3),
	datad => \U14|X\(2),
	combout => \U7|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y36_N16
\U7|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux4~1_combout\ = (\U18|OR2_OUT~0_combout\ & (((\U7|Mux4~0_combout\)))) # (!\U18|OR2_OUT~0_combout\ & (\U19|OR2_OUT~0_combout\ & (\U6|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~0_combout\,
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U6|PC\(3),
	datad => \U7|Mux4~0_combout\,
	combout => \U7|Mux4~1_combout\);

-- Location: FF_X39_Y36_N11
\U9|MBR_SIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U7|Mux4~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(3));

-- Location: FF_X36_Y38_N7
\U4|IR_SIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U9|MBR_SIG\(3),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_SIG\(3));

-- Location: LCCOMB_X35_Y38_N30
\U14|X[14]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~102_combout\ = (\U4|IR_SIG\(1) & (\U4|IR_SIG\(3) $ (\U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(3),
	datab => \U4|IR_SIG\(0),
	datac => \U4|IR_SIG\(1),
	combout => \U14|X[14]~102_combout\);

-- Location: LCCOMB_X36_Y38_N8
\U14|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~5_combout\ = (\U4|IR_SIG\(0) & (\U4|IR_SIG\(1) & (\U4|IR_SIG\(3) & \U4|IR_SIG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(2),
	combout => \U14|Equal4~5_combout\);

-- Location: LCCOMB_X35_Y38_N24
\U14|X[14]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~103_combout\ = (\U14|Equal4~5_combout\ & \U14|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal4~5_combout\,
	datac => \U14|Equal0~7_combout\,
	combout => \U14|X[14]~103_combout\);

-- Location: LCCOMB_X35_Y38_N14
\U14|X[14]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~104_combout\ = (\U4|IR_SIG\(3) & (((!\U14|X[14]~102_combout\ & !\U14|X[14]~103_combout\)))) # (!\U4|IR_SIG\(3) & ((\U14|X[14]~102_combout\ & ((!\U14|X[14]~103_combout\))) # (!\U14|X[14]~102_combout\ & (\U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(3),
	datab => \U13|cuenta\(0),
	datac => \U14|X[14]~102_combout\,
	datad => \U14|X[14]~103_combout\,
	combout => \U14|X[14]~104_combout\);

-- Location: LCCOMB_X36_Y38_N16
\U14|X[14]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~97_combout\ = (\U4|IR_SIG\(1) & (\U4|IR_SIG\(3) $ (\U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~97_combout\);

-- Location: LCCOMB_X36_Y38_N10
\U14|X[14]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~98_combout\ = (\U14|X[14]~97_combout\ & (\U13|cuenta\(0))) # (!\U14|X[14]~97_combout\ & (((!\U14|Equal0~7_combout\) # (!\U14|Equal4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|X[14]~97_combout\,
	datac => \U14|Equal4~5_combout\,
	datad => \U14|Equal0~7_combout\,
	combout => \U14|X[14]~98_combout\);

-- Location: LCCOMB_X36_Y38_N26
\U14|X[14]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~153_combout\ = (\U4|IR_SIG\(1) & (\U13|cuenta\(0) & \U4|IR_SIG\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_SIG\(1),
	datac => \U13|cuenta\(0),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~153_combout\);

-- Location: LCCOMB_X36_Y38_N4
\U14|X[14]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~154_combout\ = (\U4|IR_SIG\(1) & (!\U4|IR_SIG\(0) & ((!\U14|Equal4~5_combout\) # (!\U14|Equal0~7_combout\)))) # (!\U4|IR_SIG\(1) & (\U14|Equal0~7_combout\ & (\U14|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~7_combout\,
	datab => \U4|IR_SIG\(1),
	datac => \U14|Equal4~5_combout\,
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~154_combout\);

-- Location: LCCOMB_X36_Y38_N28
\U14|X[14]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~100_combout\ = (\U4|IR_SIG\(3) & ((\U14|X[14]~153_combout\) # ((!\U14|X[14]~154_combout\ & !\U4|IR_SIG\(1))))) # (!\U4|IR_SIG\(3) & ((\U14|X[14]~154_combout\ $ (!\U4|IR_SIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~153_combout\,
	datab => \U14|X[14]~154_combout\,
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[14]~100_combout\);

-- Location: LCCOMB_X36_Y38_N18
\U14|X[14]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~101_combout\ = (\U13|cuenta\(1) & ((\U14|X[14]~98_combout\) # ((\U4|IR_SIG\(2))))) # (!\U13|cuenta\(1) & (((\U14|X[14]~100_combout\ & !\U4|IR_SIG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~98_combout\,
	datab => \U14|X[14]~100_combout\,
	datac => \U13|cuenta\(1),
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[14]~101_combout\);

-- Location: LCCOMB_X36_Y38_N22
\U14|X[14]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~94_combout\ = (\U4|IR_SIG\(1) & (((\U4|IR_SIG\(0))))) # (!\U4|IR_SIG\(1) & ((\U4|IR_SIG\(0) & ((\U2|CCRZ~q\))) # (!\U4|IR_SIG\(0) & (\U2|CCRC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CCRC~q\,
	datab => \U4|IR_SIG\(1),
	datac => \U2|CCRZ~q\,
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~94_combout\);

-- Location: LCCOMB_X36_Y38_N0
\U14|X[14]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~95_combout\ = (\U14|X[14]~94_combout\ & (((!\U4|IR_SIG\(1)) # (!\U14|Equal4~5_combout\)) # (!\U14|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~7_combout\,
	datab => \U14|Equal4~5_combout\,
	datac => \U14|X[14]~94_combout\,
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[14]~95_combout\);

-- Location: LCCOMB_X36_Y38_N14
\U14|X[14]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~96_combout\ = (\U14|X[14]~95_combout\ & ((\U4|IR_SIG\(3) & (\U13|cuenta\(0))) # (!\U4|IR_SIG\(3) & ((\U4|IR_SIG\(1)))))) # (!\U14|X[14]~95_combout\ & (((\U4|IR_SIG\(3) & !\U4|IR_SIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|X[14]~95_combout\,
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[14]~96_combout\);

-- Location: LCCOMB_X36_Y38_N20
\U14|X[14]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~105_combout\ = (\U14|X[14]~101_combout\ & ((\U14|X[14]~104_combout\) # ((!\U4|IR_SIG\(2))))) # (!\U14|X[14]~101_combout\ & (((\U14|X[14]~96_combout\ & \U4|IR_SIG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~104_combout\,
	datab => \U14|X[14]~101_combout\,
	datac => \U14|X[14]~96_combout\,
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[14]~105_combout\);

-- Location: LCCOMB_X35_Y37_N2
\U14|X[14]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~91_combout\ = (\U14|Equal4~1_combout\ & (((!\U13|Add0~0_combout\)))) # (!\U14|Equal4~1_combout\ & (\U14|Equal4~5_combout\ & (\U14|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~5_combout\,
	datab => \U14|Equal0~7_combout\,
	datac => \U13|Add0~0_combout\,
	datad => \U14|Equal4~1_combout\,
	combout => \U14|X[14]~91_combout\);

-- Location: LCCOMB_X35_Y38_N16
\U14|X[14]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~92_combout\ = (\U13|cuenta\(3) & (\U13|cuenta\(2) & !\U14|X[14]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(2),
	datad => \U14|X[14]~91_combout\,
	combout => \U14|X[14]~92_combout\);

-- Location: LCCOMB_X36_Y38_N6
\U14|X[14]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~166_combout\ = (\U4|IR_SIG\(3) & (((!\U4|IR_SIG\(1))))) # (!\U4|IR_SIG\(3) & ((\U13|cuenta\(1)) # ((\U4|IR_SIG\(1) & \U4|IR_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~166_combout\);

-- Location: LCCOMB_X36_Y38_N24
\U14|X[14]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~167_combout\ = (\U14|X[14]~166_combout\ & (\U4|IR_SIG\(2) $ (((!\U4|IR_SIG\(0)) # (!\U4|IR_SIG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~166_combout\,
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~167_combout\);

-- Location: LCCOMB_X35_Y38_N0
\U14|X[14]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~163_combout\ = (!\U13|cuenta\(3) & (\U13|cuenta\(2) & \U14|X[14]~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(2),
	datad => \U14|X[14]~167_combout\,
	combout => \U14|X[14]~163_combout\);

-- Location: LCCOMB_X35_Y38_N20
\U14|X[14]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~106_combout\ = (\U14|X[14]~92_combout\) # ((\U14|X[14]~163_combout\) # ((\U14|X[14]~105_combout\ & \U14|X[17]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~105_combout\,
	datab => \U14|X[14]~92_combout\,
	datac => \U14|X[17]~90_combout\,
	datad => \U14|X[14]~163_combout\,
	combout => \U14|X[14]~106_combout\);

-- Location: LCCOMB_X37_Y35_N18
\U14|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~11_combout\ = (\U14|X[0]~78_combout\ & !\U14|X[14]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[0]~78_combout\,
	datac => \U14|X[14]~106_combout\,
	combout => \U14|comb~11_combout\);

-- Location: LCCOMB_X37_Y35_N8
\U14|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~12_combout\ = (\U14|X[0]~78_combout\ & \U14|X[14]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[0]~78_combout\,
	datac => \U14|X[14]~106_combout\,
	combout => \U14|comb~12_combout\);

-- Location: LCCOMB_X37_Y35_N10
\U14|X[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(14) = (!\U14|comb~11_combout\ & ((\U14|comb~12_combout\) # (\U14|X\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~11_combout\,
	datac => \U14|comb~12_combout\,
	datad => \U14|X\(14),
	combout => \U14|X\(14));

-- Location: LCCOMB_X34_Y35_N4
\U13|cuenta~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~3_combout\ = (!\U14|X\(14) & (\U13|cuenta\(2) $ (((\U13|cuenta\(1) & \U13|cuenta\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(14),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(0),
	combout => \U13|cuenta~3_combout\);

-- Location: FF_X34_Y35_N5
\U13|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U13|cuenta~3_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U13|cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(2));

-- Location: LCCOMB_X37_Y37_N20
\U14|X[0]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~70_combout\ = (\U13|cuenta\(1) & ((\U13|cuenta\(0) & ((\U14|Equal4~5_combout\))) # (!\U13|cuenta\(0) & (\U13|cuenta\(2))))) # (!\U13|cuenta\(1) & (\U13|cuenta\(2) & ((\U14|Equal4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(0),
	datad => \U14|Equal4~5_combout\,
	combout => \U14|X[0]~70_combout\);

-- Location: LCCOMB_X36_Y37_N30
\U14|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~0_combout\ = (\U4|IR_SIG\(1) & (!\U4|IR_SIG\(3) & (!\U4|IR_SIG\(2) & !\U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(0),
	combout => \U14|Equal4~0_combout\);

-- Location: LCCOMB_X36_Y37_N10
\U14|X[0]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~71_combout\ = (\U14|X[0]~70_combout\ & (!\U13|cuenta\(3) & ((\U14|Equal4~0_combout\) # (\U14|Equal4~5_combout\)))) # (!\U14|X[0]~70_combout\ & (\U13|cuenta\(3) & ((\U14|Equal4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~70_combout\,
	datab => \U13|cuenta\(3),
	datac => \U14|Equal4~0_combout\,
	datad => \U14|Equal4~5_combout\,
	combout => \U14|X[0]~71_combout\);

-- Location: LCCOMB_X37_Y37_N28
\U14|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~5_combout\ = (!\U13|cuenta\(2) & (!\U13|cuenta\(1) & (!\U13|cuenta\(0) & \U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(0),
	datad => \U13|cuenta\(3),
	combout => \U14|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y35_N8
\U14|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~0_combout\ = (!\U13|cuenta\(0) & (\U13|cuenta\(1) & (\U13|cuenta\(3) & !\U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y37_N22
\U14|X[0]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~151_combout\ = (\U14|Equal0~5_combout\) # ((\U14|Equal0~0_combout\) # ((\U13|cuenta\(3) & \U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U14|Equal0~5_combout\,
	datac => \U14|Equal0~0_combout\,
	datad => \U13|cuenta\(2),
	combout => \U14|X[0]~151_combout\);

-- Location: LCCOMB_X37_Y37_N14
\U14|X[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~69_combout\ = (\U14|X[0]~151_combout\ & \U14|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~151_combout\,
	datac => \U14|Equal4~1_combout\,
	combout => \U14|X[0]~69_combout\);

-- Location: LCCOMB_X37_Y37_N26
\U14|X[0]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~74_combout\ = (\U13|cuenta\(3)) # ((\U13|cuenta\(1)) # (\U13|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U13|cuenta\(1),
	datad => \U13|cuenta\(2),
	combout => \U14|X[0]~74_combout\);

-- Location: LCCOMB_X36_Y35_N2
\U14|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~1_combout\ = (\U13|cuenta\(0) & (\U13|cuenta\(1) & (\U13|cuenta\(3) & !\U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y37_N24
\U14|X[0]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~75_combout\ = (\U14|Equal4~1_combout\ & ((\U14|Equal0~7_combout\) # (\U14|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal4~1_combout\,
	datac => \U14|Equal0~7_combout\,
	datad => \U14|Equal0~1_combout\,
	combout => \U14|X[0]~75_combout\);

-- Location: LCCOMB_X37_Y37_N12
\U14|X[0]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~72_combout\ = (!\U14|Equal0~7_combout\ & !\U14|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~7_combout\,
	datad => \U14|Equal0~3_combout\,
	combout => \U14|X[0]~72_combout\);

-- Location: LCCOMB_X35_Y37_N22
\U14|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~4_combout\ = (\U4|IR_SIG\(2) & (!\U4|IR_SIG\(1) & (\U4|IR_SIG\(0) & \U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|Equal4~4_combout\);

-- Location: LCCOMB_X37_Y37_N30
\U14|X[0]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~73_combout\ = (\U14|Equal4~4_combout\ & (((\U14|Equal0~5_combout\ & !\U2|CCRZ~q\)) # (!\U14|X[0]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~72_combout\,
	datab => \U14|Equal0~5_combout\,
	datac => \U2|CCRZ~q\,
	datad => \U14|Equal4~4_combout\,
	combout => \U14|X[0]~73_combout\);

-- Location: LCCOMB_X37_Y37_N0
\U14|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~2_combout\ = (\U14|Equal0~5_combout\ & (\U2|CCRZ~q\ & \U14|Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~5_combout\,
	datac => \U2|CCRZ~q\,
	datad => \U14|Equal4~4_combout\,
	combout => \U14|process_0~2_combout\);

-- Location: LCCOMB_X37_Y37_N8
\U14|X[0]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~76_combout\ = ((\U14|X[0]~75_combout\) # ((\U14|X[0]~73_combout\) # (\U14|process_0~2_combout\))) # (!\U14|X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~74_combout\,
	datab => \U14|X[0]~75_combout\,
	datac => \U14|X[0]~73_combout\,
	datad => \U14|process_0~2_combout\,
	combout => \U14|X[0]~76_combout\);

-- Location: LCCOMB_X37_Y37_N2
\U14|X[0]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~77_combout\ = (\U14|X[0]~71_combout\) # ((\U14|X[0]~69_combout\) # ((\U14|X[0]~76_combout\) # (\U14|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~71_combout\,
	datab => \U14|X[0]~69_combout\,
	datac => \U14|X[0]~76_combout\,
	datad => \U14|Equal0~6_combout\,
	combout => \U14|X[0]~77_combout\);

-- Location: LCCOMB_X36_Y35_N18
\U14|X[0]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~169_combout\ = (\U14|X[7]~88_combout\ & ((\U14|Equal0~0_combout\) # (\U14|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[7]~88_combout\,
	datac => \U14|Equal0~0_combout\,
	datad => \U14|Equal0~1_combout\,
	combout => \U14|X[0]~169_combout\);

-- Location: LCCOMB_X37_Y37_N6
\U14|X[0]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~161_combout\ = (\U13|cuenta\(3)) # (\U13|cuenta\(2) $ (((!\U13|cuenta\(0)) # (!\U13|cuenta\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(0),
	datad => \U13|cuenta\(3),
	combout => \U14|X[0]~161_combout\);

-- Location: LCCOMB_X36_Y37_N16
\U14|X[0]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~159_combout\ = (\U4|IR_SIG\(3) & (\U4|IR_SIG\(2) & (\U4|IR_SIG\(1) $ (\U4|IR_SIG\(0))))) # (!\U4|IR_SIG\(3) & (!\U4|IR_SIG\(1) & (!\U4|IR_SIG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[0]~159_combout\);

-- Location: LCCOMB_X36_Y37_N22
\U14|X[0]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~160_combout\ = (\U13|cuenta\(3)) # ((\U13|cuenta\(0) & ((\U13|cuenta\(2)) # (!\U13|cuenta\(1)))) # (!\U13|cuenta\(0) & ((\U13|cuenta\(1)) # (!\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|X[0]~160_combout\);

-- Location: LCCOMB_X36_Y37_N18
\U14|X[0]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~158_combout\ = (\U4|IR_SIG\(1) & (!\U4|IR_SIG\(3) & (\U4|IR_SIG\(2) $ (!\U4|IR_SIG\(0))))) # (!\U4|IR_SIG\(1) & (\U4|IR_SIG\(3) & (!\U4|IR_SIG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[0]~158_combout\);

-- Location: LCCOMB_X36_Y37_N14
\U14|X[0]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~67_combout\ = (\U14|X[0]~161_combout\ & (((!\U14|X[0]~160_combout\ & \U14|X[0]~158_combout\)))) # (!\U14|X[0]~161_combout\ & ((\U14|X[0]~159_combout\) # ((!\U14|X[0]~160_combout\ & \U14|X[0]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~161_combout\,
	datab => \U14|X[0]~159_combout\,
	datac => \U14|X[0]~160_combout\,
	datad => \U14|X[0]~158_combout\,
	combout => \U14|X[0]~67_combout\);

-- Location: LCCOMB_X36_Y37_N28
\U14|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~2_combout\ = (\U13|cuenta\(0) & (!\U13|cuenta\(3) & (\U13|cuenta\(2) & !\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y37_N12
\U14|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~0_combout\ = (\U14|Equal4~0_combout\ & \U14|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Equal4~0_combout\,
	datad => \U14|Equal0~2_combout\,
	combout => \U14|process_0~0_combout\);

-- Location: LCCOMB_X36_Y37_N0
\U14|X[0]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~68_combout\ = (\U14|X[0]~169_combout\) # ((\U14|process_0~1_combout\) # ((\U14|X[0]~67_combout\) # (\U14|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~169_combout\,
	datab => \U14|process_0~1_combout\,
	datac => \U14|X[0]~67_combout\,
	datad => \U14|process_0~0_combout\,
	combout => \U14|X[0]~68_combout\);

-- Location: LCCOMB_X36_Y37_N4
\U14|X[0]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~162_combout\ = (\U4|IR_SIG\(1) & (\U4|IR_SIG\(2) $ (((\U4|IR_SIG\(3)) # (\U4|IR_SIG\(0)))))) # (!\U4|IR_SIG\(1) & (\U4|IR_SIG\(2) & ((!\U4|IR_SIG\(0)) # (!\U4|IR_SIG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[0]~162_combout\);

-- Location: LCCOMB_X37_Y37_N24
\U14|X[0]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~152_combout\ = ((\U14|Equal0~5_combout\) # ((\U14|Equal0~7_combout\) # (\U14|Equal0~3_combout\))) # (!\U14|X[0]~161_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~161_combout\,
	datab => \U14|Equal0~5_combout\,
	datac => \U14|Equal0~7_combout\,
	datad => \U14|Equal0~3_combout\,
	combout => \U14|X[0]~152_combout\);

-- Location: LCCOMB_X36_Y37_N26
\U14|X[0]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~78_combout\ = (\U14|X[0]~77_combout\) # ((\U14|X[0]~68_combout\) # ((\U14|X[0]~162_combout\ & \U14|X[0]~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~77_combout\,
	datab => \U14|X[0]~68_combout\,
	datac => \U14|X[0]~162_combout\,
	datad => \U14|X[0]~152_combout\,
	combout => \U14|X[0]~78_combout\);

-- Location: LCCOMB_X34_Y35_N22
\U14|X[8]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~83_combout\ = \U4|IR_SIG\(2) $ (((\U4|IR_SIG\(1) & ((\U4|IR_SIG\(0)) # (\U4|IR_SIG\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[8]~83_combout\);

-- Location: LCCOMB_X34_Y35_N8
\U14|X[2]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~115_combout\ = (\U13|cuenta\(1) & (!\U4|IR_SIG\(0) & (\U14|X[8]~80_combout\))) # (!\U13|cuenta\(1) & (((!\U14|X[8]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U13|cuenta\(1),
	datac => \U14|X[8]~80_combout\,
	datad => \U14|X[8]~85_combout\,
	combout => \U14|X[2]~115_combout\);

-- Location: LCCOMB_X34_Y35_N30
\U14|X[2]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~155_combout\ = (\U13|cuenta\(0) & (\U14|X[8]~83_combout\ & ((\U13|cuenta\(1))))) # (!\U13|cuenta\(0) & (((\U14|X[2]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~83_combout\,
	datab => \U13|cuenta\(0),
	datac => \U14|X[2]~115_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X[2]~155_combout\);

-- Location: LCCOMB_X35_Y35_N30
\U14|X[2]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~118_combout\ = (\U13|cuenta\(3) & (!\U13|cuenta\(0) & !\U13|cuenta\(2))) # (!\U13|cuenta\(3) & (\U13|cuenta\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U13|cuenta\(0),
	datad => \U13|cuenta\(2),
	combout => \U14|X[2]~118_combout\);

-- Location: LCCOMB_X35_Y37_N26
\U14|X[2]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~116_combout\ = (!\U4|IR_SIG\(3) & (\U4|IR_SIG\(2) $ (((\U4|IR_SIG\(1) & \U4|IR_SIG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[2]~116_combout\);

-- Location: LCCOMB_X34_Y35_N18
\U14|X[2]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~117_combout\ = (!\U13|cuenta\(2) & (\U13|cuenta\(0) & ((\U14|X[2]~116_combout\) # (!\U13|cuenta\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[2]~116_combout\,
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(0),
	combout => \U14|X[2]~117_combout\);

-- Location: LCCOMB_X35_Y35_N8
\U14|X[2]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~119_combout\ = (\U14|X[2]~117_combout\) # ((\U14|X[2]~118_combout\ & (\U4|IR_SIG\(0) & \U14|X[8]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[2]~118_combout\,
	datab => \U14|X[2]~117_combout\,
	datac => \U4|IR_SIG\(0),
	datad => \U14|X[8]~80_combout\,
	combout => \U14|X[2]~119_combout\);

-- Location: LCCOMB_X35_Y35_N26
\U14|X[2]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~120_combout\ = (\U13|cuenta\(1) & (\U14|X[2]~155_combout\ & ((\U14|X[10]~114_combout\)))) # (!\U13|cuenta\(1) & ((\U14|X[2]~119_combout\) # ((\U14|X[2]~155_combout\ & \U14|X[10]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X[2]~155_combout\,
	datac => \U14|X[2]~119_combout\,
	datad => \U14|X[10]~114_combout\,
	combout => \U14|X[2]~120_combout\);

-- Location: LCCOMB_X35_Y35_N28
\U14|comb~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~23_combout\ = (\U14|X[0]~78_combout\ & !\U14|X[2]~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datac => \U14|X[2]~120_combout\,
	combout => \U14|comb~23_combout\);

-- Location: LCCOMB_X35_Y35_N22
\U14|comb~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~24_combout\ = (\U14|X[0]~78_combout\ & \U14|X[2]~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datac => \U14|X[2]~120_combout\,
	combout => \U14|comb~24_combout\);

-- Location: LCCOMB_X35_Y35_N16
\U14|X[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(2) = (!\U14|comb~23_combout\ & ((\U14|comb~24_combout\) # (\U14|X\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~23_combout\,
	datac => \U14|comb~24_combout\,
	datad => \U14|X\(2),
	combout => \U14|X\(2));

-- Location: LCCOMB_X38_Y36_N28
\U19|OR2_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U19|OR2_OUT~0_combout\ = (!\U14|X\(2) & !\U14|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(2),
	datad => \U14|X\(4),
	combout => \U19|OR2_OUT~0_combout\);

-- Location: IOIBUF_X36_Y39_N29
\DATOS[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATOS(2),
	o => \DATOS[2]~input_o\);

-- Location: LCCOMB_X37_Y36_N20
\U7|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux5~0_combout\ = (\U14|X\(2) & (((\DATOS[2]~input_o\)))) # (!\U14|X\(2) & ((\U14|X\(4) & (\DATOS[2]~input_o\)) # (!\U14|X\(4) & ((\U1|ACC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(2),
	datab => \U14|X\(4),
	datac => \DATOS[2]~input_o\,
	datad => \U1|ACC\(2),
	combout => \U7|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y36_N4
\U7|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux5~1_combout\ = (\U18|OR2_OUT~0_combout\ & (((\U7|Mux5~0_combout\)))) # (!\U18|OR2_OUT~0_combout\ & (\U19|OR2_OUT~0_combout\ & (\U6|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~0_combout\,
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U6|PC\(2),
	datad => \U7|Mux5~0_combout\,
	combout => \U7|Mux5~1_combout\);

-- Location: FF_X39_Y36_N17
\U9|MBR_SIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U7|Mux5~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(2));

-- Location: FF_X36_Y38_N25
\U4|IR_SIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U9|MBR_SIG\(2),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U14|X\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_SIG\(2));

-- Location: LCCOMB_X35_Y37_N28
\U14|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~1_combout\ = (\U4|IR_SIG\(2) & (\U4|IR_SIG\(1) & (!\U4|IR_SIG\(0) & \U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|Equal4~1_combout\);

-- Location: LCCOMB_X36_Y35_N26
\U14|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~3_combout\ = (\U14|Equal4~1_combout\ & \U14|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Equal4~1_combout\,
	datad => \U14|Equal0~1_combout\,
	combout => \U14|process_0~3_combout\);

-- Location: LCCOMB_X36_Y35_N4
\U14|comb~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~21_combout\ = (\U14|X[0]~78_combout\ & ((!\U14|Equal4~1_combout\) # (!\U14|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~1_combout\,
	datac => \U14|Equal4~1_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~21_combout\);

-- Location: LCCOMB_X36_Y35_N6
\U14|X[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(4) = (!\U14|comb~21_combout\ & ((\U14|process_0~3_combout\) # (\U14|X\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|process_0~3_combout\,
	datac => \U14|comb~21_combout\,
	datad => \U14|X\(4),
	combout => \U14|X\(4));

-- Location: LCCOMB_X37_Y35_N2
\U18|OR2_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U18|OR2_OUT~0_combout\ = (!\U14|X\(4) & !\U14|X\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(4),
	datad => \U14|X\(3),
	combout => \U18|OR2_OUT~0_combout\);

-- Location: IOIBUF_X34_Y39_N22
\DATOS[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATOS(0),
	o => \DATOS[0]~input_o\);

-- Location: LCCOMB_X38_Y36_N10
\U7|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux7~0_combout\ = (\U19|OR2_OUT~0_combout\ & (((\U1|ACC\(0) & \U18|OR2_OUT~0_combout\)))) # (!\U19|OR2_OUT~0_combout\ & ((\DATOS[0]~input_o\) # ((!\U18|OR2_OUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATOS[0]~input_o\,
	datab => \U19|OR2_OUT~0_combout\,
	datac => \U1|ACC\(0),
	datad => \U18|OR2_OUT~0_combout\,
	combout => \U7|Mux7~0_combout\);

-- Location: LCCOMB_X37_Y36_N26
\U7|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux7~1_combout\ = (\U18|OR2_OUT~0_combout\ & (((\U7|Mux7~0_combout\)))) # (!\U18|OR2_OUT~0_combout\ & ((\U7|Mux7~0_combout\ & (\U6|PC\(8))) # (!\U7|Mux7~0_combout\ & ((\U6|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~0_combout\,
	datab => \U6|PC\(8),
	datac => \U7|Mux7~0_combout\,
	datad => \U6|PC\(0),
	combout => \U7|Mux7~1_combout\);

-- Location: FF_X39_Y36_N1
\U9|MBR_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U7|Mux7~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(0));

-- Location: LCCOMB_X35_Y38_N10
\U14|UC_OUT_RW~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~0_combout\ = (!\U4|IR_SIG\(0) & ((\U13|cuenta\(2) & (\U4|IR_SIG\(2) & !\U13|cuenta\(1))) # (!\U13|cuenta\(2) & ((\U13|cuenta\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(0),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|UC_OUT_RW~0_combout\);

-- Location: LCCOMB_X35_Y38_N2
\U14|UC_OUT_RW~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~1_combout\ = ((\U13|cuenta\(0)) # ((!\U14|X[1]~79_combout\) # (!\U4|IR_SIG\(1)))) # (!\U14|UC_OUT_RW~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|UC_OUT_RW~0_combout\,
	datab => \U13|cuenta\(0),
	datac => \U4|IR_SIG\(1),
	datad => \U14|X[1]~79_combout\,
	combout => \U14|UC_OUT_RW~1_combout\);

-- Location: LCCOMB_X34_Y38_N10
\U14|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~3_combout\ = (\U14|UC_OUT_RW~1_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|UC_OUT_RW~1_combout\,
	datac => \U14|X[0]~78_combout\,
	combout => \U14|comb~3_combout\);

-- Location: LCCOMB_X34_Y38_N8
\U14|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~2_combout\ = (!\U14|UC_OUT_RW~1_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|UC_OUT_RW~1_combout\,
	datac => \U14|X[0]~78_combout\,
	combout => \U14|comb~2_combout\);

-- Location: LCCOMB_X34_Y38_N24
\U14|UC_OUT_RW\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~combout\ = (!\U14|comb~2_combout\ & ((\U14|comb~3_combout\) # (\U14|UC_OUT_RW~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~3_combout\,
	datac => \U14|comb~2_combout\,
	datad => \U14|UC_OUT_RW~combout\,
	combout => \U14|UC_OUT_RW~combout\);

-- Location: LCCOMB_X35_Y36_N4
\U5|SP[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[0]~8_combout\ = \U5|SP\(0) $ (VCC)
-- \U5|SP[0]~9\ = CARRY(\U5|SP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|SP\(0),
	datad => VCC,
	combout => \U5|SP[0]~8_combout\,
	cout => \U5|SP[0]~9\);

-- Location: LCCOMB_X35_Y35_N6
\U14|X[13]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[13]~110_combout\ = (!\U4|IR_SIG\(0) & ((\U13|cuenta\(1) & (!\U13|cuenta\(0) & !\U13|cuenta\(2))) # (!\U13|cuenta\(1) & (\U13|cuenta\(0) & \U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(0),
	datac => \U4|IR_SIG\(0),
	datad => \U13|cuenta\(2),
	combout => \U14|X[13]~110_combout\);

-- Location: LCCOMB_X35_Y35_N18
\U14|comb~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~18_combout\ = (\U13|cuenta\(3) & (\U14|X[8]~80_combout\ & (\U14|X[0]~78_combout\ & \U14|X[13]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U14|X[8]~80_combout\,
	datac => \U14|X[0]~78_combout\,
	datad => \U14|X[13]~110_combout\,
	combout => \U14|comb~18_combout\);

-- Location: LCCOMB_X35_Y35_N4
\U14|comb~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~17_combout\ = (\U14|X[0]~78_combout\ & (((!\U14|X[13]~110_combout\) # (!\U14|X[8]~80_combout\)) # (!\U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U14|X[8]~80_combout\,
	datac => \U14|X[0]~78_combout\,
	datad => \U14|X[13]~110_combout\,
	combout => \U14|comb~17_combout\);

-- Location: LCCOMB_X35_Y35_N10
\U14|X[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(13) = (!\U14|comb~17_combout\ & ((\U14|comb~18_combout\) # (\U14|X\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~18_combout\,
	datac => \U14|comb~17_combout\,
	datad => \U14|X\(13),
	combout => \U14|X\(13));

-- Location: LCCOMB_X35_Y38_N22
\U14|X[12]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[12]~111_combout\ = (\U13|cuenta\(0) & \U4|IR_SIG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(0),
	datac => \U4|IR_SIG\(1),
	combout => \U14|X[12]~111_combout\);

-- Location: LCCOMB_X35_Y38_N28
\U14|X[12]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[12]~112_combout\ = (\U4|IR_SIG\(0) & (\U4|IR_SIG\(3) & (\U13|cuenta\(1) $ (\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(2),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[12]~112_combout\);

-- Location: LCCOMB_X35_Y38_N26
\U14|X[12]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[12]~113_combout\ = (\U4|IR_SIG\(2) & (!\U13|cuenta\(3) & (\U14|X[12]~111_combout\ & \U14|X[12]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U13|cuenta\(3),
	datac => \U14|X[12]~111_combout\,
	datad => \U14|X[12]~112_combout\,
	combout => \U14|X[12]~113_combout\);

-- Location: LCCOMB_X36_Y34_N12
\U14|comb~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~19_combout\ = (!\U14|X[12]~113_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[12]~113_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~19_combout\);

-- Location: LCCOMB_X36_Y34_N22
\U14|comb~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~20_combout\ = (\U14|X[12]~113_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[12]~113_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~20_combout\);

-- Location: LCCOMB_X36_Y34_N16
\U14|X[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(12) = (!\U14|comb~19_combout\ & ((\U14|comb~20_combout\) # (\U14|X\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~19_combout\,
	datac => \U14|comb~20_combout\,
	datad => \U14|X\(12),
	combout => \U14|X\(12));

-- Location: LCCOMB_X35_Y36_N28
\U5|SP[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[2]~10_combout\ = (!\U14|X\(13) & !\U14|X\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(13),
	datad => \U14|X\(12),
	combout => \U5|SP[2]~10_combout\);

-- Location: LCCOMB_X36_Y37_N8
\U14|comb~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~37_combout\ = (\U14|X[0]~78_combout\ & ((!\U14|Equal0~2_combout\) # (!\U14|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~78_combout\,
	datac => \U14|Equal4~0_combout\,
	datad => \U14|Equal0~2_combout\,
	combout => \U14|comb~37_combout\);

-- Location: LCCOMB_X36_Y37_N2
\U14|X[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(11) = (!\U14|comb~37_combout\ & ((\U14|process_0~0_combout\) # (\U14|X\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|process_0~0_combout\,
	datac => \U14|comb~37_combout\,
	datad => \U14|X\(11),
	combout => \U14|X\(11));

-- Location: LCCOMB_X35_Y36_N26
\U5|SP[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[2]~11_combout\ = (\U14|X\(13) & (!\U14|X\(11) & !\U14|X\(12))) # (!\U14|X\(13) & (\U14|X\(11) $ (\U14|X\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(13),
	datac => \U14|X\(11),
	datad => \U14|X\(12),
	combout => \U5|SP[2]~11_combout\);

-- Location: FF_X35_Y36_N5
\U5|SP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|SP[0]~8_combout\,
	asdata => \U9|MBR_SIG\(0),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U5|SP[2]~10_combout\,
	ena => \U5|SP[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(0));

-- Location: LCCOMB_X36_Y35_N10
\U14|X[9]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[9]~81_combout\ = (\U13|cuenta\(2) & (!\U13|cuenta\(3) & \U4|IR_SIG\(0))) # (!\U13|cuenta\(2) & (\U13|cuenta\(3) & !\U4|IR_SIG\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datac => \U13|cuenta\(3),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[9]~81_combout\);

-- Location: LCCOMB_X36_Y35_N24
\U14|X[9]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[9]~82_combout\ = (\U14|X[8]~80_combout\ & (\U14|X[9]~81_combout\ & (\U13|cuenta\(1) $ (!\U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~80_combout\,
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(0),
	datad => \U14|X[9]~81_combout\,
	combout => \U14|X[9]~82_combout\);

-- Location: LCCOMB_X36_Y34_N18
\U14|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~5_combout\ = (\U14|X[9]~82_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[9]~82_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~5_combout\);

-- Location: LCCOMB_X36_Y34_N8
\U14|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~4_combout\ = (!\U14|X[9]~82_combout\ & \U14|X[0]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[9]~82_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~4_combout\);

-- Location: LCCOMB_X36_Y34_N20
\U14|X[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(9) = (!\U14|comb~4_combout\ & ((\U14|comb~5_combout\) # (\U14|X\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~5_combout\,
	datac => \U14|comb~4_combout\,
	datad => \U14|X\(9),
	combout => \U14|X\(9));

-- Location: LCCOMB_X36_Y36_N0
\U12|MAR_SIG[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[0]~0_combout\ = (\U14|X\(9) & ((\U5|SP\(0)))) # (!\U14|X\(9) & (\U6|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(0),
	datab => \U5|SP\(0),
	datad => \U14|X\(9),
	combout => \U12|MAR_SIG[0]~0_combout\);

-- Location: LCCOMB_X34_Y35_N12
\U14|X[8]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~84_combout\ = (\U13|cuenta\(1) & (((\U14|X[8]~83_combout\)))) # (!\U13|cuenta\(1) & (!\U4|IR_SIG\(0) & (\U14|X[8]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U14|X[8]~80_combout\,
	datac => \U14|X[8]~83_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X[8]~84_combout\);

-- Location: LCCOMB_X34_Y35_N24
\U14|X[8]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~86_combout\ = (\U13|cuenta\(0) & (((\U14|X[8]~85_combout\ & !\U13|cuenta\(2))) # (!\U13|cuenta\(1)))) # (!\U13|cuenta\(0) & (((\U13|cuenta\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~85_combout\,
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|X[8]~86_combout\);

-- Location: LCCOMB_X34_Y35_N14
\U14|X[8]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~87_combout\ = (!\U13|cuenta\(3) & ((\U13|cuenta\(2) & (\U14|X[8]~84_combout\ & \U14|X[8]~86_combout\)) # (!\U13|cuenta\(2) & ((!\U14|X[8]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~84_combout\,
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(3),
	datad => \U14|X[8]~86_combout\,
	combout => \U14|X[8]~87_combout\);

-- Location: LCCOMB_X36_Y36_N22
\U14|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~7_combout\ = (\U14|X[0]~78_combout\ & \U14|X[8]~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~78_combout\,
	datad => \U14|X[8]~87_combout\,
	combout => \U14|comb~7_combout\);

-- Location: LCCOMB_X36_Y36_N4
\U14|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~6_combout\ = (\U14|X[0]~78_combout\ & !\U14|X[8]~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~78_combout\,
	datad => \U14|X[8]~87_combout\,
	combout => \U14|comb~6_combout\);

-- Location: LCCOMB_X36_Y36_N6
\U14|X[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(8) = (!\U14|comb~6_combout\ & ((\U14|comb~7_combout\) # (\U14|X\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~7_combout\,
	datac => \U14|comb~6_combout\,
	datad => \U14|X\(8),
	combout => \U14|X\(8));

-- Location: LCCOMB_X36_Y36_N12
\U15|OR2_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U15|OR2_OUT~0_combout\ = (!\U14|X\(9) & !\U14|X\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(9),
	datad => \U14|X\(8),
	combout => \U15|OR2_OUT~0_combout\);

-- Location: LCCOMB_X36_Y35_N14
\U14|X[7]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[7]~89_combout\ = (\U13|cuenta\(0) & (\U14|X[8]~80_combout\ & ((\U4|IR_SIG\(0))))) # (!\U13|cuenta\(0) & (((\U14|X[7]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~80_combout\,
	datab => \U14|X[7]~88_combout\,
	datac => \U13|cuenta\(0),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[7]~89_combout\);

-- Location: LCCOMB_X34_Y36_N14
\U14|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~9_combout\ = (!\U13|cuenta\(1) & (\U14|X[7]~89_combout\ & (\U14|X[17]~90_combout\ & \U14|X[0]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X[7]~89_combout\,
	datac => \U14|X[17]~90_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~9_combout\);

-- Location: LCCOMB_X34_Y36_N24
\U14|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~8_combout\ = (\U14|X[0]~78_combout\ & ((\U13|cuenta\(1)) # ((!\U14|X[17]~90_combout\) # (!\U14|X[7]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X[7]~89_combout\,
	datac => \U14|X[17]~90_combout\,
	datad => \U14|X[0]~78_combout\,
	combout => \U14|comb~8_combout\);

-- Location: LCCOMB_X35_Y36_N20
\U14|X[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(7) = (!\U14|comb~8_combout\ & ((\U14|comb~9_combout\) # (\U14|X\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~9_combout\,
	datab => \U14|comb~8_combout\,
	datad => \U14|X\(7),
	combout => \U14|X\(7));

-- Location: LCCOMB_X36_Y36_N14
\U16|OR3_OUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U16|OR3_OUT~combout\ = (\U14|X\(8)) # ((\U14|X\(7)) # (\U14|X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(8),
	datab => \U14|X\(7),
	datad => \U14|X\(9),
	combout => \U16|OR3_OUT~combout\);

-- Location: FF_X36_Y36_N1
\U12|MAR_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG[0]~0_combout\,
	asdata => \U9|MBR_SIG\(0),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U15|OR2_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(0));

-- Location: LCCOMB_X35_Y36_N6
\U5|SP[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[1]~12_combout\ = (\U5|SP\(1) & ((\U14|X\(13) & (\U5|SP[0]~9\ & VCC)) # (!\U14|X\(13) & (!\U5|SP[0]~9\)))) # (!\U5|SP\(1) & ((\U14|X\(13) & (!\U5|SP[0]~9\)) # (!\U14|X\(13) & ((\U5|SP[0]~9\) # (GND)))))
-- \U5|SP[1]~13\ = CARRY((\U5|SP\(1) & (!\U14|X\(13) & !\U5|SP[0]~9\)) # (!\U5|SP\(1) & ((!\U5|SP[0]~9\) # (!\U14|X\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(1),
	datab => \U14|X\(13),
	datad => VCC,
	cin => \U5|SP[0]~9\,
	combout => \U5|SP[1]~12_combout\,
	cout => \U5|SP[1]~13\);

-- Location: FF_X35_Y36_N7
\U5|SP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|SP[1]~12_combout\,
	asdata => \U9|MBR_SIG\(1),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U5|SP[2]~10_combout\,
	ena => \U5|SP[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(1));

-- Location: LCCOMB_X36_Y36_N18
\U12|MAR_SIG[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[1]~1_combout\ = (\U14|X\(9) & ((\U5|SP\(1)))) # (!\U14|X\(9) & (\U6|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(1),
	datab => \U14|X\(9),
	datad => \U5|SP\(1),
	combout => \U12|MAR_SIG[1]~1_combout\);

-- Location: FF_X36_Y36_N19
\U12|MAR_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG[1]~1_combout\,
	asdata => \U9|MBR_SIG\(1),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U15|OR2_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(1));

-- Location: LCCOMB_X35_Y36_N8
\U5|SP[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[2]~14_combout\ = ((\U5|SP\(2) $ (\U14|X\(13) $ (!\U5|SP[1]~13\)))) # (GND)
-- \U5|SP[2]~15\ = CARRY((\U5|SP\(2) & ((\U14|X\(13)) # (!\U5|SP[1]~13\))) # (!\U5|SP\(2) & (\U14|X\(13) & !\U5|SP[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(2),
	datab => \U14|X\(13),
	datad => VCC,
	cin => \U5|SP[1]~13\,
	combout => \U5|SP[2]~14_combout\,
	cout => \U5|SP[2]~15\);

-- Location: FF_X35_Y36_N9
\U5|SP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|SP[2]~14_combout\,
	asdata => \U9|MBR_SIG\(2),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U5|SP[2]~10_combout\,
	ena => \U5|SP[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(2));

-- Location: LCCOMB_X36_Y36_N8
\U12|MAR_SIG[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[2]~2_combout\ = (\U14|X\(9) & (\U5|SP\(2))) # (!\U14|X\(9) & ((\U6|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(2),
	datab => \U14|X\(9),
	datad => \U6|PC\(2),
	combout => \U12|MAR_SIG[2]~2_combout\);

-- Location: FF_X36_Y36_N9
\U12|MAR_SIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG[2]~2_combout\,
	asdata => \U9|MBR_SIG\(2),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U15|OR2_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(2));

-- Location: LCCOMB_X35_Y36_N10
\U5|SP[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[3]~16_combout\ = (\U5|SP\(3) & ((\U14|X\(13) & (\U5|SP[2]~15\ & VCC)) # (!\U14|X\(13) & (!\U5|SP[2]~15\)))) # (!\U5|SP\(3) & ((\U14|X\(13) & (!\U5|SP[2]~15\)) # (!\U14|X\(13) & ((\U5|SP[2]~15\) # (GND)))))
-- \U5|SP[3]~17\ = CARRY((\U5|SP\(3) & (!\U14|X\(13) & !\U5|SP[2]~15\)) # (!\U5|SP\(3) & ((!\U5|SP[2]~15\) # (!\U14|X\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(3),
	datab => \U14|X\(13),
	datad => VCC,
	cin => \U5|SP[2]~15\,
	combout => \U5|SP[3]~16_combout\,
	cout => \U5|SP[3]~17\);

-- Location: FF_X35_Y36_N11
\U5|SP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|SP[3]~16_combout\,
	asdata => \U9|MBR_SIG\(3),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U5|SP[2]~10_combout\,
	ena => \U5|SP[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(3));

-- Location: LCCOMB_X36_Y36_N30
\U12|MAR_SIG[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[3]~3_combout\ = (\U14|X\(9) & (\U5|SP\(3))) # (!\U14|X\(9) & ((\U6|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(3),
	datab => \U14|X\(9),
	datad => \U6|PC\(3),
	combout => \U12|MAR_SIG[3]~3_combout\);

-- Location: FF_X36_Y36_N31
\U12|MAR_SIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG[3]~3_combout\,
	asdata => \U9|MBR_SIG\(3),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U15|OR2_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(3));

-- Location: LCCOMB_X35_Y36_N12
\U5|SP[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[4]~18_combout\ = ((\U5|SP\(4) $ (\U14|X\(13) $ (!\U5|SP[3]~17\)))) # (GND)
-- \U5|SP[4]~19\ = CARRY((\U5|SP\(4) & ((\U14|X\(13)) # (!\U5|SP[3]~17\))) # (!\U5|SP\(4) & (\U14|X\(13) & !\U5|SP[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(4),
	datab => \U14|X\(13),
	datad => VCC,
	cin => \U5|SP[3]~17\,
	combout => \U5|SP[4]~18_combout\,
	cout => \U5|SP[4]~19\);

-- Location: FF_X35_Y36_N13
\U5|SP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|SP[4]~18_combout\,
	asdata => \U9|MBR_SIG\(4),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U5|SP[2]~10_combout\,
	ena => \U5|SP[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(4));

-- Location: LCCOMB_X36_Y36_N20
\U12|MAR_SIG[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[4]~4_combout\ = (\U14|X\(9) & ((\U5|SP\(4)))) # (!\U14|X\(9) & (\U6|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(4),
	datab => \U14|X\(9),
	datad => \U5|SP\(4),
	combout => \U12|MAR_SIG[4]~4_combout\);

-- Location: FF_X36_Y36_N21
\U12|MAR_SIG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG[4]~4_combout\,
	asdata => \U9|MBR_SIG\(4),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U15|OR2_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(4));

-- Location: LCCOMB_X35_Y36_N14
\U5|SP[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[5]~20_combout\ = (\U14|X\(13) & ((\U5|SP\(5) & (\U5|SP[4]~19\ & VCC)) # (!\U5|SP\(5) & (!\U5|SP[4]~19\)))) # (!\U14|X\(13) & ((\U5|SP\(5) & (!\U5|SP[4]~19\)) # (!\U5|SP\(5) & ((\U5|SP[4]~19\) # (GND)))))
-- \U5|SP[5]~21\ = CARRY((\U14|X\(13) & (!\U5|SP\(5) & !\U5|SP[4]~19\)) # (!\U14|X\(13) & ((!\U5|SP[4]~19\) # (!\U5|SP\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(5),
	datad => VCC,
	cin => \U5|SP[4]~19\,
	combout => \U5|SP[5]~20_combout\,
	cout => \U5|SP[5]~21\);

-- Location: FF_X35_Y36_N15
\U5|SP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|SP[5]~20_combout\,
	asdata => \U9|MBR_SIG\(5),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U5|SP[2]~10_combout\,
	ena => \U5|SP[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(5));

-- Location: LCCOMB_X36_Y36_N10
\U12|MAR_SIG[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[5]~5_combout\ = (\U14|X\(9) & (\U5|SP\(5))) # (!\U14|X\(9) & ((\U6|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(5),
	datab => \U6|PC\(5),
	datad => \U14|X\(9),
	combout => \U12|MAR_SIG[5]~5_combout\);

-- Location: FF_X36_Y36_N11
\U12|MAR_SIG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG[5]~5_combout\,
	asdata => \U9|MBR_SIG\(5),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U15|OR2_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(5));

-- Location: LCCOMB_X35_Y36_N16
\U5|SP[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[6]~22_combout\ = ((\U5|SP\(6) $ (\U14|X\(13) $ (!\U5|SP[5]~21\)))) # (GND)
-- \U5|SP[6]~23\ = CARRY((\U5|SP\(6) & ((\U14|X\(13)) # (!\U5|SP[5]~21\))) # (!\U5|SP\(6) & (\U14|X\(13) & !\U5|SP[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(6),
	datab => \U14|X\(13),
	datad => VCC,
	cin => \U5|SP[5]~21\,
	combout => \U5|SP[6]~22_combout\,
	cout => \U5|SP[6]~23\);

-- Location: FF_X35_Y36_N17
\U5|SP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|SP[6]~22_combout\,
	asdata => \U9|MBR_SIG\(6),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U5|SP[2]~10_combout\,
	ena => \U5|SP[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(6));

-- Location: LCCOMB_X36_Y36_N28
\U12|MAR_SIG[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[6]~6_combout\ = (\U14|X\(9) & ((\U5|SP\(6)))) # (!\U14|X\(9) & (\U6|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(6),
	datab => \U14|X\(9),
	datad => \U5|SP\(6),
	combout => \U12|MAR_SIG[6]~6_combout\);

-- Location: FF_X36_Y36_N29
\U12|MAR_SIG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG[6]~6_combout\,
	asdata => \U9|MBR_SIG\(6),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U15|OR2_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(6));

-- Location: LCCOMB_X35_Y36_N18
\U5|SP[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[7]~24_combout\ = \U14|X\(13) $ (\U5|SP[6]~23\ $ (\U5|SP\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(13),
	datad => \U5|SP\(7),
	cin => \U5|SP[6]~23\,
	combout => \U5|SP[7]~24_combout\);

-- Location: FF_X35_Y36_N19
\U5|SP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|SP[7]~24_combout\,
	asdata => \U9|MBR_SIG\(7),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U5|SP[2]~10_combout\,
	ena => \U5|SP[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(7));

-- Location: LCCOMB_X36_Y36_N2
\U12|MAR_SIG[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[7]~7_combout\ = (\U14|X\(9) & ((\U5|SP\(7)))) # (!\U14|X\(9) & (\U6|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(7),
	datab => \U14|X\(9),
	datad => \U5|SP\(7),
	combout => \U12|MAR_SIG[7]~7_combout\);

-- Location: FF_X36_Y36_N3
\U12|MAR_SIG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG[7]~7_combout\,
	asdata => \U9|MBR_SIG\(7),
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sload => \U15|OR2_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(7));

-- Location: LCCOMB_X36_Y36_N24
\U10|MUX1_OUT[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10|MUX1_OUT[8]~0_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & ((\U6|PC\(8)))) # (!\U14|X\(8) & (\U3|MBRAUX_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|MBRAUX_SIG\(0),
	datab => \U14|X\(9),
	datac => \U6|PC\(8),
	datad => \U14|X\(8),
	combout => \U10|MUX1_OUT[8]~0_combout\);

-- Location: FF_X36_Y36_N25
\U12|MAR_SIG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U10|MUX1_OUT[8]~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(8));

-- Location: LCCOMB_X36_Y36_N26
\U10|MUX1_OUT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10|MUX1_OUT[9]~1_combout\ = (\U14|X\(9)) # ((\U14|X\(8) & ((\U6|PC\(9)))) # (!\U14|X\(8) & (\U3|MBRAUX_SIG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(8),
	datab => \U3|MBRAUX_SIG\(1),
	datac => \U6|PC\(9),
	datad => \U14|X\(9),
	combout => \U10|MUX1_OUT[9]~1_combout\);

-- Location: FF_X36_Y36_N27
\U12|MAR_SIG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U10|MUX1_OUT[9]~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(9));

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

ww_DIRECCIONES(0) <= \DIRECCIONES[0]~output_o\;

ww_DIRECCIONES(1) <= \DIRECCIONES[1]~output_o\;

ww_DIRECCIONES(2) <= \DIRECCIONES[2]~output_o\;

ww_DIRECCIONES(3) <= \DIRECCIONES[3]~output_o\;

ww_DIRECCIONES(4) <= \DIRECCIONES[4]~output_o\;

ww_DIRECCIONES(5) <= \DIRECCIONES[5]~output_o\;

ww_DIRECCIONES(6) <= \DIRECCIONES[6]~output_o\;

ww_DIRECCIONES(7) <= \DIRECCIONES[7]~output_o\;

ww_DIRECCIONES(8) <= \DIRECCIONES[8]~output_o\;

ww_DIRECCIONES(9) <= \DIRECCIONES[9]~output_o\;

ww_RW <= \RW~output_o\;

ww_ESTADOS(0) <= \ESTADOS[0]~output_o\;

ww_ESTADOS(1) <= \ESTADOS[1]~output_o\;

ww_ESTADOS(2) <= \ESTADOS[2]~output_o\;

ww_ESTADOS(3) <= \ESTADOS[3]~output_o\;

ww_TIEMPOS(0) <= \TIEMPOS[0]~output_o\;

ww_TIEMPOS(1) <= \TIEMPOS[1]~output_o\;

ww_TIEMPOS(2) <= \TIEMPOS[2]~output_o\;

ww_TIEMPOS(3) <= \TIEMPOS[3]~output_o\;

DATOS(0) <= \DATOS[0]~output_o\;

DATOS(1) <= \DATOS[1]~output_o\;

DATOS(2) <= \DATOS[2]~output_o\;

DATOS(3) <= \DATOS[3]~output_o\;

DATOS(4) <= \DATOS[4]~output_o\;

DATOS(5) <= \DATOS[5]~output_o\;

DATOS(6) <= \DATOS[6]~output_o\;

DATOS(7) <= \DATOS[7]~output_o\;
END structure;


