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

-- DATE "12/04/2023 09:46:00"

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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	NARST : IN std_logic;
	CE_CONT : IN std_logic;
	DATOS : BUFFER std_logic_vector(7 DOWNTO 0);
	DIRECCIONES : BUFFER std_logic_vector(9 DOWNTO 0);
	RW : BUFFER std_logic;
	ESTADOS : BUFFER std_logic_vector(3 DOWNTO 0);
	TIEMPOS : BUFFER std_logic_vector(3 DOWNTO 0);
	X_DISP : BUFFER std_logic_vector(0 TO 19)
	);
END MPU;

-- Design Ports Information
-- DIRECCIONES[0]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[1]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[2]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[3]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[5]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[6]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[7]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[8]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DIRECCIONES[9]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RW	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ESTADOS[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ESTADOS[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ESTADOS[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ESTADOS[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TIEMPOS[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TIEMPOS[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TIEMPOS[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TIEMPOS[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[19]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[18]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[17]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[16]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[15]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[14]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[13]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[12]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[11]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[10]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[9]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[8]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[7]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[6]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[4]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[3]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[2]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- X_DISP[0]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATOS[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATOS[1]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATOS[2]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATOS[3]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATOS[4]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATOS[5]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATOS[6]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DATOS[7]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NARST	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- CE_CONT	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_NARST : std_logic;
SIGNAL ww_CE_CONT : std_logic;
SIGNAL ww_DATOS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DIRECCIONES : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_RW : std_logic;
SIGNAL ww_ESTADOS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TIEMPOS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X_DISP : std_logic_vector(0 TO 19);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \X_DISP[19]~output_o\ : std_logic;
SIGNAL \X_DISP[18]~output_o\ : std_logic;
SIGNAL \X_DISP[17]~output_o\ : std_logic;
SIGNAL \X_DISP[16]~output_o\ : std_logic;
SIGNAL \X_DISP[15]~output_o\ : std_logic;
SIGNAL \X_DISP[14]~output_o\ : std_logic;
SIGNAL \X_DISP[13]~output_o\ : std_logic;
SIGNAL \X_DISP[12]~output_o\ : std_logic;
SIGNAL \X_DISP[11]~output_o\ : std_logic;
SIGNAL \X_DISP[10]~output_o\ : std_logic;
SIGNAL \X_DISP[9]~output_o\ : std_logic;
SIGNAL \X_DISP[8]~output_o\ : std_logic;
SIGNAL \X_DISP[7]~output_o\ : std_logic;
SIGNAL \X_DISP[6]~output_o\ : std_logic;
SIGNAL \X_DISP[5]~output_o\ : std_logic;
SIGNAL \X_DISP[4]~output_o\ : std_logic;
SIGNAL \X_DISP[3]~output_o\ : std_logic;
SIGNAL \X_DISP[2]~output_o\ : std_logic;
SIGNAL \X_DISP[1]~output_o\ : std_logic;
SIGNAL \X_DISP[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \U13|cuenta~3_combout\ : std_logic;
SIGNAL \NARST~input_o\ : std_logic;
SIGNAL \CE_CONT~input_o\ : std_logic;
SIGNAL \U13|cuenta[2]~1_combout\ : std_logic;
SIGNAL \U14|X~24_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U13|Add0~0_combout\ : std_logic;
SIGNAL \U13|cuenta~4_combout\ : std_logic;
SIGNAL \U6|PC[0]~10_combout\ : std_logic;
SIGNAL \U14|X~7_combout\ : std_logic;
SIGNAL \DATOS[2]~input_o\ : std_logic;
SIGNAL \U14|X~10_combout\ : std_logic;
SIGNAL \U14|X~4_combout\ : std_logic;
SIGNAL \U14|X~11_combout\ : std_logic;
SIGNAL \U14|X~8_combout\ : std_logic;
SIGNAL \U14|X~9_combout\ : std_logic;
SIGNAL \U14|X~5_combout\ : std_logic;
SIGNAL \U14|X~6_combout\ : std_logic;
SIGNAL \U14|X~12_combout\ : std_logic;
SIGNAL \U7|Mux5~0_combout\ : std_logic;
SIGNAL \U7|Mux5~1_combout\ : std_logic;
SIGNAL \U14|X~83_combout\ : std_logic;
SIGNAL \U14|X~84_combout\ : std_logic;
SIGNAL \U14|X~63_combout\ : std_logic;
SIGNAL \U14|X~76_combout\ : std_logic;
SIGNAL \U14|X[4]~feeder_combout\ : std_logic;
SIGNAL \U17|OR4_OUT~0_combout\ : std_logic;
SIGNAL \U14|X~20_combout\ : std_logic;
SIGNAL \U14|X~21_combout\ : std_logic;
SIGNAL \U14|X~22_combout\ : std_logic;
SIGNAL \U14|X~23_combout\ : std_logic;
SIGNAL \U14|X~25_combout\ : std_logic;
SIGNAL \U14|X~26_combout\ : std_logic;
SIGNAL \U14|X~85_combout\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U14|X~30_combout\ : std_logic;
SIGNAL \U14|X~27_combout\ : std_logic;
SIGNAL \U14|X~28_combout\ : std_logic;
SIGNAL \U14|X~29_combout\ : std_logic;
SIGNAL \U14|X~31_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~8_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~9_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~10_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[0]~11_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~2_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~3_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~6_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~4_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~5_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[1]~7_combout\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~13_combout\ : std_logic;
SIGNAL \U6|PC[3]~18\ : std_logic;
SIGNAL \U6|PC[4]~19_combout\ : std_logic;
SIGNAL \U14|X~69_combout\ : std_logic;
SIGNAL \U14|X~72_combout\ : std_logic;
SIGNAL \U14|X~67_combout\ : std_logic;
SIGNAL \U14|X~32_combout\ : std_logic;
SIGNAL \U14|X~71_combout\ : std_logic;
SIGNAL \U14|X~73_combout\ : std_logic;
SIGNAL \U6|PC[4]~12_combout\ : std_logic;
SIGNAL \DATOS[4]~input_o\ : std_logic;
SIGNAL \U7|Mux3~0_combout\ : std_logic;
SIGNAL \U7|Mux3~1_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~27_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~31_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~28_combout\ : std_logic;
SIGNAL \U6|PC[4]~20\ : std_logic;
SIGNAL \U6|PC[5]~21_combout\ : std_logic;
SIGNAL \DATOS[5]~input_o\ : std_logic;
SIGNAL \U7|Mux2~0_combout\ : std_logic;
SIGNAL \U7|Mux2~1_combout\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~18_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~19_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~21_combout\ : std_logic;
SIGNAL \DATOS[6]~input_o\ : std_logic;
SIGNAL \U7|Mux1~0_combout\ : std_logic;
SIGNAL \U6|PC[5]~22\ : std_logic;
SIGNAL \U6|PC[6]~23_combout\ : std_logic;
SIGNAL \U7|Mux1~1_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~23_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~24_combout\ : std_logic;
SIGNAL \U6|PC[6]~24\ : std_logic;
SIGNAL \U6|PC[7]~25_combout\ : std_logic;
SIGNAL \DATOS[7]~input_o\ : std_logic;
SIGNAL \U7|Mux0~0_combout\ : std_logic;
SIGNAL \U7|Mux0~1_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~0_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~1_combout\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~39_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[7]~40_combout\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~25_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~26_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[6]~36_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~20_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[5]~22_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~29_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~30_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[4]~32_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~12_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~16_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~14_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~15_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[3]~17_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~33_combout\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~34_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~37_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~38_combout\ : std_logic;
SIGNAL \U0|ALU_OUT[2]~35_combout\ : std_logic;
SIGNAL \U0|tmp[7]~1_combout\ : std_logic;
SIGNAL \U0|tmp[7]~0_combout\ : std_logic;
SIGNAL \U2|CCRZ~q\ : std_logic;
SIGNAL \U0|ALU_OUT_C~0_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|ALU_OUT_C~1_combout\ : std_logic;
SIGNAL \U2|CCRC~q\ : std_logic;
SIGNAL \U14|X~37_combout\ : std_logic;
SIGNAL \U14|X~74_combout\ : std_logic;
SIGNAL \U14|X~75_combout\ : std_logic;
SIGNAL \U14|X[5]~feeder_combout\ : std_logic;
SIGNAL \U14|X[14]~41_combout\ : std_logic;
SIGNAL \U14|X[14]~42_combout\ : std_logic;
SIGNAL \U14|X[14]~43_combout\ : std_logic;
SIGNAL \U14|X[14]~44_combout\ : std_logic;
SIGNAL \U14|X[14]~45_combout\ : std_logic;
SIGNAL \U14|X[14]~13_combout\ : std_logic;
SIGNAL \U14|X[14]~46_combout\ : std_logic;
SIGNAL \U14|X[14]~47_combout\ : std_logic;
SIGNAL \U14|X[14]~48_combout\ : std_logic;
SIGNAL \U14|X[14]~51_combout\ : std_logic;
SIGNAL \U14|X[14]~49_combout\ : std_logic;
SIGNAL \U14|X[14]~50_combout\ : std_logic;
SIGNAL \U14|X[14]~52_combout\ : std_logic;
SIGNAL \U14|X[14]~53_combout\ : std_logic;
SIGNAL \U6|PC[0]~11\ : std_logic;
SIGNAL \U6|PC[1]~13_combout\ : std_logic;
SIGNAL \U6|PC[1]~14\ : std_logic;
SIGNAL \U6|PC[2]~15_combout\ : std_logic;
SIGNAL \U6|PC[2]~16\ : std_logic;
SIGNAL \U6|PC[3]~17_combout\ : std_logic;
SIGNAL \DATOS[3]~input_o\ : std_logic;
SIGNAL \U7|Mux4~0_combout\ : std_logic;
SIGNAL \U7|Mux4~1_combout\ : std_logic;
SIGNAL \U14|X[10]~16_combout\ : std_logic;
SIGNAL \U14|X[10]~17_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~9_combout\ : std_logic;
SIGNAL \U14|X[10]~18_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~1_combout\ : std_logic;
SIGNAL \U14|X[10]~14_combout\ : std_logic;
SIGNAL \U14|X[10]~15_combout\ : std_logic;
SIGNAL \U14|X[10]~19_combout\ : std_logic;
SIGNAL \U4|IR_OUT[0]~0_combout\ : std_logic;
SIGNAL \U14|X~77_combout\ : std_logic;
SIGNAL \U14|X[3]~feeder_combout\ : std_logic;
SIGNAL \U18|OR2_OUT~combout\ : std_logic;
SIGNAL \DATOS[1]~input_o\ : std_logic;
SIGNAL \U7|Mux6~0_combout\ : std_logic;
SIGNAL \U6|PC[7]~26\ : std_logic;
SIGNAL \U6|PC[8]~27_combout\ : std_logic;
SIGNAL \U3|MBRAUX_SIG[0]~feeder_combout\ : std_logic;
SIGNAL \U14|X~57_combout\ : std_logic;
SIGNAL \U14|X~60_combout\ : std_logic;
SIGNAL \U14|X~61_combout\ : std_logic;
SIGNAL \U14|X~62_combout\ : std_logic;
SIGNAL \U6|PC[8]~28\ : std_logic;
SIGNAL \U6|PC[9]~29_combout\ : std_logic;
SIGNAL \U3|MBRAUX_SIG[1]~feeder_combout\ : std_logic;
SIGNAL \U7|Mux6~1_combout\ : std_logic;
SIGNAL \U14|X[14]~89_combout\ : std_logic;
SIGNAL \U14|X[14]~90_combout\ : std_logic;
SIGNAL \U14|X[14]~35_combout\ : std_logic;
SIGNAL \U14|X~36_combout\ : std_logic;
SIGNAL \U14|X[14]~38_combout\ : std_logic;
SIGNAL \U14|X[14]~39_combout\ : std_logic;
SIGNAL \U14|X[14]~40_combout\ : std_logic;
SIGNAL \U14|X[14]~33_combout\ : std_logic;
SIGNAL \U14|X[14]~34_combout\ : std_logic;
SIGNAL \U14|X[14]~54_combout\ : std_logic;
SIGNAL \U13|cuenta~0_combout\ : std_logic;
SIGNAL \U13|cuenta~2_combout\ : std_logic;
SIGNAL \U14|X~80_combout\ : std_logic;
SIGNAL \U14|X~81_combout\ : std_logic;
SIGNAL \U14|X~78_combout\ : std_logic;
SIGNAL \U14|X~79_combout\ : std_logic;
SIGNAL \U14|X~82_combout\ : std_logic;
SIGNAL \U19|OR2_OUT~combout\ : std_logic;
SIGNAL \DATOS[0]~input_o\ : std_logic;
SIGNAL \U7|Mux7~0_combout\ : std_logic;
SIGNAL \U7|Mux7~1_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~4_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~3_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~5_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~6_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~0_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~2_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~10_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~11_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~12_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~7_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~8_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~13_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~14_combout\ : std_logic;
SIGNAL \U14|UC_OUT_RW~q\ : std_logic;
SIGNAL \U5|SP[0]~8_combout\ : std_logic;
SIGNAL \U14|X~55_combout\ : std_logic;
SIGNAL \U14|X~56_combout\ : std_logic;
SIGNAL \U14|X~86_combout\ : std_logic;
SIGNAL \U5|SP[3]~10_combout\ : std_logic;
SIGNAL \U14|X~58_combout\ : std_logic;
SIGNAL \U14|X~59_combout\ : std_logic;
SIGNAL \U5|SP[3]~11_combout\ : std_logic;
SIGNAL \U14|X~64_combout\ : std_logic;
SIGNAL \U14|X~65_combout\ : std_logic;
SIGNAL \U12|MAR_SIG[0]~0_combout\ : std_logic;
SIGNAL \U14|X~68_combout\ : std_logic;
SIGNAL \U14|X~87_combout\ : std_logic;
SIGNAL \U14|X~66_combout\ : std_logic;
SIGNAL \U14|X~88_combout\ : std_logic;
SIGNAL \U16|OR3_OUT~0_combout\ : std_logic;
SIGNAL \U14|X~70_combout\ : std_logic;
SIGNAL \U14|X[7]~feeder_combout\ : std_logic;
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
SIGNAL \U3|MBRAUX_SIG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|MAR_SIG\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|ACC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U14|X\ : std_logic_vector(0 TO 19);
SIGNAL \U6|PC\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U13|cuenta\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|SP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|IR_OUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U9|MBR_SIG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U14|ALT_INV_X\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U13|ALT_INV_cuenta\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U14|ALT_INV_UC_OUT_RW~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_NARST <= NARST;
ww_CE_CONT <= CE_CONT;
DATOS <= ww_DATOS;
DIRECCIONES <= ww_DIRECCIONES;
RW <= ww_RW;
ESTADOS <= ww_ESTADOS;
TIEMPOS <= ww_TIEMPOS;
X_DISP <= ww_X_DISP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);
\U14|ALT_INV_X\(0) <= NOT \U14|X\(0);
\U14|ALT_INV_X\(1) <= NOT \U14|X\(1);
\U14|ALT_INV_X\(3) <= NOT \U14|X\(3);
\U14|ALT_INV_X\(4) <= NOT \U14|X\(4);
\U14|ALT_INV_X\(5) <= NOT \U14|X\(5);
\U14|ALT_INV_X\(6) <= NOT \U14|X\(6);
\U14|ALT_INV_X\(7) <= NOT \U14|X\(7);
\U14|ALT_INV_X\(8) <= NOT \U14|X\(8);
\U14|ALT_INV_X\(10) <= NOT \U14|X\(10);
\U14|ALT_INV_X\(11) <= NOT \U14|X\(11);
\U14|ALT_INV_X\(12) <= NOT \U14|X\(12);
\U14|ALT_INV_X\(13) <= NOT \U14|X\(13);
\U14|ALT_INV_X\(2) <= NOT \U14|X\(2);
\U14|ALT_INV_X\(9) <= NOT \U14|X\(9);
\U14|ALT_INV_X\(14) <= NOT \U14|X\(14);
\U14|ALT_INV_X\(15) <= NOT \U14|X\(15);
\U14|ALT_INV_X\(16) <= NOT \U14|X\(16);
\U14|ALT_INV_X\(17) <= NOT \U14|X\(17);
\U14|ALT_INV_X\(19) <= NOT \U14|X\(19);
\U13|ALT_INV_cuenta\(3) <= NOT \U13|cuenta\(3);
\U13|ALT_INV_cuenta\(0) <= NOT \U13|cuenta\(0);
\U14|ALT_INV_UC_OUT_RW~q\ <= NOT \U14|UC_OUT_RW~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N23
\DATOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(0),
	oe => \U14|ALT_INV_UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \DATOS[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\DATOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(1),
	oe => \U14|ALT_INV_UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \DATOS[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\DATOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(2),
	oe => \U14|ALT_INV_UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \DATOS[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\DATOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(3),
	oe => \U14|ALT_INV_UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \DATOS[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\DATOS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(4),
	oe => \U14|ALT_INV_UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \DATOS[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\DATOS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(5),
	oe => \U14|ALT_INV_UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \DATOS[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\DATOS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(6),
	oe => \U14|ALT_INV_UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \DATOS[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\DATOS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|MBR_SIG\(7),
	oe => \U14|ALT_INV_UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \DATOS[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N30
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N30
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

-- Location: IOOBUF_X22_Y0_N16
\RW~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|UC_OUT_RW~q\,
	devoe => ww_devoe,
	o => \RW~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\ESTADOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|IR_OUT\(0),
	devoe => ww_devoe,
	o => \ESTADOS[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\ESTADOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|IR_OUT\(1),
	devoe => ww_devoe,
	o => \ESTADOS[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\ESTADOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|IR_OUT\(2),
	devoe => ww_devoe,
	o => \ESTADOS[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\ESTADOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|IR_OUT\(3),
	devoe => ww_devoe,
	o => \ESTADOS[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X78_Y49_N2
\X_DISP[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(19),
	devoe => ww_devoe,
	o => \X_DISP[19]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\X_DISP[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \X_DISP[18]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\X_DISP[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(17),
	devoe => ww_devoe,
	o => \X_DISP[17]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\X_DISP[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(16),
	devoe => ww_devoe,
	o => \X_DISP[16]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\X_DISP[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(15),
	devoe => ww_devoe,
	o => \X_DISP[15]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\X_DISP[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(14),
	devoe => ww_devoe,
	o => \X_DISP[14]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\X_DISP[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(13),
	devoe => ww_devoe,
	o => \X_DISP[13]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\X_DISP[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(12),
	devoe => ww_devoe,
	o => \X_DISP[12]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\X_DISP[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(11),
	devoe => ww_devoe,
	o => \X_DISP[11]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\X_DISP[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(10),
	devoe => ww_devoe,
	o => \X_DISP[10]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\X_DISP[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(9),
	devoe => ww_devoe,
	o => \X_DISP[9]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\X_DISP[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(8),
	devoe => ww_devoe,
	o => \X_DISP[8]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\X_DISP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(7),
	devoe => ww_devoe,
	o => \X_DISP[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\X_DISP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(6),
	devoe => ww_devoe,
	o => \X_DISP[6]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\X_DISP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(5),
	devoe => ww_devoe,
	o => \X_DISP[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\X_DISP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(4),
	devoe => ww_devoe,
	o => \X_DISP[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\X_DISP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(3),
	devoe => ww_devoe,
	o => \X_DISP[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\X_DISP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(2),
	devoe => ww_devoe,
	o => \X_DISP[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\X_DISP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(1),
	devoe => ww_devoe,
	o => \X_DISP[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\X_DISP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|ALT_INV_X\(0),
	devoe => ww_devoe,
	o => \X_DISP[0]~output_o\);

-- Location: IOIBUF_X22_Y0_N8
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

-- Location: LCCOMB_X20_Y4_N20
\U13|cuenta~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~3_combout\ = (!\U14|X\(14) & (\U13|cuenta\(2) $ (((\U13|cuenta\(1) & \U13|cuenta\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(2),
	datad => \U14|X\(14),
	combout => \U13|cuenta~3_combout\);

-- Location: IOIBUF_X46_Y54_N29
\NARST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NARST,
	o => \NARST~input_o\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: LCCOMB_X20_Y4_N22
\U13|cuenta[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta[2]~1_combout\ = (\CE_CONT~input_o\) # (\U14|X\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CE_CONT~input_o\,
	datad => \U14|X\(14),
	combout => \U13|cuenta[2]~1_combout\);

-- Location: FF_X20_Y4_N21
\U13|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U13|cuenta~3_combout\,
	clrn => \NARST~input_o\,
	ena => \U13|cuenta[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(2));

-- Location: LCCOMB_X22_Y4_N24
\U14|X~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~24_combout\ = (\U13|cuenta\(1) & !\U13|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(1),
	datad => \U13|cuenta\(2),
	combout => \U14|X~24_combout\);

-- Location: LCCOMB_X43_Y38_N28
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X20_Y4_N12
\U13|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|Add0~0_combout\ = \U13|cuenta\(3) $ (((\U13|cuenta\(1) & (\U13|cuenta\(0) & \U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(3),
	datad => \U13|cuenta\(2),
	combout => \U13|Add0~0_combout\);

-- Location: LCCOMB_X20_Y4_N30
\U13|cuenta~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~4_combout\ = (!\U14|X\(14) & \U13|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(14),
	datad => \U13|Add0~0_combout\,
	combout => \U13|cuenta~4_combout\);

-- Location: FF_X20_Y4_N31
\U13|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U13|cuenta~4_combout\,
	clrn => \NARST~input_o\,
	ena => \U13|cuenta[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(3));

-- Location: LCCOMB_X23_Y2_N10
\U6|PC[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[0]~10_combout\ = \U6|PC\(0) $ (VCC)
-- \U6|PC[0]~11\ = CARRY(\U6|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(0),
	datad => VCC,
	combout => \U6|PC[0]~10_combout\,
	cout => \U6|PC[0]~11\);

-- Location: LCCOMB_X24_Y3_N18
\U14|X~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~7_combout\ = (\U13|cuenta\(0) & !\U13|cuenta\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(0),
	datad => \U13|cuenta\(3),
	combout => \U14|X~7_combout\);

-- Location: IOIBUF_X24_Y0_N15
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

-- Location: LCCOMB_X20_Y4_N26
\U14|X~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~10_combout\ = (!\U4|IR_OUT\(1) & !\U4|IR_OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|IR_OUT\(1),
	datad => \U4|IR_OUT\(2),
	combout => \U14|X~10_combout\);

-- Location: LCCOMB_X21_Y4_N4
\U14|X~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~4_combout\ = (\U4|IR_OUT\(1) & (\U4|IR_OUT\(3) & (\U4|IR_OUT\(2) & !\U4|IR_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U4|IR_OUT\(3),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(0),
	combout => \U14|X~4_combout\);

-- Location: LCCOMB_X21_Y4_N0
\U14|X~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~11_combout\ = ((\U13|cuenta\(1) & ((!\U14|X~4_combout\))) # (!\U13|cuenta\(1) & (!\U14|X~10_combout\))) # (!\U13|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~10_combout\,
	datab => \U13|cuenta\(2),
	datac => \U14|X~4_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X~11_combout\);

-- Location: LCCOMB_X21_Y4_N18
\U14|X~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~8_combout\ = (\U4|IR_OUT\(3) & (((!\U4|IR_OUT\(2) & !\U4|IR_OUT\(1))))) # (!\U4|IR_OUT\(3) & (\U4|IR_OUT\(0) & (\U4|IR_OUT\(2) & \U4|IR_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(1),
	combout => \U14|X~8_combout\);

-- Location: LCCOMB_X24_Y4_N30
\U14|X~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~9_combout\ = (\U13|cuenta\(1) & (!\U13|cuenta\(2) & \U14|X~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U14|X~8_combout\,
	combout => \U14|X~9_combout\);

-- Location: LCCOMB_X25_Y4_N22
\U14|X~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~5_combout\ = (!\U13|cuenta\(0) & \U13|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(0),
	datad => \U13|cuenta\(1),
	combout => \U14|X~5_combout\);

-- Location: LCCOMB_X24_Y3_N0
\U14|X~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~6_combout\ = (!\U13|cuenta\(2) & (\U13|cuenta\(3) & (!\U4|IR_OUT\(3) & \U14|X~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(3),
	datac => \U4|IR_OUT\(3),
	datad => \U14|X~5_combout\,
	combout => \U14|X~6_combout\);

-- Location: LCCOMB_X24_Y3_N28
\U14|X~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~12_combout\ = (\U14|X~6_combout\) # ((\U14|X~7_combout\ & ((\U14|X~9_combout\) # (!\U14|X~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~11_combout\,
	datab => \U14|X~7_combout\,
	datac => \U14|X~9_combout\,
	datad => \U14|X~6_combout\,
	combout => \U14|X~12_combout\);

-- Location: FF_X24_Y3_N29
\U14|X[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~12_combout\,
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(19));

-- Location: FF_X22_Y3_N5
\U1|ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT[2]~35_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(2));

-- Location: LCCOMB_X23_Y3_N28
\U7|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux5~0_combout\ = (!\U18|OR2_OUT~combout\ & ((\U19|OR2_OUT~combout\ & (\DATOS[2]~input_o\)) # (!\U19|OR2_OUT~combout\ & ((\U1|ACC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~combout\,
	datab => \DATOS[2]~input_o\,
	datac => \U1|ACC\(2),
	datad => \U19|OR2_OUT~combout\,
	combout => \U7|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y3_N4
\U7|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux5~1_combout\ = (\U7|Mux5~0_combout\) # ((\U6|PC\(2) & (\U18|OR2_OUT~combout\ & !\U19|OR2_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(2),
	datab => \U7|Mux5~0_combout\,
	datac => \U18|OR2_OUT~combout\,
	datad => \U19|OR2_OUT~combout\,
	combout => \U7|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y3_N30
\U14|X~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~83_combout\ = (!\U13|cuenta\(2) & (!\U13|cuenta\(1) & (!\U4|IR_OUT\(0) & \U13|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(1),
	datac => \U4|IR_OUT\(0),
	datad => \U13|cuenta\(0),
	combout => \U14|X~83_combout\);

-- Location: LCCOMB_X24_Y3_N22
\U14|X~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~84_combout\ = (\U13|cuenta\(2) & ((\U14|X~5_combout\) # ((!\U4|IR_OUT\(2) & \U14|X~83_combout\)))) # (!\U13|cuenta\(2) & (!\U4|IR_OUT\(2) & (\U14|X~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U4|IR_OUT\(2),
	datac => \U14|X~83_combout\,
	datad => \U14|X~5_combout\,
	combout => \U14|X~84_combout\);

-- Location: FF_X24_Y3_N23
\U14|X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~84_combout\,
	sclr => \U13|ALT_INV_cuenta\(3),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(1));

-- Location: LCCOMB_X26_Y4_N30
\U14|X~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~63_combout\ = (\U4|IR_OUT\(2) & (\U4|IR_OUT\(1) & \U4|IR_OUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_OUT\(2),
	datac => \U4|IR_OUT\(1),
	datad => \U4|IR_OUT\(3),
	combout => \U14|X~63_combout\);

-- Location: LCCOMB_X24_Y4_N24
\U14|X~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~76_combout\ = (\U13|cuenta\(0) & (\U13|cuenta\(1) & (!\U4|IR_OUT\(0) & \U14|X~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U4|IR_OUT\(0),
	datad => \U14|X~63_combout\,
	combout => \U14|X~76_combout\);

-- Location: LCCOMB_X23_Y4_N2
\U14|X[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[4]~feeder_combout\ = \U14|X~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|X~76_combout\,
	combout => \U14|X[4]~feeder_combout\);

-- Location: FF_X23_Y4_N3
\U14|X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X[4]~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \U13|ALT_INV_cuenta\(3),
	sload => \U13|cuenta\(2),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(4));

-- Location: LCCOMB_X23_Y3_N26
\U17|OR4_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U17|OR4_OUT~0_combout\ = (\U14|X\(2)) # ((\U14|X\(3)) # ((\U14|X\(1)) # (\U14|X\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(2),
	datab => \U14|X\(3),
	datac => \U14|X\(1),
	datad => \U14|X\(4),
	combout => \U17|OR4_OUT~0_combout\);

-- Location: FF_X23_Y3_N5
\U9|MBR_SIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U7|Mux5~1_combout\,
	clrn => \NARST~input_o\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(2));

-- Location: FF_X21_Y4_N27
\U4|IR_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U9|MBR_SIG\(2),
	sload => VCC,
	ena => \U4|IR_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_OUT\(2));

-- Location: LCCOMB_X24_Y3_N24
\U14|X~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~20_combout\ = (!\U4|IR_OUT\(2) & (\U4|IR_OUT\(1) & \U14|X~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_OUT\(2),
	datac => \U4|IR_OUT\(1),
	datad => \U14|X~6_combout\,
	combout => \U14|X~20_combout\);

-- Location: LCCOMB_X24_Y4_N20
\U14|X~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~21_combout\ = (\U13|cuenta\(2) & (\U14|X~4_combout\ & \U13|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datac => \U14|X~4_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X~21_combout\);

-- Location: LCCOMB_X20_Y4_N8
\U14|X~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~22_combout\ = (\U14|X~10_combout\ & ((\U13|cuenta\(2) & ((!\U13|cuenta\(1)))) # (!\U13|cuenta\(2) & (\U4|IR_OUT\(3) & \U13|cuenta\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U13|cuenta\(2),
	datac => \U14|X~10_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X~22_combout\);

-- Location: LCCOMB_X24_Y3_N6
\U14|X~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~23_combout\ = (\U14|X~20_combout\) # ((\U14|X~7_combout\ & ((\U14|X~21_combout\) # (\U14|X~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~7_combout\,
	datab => \U14|X~20_combout\,
	datac => \U14|X~21_combout\,
	datad => \U14|X~22_combout\,
	combout => \U14|X~23_combout\);

-- Location: FF_X24_Y3_N7
\U14|X[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~23_combout\,
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(17));

-- Location: LCCOMB_X22_Y4_N30
\U14|X~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~25_combout\ = (\U4|IR_OUT\(2) & (\U4|IR_OUT\(0) & (!\U4|IR_OUT\(3) & \U14|X~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(2),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(3),
	datad => \U14|X~24_combout\,
	combout => \U14|X~25_combout\);

-- Location: LCCOMB_X24_Y3_N26
\U14|X~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~26_combout\ = (\U13|cuenta\(3) & (\U4|IR_OUT\(1))) # (!\U13|cuenta\(3) & (((\U4|IR_OUT\(1) & \U14|X~25_combout\)) # (!\U14|X~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U13|cuenta\(3),
	datac => \U14|X~11_combout\,
	datad => \U14|X~25_combout\,
	combout => \U14|X~26_combout\);

-- Location: LCCOMB_X24_Y3_N16
\U14|X~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~85_combout\ = (\U14|X~26_combout\ & ((\U14|X~6_combout\) # ((!\U13|cuenta\(3) & \U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U13|cuenta\(0),
	datac => \U14|X~26_combout\,
	datad => \U14|X~6_combout\,
	combout => \U14|X~85_combout\);

-- Location: FF_X24_Y3_N17
\U14|X[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~85_combout\,
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(16));

-- Location: LCCOMB_X22_Y3_N8
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

-- Location: LCCOMB_X24_Y3_N10
\U14|X~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~30_combout\ = (\U13|cuenta\(3) & ((\U4|IR_OUT\(1) & ((!\U4|IR_OUT\(2)))) # (!\U4|IR_OUT\(1) & (\U4|IR_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U13|cuenta\(3),
	datac => \U4|IR_OUT\(0),
	datad => \U4|IR_OUT\(2),
	combout => \U14|X~30_combout\);

-- Location: LCCOMB_X22_Y4_N4
\U14|X~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~27_combout\ = (!\U4|IR_OUT\(3) & (\U4|IR_OUT\(0) & (\U4|IR_OUT\(2) & \U4|IR_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(1),
	combout => \U14|X~27_combout\);

-- Location: LCCOMB_X23_Y4_N8
\U14|X~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~28_combout\ = (\U13|cuenta\(1) & ((\U13|cuenta\(2) & (\U14|X~4_combout\)) # (!\U13|cuenta\(2) & ((\U14|X~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U14|X~4_combout\,
	datac => \U14|X~27_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X~28_combout\);

-- Location: LCCOMB_X24_Y3_N8
\U14|X~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~29_combout\ = (!\U13|cuenta\(3) & ((\U14|X~28_combout\) # ((!\U4|IR_OUT\(0) & \U14|X~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~28_combout\,
	datab => \U13|cuenta\(3),
	datac => \U4|IR_OUT\(0),
	datad => \U14|X~22_combout\,
	combout => \U14|X~29_combout\);

-- Location: LCCOMB_X24_Y3_N14
\U14|X~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~31_combout\ = (\U14|X~30_combout\ & ((\U14|X~7_combout\) # ((\U14|X~6_combout\)))) # (!\U14|X~30_combout\ & (\U14|X~29_combout\ & ((\U14|X~7_combout\) # (\U14|X~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~30_combout\,
	datab => \U14|X~7_combout\,
	datac => \U14|X~29_combout\,
	datad => \U14|X~6_combout\,
	combout => \U14|X~31_combout\);

-- Location: FF_X24_Y3_N15
\U14|X[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~31_combout\,
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(15));

-- Location: LCCOMB_X25_Y3_N10
\U0|ALU_OUT[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~8_combout\ = (\U14|X\(15) & (\U1|ACC\(1))) # (!\U14|X\(15) & ((\U1|ACC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datac => \U1|ACC\(1),
	datad => \U1|ACC\(0),
	combout => \U0|ALU_OUT[0]~8_combout\);

-- Location: LCCOMB_X25_Y3_N0
\U0|ALU_OUT[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~9_combout\ = (\U14|X\(15) & (((!\U14|X\(16))))) # (!\U14|X\(15) & ((\U0|ALU_OUT[0]~8_combout\ & ((\U14|X\(16)))) # (!\U0|ALU_OUT[0]~8_combout\ & (\U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[0]~8_combout\,
	combout => \U0|ALU_OUT[0]~9_combout\);

-- Location: LCCOMB_X25_Y3_N26
\U0|ALU_OUT[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~10_combout\ = (\U0|ALU_OUT[0]~8_combout\ & (\U14|X\(15) $ (\U14|X\(17) $ (\U14|X\(16))))) # (!\U0|ALU_OUT[0]~8_combout\ & (\U14|X\(16) & ((\U14|X\(17)) # (!\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[0]~8_combout\,
	combout => \U0|ALU_OUT[0]~10_combout\);

-- Location: LCCOMB_X22_Y3_N0
\U0|ALU_OUT[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[0]~11_combout\ = (\U0|ALU_OUT[0]~9_combout\ & (((\U0|ALU_OUT[0]~10_combout\)))) # (!\U0|ALU_OUT[0]~9_combout\ & ((\U0|ALU_OUT[0]~10_combout\ & (\U9|MBR_SIG\(0))) # (!\U0|ALU_OUT[0]~10_combout\ & ((\U0|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(0),
	datab => \U0|Add0~0_combout\,
	datac => \U0|ALU_OUT[0]~9_combout\,
	datad => \U0|ALU_OUT[0]~10_combout\,
	combout => \U0|ALU_OUT[0]~11_combout\);

-- Location: FF_X22_Y3_N1
\U1|ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT[0]~11_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(0));

-- Location: LCCOMB_X22_Y3_N10
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

-- Location: LCCOMB_X25_Y3_N8
\U0|ALU_OUT[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~2_combout\ = (\U14|X\(15) & ((\U14|X\(17)) # ((\U1|ACC\(2))))) # (!\U14|X\(15) & (\U14|X\(17) & (\U9|MBR_SIG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U9|MBR_SIG\(1),
	datad => \U1|ACC\(2),
	combout => \U0|ALU_OUT[1]~2_combout\);

-- Location: LCCOMB_X25_Y3_N2
\U0|ALU_OUT[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~3_combout\ = (\U1|ACC\(1) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(1)) # (!\U14|X\(15)))))) # (!\U1|ACC\(1) & ((\U9|MBR_SIG\(1)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U1|ACC\(1),
	datad => \U9|MBR_SIG\(1),
	combout => \U0|ALU_OUT[1]~3_combout\);

-- Location: LCCOMB_X25_Y3_N4
\U0|ALU_OUT[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~6_combout\ = (\U14|X\(16) & ((\U0|ALU_OUT[1]~3_combout\))) # (!\U14|X\(16) & (\U0|ALU_OUT[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datac => \U0|ALU_OUT[1]~2_combout\,
	datad => \U0|ALU_OUT[1]~3_combout\,
	combout => \U0|ALU_OUT[1]~6_combout\);

-- Location: LCCOMB_X25_Y3_N20
\U0|ALU_OUT[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~4_combout\ = (\U14|X\(15) & (\U1|ACC\(0))) # (!\U14|X\(15) & ((!\U0|ALU_OUT[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datac => \U1|ACC\(0),
	datad => \U0|ALU_OUT[1]~3_combout\,
	combout => \U0|ALU_OUT[1]~4_combout\);

-- Location: LCCOMB_X25_Y3_N30
\U0|ALU_OUT[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~5_combout\ = (\U14|X\(17) & (((\U0|ALU_OUT[1]~2_combout\ & \U0|ALU_OUT[1]~4_combout\)))) # (!\U14|X\(17) & (((\U0|ALU_OUT[1]~2_combout\)) # (!\U14|X\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U0|ALU_OUT[1]~2_combout\,
	datad => \U0|ALU_OUT[1]~4_combout\,
	combout => \U0|ALU_OUT[1]~5_combout\);

-- Location: LCCOMB_X22_Y3_N6
\U0|ALU_OUT[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[1]~7_combout\ = (\U14|X\(16) & (((\U0|ALU_OUT[1]~6_combout\)))) # (!\U14|X\(16) & (\U0|ALU_OUT[1]~5_combout\ & ((\U0|Add0~2_combout\) # (\U0|ALU_OUT[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~2_combout\,
	datab => \U14|X\(16),
	datac => \U0|ALU_OUT[1]~6_combout\,
	datad => \U0|ALU_OUT[1]~5_combout\,
	combout => \U0|ALU_OUT[1]~7_combout\);

-- Location: FF_X22_Y3_N7
\U1|ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT[1]~7_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(1));

-- Location: LCCOMB_X22_Y3_N12
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

-- Location: LCCOMB_X22_Y3_N14
\U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U9|MBR_SIG\(3) & ((\U1|ACC\(3) & (\U0|Add0~5\ & VCC)) # (!\U1|ACC\(3) & (!\U0|Add0~5\)))) # (!\U9|MBR_SIG\(3) & ((\U1|ACC\(3) & (!\U0|Add0~5\)) # (!\U1|ACC\(3) & ((\U0|Add0~5\) # (GND)))))
-- \U0|Add0~7\ = CARRY((\U9|MBR_SIG\(3) & (!\U1|ACC\(3) & !\U0|Add0~5\)) # (!\U9|MBR_SIG\(3) & ((!\U0|Add0~5\) # (!\U1|ACC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(3),
	datab => \U1|ACC\(3),
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: LCCOMB_X20_Y3_N10
\U0|ALU_OUT[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~13_combout\ = (\U1|ACC\(3) & (\U14|X\(17) $ (((!\U14|X\(15)) # (!\U9|MBR_SIG\(3)))))) # (!\U1|ACC\(3) & ((\U9|MBR_SIG\(3)) # ((\U14|X\(17) & !\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(3),
	datab => \U1|ACC\(3),
	datac => \U14|X\(17),
	datad => \U14|X\(15),
	combout => \U0|ALU_OUT[3]~13_combout\);

-- Location: LCCOMB_X23_Y2_N16
\U6|PC[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[3]~17_combout\ = (\U6|PC\(3) & (!\U6|PC[2]~16\)) # (!\U6|PC\(3) & ((\U6|PC[2]~16\) # (GND)))
-- \U6|PC[3]~18\ = CARRY((!\U6|PC[2]~16\) # (!\U6|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(3),
	datad => VCC,
	cin => \U6|PC[2]~16\,
	combout => \U6|PC[3]~17_combout\,
	cout => \U6|PC[3]~18\);

-- Location: LCCOMB_X23_Y2_N18
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

-- Location: LCCOMB_X26_Y4_N10
\U14|X~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~69_combout\ = ((!\U4|IR_OUT\(0) & !\U4|IR_OUT\(2))) # (!\U4|IR_OUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(3),
	combout => \U14|X~69_combout\);

-- Location: LCCOMB_X24_Y4_N14
\U14|X~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~72_combout\ = (\U13|cuenta\(0) & ((\U13|cuenta\(1) & (\U13|cuenta\(2) & \U14|X~69_combout\)) # (!\U13|cuenta\(1) & (!\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U14|X~69_combout\,
	combout => \U14|X~72_combout\);

-- Location: LCCOMB_X21_Y4_N8
\U14|X~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~67_combout\ = (\U4|IR_OUT\(2) & (((!\U4|IR_OUT\(1))) # (!\U4|IR_OUT\(0)))) # (!\U4|IR_OUT\(2) & (((\U4|IR_OUT\(1)) # (!\U4|IR_OUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(2),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(3),
	datad => \U4|IR_OUT\(1),
	combout => \U14|X~67_combout\);

-- Location: LCCOMB_X24_Y4_N10
\U14|X~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~32_combout\ = (\U13|cuenta\(2) & !\U13|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datac => \U13|cuenta\(0),
	combout => \U14|X~32_combout\);

-- Location: LCCOMB_X24_Y4_N0
\U14|X~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~71_combout\ = (\U14|X~32_combout\ & ((\U13|cuenta\(1) & (\U14|X~4_combout\)) # (!\U13|cuenta\(1) & ((\U14|X~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X~4_combout\,
	datac => \U14|X~67_combout\,
	datad => \U14|X~32_combout\,
	combout => \U14|X~71_combout\);

-- Location: LCCOMB_X24_Y4_N28
\U14|X~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~73_combout\ = (\U14|X~72_combout\) # (\U14|X~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X~72_combout\,
	datad => \U14|X~71_combout\,
	combout => \U14|X~73_combout\);

-- Location: FF_X24_Y4_N29
\U14|X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~73_combout\,
	sclr => \U13|cuenta\(3),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(6));

-- Location: LCCOMB_X23_Y2_N4
\U6|PC[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[4]~12_combout\ = \U14|X\(6) $ (\U14|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(6),
	datad => \U14|X\(5),
	combout => \U6|PC[4]~12_combout\);

-- Location: FF_X23_Y2_N19
\U6|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[4]~19_combout\,
	asdata => \U9|MBR_SIG\(4),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(4));

-- Location: IOIBUF_X20_Y0_N29
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

-- Location: LCCOMB_X23_Y3_N0
\U7|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux3~0_combout\ = (\U14|X\(2) & (((\DATOS[4]~input_o\)))) # (!\U14|X\(2) & ((\U14|X\(4) & ((\DATOS[4]~input_o\))) # (!\U14|X\(4) & (\U1|ACC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(2),
	datab => \U1|ACC\(4),
	datac => \DATOS[4]~input_o\,
	datad => \U14|X\(4),
	combout => \U7|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y3_N8
\U7|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux3~1_combout\ = (\U18|OR2_OUT~combout\ & (!\U19|OR2_OUT~combout\ & (\U6|PC\(4)))) # (!\U18|OR2_OUT~combout\ & (((\U7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U19|OR2_OUT~combout\,
	datab => \U6|PC\(4),
	datac => \U18|OR2_OUT~combout\,
	datad => \U7|Mux3~0_combout\,
	combout => \U7|Mux3~1_combout\);

-- Location: FF_X23_Y3_N9
\U9|MBR_SIG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U7|Mux3~1_combout\,
	clrn => \NARST~input_o\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(4));

-- Location: LCCOMB_X22_Y3_N16
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

-- Location: LCCOMB_X22_Y3_N28
\U0|ALU_OUT[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~27_combout\ = (\U14|X\(16) & ((\U1|ACC\(4) & ((!\U14|X\(15)) # (!\U9|MBR_SIG\(4)))) # (!\U1|ACC\(4) & (\U9|MBR_SIG\(4))))) # (!\U14|X\(16) & (((!\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(4),
	datab => \U9|MBR_SIG\(4),
	datac => \U14|X\(15),
	datad => \U14|X\(16),
	combout => \U0|ALU_OUT[4]~27_combout\);

-- Location: LCCOMB_X24_Y3_N12
\U0|ALU_OUT[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~31_combout\ = (\U14|X\(17)) # (\U14|X\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datad => \U14|X\(16),
	combout => \U0|ALU_OUT[4]~31_combout\);

-- Location: LCCOMB_X21_Y3_N26
\U0|ALU_OUT[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~28_combout\ = (\U14|X\(15) & (((\U9|MBR_SIG\(4)) # (!\U14|X\(16))))) # (!\U14|X\(15) & ((\U1|ACC\(4) & (\U9|MBR_SIG\(4) & !\U14|X\(16))) # (!\U1|ACC\(4) & ((\U14|X\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(4),
	datac => \U9|MBR_SIG\(4),
	datad => \U14|X\(16),
	combout => \U0|ALU_OUT[4]~28_combout\);

-- Location: LCCOMB_X23_Y2_N20
\U6|PC[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[5]~21_combout\ = (\U6|PC\(5) & (!\U6|PC[4]~20\)) # (!\U6|PC\(5) & ((\U6|PC[4]~20\) # (GND)))
-- \U6|PC[5]~22\ = CARRY((!\U6|PC[4]~20\) # (!\U6|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|PC\(5),
	datad => VCC,
	cin => \U6|PC[4]~20\,
	combout => \U6|PC[5]~21_combout\,
	cout => \U6|PC[5]~22\);

-- Location: FF_X23_Y2_N21
\U6|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[5]~21_combout\,
	asdata => \U9|MBR_SIG\(5),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(5));

-- Location: IOIBUF_X20_Y0_N8
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

-- Location: LCCOMB_X23_Y3_N18
\U7|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux2~0_combout\ = (!\U18|OR2_OUT~combout\ & ((\U19|OR2_OUT~combout\ & (\DATOS[5]~input_o\)) # (!\U19|OR2_OUT~combout\ & ((\U1|ACC\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATOS[5]~input_o\,
	datab => \U1|ACC\(5),
	datac => \U18|OR2_OUT~combout\,
	datad => \U19|OR2_OUT~combout\,
	combout => \U7|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y3_N6
\U7|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux2~1_combout\ = (\U7|Mux2~0_combout\) # ((!\U19|OR2_OUT~combout\ & (\U6|PC\(5) & \U18|OR2_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U19|OR2_OUT~combout\,
	datab => \U6|PC\(5),
	datac => \U18|OR2_OUT~combout\,
	datad => \U7|Mux2~0_combout\,
	combout => \U7|Mux2~1_combout\);

-- Location: FF_X23_Y3_N7
\U9|MBR_SIG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U7|Mux2~1_combout\,
	clrn => \NARST~input_o\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(5));

-- Location: LCCOMB_X22_Y3_N18
\U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (\U9|MBR_SIG\(5) & ((\U1|ACC\(5) & (\U0|Add0~9\ & VCC)) # (!\U1|ACC\(5) & (!\U0|Add0~9\)))) # (!\U9|MBR_SIG\(5) & ((\U1|ACC\(5) & (!\U0|Add0~9\)) # (!\U1|ACC\(5) & ((\U0|Add0~9\) # (GND)))))
-- \U0|Add0~11\ = CARRY((\U9|MBR_SIG\(5) & (!\U1|ACC\(5) & !\U0|Add0~9\)) # (!\U9|MBR_SIG\(5) & ((!\U0|Add0~9\) # (!\U1|ACC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(5),
	datab => \U1|ACC\(5),
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: LCCOMB_X25_Y3_N24
\U0|ALU_OUT[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~18_combout\ = (\U1|ACC\(5) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(5)) # (!\U14|X\(15)))))) # (!\U1|ACC\(5) & ((\U9|MBR_SIG\(5)) # ((!\U14|X\(15) & \U14|X\(17)))))

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
	combout => \U0|ALU_OUT[5]~18_combout\);

-- Location: LCCOMB_X25_Y3_N18
\U0|ALU_OUT[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~19_combout\ = (\U14|X\(15) & (((\U1|ACC\(4))))) # (!\U14|X\(15) & (\U9|MBR_SIG\(5) & ((!\U0|ALU_OUT[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U9|MBR_SIG\(5),
	datac => \U1|ACC\(4),
	datad => \U0|ALU_OUT[5]~18_combout\,
	combout => \U0|ALU_OUT[5]~19_combout\);

-- Location: LCCOMB_X25_Y3_N22
\U0|ALU_OUT[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~21_combout\ = (\U14|X\(16) & (((\U0|ALU_OUT[5]~18_combout\)))) # (!\U14|X\(16) & ((\U14|X\(15)) # ((\U0|ALU_OUT[5]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U0|ALU_OUT[5]~18_combout\,
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[5]~19_combout\,
	combout => \U0|ALU_OUT[5]~21_combout\);

-- Location: IOIBUF_X20_Y0_N1
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

-- Location: LCCOMB_X23_Y3_N16
\U7|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux1~0_combout\ = (!\U18|OR2_OUT~combout\ & ((\U19|OR2_OUT~combout\ & ((\DATOS[6]~input_o\))) # (!\U19|OR2_OUT~combout\ & (\U1|ACC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(6),
	datab => \DATOS[6]~input_o\,
	datac => \U18|OR2_OUT~combout\,
	datad => \U19|OR2_OUT~combout\,
	combout => \U7|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y2_N22
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

-- Location: FF_X23_Y2_N23
\U6|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[6]~23_combout\,
	asdata => \U9|MBR_SIG\(6),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(6));

-- Location: LCCOMB_X23_Y3_N24
\U7|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux1~1_combout\ = (\U7|Mux1~0_combout\) # ((\U18|OR2_OUT~combout\ & (\U6|PC\(6) & !\U19|OR2_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~combout\,
	datab => \U7|Mux1~0_combout\,
	datac => \U6|PC\(6),
	datad => \U19|OR2_OUT~combout\,
	combout => \U7|Mux1~1_combout\);

-- Location: FF_X23_Y3_N25
\U9|MBR_SIG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U7|Mux1~1_combout\,
	clrn => \NARST~input_o\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(6));

-- Location: LCCOMB_X21_Y3_N16
\U0|ALU_OUT[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~23_combout\ = (\U14|X\(15) & ((\U1|ACC\(5)))) # (!\U14|X\(15) & (\U1|ACC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ACC\(6),
	datac => \U14|X\(15),
	datad => \U1|ACC\(5),
	combout => \U0|ALU_OUT[6]~23_combout\);

-- Location: LCCOMB_X20_Y3_N14
\U0|ALU_OUT[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~24_combout\ = (\U14|X\(16) & ((\U14|X\(15) & (\U9|MBR_SIG\(6))) # (!\U14|X\(15) & ((!\U0|ALU_OUT[6]~23_combout\))))) # (!\U14|X\(16) & (\U0|ALU_OUT[6]~23_combout\ & ((\U14|X\(15)) # (\U9|MBR_SIG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U9|MBR_SIG\(6),
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[6]~23_combout\,
	combout => \U0|ALU_OUT[6]~24_combout\);

-- Location: LCCOMB_X23_Y2_N24
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

-- Location: FF_X23_Y2_N25
\U6|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[7]~25_combout\,
	asdata => \U9|MBR_SIG\(7),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(7));

-- Location: IOIBUF_X34_Y0_N1
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

-- Location: LCCOMB_X23_Y3_N10
\U7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux0~0_combout\ = (!\U18|OR2_OUT~combout\ & ((\U19|OR2_OUT~combout\ & ((\DATOS[7]~input_o\))) # (!\U19|OR2_OUT~combout\ & (\U1|ACC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U19|OR2_OUT~combout\,
	datab => \U1|ACC\(7),
	datac => \U18|OR2_OUT~combout\,
	datad => \DATOS[7]~input_o\,
	combout => \U7|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y3_N22
\U7|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux0~1_combout\ = (\U7|Mux0~0_combout\) # ((!\U19|OR2_OUT~combout\ & (\U6|PC\(7) & \U18|OR2_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U19|OR2_OUT~combout\,
	datab => \U6|PC\(7),
	datac => \U18|OR2_OUT~combout\,
	datad => \U7|Mux0~0_combout\,
	combout => \U7|Mux0~1_combout\);

-- Location: FF_X23_Y3_N23
\U9|MBR_SIG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U7|Mux0~1_combout\,
	clrn => \NARST~input_o\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(7));

-- Location: LCCOMB_X21_Y3_N2
\U0|ALU_OUT[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~0_combout\ = (\U1|ACC\(7) & (\U14|X\(17) $ (((!\U9|MBR_SIG\(7)) # (!\U14|X\(15)))))) # (!\U1|ACC\(7) & ((\U9|MBR_SIG\(7)) # ((!\U14|X\(15) & \U14|X\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(7),
	datab => \U14|X\(15),
	datac => \U14|X\(17),
	datad => \U9|MBR_SIG\(7),
	combout => \U0|ALU_OUT[7]~0_combout\);

-- Location: LCCOMB_X21_Y3_N12
\U0|ALU_OUT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~1_combout\ = (\U14|X\(15) & (\U1|ACC\(6))) # (!\U14|X\(15) & (((\U9|MBR_SIG\(7) & !\U0|ALU_OUT[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(6),
	datab => \U9|MBR_SIG\(7),
	datac => \U14|X\(15),
	datad => \U0|ALU_OUT[7]~0_combout\,
	combout => \U0|ALU_OUT[7]~1_combout\);

-- Location: LCCOMB_X22_Y3_N20
\U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = ((\U1|ACC\(6) $ (\U9|MBR_SIG\(6) $ (!\U0|Add0~11\)))) # (GND)
-- \U0|Add0~13\ = CARRY((\U1|ACC\(6) & ((\U9|MBR_SIG\(6)) # (!\U0|Add0~11\))) # (!\U1|ACC\(6) & (\U9|MBR_SIG\(6) & !\U0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(6),
	datab => \U9|MBR_SIG\(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: LCCOMB_X22_Y3_N22
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

-- Location: LCCOMB_X21_Y3_N18
\U0|ALU_OUT[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~39_combout\ = (\U14|X\(17) & (\U0|ALU_OUT[7]~1_combout\)) # (!\U14|X\(17) & (!\U14|X\(15) & ((\U0|ALU_OUT[7]~1_combout\) # (\U0|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[7]~1_combout\,
	datab => \U14|X\(17),
	datac => \U14|X\(15),
	datad => \U0|Add0~14_combout\,
	combout => \U0|ALU_OUT[7]~39_combout\);

-- Location: LCCOMB_X21_Y3_N28
\U0|ALU_OUT[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[7]~40_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[7]~0_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U0|ALU_OUT[7]~0_combout\,
	datad => \U0|ALU_OUT[7]~39_combout\,
	combout => \U0|ALU_OUT[7]~40_combout\);

-- Location: FF_X21_Y3_N29
\U1|ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT[7]~40_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(7));

-- Location: LCCOMB_X20_Y3_N28
\U0|ALU_OUT[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~25_combout\ = (\U14|X\(16) & ((\U9|MBR_SIG\(6) & ((!\U14|X\(15)) # (!\U1|ACC\(6)))) # (!\U9|MBR_SIG\(6) & (\U1|ACC\(6))))) # (!\U14|X\(16) & (((\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(6),
	datab => \U1|ACC\(6),
	datac => \U14|X\(16),
	datad => \U14|X\(15),
	combout => \U0|ALU_OUT[6]~25_combout\);

-- Location: LCCOMB_X21_Y3_N22
\U0|ALU_OUT[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~26_combout\ = (\U14|X\(16) & (((\U0|ALU_OUT[6]~25_combout\)))) # (!\U14|X\(16) & ((\U0|ALU_OUT[6]~25_combout\ & (\U1|ACC\(7))) # (!\U0|ALU_OUT[6]~25_combout\ & ((\U0|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U1|ACC\(7),
	datac => \U0|Add0~12_combout\,
	datad => \U0|ALU_OUT[6]~25_combout\,
	combout => \U0|ALU_OUT[6]~26_combout\);

-- Location: LCCOMB_X21_Y3_N14
\U0|ALU_OUT[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[6]~36_combout\ = (\U14|X\(17) & (\U0|ALU_OUT[6]~24_combout\)) # (!\U14|X\(17) & ((\U0|ALU_OUT[6]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[6]~24_combout\,
	datac => \U14|X\(17),
	datad => \U0|ALU_OUT[6]~26_combout\,
	combout => \U0|ALU_OUT[6]~36_combout\);

-- Location: FF_X21_Y3_N15
\U1|ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT[6]~36_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(6));

-- Location: LCCOMB_X25_Y3_N12
\U0|ALU_OUT[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~20_combout\ = (\U14|X\(17) & (((\U0|ALU_OUT[5]~19_combout\)))) # (!\U14|X\(17) & (((\U1|ACC\(6))) # (!\U14|X\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U1|ACC\(6),
	datac => \U14|X\(17),
	datad => \U0|ALU_OUT[5]~19_combout\,
	combout => \U0|ALU_OUT[5]~20_combout\);

-- Location: LCCOMB_X22_Y3_N2
\U0|ALU_OUT[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[5]~22_combout\ = (\U14|X\(16) & (((\U0|ALU_OUT[5]~21_combout\)))) # (!\U14|X\(16) & (\U0|ALU_OUT[5]~20_combout\ & ((\U0|Add0~10_combout\) # (\U0|ALU_OUT[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U0|Add0~10_combout\,
	datac => \U0|ALU_OUT[5]~21_combout\,
	datad => \U0|ALU_OUT[5]~20_combout\,
	combout => \U0|ALU_OUT[5]~22_combout\);

-- Location: FF_X22_Y3_N3
\U1|ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT[5]~22_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(5));

-- Location: LCCOMB_X21_Y3_N0
\U0|ALU_OUT[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~29_combout\ = (\U0|ALU_OUT[4]~27_combout\) # ((\U14|X\(17) & ((\U14|X\(16)))) # (!\U14|X\(17) & (\U1|ACC\(5) & !\U14|X\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U1|ACC\(5),
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[4]~27_combout\,
	combout => \U0|ALU_OUT[4]~29_combout\);

-- Location: LCCOMB_X21_Y3_N30
\U0|ALU_OUT[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~30_combout\ = (\U14|X\(17) & (\U0|ALU_OUT[4]~28_combout\ & ((\U1|ACC\(3)) # (\U0|ALU_OUT[4]~29_combout\)))) # (!\U14|X\(17) & (((\U0|ALU_OUT[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[4]~28_combout\,
	datab => \U1|ACC\(3),
	datac => \U14|X\(17),
	datad => \U0|ALU_OUT[4]~29_combout\,
	combout => \U0|ALU_OUT[4]~30_combout\);

-- Location: LCCOMB_X22_Y3_N26
\U0|ALU_OUT[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[4]~32_combout\ = (\U0|ALU_OUT[4]~30_combout\ & ((\U0|Add0~8_combout\) # ((\U0|ALU_OUT[4]~31_combout\) # (!\U0|ALU_OUT[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~8_combout\,
	datab => \U0|ALU_OUT[4]~27_combout\,
	datac => \U0|ALU_OUT[4]~31_combout\,
	datad => \U0|ALU_OUT[4]~30_combout\,
	combout => \U0|ALU_OUT[4]~32_combout\);

-- Location: FF_X22_Y3_N27
\U1|ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT[4]~32_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(4));

-- Location: LCCOMB_X20_Y3_N12
\U0|ALU_OUT[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~12_combout\ = (\U14|X\(17) & ((\U9|MBR_SIG\(3)) # ((\U14|X\(15))))) # (!\U14|X\(17) & (((\U1|ACC\(4) & \U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|MBR_SIG\(3),
	datab => \U1|ACC\(4),
	datac => \U14|X\(17),
	datad => \U14|X\(15),
	combout => \U0|ALU_OUT[3]~12_combout\);

-- Location: LCCOMB_X20_Y3_N16
\U0|ALU_OUT[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~16_combout\ = (\U14|X\(16) & (\U0|ALU_OUT[3]~13_combout\)) # (!\U14|X\(16) & ((\U0|ALU_OUT[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[3]~13_combout\,
	datac => \U14|X\(16),
	datad => \U0|ALU_OUT[3]~12_combout\,
	combout => \U0|ALU_OUT[3]~16_combout\);

-- Location: LCCOMB_X20_Y3_N4
\U0|ALU_OUT[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~14_combout\ = (\U14|X\(15) & (\U1|ACC\(2))) # (!\U14|X\(15) & ((!\U0|ALU_OUT[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(15),
	datac => \U1|ACC\(2),
	datad => \U0|ALU_OUT[3]~13_combout\,
	combout => \U0|ALU_OUT[3]~14_combout\);

-- Location: LCCOMB_X20_Y3_N2
\U0|ALU_OUT[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~15_combout\ = (\U14|X\(17) & (((\U0|ALU_OUT[3]~14_combout\ & \U0|ALU_OUT[3]~12_combout\)))) # (!\U14|X\(17) & (((\U0|ALU_OUT[3]~12_combout\)) # (!\U14|X\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datab => \U14|X\(15),
	datac => \U0|ALU_OUT[3]~14_combout\,
	datad => \U0|ALU_OUT[3]~12_combout\,
	combout => \U0|ALU_OUT[3]~15_combout\);

-- Location: LCCOMB_X21_Y3_N4
\U0|ALU_OUT[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[3]~17_combout\ = (\U14|X\(16) & (((\U0|ALU_OUT[3]~16_combout\)))) # (!\U14|X\(16) & (\U0|ALU_OUT[3]~15_combout\ & ((\U0|Add0~6_combout\) # (\U0|ALU_OUT[3]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U0|Add0~6_combout\,
	datac => \U0|ALU_OUT[3]~16_combout\,
	datad => \U0|ALU_OUT[3]~15_combout\,
	combout => \U0|ALU_OUT[3]~17_combout\);

-- Location: FF_X21_Y3_N5
\U1|ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT[3]~17_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ACC\(3));

-- Location: LCCOMB_X24_Y3_N2
\U0|ALU_OUT[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~33_combout\ = (\U14|X\(16) & ((\U9|MBR_SIG\(2) & ((!\U1|ACC\(2)) # (!\U14|X\(15)))) # (!\U9|MBR_SIG\(2) & ((\U1|ACC\(2)))))) # (!\U14|X\(16) & (((!\U14|X\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U9|MBR_SIG\(2),
	datac => \U14|X\(15),
	datad => \U1|ACC\(2),
	combout => \U0|ALU_OUT[2]~33_combout\);

-- Location: LCCOMB_X22_Y3_N30
\U0|ALU_OUT[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~34_combout\ = (\U14|X\(16) & (((\U0|ALU_OUT[2]~33_combout\)))) # (!\U14|X\(16) & ((\U0|ALU_OUT[2]~33_combout\ & ((\U0|Add0~4_combout\))) # (!\U0|ALU_OUT[2]~33_combout\ & (\U1|ACC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(16),
	datab => \U1|ACC\(3),
	datac => \U0|ALU_OUT[2]~33_combout\,
	datad => \U0|Add0~4_combout\,
	combout => \U0|ALU_OUT[2]~34_combout\);

-- Location: LCCOMB_X25_Y3_N28
\U0|ALU_OUT[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~37_combout\ = (\U14|X\(15) & ((\U9|MBR_SIG\(2) $ (!\U14|X\(16))))) # (!\U14|X\(15) & ((\U1|ACC\(2) & (\U9|MBR_SIG\(2) & !\U14|X\(16))) # (!\U1|ACC\(2) & ((\U14|X\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(2),
	datab => \U9|MBR_SIG\(2),
	datac => \U14|X\(16),
	datad => \U14|X\(15),
	combout => \U0|ALU_OUT[2]~37_combout\);

-- Location: LCCOMB_X25_Y3_N14
\U0|ALU_OUT[2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~38_combout\ = (\U14|X\(15) & ((\U9|MBR_SIG\(2) & ((\U1|ACC\(1)) # (\U0|ALU_OUT[2]~37_combout\))) # (!\U9|MBR_SIG\(2) & (\U1|ACC\(1) & \U0|ALU_OUT[2]~37_combout\)))) # (!\U14|X\(15) & (((\U0|ALU_OUT[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U9|MBR_SIG\(2),
	datac => \U1|ACC\(1),
	datad => \U0|ALU_OUT[2]~37_combout\,
	combout => \U0|ALU_OUT[2]~38_combout\);

-- Location: LCCOMB_X22_Y3_N4
\U0|ALU_OUT[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT[2]~35_combout\ = (\U14|X\(17) & ((\U0|ALU_OUT[2]~38_combout\))) # (!\U14|X\(17) & (\U0|ALU_OUT[2]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(17),
	datac => \U0|ALU_OUT[2]~34_combout\,
	datad => \U0|ALU_OUT[2]~38_combout\,
	combout => \U0|ALU_OUT[2]~35_combout\);

-- Location: LCCOMB_X21_Y3_N8
\U0|tmp[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~1_combout\ = (\U0|ALU_OUT[5]~22_combout\) # ((\U14|X\(17) & (\U0|ALU_OUT[6]~24_combout\)) # (!\U14|X\(17) & ((\U0|ALU_OUT[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[6]~24_combout\,
	datab => \U14|X\(17),
	datac => \U0|ALU_OUT[6]~26_combout\,
	datad => \U0|ALU_OUT[5]~22_combout\,
	combout => \U0|tmp[7]~1_combout\);

-- Location: LCCOMB_X21_Y3_N10
\U0|tmp[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp[7]~0_combout\ = (\U0|ALU_OUT[1]~7_combout\) # ((\U0|ALU_OUT[0]~11_combout\) # ((\U0|ALU_OUT[3]~17_combout\) # (\U0|ALU_OUT[7]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[1]~7_combout\,
	datab => \U0|ALU_OUT[0]~11_combout\,
	datac => \U0|ALU_OUT[3]~17_combout\,
	datad => \U0|ALU_OUT[7]~40_combout\,
	combout => \U0|tmp[7]~0_combout\);

-- Location: LCCOMB_X21_Y3_N6
\U0|tmp[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|tmp\(7) = (!\U0|ALU_OUT[2]~35_combout\ & (!\U0|ALU_OUT[4]~32_combout\ & (!\U0|tmp[7]~1_combout\ & !\U0|tmp[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALU_OUT[2]~35_combout\,
	datab => \U0|ALU_OUT[4]~32_combout\,
	datac => \U0|tmp[7]~1_combout\,
	datad => \U0|tmp[7]~0_combout\,
	combout => \U0|tmp\(7));

-- Location: FF_X21_Y3_N7
\U2|CCRZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|tmp\(7),
	clrn => \NARST~input_o\,
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CCRZ~q\);

-- Location: LCCOMB_X21_Y3_N24
\U0|ALU_OUT_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT_C~0_combout\ = (\U14|X\(15) & ((\U14|X\(17) & (\U1|ACC\(7))) # (!\U14|X\(17) & ((\U1|ACC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ACC\(7),
	datab => \U1|ACC\(0),
	datac => \U14|X\(17),
	datad => \U14|X\(15),
	combout => \U0|ALU_OUT_C~0_combout\);

-- Location: LCCOMB_X22_Y3_N24
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

-- Location: LCCOMB_X21_Y3_N20
\U0|ALU_OUT_C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|ALU_OUT_C~1_combout\ = (\U0|ALU_OUT_C~0_combout\) # ((!\U14|X\(15) & (!\U14|X\(17) & \U0|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(15),
	datab => \U14|X\(17),
	datac => \U0|ALU_OUT_C~0_combout\,
	datad => \U0|Add0~16_combout\,
	combout => \U0|ALU_OUT_C~1_combout\);

-- Location: FF_X21_Y3_N21
\U2|CCRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U0|ALU_OUT_C~1_combout\,
	clrn => \NARST~input_o\,
	sclr => \U14|X\(16),
	ena => \U14|X\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CCRC~q\);

-- Location: LCCOMB_X21_Y4_N30
\U14|X~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~37_combout\ = (\U4|IR_OUT\(0) & (\U2|CCRZ~q\)) # (!\U4|IR_OUT\(0) & ((\U2|CCRC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CCRZ~q\,
	datac => \U4|IR_OUT\(0),
	datad => \U2|CCRC~q\,
	combout => \U14|X~37_combout\);

-- Location: LCCOMB_X21_Y4_N16
\U14|X~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~74_combout\ = (\U4|IR_OUT\(2) & (\U14|X~37_combout\ & ((!\U4|IR_OUT\(1))))) # (!\U4|IR_OUT\(2) & (((\U4|IR_OUT\(0) & \U4|IR_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~37_combout\,
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(1),
	combout => \U14|X~74_combout\);

-- Location: LCCOMB_X25_Y4_N12
\U14|X~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~75_combout\ = (\U4|IR_OUT\(3) & (!\U13|cuenta\(2) & (\U14|X~74_combout\ & \U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U13|cuenta\(2),
	datac => \U14|X~74_combout\,
	datad => \U13|cuenta\(3),
	combout => \U14|X~75_combout\);

-- Location: LCCOMB_X25_Y4_N4
\U14|X[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[5]~feeder_combout\ = \U14|X~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|X~75_combout\,
	combout => \U14|X[5]~feeder_combout\);

-- Location: LCCOMB_X25_Y4_N20
\U14|X[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~41_combout\ = (\U13|cuenta\(1) & (\U4|IR_OUT\(3) & (\U13|cuenta\(0)))) # (!\U13|cuenta\(1) & (((\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U4|IR_OUT\(3),
	datac => \U13|cuenta\(0),
	datad => \U13|cuenta\(2),
	combout => \U14|X[14]~41_combout\);

-- Location: LCCOMB_X25_Y4_N26
\U14|X[14]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~42_combout\ = (\U14|X[14]~41_combout\ & ((\U4|IR_OUT\(0)) # (!\U4|IR_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_OUT\(1),
	datac => \U4|IR_OUT\(0),
	datad => \U14|X[14]~41_combout\,
	combout => \U14|X[14]~42_combout\);

-- Location: LCCOMB_X21_Y4_N24
\U14|X[14]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~43_combout\ = (\U4|IR_OUT\(1) & ((\U4|IR_OUT\(3)) # (\U4|IR_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datac => \U4|IR_OUT\(3),
	datad => \U4|IR_OUT\(0),
	combout => \U14|X[14]~43_combout\);

-- Location: LCCOMB_X25_Y4_N0
\U14|X[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~44_combout\ = (\U4|IR_OUT\(2) & (!\U4|IR_OUT\(3) & ((\U13|cuenta\(2)) # (\U14|X[14]~43_combout\)))) # (!\U4|IR_OUT\(2) & (((\U13|cuenta\(2)) # (!\U14|X[14]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U13|cuenta\(2),
	datac => \U14|X[14]~43_combout\,
	datad => \U4|IR_OUT\(2),
	combout => \U14|X[14]~44_combout\);

-- Location: LCCOMB_X25_Y4_N30
\U14|X[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~45_combout\ = (\U13|cuenta\(3) & ((\U14|X[14]~42_combout\) # ((!\U14|X~5_combout\ & \U14|X[14]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~5_combout\,
	datab => \U13|cuenta\(3),
	datac => \U14|X[14]~42_combout\,
	datad => \U14|X[14]~44_combout\,
	combout => \U14|X[14]~45_combout\);

-- Location: LCCOMB_X21_Y4_N6
\U14|X[14]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~13_combout\ = (\U13|cuenta\(1) & (((!\U4|IR_OUT\(0) & !\U4|IR_OUT\(3))) # (!\U4|IR_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(3),
	datad => \U13|cuenta\(1),
	combout => \U14|X[14]~13_combout\);

-- Location: LCCOMB_X25_Y4_N24
\U14|X[14]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~46_combout\ = (!\U4|IR_OUT\(2) & ((\U14|X[14]~13_combout\) # ((!\U4|IR_OUT\(1) & \U4|IR_OUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(2),
	datab => \U4|IR_OUT\(1),
	datac => \U4|IR_OUT\(3),
	datad => \U14|X[14]~13_combout\,
	combout => \U14|X[14]~46_combout\);

-- Location: LCCOMB_X25_Y4_N14
\U14|X[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~47_combout\ = (\U13|cuenta\(0) & (\U13|cuenta\(2) & ((\U14|X~27_combout\) # (\U14|X[14]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(2),
	datac => \U14|X~27_combout\,
	datad => \U14|X[14]~46_combout\,
	combout => \U14|X[14]~47_combout\);

-- Location: LCCOMB_X25_Y4_N28
\U14|X[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~48_combout\ = (\U13|cuenta\(3) & ((\U13|cuenta\(2)) # (\U4|IR_OUT\(3) $ (!\U4|IR_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U13|cuenta\(2),
	datac => \U4|IR_OUT\(0),
	datad => \U13|cuenta\(3),
	combout => \U14|X[14]~48_combout\);

-- Location: LCCOMB_X25_Y4_N8
\U14|X[14]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~51_combout\ = (\U4|IR_OUT\(3) & (\U13|cuenta\(2) & (\U4|IR_OUT\(0) & \U13|cuenta\(3)))) # (!\U4|IR_OUT\(3) & ((\U13|cuenta\(2) & ((\U4|IR_OUT\(0)) # (\U13|cuenta\(3)))) # (!\U13|cuenta\(2) & (\U4|IR_OUT\(0) & \U13|cuenta\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U13|cuenta\(2),
	datac => \U4|IR_OUT\(0),
	datad => \U13|cuenta\(3),
	combout => \U14|X[14]~51_combout\);

-- Location: LCCOMB_X21_Y4_N14
\U14|X[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~49_combout\ = (\U4|IR_OUT\(3) & ((\U4|IR_OUT\(2)) # (\U13|cuenta\(2)))) # (!\U4|IR_OUT\(3) & (\U4|IR_OUT\(2) & \U13|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|IR_OUT\(3),
	datac => \U4|IR_OUT\(2),
	datad => \U13|cuenta\(2),
	combout => \U14|X[14]~49_combout\);

-- Location: LCCOMB_X25_Y4_N10
\U14|X[14]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~50_combout\ = (\U4|IR_OUT\(2) & ((\U4|IR_OUT\(1)) # ((\U13|cuenta\(3) & \U14|X[14]~49_combout\)))) # (!\U4|IR_OUT\(2) & (!\U4|IR_OUT\(1) & ((\U13|cuenta\(3)) # (\U14|X[14]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(2),
	datab => \U13|cuenta\(3),
	datac => \U4|IR_OUT\(1),
	datad => \U14|X[14]~49_combout\,
	combout => \U14|X[14]~50_combout\);

-- Location: LCCOMB_X25_Y4_N18
\U14|X[14]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~52_combout\ = (\U4|IR_OUT\(1) & ((\U14|X[14]~50_combout\ & ((\U14|X[14]~51_combout\))) # (!\U14|X[14]~50_combout\ & (\U14|X[14]~48_combout\)))) # (!\U4|IR_OUT\(1) & (((\U14|X[14]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U14|X[14]~48_combout\,
	datac => \U14|X[14]~51_combout\,
	datad => \U14|X[14]~50_combout\,
	combout => \U14|X[14]~52_combout\);

-- Location: LCCOMB_X25_Y4_N16
\U14|X[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~53_combout\ = (!\U14|X[14]~45_combout\ & (!\U14|X[14]~47_combout\ & ((!\U14|X[14]~52_combout\) # (!\U14|X~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~45_combout\,
	datab => \U14|X~5_combout\,
	datac => \U14|X[14]~47_combout\,
	datad => \U14|X[14]~52_combout\,
	combout => \U14|X[14]~53_combout\);

-- Location: FF_X25_Y4_N5
\U14|X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X[5]~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \U13|cuenta\(0),
	sload => \U13|cuenta\(1),
	ena => \U14|X[14]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(5));

-- Location: FF_X23_Y2_N11
\U6|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[0]~10_combout\,
	asdata => \U9|MBR_SIG\(0),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(0));

-- Location: LCCOMB_X23_Y2_N12
\U6|PC[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[1]~13_combout\ = (\U6|PC\(1) & (!\U6|PC[0]~11\)) # (!\U6|PC\(1) & ((\U6|PC[0]~11\) # (GND)))
-- \U6|PC[1]~14\ = CARRY((!\U6|PC[0]~11\) # (!\U6|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(1),
	datad => VCC,
	cin => \U6|PC[0]~11\,
	combout => \U6|PC[1]~13_combout\,
	cout => \U6|PC[1]~14\);

-- Location: FF_X23_Y2_N13
\U6|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[1]~13_combout\,
	asdata => \U9|MBR_SIG\(1),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(1));

-- Location: LCCOMB_X23_Y2_N14
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

-- Location: FF_X23_Y2_N15
\U6|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[2]~15_combout\,
	asdata => \U9|MBR_SIG\(2),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(2));

-- Location: FF_X23_Y2_N17
\U6|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[3]~17_combout\,
	asdata => \U9|MBR_SIG\(3),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(3));

-- Location: IOIBUF_X18_Y0_N1
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

-- Location: LCCOMB_X23_Y3_N2
\U7|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux4~0_combout\ = (!\U18|OR2_OUT~combout\ & ((\U19|OR2_OUT~combout\ & (\DATOS[3]~input_o\)) # (!\U19|OR2_OUT~combout\ & ((\U1|ACC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATOS[3]~input_o\,
	datab => \U1|ACC\(3),
	datac => \U18|OR2_OUT~combout\,
	datad => \U19|OR2_OUT~combout\,
	combout => \U7|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y3_N30
\U7|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux4~1_combout\ = (\U7|Mux4~0_combout\) # ((\U6|PC\(3) & (\U18|OR2_OUT~combout\ & !\U19|OR2_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(3),
	datab => \U7|Mux4~0_combout\,
	datac => \U18|OR2_OUT~combout\,
	datad => \U19|OR2_OUT~combout\,
	combout => \U7|Mux4~1_combout\);

-- Location: FF_X23_Y3_N31
\U9|MBR_SIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U7|Mux4~1_combout\,
	clrn => \NARST~input_o\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(3));

-- Location: FF_X21_Y4_N9
\U4|IR_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U9|MBR_SIG\(3),
	sload => VCC,
	ena => \U4|IR_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_OUT\(3));

-- Location: LCCOMB_X22_Y4_N10
\U14|X[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~16_combout\ = (\U4|IR_OUT\(1) & (!\U4|IR_OUT\(3) & (\U4|IR_OUT\(2) $ (!\U4|IR_OUT\(0))))) # (!\U4|IR_OUT\(1) & (((!\U4|IR_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U4|IR_OUT\(3),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(0),
	combout => \U14|X[10]~16_combout\);

-- Location: LCCOMB_X22_Y4_N0
\U14|X[10]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~17_combout\ = ((\U4|IR_OUT\(0) & ((\U13|cuenta\(0)) # (!\U4|IR_OUT\(2))))) # (!\U4|IR_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(2),
	datad => \U13|cuenta\(0),
	combout => \U14|X[10]~17_combout\);

-- Location: LCCOMB_X22_Y4_N12
\U14|UC_OUT_RW~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~9_combout\ = (\U13|cuenta\(1) & \U4|IR_OUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(1),
	datad => \U4|IR_OUT\(3),
	combout => \U14|UC_OUT_RW~9_combout\);

-- Location: LCCOMB_X23_Y4_N4
\U14|X[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~18_combout\ = (\U13|cuenta\(2) & (((\U14|X[10]~17_combout\ & \U14|UC_OUT_RW~9_combout\)) # (!\U14|X~4_combout\))) # (!\U13|cuenta\(2) & (((\U14|X[10]~17_combout\ & \U14|UC_OUT_RW~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U14|X~4_combout\,
	datac => \U14|X[10]~17_combout\,
	datad => \U14|UC_OUT_RW~9_combout\,
	combout => \U14|X[10]~18_combout\);

-- Location: LCCOMB_X23_Y4_N24
\U14|UC_OUT_RW~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~1_combout\ = (\U13|cuenta\(1)) # (\U13|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datad => \U13|cuenta\(0),
	combout => \U14|UC_OUT_RW~1_combout\);

-- Location: LCCOMB_X23_Y4_N28
\U14|X[10]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~14_combout\ = (!\U4|IR_OUT\(2) & (\U13|cuenta\(0) & \U14|X[14]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(2),
	datab => \U13|cuenta\(0),
	datad => \U14|X[14]~13_combout\,
	combout => \U14|X[10]~14_combout\);

-- Location: LCCOMB_X23_Y4_N18
\U14|X[10]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~15_combout\ = (\U13|cuenta\(2) & ((\U14|X[10]~14_combout\) # ((\U14|UC_OUT_RW~1_combout\ & \U14|X~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U14|UC_OUT_RW~1_combout\,
	datac => \U14|X~8_combout\,
	datad => \U14|X[10]~14_combout\,
	combout => \U14|X[10]~15_combout\);

-- Location: LCCOMB_X23_Y4_N30
\U14|X[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[10]~19_combout\ = (!\U14|X[10]~15_combout\ & (((!\U14|X[10]~16_combout\ & !\U14|X[10]~18_combout\)) # (!\U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[10]~16_combout\,
	datab => \U13|cuenta\(3),
	datac => \U14|X[10]~18_combout\,
	datad => \U14|X[10]~15_combout\,
	combout => \U14|X[10]~19_combout\);

-- Location: FF_X22_Y4_N25
\U14|X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~24_combout\,
	asdata => \~GND~combout\,
	sclr => \U13|cuenta\(3),
	sload => \U13|cuenta\(0),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(0));

-- Location: LCCOMB_X22_Y2_N28
\U4|IR_OUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|IR_OUT[0]~0_combout\ = (\NARST~input_o\ & \U14|X\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NARST~input_o\,
	datad => \U14|X\(0),
	combout => \U4|IR_OUT[0]~0_combout\);

-- Location: FF_X21_Y4_N31
\U4|IR_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U9|MBR_SIG\(0),
	sload => VCC,
	ena => \U4|IR_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_OUT\(0));

-- Location: LCCOMB_X24_Y4_N22
\U14|X~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~77_combout\ = (\U13|cuenta\(0) & (!\U13|cuenta\(1) & (!\U4|IR_OUT\(0) & \U14|X~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U4|IR_OUT\(0),
	datad => \U14|X~63_combout\,
	combout => \U14|X~77_combout\);

-- Location: LCCOMB_X23_Y4_N0
\U14|X[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[3]~feeder_combout\ = \U14|X~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|X~77_combout\,
	combout => \U14|X[3]~feeder_combout\);

-- Location: FF_X23_Y4_N1
\U14|X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \U13|ALT_INV_cuenta\(3),
	sload => \U13|cuenta\(2),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(3));

-- Location: LCCOMB_X23_Y4_N16
\U18|OR2_OUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U18|OR2_OUT~combout\ = (\U14|X\(3)) # (\U14|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(3),
	datad => \U14|X\(4),
	combout => \U18|OR2_OUT~combout\);

-- Location: IOIBUF_X24_Y0_N22
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

-- Location: LCCOMB_X23_Y4_N10
\U7|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux6~0_combout\ = (\U19|OR2_OUT~combout\ & ((\U18|OR2_OUT~combout\) # ((\DATOS[1]~input_o\)))) # (!\U19|OR2_OUT~combout\ & (!\U18|OR2_OUT~combout\ & ((\U1|ACC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U19|OR2_OUT~combout\,
	datab => \U18|OR2_OUT~combout\,
	datac => \DATOS[1]~input_o\,
	datad => \U1|ACC\(1),
	combout => \U7|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y2_N26
\U6|PC[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[8]~27_combout\ = (\U6|PC\(8) & (\U6|PC[7]~26\ $ (GND))) # (!\U6|PC\(8) & (!\U6|PC[7]~26\ & VCC))
-- \U6|PC[8]~28\ = CARRY((\U6|PC\(8) & !\U6|PC[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(8),
	datad => VCC,
	cin => \U6|PC[7]~26\,
	combout => \U6|PC[8]~27_combout\,
	cout => \U6|PC[8]~28\);

-- Location: LCCOMB_X22_Y2_N16
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

-- Location: LCCOMB_X26_Y4_N24
\U14|X~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~57_combout\ = (\U4|IR_OUT\(0) & (\U4|IR_OUT\(2) & (\U4|IR_OUT\(1) & \U4|IR_OUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(0),
	datab => \U4|IR_OUT\(2),
	datac => \U4|IR_OUT\(1),
	datad => \U4|IR_OUT\(3),
	combout => \U14|X~57_combout\);

-- Location: LCCOMB_X26_Y4_N0
\U14|X~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~60_combout\ = (\U4|IR_OUT\(2) & (((!\U4|IR_OUT\(1)) # (!\U4|IR_OUT\(3))) # (!\U4|IR_OUT\(0)))) # (!\U4|IR_OUT\(2) & (\U4|IR_OUT\(1) & ((\U4|IR_OUT\(0)) # (\U4|IR_OUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(0),
	datab => \U4|IR_OUT\(3),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(1),
	combout => \U14|X~60_combout\);

-- Location: LCCOMB_X25_Y4_N6
\U14|X~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~61_combout\ = (\U13|cuenta\(1) & (\U14|X~57_combout\ & (!\U13|cuenta\(0)))) # (!\U13|cuenta\(1) & (((\U13|cuenta\(0) & \U14|X~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X~57_combout\,
	datac => \U13|cuenta\(0),
	datad => \U14|X~60_combout\,
	combout => \U14|X~61_combout\);

-- Location: LCCOMB_X24_Y4_N16
\U14|X~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~62_combout\ = (\U13|cuenta\(2) & \U14|X~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(2),
	datad => \U14|X~61_combout\,
	combout => \U14|X~62_combout\);

-- Location: FF_X24_Y4_N17
\U14|X[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~62_combout\,
	sclr => \U13|cuenta\(3),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(10));

-- Location: FF_X22_Y2_N17
\U3|MBRAUX_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U3|MBRAUX_SIG[0]~feeder_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|MBRAUX_SIG\(0));

-- Location: FF_X23_Y2_N27
\U6|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[8]~27_combout\,
	asdata => \U3|MBRAUX_SIG\(0),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(8));

-- Location: LCCOMB_X23_Y2_N28
\U6|PC[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U6|PC[9]~29_combout\ = \U6|PC[8]~28\ $ (\U6|PC\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U6|PC\(9),
	cin => \U6|PC[8]~28\,
	combout => \U6|PC[9]~29_combout\);

-- Location: LCCOMB_X22_Y2_N6
\U3|MBRAUX_SIG[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|MBRAUX_SIG[1]~feeder_combout\ = \U9|MBR_SIG\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U9|MBR_SIG\(1),
	combout => \U3|MBRAUX_SIG[1]~feeder_combout\);

-- Location: FF_X22_Y2_N7
\U3|MBRAUX_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U3|MBRAUX_SIG[1]~feeder_combout\,
	clrn => \NARST~input_o\,
	ena => \U14|X\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|MBRAUX_SIG\(1));

-- Location: FF_X23_Y2_N29
\U6|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U6|PC[9]~29_combout\,
	asdata => \U3|MBRAUX_SIG\(1),
	clrn => \NARST~input_o\,
	sload => \U14|X\(5),
	ena => \U6|PC[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|PC\(9));

-- Location: LCCOMB_X23_Y3_N14
\U7|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux6~1_combout\ = (\U18|OR2_OUT~combout\ & ((\U7|Mux6~0_combout\ & ((\U6|PC\(9)))) # (!\U7|Mux6~0_combout\ & (\U6|PC\(1))))) # (!\U18|OR2_OUT~combout\ & (((\U7|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|OR2_OUT~combout\,
	datab => \U6|PC\(1),
	datac => \U7|Mux6~0_combout\,
	datad => \U6|PC\(9),
	combout => \U7|Mux6~1_combout\);

-- Location: FF_X23_Y3_N15
\U9|MBR_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U7|Mux6~1_combout\,
	clrn => \NARST~input_o\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(1));

-- Location: FF_X21_Y4_N13
\U4|IR_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \U9|MBR_SIG\(1),
	sload => VCC,
	ena => \U4|IR_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|IR_OUT\(1));

-- Location: LCCOMB_X21_Y4_N10
\U14|X[14]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~89_combout\ = (\U13|cuenta\(1) & (\U4|IR_OUT\(2) $ (((\U4|IR_OUT\(3)) # (\U4|IR_OUT\(0)))))) # (!\U13|cuenta\(1) & (\U4|IR_OUT\(3) & ((\U4|IR_OUT\(0)) # (\U4|IR_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(2),
	datad => \U13|cuenta\(1),
	combout => \U14|X[14]~89_combout\);

-- Location: LCCOMB_X20_Y4_N18
\U14|X[14]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~90_combout\ = (\U13|cuenta\(1) & ((\U4|IR_OUT\(1) & (\U14|X[14]~89_combout\)) # (!\U4|IR_OUT\(1) & ((\U4|IR_OUT\(2)))))) # (!\U13|cuenta\(1) & (\U14|X[14]~89_combout\ & (\U4|IR_OUT\(1) $ (\U4|IR_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U4|IR_OUT\(1),
	datac => \U14|X[14]~89_combout\,
	datad => \U4|IR_OUT\(2),
	combout => \U14|X[14]~90_combout\);

-- Location: LCCOMB_X20_Y4_N14
\U14|X[14]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~35_combout\ = (\U13|cuenta\(0) & (!\U13|cuenta\(2) & \U14|X[14]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(2),
	datad => \U14|X[14]~90_combout\,
	combout => \U14|X[14]~35_combout\);

-- Location: LCCOMB_X20_Y4_N24
\U14|X~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~36_combout\ = (\U4|IR_OUT\(3) & \U4|IR_OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|IR_OUT\(3),
	datad => \U4|IR_OUT\(2),
	combout => \U14|X~36_combout\);

-- Location: LCCOMB_X22_Y4_N26
\U14|X[14]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~38_combout\ = (\U4|IR_OUT\(1) & ((\U13|cuenta\(0) & (\U13|cuenta\(2) & !\U4|IR_OUT\(0))) # (!\U13|cuenta\(0) & (!\U13|cuenta\(2) & \U4|IR_OUT\(0))))) # (!\U4|IR_OUT\(1) & (((\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(2),
	datad => \U4|IR_OUT\(0),
	combout => \U14|X[14]~38_combout\);

-- Location: LCCOMB_X21_Y4_N20
\U14|X[14]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~39_combout\ = (\U4|IR_OUT\(1) & (\U13|cuenta\(1) & ((\U14|X[14]~38_combout\)))) # (!\U4|IR_OUT\(1) & (!\U13|cuenta\(1) & (!\U14|X~37_combout\ & !\U14|X[14]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U13|cuenta\(1),
	datac => \U14|X~37_combout\,
	datad => \U14|X[14]~38_combout\,
	combout => \U14|X[14]~39_combout\);

-- Location: LCCOMB_X21_Y4_N22
\U14|X[14]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~40_combout\ = (\U13|cuenta\(3) & ((\U14|X[14]~35_combout\) # ((\U14|X~36_combout\ & \U14|X[14]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~35_combout\,
	datab => \U14|X~36_combout\,
	datac => \U13|cuenta\(3),
	datad => \U14|X[14]~39_combout\,
	combout => \U14|X[14]~40_combout\);

-- Location: LCCOMB_X21_Y4_N12
\U14|X[14]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~33_combout\ = (!\U13|cuenta\(3) & (\U14|X~8_combout\ & !\U13|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(3),
	datab => \U14|X~8_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X[14]~33_combout\);

-- Location: LCCOMB_X21_Y4_N26
\U14|X[14]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~34_combout\ = (\U14|X~32_combout\ & ((\U14|X[14]~33_combout\) # ((\U14|X[14]~13_combout\ & !\U4|IR_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~33_combout\,
	datab => \U14|X[14]~13_combout\,
	datac => \U4|IR_OUT\(2),
	datad => \U14|X~32_combout\,
	combout => \U14|X[14]~34_combout\);

-- Location: LCCOMB_X21_Y4_N2
\U14|X[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[14]~54_combout\ = (\U14|X[14]~53_combout\ & ((\U14|X[14]~40_combout\) # ((\U14|X[14]~34_combout\)))) # (!\U14|X[14]~53_combout\ & (((\U14|X\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X[14]~40_combout\,
	datab => \U14|X[14]~34_combout\,
	datac => \U14|X\(14),
	datad => \U14|X[14]~53_combout\,
	combout => \U14|X[14]~54_combout\);

-- Location: FF_X21_Y4_N3
\U14|X[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(14));

-- Location: LCCOMB_X20_Y4_N16
\U13|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~0_combout\ = (!\U13|cuenta\(0) & !\U14|X\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(0),
	datad => \U14|X\(14),
	combout => \U13|cuenta~0_combout\);

-- Location: FF_X20_Y4_N17
\U13|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U13|cuenta~0_combout\,
	clrn => \NARST~input_o\,
	ena => \U13|cuenta[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(0));

-- Location: LCCOMB_X20_Y4_N10
\U13|cuenta~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U13|cuenta~2_combout\ = (!\U14|X\(14) & (\U13|cuenta\(0) $ (\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|cuenta\(0),
	datac => \U13|cuenta\(1),
	datad => \U14|X\(14),
	combout => \U13|cuenta~2_combout\);

-- Location: FF_X20_Y4_N11
\U13|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U13|cuenta~2_combout\,
	clrn => \NARST~input_o\,
	ena => \U13|cuenta[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|cuenta\(1));

-- Location: LCCOMB_X26_Y4_N6
\U14|X~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~80_combout\ = (\U13|cuenta\(0) & (!\U4|IR_OUT\(3) & ((\U4|IR_OUT\(0)) # (\U4|IR_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(0),
	datab => \U4|IR_OUT\(2),
	datac => \U13|cuenta\(0),
	datad => \U4|IR_OUT\(3),
	combout => \U14|X~80_combout\);

-- Location: LCCOMB_X26_Y4_N12
\U14|X~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~81_combout\ = (\U14|X~80_combout\) # ((!\U13|cuenta\(0) & (\U14|X~57_combout\ & \U13|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|X~57_combout\,
	datac => \U13|cuenta\(3),
	datad => \U14|X~80_combout\,
	combout => \U14|X~81_combout\);

-- Location: LCCOMB_X25_Y4_N2
\U14|X~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~78_combout\ = (\U13|cuenta\(1) & (\U13|cuenta\(2) & (!\U14|X~63_combout\))) # (!\U13|cuenta\(1) & (((\U14|X~57_combout\)) # (!\U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(2),
	datac => \U14|X~63_combout\,
	datad => \U14|X~57_combout\,
	combout => \U14|X~78_combout\);

-- Location: LCCOMB_X24_Y4_N4
\U14|X~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~79_combout\ = (!\U13|cuenta\(3) & ((\U14|X~71_combout\) # ((\U14|X~78_combout\ & \U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~78_combout\,
	datab => \U13|cuenta\(3),
	datac => \U13|cuenta\(0),
	datad => \U14|X~71_combout\,
	combout => \U14|X~79_combout\);

-- Location: LCCOMB_X23_Y4_N20
\U14|X~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~82_combout\ = (\U14|X~79_combout\) # ((!\U13|cuenta\(1) & (\U14|X~81_combout\ & !\U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X~81_combout\,
	datac => \U13|cuenta\(2),
	datad => \U14|X~79_combout\,
	combout => \U14|X~82_combout\);

-- Location: FF_X23_Y4_N21
\U14|X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~82_combout\,
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(2));

-- Location: LCCOMB_X23_Y4_N26
\U19|OR2_OUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U19|OR2_OUT~combout\ = (\U14|X\(2)) # (\U14|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(2),
	datad => \U14|X\(4),
	combout => \U19|OR2_OUT~combout\);

-- Location: IOIBUF_X18_Y0_N22
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

-- Location: LCCOMB_X23_Y3_N12
\U7|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux7~0_combout\ = (\U18|OR2_OUT~combout\ & ((\U6|PC\(0)) # ((\U19|OR2_OUT~combout\)))) # (!\U18|OR2_OUT~combout\ & (((\U1|ACC\(0) & !\U19|OR2_OUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(0),
	datab => \U1|ACC\(0),
	datac => \U18|OR2_OUT~combout\,
	datad => \U19|OR2_OUT~combout\,
	combout => \U7|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y3_N20
\U7|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux7~1_combout\ = (\U19|OR2_OUT~combout\ & ((\U7|Mux7~0_combout\ & ((\U6|PC\(8)))) # (!\U7|Mux7~0_combout\ & (\DATOS[0]~input_o\)))) # (!\U19|OR2_OUT~combout\ & (((\U7|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U19|OR2_OUT~combout\,
	datab => \DATOS[0]~input_o\,
	datac => \U6|PC\(8),
	datad => \U7|Mux7~0_combout\,
	combout => \U7|Mux7~1_combout\);

-- Location: FF_X23_Y3_N21
\U9|MBR_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U7|Mux7~1_combout\,
	clrn => \NARST~input_o\,
	ena => \U17|OR4_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|MBR_SIG\(0));

-- Location: LCCOMB_X22_Y4_N8
\U14|UC_OUT_RW~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~4_combout\ = (\U4|IR_OUT\(1) & (\U4|IR_OUT\(0) & (\U4|IR_OUT\(2) & !\U4|IR_OUT\(3)))) # (!\U4|IR_OUT\(1) & (((!\U4|IR_OUT\(2) & \U4|IR_OUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(3),
	combout => \U14|UC_OUT_RW~4_combout\);

-- Location: LCCOMB_X22_Y4_N18
\U14|UC_OUT_RW~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~3_combout\ = (\U4|IR_OUT\(1) & ((\U4|IR_OUT\(3)) # (\U4|IR_OUT\(0) $ (\U4|IR_OUT\(2))))) # (!\U4|IR_OUT\(1) & (((\U4|IR_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U4|IR_OUT\(0),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(3),
	combout => \U14|UC_OUT_RW~3_combout\);

-- Location: LCCOMB_X22_Y4_N22
\U14|UC_OUT_RW~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~5_combout\ = (\U13|cuenta\(0) & ((\U13|cuenta\(1) & ((\U14|UC_OUT_RW~3_combout\))) # (!\U13|cuenta\(1) & (!\U14|UC_OUT_RW~4_combout\)))) # (!\U13|cuenta\(0) & (((!\U14|UC_OUT_RW~4_combout\)) # (!\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U14|UC_OUT_RW~4_combout\,
	datad => \U14|UC_OUT_RW~3_combout\,
	combout => \U14|UC_OUT_RW~5_combout\);

-- Location: LCCOMB_X20_Y4_N28
\U14|UC_OUT_RW~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~6_combout\ = (!\U13|cuenta\(3) & ((\U14|UC_OUT_RW~5_combout\) # ((\U14|UC_OUT_RW~q\) # (!\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|UC_OUT_RW~5_combout\,
	datab => \U13|cuenta\(2),
	datac => \U13|cuenta\(3),
	datad => \U14|UC_OUT_RW~q\,
	combout => \U14|UC_OUT_RW~6_combout\);

-- Location: LCCOMB_X23_Y4_N6
\U14|UC_OUT_RW~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~0_combout\ = (\U13|cuenta\(2) & \U13|cuenta\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|cuenta\(2),
	datad => \U13|cuenta\(3),
	combout => \U14|UC_OUT_RW~0_combout\);

-- Location: LCCOMB_X23_Y4_N14
\U14|UC_OUT_RW~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~2_combout\ = (\U14|UC_OUT_RW~0_combout\ & ((\U14|X~4_combout\ & ((\U14|UC_OUT_RW~1_combout\))) # (!\U14|X~4_combout\ & (\U14|UC_OUT_RW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|UC_OUT_RW~q\,
	datab => \U14|UC_OUT_RW~1_combout\,
	datac => \U14|X~4_combout\,
	datad => \U14|UC_OUT_RW~0_combout\,
	combout => \U14|UC_OUT_RW~2_combout\);

-- Location: LCCOMB_X22_Y4_N6
\U14|UC_OUT_RW~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~10_combout\ = (\U4|IR_OUT\(1) & (((\U4|IR_OUT\(2))))) # (!\U4|IR_OUT\(1) & ((\U14|UC_OUT_RW~q\) # ((\U4|IR_OUT\(2) & !\U14|UC_OUT_RW~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(1),
	datab => \U14|UC_OUT_RW~q\,
	datac => \U4|IR_OUT\(2),
	datad => \U14|UC_OUT_RW~9_combout\,
	combout => \U14|UC_OUT_RW~10_combout\);

-- Location: LCCOMB_X22_Y4_N16
\U14|UC_OUT_RW~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~11_combout\ = (\U14|UC_OUT_RW~q\) # ((\U4|IR_OUT\(3) & ((!\U13|cuenta\(1)) # (!\U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U14|UC_OUT_RW~q\,
	datac => \U4|IR_OUT\(3),
	datad => \U13|cuenta\(1),
	combout => \U14|UC_OUT_RW~11_combout\);

-- Location: LCCOMB_X22_Y4_N14
\U14|UC_OUT_RW~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~12_combout\ = (\U4|IR_OUT\(0) & (((\U14|UC_OUT_RW~11_combout\)))) # (!\U4|IR_OUT\(0) & (((!\U14|X~5_combout\)) # (!\U4|IR_OUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U4|IR_OUT\(0),
	datac => \U14|X~5_combout\,
	datad => \U14|UC_OUT_RW~11_combout\,
	combout => \U14|UC_OUT_RW~12_combout\);

-- Location: LCCOMB_X22_Y4_N20
\U14|UC_OUT_RW~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~7_combout\ = (\U4|IR_OUT\(3) & (((\U13|cuenta\(0) & !\U4|IR_OUT\(0))) # (!\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U4|IR_OUT\(3),
	datac => \U13|cuenta\(1),
	datad => \U4|IR_OUT\(0),
	combout => \U14|UC_OUT_RW~7_combout\);

-- Location: LCCOMB_X22_Y4_N2
\U14|UC_OUT_RW~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~8_combout\ = (\U14|UC_OUT_RW~7_combout\) # ((\U4|IR_OUT\(3) & (\U14|UC_OUT_RW~q\ & \U4|IR_OUT\(0))) # (!\U4|IR_OUT\(3) & ((\U14|UC_OUT_RW~q\) # (\U4|IR_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(3),
	datab => \U14|UC_OUT_RW~q\,
	datac => \U4|IR_OUT\(0),
	datad => \U14|UC_OUT_RW~7_combout\,
	combout => \U14|UC_OUT_RW~8_combout\);

-- Location: LCCOMB_X22_Y4_N28
\U14|UC_OUT_RW~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~13_combout\ = (\U14|UC_OUT_RW~10_combout\ & (((\U14|UC_OUT_RW~12_combout\)) # (!\U4|IR_OUT\(1)))) # (!\U14|UC_OUT_RW~10_combout\ & (\U4|IR_OUT\(1) & ((\U14|UC_OUT_RW~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|UC_OUT_RW~10_combout\,
	datab => \U4|IR_OUT\(1),
	datac => \U14|UC_OUT_RW~12_combout\,
	datad => \U14|UC_OUT_RW~8_combout\,
	combout => \U14|UC_OUT_RW~13_combout\);

-- Location: LCCOMB_X21_Y4_N28
\U14|UC_OUT_RW~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|UC_OUT_RW~14_combout\ = (\U14|UC_OUT_RW~6_combout\) # ((\U14|UC_OUT_RW~2_combout\) # ((!\U13|cuenta\(2) & \U14|UC_OUT_RW~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|UC_OUT_RW~6_combout\,
	datab => \U13|cuenta\(2),
	datac => \U14|UC_OUT_RW~2_combout\,
	datad => \U14|UC_OUT_RW~13_combout\,
	combout => \U14|UC_OUT_RW~14_combout\);

-- Location: FF_X21_Y4_N29
\U14|UC_OUT_RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|UC_OUT_RW~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|UC_OUT_RW~q\);

-- Location: LCCOMB_X22_Y1_N6
\U5|SP[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[0]~8_combout\ = \U5|SP\(0) $ (VCC)
-- \U5|SP[0]~9\ = CARRY(\U5|SP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(0),
	datad => VCC,
	combout => \U5|SP[0]~8_combout\,
	cout => \U5|SP[0]~9\);

-- Location: LCCOMB_X24_Y3_N4
\U14|X~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~55_combout\ = (\U14|X~36_combout\ & (!\U4|IR_OUT\(0) & (!\U13|cuenta\(2) & \U14|X~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~36_combout\,
	datab => \U4|IR_OUT\(0),
	datac => \U13|cuenta\(2),
	datad => \U14|X~5_combout\,
	combout => \U14|X~55_combout\);

-- Location: LCCOMB_X24_Y3_N20
\U14|X~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~56_combout\ = (\U14|X~55_combout\) # ((\U13|cuenta\(2) & (\U13|cuenta\(0) & !\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(0),
	datac => \U14|X~55_combout\,
	datad => \U13|cuenta\(1),
	combout => \U14|X~56_combout\);

-- Location: FF_X24_Y3_N21
\U14|X[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~56_combout\,
	sclr => \U13|ALT_INV_cuenta\(3),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(13));

-- Location: LCCOMB_X26_Y4_N28
\U14|X~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~86_combout\ = (\U14|X~57_combout\ & (\U13|cuenta\(1) $ (\U13|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U14|X~57_combout\,
	datad => \U13|cuenta\(2),
	combout => \U14|X~86_combout\);

-- Location: FF_X26_Y4_N29
\U14|X[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~86_combout\,
	asdata => \~GND~combout\,
	sclr => \U13|cuenta\(3),
	sload => \U13|ALT_INV_cuenta\(0),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(12));

-- Location: LCCOMB_X22_Y1_N28
\U5|SP[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[3]~10_combout\ = (!\U14|X\(13) & !\U14|X\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|X\(13),
	datad => \U14|X\(12),
	combout => \U5|SP[3]~10_combout\);

-- Location: LCCOMB_X26_Y4_N2
\U14|X~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~58_combout\ = ((\U4|IR_OUT\(2)) # ((\U13|cuenta\(1)) # (!\U4|IR_OUT\(1)))) # (!\U13|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U4|IR_OUT\(2),
	datac => \U4|IR_OUT\(1),
	datad => \U13|cuenta\(1),
	combout => \U14|X~58_combout\);

-- Location: LCCOMB_X26_Y4_N18
\U14|X~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~59_combout\ = (!\U4|IR_OUT\(0) & (!\U14|X~58_combout\ & !\U4|IR_OUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(0),
	datab => \U14|X~58_combout\,
	datad => \U4|IR_OUT\(3),
	combout => \U14|X~59_combout\);

-- Location: FF_X26_Y4_N19
\U14|X[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~59_combout\,
	asdata => \~GND~combout\,
	sclr => \U13|cuenta\(3),
	sload => \U13|ALT_INV_cuenta\(0),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(11));

-- Location: LCCOMB_X22_Y1_N26
\U5|SP[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[3]~11_combout\ = (\U14|X\(11) & (!\U14|X\(13) & !\U14|X\(12))) # (!\U14|X\(11) & (\U14|X\(13) $ (\U14|X\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(11),
	datac => \U14|X\(13),
	datad => \U14|X\(12),
	combout => \U5|SP[3]~11_combout\);

-- Location: FF_X22_Y1_N7
\U5|SP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U5|SP[0]~8_combout\,
	asdata => \U9|MBR_SIG\(0),
	clrn => \NARST~input_o\,
	sload => \U5|SP[3]~10_combout\,
	ena => \U5|SP[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(0));

-- Location: LCCOMB_X24_Y4_N12
\U14|X~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~64_combout\ = (\U13|cuenta\(2) & (!\U13|cuenta\(3) & \U4|IR_OUT\(0))) # (!\U13|cuenta\(2) & (\U13|cuenta\(3) & !\U4|IR_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U13|cuenta\(3),
	datac => \U4|IR_OUT\(0),
	combout => \U14|X~64_combout\);

-- Location: LCCOMB_X23_Y4_N22
\U14|X~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~65_combout\ = (\U14|X~64_combout\ & (\U14|X~63_combout\ & (\U13|cuenta\(1) $ (!\U13|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(1),
	datab => \U13|cuenta\(0),
	datac => \U14|X~64_combout\,
	datad => \U14|X~63_combout\,
	combout => \U14|X~65_combout\);

-- Location: FF_X23_Y4_N23
\U14|X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~65_combout\,
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(9));

-- Location: LCCOMB_X23_Y1_N24
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

-- Location: LCCOMB_X24_Y4_N18
\U14|X~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~68_combout\ = (\U13|cuenta\(2) & (\U14|X~4_combout\)) # (!\U13|cuenta\(2) & ((\U14|X~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(2),
	datab => \U14|X~4_combout\,
	datad => \U14|X~67_combout\,
	combout => \U14|X~68_combout\);

-- Location: LCCOMB_X24_Y4_N6
\U14|X~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~87_combout\ = (\U13|cuenta\(0) & (\U14|X~68_combout\ & (\U13|cuenta\(1) $ (\U13|cuenta\(2))))) # (!\U13|cuenta\(0) & (\U13|cuenta\(1) $ ((!\U13|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|cuenta\(0),
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U14|X~68_combout\,
	combout => \U14|X~87_combout\);

-- Location: LCCOMB_X26_Y4_N4
\U14|X~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~66_combout\ = (\U4|IR_OUT\(3) & (((!\U4|IR_OUT\(1)) # (!\U4|IR_OUT\(2))))) # (!\U4|IR_OUT\(3) & ((\U4|IR_OUT\(2)) # ((\U4|IR_OUT\(0) & \U4|IR_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|IR_OUT\(0),
	datab => \U4|IR_OUT\(3),
	datac => \U4|IR_OUT\(2),
	datad => \U4|IR_OUT\(1),
	combout => \U14|X~66_combout\);

-- Location: LCCOMB_X24_Y4_N26
\U14|X~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~88_combout\ = (\U14|X~87_combout\ & (((\U14|X~66_combout\) # (!\U13|cuenta\(2))) # (!\U13|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~87_combout\,
	datab => \U13|cuenta\(1),
	datac => \U13|cuenta\(2),
	datad => \U14|X~66_combout\,
	combout => \U14|X~88_combout\);

-- Location: FF_X24_Y4_N27
\U14|X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X~88_combout\,
	sclr => \U13|cuenta\(3),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(8));

-- Location: LCCOMB_X23_Y1_N16
\U16|OR3_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U16|OR3_OUT~0_combout\ = (!\U14|X\(9) & !\U14|X\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(9),
	datad => \U14|X\(8),
	combout => \U16|OR3_OUT~0_combout\);

-- Location: LCCOMB_X26_Y4_N20
\U14|X~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X~70_combout\ = (!\U13|cuenta\(1) & ((\U13|cuenta\(0) & ((\U14|X~57_combout\))) # (!\U13|cuenta\(0) & (\U14|X~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X~69_combout\,
	datab => \U14|X~57_combout\,
	datac => \U13|cuenta\(0),
	datad => \U13|cuenta\(1),
	combout => \U14|X~70_combout\);

-- Location: LCCOMB_X23_Y4_N12
\U14|X[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U14|X[7]~feeder_combout\ = \U14|X~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|X~70_combout\,
	combout => \U14|X[7]~feeder_combout\);

-- Location: FF_X23_Y4_N13
\U14|X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U14|X[7]~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \U13|ALT_INV_cuenta\(3),
	sload => \U13|cuenta\(2),
	ena => \U14|X[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|X\(7));

-- Location: LCCOMB_X23_Y1_N30
\U16|OR3_OUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U16|OR3_OUT~combout\ = (\U14|X\(9)) # ((\U14|X\(7)) # (\U14|X\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|X\(9),
	datac => \U14|X\(7),
	datad => \U14|X\(8),
	combout => \U16|OR3_OUT~combout\);

-- Location: FF_X23_Y1_N25
\U12|MAR_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U12|MAR_SIG[0]~0_combout\,
	asdata => \U9|MBR_SIG\(0),
	clrn => \NARST~input_o\,
	sload => \U16|OR3_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(0));

-- Location: LCCOMB_X22_Y1_N8
\U5|SP[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[1]~12_combout\ = (\U14|X\(13) & ((\U5|SP\(1) & (\U5|SP[0]~9\ & VCC)) # (!\U5|SP\(1) & (!\U5|SP[0]~9\)))) # (!\U14|X\(13) & ((\U5|SP\(1) & (!\U5|SP[0]~9\)) # (!\U5|SP\(1) & ((\U5|SP[0]~9\) # (GND)))))
-- \U5|SP[1]~13\ = CARRY((\U14|X\(13) & (!\U5|SP\(1) & !\U5|SP[0]~9\)) # (!\U14|X\(13) & ((!\U5|SP[0]~9\) # (!\U5|SP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(1),
	datad => VCC,
	cin => \U5|SP[0]~9\,
	combout => \U5|SP[1]~12_combout\,
	cout => \U5|SP[1]~13\);

-- Location: FF_X22_Y1_N9
\U5|SP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U5|SP[1]~12_combout\,
	asdata => \U9|MBR_SIG\(1),
	clrn => \NARST~input_o\,
	sload => \U5|SP[3]~10_combout\,
	ena => \U5|SP[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(1));

-- Location: LCCOMB_X23_Y1_N22
\U12|MAR_SIG[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[1]~1_combout\ = (\U14|X\(9) & (\U5|SP\(1))) # (!\U14|X\(9) & ((\U6|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(1),
	datab => \U14|X\(9),
	datad => \U6|PC\(1),
	combout => \U12|MAR_SIG[1]~1_combout\);

-- Location: FF_X23_Y1_N23
\U12|MAR_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U12|MAR_SIG[1]~1_combout\,
	asdata => \U9|MBR_SIG\(1),
	clrn => \NARST~input_o\,
	sload => \U16|OR3_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(1));

-- Location: LCCOMB_X22_Y1_N10
\U5|SP[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[2]~14_combout\ = ((\U14|X\(13) $ (\U5|SP\(2) $ (!\U5|SP[1]~13\)))) # (GND)
-- \U5|SP[2]~15\ = CARRY((\U14|X\(13) & ((\U5|SP\(2)) # (!\U5|SP[1]~13\))) # (!\U14|X\(13) & (\U5|SP\(2) & !\U5|SP[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(2),
	datad => VCC,
	cin => \U5|SP[1]~13\,
	combout => \U5|SP[2]~14_combout\,
	cout => \U5|SP[2]~15\);

-- Location: FF_X22_Y1_N11
\U5|SP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U5|SP[2]~14_combout\,
	asdata => \U9|MBR_SIG\(2),
	clrn => \NARST~input_o\,
	sload => \U5|SP[3]~10_combout\,
	ena => \U5|SP[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(2));

-- Location: LCCOMB_X23_Y1_N20
\U12|MAR_SIG[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[2]~2_combout\ = (\U14|X\(9) & (\U5|SP\(2))) # (!\U14|X\(9) & ((\U6|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|SP\(2),
	datab => \U6|PC\(2),
	datad => \U14|X\(9),
	combout => \U12|MAR_SIG[2]~2_combout\);

-- Location: FF_X23_Y1_N21
\U12|MAR_SIG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U12|MAR_SIG[2]~2_combout\,
	asdata => \U9|MBR_SIG\(2),
	clrn => \NARST~input_o\,
	sload => \U16|OR3_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(2));

-- Location: LCCOMB_X22_Y1_N12
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

-- Location: FF_X22_Y1_N13
\U5|SP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U5|SP[3]~16_combout\,
	asdata => \U9|MBR_SIG\(3),
	clrn => \NARST~input_o\,
	sload => \U5|SP[3]~10_combout\,
	ena => \U5|SP[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(3));

-- Location: LCCOMB_X23_Y1_N10
\U12|MAR_SIG[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[3]~3_combout\ = (\U14|X\(9) & ((\U5|SP\(3)))) # (!\U14|X\(9) & (\U6|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(3),
	datab => \U14|X\(9),
	datad => \U5|SP\(3),
	combout => \U12|MAR_SIG[3]~3_combout\);

-- Location: FF_X23_Y1_N11
\U12|MAR_SIG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U12|MAR_SIG[3]~3_combout\,
	asdata => \U9|MBR_SIG\(3),
	clrn => \NARST~input_o\,
	sload => \U16|OR3_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(3));

-- Location: LCCOMB_X22_Y1_N14
\U5|SP[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[4]~18_combout\ = ((\U14|X\(13) $ (\U5|SP\(4) $ (!\U5|SP[3]~17\)))) # (GND)
-- \U5|SP[4]~19\ = CARRY((\U14|X\(13) & ((\U5|SP\(4)) # (!\U5|SP[3]~17\))) # (!\U14|X\(13) & (\U5|SP\(4) & !\U5|SP[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(4),
	datad => VCC,
	cin => \U5|SP[3]~17\,
	combout => \U5|SP[4]~18_combout\,
	cout => \U5|SP[4]~19\);

-- Location: FF_X22_Y1_N15
\U5|SP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U5|SP[4]~18_combout\,
	asdata => \U9|MBR_SIG\(4),
	clrn => \NARST~input_o\,
	sload => \U5|SP[3]~10_combout\,
	ena => \U5|SP[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(4));

-- Location: LCCOMB_X23_Y1_N0
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

-- Location: FF_X23_Y1_N1
\U12|MAR_SIG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U12|MAR_SIG[4]~4_combout\,
	asdata => \U9|MBR_SIG\(4),
	clrn => \NARST~input_o\,
	sload => \U16|OR3_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(4));

-- Location: LCCOMB_X22_Y1_N16
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

-- Location: FF_X22_Y1_N17
\U5|SP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U5|SP[5]~20_combout\,
	asdata => \U9|MBR_SIG\(5),
	clrn => \NARST~input_o\,
	sload => \U5|SP[3]~10_combout\,
	ena => \U5|SP[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(5));

-- Location: LCCOMB_X23_Y1_N26
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

-- Location: FF_X23_Y1_N27
\U12|MAR_SIG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U12|MAR_SIG[5]~5_combout\,
	asdata => \U9|MBR_SIG\(5),
	clrn => \NARST~input_o\,
	sload => \U16|OR3_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(5));

-- Location: LCCOMB_X22_Y1_N18
\U5|SP[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[6]~22_combout\ = ((\U14|X\(13) $ (\U5|SP\(6) $ (!\U5|SP[5]~21\)))) # (GND)
-- \U5|SP[6]~23\ = CARRY((\U14|X\(13) & ((\U5|SP\(6)) # (!\U5|SP[5]~21\))) # (!\U14|X\(13) & (\U5|SP\(6) & !\U5|SP[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(6),
	datad => VCC,
	cin => \U5|SP[5]~21\,
	combout => \U5|SP[6]~22_combout\,
	cout => \U5|SP[6]~23\);

-- Location: FF_X22_Y1_N19
\U5|SP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U5|SP[6]~22_combout\,
	asdata => \U9|MBR_SIG\(6),
	clrn => \NARST~input_o\,
	sload => \U5|SP[3]~10_combout\,
	ena => \U5|SP[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(6));

-- Location: LCCOMB_X23_Y1_N12
\U12|MAR_SIG[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[6]~6_combout\ = (\U14|X\(9) & ((\U5|SP\(6)))) # (!\U14|X\(9) & (\U6|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(6),
	datab => \U5|SP\(6),
	datad => \U14|X\(9),
	combout => \U12|MAR_SIG[6]~6_combout\);

-- Location: FF_X23_Y1_N13
\U12|MAR_SIG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U12|MAR_SIG[6]~6_combout\,
	asdata => \U9|MBR_SIG\(6),
	clrn => \NARST~input_o\,
	sload => \U16|OR3_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(6));

-- Location: LCCOMB_X22_Y1_N20
\U5|SP[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|SP[7]~24_combout\ = \U14|X\(13) $ (\U5|SP\(7) $ (\U5|SP[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|X\(13),
	datab => \U5|SP\(7),
	cin => \U5|SP[6]~23\,
	combout => \U5|SP[7]~24_combout\);

-- Location: FF_X22_Y1_N21
\U5|SP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U5|SP[7]~24_combout\,
	asdata => \U9|MBR_SIG\(7),
	clrn => \NARST~input_o\,
	sload => \U5|SP[3]~10_combout\,
	ena => \U5|SP[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|SP\(7));

-- Location: LCCOMB_X23_Y1_N2
\U12|MAR_SIG[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U12|MAR_SIG[7]~7_combout\ = (\U14|X\(9) & ((\U5|SP\(7)))) # (!\U14|X\(9) & (\U6|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(7),
	datab => \U5|SP\(7),
	datad => \U14|X\(9),
	combout => \U12|MAR_SIG[7]~7_combout\);

-- Location: FF_X23_Y1_N3
\U12|MAR_SIG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U12|MAR_SIG[7]~7_combout\,
	asdata => \U9|MBR_SIG\(7),
	clrn => \NARST~input_o\,
	sload => \U16|OR3_OUT~0_combout\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(7));

-- Location: LCCOMB_X23_Y1_N28
\U10|MUX1_OUT[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10|MUX1_OUT[8]~0_combout\ = (!\U14|X\(9) & ((\U14|X\(8) & (\U6|PC\(8))) # (!\U14|X\(8) & ((\U3|MBRAUX_SIG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PC\(8),
	datab => \U14|X\(9),
	datac => \U3|MBRAUX_SIG\(0),
	datad => \U14|X\(8),
	combout => \U10|MUX1_OUT[8]~0_combout\);

-- Location: FF_X23_Y1_N29
\U12|MAR_SIG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U10|MUX1_OUT[8]~0_combout\,
	clrn => \NARST~input_o\,
	ena => \U16|OR3_OUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|MAR_SIG\(8));

-- Location: LCCOMB_X23_Y1_N18
\U10|MUX1_OUT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10|MUX1_OUT[9]~1_combout\ = (\U14|X\(9)) # ((\U14|X\(8) & ((\U6|PC\(9)))) # (!\U14|X\(8) & (\U3|MBRAUX_SIG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|MBRAUX_SIG\(1),
	datab => \U14|X\(9),
	datac => \U6|PC\(9),
	datad => \U14|X\(8),
	combout => \U10|MUX1_OUT[9]~1_combout\);

-- Location: FF_X23_Y1_N19
\U12|MAR_SIG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \U10|MUX1_OUT[9]~1_combout\,
	clrn => \NARST~input_o\,
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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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

ww_X_DISP(19) <= \X_DISP[19]~output_o\;

ww_X_DISP(18) <= \X_DISP[18]~output_o\;

ww_X_DISP(17) <= \X_DISP[17]~output_o\;

ww_X_DISP(16) <= \X_DISP[16]~output_o\;

ww_X_DISP(15) <= \X_DISP[15]~output_o\;

ww_X_DISP(14) <= \X_DISP[14]~output_o\;

ww_X_DISP(13) <= \X_DISP[13]~output_o\;

ww_X_DISP(12) <= \X_DISP[12]~output_o\;

ww_X_DISP(11) <= \X_DISP[11]~output_o\;

ww_X_DISP(10) <= \X_DISP[10]~output_o\;

ww_X_DISP(9) <= \X_DISP[9]~output_o\;

ww_X_DISP(8) <= \X_DISP[8]~output_o\;

ww_X_DISP(7) <= \X_DISP[7]~output_o\;

ww_X_DISP(6) <= \X_DISP[6]~output_o\;

ww_X_DISP(5) <= \X_DISP[5]~output_o\;

ww_X_DISP(4) <= \X_DISP[4]~output_o\;

ww_X_DISP(3) <= \X_DISP[3]~output_o\;

ww_X_DISP(2) <= \X_DISP[2]~output_o\;

ww_X_DISP(1) <= \X_DISP[1]~output_o\;

ww_X_DISP(0) <= \X_DISP[0]~output_o\;

DATOS(0) <= \DATOS[0]~output_o\;

DATOS(1) <= \DATOS[1]~output_o\;

DATOS(2) <= \DATOS[2]~output_o\;

DATOS(3) <= \DATOS[3]~output_o\;

DATOS(4) <= \DATOS[4]~output_o\;

DATOS(5) <= \DATOS[5]~output_o\;

DATOS(6) <= \DATOS[6]~output_o\;

DATOS(7) <= \DATOS[7]~output_o\;
END structure;


