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

-- DATE "11/30/2023 19:29:24"

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

ENTITY 	ALU_PROC_FINAL IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	selec : IN std_logic_vector(2 DOWNTO 0);
	F : OUT std_logic_vector(7 DOWNTO 0);
	C : OUT std_logic;
	Z : OUT std_logic
	);
END ALU_PROC_FINAL;

-- Design Ports Information
-- F[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selec[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selec[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selec[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_PROC_FINAL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_selec : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \selec[1]~input_o\ : std_logic;
SIGNAL \selec[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \auxf~0_combout\ : std_logic;
SIGNAL \selec[0]~input_o\ : std_logic;
SIGNAL \auxf~2_combout\ : std_logic;
SIGNAL \auxf~1_combout\ : std_logic;
SIGNAL \auxf~3_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \auxf~5_combout\ : std_logic;
SIGNAL \auxf~6_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \auxf~7_combout\ : std_logic;
SIGNAL \auxf~4_combout\ : std_logic;
SIGNAL \auxf~8_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \auxf~9_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \auxf~10_combout\ : std_logic;
SIGNAL \auxf~11_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \auxf~12_combout\ : std_logic;
SIGNAL \auxf~13_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \auxf~14_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \auxf~15_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \auxf~16_combout\ : std_logic;
SIGNAL \auxf~17_combout\ : std_logic;
SIGNAL \auxf~18_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \auxf~21_combout\ : std_logic;
SIGNAL \auxf~20_combout\ : std_logic;
SIGNAL \auxf~22_combout\ : std_logic;
SIGNAL \auxf~19_combout\ : std_logic;
SIGNAL \auxf~23_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \auxf~24_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \auxf~26_combout\ : std_logic;
SIGNAL \auxf~25_combout\ : std_logic;
SIGNAL \auxf~27_combout\ : std_logic;
SIGNAL \auxf~28_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \auxf~30_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \auxf~31_combout\ : std_logic;
SIGNAL \auxf~32_combout\ : std_logic;
SIGNAL \auxf~29_combout\ : std_logic;
SIGNAL \auxf~33_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \auxf~35_combout\ : std_logic;
SIGNAL \auxf~34_combout\ : std_logic;
SIGNAL \auxf~36_combout\ : std_logic;
SIGNAL \auxf~39_combout\ : std_logic;
SIGNAL \auxf~40_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \auxf~37_combout\ : std_logic;
SIGNAL \auxf~38_combout\ : std_logic;
SIGNAL \tmp[7]~1_combout\ : std_logic;
SIGNAL \tmp[7]~0_combout\ : std_logic;
SIGNAL tmp : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_tmp : std_logic_vector(7 DOWNTO 7);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_selec <= selec;
F <= ww_F;
C <= ww_C;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
ALT_INV_tmp(7) <= NOT tmp(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N8
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

-- Location: IOOBUF_X24_Y39_N9
\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~3_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~8_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~13_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~18_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\F[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~23_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\F[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~28_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\F[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~33_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\F[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~40_combout\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~38_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_tmp(7),
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X22_Y39_N22
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X26_Y37_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X31_Y39_N29
\selec[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selec(1),
	o => \selec[1]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\selec[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selec(2),
	o => \selec[2]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X26_Y37_N0
\auxf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~0_combout\ = (\selec[2]~input_o\ & ((\A[1]~input_o\))) # (!\selec[2]~input_o\ & (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \auxf~0_combout\);

-- Location: IOIBUF_X26_Y39_N15
\selec[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selec(0),
	o => \selec[0]~input_o\);

-- Location: LCCOMB_X26_Y37_N4
\auxf~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~2_combout\ = (\auxf~0_combout\ & (\selec[1]~input_o\ $ (\selec[2]~input_o\ $ (\selec[0]~input_o\)))) # (!\auxf~0_combout\ & (\selec[1]~input_o\ & ((\selec[0]~input_o\) # (!\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \auxf~0_combout\,
	datac => \selec[2]~input_o\,
	datad => \selec[0]~input_o\,
	combout => \auxf~2_combout\);

-- Location: LCCOMB_X26_Y37_N2
\auxf~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~1_combout\ = (\selec[2]~input_o\ & (!\selec[1]~input_o\)) # (!\selec[2]~input_o\ & ((\auxf~0_combout\ & (\selec[1]~input_o\)) # (!\auxf~0_combout\ & ((\selec[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \auxf~0_combout\,
	datac => \selec[2]~input_o\,
	datad => \selec[0]~input_o\,
	combout => \auxf~1_combout\);

-- Location: LCCOMB_X26_Y37_N6
\auxf~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~3_combout\ = (\auxf~2_combout\ & (((\B[0]~input_o\) # (\auxf~1_combout\)))) # (!\auxf~2_combout\ & (\Add0~0_combout\ & ((!\auxf~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \B[0]~input_o\,
	datac => \auxf~2_combout\,
	datad => \auxf~1_combout\,
	combout => \auxf~3_combout\);

-- Location: IOIBUF_X24_Y39_N29
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X26_Y37_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add0~1\)) # (!\A[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((!\Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y37_N2
\auxf~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~5_combout\ = (\B[1]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \auxf~5_combout\);

-- Location: LCCOMB_X27_Y37_N4
\auxf~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~6_combout\ = (\selec[0]~input_o\ & (((\auxf~5_combout\) # (\selec[2]~input_o\)))) # (!\selec[0]~input_o\ & (\Add0~2_combout\ & ((!\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \auxf~5_combout\,
	datac => \selec[0]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf~6_combout\);

-- Location: IOIBUF_X31_Y39_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X27_Y37_N6
\auxf~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~7_combout\ = (\selec[2]~input_o\ & ((\auxf~6_combout\ & (\A[0]~input_o\)) # (!\auxf~6_combout\ & ((\A[2]~input_o\))))) # (!\selec[2]~input_o\ & (((\auxf~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \auxf~6_combout\,
	datad => \A[2]~input_o\,
	combout => \auxf~7_combout\);

-- Location: LCCOMB_X27_Y37_N0
\auxf~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~4_combout\ = (\A[1]~input_o\ & (\selec[0]~input_o\ $ (((!\selec[2]~input_o\) # (!\B[1]~input_o\))))) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # ((\selec[0]~input_o\ & !\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf~4_combout\);

-- Location: LCCOMB_X27_Y37_N24
\auxf~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~8_combout\ = (\selec[1]~input_o\ & ((\auxf~4_combout\))) # (!\selec[1]~input_o\ & (\auxf~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~7_combout\,
	datac => \selec[1]~input_o\,
	datad => \auxf~4_combout\,
	combout => \auxf~8_combout\);

-- Location: IOIBUF_X24_Y39_N15
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X27_Y37_N10
\auxf~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~9_combout\ = (\A[2]~input_o\ & (\selec[0]~input_o\ $ (((!\B[2]~input_o\) # (!\selec[2]~input_o\))))) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # ((!\selec[2]~input_o\ & \selec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \selec[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \auxf~9_combout\);

-- Location: LCCOMB_X26_Y37_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Add0~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y37_N28
\auxf~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~10_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \auxf~10_combout\);

-- Location: LCCOMB_X27_Y37_N30
\auxf~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~11_combout\ = (\selec[0]~input_o\ & (((\auxf~10_combout\) # (\selec[2]~input_o\)))) # (!\selec[0]~input_o\ & (\Add0~4_combout\ & ((!\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \auxf~10_combout\,
	datac => \selec[0]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf~11_combout\);

-- Location: IOIBUF_X26_Y39_N22
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X27_Y37_N16
\auxf~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~12_combout\ = (\auxf~11_combout\ & ((\A[1]~input_o\) # ((!\selec[2]~input_o\)))) # (!\auxf~11_combout\ & (((\A[3]~input_o\ & \selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~11_combout\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf~12_combout\);

-- Location: LCCOMB_X27_Y37_N18
\auxf~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~13_combout\ = (\selec[1]~input_o\ & (\auxf~9_combout\)) # (!\selec[1]~input_o\ & ((\auxf~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~9_combout\,
	datab => \auxf~12_combout\,
	datac => \selec[1]~input_o\,
	combout => \auxf~13_combout\);

-- Location: IOIBUF_X24_Y39_N22
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X27_Y37_N12
\auxf~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~14_combout\ = (\A[3]~input_o\ & (\selec[0]~input_o\ $ (((!\selec[2]~input_o\) # (!\B[3]~input_o\))))) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # ((\selec[0]~input_o\ & !\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \selec[0]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf~14_combout\);

-- Location: IOIBUF_X24_Y39_N1
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X27_Y37_N14
\auxf~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~15_combout\ = (\B[3]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \auxf~15_combout\);

-- Location: LCCOMB_X26_Y37_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\Add0~5\ & VCC)) # (!\A[3]~input_o\ & (!\Add0~5\)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (!\Add0~5\)) # (!\A[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\Add0~5\)) # (!\B[3]~input_o\ & ((!\Add0~5\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X27_Y37_N8
\auxf~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~16_combout\ = (\selec[0]~input_o\ & ((\auxf~15_combout\) # ((\selec[2]~input_o\)))) # (!\selec[0]~input_o\ & (((\Add0~6_combout\ & !\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \auxf~15_combout\,
	datac => \Add0~6_combout\,
	datad => \selec[2]~input_o\,
	combout => \auxf~16_combout\);

-- Location: LCCOMB_X27_Y37_N26
\auxf~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~17_combout\ = (\selec[2]~input_o\ & ((\auxf~16_combout\ & ((\A[2]~input_o\))) # (!\auxf~16_combout\ & (\A[4]~input_o\)))) # (!\selec[2]~input_o\ & (((\auxf~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \A[4]~input_o\,
	datac => \auxf~16_combout\,
	datad => \A[2]~input_o\,
	combout => \auxf~17_combout\);

-- Location: LCCOMB_X27_Y37_N20
\auxf~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~18_combout\ = (\selec[1]~input_o\ & (\auxf~14_combout\)) # (!\selec[1]~input_o\ & ((\auxf~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~14_combout\,
	datab => \selec[1]~input_o\,
	datac => \auxf~17_combout\,
	combout => \auxf~18_combout\);

-- Location: IOIBUF_X29_Y39_N15
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X26_Y37_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B[4]~input_o\ & ((\A[4]~input_o\) # (!\Add0~7\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X26_Y39_N1
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X26_Y37_N8
\auxf~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~21_combout\ = (\selec[2]~input_o\ & (((\A[5]~input_o\) # (\selec[0]~input_o\)))) # (!\selec[2]~input_o\ & (\Add0~8_combout\ & ((!\selec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \A[5]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \selec[0]~input_o\,
	combout => \auxf~21_combout\);

-- Location: LCCOMB_X27_Y36_N10
\auxf~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~20_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \auxf~20_combout\);

-- Location: LCCOMB_X27_Y36_N4
\auxf~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~22_combout\ = (\selec[0]~input_o\ & ((\auxf~21_combout\ & (\A[3]~input_o\)) # (!\auxf~21_combout\ & ((\auxf~20_combout\))))) # (!\selec[0]~input_o\ & (\auxf~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \auxf~21_combout\,
	datac => \A[3]~input_o\,
	datad => \auxf~20_combout\,
	combout => \auxf~22_combout\);

-- Location: LCCOMB_X27_Y36_N24
\auxf~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~19_combout\ = (\A[4]~input_o\ & (\selec[0]~input_o\ $ (((!\B[4]~input_o\) # (!\selec[2]~input_o\))))) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # ((\selec[0]~input_o\ & !\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \A[4]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \auxf~19_combout\);

-- Location: LCCOMB_X26_Y36_N8
\auxf~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~23_combout\ = (\selec[1]~input_o\ & ((\auxf~19_combout\))) # (!\selec[1]~input_o\ & (\auxf~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~22_combout\,
	datac => \selec[1]~input_o\,
	datad => \auxf~19_combout\,
	combout => \auxf~23_combout\);

-- Location: IOIBUF_X22_Y39_N15
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X26_Y36_N10
\auxf~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~24_combout\ = (\A[5]~input_o\ & (\selec[0]~input_o\ $ (((!\B[5]~input_o\) # (!\selec[2]~input_o\))))) # (!\A[5]~input_o\ & ((\B[5]~input_o\) # ((!\selec[2]~input_o\ & \selec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \A[5]~input_o\,
	datac => \selec[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \auxf~24_combout\);

-- Location: LCCOMB_X26_Y37_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\Add0~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add0~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Add0~9\)) # (!\A[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\Add0~9\)) # (!\B[5]~input_o\ & ((!\Add0~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: IOIBUF_X29_Y39_N8
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X26_Y36_N30
\auxf~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~26_combout\ = (\selec[2]~input_o\ & (((\selec[0]~input_o\) # (\A[6]~input_o\)))) # (!\selec[2]~input_o\ & (\Add0~10_combout\ & (!\selec[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \Add0~10_combout\,
	datac => \selec[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \auxf~26_combout\);

-- Location: LCCOMB_X26_Y36_N4
\auxf~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~25_combout\ = (\B[5]~input_o\ & \A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \auxf~25_combout\);

-- Location: LCCOMB_X26_Y36_N16
\auxf~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~27_combout\ = (\auxf~26_combout\ & (((\A[4]~input_o\) # (!\selec[0]~input_o\)))) # (!\auxf~26_combout\ & (\auxf~25_combout\ & (\selec[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~26_combout\,
	datab => \auxf~25_combout\,
	datac => \selec[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \auxf~27_combout\);

-- Location: LCCOMB_X26_Y36_N2
\auxf~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~28_combout\ = (\selec[1]~input_o\ & (\auxf~24_combout\)) # (!\selec[1]~input_o\ & ((\auxf~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~24_combout\,
	datac => \selec[1]~input_o\,
	datad => \auxf~27_combout\,
	combout => \auxf~28_combout\);

-- Location: IOIBUF_X31_Y39_N8
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X27_Y36_N16
\auxf~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~30_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \auxf~30_combout\);

-- Location: IOIBUF_X26_Y39_N29
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X26_Y37_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\Add0~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X26_Y36_N20
\auxf~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~31_combout\ = (\selec[0]~input_o\ & (((\selec[2]~input_o\)))) # (!\selec[0]~input_o\ & ((\selec[2]~input_o\ & (\A[7]~input_o\)) # (!\selec[2]~input_o\ & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Add0~12_combout\,
	datad => \selec[2]~input_o\,
	combout => \auxf~31_combout\);

-- Location: LCCOMB_X26_Y36_N22
\auxf~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~32_combout\ = (\selec[0]~input_o\ & ((\auxf~31_combout\ & ((\A[5]~input_o\))) # (!\auxf~31_combout\ & (\auxf~30_combout\)))) # (!\selec[0]~input_o\ & (((\auxf~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~30_combout\,
	datab => \A[5]~input_o\,
	datac => \selec[0]~input_o\,
	datad => \auxf~31_combout\,
	combout => \auxf~32_combout\);

-- Location: LCCOMB_X27_Y36_N6
\auxf~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~29_combout\ = (\A[6]~input_o\ & (\selec[0]~input_o\ $ (((!\B[6]~input_o\) # (!\selec[2]~input_o\))))) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # ((\selec[0]~input_o\ & !\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \B[6]~input_o\,
	combout => \auxf~29_combout\);

-- Location: LCCOMB_X26_Y36_N0
\auxf~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~33_combout\ = (\selec[1]~input_o\ & ((\auxf~29_combout\))) # (!\selec[1]~input_o\ & (\auxf~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~32_combout\,
	datac => \selec[1]~input_o\,
	datad => \auxf~29_combout\,
	combout => \auxf~33_combout\);

-- Location: IOIBUF_X26_Y39_N8
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X26_Y37_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\ & (\Add0~13\ & VCC)) # (!\B[7]~input_o\ & (!\Add0~13\)))) # (!\A[7]~input_o\ & ((\B[7]~input_o\ & (!\Add0~13\)) # (!\B[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\A[7]~input_o\ & (!\B[7]~input_o\ & !\Add0~13\)) # (!\A[7]~input_o\ & ((!\Add0~13\) # (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X26_Y36_N26
\auxf~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~35_combout\ = (\selec[0]~input_o\ & (\B[7]~input_o\ & ((\A[7]~input_o\)))) # (!\selec[0]~input_o\ & (((\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \Add0~14_combout\,
	datad => \A[7]~input_o\,
	combout => \auxf~35_combout\);

-- Location: LCCOMB_X27_Y36_N18
\auxf~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~34_combout\ = (\selec[0]~input_o\ & \A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \auxf~34_combout\);

-- Location: LCCOMB_X26_Y36_N12
\auxf~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~36_combout\ = (\selec[1]~input_o\ & (((\selec[2]~input_o\)))) # (!\selec[1]~input_o\ & ((\selec[2]~input_o\ & ((\auxf~34_combout\))) # (!\selec[2]~input_o\ & (\auxf~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~35_combout\,
	datab => \auxf~34_combout\,
	datac => \selec[1]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf~36_combout\);

-- Location: LCCOMB_X26_Y36_N28
\auxf~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~39_combout\ = (\A[7]~input_o\ & (\selec[0]~input_o\ $ (((!\B[7]~input_o\) # (!\auxf~36_combout\))))) # (!\A[7]~input_o\ & ((\B[7]~input_o\) # ((!\auxf~36_combout\ & \selec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~36_combout\,
	datab => \B[7]~input_o\,
	datac => \selec[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \auxf~39_combout\);

-- Location: LCCOMB_X26_Y36_N6
\auxf~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~40_combout\ = (\selec[1]~input_o\ & (\auxf~39_combout\)) # (!\selec[1]~input_o\ & ((\auxf~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxf~39_combout\,
	datac => \selec[1]~input_o\,
	datad => \auxf~36_combout\,
	combout => \auxf~40_combout\);

-- Location: LCCOMB_X26_Y37_N26
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X26_Y37_N28
\auxf~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~37_combout\ = (\selec[2]~input_o\ & ((\selec[0]~input_o\ & (\A[7]~input_o\)) # (!\selec[0]~input_o\ & ((\A[0]~input_o\))))) # (!\selec[2]~input_o\ & (((\selec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \selec[0]~input_o\,
	combout => \auxf~37_combout\);

-- Location: LCCOMB_X26_Y37_N30
\auxf~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~38_combout\ = (!\selec[1]~input_o\ & ((\auxf~37_combout\ & ((\selec[2]~input_o\))) # (!\auxf~37_combout\ & (\Add0~16_combout\ & !\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \auxf~37_combout\,
	datac => \selec[2]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf~38_combout\);

-- Location: LCCOMB_X26_Y36_N24
\tmp[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmp[7]~1_combout\ = (\auxf~18_combout\) # ((\selec[1]~input_o\ & ((\auxf~19_combout\))) # (!\selec[1]~input_o\ & (\auxf~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~22_combout\,
	datab => \auxf~19_combout\,
	datac => \selec[1]~input_o\,
	datad => \auxf~18_combout\,
	combout => \tmp[7]~1_combout\);

-- Location: LCCOMB_X26_Y36_N14
\tmp[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmp[7]~0_combout\ = (\auxf~40_combout\) # ((\auxf~13_combout\) # ((\auxf~3_combout\) # (\auxf~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~40_combout\,
	datab => \auxf~13_combout\,
	datac => \auxf~3_combout\,
	datad => \auxf~8_combout\,
	combout => \tmp[7]~0_combout\);

-- Location: LCCOMB_X26_Y36_N18
\tmp[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- tmp(7) = (\tmp[7]~1_combout\) # ((\auxf~28_combout\) # ((\tmp[7]~0_combout\) # (\auxf~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[7]~1_combout\,
	datab => \auxf~28_combout\,
	datac => \tmp[7]~0_combout\,
	datad => \auxf~33_combout\,
	combout => tmp(7));

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

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(7) <= \F[7]~output_o\;

ww_C <= \C~output_o\;

ww_Z <= \Z~output_o\;
END structure;


