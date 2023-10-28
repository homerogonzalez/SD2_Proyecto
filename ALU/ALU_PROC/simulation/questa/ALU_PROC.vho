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

-- DATE "10/04/2023 18:17:36"

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

ENTITY 	ALU_PROC IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic;
	selec : IN std_logic_vector(2 DOWNTO 0);
	F : BUFFER std_logic_vector(7 DOWNTO 0);
	C : BUFFER std_logic;
	Z : BUFFER std_logic
	);
END ALU_PROC;

-- Design Ports Information
-- Cin	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selec[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selec[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selec[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_PROC IS
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
SIGNAL ww_Cin : std_logic;
SIGNAL ww_selec : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Cin~input_o\ : std_logic;
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
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \selec[0]~input_o\ : std_logic;
SIGNAL \selec[1]~input_o\ : std_logic;
SIGNAL \auxf[8]~12_combout\ : std_logic;
SIGNAL \selec[2]~input_o\ : std_logic;
SIGNAL \auxf[8]~28_combout\ : std_logic;
SIGNAL \auxf[8]~29_combout\ : std_logic;
SIGNAL \auxf[8]~30_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \auxf[2]~8_combout\ : std_logic;
SIGNAL \auxf[2]~9_combout\ : std_logic;
SIGNAL \auxf[3]~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \auxf[3]~7_combout\ : std_logic;
SIGNAL \auxf[1]~10_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \auxf[1]~11_combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \auxf[5]~2_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \auxf[5]~3_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \auxf[4]~4_combout\ : std_logic;
SIGNAL \auxf[4]~5_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \auxf[6]~0_combout\ : std_logic;
SIGNAL \auxf[6]~1_combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Z~2_combout\ : std_logic;
SIGNAL \Z~3_combout\ : std_logic;
SIGNAL \auxf[6]~14_combout\ : std_logic;
SIGNAL \auxf[6]~15_combout\ : std_logic;
SIGNAL \Z~10_combout\ : std_logic;
SIGNAL \Z~11_combout\ : std_logic;
SIGNAL \auxf[5]~16_combout\ : std_logic;
SIGNAL \auxf[5]~17_combout\ : std_logic;
SIGNAL \auxf[3]~20_combout\ : std_logic;
SIGNAL \auxf[3]~21_combout\ : std_logic;
SIGNAL \auxf[4]~18_combout\ : std_logic;
SIGNAL \auxf[4]~19_combout\ : std_logic;
SIGNAL \auxf[2]~22_combout\ : std_logic;
SIGNAL \auxf[2]~23_combout\ : std_logic;
SIGNAL \Z~7_combout\ : std_logic;
SIGNAL \auxf[7]~26_combout\ : std_logic;
SIGNAL \auxf[7]~27_combout\ : std_logic;
SIGNAL \auxf[1]~24_combout\ : std_logic;
SIGNAL \auxf[1]~25_combout\ : std_logic;
SIGNAL \Z~8_combout\ : std_logic;
SIGNAL \Z~4_combout\ : std_logic;
SIGNAL \Z~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \auxf[0]~13_combout\ : std_logic;
SIGNAL \Z~6_combout\ : std_logic;
SIGNAL \Z~9_combout\ : std_logic;
SIGNAL \ALT_INV_Z~9_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
ww_selec <= selec;
F <= ww_F;
C <= ww_C;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_Z~9_combout\ <= NOT \Z~9_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X78_Y49_N16
\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~input_o\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[1]~input_o\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[2]~input_o\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[3]~input_o\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\F[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\F[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[5]~input_o\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\F[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[6]~input_o\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\F[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[7]~input_o\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf[8]~30_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Z~9_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X78_Y49_N1
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

-- Location: IOIBUF_X58_Y54_N22
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

-- Location: IOIBUF_X69_Y54_N8
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

-- Location: IOIBUF_X56_Y54_N15
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

-- Location: IOIBUF_X69_Y54_N29
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

-- Location: IOIBUF_X62_Y0_N8
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

-- Location: IOIBUF_X69_Y54_N15
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

-- Location: IOIBUF_X66_Y54_N29
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

-- Location: IOIBUF_X60_Y54_N15
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

-- Location: IOIBUF_X66_Y54_N8
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

-- Location: IOIBUF_X58_Y54_N15
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

-- Location: IOIBUF_X58_Y54_N1
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

-- Location: IOIBUF_X62_Y54_N29
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

-- Location: IOIBUF_X58_Y54_N29
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

-- Location: IOIBUF_X60_Y54_N29
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

-- Location: IOIBUF_X66_Y54_N1
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

-- Location: LCCOMB_X62_Y50_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X62_Y50_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\Add0~1\ & VCC)) # (!\B[1]~input_o\ & (!\Add0~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Add0~1\)) # (!\B[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\Add0~1\)) # (!\A[1]~input_o\ & ((!\Add0~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X62_Y50_N14
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

-- Location: LCCOMB_X62_Y50_N16
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

-- Location: LCCOMB_X62_Y50_N18
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

-- Location: LCCOMB_X62_Y50_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\Add0~9\)) # (!\B[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\Add0~9\)) # (!\A[5]~input_o\ & ((!\Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X62_Y50_N22
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

-- Location: LCCOMB_X62_Y50_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ & (\Add0~13\ & VCC)) # (!\A[7]~input_o\ & (!\Add0~13\)))) # (!\B[7]~input_o\ & ((\A[7]~input_o\ & (!\Add0~13\)) # (!\A[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\B[7]~input_o\ & (!\A[7]~input_o\ & !\Add0~13\)) # (!\B[7]~input_o\ & ((!\Add0~13\) # (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X62_Y50_N26
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

-- Location: IOIBUF_X58_Y54_N8
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

-- Location: IOIBUF_X64_Y54_N1
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

-- Location: LCCOMB_X61_Y50_N18
\auxf[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[8]~12_combout\ = (!\selec[0]~input_o\ & !\selec[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selec[0]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[8]~12_combout\);

-- Location: IOIBUF_X60_Y54_N22
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

-- Location: LCCOMB_X61_Y50_N6
\auxf[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[8]~28_combout\ = (\selec[1]~input_o\ & (((!\selec[2]~input_o\ & \auxf[8]~30_combout\)))) # (!\selec[1]~input_o\ & (\A[7]~input_o\ & (\selec[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \auxf[8]~30_combout\,
	combout => \auxf[8]~28_combout\);

-- Location: LCCOMB_X61_Y50_N16
\auxf[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[8]~29_combout\ = (\selec[0]~input_o\ & \auxf[8]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selec[0]~input_o\,
	datad => \auxf[8]~28_combout\,
	combout => \auxf[8]~29_combout\);

-- Location: LCCOMB_X61_Y50_N10
\auxf[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[8]~30_combout\ = (\auxf[8]~29_combout\) # ((\Add0~16_combout\ & (\auxf[8]~12_combout\ & !\selec[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \auxf[8]~12_combout\,
	datac => \selec[2]~input_o\,
	datad => \auxf[8]~29_combout\,
	combout => \auxf[8]~30_combout\);

-- Location: LCCOMB_X62_Y52_N4
\auxf[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[2]~8_combout\ = (\selec[2]~input_o\ & (((\A[3]~input_o\) # (\selec[1]~input_o\)))) # (!\selec[2]~input_o\ & (\Add0~4_combout\ & ((!\selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \Add0~4_combout\,
	datac => \A[3]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[2]~8_combout\);

-- Location: LCCOMB_X62_Y52_N30
\auxf[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[2]~9_combout\ = (\selec[1]~input_o\ & ((\B[2]~input_o\ & ((!\A[2]~input_o\) # (!\auxf[2]~8_combout\))) # (!\B[2]~input_o\ & ((\A[2]~input_o\))))) # (!\selec[1]~input_o\ & (((\auxf[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \auxf[2]~8_combout\,
	datad => \A[2]~input_o\,
	combout => \auxf[2]~9_combout\);

-- Location: LCCOMB_X62_Y52_N24
\auxf[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[3]~6_combout\ = (\selec[1]~input_o\ & ((\B[3]~input_o\ & ((!\A[3]~input_o\) # (!\selec[2]~input_o\))) # (!\B[3]~input_o\ & ((\A[3]~input_o\))))) # (!\selec[1]~input_o\ & (\selec[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[3]~6_combout\);

-- Location: LCCOMB_X62_Y52_N18
\auxf[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[3]~7_combout\ = (\selec[1]~input_o\ & (\auxf[3]~6_combout\)) # (!\selec[1]~input_o\ & ((\auxf[3]~6_combout\ & (\A[4]~input_o\)) # (!\auxf[3]~6_combout\ & ((\Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \auxf[3]~6_combout\,
	datac => \A[4]~input_o\,
	datad => \Add0~6_combout\,
	combout => \auxf[3]~7_combout\);

-- Location: LCCOMB_X62_Y52_N0
\auxf[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[1]~10_combout\ = (\selec[1]~input_o\ & ((\A[1]~input_o\ & ((!\B[1]~input_o\) # (!\selec[2]~input_o\))) # (!\A[1]~input_o\ & ((\B[1]~input_o\))))) # (!\selec[1]~input_o\ & (\selec[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[1]~10_combout\);

-- Location: LCCOMB_X62_Y52_N2
\auxf[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[1]~11_combout\ = (\selec[1]~input_o\ & (\auxf[1]~10_combout\)) # (!\selec[1]~input_o\ & ((\auxf[1]~10_combout\ & ((\A[2]~input_o\))) # (!\auxf[1]~10_combout\ & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \auxf[1]~10_combout\,
	datac => \Add0~2_combout\,
	datad => \A[2]~input_o\,
	combout => \auxf[1]~11_combout\);

-- Location: LCCOMB_X62_Y52_N20
\Z~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = (!\selec[0]~input_o\ & ((\auxf[2]~9_combout\) # ((\auxf[3]~7_combout\) # (\auxf[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf[2]~9_combout\,
	datab => \auxf[3]~7_combout\,
	datac => \selec[0]~input_o\,
	datad => \auxf[1]~11_combout\,
	combout => \Z~1_combout\);

-- Location: LCCOMB_X62_Y50_N0
\auxf[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[5]~2_combout\ = (\selec[1]~input_o\ & ((\A[5]~input_o\ & ((!\B[5]~input_o\) # (!\selec[2]~input_o\))) # (!\A[5]~input_o\ & ((\B[5]~input_o\))))) # (!\selec[1]~input_o\ & (((\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \B[5]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[5]~2_combout\);

-- Location: LCCOMB_X62_Y50_N2
\auxf[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[5]~3_combout\ = (\auxf[5]~2_combout\ & (((\A[6]~input_o\) # (\selec[1]~input_o\)))) # (!\auxf[5]~2_combout\ & (\Add0~10_combout\ & ((!\selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf[5]~2_combout\,
	datab => \Add0~10_combout\,
	datac => \A[6]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[5]~3_combout\);

-- Location: LCCOMB_X62_Y50_N28
\auxf[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[4]~4_combout\ = (\selec[2]~input_o\ & ((\A[5]~input_o\) # ((\selec[1]~input_o\)))) # (!\selec[2]~input_o\ & (((\Add0~8_combout\ & !\selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add0~8_combout\,
	datac => \selec[2]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[4]~4_combout\);

-- Location: LCCOMB_X62_Y50_N30
\auxf[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[4]~5_combout\ = (\selec[1]~input_o\ & ((\B[4]~input_o\ & ((!\auxf[4]~4_combout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (\A[4]~input_o\)))) # (!\selec[1]~input_o\ & (((\auxf[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \auxf[4]~4_combout\,
	combout => \auxf[4]~5_combout\);

-- Location: LCCOMB_X64_Y50_N24
\auxf[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[6]~0_combout\ = (\selec[2]~input_o\ & (((\A[7]~input_o\) # (\selec[1]~input_o\)))) # (!\selec[2]~input_o\ & (\Add0~12_combout\ & ((!\selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \selec[2]~input_o\,
	datac => \A[7]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[6]~0_combout\);

-- Location: LCCOMB_X64_Y50_N10
\auxf[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[6]~1_combout\ = (\selec[1]~input_o\ & ((\B[6]~input_o\ & ((!\A[6]~input_o\) # (!\auxf[6]~0_combout\))) # (!\B[6]~input_o\ & ((\A[6]~input_o\))))) # (!\selec[1]~input_o\ & (((\auxf[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \auxf[6]~0_combout\,
	datac => \A[6]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[6]~1_combout\);

-- Location: LCCOMB_X61_Y50_N8
\Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (!\selec[0]~input_o\ & ((\auxf[5]~3_combout\) # ((\auxf[4]~5_combout\) # (\auxf[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf[5]~3_combout\,
	datab => \selec[0]~input_o\,
	datac => \auxf[4]~5_combout\,
	datad => \auxf[6]~1_combout\,
	combout => \Z~0_combout\);

-- Location: LCCOMB_X62_Y50_N8
\Z~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~2_combout\ = (\selec[2]~input_o\ & (((\A[1]~input_o\ & !\selec[1]~input_o\)))) # (!\selec[2]~input_o\ & ((\Add0~14_combout\) # ((\A[1]~input_o\ & \selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \Add0~14_combout\,
	datac => \A[1]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \Z~2_combout\);

-- Location: LCCOMB_X61_Y50_N12
\Z~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~3_combout\ = (\Z~1_combout\) # ((\Z~0_combout\) # ((\Z~2_combout\ & \auxf[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~1_combout\,
	datab => \Z~0_combout\,
	datac => \Z~2_combout\,
	datad => \auxf[8]~12_combout\,
	combout => \Z~3_combout\);

-- Location: LCCOMB_X64_Y50_N16
\auxf[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[6]~14_combout\ = (\selec[2]~input_o\ & (((\selec[1]~input_o\)))) # (!\selec[2]~input_o\ & ((\A[6]~input_o\ & (\B[6]~input_o\ & !\selec[1]~input_o\)) # (!\A[6]~input_o\ & ((\selec[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \A[6]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[6]~14_combout\);

-- Location: LCCOMB_X64_Y50_N18
\auxf[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[6]~15_combout\ = (\selec[2]~input_o\ & ((\auxf[6]~14_combout\ & (\B[6]~input_o\)) # (!\auxf[6]~14_combout\ & ((\A[5]~input_o\))))) # (!\selec[2]~input_o\ & (((\auxf[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \A[5]~input_o\,
	datad => \auxf[6]~14_combout\,
	combout => \auxf[6]~15_combout\);

-- Location: LCCOMB_X64_Y50_N4
\Z~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~10_combout\ = (\selec[2]~input_o\ & ((\selec[1]~input_o\ & ((\B[0]~input_o\))) # (!\selec[1]~input_o\ & (!\A[0]~input_o\)))) # (!\selec[2]~input_o\ & (((!\selec[1]~input_o\ & \B[0]~input_o\)) # (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Z~10_combout\);

-- Location: LCCOMB_X64_Y50_N6
\Z~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~11_combout\ = (\auxf[6]~15_combout\ & ((\A[0]~input_o\) # ((\Z~10_combout\) # (\selec[1]~input_o\)))) # (!\auxf[6]~15_combout\ & (\Z~10_combout\ & ((\A[0]~input_o\) # (\selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \auxf[6]~15_combout\,
	datac => \Z~10_combout\,
	datad => \selec[1]~input_o\,
	combout => \Z~11_combout\);

-- Location: LCCOMB_X62_Y50_N4
\auxf[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[5]~16_combout\ = (\A[5]~input_o\ & ((\selec[2]~input_o\ & ((\selec[1]~input_o\))) # (!\selec[2]~input_o\ & (\B[5]~input_o\ & !\selec[1]~input_o\)))) # (!\A[5]~input_o\ & (((\selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \B[5]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[5]~16_combout\);

-- Location: LCCOMB_X62_Y50_N6
\auxf[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[5]~17_combout\ = (\selec[2]~input_o\ & ((\auxf[5]~16_combout\ & (\B[5]~input_o\)) # (!\auxf[5]~16_combout\ & ((\A[4]~input_o\))))) # (!\selec[2]~input_o\ & (((\auxf[5]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \auxf[5]~16_combout\,
	datad => \A[4]~input_o\,
	combout => \auxf[5]~17_combout\);

-- Location: LCCOMB_X62_Y52_N26
\auxf[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[3]~20_combout\ = (\selec[2]~input_o\ & (((\selec[1]~input_o\)))) # (!\selec[2]~input_o\ & ((\A[3]~input_o\ & (\B[3]~input_o\ & !\selec[1]~input_o\)) # (!\A[3]~input_o\ & ((\selec[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[3]~20_combout\);

-- Location: LCCOMB_X62_Y52_N28
\auxf[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[3]~21_combout\ = (\selec[2]~input_o\ & ((\auxf[3]~20_combout\ & (\B[3]~input_o\)) # (!\auxf[3]~20_combout\ & ((\A[2]~input_o\))))) # (!\selec[2]~input_o\ & (((\auxf[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \auxf[3]~20_combout\,
	datad => \A[2]~input_o\,
	combout => \auxf[3]~21_combout\);

-- Location: LCCOMB_X62_Y52_N14
\auxf[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[4]~18_combout\ = (\selec[2]~input_o\ & ((\A[3]~input_o\))) # (!\selec[2]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[3]~input_o\,
	combout => \auxf[4]~18_combout\);

-- Location: LCCOMB_X62_Y52_N8
\auxf[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[4]~19_combout\ = (\selec[1]~input_o\ & ((\selec[2]~input_o\ & (\B[4]~input_o\)) # (!\selec[2]~input_o\ & ((!\auxf[4]~18_combout\))))) # (!\selec[1]~input_o\ & (\auxf[4]~18_combout\ & ((\selec[2]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \auxf[4]~18_combout\,
	datad => \selec[1]~input_o\,
	combout => \auxf[4]~19_combout\);

-- Location: LCCOMB_X62_Y52_N22
\auxf[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[2]~22_combout\ = (\selec[2]~input_o\ & ((\A[1]~input_o\))) # (!\selec[2]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \auxf[2]~22_combout\);

-- Location: LCCOMB_X62_Y52_N16
\auxf[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[2]~23_combout\ = (\selec[1]~input_o\ & ((\selec[2]~input_o\ & (\B[2]~input_o\)) # (!\selec[2]~input_o\ & ((!\auxf[2]~22_combout\))))) # (!\selec[1]~input_o\ & (\auxf[2]~22_combout\ & ((\selec[2]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \auxf[2]~22_combout\,
	datad => \selec[1]~input_o\,
	combout => \auxf[2]~23_combout\);

-- Location: LCCOMB_X62_Y52_N10
\Z~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~7_combout\ = (\auxf[5]~17_combout\) # ((\auxf[3]~21_combout\) # ((\auxf[4]~19_combout\) # (\auxf[2]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf[5]~17_combout\,
	datab => \auxf[3]~21_combout\,
	datac => \auxf[4]~19_combout\,
	datad => \auxf[2]~23_combout\,
	combout => \Z~7_combout\);

-- Location: LCCOMB_X64_Y50_N30
\auxf[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[7]~26_combout\ = (\selec[2]~input_o\ & (\A[6]~input_o\)) # (!\selec[2]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \A[7]~input_o\,
	combout => \auxf[7]~26_combout\);

-- Location: LCCOMB_X64_Y50_N8
\auxf[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[7]~27_combout\ = (\selec[1]~input_o\ & ((\selec[2]~input_o\ & ((\B[7]~input_o\))) # (!\selec[2]~input_o\ & (!\auxf[7]~26_combout\)))) # (!\selec[1]~input_o\ & (\auxf[7]~26_combout\ & ((\selec[2]~input_o\) # (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf[7]~26_combout\,
	datab => \selec[2]~input_o\,
	datac => \B[7]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[7]~27_combout\);

-- Location: LCCOMB_X61_Y50_N26
\auxf[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[1]~24_combout\ = (\A[1]~input_o\ & ((\selec[2]~input_o\ & ((\selec[1]~input_o\))) # (!\selec[2]~input_o\ & (\B[1]~input_o\ & !\selec[1]~input_o\)))) # (!\A[1]~input_o\ & (((\selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \selec[1]~input_o\,
	combout => \auxf[1]~24_combout\);

-- Location: LCCOMB_X64_Y50_N28
\auxf[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[1]~25_combout\ = (\selec[2]~input_o\ & ((\auxf[1]~24_combout\ & (\B[1]~input_o\)) # (!\auxf[1]~24_combout\ & ((\A[0]~input_o\))))) # (!\selec[2]~input_o\ & (((\auxf[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \auxf[1]~24_combout\,
	combout => \auxf[1]~25_combout\);

-- Location: LCCOMB_X64_Y50_N26
\Z~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~8_combout\ = (\Z~11_combout\) # ((\Z~7_combout\) # ((\auxf[7]~27_combout\) # (\auxf[1]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~11_combout\,
	datab => \Z~7_combout\,
	datac => \auxf[7]~27_combout\,
	datad => \auxf[1]~25_combout\,
	combout => \Z~8_combout\);

-- Location: LCCOMB_X64_Y50_N20
\Z~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~4_combout\ = (!\selec[2]~input_o\ & ((\A[0]~input_o\) # ((\A[7]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Z~4_combout\);

-- Location: LCCOMB_X64_Y50_N22
\Z~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~5_combout\ = (\Z~4_combout\) # (\B[7]~input_o\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \Z~4_combout\,
	combout => \Z~5_combout\);

-- Location: LCCOMB_X61_Y50_N22
\auxf[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[0]~13_combout\ = (!\selec[0]~input_o\ & (\Add0~0_combout\ & (\selec[2]~input_o\ $ (!\selec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \selec[0]~input_o\,
	datac => \Add0~0_combout\,
	datad => \selec[1]~input_o\,
	combout => \auxf[0]~13_combout\);

-- Location: LCCOMB_X61_Y50_N24
\Z~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~6_combout\ = (\auxf[0]~13_combout\) # ((\Z~5_combout\ & (!\selec[0]~input_o\ & \selec[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~5_combout\,
	datab => \selec[0]~input_o\,
	datac => \auxf[0]~13_combout\,
	datad => \selec[1]~input_o\,
	combout => \Z~6_combout\);

-- Location: LCCOMB_X61_Y50_N20
\Z~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~9_combout\ = (\Z~3_combout\) # ((\Z~6_combout\) # ((\selec[0]~input_o\ & \Z~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~3_combout\,
	datab => \selec[0]~input_o\,
	datac => \Z~8_combout\,
	datad => \Z~6_combout\,
	combout => \Z~9_combout\);

-- Location: IOIBUF_X22_Y0_N8
\Cin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

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


