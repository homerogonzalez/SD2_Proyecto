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

-- DATE "12/03/2023 22:49:34"

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
	SRST : IN std_logic;
	CE_CONT : IN std_logic;
	DATOS : INOUT std_logic_vector(7 DOWNTO 0);
	DIRECCIONES : OUT std_logic_vector(9 DOWNTO 0);
	RW : OUT std_logic;
	ESTADOS : OUT std_logic_vector(3 DOWNTO 0);
	TIEMPOS : OUT std_logic_vector(3 DOWNTO 0)
	);
END MPU;

-- Design Ports Information
-- DIRECCIONES[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[8]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECCIONES[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPOS[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPOS[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPOS[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPOS[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATOS[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARST	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRST	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CE_CONT	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SRST : std_logic;
SIGNAL ww_CE_CONT : std_logic;
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
SIGNAL \U6|Add0~0_combout\ : std_logic;
SIGNAL \U13|cuenta~0_combout\ : std_logic;
SIGNAL \ARST~input_o\ : std_logic;
SIGNAL \ARST~inputclkctrl_outclk\ : std_logic;
SIGNAL \CE_CONT~input_o\ : std_logic;
SIGNAL \U13|cuenta[2]~1_combout\ : std_logic;
SIGNAL \U13|cuenta~2_combout\ : std_logic;
SIGNAL \U13|cuenta~3_combout\ : std_logic;
SIGNAL \U14|X[17]~96_combout\ : std_logic;
SIGNAL \SRST~input_o\ : std_logic;
SIGNAL \U6|Add0~1\ : std_logic;
SIGNAL \U6|Add0~3_combout\ : std_logic;
SIGNAL \U6|Add0~5_combout\ : std_logic;
SIGNAL \U14|X[15]~114_combout\ : std_logic;
SIGNAL \DATOS[3]~input_o\ : std_logic;
SIGNAL \U14|Equal0~7_combout\ : std_logic;
SIGNAL \U14|process_0~4_combout\ : std_logic;
SIGNAL \U14|comb~18_combout\ : std_logic;
SIGNAL \U14|Equal0~1_combout\ : std_logic;
SIGNAL \U14|comb~17_combout\ : std_logic;
SIGNAL \U14|process_0~3_combout\ : std_logic;
SIGNAL \U4|IR_SIG~0_combout\ : std_logic;
SIGNAL \U4|IR_SIG[0]~feeder_combout\ : std_logic;
SIGNAL \U14|Equal0~6_combout\ : std_logic;
SIGNAL \U14|comb~10_combout\ : std_logic;
SIGNAL \U4|IR_SIG[0]~1_combout\ : std_logic;
SIGNAL \U14|X[2]~120_combout\ : std_logic;
SIGNAL \U14|X[2]~121_combout\ : std_logic;
SIGNAL \U14|X[8]~87_combout\ : std_logic;
SIGNAL \U14|X[2]~117_combout\ : std_logic;
SIGNAL \U14|X[8]~88_combout\ : std_logic;
SIGNAL \U13|Add0~0_combout\ : std_logic;
SIGNAL \U14|X[10]~99_combout\ : std_logic;
SIGNAL \U14|X[2]~118_combout\ : std_logic;
SIGNAL \U14|X[7]~93_combout\ : std_logic;
SIGNAL \U14|X[2]~166_combout\ : std_logic;
SIGNAL \U14|X[2]~122_combout\ : std_logic;
SIGNAL \U14|comb~20_combout\ : std_logic;
SIGNAL \U14|comb~19_combout\ : std_logic;
SIGNAL \U17|OR4_OUT~0_combout\ : std_logic;
SIGNAL \U6|Add0~4\ : std_logic;
SIGNAL \U6|Add0~6_combout\ : std_logic;
SIGNAL \U6|Add0~8_combout\ : std_logic;
SIGNAL \U6|Add0~7\ : std_logic;
SIGNAL \U6|Add0~9_combout\ : std_logic;
SIGNAL \U6|Add0~11_combout\ : std_logic;
SIGNAL \U9|MBR_SIG[2]~7_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~10_combout\ : std_logic;
SIGNAL \U14|X[17]~147_combout\ : std_logic;
SIGNAL \U14|X[17]~143_combout\ : std_logic;
SIGNAL \U14|X[17]~163_combout\ : std_logic;
SIGNAL \U14|Equal4~3_combout\ : std_logic;
SIGNAL \U14|Equal0~4_combout\ : std_logic;
SIGNAL \U14|Equal4~2_combout\ : std_logic;
SIGNAL \U14|X[17]~140_combout\ : std_logic;
SIGNAL \U14|X[17]~145_combout\ : std_logic;
SIGNAL \U14|X[17]~141_combout\ : std_logic;
SIGNAL \U14|X[17]~142_combout\ : std_logic;
SIGNAL \U14|X[17]~146_combout\ : std_logic;
SIGNAL \U14|X[17]~162_combout\ : std_logic;
SIGNAL \U14|X[17]~144_combout\ : std_logic;
SIGNAL \U14|X[17]~148_combout\ : std_logic;
SIGNAL \U14|comb~33_combout\ : std_logic;
SIGNAL \U14|comb~34_combout\ : std_logic;
SIGNAL \U14|X[12]~119_combout\ : std_logic;
SIGNAL \U14|X[15]~133_combout\ : std_logic;
SIGNAL \U14|X[15]~131_combout\ : std_logic;
SIGNAL \U14|X[15]~132_combout\ : std_logic;
SIGNAL \U14|X[15]~134_combout\ : std_logic;
SIGNAL \U14|X[15]~129_combout\ : std_logic;
SIGNAL \U14|X[15]~137_combout\ : std_logic;
SIGNAL \U14|X[15]~138_combout\ : std_logic;
SIGNAL \U14|X[15]~135_combout\ : std_logic;
SIGNAL \U14|X[15]~139_combout\ : std_logic;
SIGNAL \U14|comb~32_combout\ : std_logic;
SIGNAL \U14|comb~31_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~10_combout\ : std_logic;
SIGNAL \U14|X[16]~130_combout\ : std_logic;
SIGNAL \U14|X[16]~136_combout\ : std_logic;
SIGNAL \U14|comb~30_combout\ : std_logic;
SIGNAL \U14|comb~29_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~9_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~26_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~28_combout\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~27_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~29_combout\ : std_logic;
SIGNAL \U1|ACC~1_combout\ : std_logic;
SIGNAL \U14|Equal0~3_combout\ : std_logic;
SIGNAL \U14|X[17]~164_combout\ : std_logic;
SIGNAL \U14|X[19]~152_combout\ : std_logic;
SIGNAL \U14|X[19]~151_combout\ : std_logic;
SIGNAL \U14|X[19]~153_combout\ : std_logic;
SIGNAL \U14|X[1]~106_combout\ : std_logic;
SIGNAL \U14|X[17]~156_combout\ : std_logic;
SIGNAL \U14|X[19]~157_combout\ : std_logic;
SIGNAL \U14|X[19]~154_combout\ : std_logic;
SIGNAL \U14|X[19]~165_combout\ : std_logic;
SIGNAL \U14|X[19]~155_combout\ : std_logic;
SIGNAL \U14|X[17]~149_combout\ : std_logic;
SIGNAL \U14|X[19]~150_combout\ : std_logic;
SIGNAL \U14|X[19]~158_combout\ : std_logic;
SIGNAL \U14|comb~35_combout\ : std_logic;
SIGNAL \U14|comb~36_combout\ : std_logic;
SIGNAL \U1|ACC[3]~0_combout\ : std_logic;
SIGNAL \U0|auxf~2_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~6_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~7_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~11_combout\ : std_logic;
SIGNAL \U1|ACC~2_combout\ : std_logic;
SIGNAL \U0|auxf~3_combout\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~20_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~21_combout\ : std_logic;
SIGNAL \U1|ACC~3_combout\ : std_logic;
SIGNAL \DATOS[4]~input_o\ : std_logic;
SIGNAL \U9|MBR_SIG~12_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~13_combout\ : std_logic;
SIGNAL \U6|Add0~10\ : std_logic;
SIGNAL \U6|Add0~12_combout\ : std_logic;
SIGNAL \U6|Add0~14_combout\ : std_logic;
SIGNAL \U6|Add0~13\ : std_logic;
SIGNAL \U6|Add0~15_combout\ : std_logic;
SIGNAL \U6|Add0~17_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~14_combout\ : std_logic;
SIGNAL \DATOS[5]~input_o\ : std_logic;
SIGNAL \U9|MBR_SIG~15_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~8_combout\ : std_logic;
SIGNAL \DATOS[7]~input_o\ : std_logic;
SIGNAL \U9|MBR_SIG~16_combout\ : std_logic;
SIGNAL \DATOS[6]~input_o\ : std_logic;
SIGNAL \U9|MBR_SIG~17_combout\ : std_logic;
SIGNAL \U6|Add0~16\ : std_logic;
SIGNAL \U6|Add0~18_combout\ : std_logic;
SIGNAL \U6|Add0~20_combout\ : std_logic;
SIGNAL \U6|Add0~19\ : std_logic;
SIGNAL \U6|Add0~21_combout\ : std_logic;
SIGNAL \U6|Add0~23_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~18_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~19_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~30_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~23_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~22_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~24_combout\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~25_combout\ : std_logic;
SIGNAL \U1|ACC~8_combout\ : std_logic;
SIGNAL \U0|auxf~1_combout\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~4_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~5_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~12_combout\ : std_logic;
SIGNAL \U1|ACC~7_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~17_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~18_combout\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~19_combout\ : std_logic;
SIGNAL \U1|ACC~6_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~14_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~15_combout\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~16_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~13_combout\ : std_logic;
SIGNAL \U1|ACC~5_combout\ : std_logic;
SIGNAL \U0|auxf~0_combout\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~2_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~3_combout\ : std_logic;
SIGNAL \U1|ACC~4_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~11_combout\ : std_logic;
SIGNAL \U4|IR_SIG~4_combout\ : std_logic;
SIGNAL \U14|X[7]~94_combout\ : std_logic;
SIGNAL \U14|X[6]~115_combout\ : std_logic;
SIGNAL \U14|X[6]~116_combout\ : std_logic;
SIGNAL \U14|comb~15_combout\ : std_logic;
SIGNAL \U14|comb~16_combout\ : std_logic;
SIGNAL \U6|PC[8]~0_combout\ : std_logic;
SIGNAL \U14|X[10]~127_combout\ : std_logic;
SIGNAL \U14|X[10]~128_combout\ : std_logic;
SIGNAL \U13|Add0~1_combout\ : std_logic;
SIGNAL \U14|comb~27_combout\ : std_logic;
SIGNAL \U14|comb~28_combout\ : std_logic;
SIGNAL \U3|MBRAUX_SIG[0]~0_combout\ : std_logic;
SIGNAL \U6|Add0~22\ : std_logic;
SIGNAL \U6|Add0~24_combout\ : std_logic;
SIGNAL \U6|Add0~26_combout\ : std_logic;
SIGNAL \U6|Add0~25\ : std_logic;
SIGNAL \U6|Add0~27_combout\ : std_logic;
SIGNAL \U6|Add0~29_combout\ : std_logic;
SIGNAL \U18|OR2_OUT~combout\ : std_logic;
SIGNAL \U9|MBR_SIG[2]~0_combout\ : std_logic;
SIGNAL \DATOS[1]~input_o\ : std_logic;
SIGNAL \U9|MBR_SIG~4_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~5_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~3_combout\ : std_logic;
SIGNAL \U4|IR_SIG~2_combout\ : std_logic;
SIGNAL \U4|IR_SIG[1]~feeder_combout\ : std_logic;
SIGNAL \U14|X[14]~176_combout\ : std_logic;
SIGNAL \U14|X[14]~177_combout\ : std_logic;
SIGNAL \U14|X[14]~173_combout\ : std_logic;
SIGNAL \U14|Equal4~5_combout\ : std_logic;
SIGNAL \U14|X[14]~103_combout\ : std_logic;
SIGNAL \U14|X[14]~104_combout\ : std_logic;
SIGNAL \U14|X[14]~161_combout\ : std_logic;
SIGNAL \U14|X[14]~105_combout\ : std_logic;
SIGNAL \U14|X[14]~107_combout\ : std_logic;
SIGNAL \U14|X[14]~108_combout\ : std_logic;
SIGNAL \U2|CCRC~0_combout\ : std_logic;
SIGNAL \U2|CCRC~1_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U2|CCRC~2_combout\ : std_logic;
SIGNAL \U2|CCRC~q\ : std_logic;
SIGNAL \U0|tmp[7]~4_combout\ : std_logic;
SIGNAL \U0|tmp[7]~0_combout\ : std_logic;
SIGNAL \U0|tmp[7]~1_combout\ : std_logic;
SIGNAL \U0|tmp[7]~2_combout\ : std_logic;
SIGNAL \U0|tmp[7]~3_combout\ : std_logic;
SIGNAL \U0|tmp[7]~5_combout\ : std_logic;
SIGNAL \U2|CCRZ~q\ : std_logic;
SIGNAL \U14|X[14]~100_combout\ : std_logic;
SIGNAL \U14|X[14]~101_combout\ : std_logic;
SIGNAL \U14|X[14]~102_combout\ : std_logic;
SIGNAL \U14|X[14]~110_combout\ : std_logic;
SIGNAL \U14|X[14]~109_combout\ : std_logic;
SIGNAL \U14|X[14]~111_combout\ : std_logic;
SIGNAL \U14|X[14]~112_combout\ : std_logic;
SIGNAL \U14|X[14]~97_combout\ : std_logic;
SIGNAL \U14|X[14]~98_combout\ : std_logic;
SIGNAL \U14|X[14]~113_combout\ : std_logic;
SIGNAL \U14|comb~12_combout\ : std_logic;
SIGNAL \U14|comb~11_combout\ : std_logic;
SIGNAL \U13|cuenta~4_combout\ : std_logic;
SIGNAL \U14|X[1]~74_combout\ : std_logic;
SIGNAL \U14|X[1]~123_combout\ : std_logic;
SIGNAL \U14|comb~21_combout\ : std_logic;
SIGNAL \U14|comb~22_combout\ : std_logic;
SIGNAL \U9|MBR_SIG[2]~6_combout\ : std_logic;
SIGNAL \DATOS[2]~input_o\ : std_logic;
SIGNAL \U9|MBR_SIG~8_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~9_combout\ : std_logic;
SIGNAL \U4|IR_SIG~3_combout\ : std_logic;
SIGNAL \U14|Equal4~1_combout\ : std_logic;
SIGNAL \U14|process_0~1_combout\ : std_logic;
SIGNAL \U14|Equal0~0_combout\ : std_logic;
SIGNAL \U14|X[0]~181_combout\ : std_logic;
SIGNAL \U14|X[0]~171_combout\ : std_logic;
SIGNAL \U14|X[0]~168_combout\ : std_logic;
SIGNAL \U14|X[0]~170_combout\ : std_logic;
SIGNAL \U14|X[0]~169_combout\ : std_logic;
SIGNAL \U14|X[0]~75_combout\ : std_logic;
SIGNAL \U14|Equal4~0_combout\ : std_logic;
SIGNAL \U14|Equal0~2_combout\ : std_logic;
SIGNAL \U14|process_0~0_combout\ : std_logic;
SIGNAL \U14|X[0]~76_combout\ : std_logic;
SIGNAL \U14|Equal0~5_combout\ : std_logic;
SIGNAL \U14|X[0]~160_combout\ : std_logic;
SIGNAL \U14|X[0]~172_combout\ : std_logic;
SIGNAL \U14|X[0]~82_combout\ : std_logic;
SIGNAL \U14|X[0]~83_combout\ : std_logic;
SIGNAL \U14|Equal4~4_combout\ : std_logic;
SIGNAL \U14|process_0~2_combout\ : std_logic;
SIGNAL \U14|X[0]~80_combout\ : std_logic;
SIGNAL \U14|X[0]~81_combout\ : std_logic;
SIGNAL \U14|X[0]~84_combout\ : std_logic;
SIGNAL \U14|X[0]~78_combout\ : std_logic;
SIGNAL \U14|X[0]~79_combout\ : std_logic;
SIGNAL \U14|X[0]~159_combout\ : std_logic;
SIGNAL \U14|X[0]~77_combout\ : std_logic;
SIGNAL \U14|X[0]~85_combout\ : std_logic;
SIGNAL \U14|X[0]~86_combout\ : std_logic;
SIGNAL \U14|X[5]~174_combout\ : std_logic;
SIGNAL \U14|X[5]~175_combout\ : std_logic;
SIGNAL \U14|X[5]~25_combout\ : std_logic;
SIGNAL \U14|X[5]~167_combout\ : std_logic;
SIGNAL \U14|comb~13_combout\ : std_logic;
SIGNAL \U14|comb~14_combout\ : std_logic;
SIGNAL \U6|Add0~2_combout\ : std_logic;
SIGNAL \DATOS[0]~input_o\ : std_logic;
SIGNAL \U9|MBR_SIG~1_combout\ : std_logic;
SIGNAL \U9|MBR_SIG~2_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~0_combout\ : std_logic;
SIGNAL \U14|X[5]~73_combout\ : std_logic;
SIGNAL \U14|comb~3_combout\ : std_logic;
SIGNAL \U14|comb~2_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~combout\ : std_logic;
SIGNAL \U14|X[12]~125_combout\ : std_logic;
SIGNAL \U14|X[12]~126_combout\ : std_logic;
SIGNAL \U14|comb~26_combout\ : std_logic;
SIGNAL \U14|comb~25_combout\ : std_logic;
SIGNAL \U14|X[8]~90_combout\ : std_logic;
SIGNAL \U14|X[13]~124_combout\ : std_logic;
SIGNAL \U14|comb~24_combout\ : std_logic;
SIGNAL \U14|comb~23_combout\ : std_logic;
SIGNAL \U5|Add1~0_combout\ : std_logic;
SIGNAL \U5|Add1~2_combout\ : std_logic;
SIGNAL \U14|comb~37_combout\ : std_logic;
SIGNAL \U5|SP[7]~0_combout\ : std_logic;
SIGNAL \U14|X[9]~91_combout\ : std_logic;
SIGNAL \U14|X[9]~92_combout\ : std_logic;
SIGNAL \U14|comb~6_combout\ : std_logic;
SIGNAL \U14|comb~7_combout\ : std_logic;
SIGNAL \U14|X[8]~89_combout\ : std_logic;
SIGNAL \U14|X[8]~178_combout\ : std_logic;
SIGNAL \U14|X[8]~179_combout\ : std_logic;
SIGNAL \U14|comb~5_combout\ : std_logic;
SIGNAL \U14|comb~4_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~0_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~1_combout\ : std_logic;
SIGNAL \U14|X[7]~95_combout\ : std_logic;
SIGNAL \U14|comb~9_combout\ : std_logic;
SIGNAL \U14|comb~8_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[1]~2_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~3_combout\ : std_logic;
SIGNAL \U5|Add1~1\ : std_logic;
SIGNAL \U5|Add1~3_combout\ : std_logic;
SIGNAL \U5|Add1~5_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~4_combout\ : std_logic;
SIGNAL \U5|Add1~4\ : std_logic;
SIGNAL \U5|Add1~6_combout\ : std_logic;
SIGNAL \U5|Add1~8_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~5_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~6_combout\ : std_logic;
SIGNAL \U5|Add1~7\ : std_logic;
SIGNAL \U5|Add1~9_combout\ : std_logic;
SIGNAL \U5|Add1~11_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~7_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~8_combout\ : std_logic;
SIGNAL \U5|Add1~10\ : std_logic;
SIGNAL \U5|Add1~12_combout\ : std_logic;
SIGNAL \U5|Add1~14_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~9_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~10_combout\ : std_logic;
SIGNAL \U5|Add1~13\ : std_logic;
SIGNAL \U5|Add1~15_combout\ : std_logic;
SIGNAL \U5|Add1~17_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~11_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~12_combout\ : std_logic;
SIGNAL \U5|Add1~16\ : std_logic;
SIGNAL \U5|Add1~18_combout\ : std_logic;
SIGNAL \U5|Add1~20_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~13_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~14_combout\ : std_logic;
SIGNAL \U5|Add1~19\ : std_logic;
SIGNAL \U5|Add1~21_combout\ : std_logic;
SIGNAL \U5|Add1~23_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~15_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~16_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~17_combout\ : std_logic;
SIGNAL \U12|MAR_SIG~18_combout\ : std_logic;
SIGNAL \U5|SP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|MAR_SIG\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|ACC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U6|PC\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U9|MBR_SIG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U13|cuenta\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|IR_SIG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|MBRAUX_SIG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U14|X\ : std_logic_vector(0 TO 19);
SIGNAL \ALT_INV_ARST~inputclkctrl_outclk\ : std_logic;
SIGNAL \U14|ALT_INV_UC_OUT_RW~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_ARST <= ARST;
ww_SRST <= SRST;
ww_CE_CONT <= CE_CONT;
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
\ALT_INV_ARST~inputclkctrl_outclk\ <= NOT \ARST~inputclkctrl_outclk\;
\U14|ALT_INV_UC_OUT_RW~combout\ <= NOT \U14|UC_OUT_RW~combout\;
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

-- Location: IOOBUF_X34_Y39_N2
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

-- Location: IOOBUF_X34_Y39_N16
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

-- Location: IOOBUF_X34_Y39_N23
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

-- Location: IOOBUF_X34_Y39_N30
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X36_Y39_N30
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

-- Location: IOOBUF_X34_Y39_N9
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

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X31_Y39_N9
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

-- Location: IOOBUF_X29_Y39_N16
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

-- Location: IOOBUF_X46_Y54_N2
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X46_Y54_N30
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

-- Location: IOOBUF_X24_Y39_N9
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

-- Location: IOOBUF_X29_Y39_N2
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

-- Location: IOOBUF_X22_Y39_N30
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

-- Location: IOOBUF_X26_Y39_N23
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

-- Location: IOOBUF_X24_Y39_N23
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

-- Location: IOOBUF_X24_Y39_N30
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

-- Location: IOOBUF_X24_Y39_N2
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

-- Location: IOOBUF_X26_Y39_N16
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: LCCOMB_X37_Y37_N4
\U6|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~0_combout\ = \U6|PC\(0) $ (VCC)
-- \U6|Add0~1\ = CARRY(\U6|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(0),
	datad => VCC,
	combout => \U6|Add0~0_combout\,
	cout => \U6|Add0~1\);

-- Location: LCCOMB_X31_Y37_N12
\U13|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~0_combout\ = (!\U14|X\(14) & !\U13|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(14),
	datac => \U13|cuenta\(0),
	combout => \U13|cuenta~0_combout\);

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

-- Location: IOIBUF_X31_Y39_N22
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

-- Location: LCCOMB_X31_Y37_N4
\U13|cuenta[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta[2]~1_combout\ = (\U14|X\(14)) # (\CE_CONT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(14),
	datad => \CE_CONT~input_o\,
	combout => \U13|cuenta[2]~1_combout\);

-- Location: FF_X31_Y37_N13
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
	ena => \U13|cuenta[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(0));

-- Location: LCCOMB_X31_Y37_N10
\U13|cuenta~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~2_combout\ = (!\U14|X\(14) & (\U13|cuenta\(1) $ (\U13|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(14),
	datac => \U13|cuenta\(1),
	datad => \U13|cuenta\(0),
	combout => \U13|cuenta~2_combout\);

-- Location: FF_X31_Y37_N11
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
	ena => \U13|cuenta[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(1));

-- Location: LCCOMB_X31_Y37_N0
\U13|cuenta~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~3_combout\ = (!\U14|X\(14) & (\U13|cuenta\(2) $ (((\U13|cuenta\(0) & \U13|cuenta\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|X\(14),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U13|cuenta~3_combout\);

-- Location: FF_X31_Y37_N1
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
	ena => \U13|cuenta[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(2));

-- Location: LCCOMB_X31_Y37_N20
\U14|X[17]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~96_combout\ = (\U13|cuenta\(3) & !\U13|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|X[17]~96_combout\);

-- Location: IOIBUF_X31_Y39_N29
\SRST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRST,
	o => \SRST~input_o\);

-- Location: LCCOMB_X37_Y37_N6
\U6|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~3_combout\ = (\U6|PC\(1) & (!\U6|Add0~1\)) # (!\U6|PC\(1) & ((\U6|Add0~1\) # (GND)))
-- \U6|Add0~4\ = CARRY((!\U6|Add0~1\) # (!\U6|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(1),
	datad => VCC,
	cin => \U6|Add0~1\,
	combout => \U6|Add0~3_combout\,
	cout => \U6|Add0~4\);

-- Location: LCCOMB_X37_Y37_N0
\U6|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~5_combout\ = (\U14|X\(5) & (\U9|MBR_SIG\(1))) # (!\U14|X\(5) & ((\U6|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(5),
	datac => \U9|MBR_SIG\(1),
	datad => \U6|Add0~3_combout\,
	combout => \U6|Add0~5_combout\);

-- Location: LCCOMB_X34_Y37_N30
\U14|X[15]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~114_combout\ = (\U13|cuenta\(2) & \U13|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(1),
	combout => \U14|X[15]~114_combout\);

-- Location: IOIBUF_X34_Y39_N29
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

-- Location: LCCOMB_X34_Y38_N26
\U14|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~7_combout\ = (!\U13|cuenta\(1) & (\U13|cuenta\(0) & (\U13|cuenta\(3) & !\U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y37_N12
\U14|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~4_combout\ = (\U14|Equal4~1_combout\ & \U14|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~1_combout\,
	datac => \U14|Equal0~7_combout\,
	combout => \U14|process_0~4_combout\);

-- Location: LCCOMB_X36_Y37_N26
\U14|comb~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~18_combout\ = (\U14|X[0]~86_combout\ & ((!\U14|Equal0~7_combout\) # (!\U14|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~1_combout\,
	datab => \U14|X[0]~86_combout\,
	datac => \U14|Equal0~7_combout\,
	combout => \U14|comb~18_combout\);

-- Location: LCCOMB_X36_Y37_N18
\U14|X[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(3) = (!\U14|comb~18_combout\ & ((\U14|process_0~4_combout\) # (\U14|X\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|process_0~4_combout\,
	datac => \U14|comb~18_combout\,
	datad => \U14|X\(3),
	combout => \U14|X\(3));

-- Location: LCCOMB_X34_Y37_N6
\U14|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~1_combout\ = (\U13|cuenta\(3) & (!\U13|cuenta\(2) & (\U13|cuenta\(1) & \U13|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(1),
	datad => \U13|cuenta\(0),
	combout => \U14|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y37_N8
\U14|comb~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~17_combout\ = (\U14|X[0]~86_combout\ & ((!\U14|Equal0~1_combout\) # (!\U14|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~86_combout\,
	datac => \U14|Equal4~1_combout\,
	datad => \U14|Equal0~1_combout\,
	combout => \U14|comb~17_combout\);

-- Location: LCCOMB_X36_Y37_N24
\U14|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~3_combout\ = (\U14|Equal4~1_combout\ & \U14|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~1_combout\,
	datad => \U14|Equal0~1_combout\,
	combout => \U14|process_0~3_combout\);

-- Location: LCCOMB_X35_Y37_N6
\U14|X[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(4) = (!\U14|comb~17_combout\ & ((\U14|process_0~3_combout\) # (\U14|X\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~17_combout\,
	datab => \U14|process_0~3_combout\,
	datad => \U14|X\(4),
	combout => \U14|X\(4));

-- Location: LCCOMB_X35_Y38_N12
\U4|IR_SIG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|IR_SIG~0_combout\ = (\U9|MBR_SIG\(0) & !\SRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|MBR_SIG\(0),
	datac => \SRST~input_o\,
	combout => \U4|IR_SIG~0_combout\);

-- Location: LCCOMB_X34_Y38_N20
\U4|IR_SIG[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|IR_SIG[0]~feeder_combout\ = \U4|IR_SIG~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|IR_SIG~0_combout\,
	combout => \U4|IR_SIG[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y37_N22
\U14|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~6_combout\ = (!\U13|cuenta\(0) & (\U13|cuenta\(1) & (!\U13|cuenta\(2) & !\U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y37_N24
\U14|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~10_combout\ = (!\U14|Equal0~6_combout\ & \U14|X[0]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Equal0~6_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~10_combout\);

-- Location: LCCOMB_X32_Y37_N2
\U14|X[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(0) = (!\U14|comb~10_combout\ & ((\U14|Equal0~6_combout\) # (\U14|X\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~10_combout\,
	datac => \U14|Equal0~6_combout\,
	datad => \U14|X\(0),
	combout => \U14|X\(0));

-- Location: LCCOMB_X35_Y38_N24
\U4|IR_SIG[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|IR_SIG[0]~1_combout\ = (\SRST~input_o\) # (\U14|X\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRST~input_o\,
	datac => \U14|X\(0),
	combout => \U4|IR_SIG[0]~1_combout\);

-- Location: FF_X34_Y38_N21
\U4|IR_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|IR_SIG[0]~feeder_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U4|IR_SIG[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_SIG\(0));

-- Location: LCCOMB_X31_Y38_N16
\U14|X[2]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~120_combout\ = (!\U4|IR_SIG\(3) & (\U4|IR_SIG\(2) $ (((\U4|IR_SIG\(1) & \U4|IR_SIG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[2]~120_combout\);

-- Location: LCCOMB_X31_Y37_N26
\U14|X[2]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~121_combout\ = (\U13|cuenta\(0) & (!\U13|cuenta\(2) & ((\U14|X[2]~120_combout\) # (!\U13|cuenta\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[2]~120_combout\,
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(0),
	datad => \U13|cuenta\(2),
	combout => \U14|X[2]~121_combout\);

-- Location: LCCOMB_X27_Y37_N26
\U14|X[8]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~87_combout\ = (\U4|IR_SIG\(2) & (((\U4|IR_SIG\(1) & \U4|IR_SIG\(0))))) # (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) & (!\U4|IR_SIG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[8]~87_combout\);

-- Location: LCCOMB_X31_Y37_N22
\U14|X[2]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~117_combout\ = (!\U13|cuenta\(0) & ((\U13|cuenta\(1) & ((\U14|Equal4~1_combout\))) # (!\U13|cuenta\(1) & (!\U14|X[8]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~87_combout\,
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(0),
	datad => \U14|Equal4~1_combout\,
	combout => \U14|X[2]~117_combout\);

-- Location: LCCOMB_X30_Y37_N24
\U14|X[8]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~88_combout\ = \U4|IR_SIG\(2) $ (((\U4|IR_SIG\(1) & ((\U4|IR_SIG\(3)) # (\U4|IR_SIG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[8]~88_combout\);

-- Location: LCCOMB_X31_Y37_N6
\U13|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|Add0~0_combout\ = (\U13|cuenta\(1) & \U13|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datad => \U13|cuenta\(0),
	combout => \U13|Add0~0_combout\);

-- Location: LCCOMB_X32_Y38_N20
\U14|X[10]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~99_combout\ = (\U13|cuenta\(2) & !\U13|cuenta\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|X[10]~99_combout\);

-- Location: LCCOMB_X31_Y37_N8
\U14|X[2]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~118_combout\ = (\U14|X[10]~99_combout\ & ((\U14|X[2]~117_combout\) # ((\U14|X[8]~88_combout\ & \U13|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[2]~117_combout\,
	datab => \U14|X[8]~88_combout\,
	datac => \U13|Add0~0_combout\,
	datad => \U14|X[10]~99_combout\,
	combout => \U14|X[2]~118_combout\);

-- Location: LCCOMB_X34_Y38_N4
\U14|X[7]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[7]~93_combout\ = (\U4|IR_SIG\(1) & (\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) & \U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(2),
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[7]~93_combout\);

-- Location: LCCOMB_X31_Y37_N30
\U14|X[2]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~166_combout\ = (\U14|X[7]~93_combout\ & ((\U13|cuenta\(3) & (!\U13|cuenta\(2) & !\U13|cuenta\(0))) # (!\U13|cuenta\(3) & ((\U13|cuenta\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[7]~93_combout\,
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(0),
	combout => \U14|X[2]~166_combout\);

-- Location: LCCOMB_X31_Y37_N16
\U14|X[2]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[2]~122_combout\ = (\U14|X[2]~118_combout\) # ((!\U13|cuenta\(1) & ((\U14|X[2]~121_combout\) # (\U14|X[2]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[2]~121_combout\,
	datab => \U13|cuenta\(1),
	datac => \U14|X[2]~118_combout\,
	datad => \U14|X[2]~166_combout\,
	combout => \U14|X[2]~122_combout\);

-- Location: LCCOMB_X36_Y37_N8
\U14|comb~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~20_combout\ = (\U14|X[2]~122_combout\ & \U14|X[0]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[2]~122_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~20_combout\);

-- Location: LCCOMB_X36_Y37_N22
\U14|comb~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~19_combout\ = (!\U14|X[2]~122_combout\ & \U14|X[0]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[2]~122_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~19_combout\);

-- Location: LCCOMB_X36_Y37_N28
\U14|X[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(2) = (!\U14|comb~19_combout\ & ((\U14|comb~20_combout\) # (\U14|X\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~20_combout\,
	datac => \U14|comb~19_combout\,
	datad => \U14|X\(2),
	combout => \U14|X\(2));

-- Location: LCCOMB_X36_Y37_N20
\U17|OR4_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U17|OR4_OUT~0_combout\ = (!\U14|X\(3) & (!\U14|X\(4) & !\U14|X\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(3),
	datac => \U14|X\(4),
	datad => \U14|X\(2),
	combout => \U17|OR4_OUT~0_combout\);

-- Location: LCCOMB_X37_Y37_N8
\U6|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~6_combout\ = (\U6|PC\(2) & (\U6|Add0~4\ $ (GND))) # (!\U6|PC\(2) & (!\U6|Add0~4\ & VCC))
-- \U6|Add0~7\ = CARRY((\U6|PC\(2) & !\U6|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(2),
	datad => VCC,
	cin => \U6|Add0~4\,
	combout => \U6|Add0~6_combout\,
	cout => \U6|Add0~7\);

-- Location: LCCOMB_X38_Y37_N20
\U6|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~8_combout\ = (\U14|X\(5) & (\U9|MBR_SIG\(2))) # (!\U14|X\(5) & ((\U6|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(2),
	datac => \U14|X\(5),
	datad => \U6|Add0~6_combout\,
	combout => \U6|Add0~8_combout\);

-- Location: FF_X38_Y37_N21
\U6|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~8_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(2));

-- Location: LCCOMB_X37_Y37_N10
\U6|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~9_combout\ = (\U6|PC\(3) & (!\U6|Add0~7\)) # (!\U6|PC\(3) & ((\U6|Add0~7\) # (GND)))
-- \U6|Add0~10\ = CARRY((!\U6|Add0~7\) # (!\U6|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(3),
	datad => VCC,
	cin => \U6|Add0~7\,
	combout => \U6|Add0~9_combout\,
	cout => \U6|Add0~10\);

-- Location: LCCOMB_X37_Y37_N26
\U6|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~11_combout\ = (\U14|X\(5) & (\U9|MBR_SIG\(3))) # (!\U14|X\(5) & ((\U6|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(5),
	datac => \U9|MBR_SIG\(3),
	datad => \U6|Add0~9_combout\,
	combout => \U6|Add0~11_combout\);

-- Location: FF_X37_Y37_N27
\U6|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~11_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(3));

-- Location: LCCOMB_X36_Y37_N14
\U9|MBR_SIG[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG[2]~7_combout\ = (!\U14|X\(4) & (!\U14|X\(2) & ((\U14|X\(3)) # (!\U14|X\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(1),
	datab => \U14|X\(3),
	datac => \U14|X\(4),
	datad => \U14|X\(2),
	combout => \U9|MBR_SIG[2]~7_combout\);

-- Location: LCCOMB_X37_Y36_N30
\U9|MBR_SIG~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~10_combout\ = (\U17|OR4_OUT~0_combout\ & ((\U9|MBR_SIG\(3)) # ((!\U9|MBR_SIG[2]~7_combout\)))) # (!\U17|OR4_OUT~0_combout\ & (((\U6|PC\(3) & \U9|MBR_SIG[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U17|OR4_OUT~0_combout\,
	datab => \U9|MBR_SIG\(3),
	datac => \U6|PC\(3),
	datad => \U9|MBR_SIG[2]~7_combout\,
	combout => \U9|MBR_SIG~10_combout\);

-- Location: LCCOMB_X29_Y37_N10
\U14|X[17]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~147_combout\ = (!\U13|cuenta\(0) & (\U4|IR_SIG\(1) & \U13|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U4|IR_SIG\(1),
	datad => \U13|cuenta\(1),
	combout => \U14|X[17]~147_combout\);

-- Location: LCCOMB_X29_Y37_N6
\U14|X[17]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~143_combout\ = (\U13|cuenta\(0) & (!\U13|cuenta\(1))) # (!\U13|cuenta\(0) & (((!\U13|cuenta\(2) & !\U4|IR_SIG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[17]~143_combout\);

-- Location: LCCOMB_X29_Y37_N20
\U14|X[17]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~163_combout\ = (\U4|IR_SIG\(1) & ((\U4|IR_SIG\(0)))) # (!\U4|IR_SIG\(1) & (\U14|X[17]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~143_combout\,
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(0),
	combout => \U14|X[17]~163_combout\);

-- Location: LCCOMB_X27_Y37_N30
\U14|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~3_combout\ = (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) & (!\U4|IR_SIG\(1) & \U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|Equal4~3_combout\);

-- Location: LCCOMB_X27_Y37_N28
\U14|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~4_combout\ = (\U13|cuenta\(0) & (\U13|cuenta\(1) & (!\U13|cuenta\(3) & !\U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y37_N0
\U14|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~2_combout\ = (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) & (!\U4|IR_SIG\(1) & !\U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|Equal4~2_combout\);

-- Location: LCCOMB_X27_Y37_N10
\U14|X[17]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~140_combout\ = (\U14|process_0~1_combout\) # ((\U14|Equal0~4_combout\ & ((\U14|Equal4~3_combout\) # (\U14|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~3_combout\,
	datab => \U14|Equal0~4_combout\,
	datac => \U14|process_0~1_combout\,
	datad => \U14|Equal4~2_combout\,
	combout => \U14|X[17]~140_combout\);

-- Location: LCCOMB_X27_Y37_N12
\U14|X[17]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~145_combout\ = (\U13|cuenta\(2)) # (\U4|IR_SIG\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[17]~145_combout\);

-- Location: LCCOMB_X27_Y37_N4
\U14|X[17]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~141_combout\ = (\U14|Equal0~4_combout\ & ((\U14|Equal4~3_combout\) # (\U14|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~3_combout\,
	datab => \U14|Equal4~2_combout\,
	datad => \U14|Equal0~4_combout\,
	combout => \U14|X[17]~141_combout\);

-- Location: LCCOMB_X27_Y37_N2
\U14|X[17]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~142_combout\ = (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) $ (((!\U14|X[17]~141_combout\ & !\U14|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~141_combout\,
	datab => \U14|process_0~1_combout\,
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[17]~142_combout\);

-- Location: LCCOMB_X27_Y37_N18
\U14|X[17]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~146_combout\ = (\U14|X[17]~140_combout\ & ((\U14|X[17]~145_combout\) # ((\U14|X[17]~96_combout\ & \U14|X[17]~142_combout\)))) # (!\U14|X[17]~140_combout\ & (\U14|X[17]~96_combout\ & ((\U14|X[17]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~140_combout\,
	datab => \U14|X[17]~96_combout\,
	datac => \U14|X[17]~145_combout\,
	datad => \U14|X[17]~142_combout\,
	combout => \U14|X[17]~146_combout\);

-- Location: LCCOMB_X27_Y37_N24
\U14|X[17]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~162_combout\ = (\U13|cuenta\(2) & (!\U13|cuenta\(3) & (\U13|cuenta\(0) & \U14|X[17]~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(0),
	datad => \U14|X[17]~142_combout\,
	combout => \U14|X[17]~162_combout\);

-- Location: LCCOMB_X29_Y37_N16
\U14|X[17]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~144_combout\ = (\U14|X[17]~163_combout\ & (\U14|X[17]~162_combout\ & ((!\U4|IR_SIG\(1))))) # (!\U14|X[17]~163_combout\ & (((\U14|X[17]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~162_combout\,
	datab => \U14|X[17]~163_combout\,
	datac => \U14|X[17]~140_combout\,
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[17]~144_combout\);

-- Location: LCCOMB_X29_Y37_N4
\U14|X[17]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~148_combout\ = (\U14|X[17]~144_combout\) # ((\U14|X[17]~147_combout\ & (\U14|X[17]~163_combout\ & \U14|X[17]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~147_combout\,
	datab => \U14|X[17]~163_combout\,
	datac => \U14|X[17]~146_combout\,
	datad => \U14|X[17]~144_combout\,
	combout => \U14|X[17]~148_combout\);

-- Location: LCCOMB_X35_Y37_N14
\U14|comb~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~33_combout\ = (!\U14|X[17]~148_combout\ & \U14|X[0]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[17]~148_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~33_combout\);

-- Location: LCCOMB_X35_Y37_N24
\U14|comb~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~34_combout\ = (\U14|X[17]~148_combout\ & \U14|X[0]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[17]~148_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~34_combout\);

-- Location: LCCOMB_X36_Y37_N10
\U14|X[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(17) = (!\U14|comb~33_combout\ & ((\U14|comb~34_combout\) # (\U14|X\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~33_combout\,
	datab => \U14|comb~34_combout\,
	datad => \U14|X\(17),
	combout => \U14|X\(17));

-- Location: LCCOMB_X29_Y37_N0
\U14|X[12]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[12]~119_combout\ = (!\U13|cuenta\(3) & \U13|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(0),
	combout => \U14|X[12]~119_combout\);

-- Location: LCCOMB_X32_Y36_N14
\U14|X[15]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~133_combout\ = (\U13|cuenta\(1) & ((\U13|cuenta\(2) & ((\U14|process_0~1_combout\))) # (!\U13|cuenta\(2) & (\U14|X[12]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X[12]~119_combout\,
	datac => \U13|cuenta\(2),
	datad => \U14|process_0~1_combout\,
	combout => \U14|X[15]~133_combout\);

-- Location: LCCOMB_X27_Y37_N16
\U14|X[15]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~131_combout\ = (!\U13|cuenta\(0) & (\U13|cuenta\(1) & (!\U4|IR_SIG\(3) & \U14|X[17]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U4|IR_SIG\(3),
	datad => \U14|X[17]~96_combout\,
	combout => \U14|X[15]~131_combout\);

-- Location: LCCOMB_X32_Y36_N24
\U14|X[15]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~132_combout\ = (\U4|IR_SIG\(3) & ((\U14|process_0~1_combout\) # ((!\U4|IR_SIG\(2) & \U14|X[15]~131_combout\)))) # (!\U4|IR_SIG\(3) & (((!\U4|IR_SIG\(2) & \U14|X[15]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(3),
	datab => \U14|process_0~1_combout\,
	datac => \U4|IR_SIG\(2),
	datad => \U14|X[15]~131_combout\,
	combout => \U14|X[15]~132_combout\);

-- Location: LCCOMB_X32_Y36_N0
\U14|X[15]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~134_combout\ = (\U14|X[15]~132_combout\) # ((\U4|IR_SIG\(2) & (\U14|X[15]~133_combout\ & !\U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U14|X[15]~133_combout\,
	datac => \U4|IR_SIG\(3),
	datad => \U14|X[15]~132_combout\,
	combout => \U14|X[15]~134_combout\);

-- Location: LCCOMB_X32_Y36_N28
\U14|X[15]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~129_combout\ = (\U13|cuenta\(1) & (((\U14|process_0~1_combout\)))) # (!\U13|cuenta\(1) & (\U14|X[12]~119_combout\ & (\U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X[12]~119_combout\,
	datac => \U13|cuenta\(2),
	datad => \U14|process_0~1_combout\,
	combout => \U14|X[15]~129_combout\);

-- Location: LCCOMB_X32_Y36_N26
\U14|X[15]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~137_combout\ = (!\U4|IR_SIG\(2) & ((\U4|IR_SIG\(3) & (\U14|X[15]~133_combout\)) # (!\U4|IR_SIG\(3) & ((\U14|X[15]~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U14|X[15]~133_combout\,
	datac => \U4|IR_SIG\(3),
	datad => \U14|X[15]~129_combout\,
	combout => \U14|X[15]~137_combout\);

-- Location: LCCOMB_X32_Y36_N8
\U14|X[15]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~138_combout\ = (\U4|IR_SIG\(0) & (((\U4|IR_SIG\(1))))) # (!\U4|IR_SIG\(0) & ((\U4|IR_SIG\(1) & (\U14|process_0~1_combout\)) # (!\U4|IR_SIG\(1) & ((\U14|X[15]~137_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U14|process_0~1_combout\,
	datac => \U14|X[15]~137_combout\,
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[15]~138_combout\);

-- Location: LCCOMB_X32_Y36_N18
\U14|X[15]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~135_combout\ = (\U4|IR_SIG\(2) & ((\U14|X[15]~131_combout\) # ((\U4|IR_SIG\(3) & \U14|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(3),
	datab => \U14|process_0~1_combout\,
	datac => \U4|IR_SIG\(2),
	datad => \U14|X[15]~131_combout\,
	combout => \U14|X[15]~135_combout\);

-- Location: LCCOMB_X32_Y36_N2
\U14|X[15]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[15]~139_combout\ = (\U4|IR_SIG\(0) & ((\U14|X[15]~138_combout\ & (\U14|X[15]~134_combout\)) # (!\U14|X[15]~138_combout\ & ((\U14|X[15]~135_combout\))))) # (!\U4|IR_SIG\(0) & (((\U14|X[15]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U14|X[15]~134_combout\,
	datac => \U14|X[15]~138_combout\,
	datad => \U14|X[15]~135_combout\,
	combout => \U14|X[15]~139_combout\);

-- Location: LCCOMB_X32_Y36_N6
\U14|comb~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~32_combout\ = (\U14|X[0]~86_combout\ & \U14|X[15]~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[0]~86_combout\,
	datad => \U14|X[15]~139_combout\,
	combout => \U14|comb~32_combout\);

-- Location: LCCOMB_X32_Y36_N12
\U14|comb~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~31_combout\ = (\U14|X[0]~86_combout\ & !\U14|X[15]~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[0]~86_combout\,
	datad => \U14|X[15]~139_combout\,
	combout => \U14|comb~31_combout\);

-- Location: LCCOMB_X32_Y36_N10
\U14|X[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(15) = (!\U14|comb~31_combout\ & ((\U14|comb~32_combout\) # (\U14|X\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~32_combout\,
	datac => \U14|comb~31_combout\,
	datad => \U14|X\(15),
	combout => \U14|X\(15));

-- Location: LCCOMB_X42_Y36_N28
\U0|ALU_OUT[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~10_combout\ = (\U1|ACC\(3) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(3)) # (!\U14|X\(15)))))) # (!\U1|ACC\(3) & ((\U9|MBR_SIG\(3)) # ((\U14|X\(17) & !\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U1|ACC\(3),
	datac => \U14|X\(15),
	datad => \U9|MBR_SIG\(3),
	combout => \U0|ALU_OUT[3]~10_combout\);

-- Location: LCCOMB_X32_Y36_N22
\U14|X[16]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[16]~130_combout\ = (!\U4|IR_SIG\(3) & (\U14|X[15]~129_combout\ & !\U4|IR_SIG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(3),
	datab => \U14|X[15]~129_combout\,
	datac => \U4|IR_SIG\(2),
	combout => \U14|X[16]~130_combout\);

-- Location: LCCOMB_X32_Y36_N4
\U14|X[16]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[16]~136_combout\ = (\U4|IR_SIG\(1) & ((\U4|IR_SIG\(0) & ((\U14|X[15]~134_combout\))) # (!\U4|IR_SIG\(0) & (\U14|X[15]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(0),
	datab => \U14|X[15]~135_combout\,
	datac => \U4|IR_SIG\(1),
	datad => \U14|X[15]~134_combout\,
	combout => \U14|X[16]~136_combout\);

-- Location: LCCOMB_X32_Y36_N20
\U14|comb~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~30_combout\ = (\U14|X[0]~86_combout\ & ((\U14|X[16]~136_combout\) # ((\U14|X[16]~130_combout\ & !\U4|IR_SIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[16]~130_combout\,
	datab => \U14|X[0]~86_combout\,
	datac => \U14|X[16]~136_combout\,
	datad => \U4|IR_SIG\(1),
	combout => \U14|comb~30_combout\);

-- Location: LCCOMB_X32_Y36_N30
\U14|comb~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~29_combout\ = (\U14|X[0]~86_combout\ & (!\U14|X[16]~136_combout\ & ((\U4|IR_SIG\(1)) # (!\U14|X[16]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[16]~130_combout\,
	datab => \U14|X[0]~86_combout\,
	datac => \U14|X[16]~136_combout\,
	datad => \U4|IR_SIG\(1),
	combout => \U14|comb~29_combout\);

-- Location: LCCOMB_X32_Y36_N16
\U14|X[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(16) = (!\U14|comb~29_combout\ & ((\U14|comb~30_combout\) # (\U14|X\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~30_combout\,
	datac => \U14|comb~29_combout\,
	datad => \U14|X\(16),
	combout => \U14|X\(16));

-- Location: LCCOMB_X40_Y36_N0
\U0|ALU_OUT[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~9_combout\ = (\U1|ACC\(2) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(2)) # (!\U14|X\(15)))))) # (!\U1|ACC\(2) & ((\U9|MBR_SIG\(2)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(2),
	datab => \U14|X\(15),
	datac => \U9|MBR_SIG\(2),
	datad => \U14|X\(17),
	combout => \U0|ALU_OUT[2]~9_combout\);

-- Location: LCCOMB_X38_Y36_N24
\U0|ALU_OUT[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~26_combout\ = (\U14|X\(15) & (\U1|ACC\(1))) # (!\U14|X\(15) & ((\U1|ACC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datac => \U1|ACC\(1),
	datad => \U1|ACC\(0),
	combout => \U0|ALU_OUT[0]~26_combout\);

-- Location: LCCOMB_X38_Y36_N20
\U0|ALU_OUT[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~28_combout\ = (\U0|ALU_OUT[0]~26_combout\ & (\U14|X\(15) $ (\U14|X\(17) $ (\U14|X\(16))))) # (!\U0|ALU_OUT[0]~26_combout\ & (\U14|X\(16) & ((\U14|X\(17)) # (!\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[0]~26_combout\,
	combout => \U0|ALU_OUT[0]~28_combout\);

-- Location: LCCOMB_X39_Y36_N12
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

-- Location: LCCOMB_X38_Y36_N10
\U0|ALU_OUT[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~27_combout\ = (\U14|X\(15) & (((!\U14|X\(16))))) # (!\U14|X\(15) & ((\U0|ALU_OUT[0]~26_combout\ & ((\U14|X\(16)))) # (!\U0|ALU_OUT[0]~26_combout\ & (\U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[0]~26_combout\,
	combout => \U0|ALU_OUT[0]~27_combout\);

-- Location: LCCOMB_X38_Y36_N14
\U0|ALU_OUT[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~29_combout\ = (\U0|ALU_OUT[0]~28_combout\ & ((\U9|MBR_SIG\(0)) # ((\U0|ALU_OUT[0]~27_combout\)))) # (!\U0|ALU_OUT[0]~28_combout\ & (((\U0|Add0~0_combout\ & !\U0|ALU_OUT[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(0),
	datab => \U0|ALU_OUT[0]~28_combout\,
	datac => \U0|Add0~0_combout\,
	datad => \U0|ALU_OUT[0]~27_combout\,
	combout => \U0|ALU_OUT[0]~29_combout\);

-- Location: LCCOMB_X39_Y36_N2
\U1|ACC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC~1_combout\ = (!\SRST~input_o\ & \U0|ALU_OUT[0]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRST~input_o\,
	datad => \U0|ALU_OUT[0]~29_combout\,
	combout => \U1|ACC~1_combout\);

-- Location: LCCOMB_X27_Y37_N20
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

-- Location: LCCOMB_X27_Y37_N22
\U14|X[17]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~164_combout\ = \U4|IR_SIG\(3) $ (((\U14|X[17]~141_combout\) # ((\U14|Equal4~1_combout\ & \U14|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~141_combout\,
	datab => \U14|Equal4~1_combout\,
	datac => \U4|IR_SIG\(3),
	datad => \U14|Equal0~3_combout\,
	combout => \U14|X[17]~164_combout\);

-- Location: LCCOMB_X29_Y37_N8
\U14|X[19]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~152_combout\ = (!\U14|X[17]~164_combout\ & (\U14|X[12]~119_combout\ & (!\U13|cuenta\(2) & \U4|IR_SIG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~164_combout\,
	datab => \U14|X[12]~119_combout\,
	datac => \U13|cuenta\(2),
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[19]~152_combout\);

-- Location: LCCOMB_X29_Y37_N18
\U14|X[19]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~151_combout\ = (\U13|cuenta\(1) & (\U4|IR_SIG\(0) & \U4|IR_SIG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[19]~151_combout\);

-- Location: LCCOMB_X29_Y37_N30
\U14|X[19]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~153_combout\ = (\U14|X[19]~151_combout\ & ((\U14|X[19]~152_combout\) # ((\U14|X[17]~146_combout\ & !\U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~146_combout\,
	datab => \U14|X[19]~152_combout\,
	datac => \U13|cuenta\(0),
	datad => \U14|X[19]~151_combout\,
	combout => \U14|X[19]~153_combout\);

-- Location: LCCOMB_X30_Y37_N0
\U14|X[1]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[1]~106_combout\ = (\U4|IR_SIG\(1) & !\U4|IR_SIG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[1]~106_combout\);

-- Location: LCCOMB_X30_Y37_N28
\U14|X[17]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~156_combout\ = (\U13|cuenta\(2)) # ((\U13|cuenta\(0)) # ((\U4|IR_SIG\(2) & !\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(0),
	combout => \U14|X[17]~156_combout\);

-- Location: LCCOMB_X29_Y37_N24
\U14|X[19]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~157_combout\ = (\U14|X[1]~106_combout\ & (\U14|X[17]~156_combout\ & ((\U14|X[17]~141_combout\) # (\U14|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~141_combout\,
	datab => \U14|process_0~1_combout\,
	datac => \U14|X[1]~106_combout\,
	datad => \U14|X[17]~156_combout\,
	combout => \U14|X[19]~157_combout\);

-- Location: LCCOMB_X29_Y37_N12
\U14|X[19]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~154_combout\ = (!\U13|cuenta\(2) & (!\U13|cuenta\(0) & \U4|IR_SIG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(0),
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[19]~154_combout\);

-- Location: LCCOMB_X29_Y37_N2
\U14|X[19]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~165_combout\ = (\U13|cuenta\(3) & ((!\U4|IR_SIG\(1)) # (!\U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(3),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[19]~165_combout\);

-- Location: LCCOMB_X29_Y37_N22
\U14|X[19]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~155_combout\ = (\U14|X[19]~154_combout\ & (\U13|cuenta\(1) & (!\U14|X[17]~164_combout\ & \U14|X[19]~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[19]~154_combout\,
	datab => \U13|cuenta\(1),
	datac => \U14|X[17]~164_combout\,
	datad => \U14|X[19]~165_combout\,
	combout => \U14|X[19]~155_combout\);

-- Location: LCCOMB_X29_Y37_N14
\U14|X[17]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[17]~149_combout\ = (\U13|cuenta\(0) & (\U13|cuenta\(1))) # (!\U13|cuenta\(0) & ((\U13|cuenta\(2)) # ((!\U13|cuenta\(1) & \U4|IR_SIG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[17]~149_combout\);

-- Location: LCCOMB_X29_Y37_N28
\U14|X[19]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~150_combout\ = (!\U4|IR_SIG\(1) & ((\U14|X[17]~149_combout\ & ((\U14|X[17]~140_combout\))) # (!\U14|X[17]~149_combout\ & (\U14|X[17]~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~162_combout\,
	datab => \U14|X[17]~140_combout\,
	datac => \U14|X[17]~149_combout\,
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[19]~150_combout\);

-- Location: LCCOMB_X29_Y37_N26
\U14|X[19]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[19]~158_combout\ = (\U14|X[19]~153_combout\) # ((\U14|X[19]~157_combout\) # ((\U14|X[19]~155_combout\) # (\U14|X[19]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[19]~153_combout\,
	datab => \U14|X[19]~157_combout\,
	datac => \U14|X[19]~155_combout\,
	datad => \U14|X[19]~150_combout\,
	combout => \U14|X[19]~158_combout\);

-- Location: LCCOMB_X35_Y38_N20
\U14|comb~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~35_combout\ = (\U14|X[0]~86_combout\ & !\U14|X[19]~158_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~86_combout\,
	datac => \U14|X[19]~158_combout\,
	combout => \U14|comb~35_combout\);

-- Location: LCCOMB_X35_Y38_N30
\U14|comb~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~36_combout\ = (\U14|X[0]~86_combout\ & \U14|X[19]~158_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~86_combout\,
	datac => \U14|X[19]~158_combout\,
	combout => \U14|comb~36_combout\);

-- Location: LCCOMB_X35_Y38_N18
\U14|X[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(19) = (!\U14|comb~35_combout\ & ((\U14|comb~36_combout\) # (\U14|X\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~35_combout\,
	datac => \U14|comb~36_combout\,
	datad => \U14|X\(19),
	combout => \U14|X\(19));

-- Location: LCCOMB_X38_Y36_N28
\U1|ACC[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC[3]~0_combout\ = (\U14|X\(19)) # (\SRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(19),
	datad => \SRST~input_o\,
	combout => \U1|ACC[3]~0_combout\);

-- Location: FF_X39_Y36_N3
\U1|ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ACC~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(0));

-- Location: LCCOMB_X40_Y36_N22
\U0|auxf~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|auxf~2_combout\ = (\U1|ACC\(1) & \U9|MBR_SIG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(1),
	datad => \U9|MBR_SIG\(1),
	combout => \U0|auxf~2_combout\);

-- Location: LCCOMB_X39_Y36_N14
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

-- Location: LCCOMB_X40_Y36_N28
\U0|ALU_OUT[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~6_combout\ = (\U14|X\(17) & ((\U14|X\(15)) # ((\U0|auxf~2_combout\)))) # (!\U14|X\(17) & (!\U14|X\(15) & ((\U0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U14|X\(15),
	datac => \U0|auxf~2_combout\,
	datad => \U0|Add0~2_combout\,
	combout => \U0|ALU_OUT[1]~6_combout\);

-- Location: LCCOMB_X40_Y36_N14
\U0|ALU_OUT[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~7_combout\ = (\U14|X\(15) & ((\U0|ALU_OUT[1]~6_combout\ & (\U1|ACC\(0))) # (!\U0|ALU_OUT[1]~6_combout\ & ((\U1|ACC\(2)))))) # (!\U14|X\(15) & (((\U0|ALU_OUT[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(0),
	datac => \U1|ACC\(2),
	datad => \U0|ALU_OUT[1]~6_combout\,
	combout => \U0|ALU_OUT[1]~7_combout\);

-- Location: LCCOMB_X40_Y36_N18
\U0|ALU_OUT[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~11_combout\ = (\U1|ACC\(1) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(1)) # (!\U14|X\(15)))))) # (!\U1|ACC\(1) & ((\U9|MBR_SIG\(1)) # ((\U14|X\(17) & !\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U14|X\(15),
	datac => \U1|ACC\(1),
	datad => \U9|MBR_SIG\(1),
	combout => \U0|ALU_OUT[1]~11_combout\);

-- Location: LCCOMB_X40_Y36_N30
\U1|ACC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC~2_combout\ = (!\SRST~input_o\ & ((\U14|X\(16) & ((\U0|ALU_OUT[1]~11_combout\))) # (!\U14|X\(16) & (\U0|ALU_OUT[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRST~input_o\,
	datab => \U14|X\(16),
	datac => \U0|ALU_OUT[1]~7_combout\,
	datad => \U0|ALU_OUT[1]~11_combout\,
	combout => \U1|ACC~2_combout\);

-- Location: FF_X40_Y36_N31
\U1|ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ACC~2_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(1));

-- Location: LCCOMB_X38_Y36_N26
\U0|auxf~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|auxf~3_combout\ = (\U1|ACC\(2) & \U9|MBR_SIG\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ACC\(2),
	datad => \U9|MBR_SIG\(2),
	combout => \U0|auxf~3_combout\);

-- Location: LCCOMB_X39_Y36_N16
\U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = ((\U1|ACC\(2) $ (\U9|MBR_SIG\(2) $ (!\U0|Add0~3\)))) # (GND)
-- \U0|Add0~5\ = CARRY((\U1|ACC\(2) & ((\U9|MBR_SIG\(2)) # (!\U0|Add0~3\))) # (!\U1|ACC\(2) & (\U9|MBR_SIG\(2) & !\U0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(2),
	datab => \U9|MBR_SIG\(2),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: LCCOMB_X39_Y36_N10
\U0|ALU_OUT[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~20_combout\ = (\U14|X\(17) & (((\U14|X\(15))))) # (!\U14|X\(17) & ((\U14|X\(15) & (\U1|ACC\(3))) # (!\U14|X\(15) & ((\U0|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(3),
	datab => \U14|X\(17),
	datac => \U14|X\(15),
	datad => \U0|Add0~4_combout\,
	combout => \U0|ALU_OUT[2]~20_combout\);

-- Location: LCCOMB_X39_Y36_N6
\U0|ALU_OUT[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~21_combout\ = (\U14|X\(17) & ((\U0|ALU_OUT[2]~20_combout\ & (\U1|ACC\(1))) # (!\U0|ALU_OUT[2]~20_combout\ & ((\U0|auxf~3_combout\))))) # (!\U14|X\(17) & (((\U0|ALU_OUT[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(1),
	datab => \U14|X\(17),
	datac => \U0|auxf~3_combout\,
	datad => \U0|ALU_OUT[2]~20_combout\,
	combout => \U0|ALU_OUT[2]~21_combout\);

-- Location: LCCOMB_X39_Y36_N0
\U1|ACC~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC~3_combout\ = (!\SRST~input_o\ & ((\U14|X\(16) & (\U0|ALU_OUT[2]~9_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[2]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \SRST~input_o\,
	datac => \U0|ALU_OUT[2]~9_combout\,
	datad => \U0|ALU_OUT[2]~21_combout\,
	combout => \U1|ACC~3_combout\);

-- Location: FF_X39_Y36_N1
\U1|ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ACC~3_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(2));

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: LCCOMB_X38_Y37_N22
\U9|MBR_SIG~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~12_combout\ = (\U9|MBR_SIG[2]~7_combout\ & ((\U17|OR4_OUT~0_combout\ & (\U9|MBR_SIG\(4))) # (!\U17|OR4_OUT~0_combout\ & ((\U6|PC\(4)))))) # (!\U9|MBR_SIG[2]~7_combout\ & (((\U17|OR4_OUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG[2]~7_combout\,
	datab => \U9|MBR_SIG\(4),
	datac => \U6|PC\(4),
	datad => \U17|OR4_OUT~0_combout\,
	combout => \U9|MBR_SIG~12_combout\);

-- Location: LCCOMB_X39_Y36_N8
\U9|MBR_SIG~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~13_combout\ = (\U9|MBR_SIG[2]~6_combout\ & ((\U9|MBR_SIG~12_combout\ & ((\U1|ACC\(4)))) # (!\U9|MBR_SIG~12_combout\ & (\DATOS[4]~input_o\)))) # (!\U9|MBR_SIG[2]~6_combout\ & (((\U9|MBR_SIG~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG[2]~6_combout\,
	datab => \DATOS[4]~input_o\,
	datac => \U9|MBR_SIG~12_combout\,
	datad => \U1|ACC\(4),
	combout => \U9|MBR_SIG~13_combout\);

-- Location: FF_X39_Y36_N9
\U9|MBR_SIG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U9|MBR_SIG~13_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(4));

-- Location: LCCOMB_X37_Y37_N12
\U6|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~12_combout\ = (\U6|PC\(4) & (\U6|Add0~10\ $ (GND))) # (!\U6|PC\(4) & (!\U6|Add0~10\ & VCC))
-- \U6|Add0~13\ = CARRY((\U6|PC\(4) & !\U6|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(4),
	datad => VCC,
	cin => \U6|Add0~10\,
	combout => \U6|Add0~12_combout\,
	cout => \U6|Add0~13\);

-- Location: LCCOMB_X38_Y37_N26
\U6|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~14_combout\ = (\U14|X\(5) & (\U9|MBR_SIG\(4))) # (!\U14|X\(5) & ((\U6|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|MBR_SIG\(4),
	datac => \U14|X\(5),
	datad => \U6|Add0~12_combout\,
	combout => \U6|Add0~14_combout\);

-- Location: FF_X38_Y37_N27
\U6|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~14_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(4));

-- Location: LCCOMB_X37_Y37_N14
\U6|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~15_combout\ = (\U6|PC\(5) & (!\U6|Add0~13\)) # (!\U6|PC\(5) & ((\U6|Add0~13\) # (GND)))
-- \U6|Add0~16\ = CARRY((!\U6|Add0~13\) # (!\U6|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(5),
	datad => VCC,
	cin => \U6|Add0~13\,
	combout => \U6|Add0~15_combout\,
	cout => \U6|Add0~16\);

-- Location: LCCOMB_X38_Y37_N4
\U6|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~17_combout\ = (\U14|X\(5) & (\U9|MBR_SIG\(5))) # (!\U14|X\(5) & ((\U6|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(5),
	datab => \U14|X\(5),
	datad => \U6|Add0~15_combout\,
	combout => \U6|Add0~17_combout\);

-- Location: FF_X38_Y37_N5
\U6|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~17_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(5));

-- Location: LCCOMB_X38_Y37_N12
\U9|MBR_SIG~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~14_combout\ = (\U9|MBR_SIG[2]~7_combout\ & ((\U17|OR4_OUT~0_combout\ & ((\U9|MBR_SIG\(5)))) # (!\U17|OR4_OUT~0_combout\ & (\U6|PC\(5))))) # (!\U9|MBR_SIG[2]~7_combout\ & (\U17|OR4_OUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG[2]~7_combout\,
	datab => \U17|OR4_OUT~0_combout\,
	datac => \U6|PC\(5),
	datad => \U9|MBR_SIG\(5),
	combout => \U9|MBR_SIG~14_combout\);

-- Location: IOIBUF_X36_Y39_N15
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

-- Location: LCCOMB_X41_Y36_N16
\U9|MBR_SIG~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~15_combout\ = (\U9|MBR_SIG~14_combout\ & (((\U1|ACC\(5))) # (!\U9|MBR_SIG[2]~6_combout\))) # (!\U9|MBR_SIG~14_combout\ & (\U9|MBR_SIG[2]~6_combout\ & (\DATOS[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG~14_combout\,
	datab => \U9|MBR_SIG[2]~6_combout\,
	datac => \DATOS[5]~input_o\,
	datad => \U1|ACC\(5),
	combout => \U9|MBR_SIG~15_combout\);

-- Location: FF_X41_Y36_N17
\U9|MBR_SIG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U9|MBR_SIG~15_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(5));

-- Location: LCCOMB_X41_Y36_N6
\U0|ALU_OUT[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~8_combout\ = (\U1|ACC\(5) & (\U14|X\(17) $ (((!\U14|X\(15)) # (!\U9|MBR_SIG\(5)))))) # (!\U1|ACC\(5) & ((\U9|MBR_SIG\(5)) # ((\U14|X\(17) & !\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U9|MBR_SIG\(5),
	datac => \U14|X\(15),
	datad => \U1|ACC\(5),
	combout => \U0|ALU_OUT[5]~8_combout\);

-- Location: IOIBUF_X34_Y39_N8
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

-- Location: LCCOMB_X36_Y36_N2
\U9|MBR_SIG~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~16_combout\ = (\U17|OR4_OUT~0_combout\ & (((\U9|MBR_SIG\(6))) # (!\U9|MBR_SIG[2]~7_combout\))) # (!\U17|OR4_OUT~0_combout\ & (\U9|MBR_SIG[2]~7_combout\ & ((\U6|PC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U17|OR4_OUT~0_combout\,
	datab => \U9|MBR_SIG[2]~7_combout\,
	datac => \U9|MBR_SIG\(6),
	datad => \U6|PC\(6),
	combout => \U9|MBR_SIG~16_combout\);

-- Location: IOIBUF_X36_Y39_N29
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

-- Location: LCCOMB_X38_Y36_N16
\U9|MBR_SIG~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~17_combout\ = (\U9|MBR_SIG~16_combout\ & ((\U1|ACC\(6)) # ((!\U9|MBR_SIG[2]~6_combout\)))) # (!\U9|MBR_SIG~16_combout\ & (((\U9|MBR_SIG[2]~6_combout\ & \DATOS[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG~16_combout\,
	datab => \U1|ACC\(6),
	datac => \U9|MBR_SIG[2]~6_combout\,
	datad => \DATOS[6]~input_o\,
	combout => \U9|MBR_SIG~17_combout\);

-- Location: FF_X38_Y36_N17
\U9|MBR_SIG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U9|MBR_SIG~17_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(6));

-- Location: LCCOMB_X37_Y37_N16
\U6|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~18_combout\ = (\U6|PC\(6) & (\U6|Add0~16\ $ (GND))) # (!\U6|PC\(6) & (!\U6|Add0~16\ & VCC))
-- \U6|Add0~19\ = CARRY((\U6|PC\(6) & !\U6|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(6),
	datad => VCC,
	cin => \U6|Add0~16\,
	combout => \U6|Add0~18_combout\,
	cout => \U6|Add0~19\);

-- Location: LCCOMB_X37_Y37_N24
\U6|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~20_combout\ = (\U14|X\(5) & (\U9|MBR_SIG\(6))) # (!\U14|X\(5) & ((\U6|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(5),
	datac => \U9|MBR_SIG\(6),
	datad => \U6|Add0~18_combout\,
	combout => \U6|Add0~20_combout\);

-- Location: FF_X37_Y37_N25
\U6|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~20_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(6));

-- Location: LCCOMB_X37_Y37_N18
\U6|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~21_combout\ = (\U6|PC\(7) & (!\U6|Add0~19\)) # (!\U6|PC\(7) & ((\U6|Add0~19\) # (GND)))
-- \U6|Add0~22\ = CARRY((!\U6|Add0~19\) # (!\U6|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(7),
	datad => VCC,
	cin => \U6|Add0~19\,
	combout => \U6|Add0~21_combout\,
	cout => \U6|Add0~22\);

-- Location: LCCOMB_X38_Y37_N18
\U6|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~23_combout\ = (\U14|X\(5) & (\U9|MBR_SIG\(7))) # (!\U14|X\(5) & ((\U6|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|MBR_SIG\(7),
	datac => \U14|X\(5),
	datad => \U6|Add0~21_combout\,
	combout => \U6|Add0~23_combout\);

-- Location: FF_X38_Y37_N19
\U6|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~23_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(7));

-- Location: LCCOMB_X38_Y37_N30
\U9|MBR_SIG~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~18_combout\ = (\U9|MBR_SIG[2]~7_combout\ & ((\U17|OR4_OUT~0_combout\ & ((\U9|MBR_SIG\(7)))) # (!\U17|OR4_OUT~0_combout\ & (\U6|PC\(7))))) # (!\U9|MBR_SIG[2]~7_combout\ & (((\U17|OR4_OUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG[2]~7_combout\,
	datab => \U6|PC\(7),
	datac => \U17|OR4_OUT~0_combout\,
	datad => \U9|MBR_SIG\(7),
	combout => \U9|MBR_SIG~18_combout\);

-- Location: LCCOMB_X41_Y36_N2
\U9|MBR_SIG~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~19_combout\ = (\U9|MBR_SIG[2]~6_combout\ & ((\U9|MBR_SIG~18_combout\ & (\U1|ACC\(7))) # (!\U9|MBR_SIG~18_combout\ & ((\DATOS[7]~input_o\))))) # (!\U9|MBR_SIG[2]~6_combout\ & (((\U9|MBR_SIG~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(7),
	datab => \U9|MBR_SIG[2]~6_combout\,
	datac => \DATOS[7]~input_o\,
	datad => \U9|MBR_SIG~18_combout\,
	combout => \U9|MBR_SIG~19_combout\);

-- Location: FF_X41_Y36_N3
\U9|MBR_SIG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U9|MBR_SIG~19_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(7));

-- Location: LCCOMB_X38_Y36_N18
\U0|ALU_OUT[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~30_combout\ = ((!\U14|X\(15) & (\U9|MBR_SIG\(7) & \U1|ACC\(7)))) # (!\U14|X\(17))

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
	combout => \U0|ALU_OUT[7]~30_combout\);

-- Location: LCCOMB_X38_Y36_N22
\U0|ALU_OUT[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~23_combout\ = (\U14|X\(15) & (\U1|ACC\(6) & !\U0|ALU_OUT[7]~30_combout\)) # (!\U14|X\(15) & ((\U0|ALU_OUT[7]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(6),
	datad => \U0|ALU_OUT[7]~30_combout\,
	combout => \U0|ALU_OUT[7]~23_combout\);

-- Location: LCCOMB_X38_Y36_N0
\U0|ALU_OUT[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~22_combout\ = (\U1|ACC\(7) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(7)) # (!\U14|X\(15)))))) # (!\U1|ACC\(7) & ((\U9|MBR_SIG\(7)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U9|MBR_SIG\(7),
	datad => \U1|ACC\(7),
	combout => \U0|ALU_OUT[7]~22_combout\);

-- Location: LCCOMB_X38_Y36_N8
\U0|ALU_OUT[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~24_combout\ = (\U14|X\(16) & ((\U0|ALU_OUT[7]~22_combout\))) # (!\U14|X\(16) & (\U0|ALU_OUT[7]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datac => \U0|ALU_OUT[7]~23_combout\,
	datad => \U0|ALU_OUT[7]~22_combout\,
	combout => \U0|ALU_OUT[7]~24_combout\);

-- Location: LCCOMB_X39_Y36_N18
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

-- Location: LCCOMB_X39_Y36_N20
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

-- Location: LCCOMB_X39_Y36_N22
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

-- Location: LCCOMB_X39_Y36_N24
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

-- Location: LCCOMB_X39_Y36_N26
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

-- Location: LCCOMB_X38_Y36_N6
\U0|ALU_OUT[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~25_combout\ = (\U0|ALU_OUT[7]~24_combout\ & ((\U14|X\(16)) # ((\U14|X\(17)) # (\U0|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U14|X\(17),
	datac => \U0|ALU_OUT[7]~24_combout\,
	datad => \U0|Add0~14_combout\,
	combout => \U0|ALU_OUT[7]~25_combout\);

-- Location: LCCOMB_X38_Y36_N12
\U1|ACC~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC~8_combout\ = (!\SRST~input_o\ & \U0|ALU_OUT[7]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRST~input_o\,
	datad => \U0|ALU_OUT[7]~25_combout\,
	combout => \U1|ACC~8_combout\);

-- Location: FF_X38_Y36_N13
\U1|ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ACC~8_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(7));

-- Location: LCCOMB_X41_Y36_N28
\U0|auxf~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|auxf~1_combout\ = (\U1|ACC\(6) & \U9|MBR_SIG\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ACC\(6),
	datad => \U9|MBR_SIG\(6),
	combout => \U0|auxf~1_combout\);

-- Location: LCCOMB_X41_Y36_N18
\U0|ALU_OUT[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~4_combout\ = (\U14|X\(17) & ((\U0|auxf~1_combout\) # ((\U14|X\(15))))) # (!\U14|X\(17) & (((!\U14|X\(15) & \U0|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U0|auxf~1_combout\,
	datac => \U14|X\(15),
	datad => \U0|Add0~12_combout\,
	combout => \U0|ALU_OUT[6]~4_combout\);

-- Location: LCCOMB_X41_Y36_N8
\U0|ALU_OUT[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~5_combout\ = (\U14|X\(15) & ((\U0|ALU_OUT[6]~4_combout\ & ((\U1|ACC\(5)))) # (!\U0|ALU_OUT[6]~4_combout\ & (\U1|ACC\(7))))) # (!\U14|X\(15) & (((\U0|ALU_OUT[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(7),
	datab => \U1|ACC\(5),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[6]~4_combout\,
	combout => \U0|ALU_OUT[6]~5_combout\);

-- Location: LCCOMB_X41_Y36_N24
\U0|ALU_OUT[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~12_combout\ = (\U1|ACC\(6) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(6)) # (!\U14|X\(15)))))) # (!\U1|ACC\(6) & ((\U9|MBR_SIG\(6)) # ((!\U14|X\(15) & \U14|X\(17)))))

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
	combout => \U0|ALU_OUT[6]~12_combout\);

-- Location: LCCOMB_X41_Y36_N26
\U1|ACC~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC~7_combout\ = (!\SRST~input_o\ & ((\U14|X\(16) & ((\U0|ALU_OUT[6]~12_combout\))) # (!\U14|X\(16) & (\U0|ALU_OUT[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \SRST~input_o\,
	datac => \U0|ALU_OUT[6]~5_combout\,
	datad => \U0|ALU_OUT[6]~12_combout\,
	combout => \U1|ACC~7_combout\);

-- Location: FF_X41_Y36_N27
\U1|ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ACC~7_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(6));

-- Location: LCCOMB_X41_Y36_N14
\U0|ALU_OUT[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~17_combout\ = (\U14|X\(15) & (((\U1|ACC\(4))))) # (!\U14|X\(15) & (\U9|MBR_SIG\(5) & ((\U1|ACC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U9|MBR_SIG\(5),
	datac => \U1|ACC\(4),
	datad => \U1|ACC\(5),
	combout => \U0|ALU_OUT[5]~17_combout\);

-- Location: LCCOMB_X42_Y36_N22
\U0|ALU_OUT[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~18_combout\ = (\U14|X\(17) & ((\U0|ALU_OUT[5]~17_combout\))) # (!\U14|X\(17) & (!\U14|X\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[5]~17_combout\,
	combout => \U0|ALU_OUT[5]~18_combout\);

-- Location: LCCOMB_X41_Y36_N4
\U0|ALU_OUT[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~19_combout\ = (\U14|X\(17) & (((\U0|ALU_OUT[5]~18_combout\)))) # (!\U14|X\(17) & ((\U0|ALU_OUT[5]~18_combout\ & ((\U0|Add0~10_combout\))) # (!\U0|ALU_OUT[5]~18_combout\ & (\U1|ACC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(6),
	datab => \U14|X\(17),
	datac => \U0|ALU_OUT[5]~18_combout\,
	datad => \U0|Add0~10_combout\,
	combout => \U0|ALU_OUT[5]~19_combout\);

-- Location: LCCOMB_X40_Y36_N20
\U1|ACC~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC~6_combout\ = (!\SRST~input_o\ & ((\U14|X\(16) & (\U0|ALU_OUT[5]~8_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[5]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[5]~8_combout\,
	datab => \U14|X\(16),
	datac => \SRST~input_o\,
	datad => \U0|ALU_OUT[5]~19_combout\,
	combout => \U1|ACC~6_combout\);

-- Location: FF_X40_Y36_N21
\U1|ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ACC~6_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(5));

-- Location: LCCOMB_X40_Y36_N2
\U0|ALU_OUT[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~14_combout\ = (\U14|X\(15) & (((\U1|ACC\(3))))) # (!\U14|X\(15) & (\U1|ACC\(4) & ((\U9|MBR_SIG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(4),
	datab => \U14|X\(15),
	datac => \U1|ACC\(3),
	datad => \U9|MBR_SIG\(4),
	combout => \U0|ALU_OUT[4]~14_combout\);

-- Location: LCCOMB_X40_Y36_N8
\U0|ALU_OUT[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~15_combout\ = (\U14|X\(17) & ((\U0|ALU_OUT[4]~14_combout\))) # (!\U14|X\(17) & (!\U14|X\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[4]~14_combout\,
	combout => \U0|ALU_OUT[4]~15_combout\);

-- Location: LCCOMB_X40_Y36_N26
\U0|ALU_OUT[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~16_combout\ = (\U14|X\(17) & (((\U0|ALU_OUT[4]~15_combout\)))) # (!\U14|X\(17) & ((\U0|ALU_OUT[4]~15_combout\ & ((\U0|Add0~8_combout\))) # (!\U0|ALU_OUT[4]~15_combout\ & (\U1|ACC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U1|ACC\(5),
	datac => \U0|ALU_OUT[4]~15_combout\,
	datad => \U0|Add0~8_combout\,
	combout => \U0|ALU_OUT[4]~16_combout\);

-- Location: LCCOMB_X40_Y36_N12
\U0|ALU_OUT[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~13_combout\ = (\U1|ACC\(4) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(4)) # (!\U14|X\(15)))))) # (!\U1|ACC\(4) & ((\U9|MBR_SIG\(4)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(4),
	datab => \U14|X\(15),
	datac => \U14|X\(17),
	datad => \U9|MBR_SIG\(4),
	combout => \U0|ALU_OUT[4]~13_combout\);

-- Location: LCCOMB_X40_Y36_N6
\U1|ACC~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC~5_combout\ = (!\SRST~input_o\ & ((\U14|X\(16) & ((\U0|ALU_OUT[4]~13_combout\))) # (!\U14|X\(16) & (\U0|ALU_OUT[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRST~input_o\,
	datab => \U14|X\(16),
	datac => \U0|ALU_OUT[4]~16_combout\,
	datad => \U0|ALU_OUT[4]~13_combout\,
	combout => \U1|ACC~5_combout\);

-- Location: FF_X40_Y36_N7
\U1|ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ACC~5_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(4));

-- Location: LCCOMB_X42_Y36_N30
\U0|auxf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|auxf~0_combout\ = (\U1|ACC\(3) & \U9|MBR_SIG\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ACC\(3),
	datad => \U9|MBR_SIG\(3),
	combout => \U0|auxf~0_combout\);

-- Location: LCCOMB_X42_Y36_N16
\U0|ALU_OUT[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~2_combout\ = (\U14|X\(17) & ((\U14|X\(15)) # ((\U0|auxf~0_combout\)))) # (!\U14|X\(17) & (!\U14|X\(15) & ((\U0|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U14|X\(15),
	datac => \U0|auxf~0_combout\,
	datad => \U0|Add0~6_combout\,
	combout => \U0|ALU_OUT[3]~2_combout\);

-- Location: LCCOMB_X42_Y36_N2
\U0|ALU_OUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~3_combout\ = (\U14|X\(15) & ((\U0|ALU_OUT[3]~2_combout\ & (\U1|ACC\(2))) # (!\U0|ALU_OUT[3]~2_combout\ & ((\U1|ACC\(4)))))) # (!\U14|X\(15) & (((\U0|ALU_OUT[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(2),
	datab => \U14|X\(15),
	datac => \U1|ACC\(4),
	datad => \U0|ALU_OUT[3]~2_combout\,
	combout => \U0|ALU_OUT[3]~3_combout\);

-- Location: LCCOMB_X42_Y36_N24
\U1|ACC~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ACC~4_combout\ = (!\SRST~input_o\ & ((\U14|X\(16) & (\U0|ALU_OUT[3]~10_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRST~input_o\,
	datab => \U0|ALU_OUT[3]~10_combout\,
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[3]~3_combout\,
	combout => \U1|ACC~4_combout\);

-- Location: FF_X42_Y36_N25
\U1|ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|ACC~4_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(3));

-- Location: LCCOMB_X39_Y36_N30
\U9|MBR_SIG~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~11_combout\ = (\U9|MBR_SIG~10_combout\ & (((\U1|ACC\(3)) # (!\U9|MBR_SIG[2]~6_combout\)))) # (!\U9|MBR_SIG~10_combout\ & (\DATOS[3]~input_o\ & ((\U9|MBR_SIG[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATOS[3]~input_o\,
	datab => \U9|MBR_SIG~10_combout\,
	datac => \U1|ACC\(3),
	datad => \U9|MBR_SIG[2]~6_combout\,
	combout => \U9|MBR_SIG~11_combout\);

-- Location: FF_X39_Y36_N31
\U9|MBR_SIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U9|MBR_SIG~11_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(3));

-- Location: LCCOMB_X34_Y38_N30
\U4|IR_SIG~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|IR_SIG~4_combout\ = (\U9|MBR_SIG\(3) & !\SRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U9|MBR_SIG\(3),
	datad => \SRST~input_o\,
	combout => \U4|IR_SIG~4_combout\);

-- Location: FF_X34_Y38_N31
\U4|IR_SIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|IR_SIG~4_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U4|IR_SIG[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_SIG\(3));

-- Location: LCCOMB_X30_Y37_N2
\U14|X[7]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[7]~94_combout\ = (\U4|IR_SIG\(2) & (!\U4|IR_SIG\(3) & ((!\U4|IR_SIG\(0)) # (!\U4|IR_SIG\(1))))) # (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(1) & (\U4|IR_SIG\(3) $ (\U4|IR_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[7]~94_combout\);

-- Location: LCCOMB_X34_Y37_N0
\U14|X[6]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[6]~115_combout\ = (\U14|X[15]~114_combout\ & ((\U13|cuenta\(0) & ((\U14|X[7]~94_combout\))) # (!\U13|cuenta\(0) & (\U14|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[15]~114_combout\,
	datab => \U14|Equal4~1_combout\,
	datac => \U14|X[7]~94_combout\,
	datad => \U13|cuenta\(0),
	combout => \U14|X[6]~115_combout\);

-- Location: LCCOMB_X34_Y37_N2
\U14|X[6]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[6]~116_combout\ = (!\U13|cuenta\(1) & ((\U13|cuenta\(0) & ((!\U13|cuenta\(2)))) # (!\U13|cuenta\(0) & (!\U14|X[8]~87_combout\ & \U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~87_combout\,
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|X[6]~116_combout\);

-- Location: LCCOMB_X34_Y37_N28
\U14|comb~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~15_combout\ = (\U14|X[0]~86_combout\ & ((\U13|cuenta\(3)) # ((!\U14|X[6]~115_combout\ & !\U14|X[6]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U14|X[6]~115_combout\,
	datac => \U14|X[0]~86_combout\,
	datad => \U14|X[6]~116_combout\,
	combout => \U14|comb~15_combout\);

-- Location: LCCOMB_X34_Y37_N26
\U14|comb~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~16_combout\ = (!\U13|cuenta\(3) & (\U14|X[0]~86_combout\ & ((\U14|X[6]~115_combout\) # (\U14|X[6]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U14|X[6]~115_combout\,
	datac => \U14|X[0]~86_combout\,
	datad => \U14|X[6]~116_combout\,
	combout => \U14|comb~16_combout\);

-- Location: LCCOMB_X34_Y37_N10
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

-- Location: LCCOMB_X38_Y37_N8
\U6|PC[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[8]~0_combout\ = (\SRST~input_o\) # (\U14|X\(5) $ (\U14|X\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(5),
	datac => \SRST~input_o\,
	datad => \U14|X\(6),
	combout => \U6|PC[8]~0_combout\);

-- Location: FF_X37_Y37_N1
\U6|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~5_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(1));

-- Location: LCCOMB_X34_Y38_N10
\U14|X[10]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~127_combout\ = (\U4|IR_SIG\(1) & ((\U4|IR_SIG\(2) & ((!\U4|IR_SIG\(0)))) # (!\U4|IR_SIG\(2) & ((\U4|IR_SIG\(3)) # (\U4|IR_SIG\(0)))))) # (!\U4|IR_SIG\(1) & (\U4|IR_SIG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(2),
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[10]~127_combout\);

-- Location: LCCOMB_X34_Y38_N12
\U14|X[10]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~128_combout\ = (\U13|cuenta\(0) & (\U14|X[10]~127_combout\)) # (!\U13|cuenta\(0) & ((\U14|X[7]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[10]~127_combout\,
	datab => \U14|X[7]~93_combout\,
	datac => \U13|cuenta\(0),
	combout => \U14|X[10]~128_combout\);

-- Location: LCCOMB_X32_Y38_N0
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

-- Location: LCCOMB_X32_Y38_N18
\U14|comb~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~27_combout\ = (\U14|X[0]~86_combout\ & (((!\U13|Add0~1_combout\) # (!\U14|X[10]~128_combout\)) # (!\U14|X[10]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~86_combout\,
	datab => \U14|X[10]~99_combout\,
	datac => \U14|X[10]~128_combout\,
	datad => \U13|Add0~1_combout\,
	combout => \U14|comb~27_combout\);

-- Location: LCCOMB_X32_Y38_N4
\U14|comb~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~28_combout\ = (\U14|X[0]~86_combout\ & (\U14|X[10]~99_combout\ & (\U14|X[10]~128_combout\ & \U13|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~86_combout\,
	datab => \U14|X[10]~99_combout\,
	datac => \U14|X[10]~128_combout\,
	datad => \U13|Add0~1_combout\,
	combout => \U14|comb~28_combout\);

-- Location: LCCOMB_X32_Y38_N12
\U14|X[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(10) = (!\U14|comb~27_combout\ & ((\U14|comb~28_combout\) # (\U14|X\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~27_combout\,
	datac => \U14|comb~28_combout\,
	datad => \U14|X\(10),
	combout => \U14|X\(10));

-- Location: LCCOMB_X35_Y38_N26
\U3|MBRAUX_SIG[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|MBRAUX_SIG[0]~0_combout\ = (\SRST~input_o\) # (\U14|X\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRST~input_o\,
	datad => \U14|X\(10),
	combout => \U3|MBRAUX_SIG[0]~0_combout\);

-- Location: FF_X35_Y38_N23
\U3|MBRAUX_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|IR_SIG~2_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U3|MBRAUX_SIG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|MBRAUX_SIG\(1));

-- Location: FF_X35_Y38_N13
\U3|MBRAUX_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|IR_SIG~0_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U3|MBRAUX_SIG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|MBRAUX_SIG\(0));

-- Location: LCCOMB_X37_Y37_N20
\U6|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~24_combout\ = (\U6|PC\(8) & (\U6|Add0~22\ $ (GND))) # (!\U6|PC\(8) & (!\U6|Add0~22\ & VCC))
-- \U6|Add0~25\ = CARRY((\U6|PC\(8) & !\U6|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(8),
	datad => VCC,
	cin => \U6|Add0~22\,
	combout => \U6|Add0~24_combout\,
	cout => \U6|Add0~25\);

-- Location: LCCOMB_X37_Y37_N2
\U6|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~26_combout\ = (\U14|X\(5) & (\U3|MBRAUX_SIG\(0))) # (!\U14|X\(5) & ((\U6|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(5),
	datab => \U3|MBRAUX_SIG\(0),
	datad => \U6|Add0~24_combout\,
	combout => \U6|Add0~26_combout\);

-- Location: FF_X37_Y37_N3
\U6|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~26_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(8));

-- Location: LCCOMB_X37_Y37_N22
\U6|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~27_combout\ = \U6|Add0~25\ $ (\U6|PC\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U6|PC\(9),
	cin => \U6|Add0~25\,
	combout => \U6|Add0~27_combout\);

-- Location: LCCOMB_X38_Y37_N28
\U6|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~29_combout\ = (\U14|X\(5) & (\U3|MBRAUX_SIG\(1))) # (!\U14|X\(5) & ((\U6|Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|MBRAUX_SIG\(1),
	datac => \U14|X\(5),
	datad => \U6|Add0~27_combout\,
	combout => \U6|Add0~29_combout\);

-- Location: FF_X38_Y37_N29
\U6|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~29_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(9));

-- Location: LCCOMB_X36_Y37_N4
\U18|OR2_OUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U18|OR2_OUT~combout\ = (\U14|X\(4)) # (\U14|X\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(4),
	datad => \U14|X\(3),
	combout => \U18|OR2_OUT~combout\);

-- Location: LCCOMB_X36_Y37_N6
\U9|MBR_SIG[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG[2]~0_combout\ = (!\U14|X\(4) & !\U14|X\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(4),
	datad => \U14|X\(2),
	combout => \U9|MBR_SIG[2]~0_combout\);

-- Location: IOIBUF_X34_Y39_N15
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

-- Location: LCCOMB_X40_Y36_N24
\U9|MBR_SIG~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~4_combout\ = (\U9|MBR_SIG[2]~0_combout\ & (\U1|ACC\(1) & (!\U18|OR2_OUT~combout\))) # (!\U9|MBR_SIG[2]~0_combout\ & (((\U18|OR2_OUT~combout\) # (\DATOS[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(1),
	datab => \U9|MBR_SIG[2]~0_combout\,
	datac => \U18|OR2_OUT~combout\,
	datad => \DATOS[1]~input_o\,
	combout => \U9|MBR_SIG~4_combout\);

-- Location: LCCOMB_X40_Y36_N10
\U9|MBR_SIG~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~5_combout\ = (\U18|OR2_OUT~combout\ & ((\U9|MBR_SIG~4_combout\ & ((\U6|PC\(9)))) # (!\U9|MBR_SIG~4_combout\ & (\U6|PC\(1))))) # (!\U18|OR2_OUT~combout\ & (((\U9|MBR_SIG~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(1),
	datab => \U6|PC\(9),
	datac => \U18|OR2_OUT~combout\,
	datad => \U9|MBR_SIG~4_combout\,
	combout => \U9|MBR_SIG~5_combout\);

-- Location: LCCOMB_X36_Y37_N30
\U9|MBR_SIG~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~3_combout\ = (\SRST~input_o\) # ((\U14|X\(1)) # (!\U17|OR4_OUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRST~input_o\,
	datac => \U14|X\(1),
	datad => \U17|OR4_OUT~0_combout\,
	combout => \U9|MBR_SIG~3_combout\);

-- Location: FF_X40_Y36_N11
\U9|MBR_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U9|MBR_SIG~5_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U9|MBR_SIG~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(1));

-- Location: LCCOMB_X35_Y38_N22
\U4|IR_SIG~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|IR_SIG~2_combout\ = (!\SRST~input_o\ & \U9|MBR_SIG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRST~input_o\,
	datad => \U9|MBR_SIG\(1),
	combout => \U4|IR_SIG~2_combout\);

-- Location: LCCOMB_X34_Y38_N6
\U4|IR_SIG[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|IR_SIG[1]~feeder_combout\ = \U4|IR_SIG~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|IR_SIG~2_combout\,
	combout => \U4|IR_SIG[1]~feeder_combout\);

-- Location: FF_X34_Y38_N7
\U4|IR_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|IR_SIG[1]~feeder_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U4|IR_SIG[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_SIG\(1));

-- Location: LCCOMB_X34_Y38_N8
\U14|X[14]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~176_combout\ = (\U4|IR_SIG\(3) & (!\U4|IR_SIG\(1))) # (!\U4|IR_SIG\(3) & ((\U13|cuenta\(1)) # ((\U4|IR_SIG\(1) & \U4|IR_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(0),
	datac => \U13|cuenta\(1),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[14]~176_combout\);

-- Location: LCCOMB_X34_Y38_N2
\U14|X[14]~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~177_combout\ = (\U14|X[14]~176_combout\ & (\U4|IR_SIG\(2) $ (((!\U4|IR_SIG\(0)) # (!\U4|IR_SIG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(2),
	datac => \U14|X[14]~176_combout\,
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~177_combout\);

-- Location: LCCOMB_X34_Y38_N14
\U14|X[14]~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~173_combout\ = (\U13|cuenta\(2) & (!\U13|cuenta\(3) & \U14|X[14]~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(3),
	datad => \U14|X[14]~177_combout\,
	combout => \U14|X[14]~173_combout\);

-- Location: LCCOMB_X31_Y38_N20
\U14|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~5_combout\ = (\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) & (\U4|IR_SIG\(1) & \U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|Equal4~5_combout\);

-- Location: LCCOMB_X31_Y38_N6
\U14|X[14]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~103_combout\ = (\U4|IR_SIG\(1) & (\U4|IR_SIG\(3) $ (\U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~103_combout\);

-- Location: LCCOMB_X31_Y38_N12
\U14|X[14]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~104_combout\ = (\U14|X[14]~103_combout\ & (\U13|cuenta\(0))) # (!\U14|X[14]~103_combout\ & (((!\U14|Equal0~7_combout\) # (!\U14|Equal4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|Equal4~5_combout\,
	datac => \U14|Equal0~7_combout\,
	datad => \U14|X[14]~103_combout\,
	combout => \U14|X[14]~104_combout\);

-- Location: LCCOMB_X31_Y38_N26
\U14|X[14]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~161_combout\ = (\U4|IR_SIG\(1) & (!\U4|IR_SIG\(0) & ((!\U14|Equal4~5_combout\) # (!\U14|Equal0~7_combout\)))) # (!\U4|IR_SIG\(1) & (\U14|Equal0~7_combout\ & (\U14|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~7_combout\,
	datab => \U14|Equal4~5_combout\,
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~161_combout\);

-- Location: LCCOMB_X31_Y38_N18
\U14|X[14]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~105_combout\ = (\U13|cuenta\(0) & \U4|IR_SIG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~105_combout\);

-- Location: LCCOMB_X31_Y38_N8
\U14|X[14]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~107_combout\ = (\U4|IR_SIG\(1) & ((\U4|IR_SIG\(3) & ((\U14|X[14]~105_combout\))) # (!\U4|IR_SIG\(3) & (\U14|X[14]~161_combout\)))) # (!\U4|IR_SIG\(1) & (!\U14|X[14]~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~161_combout\,
	datab => \U14|X[14]~105_combout\,
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[14]~107_combout\);

-- Location: LCCOMB_X31_Y38_N22
\U14|X[14]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~108_combout\ = (\U13|cuenta\(1) & ((\U14|X[14]~104_combout\) # ((\U4|IR_SIG\(2))))) # (!\U13|cuenta\(1) & (((\U14|X[14]~107_combout\ & !\U4|IR_SIG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~104_combout\,
	datab => \U13|cuenta\(1),
	datac => \U14|X[14]~107_combout\,
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[14]~108_combout\);

-- Location: LCCOMB_X38_Y36_N30
\U2|CCRC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|CCRC~0_combout\ = (\U14|X\(15) & ((\U14|X\(17) & (\U1|ACC\(7))) # (!\U14|X\(17) & ((\U1|ACC\(0)))))) # (!\U14|X\(15) & (!\U14|X\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U1|ACC\(7),
	datad => \U1|ACC\(0),
	combout => \U2|CCRC~0_combout\);

-- Location: LCCOMB_X38_Y36_N4
\U2|CCRC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|CCRC~1_combout\ = (\U14|X\(19) & (\U2|CCRC~0_combout\ & (!\U14|X\(16)))) # (!\U14|X\(19) & (((\U2|CCRC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CCRC~0_combout\,
	datab => \U14|X\(19),
	datac => \U14|X\(16),
	datad => \U2|CCRC~q\,
	combout => \U2|CCRC~1_combout\);

-- Location: LCCOMB_X39_Y36_N28
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

-- Location: LCCOMB_X38_Y36_N2
\U2|CCRC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|CCRC~2_combout\ = (\U2|CCRC~1_combout\ & ((\U14|X\(15)) # ((\U0|Add0~16_combout\) # (!\U14|X\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(19),
	datac => \U2|CCRC~1_combout\,
	datad => \U0|Add0~16_combout\,
	combout => \U2|CCRC~2_combout\);

-- Location: FF_X38_Y36_N3
\U2|CCRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2|CCRC~2_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CCRC~q\);

-- Location: LCCOMB_X41_Y36_N22
\U0|tmp[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~4_combout\ = (!\U14|X\(16) & ((\U0|ALU_OUT[5]~19_combout\) # ((\U0|ALU_OUT[4]~16_combout\) # (\U0|ALU_OUT[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U0|ALU_OUT[5]~19_combout\,
	datac => \U0|ALU_OUT[4]~16_combout\,
	datad => \U0|ALU_OUT[2]~21_combout\,
	combout => \U0|tmp[7]~4_combout\);

-- Location: LCCOMB_X41_Y36_N10
\U0|tmp[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~0_combout\ = (\U0|ALU_OUT[4]~13_combout\) # ((\U0|ALU_OUT[1]~11_combout\) # ((\U0|ALU_OUT[6]~12_combout\) # (\U0|ALU_OUT[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[4]~13_combout\,
	datab => \U0|ALU_OUT[1]~11_combout\,
	datac => \U0|ALU_OUT[6]~12_combout\,
	datad => \U0|ALU_OUT[3]~10_combout\,
	combout => \U0|tmp[7]~0_combout\);

-- Location: LCCOMB_X41_Y36_N20
\U0|tmp[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~1_combout\ = (\U0|ALU_OUT[5]~8_combout\) # ((\U0|ALU_OUT[2]~9_combout\) # (\U0|tmp[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[5]~8_combout\,
	datac => \U0|ALU_OUT[2]~9_combout\,
	datad => \U0|tmp[7]~0_combout\,
	combout => \U0|tmp[7]~1_combout\);

-- Location: LCCOMB_X41_Y36_N30
\U0|tmp[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~2_combout\ = (\U14|X\(16) & (\U0|tmp[7]~1_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U0|tmp[7]~1_combout\,
	datad => \U0|ALU_OUT[1]~7_combout\,
	combout => \U0|tmp[7]~2_combout\);

-- Location: LCCOMB_X41_Y36_N0
\U0|tmp[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~3_combout\ = (\U0|tmp[7]~2_combout\) # ((!\U14|X\(16) & ((\U0|ALU_OUT[6]~5_combout\) # (\U0|ALU_OUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|tmp[7]~2_combout\,
	datab => \U14|X\(16),
	datac => \U0|ALU_OUT[6]~5_combout\,
	datad => \U0|ALU_OUT[3]~3_combout\,
	combout => \U0|tmp[7]~3_combout\);

-- Location: LCCOMB_X41_Y36_N12
\U0|tmp[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~5_combout\ = (!\U0|ALU_OUT[0]~29_combout\ & (!\U0|ALU_OUT[7]~25_combout\ & (!\U0|tmp[7]~4_combout\ & !\U0|tmp[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[0]~29_combout\,
	datab => \U0|ALU_OUT[7]~25_combout\,
	datac => \U0|tmp[7]~4_combout\,
	datad => \U0|tmp[7]~3_combout\,
	combout => \U0|tmp[7]~5_combout\);

-- Location: FF_X41_Y36_N13
\U2|CCRZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|tmp[7]~5_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U1|ACC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CCRZ~q\);

-- Location: LCCOMB_X32_Y38_N26
\U14|X[14]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~100_combout\ = (\U4|IR_SIG\(1) & (((\U4|IR_SIG\(0))))) # (!\U4|IR_SIG\(1) & ((\U4|IR_SIG\(0) & ((\U2|CCRZ~q\))) # (!\U4|IR_SIG\(0) & (\U2|CCRC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U2|CCRC~q\,
	datac => \U4|IR_SIG\(0),
	datad => \U2|CCRZ~q\,
	combout => \U14|X[14]~100_combout\);

-- Location: LCCOMB_X31_Y38_N2
\U14|X[14]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~101_combout\ = (\U14|X[14]~100_combout\ & (((!\U14|Equal4~5_combout\) # (!\U4|IR_SIG\(1))) # (!\U14|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~7_combout\,
	datab => \U14|X[14]~100_combout\,
	datac => \U4|IR_SIG\(1),
	datad => \U14|Equal4~5_combout\,
	combout => \U14|X[14]~101_combout\);

-- Location: LCCOMB_X31_Y38_N28
\U14|X[14]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~102_combout\ = (\U4|IR_SIG\(3) & ((\U14|X[14]~101_combout\ & (\U13|cuenta\(0))) # (!\U14|X[14]~101_combout\ & ((!\U4|IR_SIG\(1)))))) # (!\U4|IR_SIG\(3) & (((\U4|IR_SIG\(1) & \U14|X[14]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U14|X[14]~101_combout\,
	combout => \U14|X[14]~102_combout\);

-- Location: LCCOMB_X31_Y38_N10
\U14|X[14]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~110_combout\ = (\U14|Equal4~5_combout\ & \U14|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal4~5_combout\,
	datac => \U14|Equal0~7_combout\,
	combout => \U14|X[14]~110_combout\);

-- Location: LCCOMB_X31_Y38_N24
\U14|X[14]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~109_combout\ = (\U4|IR_SIG\(1) & (\U4|IR_SIG\(3) $ (\U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[14]~109_combout\);

-- Location: LCCOMB_X31_Y38_N4
\U14|X[14]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~111_combout\ = (\U4|IR_SIG\(3) & (!\U14|X[14]~110_combout\ & (!\U14|X[14]~109_combout\))) # (!\U4|IR_SIG\(3) & ((\U14|X[14]~109_combout\ & (!\U14|X[14]~110_combout\)) # (!\U14|X[14]~109_combout\ & ((\U13|cuenta\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~110_combout\,
	datab => \U4|IR_SIG\(3),
	datac => \U14|X[14]~109_combout\,
	datad => \U13|cuenta\(0),
	combout => \U14|X[14]~111_combout\);

-- Location: LCCOMB_X31_Y38_N30
\U14|X[14]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~112_combout\ = (\U14|X[14]~108_combout\ & (((\U14|X[14]~111_combout\) # (!\U4|IR_SIG\(2))))) # (!\U14|X[14]~108_combout\ & (\U14|X[14]~102_combout\ & ((\U4|IR_SIG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~108_combout\,
	datab => \U14|X[14]~102_combout\,
	datac => \U14|X[14]~111_combout\,
	datad => \U4|IR_SIG\(2),
	combout => \U14|X[14]~112_combout\);

-- Location: LCCOMB_X31_Y37_N14
\U14|X[14]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~97_combout\ = (\U14|Equal4~1_combout\ & (((!\U13|Add0~0_combout\)))) # (!\U14|Equal4~1_combout\ & (\U14|Equal4~5_combout\ & ((\U14|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~5_combout\,
	datab => \U14|Equal4~1_combout\,
	datac => \U13|Add0~0_combout\,
	datad => \U14|Equal0~7_combout\,
	combout => \U14|X[14]~97_combout\);

-- Location: LCCOMB_X31_Y37_N28
\U14|X[14]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~98_combout\ = (\U13|cuenta\(3) & (!\U14|X[14]~97_combout\ & \U13|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(3),
	datac => \U14|X[14]~97_combout\,
	datad => \U13|cuenta\(2),
	combout => \U14|X[14]~98_combout\);

-- Location: LCCOMB_X35_Y37_N28
\U14|X[14]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~113_combout\ = (\U14|X[14]~173_combout\) # ((\U14|X[14]~98_combout\) # ((\U14|X[17]~96_combout\ & \U14|X[14]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~96_combout\,
	datab => \U14|X[14]~173_combout\,
	datac => \U14|X[14]~112_combout\,
	datad => \U14|X[14]~98_combout\,
	combout => \U14|X[14]~113_combout\);

-- Location: LCCOMB_X35_Y37_N16
\U14|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~12_combout\ = (\U14|X[0]~86_combout\ & \U14|X[14]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[0]~86_combout\,
	datad => \U14|X[14]~113_combout\,
	combout => \U14|comb~12_combout\);

-- Location: LCCOMB_X35_Y37_N22
\U14|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~11_combout\ = (\U14|X[0]~86_combout\ & !\U14|X[14]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[0]~86_combout\,
	datad => \U14|X[14]~113_combout\,
	combout => \U14|comb~11_combout\);

-- Location: LCCOMB_X35_Y37_N12
\U14|X[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(14) = (!\U14|comb~11_combout\ & ((\U14|comb~12_combout\) # (\U14|X\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~12_combout\,
	datac => \U14|comb~11_combout\,
	datad => \U14|X\(14),
	combout => \U14|X\(14));

-- Location: LCCOMB_X31_Y37_N2
\U13|cuenta~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~4_combout\ = (!\U14|X\(14) & (\U13|cuenta\(3) $ (((\U13|cuenta\(2) & \U13|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(14),
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(3),
	datad => \U13|Add0~0_combout\,
	combout => \U13|cuenta~4_combout\);

-- Location: FF_X31_Y37_N3
\U13|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U13|cuenta~4_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U13|cuenta[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(3));

-- Location: LCCOMB_X30_Y37_N12
\U14|X[1]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[1]~74_combout\ = (\U13|cuenta\(3) & \U4|IR_SIG\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(3),
	datac => \U4|IR_SIG\(3),
	combout => \U14|X[1]~74_combout\);

-- Location: LCCOMB_X30_Y37_N26
\U14|X[1]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[1]~123_combout\ = (\U4|IR_SIG\(2) & (\U13|cuenta\(1) & (\U13|cuenta\(2) & !\U13|cuenta\(0)))) # (!\U4|IR_SIG\(2) & (!\U13|cuenta\(1) & (!\U13|cuenta\(2) & \U13|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(0),
	combout => \U14|X[1]~123_combout\);

-- Location: LCCOMB_X30_Y37_N8
\U14|comb~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~21_combout\ = (\U14|X[0]~86_combout\ & (((!\U14|X[1]~123_combout\) # (!\U14|X[1]~106_combout\)) # (!\U14|X[1]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[1]~74_combout\,
	datab => \U14|X[1]~106_combout\,
	datac => \U14|X[1]~123_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~21_combout\);

-- Location: LCCOMB_X30_Y37_N30
\U14|comb~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~22_combout\ = (\U14|X[1]~74_combout\ & (\U14|X[1]~106_combout\ & (\U14|X[1]~123_combout\ & \U14|X[0]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[1]~74_combout\,
	datab => \U14|X[1]~106_combout\,
	datac => \U14|X[1]~123_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~22_combout\);

-- Location: LCCOMB_X30_Y37_N10
\U14|X[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(1) = (!\U14|comb~21_combout\ & ((\U14|comb~22_combout\) # (\U14|X\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~21_combout\,
	datac => \U14|comb~22_combout\,
	datad => \U14|X\(1),
	combout => \U14|X\(1));

-- Location: LCCOMB_X36_Y37_N16
\U9|MBR_SIG[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG[2]~6_combout\ = (!\U14|X\(3) & (!\U14|X\(4) & ((\U14|X\(1)) # (\U14|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(1),
	datab => \U14|X\(3),
	datac => \U14|X\(4),
	datad => \U14|X\(2),
	combout => \U9|MBR_SIG[2]~6_combout\);

-- Location: IOIBUF_X34_Y39_N22
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

-- Location: LCCOMB_X39_Y37_N16
\U9|MBR_SIG~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~8_combout\ = (\U9|MBR_SIG[2]~7_combout\ & ((\U17|OR4_OUT~0_combout\ & (\U9|MBR_SIG\(2))) # (!\U17|OR4_OUT~0_combout\ & ((\U6|PC\(2)))))) # (!\U9|MBR_SIG[2]~7_combout\ & (((\U17|OR4_OUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(2),
	datab => \U9|MBR_SIG[2]~7_combout\,
	datac => \U17|OR4_OUT~0_combout\,
	datad => \U6|PC\(2),
	combout => \U9|MBR_SIG~8_combout\);

-- Location: LCCOMB_X39_Y36_N4
\U9|MBR_SIG~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~9_combout\ = (\U9|MBR_SIG[2]~6_combout\ & ((\U9|MBR_SIG~8_combout\ & (\U1|ACC\(2))) # (!\U9|MBR_SIG~8_combout\ & ((\DATOS[2]~input_o\))))) # (!\U9|MBR_SIG[2]~6_combout\ & (((\U9|MBR_SIG~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG[2]~6_combout\,
	datab => \U1|ACC\(2),
	datac => \DATOS[2]~input_o\,
	datad => \U9|MBR_SIG~8_combout\,
	combout => \U9|MBR_SIG~9_combout\);

-- Location: FF_X39_Y36_N5
\U9|MBR_SIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U9|MBR_SIG~9_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(2));

-- Location: LCCOMB_X34_Y38_N28
\U4|IR_SIG~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|IR_SIG~3_combout\ = (\U9|MBR_SIG\(2) & !\SRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|MBR_SIG\(2),
	datad => \SRST~input_o\,
	combout => \U4|IR_SIG~3_combout\);

-- Location: FF_X34_Y38_N29
\U4|IR_SIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U4|IR_SIG~3_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	ena => \U4|IR_SIG[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_SIG\(2));

-- Location: LCCOMB_X27_Y37_N14
\U14|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~1_combout\ = (\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) & (\U4|IR_SIG\(1) & !\U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|Equal4~1_combout\);

-- Location: LCCOMB_X32_Y37_N8
\U14|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~1_combout\ = (\U14|Equal4~1_combout\ & \U14|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~1_combout\,
	datad => \U14|Equal0~3_combout\,
	combout => \U14|process_0~1_combout\);

-- Location: LCCOMB_X34_Y37_N12
\U14|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~0_combout\ = (\U13|cuenta\(3) & (!\U13|cuenta\(2) & (\U13|cuenta\(1) & !\U13|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(1),
	datad => \U13|cuenta\(0),
	combout => \U14|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y37_N14
\U14|X[0]~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~181_combout\ = (\U14|X[7]~94_combout\ & ((\U14|Equal0~0_combout\) # (\U14|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~0_combout\,
	datac => \U14|X[7]~94_combout\,
	datad => \U14|Equal0~1_combout\,
	combout => \U14|X[0]~181_combout\);

-- Location: LCCOMB_X34_Y38_N24
\U14|X[0]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~171_combout\ = (\U13|cuenta\(3)) # (\U13|cuenta\(2) $ (((!\U13|cuenta\(0)) # (!\U13|cuenta\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|X[0]~171_combout\);

-- Location: LCCOMB_X34_Y38_N18
\U14|X[0]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~168_combout\ = (\U4|IR_SIG\(1) & (!\U4|IR_SIG\(3) & (\U4|IR_SIG\(2) $ (!\U4|IR_SIG\(0))))) # (!\U4|IR_SIG\(1) & (!\U4|IR_SIG\(2) & (\U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(2),
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[0]~168_combout\);

-- Location: LCCOMB_X34_Y38_N22
\U14|X[0]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~170_combout\ = (\U13|cuenta\(3)) # ((\U13|cuenta\(1) & ((\U13|cuenta\(2)) # (!\U13|cuenta\(0)))) # (!\U13|cuenta\(1) & ((\U13|cuenta\(0)) # (!\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U14|X[0]~170_combout\);

-- Location: LCCOMB_X34_Y38_N0
\U14|X[0]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~169_combout\ = (\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) & (\U4|IR_SIG\(1) $ (\U4|IR_SIG\(0))))) # (!\U4|IR_SIG\(2) & (!\U4|IR_SIG\(1) & (!\U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U4|IR_SIG\(2),
	datac => \U4|IR_SIG\(3),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[0]~169_combout\);

-- Location: LCCOMB_X34_Y38_N16
\U14|X[0]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~75_combout\ = (\U14|X[0]~171_combout\ & (\U14|X[0]~168_combout\ & (!\U14|X[0]~170_combout\))) # (!\U14|X[0]~171_combout\ & ((\U14|X[0]~169_combout\) # ((\U14|X[0]~168_combout\ & !\U14|X[0]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~171_combout\,
	datab => \U14|X[0]~168_combout\,
	datac => \U14|X[0]~170_combout\,
	datad => \U14|X[0]~169_combout\,
	combout => \U14|X[0]~75_combout\);

-- Location: LCCOMB_X34_Y36_N30
\U14|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~0_combout\ = (!\U4|IR_SIG\(3) & (\U4|IR_SIG\(1) & (!\U4|IR_SIG\(0) & !\U4|IR_SIG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(3),
	datab => \U4|IR_SIG\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(2),
	combout => \U14|Equal4~0_combout\);

-- Location: LCCOMB_X34_Y36_N8
\U14|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~2_combout\ = (!\U13|cuenta\(3) & (\U13|cuenta\(2) & (!\U13|cuenta\(1) & \U13|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(1),
	datad => \U13|cuenta\(0),
	combout => \U14|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y36_N0
\U14|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~0_combout\ = (\U14|Equal4~0_combout\ & \U14|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~0_combout\,
	datac => \U14|Equal0~2_combout\,
	combout => \U14|process_0~0_combout\);

-- Location: LCCOMB_X34_Y37_N20
\U14|X[0]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~76_combout\ = (\U14|process_0~1_combout\) # ((\U14|X[0]~181_combout\) # ((\U14|X[0]~75_combout\) # (\U14|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|process_0~1_combout\,
	datab => \U14|X[0]~181_combout\,
	datac => \U14|X[0]~75_combout\,
	datad => \U14|process_0~0_combout\,
	combout => \U14|X[0]~76_combout\);

-- Location: LCCOMB_X32_Y37_N30
\U14|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal0~5_combout\ = (!\U13|cuenta\(0) & (!\U13|cuenta\(1) & (!\U13|cuenta\(2) & \U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y37_N0
\U14|X[0]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~160_combout\ = ((\U14|Equal0~3_combout\) # ((\U14|Equal0~5_combout\) # (\U14|Equal0~7_combout\))) # (!\U14|X[0]~171_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~171_combout\,
	datab => \U14|Equal0~3_combout\,
	datac => \U14|Equal0~5_combout\,
	datad => \U14|Equal0~7_combout\,
	combout => \U14|X[0]~160_combout\);

-- Location: LCCOMB_X30_Y37_N14
\U14|X[0]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~172_combout\ = (\U4|IR_SIG\(1) & (\U4|IR_SIG\(2) $ (((\U4|IR_SIG\(3)) # (\U4|IR_SIG\(0)))))) # (!\U4|IR_SIG\(1) & (\U4|IR_SIG\(2) & ((!\U4|IR_SIG\(0)) # (!\U4|IR_SIG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|X[0]~172_combout\);

-- Location: LCCOMB_X32_Y37_N26
\U14|X[0]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~82_combout\ = (\U13|cuenta\(1)) # ((\U13|cuenta\(2)) # (\U13|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|X[0]~82_combout\);

-- Location: LCCOMB_X32_Y37_N20
\U14|X[0]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~83_combout\ = (\U14|Equal4~1_combout\ & ((\U14|Equal0~1_combout\) # (\U14|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~1_combout\,
	datac => \U14|Equal0~1_combout\,
	datad => \U14|Equal0~7_combout\,
	combout => \U14|X[0]~83_combout\);

-- Location: LCCOMB_X30_Y37_N6
\U14|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|Equal4~4_combout\ = (\U4|IR_SIG\(2) & (\U4|IR_SIG\(3) & (!\U4|IR_SIG\(1) & \U4|IR_SIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|Equal4~4_combout\);

-- Location: LCCOMB_X32_Y37_N4
\U14|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|process_0~2_combout\ = (\U14|Equal0~5_combout\ & (\U14|Equal4~4_combout\ & \U2|CCRZ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~5_combout\,
	datac => \U14|Equal4~4_combout\,
	datad => \U2|CCRZ~q\,
	combout => \U14|process_0~2_combout\);

-- Location: LCCOMB_X32_Y37_N16
\U14|X[0]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~80_combout\ = (!\U14|Equal0~3_combout\ & !\U14|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~3_combout\,
	datad => \U14|Equal0~7_combout\,
	combout => \U14|X[0]~80_combout\);

-- Location: LCCOMB_X32_Y37_N6
\U14|X[0]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~81_combout\ = (\U14|Equal4~4_combout\ & (((\U14|Equal0~5_combout\ & !\U2|CCRZ~q\)) # (!\U14|X[0]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~5_combout\,
	datab => \U14|X[0]~80_combout\,
	datac => \U14|Equal4~4_combout\,
	datad => \U2|CCRZ~q\,
	combout => \U14|X[0]~81_combout\);

-- Location: LCCOMB_X32_Y37_N14
\U14|X[0]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~84_combout\ = ((\U14|X[0]~83_combout\) # ((\U14|process_0~2_combout\) # (\U14|X[0]~81_combout\))) # (!\U14|X[0]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~82_combout\,
	datab => \U14|X[0]~83_combout\,
	datac => \U14|process_0~2_combout\,
	datad => \U14|X[0]~81_combout\,
	combout => \U14|X[0]~84_combout\);

-- Location: LCCOMB_X34_Y36_N2
\U14|X[0]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~78_combout\ = (\U13|cuenta\(1) & ((\U13|cuenta\(0) & ((\U14|Equal4~5_combout\))) # (!\U13|cuenta\(0) & (\U13|cuenta\(2))))) # (!\U13|cuenta\(1) & (\U13|cuenta\(2) & ((\U14|Equal4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(1),
	datad => \U14|Equal4~5_combout\,
	combout => \U14|X[0]~78_combout\);

-- Location: LCCOMB_X34_Y36_N28
\U14|X[0]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~79_combout\ = (\U13|cuenta\(3) & (!\U14|X[0]~78_combout\ & ((\U14|Equal4~5_combout\)))) # (!\U13|cuenta\(3) & (\U14|X[0]~78_combout\ & ((\U14|Equal4~0_combout\) # (\U14|Equal4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U14|X[0]~78_combout\,
	datac => \U14|Equal4~0_combout\,
	datad => \U14|Equal4~5_combout\,
	combout => \U14|X[0]~79_combout\);

-- Location: LCCOMB_X32_Y37_N10
\U14|X[0]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~159_combout\ = (\U14|Equal0~5_combout\) # ((\U14|Equal0~0_combout\) # ((\U13|cuenta\(2) & \U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~5_combout\,
	datab => \U14|Equal0~0_combout\,
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|X[0]~159_combout\);

-- Location: LCCOMB_X32_Y37_N12
\U14|X[0]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~77_combout\ = (\U14|Equal4~1_combout\ & \U14|X[0]~159_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~1_combout\,
	datad => \U14|X[0]~159_combout\,
	combout => \U14|X[0]~77_combout\);

-- Location: LCCOMB_X32_Y37_N28
\U14|X[0]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~85_combout\ = (\U14|Equal0~6_combout\) # ((\U14|X[0]~84_combout\) # ((\U14|X[0]~79_combout\) # (\U14|X[0]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~6_combout\,
	datab => \U14|X[0]~84_combout\,
	datac => \U14|X[0]~79_combout\,
	datad => \U14|X[0]~77_combout\,
	combout => \U14|X[0]~85_combout\);

-- Location: LCCOMB_X32_Y37_N18
\U14|X[0]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[0]~86_combout\ = (\U14|X[0]~76_combout\) # ((\U14|X[0]~85_combout\) # ((\U14|X[0]~160_combout\ & \U14|X[0]~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~76_combout\,
	datab => \U14|X[0]~160_combout\,
	datac => \U14|X[0]~172_combout\,
	datad => \U14|X[0]~85_combout\,
	combout => \U14|X[0]~86_combout\);

-- Location: LCCOMB_X32_Y38_N22
\U14|X[5]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~174_combout\ = (\U4|IR_SIG\(1) & ((\U4|IR_SIG\(0)))) # (!\U4|IR_SIG\(1) & (\U2|CCRC~q\ & !\U4|IR_SIG\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(1),
	datab => \U2|CCRC~q\,
	datac => \U4|IR_SIG\(0),
	combout => \U14|X[5]~174_combout\);

-- Location: LCCOMB_X32_Y38_N16
\U14|X[5]~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~175_combout\ = (\U14|X[5]~174_combout\ & (\U4|IR_SIG\(2) $ ((\U4|IR_SIG\(0))))) # (!\U14|X[5]~174_combout\ & (\U4|IR_SIG\(2) & (\U4|IR_SIG\(0) & \U2|CCRZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[5]~174_combout\,
	datab => \U4|IR_SIG\(2),
	datac => \U4|IR_SIG\(0),
	datad => \U2|CCRZ~q\,
	combout => \U14|X[5]~175_combout\);

-- Location: LCCOMB_X32_Y38_N28
\U14|X[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~25_combout\ = (\U13|cuenta\(3) & (!\U13|cuenta\(2) & \U14|X[5]~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datac => \U13|cuenta\(2),
	datad => \U14|X[5]~175_combout\,
	combout => \U14|X[5]~25_combout\);

-- Location: LCCOMB_X32_Y38_N14
\U14|X[5]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~167_combout\ = (!\U13|cuenta\(1) & (\U14|X[5]~25_combout\ & (!\U13|cuenta\(0) & \U4|IR_SIG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X[5]~25_combout\,
	datac => \U13|cuenta\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[5]~167_combout\);

-- Location: LCCOMB_X35_Y38_N28
\U14|comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~13_combout\ = (\U14|X[0]~86_combout\ & !\U14|X[5]~167_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~86_combout\,
	datad => \U14|X[5]~167_combout\,
	combout => \U14|comb~13_combout\);

-- Location: LCCOMB_X35_Y38_N14
\U14|comb~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~14_combout\ = (\U14|X[0]~86_combout\ & \U14|X[5]~167_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~86_combout\,
	datad => \U14|X[5]~167_combout\,
	combout => \U14|comb~14_combout\);

-- Location: LCCOMB_X35_Y38_N16
\U14|X[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(5) = (!\U14|comb~13_combout\ & ((\U14|comb~14_combout\) # (\U14|X\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~13_combout\,
	datac => \U14|comb~14_combout\,
	datad => \U14|X\(5),
	combout => \U14|X\(5));

-- Location: LCCOMB_X37_Y37_N30
\U6|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|Add0~2_combout\ = (\U14|X\(5) & (\U9|MBR_SIG\(0))) # (!\U14|X\(5) & ((\U6|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|MBR_SIG\(0),
	datac => \U6|Add0~0_combout\,
	datad => \U14|X\(5),
	combout => \U6|Add0~2_combout\);

-- Location: FF_X37_Y37_N31
\U6|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U6|Add0~2_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U6|PC[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(0));

-- Location: IOIBUF_X34_Y39_N1
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

-- Location: LCCOMB_X40_Y36_N16
\U9|MBR_SIG~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~1_combout\ = (\U9|MBR_SIG[2]~0_combout\ & (\U1|ACC\(0) & (!\U18|OR2_OUT~combout\))) # (!\U9|MBR_SIG[2]~0_combout\ & (((\U18|OR2_OUT~combout\) # (\DATOS[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG[2]~0_combout\,
	datab => \U1|ACC\(0),
	datac => \U18|OR2_OUT~combout\,
	datad => \DATOS[0]~input_o\,
	combout => \U9|MBR_SIG~1_combout\);

-- Location: LCCOMB_X40_Y36_N4
\U9|MBR_SIG~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U9|MBR_SIG~2_combout\ = (\U18|OR2_OUT~combout\ & ((\U9|MBR_SIG~1_combout\ & ((\U6|PC\(8)))) # (!\U9|MBR_SIG~1_combout\ & (\U6|PC\(0))))) # (!\U18|OR2_OUT~combout\ & (((\U9|MBR_SIG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(0),
	datab => \U6|PC\(8),
	datac => \U18|OR2_OUT~combout\,
	datad => \U9|MBR_SIG~1_combout\,
	combout => \U9|MBR_SIG~2_combout\);

-- Location: FF_X40_Y36_N5
\U9|MBR_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U9|MBR_SIG~2_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U9|MBR_SIG~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(0));

-- Location: LCCOMB_X30_Y37_N20
\U14|UC_OUT_RW~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~0_combout\ = (!\U4|IR_SIG\(0) & ((\U13|cuenta\(2) & (\U4|IR_SIG\(2) & !\U13|cuenta\(1))) # (!\U13|cuenta\(2) & ((\U13|cuenta\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(2),
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(1),
	datad => \U4|IR_SIG\(0),
	combout => \U14|UC_OUT_RW~0_combout\);

-- Location: LCCOMB_X30_Y37_N22
\U14|X[5]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~73_combout\ = (\U4|IR_SIG\(1) & !\U13|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|IR_SIG\(1),
	datad => \U13|cuenta\(0),
	combout => \U14|X[5]~73_combout\);

-- Location: LCCOMB_X30_Y37_N18
\U14|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~3_combout\ = (\U14|X[0]~86_combout\ & (((!\U14|X[5]~73_combout\) # (!\U14|UC_OUT_RW~0_combout\)) # (!\U14|X[1]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[1]~74_combout\,
	datab => \U14|UC_OUT_RW~0_combout\,
	datac => \U14|X[5]~73_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~3_combout\);

-- Location: LCCOMB_X30_Y37_N4
\U14|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~2_combout\ = (\U14|X[1]~74_combout\ & (\U14|UC_OUT_RW~0_combout\ & (\U14|X[5]~73_combout\ & \U14|X[0]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[1]~74_combout\,
	datab => \U14|UC_OUT_RW~0_combout\,
	datac => \U14|X[5]~73_combout\,
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~2_combout\);

-- Location: LCCOMB_X30_Y37_N16
\U14|UC_OUT_RW\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~combout\ = (!\U14|comb~2_combout\ & ((\U14|comb~3_combout\) # (\U14|UC_OUT_RW~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~3_combout\,
	datac => \U14|comb~2_combout\,
	datad => \U14|UC_OUT_RW~combout\,
	combout => \U14|UC_OUT_RW~combout\);

-- Location: LCCOMB_X32_Y38_N24
\U14|X[12]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[12]~125_combout\ = (\U4|IR_SIG\(2) & \U4|IR_SIG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[12]~125_combout\);

-- Location: LCCOMB_X32_Y38_N30
\U14|X[12]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[12]~126_combout\ = (\U4|IR_SIG\(0) & (\U4|IR_SIG\(3) & (\U13|cuenta\(2) $ (\U13|cuenta\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(1),
	datac => \U4|IR_SIG\(0),
	datad => \U4|IR_SIG\(3),
	combout => \U14|X[12]~126_combout\);

-- Location: LCCOMB_X32_Y38_N6
\U14|comb~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~26_combout\ = (\U14|X[0]~86_combout\ & (\U14|X[12]~125_combout\ & (\U14|X[12]~126_combout\ & \U14|X[12]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~86_combout\,
	datab => \U14|X[12]~125_combout\,
	datac => \U14|X[12]~126_combout\,
	datad => \U14|X[12]~119_combout\,
	combout => \U14|comb~26_combout\);

-- Location: LCCOMB_X32_Y38_N8
\U14|comb~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~25_combout\ = (\U14|X[0]~86_combout\ & (((!\U14|X[12]~119_combout\) # (!\U14|X[12]~126_combout\)) # (!\U14|X[12]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[0]~86_combout\,
	datab => \U14|X[12]~125_combout\,
	datac => \U14|X[12]~126_combout\,
	datad => \U14|X[12]~119_combout\,
	combout => \U14|comb~25_combout\);

-- Location: LCCOMB_X32_Y38_N10
\U14|X[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(12) = (!\U14|comb~25_combout\ & ((\U14|comb~26_combout\) # (\U14|X\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~26_combout\,
	datac => \U14|comb~25_combout\,
	datad => \U14|X\(12),
	combout => \U14|X\(12));

-- Location: LCCOMB_X34_Y36_N26
\U14|X[8]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~90_combout\ = (\U4|IR_SIG\(3) & (\U4|IR_SIG\(2) & \U4|IR_SIG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_SIG\(3),
	datac => \U4|IR_SIG\(2),
	datad => \U4|IR_SIG\(1),
	combout => \U14|X[8]~90_combout\);

-- Location: LCCOMB_X34_Y36_N24
\U14|X[13]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[13]~124_combout\ = (!\U4|IR_SIG\(0) & ((\U13|cuenta\(2) & (!\U13|cuenta\(1) & \U13|cuenta\(0))) # (!\U13|cuenta\(2) & (\U13|cuenta\(1) & !\U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U4|IR_SIG\(0),
	datac => \U13|cuenta\(1),
	datad => \U13|cuenta\(0),
	combout => \U14|X[13]~124_combout\);

-- Location: LCCOMB_X34_Y36_N12
\U14|comb~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~24_combout\ = (\U14|X[8]~90_combout\ & (\U14|X[0]~86_combout\ & (\U13|cuenta\(3) & \U14|X[13]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~90_combout\,
	datab => \U14|X[0]~86_combout\,
	datac => \U13|cuenta\(3),
	datad => \U14|X[13]~124_combout\,
	combout => \U14|comb~24_combout\);

-- Location: LCCOMB_X34_Y36_N18
\U14|comb~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~23_combout\ = (\U14|X[0]~86_combout\ & (((!\U14|X[13]~124_combout\) # (!\U13|cuenta\(3))) # (!\U14|X[8]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~90_combout\,
	datab => \U14|X[0]~86_combout\,
	datac => \U13|cuenta\(3),
	datad => \U14|X[13]~124_combout\,
	combout => \U14|comb~23_combout\);

-- Location: LCCOMB_X34_Y36_N20
\U14|X[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(13) = (!\U14|comb~23_combout\ & ((\U14|comb~24_combout\) # (\U14|X\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~24_combout\,
	datab => \U14|comb~23_combout\,
	datad => \U14|X\(13),
	combout => \U14|X\(13));

-- Location: LCCOMB_X36_Y36_N12
\U5|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~0_combout\ = \U5|SP\(0) $ (VCC)
-- \U5|Add1~1\ = CARRY(\U5|SP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|SP\(0),
	datad => VCC,
	combout => \U5|Add1~0_combout\,
	cout => \U5|Add1~1\);

-- Location: LCCOMB_X37_Y36_N14
\U5|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~2_combout\ = (\U14|X\(12) & (((\U5|Add1~0_combout\)))) # (!\U14|X\(12) & ((\U14|X\(13) & ((\U5|Add1~0_combout\))) # (!\U14|X\(13) & (\U9|MBR_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(0),
	datab => \U14|X\(12),
	datac => \U14|X\(13),
	datad => \U5|Add1~0_combout\,
	combout => \U5|Add1~2_combout\);

-- Location: LCCOMB_X34_Y36_N22
\U14|comb~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~37_combout\ = (\U14|X[0]~86_combout\ & ((!\U14|Equal0~2_combout\) # (!\U14|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal4~0_combout\,
	datab => \U14|X[0]~86_combout\,
	datac => \U14|Equal0~2_combout\,
	combout => \U14|comb~37_combout\);

-- Location: LCCOMB_X34_Y36_N10
\U14|X[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(11) = (!\U14|comb~37_combout\ & ((\U14|process_0~0_combout\) # (\U14|X\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|process_0~0_combout\,
	datac => \U14|comb~37_combout\,
	datad => \U14|X\(11),
	combout => \U14|X\(11));

-- Location: LCCOMB_X36_Y36_N28
\U5|SP[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[7]~0_combout\ = (\SRST~input_o\) # ((\U14|X\(13) & (!\U14|X\(11) & !\U14|X\(12))) # (!\U14|X\(13) & (\U14|X\(11) $ (\U14|X\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U14|X\(11),
	datac => \SRST~input_o\,
	datad => \U14|X\(12),
	combout => \U5|SP[7]~0_combout\);

-- Location: FF_X37_Y36_N15
\U5|SP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|Add1~2_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U5|SP[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(0));

-- Location: LCCOMB_X34_Y36_N16
\U14|X[9]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[9]~91_combout\ = (\U13|cuenta\(2) & (\U4|IR_SIG\(0) & !\U13|cuenta\(3))) # (!\U13|cuenta\(2) & (!\U4|IR_SIG\(0) & \U13|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U4|IR_SIG\(0),
	datac => \U13|cuenta\(3),
	combout => \U14|X[9]~91_combout\);

-- Location: LCCOMB_X34_Y36_N14
\U14|X[9]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[9]~92_combout\ = (\U14|X[8]~90_combout\ & (\U14|X[9]~91_combout\ & (\U13|cuenta\(0) $ (!\U13|cuenta\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~90_combout\,
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(1),
	datad => \U14|X[9]~91_combout\,
	combout => \U14|X[9]~92_combout\);

-- Location: LCCOMB_X35_Y36_N28
\U14|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~6_combout\ = (\U14|X[0]~86_combout\ & !\U14|X[9]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[0]~86_combout\,
	datad => \U14|X[9]~92_combout\,
	combout => \U14|comb~6_combout\);

-- Location: LCCOMB_X35_Y36_N30
\U14|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~7_combout\ = (\U14|X[0]~86_combout\ & \U14|X[9]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X[0]~86_combout\,
	datad => \U14|X[9]~92_combout\,
	combout => \U14|comb~7_combout\);

-- Location: LCCOMB_X35_Y36_N0
\U14|X[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(9) = (!\U14|comb~6_combout\ & ((\U14|comb~7_combout\) # (\U14|X\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~6_combout\,
	datac => \U14|comb~7_combout\,
	datad => \U14|X\(9),
	combout => \U14|X\(9));

-- Location: LCCOMB_X31_Y37_N24
\U14|X[8]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~89_combout\ = (\U13|cuenta\(1) & ((\U14|X[8]~88_combout\))) # (!\U13|cuenta\(1) & (\U14|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(1),
	datac => \U14|Equal4~1_combout\,
	datad => \U14|X[8]~88_combout\,
	combout => \U14|X[8]~89_combout\);

-- Location: LCCOMB_X34_Y37_N18
\U14|X[8]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~178_combout\ = (\U13|cuenta\(0) & ((\U13|cuenta\(2) & ((!\U13|cuenta\(1)))) # (!\U13|cuenta\(2) & (!\U14|X[8]~87_combout\ & \U13|cuenta\(1))))) # (!\U13|cuenta\(0) & ((\U13|cuenta\(2) $ (!\U13|cuenta\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~87_combout\,
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|X[8]~178_combout\);

-- Location: LCCOMB_X34_Y37_N16
\U14|X[8]~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[8]~179_combout\ = (!\U13|cuenta\(3) & (\U14|X[8]~178_combout\ & ((\U14|X[8]~89_combout\) # (!\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[8]~89_combout\,
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(2),
	datad => \U14|X[8]~178_combout\,
	combout => \U14|X[8]~179_combout\);

-- Location: LCCOMB_X34_Y37_N4
\U14|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~5_combout\ = (\U14|X[0]~86_combout\ & \U14|X[8]~179_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~86_combout\,
	datad => \U14|X[8]~179_combout\,
	combout => \U14|comb~5_combout\);

-- Location: LCCOMB_X34_Y37_N22
\U14|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~4_combout\ = (\U14|X[0]~86_combout\ & !\U14|X[8]~179_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X[0]~86_combout\,
	datad => \U14|X[8]~179_combout\,
	combout => \U14|comb~4_combout\);

-- Location: LCCOMB_X34_Y37_N24
\U14|X[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(8) = (!\U14|comb~4_combout\ & ((\U14|comb~5_combout\) # (\U14|X\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|comb~5_combout\,
	datac => \U14|comb~4_combout\,
	datad => \U14|X\(8),
	combout => \U14|X\(8));

-- Location: LCCOMB_X37_Y36_N24
\U12|MAR_SIG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~0_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & ((\U6|PC\(0)))) # (!\U14|X\(8) & (\U9|MBR_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(0),
	datab => \U14|X\(9),
	datac => \U6|PC\(0),
	datad => \U14|X\(8),
	combout => \U12|MAR_SIG~0_combout\);

-- Location: LCCOMB_X37_Y36_N28
\U12|MAR_SIG~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~1_combout\ = (\U12|MAR_SIG~0_combout\) # ((\U5|SP\(0) & \U14|X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|SP\(0),
	datac => \U14|X\(9),
	datad => \U12|MAR_SIG~0_combout\,
	combout => \U12|MAR_SIG~1_combout\);

-- Location: LCCOMB_X31_Y37_N18
\U14|X[7]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[7]~95_combout\ = (\U13|cuenta\(0) & ((\U14|X[7]~93_combout\))) # (!\U13|cuenta\(0) & (\U14|X[7]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[7]~94_combout\,
	datac => \U13|cuenta\(0),
	datad => \U14|X[7]~93_combout\,
	combout => \U14|X[7]~95_combout\);

-- Location: LCCOMB_X35_Y37_N26
\U14|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~9_combout\ = (\U14|X[17]~96_combout\ & (\U14|X[7]~95_combout\ & (!\U13|cuenta\(1) & \U14|X[0]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~96_combout\,
	datab => \U14|X[7]~95_combout\,
	datac => \U13|cuenta\(1),
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~9_combout\);

-- Location: LCCOMB_X35_Y37_N4
\U14|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|comb~8_combout\ = (\U14|X[0]~86_combout\ & (((\U13|cuenta\(1)) # (!\U14|X[7]~95_combout\)) # (!\U14|X[17]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[17]~96_combout\,
	datab => \U14|X[7]~95_combout\,
	datac => \U13|cuenta\(1),
	datad => \U14|X[0]~86_combout\,
	combout => \U14|comb~8_combout\);

-- Location: LCCOMB_X35_Y37_N10
\U14|X[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X\(7) = (!\U14|comb~8_combout\ & ((\U14|comb~9_combout\) # (\U14|X\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|comb~9_combout\,
	datac => \U14|comb~8_combout\,
	datad => \U14|X\(7),
	combout => \U14|X\(7));

-- Location: LCCOMB_X38_Y37_N2
\U12|MAR_SIG[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[1]~2_combout\ = (\U14|X\(9)) # ((\U14|X\(7)) # ((\SRST~input_o\) # (\U14|X\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(9),
	datab => \U14|X\(7),
	datac => \SRST~input_o\,
	datad => \U14|X\(8),
	combout => \U12|MAR_SIG[1]~2_combout\);

-- Location: FF_X37_Y36_N29
\U12|MAR_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~1_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(0));

-- Location: LCCOMB_X37_Y36_N22
\U12|MAR_SIG~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~3_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & ((\U6|PC\(1)))) # (!\U14|X\(8) & (\U9|MBR_SIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(8),
	datab => \U14|X\(9),
	datac => \U9|MBR_SIG\(1),
	datad => \U6|PC\(1),
	combout => \U12|MAR_SIG~3_combout\);

-- Location: LCCOMB_X36_Y36_N14
\U5|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~3_combout\ = (\U14|X\(13) & ((\U5|SP\(1) & (\U5|Add1~1\ & VCC)) # (!\U5|SP\(1) & (!\U5|Add1~1\)))) # (!\U14|X\(13) & ((\U5|SP\(1) & (!\U5|Add1~1\)) # (!\U5|SP\(1) & ((\U5|Add1~1\) # (GND)))))
-- \U5|Add1~4\ = CARRY((\U14|X\(13) & (!\U5|SP\(1) & !\U5|Add1~1\)) # (!\U14|X\(13) & ((!\U5|Add1~1\) # (!\U5|SP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(1),
	datad => VCC,
	cin => \U5|Add1~1\,
	combout => \U5|Add1~3_combout\,
	cout => \U5|Add1~4\);

-- Location: LCCOMB_X37_Y36_N12
\U5|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~5_combout\ = (\U14|X\(13) & (((\U5|Add1~3_combout\)))) # (!\U14|X\(13) & ((\U14|X\(12) & ((\U5|Add1~3_combout\))) # (!\U14|X\(12) & (\U9|MBR_SIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U14|X\(12),
	datac => \U9|MBR_SIG\(1),
	datad => \U5|Add1~3_combout\,
	combout => \U5|Add1~5_combout\);

-- Location: FF_X37_Y36_N13
\U5|SP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|Add1~5_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U5|SP[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(1));

-- Location: LCCOMB_X37_Y36_N2
\U12|MAR_SIG~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~4_combout\ = (\U12|MAR_SIG~3_combout\) # ((\U14|X\(9) & \U5|SP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(9),
	datac => \U12|MAR_SIG~3_combout\,
	datad => \U5|SP\(1),
	combout => \U12|MAR_SIG~4_combout\);

-- Location: FF_X37_Y36_N3
\U12|MAR_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~4_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(1));

-- Location: LCCOMB_X36_Y36_N16
\U5|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~6_combout\ = ((\U14|X\(13) $ (\U5|SP\(2) $ (!\U5|Add1~4\)))) # (GND)
-- \U5|Add1~7\ = CARRY((\U14|X\(13) & ((\U5|SP\(2)) # (!\U5|Add1~4\))) # (!\U14|X\(13) & (\U5|SP\(2) & !\U5|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(2),
	datad => VCC,
	cin => \U5|Add1~4\,
	combout => \U5|Add1~6_combout\,
	cout => \U5|Add1~7\);

-- Location: LCCOMB_X36_Y36_N4
\U5|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~8_combout\ = (\U14|X\(12) & (((\U5|Add1~6_combout\)))) # (!\U14|X\(12) & ((\U14|X\(13) & ((\U5|Add1~6_combout\))) # (!\U14|X\(13) & (\U9|MBR_SIG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(2),
	datab => \U14|X\(12),
	datac => \U14|X\(13),
	datad => \U5|Add1~6_combout\,
	combout => \U5|Add1~8_combout\);

-- Location: FF_X36_Y36_N5
\U5|SP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|Add1~8_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U5|SP[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(2));

-- Location: LCCOMB_X38_Y37_N24
\U12|MAR_SIG~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~5_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & ((\U6|PC\(2)))) # (!\U14|X\(8) & (\U9|MBR_SIG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(2),
	datab => \U14|X\(8),
	datac => \U14|X\(9),
	datad => \U6|PC\(2),
	combout => \U12|MAR_SIG~5_combout\);

-- Location: LCCOMB_X37_Y36_N4
\U12|MAR_SIG~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~6_combout\ = (\U12|MAR_SIG~5_combout\) # ((\U14|X\(9) & \U5|SP\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(9),
	datac => \U5|SP\(2),
	datad => \U12|MAR_SIG~5_combout\,
	combout => \U12|MAR_SIG~6_combout\);

-- Location: FF_X37_Y36_N5
\U12|MAR_SIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~6_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(2));

-- Location: LCCOMB_X36_Y36_N18
\U5|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~9_combout\ = (\U14|X\(13) & ((\U5|SP\(3) & (\U5|Add1~7\ & VCC)) # (!\U5|SP\(3) & (!\U5|Add1~7\)))) # (!\U14|X\(13) & ((\U5|SP\(3) & (!\U5|Add1~7\)) # (!\U5|SP\(3) & ((\U5|Add1~7\) # (GND)))))
-- \U5|Add1~10\ = CARRY((\U14|X\(13) & (!\U5|SP\(3) & !\U5|Add1~7\)) # (!\U14|X\(13) & ((!\U5|Add1~7\) # (!\U5|SP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(3),
	datad => VCC,
	cin => \U5|Add1~7\,
	combout => \U5|Add1~9_combout\,
	cout => \U5|Add1~10\);

-- Location: LCCOMB_X37_Y36_N26
\U5|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~11_combout\ = (\U14|X\(13) & (((\U5|Add1~9_combout\)))) # (!\U14|X\(13) & ((\U14|X\(12) & ((\U5|Add1~9_combout\))) # (!\U14|X\(12) & (\U9|MBR_SIG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U9|MBR_SIG\(3),
	datac => \U14|X\(12),
	datad => \U5|Add1~9_combout\,
	combout => \U5|Add1~11_combout\);

-- Location: FF_X37_Y36_N27
\U5|SP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|Add1~11_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U5|SP[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(3));

-- Location: LCCOMB_X37_Y36_N20
\U12|MAR_SIG~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~7_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & (\U6|PC\(3))) # (!\U14|X\(8) & ((\U9|MBR_SIG\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(8),
	datab => \U14|X\(9),
	datac => \U6|PC\(3),
	datad => \U9|MBR_SIG\(3),
	combout => \U12|MAR_SIG~7_combout\);

-- Location: LCCOMB_X37_Y36_N10
\U12|MAR_SIG~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~8_combout\ = (\U12|MAR_SIG~7_combout\) # ((\U14|X\(9) & \U5|SP\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(9),
	datac => \U5|SP\(3),
	datad => \U12|MAR_SIG~7_combout\,
	combout => \U12|MAR_SIG~8_combout\);

-- Location: FF_X37_Y36_N11
\U12|MAR_SIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~8_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(3));

-- Location: LCCOMB_X36_Y36_N20
\U5|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~12_combout\ = ((\U14|X\(13) $ (\U5|SP\(4) $ (!\U5|Add1~10\)))) # (GND)
-- \U5|Add1~13\ = CARRY((\U14|X\(13) & ((\U5|SP\(4)) # (!\U5|Add1~10\))) # (!\U14|X\(13) & (\U5|SP\(4) & !\U5|Add1~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(4),
	datad => VCC,
	cin => \U5|Add1~10\,
	combout => \U5|Add1~12_combout\,
	cout => \U5|Add1~13\);

-- Location: LCCOMB_X36_Y36_N6
\U5|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~14_combout\ = (\U14|X\(13) & (((\U5|Add1~12_combout\)))) # (!\U14|X\(13) & ((\U14|X\(12) & ((\U5|Add1~12_combout\))) # (!\U14|X\(12) & (\U9|MBR_SIG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U14|X\(12),
	datac => \U9|MBR_SIG\(4),
	datad => \U5|Add1~12_combout\,
	combout => \U5|Add1~14_combout\);

-- Location: FF_X36_Y36_N7
\U5|SP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|Add1~14_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U5|SP[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(4));

-- Location: LCCOMB_X38_Y37_N10
\U12|MAR_SIG~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~9_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & (\U6|PC\(4))) # (!\U14|X\(8) & ((\U9|MBR_SIG\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(4),
	datab => \U9|MBR_SIG\(4),
	datac => \U14|X\(9),
	datad => \U14|X\(8),
	combout => \U12|MAR_SIG~9_combout\);

-- Location: LCCOMB_X37_Y36_N0
\U12|MAR_SIG~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~10_combout\ = (\U12|MAR_SIG~9_combout\) # ((\U5|SP\(4) & \U14|X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|SP\(4),
	datac => \U14|X\(9),
	datad => \U12|MAR_SIG~9_combout\,
	combout => \U12|MAR_SIG~10_combout\);

-- Location: FF_X37_Y36_N1
\U12|MAR_SIG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~10_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(4));

-- Location: LCCOMB_X36_Y36_N22
\U5|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~15_combout\ = (\U14|X\(13) & ((\U5|SP\(5) & (\U5|Add1~13\ & VCC)) # (!\U5|SP\(5) & (!\U5|Add1~13\)))) # (!\U14|X\(13) & ((\U5|SP\(5) & (!\U5|Add1~13\)) # (!\U5|SP\(5) & ((\U5|Add1~13\) # (GND)))))
-- \U5|Add1~16\ = CARRY((\U14|X\(13) & (!\U5|SP\(5) & !\U5|Add1~13\)) # (!\U14|X\(13) & ((!\U5|Add1~13\) # (!\U5|SP\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(5),
	datad => VCC,
	cin => \U5|Add1~13\,
	combout => \U5|Add1~15_combout\,
	cout => \U5|Add1~16\);

-- Location: LCCOMB_X36_Y36_N0
\U5|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~17_combout\ = (\U14|X\(13) & (((\U5|Add1~15_combout\)))) # (!\U14|X\(13) & ((\U14|X\(12) & ((\U5|Add1~15_combout\))) # (!\U14|X\(12) & (\U9|MBR_SIG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U9|MBR_SIG\(5),
	datac => \U5|Add1~15_combout\,
	datad => \U14|X\(12),
	combout => \U5|Add1~17_combout\);

-- Location: FF_X36_Y36_N1
\U5|SP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|Add1~17_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U5|SP[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(5));

-- Location: LCCOMB_X38_Y37_N16
\U12|MAR_SIG~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~11_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & ((\U6|PC\(5)))) # (!\U14|X\(8) & (\U9|MBR_SIG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(5),
	datab => \U6|PC\(5),
	datac => \U14|X\(9),
	datad => \U14|X\(8),
	combout => \U12|MAR_SIG~11_combout\);

-- Location: LCCOMB_X38_Y37_N0
\U12|MAR_SIG~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~12_combout\ = (\U12|MAR_SIG~11_combout\) # ((\U5|SP\(5) & \U14|X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(5),
	datac => \U14|X\(9),
	datad => \U12|MAR_SIG~11_combout\,
	combout => \U12|MAR_SIG~12_combout\);

-- Location: FF_X38_Y37_N1
\U12|MAR_SIG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~12_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(5));

-- Location: LCCOMB_X36_Y36_N24
\U5|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~18_combout\ = ((\U14|X\(13) $ (\U5|SP\(6) $ (!\U5|Add1~16\)))) # (GND)
-- \U5|Add1~19\ = CARRY((\U14|X\(13) & ((\U5|SP\(6)) # (!\U5|Add1~16\))) # (!\U14|X\(13) & (\U5|SP\(6) & !\U5|Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(6),
	datad => VCC,
	cin => \U5|Add1~16\,
	combout => \U5|Add1~18_combout\,
	cout => \U5|Add1~19\);

-- Location: LCCOMB_X36_Y36_N30
\U5|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~20_combout\ = (\U14|X\(13) & (((\U5|Add1~18_combout\)))) # (!\U14|X\(13) & ((\U14|X\(12) & ((\U5|Add1~18_combout\))) # (!\U14|X\(12) & (\U9|MBR_SIG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U14|X\(12),
	datac => \U9|MBR_SIG\(6),
	datad => \U5|Add1~18_combout\,
	combout => \U5|Add1~20_combout\);

-- Location: FF_X36_Y36_N31
\U5|SP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|Add1~20_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U5|SP[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(6));

-- Location: LCCOMB_X36_Y36_N10
\U12|MAR_SIG~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~13_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & ((\U6|PC\(6)))) # (!\U14|X\(8) & (\U9|MBR_SIG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(6),
	datab => \U14|X\(9),
	datac => \U14|X\(8),
	datad => \U6|PC\(6),
	combout => \U12|MAR_SIG~13_combout\);

-- Location: LCCOMB_X37_Y36_N18
\U12|MAR_SIG~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~14_combout\ = (\U12|MAR_SIG~13_combout\) # ((\U5|SP\(6) & \U14|X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|SP\(6),
	datac => \U14|X\(9),
	datad => \U12|MAR_SIG~13_combout\,
	combout => \U12|MAR_SIG~14_combout\);

-- Location: FF_X37_Y36_N19
\U12|MAR_SIG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~14_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(6));

-- Location: LCCOMB_X36_Y36_N26
\U5|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~21_combout\ = \U14|X\(13) $ (\U5|Add1~19\ $ (\U5|SP\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datad => \U5|SP\(7),
	cin => \U5|Add1~19\,
	combout => \U5|Add1~21_combout\);

-- Location: LCCOMB_X36_Y36_N8
\U5|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Add1~23_combout\ = (\U14|X\(13) & (((\U5|Add1~21_combout\)))) # (!\U14|X\(13) & ((\U14|X\(12) & (\U5|Add1~21_combout\)) # (!\U14|X\(12) & ((\U9|MBR_SIG\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U14|X\(12),
	datac => \U5|Add1~21_combout\,
	datad => \U9|MBR_SIG\(7),
	combout => \U5|Add1~23_combout\);

-- Location: FF_X36_Y36_N9
\U5|SP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|Add1~23_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U5|SP[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(7));

-- Location: LCCOMB_X38_Y37_N14
\U12|MAR_SIG~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~15_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & (\U6|PC\(7))) # (!\U14|X\(8) & ((\U9|MBR_SIG\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(9),
	datab => \U14|X\(8),
	datac => \U6|PC\(7),
	datad => \U9|MBR_SIG\(7),
	combout => \U12|MAR_SIG~15_combout\);

-- Location: LCCOMB_X37_Y36_N16
\U12|MAR_SIG~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~16_combout\ = (\U12|MAR_SIG~15_combout\) # ((\U5|SP\(7) & \U14|X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(7),
	datac => \U14|X\(9),
	datad => \U12|MAR_SIG~15_combout\,
	combout => \U12|MAR_SIG~16_combout\);

-- Location: FF_X37_Y36_N17
\U12|MAR_SIG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~16_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(7));

-- Location: LCCOMB_X37_Y37_N28
\U12|MAR_SIG~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~17_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & ((\U6|PC\(8)))) # (!\U14|X\(8) & (\U3|MBRAUX_SIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(8),
	datab => \U3|MBRAUX_SIG\(0),
	datac => \U14|X\(9),
	datad => \U6|PC\(8),
	combout => \U12|MAR_SIG~17_combout\);

-- Location: FF_X37_Y37_N29
\U12|MAR_SIG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~17_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(8));

-- Location: LCCOMB_X38_Y37_N6
\U12|MAR_SIG~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG~18_combout\ = (\U14|X\(9)) # ((\U14|X\(8) & ((\U6|PC\(9)))) # (!\U14|X\(8) & (\U3|MBRAUX_SIG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|MBRAUX_SIG\(1),
	datab => \U6|PC\(9),
	datac => \U14|X\(9),
	datad => \U14|X\(8),
	combout => \U12|MAR_SIG~18_combout\);

-- Location: FF_X38_Y37_N7
\U12|MAR_SIG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U12|MAR_SIG~18_combout\,
	clrn => \ALT_INV_ARST~inputclkctrl_outclk\,
	sclr => \SRST~input_o\,
	ena => \U12|MAR_SIG[1]~2_combout\,
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


