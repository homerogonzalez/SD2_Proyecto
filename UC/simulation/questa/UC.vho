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

-- DATE "10/28/2023 17:32:01"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UC IS
    PORT (
	C : IN std_logic;
	Z : IN std_logic;
	q : IN std_logic_vector(3 DOWNTO 0);
	T : IN std_logic_vector(3 DOWNTO 0);
	Xout : OUT std_logic_vector(0 TO 19);
	RW : OUT std_logic
	);
END UC;

-- Design Ports Information
-- Xout[19]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[18]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[17]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[16]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[12]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[11]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[9]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xout[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_T : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Xout : std_logic_vector(0 TO 19);
SIGNAL ww_RW : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Xout[19]~output_o\ : std_logic;
SIGNAL \Xout[18]~output_o\ : std_logic;
SIGNAL \Xout[17]~output_o\ : std_logic;
SIGNAL \Xout[16]~output_o\ : std_logic;
SIGNAL \Xout[15]~output_o\ : std_logic;
SIGNAL \Xout[14]~output_o\ : std_logic;
SIGNAL \Xout[13]~output_o\ : std_logic;
SIGNAL \Xout[12]~output_o\ : std_logic;
SIGNAL \Xout[11]~output_o\ : std_logic;
SIGNAL \Xout[10]~output_o\ : std_logic;
SIGNAL \Xout[9]~output_o\ : std_logic;
SIGNAL \Xout[8]~output_o\ : std_logic;
SIGNAL \Xout[7]~output_o\ : std_logic;
SIGNAL \Xout[6]~output_o\ : std_logic;
SIGNAL \Xout[5]~output_o\ : std_logic;
SIGNAL \Xout[4]~output_o\ : std_logic;
SIGNAL \Xout[3]~output_o\ : std_logic;
SIGNAL \Xout[2]~output_o\ : std_logic;
SIGNAL \Xout[1]~output_o\ : std_logic;
SIGNAL \Xout[0]~output_o\ : std_logic;
SIGNAL \RW~output_o\ : std_logic;
SIGNAL \T[1]~input_o\ : std_logic;
SIGNAL \T[0]~input_o\ : std_logic;
SIGNAL \q[2]~input_o\ : std_logic;
SIGNAL \X[15]~77_combout\ : std_logic;
SIGNAL \T[3]~input_o\ : std_logic;
SIGNAL \q[3]~input_o\ : std_logic;
SIGNAL \q[0]~input_o\ : std_logic;
SIGNAL \T[2]~input_o\ : std_logic;
SIGNAL \q[1]~input_o\ : std_logic;
SIGNAL \X[17]~53_combout\ : std_logic;
SIGNAL \X[17]~51_combout\ : std_logic;
SIGNAL \X[17]~159_combout\ : std_logic;
SIGNAL \X[19]~150_combout\ : std_logic;
SIGNAL \X[5]~78_combout\ : std_logic;
SIGNAL \X[19]~75_combout\ : std_logic;
SIGNAL \X[19]~79_combout\ : std_logic;
SIGNAL \X[19]~87_combout\ : std_logic;
SIGNAL \X[12]~84_combout\ : std_logic;
SIGNAL \X[19]~85_combout\ : std_logic;
SIGNAL \X[14]~76_combout\ : std_logic;
SIGNAL \X[19]~86_combout\ : std_logic;
SIGNAL \X[19]~88_combout\ : std_logic;
SIGNAL \X[14]~80_combout\ : std_logic;
SIGNAL \X[16]~81_combout\ : std_logic;
SIGNAL \X[16]~82_combout\ : std_logic;
SIGNAL \X[19]~83_combout\ : std_logic;
SIGNAL \X[19]~163_combout\ : std_logic;
SIGNAL \X[19]~164_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \X[7]~136_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \X[0]~166_combout\ : std_logic;
SIGNAL \X[0]~155_combout\ : std_logic;
SIGNAL \X[0]~156_combout\ : std_logic;
SIGNAL \X[0]~154_combout\ : std_logic;
SIGNAL \X[0]~157_combout\ : std_logic;
SIGNAL \X[0]~63_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \X[0]~64_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \X[0]~149_combout\ : std_logic;
SIGNAL \X[0]~158_combout\ : std_logic;
SIGNAL \X[0]~148_combout\ : std_logic;
SIGNAL \X[0]~67_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \X[0]~71_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \X[0]~70_combout\ : std_logic;
SIGNAL \X[0]~72_combout\ : std_logic;
SIGNAL \X[0]~65_combout\ : std_logic;
SIGNAL \X[0]~66_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \X[0]~68_combout\ : std_logic;
SIGNAL \X[0]~69_combout\ : std_logic;
SIGNAL \X[0]~73_combout\ : std_logic;
SIGNAL \X[0]~74_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \X[17]~89_combout\ : std_logic;
SIGNAL \X[17]~90_combout\ : std_logic;
SIGNAL \comb~40_combout\ : std_logic;
SIGNAL \comb~39_combout\ : std_logic;
SIGNAL \X[16]~96_combout\ : std_logic;
SIGNAL \X[15]~95_combout\ : std_logic;
SIGNAL \X[15]~97_combout\ : std_logic;
SIGNAL \X[15]~93_combout\ : std_logic;
SIGNAL \X[15]~92_combout\ : std_logic;
SIGNAL \X[15]~91_combout\ : std_logic;
SIGNAL \X[15]~94_combout\ : std_logic;
SIGNAL \X[16]~98_combout\ : std_logic;
SIGNAL \X[16]~99_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \X[15]~100_combout\ : std_logic;
SIGNAL \X[15]~101_combout\ : std_logic;
SIGNAL \X[15]~102_combout\ : std_logic;
SIGNAL \X[15]~103_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \X[14]~108_combout\ : std_logic;
SIGNAL \X[14]~151_combout\ : std_logic;
SIGNAL \X[14]~109_combout\ : std_logic;
SIGNAL \X[14]~110_combout\ : std_logic;
SIGNAL \X[14]~104_combout\ : std_logic;
SIGNAL \X[14]~105_combout\ : std_logic;
SIGNAL \X[14]~106_combout\ : std_logic;
SIGNAL \X[14]~107_combout\ : std_logic;
SIGNAL \X[14]~112_combout\ : std_logic;
SIGNAL \X[14]~111_combout\ : std_logic;
SIGNAL \X[14]~113_combout\ : std_logic;
SIGNAL \X[14]~114_combout\ : std_logic;
SIGNAL \X[14]~120_combout\ : std_logic;
SIGNAL \X[14]~117_combout\ : std_logic;
SIGNAL \X[14]~118_combout\ : std_logic;
SIGNAL \X[14]~119_combout\ : std_logic;
SIGNAL \X[14]~160_combout\ : std_logic;
SIGNAL \X[14]~121_combout\ : std_logic;
SIGNAL \X[10]~115_combout\ : std_logic;
SIGNAL \X[14]~116_combout\ : std_logic;
SIGNAL \X[14]~122_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \X[13]~123_combout\ : std_logic;
SIGNAL \comb~14_combout\ : std_logic;
SIGNAL \comb~15_combout\ : std_logic;
SIGNAL \X[12]~124_combout\ : std_logic;
SIGNAL \comb~17_combout\ : std_logic;
SIGNAL \comb~16_combout\ : std_logic;
SIGNAL \comb~41_combout\ : std_logic;
SIGNAL \X[10]~128_combout\ : std_logic;
SIGNAL \X[10]~125_combout\ : std_logic;
SIGNAL \X[10]~126_combout\ : std_logic;
SIGNAL \X[10]~127_combout\ : std_logic;
SIGNAL \comb~19_combout\ : std_logic;
SIGNAL \comb~18_combout\ : std_logic;
SIGNAL \X[9]~129_combout\ : std_logic;
SIGNAL \X[9]~130_combout\ : std_logic;
SIGNAL \comb~21_combout\ : std_logic;
SIGNAL \comb~20_combout\ : std_logic;
SIGNAL \X[8]~131_combout\ : std_logic;
SIGNAL \X[8]~132_combout\ : std_logic;
SIGNAL \X[8]~133_combout\ : std_logic;
SIGNAL \X[8]~134_combout\ : std_logic;
SIGNAL \X[8]~135_combout\ : std_logic;
SIGNAL \comb~23_combout\ : std_logic;
SIGNAL \comb~22_combout\ : std_logic;
SIGNAL \X[7]~137_combout\ : std_logic;
SIGNAL \comb~25_combout\ : std_logic;
SIGNAL \comb~24_combout\ : std_logic;
SIGNAL \X[6]~140_combout\ : std_logic;
SIGNAL \X[6]~138_combout\ : std_logic;
SIGNAL \X[6]~139_combout\ : std_logic;
SIGNAL \comb~27_combout\ : std_logic;
SIGNAL \comb~26_combout\ : std_logic;
SIGNAL \X[5]~161_combout\ : std_logic;
SIGNAL \X[5]~162_combout\ : std_logic;
SIGNAL \X[5]~17_combout\ : std_logic;
SIGNAL \X[5]~153_combout\ : std_logic;
SIGNAL \comb~29_combout\ : std_logic;
SIGNAL \comb~28_combout\ : std_logic;
SIGNAL \comb~30_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \comb~31_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \X[2]~142_combout\ : std_logic;
SIGNAL \X[2]~143_combout\ : std_logic;
SIGNAL \X[2]~144_combout\ : std_logic;
SIGNAL \X[2]~141_combout\ : std_logic;
SIGNAL \X[2]~152_combout\ : std_logic;
SIGNAL \X[2]~145_combout\ : std_logic;
SIGNAL \comb~32_combout\ : std_logic;
SIGNAL \comb~33_combout\ : std_logic;
SIGNAL \RW~0_combout\ : std_logic;
SIGNAL \X[1]~146_combout\ : std_logic;
SIGNAL \X[1]~147_combout\ : std_logic;
SIGNAL \comb~35_combout\ : std_logic;
SIGNAL \comb~34_combout\ : std_logic;
SIGNAL \comb~36_combout\ : std_logic;
SIGNAL \RW~1_combout\ : std_logic;
SIGNAL \RW~2_combout\ : std_logic;
SIGNAL \comb~38_combout\ : std_logic;
SIGNAL \comb~37_combout\ : std_logic;
SIGNAL \RW$latch~combout\ : std_logic;
SIGNAL X : std_logic_vector(0 TO 19);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_C <= C;
ww_Z <= Z;
ww_q <= q;
ww_T <= T;
Xout <= ww_Xout;
RW <= ww_RW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N16
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

-- Location: IOOBUF_X49_Y54_N30
\Xout[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(19),
	devoe => ww_devoe,
	o => \Xout[19]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Xout[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Xout[18]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\Xout[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(17),
	devoe => ww_devoe,
	o => \Xout[17]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Xout[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(16),
	devoe => ww_devoe,
	o => \Xout[16]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Xout[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(15),
	devoe => ww_devoe,
	o => \Xout[15]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Xout[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(14),
	devoe => ww_devoe,
	o => \Xout[14]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\Xout[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(13),
	devoe => ww_devoe,
	o => \Xout[13]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Xout[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(12),
	devoe => ww_devoe,
	o => \Xout[12]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\Xout[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(11),
	devoe => ww_devoe,
	o => \Xout[11]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\Xout[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(10),
	devoe => ww_devoe,
	o => \Xout[10]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\Xout[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(9),
	devoe => ww_devoe,
	o => \Xout[9]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\Xout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(8),
	devoe => ww_devoe,
	o => \Xout[8]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\Xout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(7),
	devoe => ww_devoe,
	o => \Xout[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\Xout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(6),
	devoe => ww_devoe,
	o => \Xout[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\Xout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(5),
	devoe => ww_devoe,
	o => \Xout[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Xout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(4),
	devoe => ww_devoe,
	o => \Xout[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\Xout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(3),
	devoe => ww_devoe,
	o => \Xout[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\Xout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(2),
	devoe => ww_devoe,
	o => \Xout[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Xout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(1),
	devoe => ww_devoe,
	o => \Xout[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\Xout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(0),
	devoe => ww_devoe,
	o => \Xout[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\RW~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RW$latch~combout\,
	devoe => ww_devoe,
	o => \RW~output_o\);

-- Location: IOIBUF_X58_Y54_N29
\T[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(1),
	o => \T[1]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\T[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(0),
	o => \T[0]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\q[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(2),
	o => \q[2]~input_o\);

-- Location: LCCOMB_X56_Y52_N24
\X[15]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~77_combout\ = (!\T[0]~input_o\ & (\q[2]~input_o\ & \T[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \q[2]~input_o\,
	datac => \T[1]~input_o\,
	combout => \X[15]~77_combout\);

-- Location: IOIBUF_X58_Y54_N8
\T[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(3),
	o => \T[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\q[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(3),
	o => \q[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\q[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(0),
	o => \q[0]~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\T[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T(2),
	o => \T[2]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\q[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(1),
	o => \q[1]~input_o\);

-- Location: LCCOMB_X56_Y50_N10
\X[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[17]~53_combout\ = (\q[2]~input_o\ & (!\q[0]~input_o\ & (\T[2]~input_o\ & \q[1]~input_o\))) # (!\q[2]~input_o\ & (((!\T[2]~input_o\ & !\q[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datab => \q[2]~input_o\,
	datac => \T[2]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[17]~53_combout\);

-- Location: LCCOMB_X56_Y50_N4
\X[17]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[17]~51_combout\ = (\q[3]~input_o\ & \X[17]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[3]~input_o\,
	datad => \X[17]~53_combout\,
	combout => \X[17]~51_combout\);

-- Location: LCCOMB_X55_Y52_N10
\X[17]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[17]~159_combout\ = (\T[1]~input_o\ & (\T[0]~input_o\ & (!\T[3]~input_o\ & \X[17]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[1]~input_o\,
	datab => \T[0]~input_o\,
	datac => \T[3]~input_o\,
	datad => \X[17]~51_combout\,
	combout => \X[17]~159_combout\);

-- Location: LCCOMB_X55_Y52_N24
\X[19]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~150_combout\ = (\T[2]~input_o\ & (\X[17]~159_combout\)) # (!\T[2]~input_o\ & (\T[3]~input_o\ & (\X[17]~159_combout\ $ (!\q[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~159_combout\,
	datab => \q[3]~input_o\,
	datac => \T[3]~input_o\,
	datad => \T[2]~input_o\,
	combout => \X[19]~150_combout\);

-- Location: LCCOMB_X56_Y49_N8
\X[5]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[5]~78_combout\ = (\q[0]~input_o\ & \q[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[5]~78_combout\);

-- Location: LCCOMB_X55_Y52_N16
\X[19]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~75_combout\ = (\X[17]~159_combout\ & (!\q[0]~input_o\ & (\T[0]~input_o\ & \q[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~159_combout\,
	datab => \q[0]~input_o\,
	datac => \T[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[19]~75_combout\);

-- Location: LCCOMB_X55_Y52_N28
\X[19]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~79_combout\ = (\X[19]~75_combout\) # ((\X[15]~77_combout\ & (\X[19]~150_combout\ & !\X[5]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[15]~77_combout\,
	datab => \X[19]~150_combout\,
	datac => \X[5]~78_combout\,
	datad => \X[19]~75_combout\,
	combout => \X[19]~79_combout\);

-- Location: LCCOMB_X55_Y52_N30
\X[19]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~87_combout\ = (\X[17]~159_combout\ & ((\q[2]~input_o\) # (\T[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~159_combout\,
	datac => \q[2]~input_o\,
	datad => \T[2]~input_o\,
	combout => \X[19]~87_combout\);

-- Location: LCCOMB_X55_Y51_N12
\X[12]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[12]~84_combout\ = (!\T[3]~input_o\ & (\q[2]~input_o\ & \T[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T[3]~input_o\,
	datac => \q[2]~input_o\,
	datad => \T[0]~input_o\,
	combout => \X[12]~84_combout\);

-- Location: LCCOMB_X55_Y52_N26
\X[19]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~85_combout\ = (\X[12]~84_combout\ & (!\T[2]~input_o\ & (\X[17]~159_combout\ $ (!\q[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~159_combout\,
	datab => \X[12]~84_combout\,
	datac => \q[3]~input_o\,
	datad => \T[2]~input_o\,
	combout => \X[19]~85_combout\);

-- Location: LCCOMB_X55_Y52_N2
\X[14]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~76_combout\ = (!\T[2]~input_o\ & \T[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[2]~input_o\,
	datac => \T[3]~input_o\,
	combout => \X[14]~76_combout\);

-- Location: LCCOMB_X55_Y52_N12
\X[19]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~86_combout\ = (!\q[2]~input_o\ & (\X[14]~76_combout\ & (\X[17]~159_combout\ $ (!\q[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~159_combout\,
	datab => \q[3]~input_o\,
	datac => \q[2]~input_o\,
	datad => \X[14]~76_combout\,
	combout => \X[19]~86_combout\);

-- Location: LCCOMB_X55_Y52_N8
\X[19]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~88_combout\ = (\X[19]~85_combout\) # ((!\T[0]~input_o\ & ((\X[19]~87_combout\) # (\X[19]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[19]~87_combout\,
	datab => \T[0]~input_o\,
	datac => \X[19]~85_combout\,
	datad => \X[19]~86_combout\,
	combout => \X[19]~88_combout\);

-- Location: LCCOMB_X55_Y52_N14
\X[14]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~80_combout\ = (\T[1]~input_o\ & \T[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[1]~input_o\,
	datac => \T[0]~input_o\,
	combout => \X[14]~80_combout\);

-- Location: LCCOMB_X56_Y52_N18
\X[16]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[16]~81_combout\ = (!\T[1]~input_o\ & (!\T[3]~input_o\ & (\T[0]~input_o\ & !\q[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[1]~input_o\,
	datab => \T[3]~input_o\,
	datac => \T[0]~input_o\,
	datad => \q[2]~input_o\,
	combout => \X[16]~81_combout\);

-- Location: LCCOMB_X56_Y52_N12
\X[16]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[16]~82_combout\ = (\X[16]~81_combout\ & \T[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[16]~81_combout\,
	datac => \T[2]~input_o\,
	combout => \X[16]~82_combout\);

-- Location: LCCOMB_X55_Y52_N0
\X[19]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~83_combout\ = (\X[17]~159_combout\ & ((\X[14]~80_combout\) # ((\X[16]~82_combout\ & \q[3]~input_o\)))) # (!\X[17]~159_combout\ & (((\X[16]~82_combout\ & !\q[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~159_combout\,
	datab => \X[14]~80_combout\,
	datac => \X[16]~82_combout\,
	datad => \q[3]~input_o\,
	combout => \X[19]~83_combout\);

-- Location: LCCOMB_X55_Y52_N4
\X[19]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~163_combout\ = (\q[1]~input_o\ & (\X[19]~88_combout\ & ((\q[0]~input_o\)))) # (!\q[1]~input_o\ & (((\X[19]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[19]~88_combout\,
	datab => \X[19]~83_combout\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[19]~163_combout\);

-- Location: LCCOMB_X55_Y52_N22
\X[19]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[19]~164_combout\ = (\X[19]~79_combout\) # ((\X[19]~163_combout\ & ((\T[1]~input_o\) # (!\q[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[1]~input_o\,
	datab => \X[19]~79_combout\,
	datac => \X[19]~163_combout\,
	datad => \q[1]~input_o\,
	combout => \X[19]~164_combout\);

-- Location: LCCOMB_X56_Y50_N0
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\q[2]~input_o\ & (\q[3]~input_o\ & (!\q[0]~input_o\ & \q[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \q[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X56_Y53_N8
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\T[0]~input_o\ & (!\T[3]~input_o\ & (\T[2]~input_o\ & \T[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \T[3]~input_o\,
	datac => \T[2]~input_o\,
	datad => \T[1]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X56_Y51_N0
\process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\Equal4~1_combout\ & \Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \Equal0~3_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X56_Y49_N18
\X[7]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[7]~136_combout\ = (\q[2]~input_o\ & (!\q[3]~input_o\ & ((!\q[1]~input_o\) # (!\q[0]~input_o\)))) # (!\q[2]~input_o\ & (\q[1]~input_o\ & (\q[3]~input_o\ $ (\q[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \q[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[7]~136_combout\);

-- Location: LCCOMB_X57_Y51_N8
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\T[3]~input_o\ & (!\T[2]~input_o\ & (!\T[0]~input_o\ & \T[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \T[2]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X57_Y51_N18
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\T[3]~input_o\ & (!\T[2]~input_o\ & (\T[0]~input_o\ & \T[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \T[2]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X57_Y51_N14
\X[0]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~166_combout\ = (\X[7]~136_combout\ & ((\Equal0~0_combout\) # (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[7]~136_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \X[0]~166_combout\);

-- Location: LCCOMB_X56_Y50_N24
\X[0]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~155_combout\ = (\q[2]~input_o\ & (\q[3]~input_o\ & (\q[0]~input_o\ $ (\q[1]~input_o\)))) # (!\q[2]~input_o\ & (!\q[3]~input_o\ & ((!\q[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \q[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[0]~155_combout\);

-- Location: LCCOMB_X57_Y51_N2
\X[0]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~156_combout\ = (\T[3]~input_o\) # ((\T[2]~input_o\ & ((\T[0]~input_o\) # (\T[1]~input_o\))) # (!\T[2]~input_o\ & ((!\T[1]~input_o\) # (!\T[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \T[2]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[0]~156_combout\);

-- Location: LCCOMB_X56_Y50_N22
\X[0]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~154_combout\ = (\q[3]~input_o\ & (!\q[2]~input_o\ & ((!\q[1]~input_o\)))) # (!\q[3]~input_o\ & (\q[1]~input_o\ & (\q[2]~input_o\ $ (!\q[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \q[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[0]~154_combout\);

-- Location: LCCOMB_X57_Y51_N12
\X[0]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~157_combout\ = (\T[3]~input_o\) # (\T[2]~input_o\ $ (((!\T[1]~input_o\) # (!\T[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \T[2]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[0]~157_combout\);

-- Location: LCCOMB_X57_Y51_N4
\X[0]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~63_combout\ = (\X[0]~155_combout\ & (((!\X[0]~156_combout\ & \X[0]~154_combout\)) # (!\X[0]~157_combout\))) # (!\X[0]~155_combout\ & (!\X[0]~156_combout\ & (\X[0]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~155_combout\,
	datab => \X[0]~156_combout\,
	datac => \X[0]~154_combout\,
	datad => \X[0]~157_combout\,
	combout => \X[0]~63_combout\);

-- Location: LCCOMB_X55_Y51_N16
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\T[1]~input_o\ & (!\T[3]~input_o\ & (\T[2]~input_o\ & \T[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[1]~input_o\,
	datab => \T[3]~input_o\,
	datac => \T[2]~input_o\,
	datad => \T[0]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X55_Y51_N10
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\q[3]~input_o\ & (!\q[2]~input_o\ & (!\q[0]~input_o\ & \q[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~input_o\,
	datab => \q[2]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X55_Y51_N20
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\Equal0~2_combout\ & \Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X57_Y51_N6
\X[0]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~64_combout\ = (\process_0~1_combout\) # ((\X[0]~166_combout\) # ((\X[0]~63_combout\) # (\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \X[0]~166_combout\,
	datac => \X[0]~63_combout\,
	datad => \process_0~0_combout\,
	combout => \X[0]~64_combout\);

-- Location: LCCOMB_X56_Y53_N18
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\T[0]~input_o\ & (\T[3]~input_o\ & (!\T[2]~input_o\ & !\T[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \T[3]~input_o\,
	datac => \T[2]~input_o\,
	datad => \T[1]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X57_Y51_N0
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\T[3]~input_o\ & (!\T[2]~input_o\ & (!\T[0]~input_o\ & !\T[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \T[2]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X57_Y51_N24
\X[0]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~149_combout\ = ((\Equal0~3_combout\) # ((\Equal0~5_combout\) # (\Equal0~4_combout\))) # (!\X[0]~157_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~157_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \X[0]~149_combout\);

-- Location: LCCOMB_X55_Y51_N26
\X[0]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~158_combout\ = (\q[1]~input_o\ & (\q[2]~input_o\ $ (((\q[3]~input_o\) # (\q[0]~input_o\))))) # (!\q[1]~input_o\ & (\q[2]~input_o\ & ((!\q[0]~input_o\) # (!\q[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~input_o\,
	datab => \q[2]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[0]~158_combout\);

-- Location: LCCOMB_X57_Y51_N22
\X[0]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~148_combout\ = (\Equal0~4_combout\) # ((\Equal0~0_combout\) # ((\T[3]~input_o\ & \T[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~0_combout\,
	datad => \T[2]~input_o\,
	combout => \X[0]~148_combout\);

-- Location: LCCOMB_X56_Y51_N12
\X[0]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~67_combout\ = (\Equal4~1_combout\ & \X[0]~148_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datad => \X[0]~148_combout\,
	combout => \X[0]~67_combout\);

-- Location: LCCOMB_X56_Y50_N26
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\q[2]~input_o\ & (\q[3]~input_o\ & (\q[0]~input_o\ & !\q[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \q[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \Equal4~2_combout\);

-- Location: IOIBUF_X60_Y54_N22
\Z~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X57_Y51_N20
\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\Equal4~2_combout\ & (\Equal0~4_combout\ & \Z~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \Equal0~4_combout\,
	datac => \Z~input_o\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X57_Y51_N30
\X[0]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~71_combout\ = (\T[2]~input_o\) # ((\T[3]~input_o\) # (\T[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T[2]~input_o\,
	datac => \T[3]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[0]~71_combout\);

-- Location: LCCOMB_X58_Y51_N24
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\T[2]~input_o\ & (!\T[3]~input_o\ & (\T[1]~input_o\ & !\T[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[2]~input_o\,
	datab => \T[3]~input_o\,
	datac => \T[1]~input_o\,
	datad => \T[0]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X58_Y51_N18
\X[0]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~70_combout\ = (\Equal0~6_combout\) # ((\Equal4~1_combout\ & ((\Equal0~5_combout\) # (\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal4~1_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~6_combout\,
	combout => \X[0]~70_combout\);

-- Location: LCCOMB_X57_Y51_N16
\X[0]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~72_combout\ = (!\process_0~2_combout\ & (\X[0]~71_combout\ & !\X[0]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~2_combout\,
	datac => \X[0]~71_combout\,
	datad => \X[0]~70_combout\,
	combout => \X[0]~72_combout\);

-- Location: LCCOMB_X56_Y51_N18
\X[0]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~65_combout\ = (!\Equal0~3_combout\ & !\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datac => \Equal0~5_combout\,
	combout => \X[0]~65_combout\);

-- Location: LCCOMB_X57_Y51_N26
\X[0]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~66_combout\ = (\Equal4~2_combout\ & (((\Equal0~4_combout\ & !\Z~input_o\)) # (!\X[0]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \Equal0~4_combout\,
	datac => \Z~input_o\,
	datad => \X[0]~65_combout\,
	combout => \X[0]~66_combout\);

-- Location: LCCOMB_X55_Y51_N14
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (\q[3]~input_o\ & (\q[2]~input_o\ & (\q[0]~input_o\ & \q[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~input_o\,
	datab => \q[2]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X55_Y51_N24
\X[0]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~68_combout\ = (\T[1]~input_o\ & ((\T[0]~input_o\ & ((\Equal4~3_combout\))) # (!\T[0]~input_o\ & (\T[2]~input_o\)))) # (!\T[1]~input_o\ & (\T[2]~input_o\ & (\Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[2]~input_o\,
	datab => \T[1]~input_o\,
	datac => \Equal4~3_combout\,
	datad => \T[0]~input_o\,
	combout => \X[0]~68_combout\);

-- Location: LCCOMB_X55_Y51_N2
\X[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~69_combout\ = (\Equal4~3_combout\ & ((\T[3]~input_o\ $ (\X[0]~68_combout\)))) # (!\Equal4~3_combout\ & (\Equal4~0_combout\ & (!\T[3]~input_o\ & \X[0]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal4~3_combout\,
	datac => \T[3]~input_o\,
	datad => \X[0]~68_combout\,
	combout => \X[0]~69_combout\);

-- Location: LCCOMB_X57_Y51_N10
\X[0]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~73_combout\ = (\X[0]~67_combout\) # (((\X[0]~66_combout\) # (\X[0]~69_combout\)) # (!\X[0]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~67_combout\,
	datab => \X[0]~72_combout\,
	datac => \X[0]~66_combout\,
	datad => \X[0]~69_combout\,
	combout => \X[0]~73_combout\);

-- Location: LCCOMB_X57_Y51_N28
\X[0]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~74_combout\ = (\X[0]~64_combout\) # ((\X[0]~73_combout\) # ((\X[0]~149_combout\ & \X[0]~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~64_combout\,
	datab => \X[0]~149_combout\,
	datac => \X[0]~158_combout\,
	datad => \X[0]~73_combout\,
	combout => \X[0]~74_combout\);

-- Location: LCCOMB_X54_Y50_N24
\comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\X[19]~164_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[19]~164_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X54_Y50_N2
\comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\X[19]~164_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[19]~164_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X54_Y50_N20
\X[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(19) = (!\comb~6_combout\ & ((\comb~7_combout\) # (X(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~6_combout\,
	datac => \comb~7_combout\,
	datad => X(19),
	combout => X(19));

-- Location: LCCOMB_X55_Y52_N18
\X[17]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[17]~89_combout\ = (!\T[0]~input_o\ & ((\X[19]~87_combout\) # (\X[19]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[19]~87_combout\,
	datac => \T[0]~input_o\,
	datad => \X[19]~86_combout\,
	combout => \X[17]~89_combout\);

-- Location: LCCOMB_X55_Y52_N20
\X[17]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[17]~90_combout\ = (\q[0]~input_o\ & (((\T[1]~input_o\ & \X[17]~89_combout\)))) # (!\q[0]~input_o\ & (\X[17]~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~159_combout\,
	datab => \q[0]~input_o\,
	datac => \T[1]~input_o\,
	datad => \X[17]~89_combout\,
	combout => \X[17]~90_combout\);

-- Location: LCCOMB_X56_Y51_N10
\comb~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~40_combout\ = (\X[0]~74_combout\ & ((\q[1]~input_o\ & ((\X[17]~90_combout\))) # (!\q[1]~input_o\ & (\X[19]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[19]~83_combout\,
	datab => \q[1]~input_o\,
	datac => \X[0]~74_combout\,
	datad => \X[17]~90_combout\,
	combout => \comb~40_combout\);

-- Location: LCCOMB_X56_Y51_N24
\comb~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~39_combout\ = (\X[0]~74_combout\ & ((\q[1]~input_o\ & ((!\X[17]~90_combout\))) # (!\q[1]~input_o\ & (!\X[19]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[19]~83_combout\,
	datab => \q[1]~input_o\,
	datac => \X[0]~74_combout\,
	datad => \X[17]~90_combout\,
	combout => \comb~39_combout\);

-- Location: LCCOMB_X56_Y51_N28
\X[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(17) = (!\comb~39_combout\ & ((\comb~40_combout\) # (X(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~40_combout\,
	datab => \comb~39_combout\,
	datad => X(17),
	combout => X(17));

-- Location: LCCOMB_X56_Y52_N8
\X[16]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[16]~96_combout\ = \q[3]~input_o\ $ (((\Equal4~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[3]~input_o\,
	datac => \Equal4~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \X[16]~96_combout\);

-- Location: LCCOMB_X56_Y52_N14
\X[15]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~95_combout\ = (\X[14]~80_combout\ & (\Equal0~3_combout\ & (\Equal4~1_combout\ & \q[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[14]~80_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal4~1_combout\,
	datad => \q[2]~input_o\,
	combout => \X[15]~95_combout\);

-- Location: LCCOMB_X56_Y52_N10
\X[15]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~97_combout\ = (\X[15]~95_combout\) # ((\X[14]~76_combout\ & (!\X[16]~96_combout\ & \X[15]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[14]~76_combout\,
	datab => \X[16]~96_combout\,
	datac => \X[15]~95_combout\,
	datad => \X[15]~77_combout\,
	combout => \X[15]~97_combout\);

-- Location: LCCOMB_X56_Y52_N26
\X[15]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~93_combout\ = (!\T[2]~input_o\ & (\q[3]~input_o\ $ (((!\Equal0~3_combout\) # (!\Equal4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \q[3]~input_o\,
	datac => \T[2]~input_o\,
	datad => \Equal0~3_combout\,
	combout => \X[15]~93_combout\);

-- Location: LCCOMB_X56_Y52_N16
\X[15]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~92_combout\ = (\T[0]~input_o\ & (\q[2]~input_o\ & !\T[3]~input_o\)) # (!\T[0]~input_o\ & (!\q[2]~input_o\ & \T[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \q[2]~input_o\,
	datac => \T[3]~input_o\,
	combout => \X[15]~92_combout\);

-- Location: LCCOMB_X56_Y52_N22
\X[15]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~91_combout\ = (\T[0]~input_o\ & (\process_0~1_combout\ & ((\T[2]~input_o\) # (!\q[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \q[2]~input_o\,
	datac => \T[2]~input_o\,
	datad => \process_0~1_combout\,
	combout => \X[15]~91_combout\);

-- Location: LCCOMB_X56_Y52_N28
\X[15]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~94_combout\ = (\T[1]~input_o\ & ((\X[15]~91_combout\) # ((\X[15]~93_combout\ & \X[15]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[15]~93_combout\,
	datab => \X[15]~92_combout\,
	datac => \T[1]~input_o\,
	datad => \X[15]~91_combout\,
	combout => \X[15]~94_combout\);

-- Location: LCCOMB_X56_Y52_N20
\X[16]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[16]~98_combout\ = (\q[1]~input_o\ & ((\q[0]~input_o\ & ((\X[15]~94_combout\))) # (!\q[0]~input_o\ & (\X[15]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[15]~97_combout\,
	datab => \q[0]~input_o\,
	datac => \q[1]~input_o\,
	datad => \X[15]~94_combout\,
	combout => \X[16]~98_combout\);

-- Location: LCCOMB_X56_Y52_N6
\X[16]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[16]~99_combout\ = (\X[16]~98_combout\) # ((\X[16]~82_combout\ & (!\X[16]~96_combout\ & !\q[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[16]~82_combout\,
	datab => \X[16]~96_combout\,
	datac => \q[1]~input_o\,
	datad => \X[16]~98_combout\,
	combout => \X[16]~99_combout\);

-- Location: LCCOMB_X56_Y53_N12
\comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\X[16]~99_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[16]~99_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X56_Y53_N22
\comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\X[16]~99_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[16]~99_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X56_Y53_N2
\X[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(16) = (!\comb~8_combout\ & ((\comb~9_combout\) # (X(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datac => \comb~9_combout\,
	datad => X(16),
	combout => X(16));

-- Location: LCCOMB_X56_Y52_N0
\X[15]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~100_combout\ = (\T[1]~input_o\ & (((!\T[2]~input_o\ & \q[3]~input_o\)))) # (!\T[1]~input_o\ & (\T[2]~input_o\ & (\process_0~1_combout\ $ (!\q[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[1]~input_o\,
	datab => \process_0~1_combout\,
	datac => \T[2]~input_o\,
	datad => \q[3]~input_o\,
	combout => \X[15]~100_combout\);

-- Location: LCCOMB_X56_Y52_N2
\X[15]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~101_combout\ = (\T[0]~input_o\ & (!\q[2]~input_o\ & (!\T[3]~input_o\ & \X[15]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \q[2]~input_o\,
	datac => \T[3]~input_o\,
	datad => \X[15]~100_combout\,
	combout => \X[15]~101_combout\);

-- Location: LCCOMB_X56_Y52_N4
\X[15]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~102_combout\ = (\q[0]~input_o\ & ((\X[15]~97_combout\) # ((\q[1]~input_o\)))) # (!\q[0]~input_o\ & (((!\q[1]~input_o\ & \X[15]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[15]~97_combout\,
	datab => \q[0]~input_o\,
	datac => \q[1]~input_o\,
	datad => \X[15]~101_combout\,
	combout => \X[15]~102_combout\);

-- Location: LCCOMB_X56_Y52_N30
\X[15]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[15]~103_combout\ = (\q[1]~input_o\ & ((\X[15]~102_combout\ & (\X[15]~94_combout\)) # (!\X[15]~102_combout\ & ((\process_0~1_combout\))))) # (!\q[1]~input_o\ & (((\X[15]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~input_o\,
	datab => \X[15]~94_combout\,
	datac => \X[15]~102_combout\,
	datad => \process_0~1_combout\,
	combout => \X[15]~103_combout\);

-- Location: LCCOMB_X54_Y50_N22
\comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\X[15]~103_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[15]~103_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~11_combout\);

-- Location: LCCOMB_X54_Y50_N12
\comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (!\X[15]~103_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[15]~103_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~10_combout\);

-- Location: LCCOMB_X54_Y50_N30
\X[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(15) = (!\comb~10_combout\ & ((\comb~11_combout\) # (X(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~11_combout\,
	datac => X(15),
	datad => \comb~10_combout\,
	combout => X(15));

-- Location: LCCOMB_X55_Y49_N10
\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\Equal4~3_combout\ & \Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datad => \Equal0~5_combout\,
	combout => \process_0~3_combout\);

-- Location: IOIBUF_X60_Y54_N15
\C~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X56_Y50_N28
\X[14]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~108_combout\ = (!\T[0]~input_o\ & ((\q[0]~input_o\ & ((\Z~input_o\))) # (!\q[0]~input_o\ & (\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \C~input_o\,
	datac => \q[0]~input_o\,
	datad => \Z~input_o\,
	combout => \X[14]~108_combout\);

-- Location: LCCOMB_X56_Y50_N8
\X[14]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~151_combout\ = (\q[3]~input_o\ & (((!\X[14]~108_combout\ & !\T[1]~input_o\)))) # (!\q[3]~input_o\ & (\T[0]~input_o\ & ((\T[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \X[14]~108_combout\,
	datac => \q[3]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[14]~151_combout\);

-- Location: LCCOMB_X56_Y50_N30
\X[14]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~109_combout\ = (\X[14]~151_combout\) # ((!\process_0~3_combout\ & (\q[3]~input_o\ & \T[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \X[14]~151_combout\,
	datac => \q[3]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[14]~109_combout\);

-- Location: LCCOMB_X55_Y49_N26
\X[14]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~110_combout\ = (\q[1]~input_o\ & (((\q[2]~input_o\)))) # (!\q[1]~input_o\ & ((\q[2]~input_o\ & ((\X[14]~109_combout\))) # (!\q[2]~input_o\ & (!\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \X[14]~109_combout\,
	datac => \q[1]~input_o\,
	datad => \q[2]~input_o\,
	combout => \X[14]~110_combout\);

-- Location: LCCOMB_X55_Y49_N24
\X[14]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~104_combout\ = \q[0]~input_o\ $ (\q[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~input_o\,
	datad => \q[3]~input_o\,
	combout => \X[14]~104_combout\);

-- Location: LCCOMB_X55_Y49_N20
\X[14]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~105_combout\ = (\q[0]~input_o\) # ((\Equal4~3_combout\ & (\Equal0~5_combout\ & !\q[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal0~5_combout\,
	datac => \q[3]~input_o\,
	datad => \q[0]~input_o\,
	combout => \X[14]~105_combout\);

-- Location: LCCOMB_X55_Y49_N22
\X[14]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~106_combout\ = (\T[1]~input_o\ & (((\T[0]~input_o\)))) # (!\T[1]~input_o\ & ((\q[3]~input_o\ & (\X[14]~105_combout\ & \T[0]~input_o\)) # (!\q[3]~input_o\ & (!\X[14]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~input_o\,
	datab => \T[1]~input_o\,
	datac => \X[14]~105_combout\,
	datad => \T[0]~input_o\,
	combout => \X[14]~106_combout\);

-- Location: LCCOMB_X55_Y49_N0
\X[14]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~107_combout\ = (\X[14]~104_combout\ & (((\X[14]~106_combout\)))) # (!\X[14]~104_combout\ & ((\T[1]~input_o\ & (!\process_0~3_combout\)) # (!\T[1]~input_o\ & ((\X[14]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \X[14]~104_combout\,
	datac => \X[14]~106_combout\,
	datad => \T[1]~input_o\,
	combout => \X[14]~107_combout\);

-- Location: LCCOMB_X56_Y49_N20
\X[14]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~112_combout\ = (\q[0]~input_o\ & (((\T[0]~input_o\) # (\T[1]~input_o\)) # (!\q[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datab => \q[3]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[14]~112_combout\);

-- Location: LCCOMB_X56_Y49_N10
\X[14]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~111_combout\ = (!\q[0]~input_o\ & !\q[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datac => \q[3]~input_o\,
	combout => \X[14]~111_combout\);

-- Location: LCCOMB_X56_Y49_N22
\X[14]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~113_combout\ = (\process_0~3_combout\ & (((\X[14]~80_combout\ & \X[14]~111_combout\)))) # (!\process_0~3_combout\ & ((\X[14]~112_combout\) # ((\X[14]~80_combout\ & \X[14]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \X[14]~112_combout\,
	datac => \X[14]~80_combout\,
	datad => \X[14]~111_combout\,
	combout => \X[14]~113_combout\);

-- Location: LCCOMB_X55_Y49_N4
\X[14]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~114_combout\ = (\X[14]~110_combout\ & (((\X[14]~113_combout\) # (!\q[1]~input_o\)))) # (!\X[14]~110_combout\ & (\X[14]~107_combout\ & (\q[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[14]~110_combout\,
	datab => \X[14]~107_combout\,
	datac => \q[1]~input_o\,
	datad => \X[14]~113_combout\,
	combout => \X[14]~114_combout\);

-- Location: LCCOMB_X56_Y51_N14
\X[14]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~120_combout\ = (\q[3]~input_o\) # (((\Equal4~3_combout\ & \Equal0~5_combout\)) # (!\X[5]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \q[3]~input_o\,
	datac => \Equal0~5_combout\,
	datad => \X[5]~78_combout\,
	combout => \X[14]~120_combout\);

-- Location: LCCOMB_X56_Y49_N28
\X[14]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~117_combout\ = (!\q[3]~input_o\ & (\X[5]~78_combout\ & ((!\T[0]~input_o\) # (!\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \q[3]~input_o\,
	datac => \T[0]~input_o\,
	datad => \X[5]~78_combout\,
	combout => \X[14]~117_combout\);

-- Location: LCCOMB_X56_Y49_N30
\X[14]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~118_combout\ = (\q[3]~input_o\ & (!\q[1]~input_o\ & ((!\T[0]~input_o\) # (!\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \q[3]~input_o\,
	datac => \T[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[14]~118_combout\);

-- Location: LCCOMB_X56_Y49_N24
\X[14]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~119_combout\ = (\q[2]~input_o\ & ((\X[14]~117_combout\) # ((\T[1]~input_o\)))) # (!\q[2]~input_o\ & (((\X[14]~118_combout\ & !\T[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \X[14]~117_combout\,
	datac => \X[14]~118_combout\,
	datad => \T[1]~input_o\,
	combout => \X[14]~119_combout\);

-- Location: LCCOMB_X56_Y49_N14
\X[14]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~160_combout\ = ((!\q[0]~input_o\ & !\q[3]~input_o\)) # (!\q[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datac => \q[3]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[14]~160_combout\);

-- Location: LCCOMB_X56_Y49_N2
\X[14]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~121_combout\ = (\X[14]~119_combout\ & (((!\T[1]~input_o\)) # (!\X[14]~120_combout\))) # (!\X[14]~119_combout\ & (((\X[14]~160_combout\ & \T[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[14]~120_combout\,
	datab => \X[14]~119_combout\,
	datac => \X[14]~160_combout\,
	datad => \T[1]~input_o\,
	combout => \X[14]~121_combout\);

-- Location: LCCOMB_X56_Y49_N0
\X[10]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[10]~115_combout\ = (\q[2]~input_o\ & (\q[3]~input_o\ & \q[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datac => \q[3]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[10]~115_combout\);

-- Location: LCCOMB_X56_Y49_N26
\X[14]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~116_combout\ = (\q[0]~input_o\ & (!\process_0~3_combout\)) # (!\q[0]~input_o\ & ((\X[10]~115_combout\ & ((\X[14]~80_combout\))) # (!\X[10]~115_combout\ & (!\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \X[14]~80_combout\,
	datac => \q[0]~input_o\,
	datad => \X[10]~115_combout\,
	combout => \X[14]~116_combout\);

-- Location: LCCOMB_X56_Y49_N4
\X[14]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[14]~122_combout\ = (\T[2]~input_o\ & ((\T[3]~input_o\ & ((\X[14]~116_combout\))) # (!\T[3]~input_o\ & (\X[14]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[2]~input_o\,
	datab => \X[14]~121_combout\,
	datac => \X[14]~116_combout\,
	datad => \T[3]~input_o\,
	combout => \X[14]~122_combout\);

-- Location: LCCOMB_X55_Y49_N6
\comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\X[0]~74_combout\ & (!\X[14]~122_combout\ & ((!\X[14]~76_combout\) # (!\X[14]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~74_combout\,
	datab => \X[14]~114_combout\,
	datac => \X[14]~76_combout\,
	datad => \X[14]~122_combout\,
	combout => \comb~12_combout\);

-- Location: LCCOMB_X55_Y49_N8
\comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (\X[0]~74_combout\ & ((\X[14]~122_combout\) # ((\X[14]~114_combout\ & \X[14]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~74_combout\,
	datab => \X[14]~114_combout\,
	datac => \X[14]~76_combout\,
	datad => \X[14]~122_combout\,
	combout => \comb~13_combout\);

-- Location: LCCOMB_X55_Y49_N28
\X[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(14) = (!\comb~12_combout\ & ((\comb~13_combout\) # (X(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~12_combout\,
	datac => \comb~13_combout\,
	datad => X(14),
	combout => X(14));

-- Location: LCCOMB_X55_Y50_N24
\X[13]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[13]~123_combout\ = (!\q[0]~input_o\ & ((\T[2]~input_o\ & (\T[0]~input_o\ & !\T[1]~input_o\)) # (!\T[2]~input_o\ & (!\T[0]~input_o\ & \T[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datab => \T[2]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[13]~123_combout\);

-- Location: LCCOMB_X55_Y50_N18
\comb~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~14_combout\ = (\X[0]~74_combout\ & (((!\X[10]~115_combout\) # (!\X[13]~123_combout\)) # (!\T[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \X[13]~123_combout\,
	datac => \X[0]~74_combout\,
	datad => \X[10]~115_combout\,
	combout => \comb~14_combout\);

-- Location: LCCOMB_X55_Y50_N20
\comb~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~15_combout\ = (\T[3]~input_o\ & (\X[13]~123_combout\ & (\X[0]~74_combout\ & \X[10]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \X[13]~123_combout\,
	datac => \X[0]~74_combout\,
	datad => \X[10]~115_combout\,
	combout => \comb~15_combout\);

-- Location: LCCOMB_X55_Y50_N28
\X[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(13) = (!\comb~14_combout\ & ((\comb~15_combout\) # (X(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~14_combout\,
	datab => \comb~15_combout\,
	datad => X(13),
	combout => X(13));

-- Location: LCCOMB_X55_Y51_N22
\X[12]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[12]~124_combout\ = (\q[1]~input_o\ & (\q[0]~input_o\ & (\T[2]~input_o\ $ (\T[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[2]~input_o\,
	datab => \q[1]~input_o\,
	datac => \q[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[12]~124_combout\);

-- Location: LCCOMB_X55_Y51_N18
\comb~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~17_combout\ = (\q[3]~input_o\ & (\X[0]~74_combout\ & (\X[12]~124_combout\ & \X[12]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~input_o\,
	datab => \X[0]~74_combout\,
	datac => \X[12]~124_combout\,
	datad => \X[12]~84_combout\,
	combout => \comb~17_combout\);

-- Location: LCCOMB_X55_Y51_N8
\comb~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~16_combout\ = (\X[0]~74_combout\ & (((!\X[12]~84_combout\) # (!\X[12]~124_combout\)) # (!\q[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~input_o\,
	datab => \X[0]~74_combout\,
	datac => \X[12]~124_combout\,
	datad => \X[12]~84_combout\,
	combout => \comb~16_combout\);

-- Location: LCCOMB_X55_Y51_N28
\X[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(12) = (!\comb~16_combout\ & ((\comb~17_combout\) # (X(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~17_combout\,
	datac => \comb~16_combout\,
	datad => X(12),
	combout => X(12));

-- Location: LCCOMB_X55_Y51_N0
\comb~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~41_combout\ = (\X[0]~74_combout\ & ((!\Equal0~2_combout\) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal0~2_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~41_combout\);

-- Location: LCCOMB_X55_Y51_N30
\X[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(11) = (!\comb~41_combout\ & ((X(11)) # (\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~41_combout\,
	datac => X(11),
	datad => \process_0~0_combout\,
	combout => X(11));

-- Location: LCCOMB_X58_Y51_N6
\X[10]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[10]~128_combout\ = (\T[2]~input_o\ & !\T[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T[2]~input_o\,
	datad => \T[3]~input_o\,
	combout => \X[10]~128_combout\);

-- Location: LCCOMB_X55_Y51_N4
\X[10]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[10]~125_combout\ = (\q[2]~input_o\ & (((!\q[1]~input_o\) # (!\q[0]~input_o\)))) # (!\q[2]~input_o\ & (\q[1]~input_o\ & ((\q[3]~input_o\) # (\q[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~input_o\,
	datab => \q[2]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[10]~125_combout\);

-- Location: LCCOMB_X55_Y51_N6
\X[10]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[10]~126_combout\ = (\T[1]~input_o\ & (\Equal4~3_combout\)) # (!\T[1]~input_o\ & ((\X[10]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~3_combout\,
	datac => \X[10]~125_combout\,
	datad => \T[1]~input_o\,
	combout => \X[10]~126_combout\);

-- Location: LCCOMB_X58_Y51_N20
\X[10]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[10]~127_combout\ = \T[1]~input_o\ $ (\T[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T[1]~input_o\,
	datad => \T[0]~input_o\,
	combout => \X[10]~127_combout\);

-- Location: LCCOMB_X58_Y51_N10
\comb~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~19_combout\ = (\X[10]~128_combout\ & (\X[0]~74_combout\ & (\X[10]~126_combout\ & \X[10]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[10]~128_combout\,
	datab => \X[0]~74_combout\,
	datac => \X[10]~126_combout\,
	datad => \X[10]~127_combout\,
	combout => \comb~19_combout\);

-- Location: LCCOMB_X58_Y51_N8
\comb~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~18_combout\ = (\X[0]~74_combout\ & (((!\X[10]~127_combout\) # (!\X[10]~126_combout\)) # (!\X[10]~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[10]~128_combout\,
	datab => \X[0]~74_combout\,
	datac => \X[10]~126_combout\,
	datad => \X[10]~127_combout\,
	combout => \comb~18_combout\);

-- Location: LCCOMB_X58_Y51_N28
\X[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(10) = (!\comb~18_combout\ & ((\comb~19_combout\) # (X(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~19_combout\,
	datac => \comb~18_combout\,
	datad => X(10),
	combout => X(10));

-- Location: LCCOMB_X55_Y52_N6
\X[9]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[9]~129_combout\ = (\T[2]~input_o\ & (\q[0]~input_o\ & !\T[3]~input_o\)) # (!\T[2]~input_o\ & (!\q[0]~input_o\ & \T[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[2]~input_o\,
	datab => \q[0]~input_o\,
	datac => \T[3]~input_o\,
	combout => \X[9]~129_combout\);

-- Location: LCCOMB_X55_Y50_N22
\X[9]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[9]~130_combout\ = (\X[9]~129_combout\ & (\X[10]~115_combout\ & (\T[0]~input_o\ $ (!\T[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[9]~129_combout\,
	datab => \X[10]~115_combout\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[9]~130_combout\);

-- Location: LCCOMB_X54_Y50_N10
\comb~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~21_combout\ = (\X[9]~130_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[9]~130_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~21_combout\);

-- Location: LCCOMB_X54_Y50_N0
\comb~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~20_combout\ = (!\X[9]~130_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[9]~130_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~20_combout\);

-- Location: LCCOMB_X54_Y50_N16
\X[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(9) = (!\comb~20_combout\ & ((\comb~21_combout\) # (X(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~21_combout\,
	datab => \comb~20_combout\,
	datad => X(9),
	combout => X(9));

-- Location: LCCOMB_X56_Y49_N6
\X[8]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[8]~131_combout\ = \q[2]~input_o\ $ (((\q[1]~input_o\ & ((\q[3]~input_o\) # (\q[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \q[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[8]~131_combout\);

-- Location: LCCOMB_X55_Y50_N0
\X[8]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[8]~132_combout\ = (\T[0]~input_o\ & (!\q[0]~input_o\ & ((\X[10]~115_combout\)))) # (!\T[0]~input_o\ & (((\X[8]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datab => \T[0]~input_o\,
	datac => \X[8]~131_combout\,
	datad => \X[10]~115_combout\,
	combout => \X[8]~132_combout\);

-- Location: LCCOMB_X56_Y49_N16
\X[8]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[8]~133_combout\ = (\q[2]~input_o\ & (((\q[0]~input_o\ & \q[1]~input_o\)))) # (!\q[2]~input_o\ & (\q[3]~input_o\ & ((!\q[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \q[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[8]~133_combout\);

-- Location: LCCOMB_X55_Y50_N10
\X[8]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[8]~134_combout\ = (\T[0]~input_o\ & (((\X[8]~133_combout\ & !\T[2]~input_o\)) # (!\T[1]~input_o\))) # (!\T[0]~input_o\ & (((\T[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[8]~133_combout\,
	datab => \T[2]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[8]~134_combout\);

-- Location: LCCOMB_X55_Y50_N4
\X[8]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[8]~135_combout\ = (!\T[3]~input_o\ & ((\T[2]~input_o\ & (\X[8]~132_combout\ & \X[8]~134_combout\)) # (!\T[2]~input_o\ & ((!\X[8]~134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[3]~input_o\,
	datab => \X[8]~132_combout\,
	datac => \T[2]~input_o\,
	datad => \X[8]~134_combout\,
	combout => \X[8]~135_combout\);

-- Location: LCCOMB_X54_Y50_N6
\comb~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~23_combout\ = (\X[8]~135_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[8]~135_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~23_combout\);

-- Location: LCCOMB_X54_Y50_N4
\comb~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~22_combout\ = (!\X[8]~135_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[8]~135_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~22_combout\);

-- Location: LCCOMB_X54_Y50_N18
\X[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(8) = (!\comb~22_combout\ & ((\comb~23_combout\) # (X(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~23_combout\,
	datac => \comb~22_combout\,
	datad => X(8),
	combout => X(8));

-- Location: LCCOMB_X55_Y49_N2
\X[7]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[7]~137_combout\ = (\T[0]~input_o\ & (\Equal4~3_combout\)) # (!\T[0]~input_o\ & ((\X[7]~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \X[7]~136_combout\,
	datad => \T[0]~input_o\,
	combout => \X[7]~137_combout\);

-- Location: LCCOMB_X55_Y49_N14
\comb~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~25_combout\ = (\X[0]~74_combout\ & (\X[7]~137_combout\ & (\X[14]~76_combout\ & !\T[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~74_combout\,
	datab => \X[7]~137_combout\,
	datac => \X[14]~76_combout\,
	datad => \T[1]~input_o\,
	combout => \comb~25_combout\);

-- Location: LCCOMB_X55_Y49_N12
\comb~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~24_combout\ = (\X[0]~74_combout\ & (((\T[1]~input_o\) # (!\X[14]~76_combout\)) # (!\X[7]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~74_combout\,
	datab => \X[7]~137_combout\,
	datac => \X[14]~76_combout\,
	datad => \T[1]~input_o\,
	combout => \comb~24_combout\);

-- Location: LCCOMB_X55_Y49_N30
\X[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(7) = (!\comb~24_combout\ & ((\comb~25_combout\) # (X(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~25_combout\,
	datac => X(7),
	datad => \comb~24_combout\,
	combout => X(7));

-- Location: LCCOMB_X55_Y50_N26
\X[6]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[6]~140_combout\ = (!\T[1]~input_o\ & ((\T[2]~input_o\ & (!\X[8]~133_combout\ & !\T[0]~input_o\)) # (!\T[2]~input_o\ & ((\T[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[8]~133_combout\,
	datab => \T[2]~input_o\,
	datac => \T[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[6]~140_combout\);

-- Location: LCCOMB_X55_Y50_N6
\X[6]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[6]~138_combout\ = (\T[0]~input_o\ & (((\X[7]~136_combout\)))) # (!\T[0]~input_o\ & (!\q[0]~input_o\ & (\X[10]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datab => \X[10]~115_combout\,
	datac => \T[0]~input_o\,
	datad => \X[7]~136_combout\,
	combout => \X[6]~138_combout\);

-- Location: LCCOMB_X55_Y50_N16
\X[6]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[6]~139_combout\ = (\X[6]~138_combout\ & (\T[2]~input_o\ & \T[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[6]~138_combout\,
	datab => \T[2]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[6]~139_combout\);

-- Location: LCCOMB_X55_Y50_N14
\comb~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~27_combout\ = (\X[0]~74_combout\ & (!\T[3]~input_o\ & ((\X[6]~140_combout\) # (\X[6]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[6]~140_combout\,
	datab => \X[0]~74_combout\,
	datac => \T[3]~input_o\,
	datad => \X[6]~139_combout\,
	combout => \comb~27_combout\);

-- Location: LCCOMB_X55_Y50_N12
\comb~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~26_combout\ = (\X[0]~74_combout\ & ((\T[3]~input_o\) # ((!\X[6]~140_combout\ & !\X[6]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[6]~140_combout\,
	datab => \X[0]~74_combout\,
	datac => \T[3]~input_o\,
	datad => \X[6]~139_combout\,
	combout => \comb~26_combout\);

-- Location: LCCOMB_X55_Y50_N30
\X[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(6) = (!\comb~26_combout\ & ((\comb~27_combout\) # (X(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~27_combout\,
	datac => X(6),
	datad => \comb~26_combout\,
	combout => X(6));

-- Location: LCCOMB_X56_Y50_N6
\X[5]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[5]~161_combout\ = (\q[0]~input_o\ & (\q[2]~input_o\ $ (((!\Z~input_o\))))) # (!\q[0]~input_o\ & (\q[2]~input_o\ & (\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \C~input_o\,
	datac => \q[0]~input_o\,
	datad => \Z~input_o\,
	combout => \X[5]~161_combout\);

-- Location: LCCOMB_X56_Y50_N16
\X[5]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[5]~162_combout\ = (\X[5]~161_combout\ & (\q[1]~input_o\ $ (((\Z~input_o\) # (!\q[0]~input_o\))))) # (!\X[5]~161_combout\ & (\Z~input_o\ & (\q[0]~input_o\ & \q[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[5]~161_combout\,
	datab => \Z~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[5]~162_combout\);

-- Location: LCCOMB_X56_Y50_N12
\X[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[5]~17_combout\ = (!\T[0]~input_o\ & (\X[5]~162_combout\ & !\T[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \X[5]~162_combout\,
	datad => \T[1]~input_o\,
	combout => \X[5]~17_combout\);

-- Location: LCCOMB_X56_Y50_N2
\X[5]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[5]~153_combout\ = (\X[5]~17_combout\ & (\q[3]~input_o\ & (!\T[2]~input_o\ & \T[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[5]~17_combout\,
	datab => \q[3]~input_o\,
	datac => \T[2]~input_o\,
	datad => \T[3]~input_o\,
	combout => \X[5]~153_combout\);

-- Location: LCCOMB_X54_Y50_N26
\comb~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~29_combout\ = (\X[5]~153_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[5]~153_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~29_combout\);

-- Location: LCCOMB_X54_Y50_N8
\comb~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~28_combout\ = (!\X[5]~153_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[5]~153_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~28_combout\);

-- Location: LCCOMB_X54_Y50_N28
\X[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(5) = (!\comb~28_combout\ & ((\comb~29_combout\) # (X(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~29_combout\,
	datac => \comb~28_combout\,
	datad => X(5),
	combout => X(5));

-- Location: LCCOMB_X56_Y51_N8
\comb~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~30_combout\ = (\X[0]~74_combout\ & ((!\Equal0~1_combout\) # (!\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \X[0]~74_combout\,
	datad => \Equal0~1_combout\,
	combout => \comb~30_combout\);

-- Location: LCCOMB_X56_Y51_N26
\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\Equal4~1_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datad => \Equal0~1_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X56_Y51_N6
\X[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(4) = (!\comb~30_combout\ & ((\process_0~4_combout\) # (X(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~30_combout\,
	datac => \process_0~4_combout\,
	datad => X(4),
	combout => X(4));

-- Location: LCCOMB_X56_Y51_N20
\comb~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~31_combout\ = (\X[0]~74_combout\ & ((!\Equal4~1_combout\) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~74_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal4~1_combout\,
	combout => \comb~31_combout\);

-- Location: LCCOMB_X56_Y51_N22
\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\Equal0~5_combout\ & \Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~5_combout\,
	datad => \Equal4~1_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X56_Y51_N16
\X[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(3) = (!\comb~31_combout\ & ((\process_0~5_combout\) # (X(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~31_combout\,
	datac => \process_0~5_combout\,
	datad => X(3),
	combout => X(3));

-- Location: LCCOMB_X56_Y49_N12
\X[2]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[2]~142_combout\ = (!\q[3]~input_o\ & (\q[2]~input_o\ $ (((\q[0]~input_o\ & \q[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datab => \q[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \q[1]~input_o\,
	combout => \X[2]~142_combout\);

-- Location: LCCOMB_X55_Y49_N16
\X[2]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[2]~143_combout\ = (\T[2]~input_o\ & (\Equal4~3_combout\ & ((!\T[3]~input_o\)))) # (!\T[2]~input_o\ & (((\X[2]~142_combout\) # (!\T[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \T[2]~input_o\,
	datac => \X[2]~142_combout\,
	datad => \T[3]~input_o\,
	combout => \X[2]~143_combout\);

-- Location: LCCOMB_X55_Y49_N18
\X[2]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[2]~144_combout\ = (\T[0]~input_o\ & (((\X[2]~143_combout\)))) # (!\T[0]~input_o\ & (\Equal4~3_combout\ & ((\X[14]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \X[2]~143_combout\,
	datac => \X[14]~76_combout\,
	datad => \T[0]~input_o\,
	combout => \X[2]~144_combout\);

-- Location: LCCOMB_X55_Y50_N8
\X[2]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[2]~141_combout\ = (\T[1]~input_o\ & (!\q[0]~input_o\ & (\X[10]~115_combout\))) # (!\T[1]~input_o\ & (((!\X[8]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datab => \X[10]~115_combout\,
	datac => \X[8]~133_combout\,
	datad => \T[1]~input_o\,
	combout => \X[2]~141_combout\);

-- Location: LCCOMB_X55_Y50_N2
\X[2]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[2]~152_combout\ = (\T[0]~input_o\ & (\X[8]~131_combout\ & ((\T[1]~input_o\)))) # (!\T[0]~input_o\ & (((\X[2]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[8]~131_combout\,
	datab => \T[0]~input_o\,
	datac => \X[2]~141_combout\,
	datad => \T[1]~input_o\,
	combout => \X[2]~152_combout\);

-- Location: LCCOMB_X58_Y51_N12
\X[2]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[2]~145_combout\ = (\X[2]~144_combout\ & (((\X[2]~152_combout\ & \X[10]~128_combout\)) # (!\T[1]~input_o\))) # (!\X[2]~144_combout\ & (\X[2]~152_combout\ & ((\X[10]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~144_combout\,
	datab => \X[2]~152_combout\,
	datac => \T[1]~input_o\,
	datad => \X[10]~128_combout\,
	combout => \X[2]~145_combout\);

-- Location: LCCOMB_X58_Y51_N14
\comb~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~32_combout\ = (\X[0]~74_combout\ & !\X[2]~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~74_combout\,
	datad => \X[2]~145_combout\,
	combout => \comb~32_combout\);

-- Location: LCCOMB_X58_Y51_N0
\comb~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~33_combout\ = (\X[0]~74_combout\ & \X[2]~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~74_combout\,
	datad => \X[2]~145_combout\,
	combout => \comb~33_combout\);

-- Location: LCCOMB_X58_Y51_N22
\X[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(2) = (!\comb~32_combout\ & ((X(2)) # (\comb~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~32_combout\,
	datac => X(2),
	datad => \comb~33_combout\,
	combout => X(2));

-- Location: LCCOMB_X56_Y53_N24
\RW~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RW~0_combout\ = (\q[3]~input_o\ & \q[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~input_o\,
	datad => \q[1]~input_o\,
	combout => \RW~0_combout\);

-- Location: LCCOMB_X56_Y53_N26
\X[1]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[1]~146_combout\ = (\T[0]~input_o\ & (!\q[2]~input_o\ & (!\T[2]~input_o\ & !\T[1]~input_o\))) # (!\T[0]~input_o\ & (\q[2]~input_o\ & (\T[2]~input_o\ & \T[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[0]~input_o\,
	datab => \q[2]~input_o\,
	datac => \T[2]~input_o\,
	datad => \T[1]~input_o\,
	combout => \X[1]~146_combout\);

-- Location: LCCOMB_X56_Y53_N4
\X[1]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[1]~147_combout\ = (!\q[0]~input_o\ & (\RW~0_combout\ & (\X[1]~146_combout\ & \T[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~input_o\,
	datab => \RW~0_combout\,
	datac => \X[1]~146_combout\,
	datad => \T[3]~input_o\,
	combout => \X[1]~147_combout\);

-- Location: LCCOMB_X56_Y53_N0
\comb~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~35_combout\ = (\X[1]~147_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[1]~147_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~35_combout\);

-- Location: LCCOMB_X56_Y53_N30
\comb~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~34_combout\ = (!\X[1]~147_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[1]~147_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~34_combout\);

-- Location: LCCOMB_X56_Y53_N28
\X[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(1) = (!\comb~34_combout\ & ((\comb~35_combout\) # (X(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~35_combout\,
	datac => \comb~34_combout\,
	datad => X(1),
	combout => X(1));

-- Location: LCCOMB_X58_Y51_N26
\comb~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~36_combout\ = (\X[0]~74_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~74_combout\,
	datad => \Equal0~6_combout\,
	combout => \comb~36_combout\);

-- Location: LCCOMB_X58_Y51_N16
\X[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- X(0) = (!\comb~36_combout\ & ((\Equal0~6_combout\) # (X(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datac => \comb~36_combout\,
	datad => X(0),
	combout => X(0));

-- Location: LCCOMB_X56_Y53_N10
\RW~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RW~1_combout\ = (!\q[0]~input_o\ & ((\T[2]~input_o\ & (\q[2]~input_o\ & !\T[1]~input_o\)) # (!\T[2]~input_o\ & ((\T[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T[2]~input_o\,
	datab => \q[2]~input_o\,
	datac => \q[0]~input_o\,
	datad => \T[1]~input_o\,
	combout => \RW~1_combout\);

-- Location: LCCOMB_X56_Y53_N20
\RW~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RW~2_combout\ = (((\T[0]~input_o\) # (!\T[3]~input_o\)) # (!\RW~0_combout\)) # (!\RW~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~1_combout\,
	datab => \RW~0_combout\,
	datac => \T[0]~input_o\,
	datad => \T[3]~input_o\,
	combout => \RW~2_combout\);

-- Location: LCCOMB_X56_Y53_N16
\comb~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~38_combout\ = (\RW~2_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RW~2_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~38_combout\);

-- Location: LCCOMB_X56_Y53_N14
\comb~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~37_combout\ = (!\RW~2_combout\ & \X[0]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RW~2_combout\,
	datad => \X[0]~74_combout\,
	combout => \comb~37_combout\);

-- Location: LCCOMB_X56_Y53_N6
\RW$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RW$latch~combout\ = (!\comb~37_combout\ & ((\comb~38_combout\) # (\RW$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~38_combout\,
	datac => \comb~37_combout\,
	datad => \RW$latch~combout\,
	combout => \RW$latch~combout\);

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

ww_Xout(19) <= \Xout[19]~output_o\;

ww_Xout(18) <= \Xout[18]~output_o\;

ww_Xout(17) <= \Xout[17]~output_o\;

ww_Xout(16) <= \Xout[16]~output_o\;

ww_Xout(15) <= \Xout[15]~output_o\;

ww_Xout(14) <= \Xout[14]~output_o\;

ww_Xout(13) <= \Xout[13]~output_o\;

ww_Xout(12) <= \Xout[12]~output_o\;

ww_Xout(11) <= \Xout[11]~output_o\;

ww_Xout(10) <= \Xout[10]~output_o\;

ww_Xout(9) <= \Xout[9]~output_o\;

ww_Xout(8) <= \Xout[8]~output_o\;

ww_Xout(7) <= \Xout[7]~output_o\;

ww_Xout(6) <= \Xout[6]~output_o\;

ww_Xout(5) <= \Xout[5]~output_o\;

ww_Xout(4) <= \Xout[4]~output_o\;

ww_Xout(3) <= \Xout[3]~output_o\;

ww_Xout(2) <= \Xout[2]~output_o\;

ww_Xout(1) <= \Xout[1]~output_o\;

ww_Xout(0) <= \Xout[0]~output_o\;

ww_RW <= \RW~output_o\;
END structure;


