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

-- DATE "10/04/2023 20:54:12"

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
-- F[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- F[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- C	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Z	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- B[0]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- selec[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- selec[2]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cin	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- selec[0]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \selec[0]~input_o\ : std_logic;
SIGNAL \selec[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \selec[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \auxf~40_combout\ : std_logic;
SIGNAL \auxf~41_combout\ : std_logic;
SIGNAL \auxf~0_combout\ : std_logic;
SIGNAL \auxf~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \auxf~2_combout\ : std_logic;
SIGNAL \auxf~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \auxf~4_combout\ : std_logic;
SIGNAL \auxf~5_combout\ : std_logic;
SIGNAL \auxf~6_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \auxf~7_combout\ : std_logic;
SIGNAL \auxf~8_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \auxf~9_combout\ : std_logic;
SIGNAL \auxf~10_combout\ : std_logic;
SIGNAL \auxf~11_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \auxf~12_combout\ : std_logic;
SIGNAL \auxf~13_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \auxf~14_combout\ : std_logic;
SIGNAL \auxf~15_combout\ : std_logic;
SIGNAL \auxf~16_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \auxf~19_combout\ : std_logic;
SIGNAL \auxf~20_combout\ : std_logic;
SIGNAL \auxf~17_combout\ : std_logic;
SIGNAL \auxf~18_combout\ : std_logic;
SIGNAL \auxf~21_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \auxf~22_combout\ : std_logic;
SIGNAL \auxf~23_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \auxf~24_combout\ : std_logic;
SIGNAL \auxf~25_combout\ : std_logic;
SIGNAL \auxf~26_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \auxf~27_combout\ : std_logic;
SIGNAL \auxf~28_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \auxf~29_combout\ : std_logic;
SIGNAL \auxf~30_combout\ : std_logic;
SIGNAL \auxf~31_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \auxf~34_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \auxf~38_combout\ : std_logic;
SIGNAL \auxf~39_combout\ : std_logic;
SIGNAL \auxf[8]~32_combout\ : std_logic;
SIGNAL \auxf~33_combout\ : std_logic;
SIGNAL \auxf~35_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \auxf[8]~36_combout\ : std_logic;
SIGNAL \auxf[8]~37_combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \Z~2_combout\ : std_logic;
SIGNAL \ALT_INV_Z~2_combout\ : std_logic;

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
\ALT_INV_Z~2_combout\ <= NOT \Z~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N16
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

-- Location: IOOBUF_X46_Y54_N2
\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~1_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~6_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~11_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~16_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\F[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~21_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\F[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~26_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\F[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~31_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\F[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf~35_combout\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auxf[8]~37_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Z~2_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X24_Y0_N1
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

-- Location: IOIBUF_X22_Y0_N1
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

-- Location: IOIBUF_X20_Y0_N8
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: LCCOMB_X50_Y50_N8
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X50_Y50_N10
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\ & (\Add0~1_cout\ & VCC)) # (!\B[0]~input_o\ & (!\Add0~1_cout\)))) # (!\A[0]~input_o\ & ((\B[0]~input_o\ & (!\Add0~1_cout\)) # (!\B[0]~input_o\ & ((\Add0~1_cout\) # (GND)))))
-- \Add0~3\ = CARRY((\A[0]~input_o\ & (!\B[0]~input_o\ & !\Add0~1_cout\)) # (!\A[0]~input_o\ & ((!\Add0~1_cout\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X24_Y0_N29
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

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X49_Y49_N4
\auxf~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~40_combout\ = (\selec[1]~input_o\ & (((!\selec[2]~input_o\)))) # (!\selec[1]~input_o\ & ((\selec[2]~input_o\ & ((\A[1]~input_o\))) # (!\selec[2]~input_o\ & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \Add0~2_combout\,
	datac => \selec[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \auxf~40_combout\);

-- Location: LCCOMB_X49_Y49_N30
\auxf~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~41_combout\ = (\selec[1]~input_o\ & ((\B[0]~input_o\ & ((\auxf~40_combout\) # (!\A[0]~input_o\))) # (!\B[0]~input_o\ & ((\A[0]~input_o\))))) # (!\selec[1]~input_o\ & (((\auxf~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \auxf~40_combout\,
	datad => \A[0]~input_o\,
	combout => \auxf~41_combout\);

-- Location: LCCOMB_X49_Y49_N16
\auxf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~0_combout\ = (\selec[1]~input_o\ & ((\selec[2]~input_o\ & (\B[0]~input_o\)) # (!\selec[2]~input_o\ & ((!\A[0]~input_o\))))) # (!\selec[1]~input_o\ & (\B[0]~input_o\ & (!\selec[2]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \auxf~0_combout\);

-- Location: LCCOMB_X49_Y49_N26
\auxf~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~1_combout\ = (\selec[0]~input_o\ & ((\auxf~0_combout\))) # (!\selec[0]~input_o\ & (\auxf~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selec[0]~input_o\,
	datac => \auxf~41_combout\,
	datad => \auxf~0_combout\,
	combout => \auxf~1_combout\);

-- Location: IOIBUF_X20_Y0_N1
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

-- Location: LCCOMB_X49_Y49_N20
\auxf~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~2_combout\ = (\selec[1]~input_o\ & ((\selec[2]~input_o\) # ((!\A[1]~input_o\)))) # (!\selec[1]~input_o\ & (!\selec[2]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \auxf~2_combout\);

-- Location: LCCOMB_X49_Y49_N6
\auxf~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~3_combout\ = (\selec[2]~input_o\ & ((\auxf~2_combout\ & ((\B[1]~input_o\))) # (!\auxf~2_combout\ & (\A[0]~input_o\)))) # (!\selec[2]~input_o\ & (((\auxf~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \auxf~2_combout\,
	combout => \auxf~3_combout\);

-- Location: LCCOMB_X50_Y50_N12
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B[1]~input_o\ $ (\A[1]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B[1]~input_o\ & ((\A[1]~input_o\) # (!\Add0~3\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X49_Y49_N24
\auxf~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~4_combout\ = (\selec[1]~input_o\ & (\selec[2]~input_o\)) # (!\selec[1]~input_o\ & ((\selec[2]~input_o\ & ((\A[2]~input_o\))) # (!\selec[2]~input_o\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \Add0~4_combout\,
	datad => \A[2]~input_o\,
	combout => \auxf~4_combout\);

-- Location: LCCOMB_X49_Y49_N10
\auxf~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~5_combout\ = (\selec[1]~input_o\ & ((\B[1]~input_o\ & ((!\A[1]~input_o\) # (!\auxf~4_combout\))) # (!\B[1]~input_o\ & ((\A[1]~input_o\))))) # (!\selec[1]~input_o\ & (\auxf~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \auxf~4_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \auxf~5_combout\);

-- Location: LCCOMB_X49_Y49_N12
\auxf~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~6_combout\ = (\selec[0]~input_o\ & (\auxf~3_combout\)) # (!\selec[0]~input_o\ & ((\auxf~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~3_combout\,
	datab => \selec[0]~input_o\,
	datad => \auxf~5_combout\,
	combout => \auxf~6_combout\);

-- Location: IOIBUF_X34_Y0_N1
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

-- Location: LCCOMB_X49_Y49_N14
\auxf~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~7_combout\ = (\selec[1]~input_o\ & ((\selec[2]~input_o\) # ((!\A[2]~input_o\)))) # (!\selec[1]~input_o\ & (!\selec[2]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \selec[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \auxf~7_combout\);

-- Location: LCCOMB_X49_Y49_N8
\auxf~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~8_combout\ = (\auxf~7_combout\ & ((\B[2]~input_o\) # ((!\selec[2]~input_o\)))) # (!\auxf~7_combout\ & (((\selec[2]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \auxf~7_combout\,
	datac => \selec[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \auxf~8_combout\);

-- Location: LCCOMB_X50_Y50_N14
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\ & (\Add0~5\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~5\)))) # (!\B[2]~input_o\ & ((\A[2]~input_o\ & (!\Add0~5\)) # (!\A[2]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\B[2]~input_o\ & (!\A[2]~input_o\ & !\Add0~5\)) # (!\B[2]~input_o\ & ((!\Add0~5\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: LCCOMB_X49_Y49_N18
\auxf~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~9_combout\ = (\selec[1]~input_o\ & (((\selec[2]~input_o\)))) # (!\selec[1]~input_o\ & ((\selec[2]~input_o\ & ((\A[3]~input_o\))) # (!\selec[2]~input_o\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \Add0~6_combout\,
	datac => \selec[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \auxf~9_combout\);

-- Location: LCCOMB_X49_Y49_N28
\auxf~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~10_combout\ = (\selec[1]~input_o\ & ((\B[2]~input_o\ & ((!\A[2]~input_o\) # (!\auxf~9_combout\))) # (!\B[2]~input_o\ & ((\A[2]~input_o\))))) # (!\selec[1]~input_o\ & (\auxf~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \auxf~9_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \auxf~10_combout\);

-- Location: LCCOMB_X49_Y49_N22
\auxf~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~11_combout\ = (\selec[0]~input_o\ & (\auxf~8_combout\)) # (!\selec[0]~input_o\ & ((\auxf~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selec[0]~input_o\,
	datac => \auxf~8_combout\,
	datad => \auxf~10_combout\,
	combout => \auxf~11_combout\);

-- Location: IOIBUF_X36_Y0_N8
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

-- Location: LCCOMB_X49_Y49_N0
\auxf~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~12_combout\ = (\selec[1]~input_o\ & (((\selec[2]~input_o\) # (!\A[3]~input_o\)))) # (!\selec[1]~input_o\ & (\B[3]~input_o\ & (!\selec[2]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \auxf~12_combout\);

-- Location: LCCOMB_X49_Y49_N2
\auxf~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~13_combout\ = (\auxf~12_combout\ & ((\B[3]~input_o\) # ((!\selec[2]~input_o\)))) # (!\auxf~12_combout\ & (((\selec[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \auxf~12_combout\,
	datac => \selec[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \auxf~13_combout\);

-- Location: LCCOMB_X50_Y50_N16
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\A[3]~input_o\ $ (\B[3]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\A[3]~input_o\ & ((\B[3]~input_o\) # (!\Add0~7\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: LCCOMB_X50_Y50_N0
\auxf~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~14_combout\ = (\selec[1]~input_o\ & (((\selec[2]~input_o\)))) # (!\selec[1]~input_o\ & ((\selec[2]~input_o\ & ((\A[4]~input_o\))) # (!\selec[2]~input_o\ & (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \Add0~8_combout\,
	datac => \selec[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \auxf~14_combout\);

-- Location: LCCOMB_X50_Y50_N2
\auxf~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~15_combout\ = (\selec[1]~input_o\ & ((\A[3]~input_o\ & ((!\auxf~14_combout\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (\B[3]~input_o\)))) # (!\selec[1]~input_o\ & (((\auxf~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \auxf~14_combout\,
	combout => \auxf~15_combout\);

-- Location: LCCOMB_X49_Y50_N0
\auxf~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~16_combout\ = (\selec[0]~input_o\ & (\auxf~13_combout\)) # (!\selec[0]~input_o\ & ((\auxf~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datac => \auxf~13_combout\,
	datad => \auxf~15_combout\,
	combout => \auxf~16_combout\);

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: IOIBUF_X36_Y0_N1
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

-- Location: LCCOMB_X50_Y50_N18
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\ & (\Add0~9\ & VCC)) # (!\A[4]~input_o\ & (!\Add0~9\)))) # (!\B[4]~input_o\ & ((\A[4]~input_o\ & (!\Add0~9\)) # (!\A[4]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\B[4]~input_o\ & (!\A[4]~input_o\ & !\Add0~9\)) # (!\B[4]~input_o\ & ((!\Add0~9\) # (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X50_Y50_N28
\auxf~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~19_combout\ = (\selec[1]~input_o\ & (((\selec[2]~input_o\)))) # (!\selec[1]~input_o\ & ((\selec[2]~input_o\ & (\A[5]~input_o\)) # (!\selec[2]~input_o\ & ((\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \Add0~10_combout\,
	combout => \auxf~19_combout\);

-- Location: LCCOMB_X49_Y50_N30
\auxf~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~20_combout\ = (\selec[1]~input_o\ & ((\B[4]~input_o\ & ((!\A[4]~input_o\) # (!\auxf~19_combout\))) # (!\B[4]~input_o\ & ((\A[4]~input_o\))))) # (!\selec[1]~input_o\ & (\auxf~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \auxf~19_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \auxf~20_combout\);

-- Location: LCCOMB_X49_Y50_N2
\auxf~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~17_combout\ = (\selec[2]~input_o\ & (\selec[1]~input_o\)) # (!\selec[2]~input_o\ & ((\selec[1]~input_o\ & ((!\A[4]~input_o\))) # (!\selec[1]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \auxf~17_combout\);

-- Location: LCCOMB_X49_Y50_N20
\auxf~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~18_combout\ = (\selec[2]~input_o\ & ((\auxf~17_combout\ & (\B[4]~input_o\)) # (!\auxf~17_combout\ & ((\A[3]~input_o\))))) # (!\selec[2]~input_o\ & (\auxf~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \auxf~17_combout\,
	datac => \B[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \auxf~18_combout\);

-- Location: LCCOMB_X49_Y50_N8
\auxf~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~21_combout\ = (\selec[0]~input_o\ & ((\auxf~18_combout\))) # (!\selec[0]~input_o\ & (\auxf~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~20_combout\,
	datac => \selec[0]~input_o\,
	datad => \auxf~18_combout\,
	combout => \auxf~21_combout\);

-- Location: IOIBUF_X40_Y0_N15
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

-- Location: LCCOMB_X49_Y50_N10
\auxf~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~22_combout\ = (\selec[2]~input_o\ & (\selec[1]~input_o\)) # (!\selec[2]~input_o\ & ((\selec[1]~input_o\ & ((!\A[5]~input_o\))) # (!\selec[1]~input_o\ & (\B[5]~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \auxf~22_combout\);

-- Location: LCCOMB_X49_Y50_N28
\auxf~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~23_combout\ = (\selec[2]~input_o\ & ((\auxf~22_combout\ & ((\B[5]~input_o\))) # (!\auxf~22_combout\ & (\A[4]~input_o\)))) # (!\selec[2]~input_o\ & (((\auxf~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \auxf~22_combout\,
	combout => \auxf~23_combout\);

-- Location: LCCOMB_X50_Y50_N20
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[5]~input_o\ $ (\B[5]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A[5]~input_o\ & ((\B[5]~input_o\) # (!\Add0~11\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: IOIBUF_X54_Y54_N15
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

-- Location: LCCOMB_X49_Y50_N6
\auxf~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~24_combout\ = (\selec[2]~input_o\ & ((\selec[1]~input_o\) # ((\A[6]~input_o\)))) # (!\selec[2]~input_o\ & (!\selec[1]~input_o\ & (\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \Add0~12_combout\,
	datad => \A[6]~input_o\,
	combout => \auxf~24_combout\);

-- Location: LCCOMB_X49_Y50_N16
\auxf~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~25_combout\ = (\selec[1]~input_o\ & ((\B[5]~input_o\ & ((!\A[5]~input_o\) # (!\auxf~24_combout\))) # (!\B[5]~input_o\ & ((\A[5]~input_o\))))) # (!\selec[1]~input_o\ & (\auxf~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~24_combout\,
	datab => \selec[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \auxf~25_combout\);

-- Location: LCCOMB_X49_Y50_N18
\auxf~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~26_combout\ = (\selec[0]~input_o\ & (\auxf~23_combout\)) # (!\selec[0]~input_o\ & ((\auxf~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxf~23_combout\,
	datac => \selec[0]~input_o\,
	datad => \auxf~25_combout\,
	combout => \auxf~26_combout\);

-- Location: IOIBUF_X46_Y0_N1
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

-- Location: LCCOMB_X49_Y50_N4
\auxf~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~27_combout\ = (\selec[2]~input_o\ & (\selec[1]~input_o\)) # (!\selec[2]~input_o\ & ((\selec[1]~input_o\ & ((!\A[6]~input_o\))) # (!\selec[1]~input_o\ & (\B[6]~input_o\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \selec[1]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \auxf~27_combout\);

-- Location: LCCOMB_X49_Y50_N22
\auxf~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~28_combout\ = (\selec[2]~input_o\ & ((\auxf~27_combout\ & (\B[6]~input_o\)) # (!\auxf~27_combout\ & ((\A[5]~input_o\))))) # (!\selec[2]~input_o\ & (((\auxf~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \B[6]~input_o\,
	datac => \auxf~27_combout\,
	datad => \A[5]~input_o\,
	combout => \auxf~28_combout\);

-- Location: LCCOMB_X50_Y50_N22
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\ & (\Add0~13\ & VCC)) # (!\A[6]~input_o\ & (!\Add0~13\)))) # (!\B[6]~input_o\ & ((\A[6]~input_o\ & (!\Add0~13\)) # (!\A[6]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\B[6]~input_o\ & (!\A[6]~input_o\ & !\Add0~13\)) # (!\B[6]~input_o\ & ((!\Add0~13\) # (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: IOIBUF_X58_Y54_N29
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

-- Location: LCCOMB_X50_Y50_N6
\auxf~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~29_combout\ = (\selec[1]~input_o\ & (((\selec[2]~input_o\)))) # (!\selec[1]~input_o\ & ((\selec[2]~input_o\ & ((\A[7]~input_o\))) # (!\selec[2]~input_o\ & (\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \selec[1]~input_o\,
	datac => \selec[2]~input_o\,
	datad => \A[7]~input_o\,
	combout => \auxf~29_combout\);

-- Location: LCCOMB_X50_Y50_N4
\auxf~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~30_combout\ = (\selec[1]~input_o\ & ((\B[6]~input_o\ & ((!\A[6]~input_o\) # (!\auxf~29_combout\))) # (!\B[6]~input_o\ & ((\A[6]~input_o\))))) # (!\selec[1]~input_o\ & (\auxf~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~29_combout\,
	datab => \selec[1]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \auxf~30_combout\);

-- Location: LCCOMB_X49_Y50_N24
\auxf~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~31_combout\ = (\selec[0]~input_o\ & (\auxf~28_combout\)) # (!\selec[0]~input_o\ & ((\auxf~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~28_combout\,
	datac => \selec[0]~input_o\,
	datad => \auxf~30_combout\,
	combout => \auxf~31_combout\);

-- Location: IOIBUF_X54_Y0_N29
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

-- Location: LCCOMB_X52_Y50_N4
\auxf~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~34_combout\ = (!\selec[0]~input_o\ & ((\A[7]~input_o\ & ((!\selec[2]~input_o\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf~34_combout\);

-- Location: LCCOMB_X50_Y50_N24
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\B[7]~input_o\ $ (\A[7]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\B[7]~input_o\ & ((\A[7]~input_o\) # (!\Add0~15\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X52_Y50_N12
\auxf~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~38_combout\ = (\selec[2]~input_o\ & (\selec[1]~input_o\ $ (((!\B[7]~input_o\))))) # (!\selec[2]~input_o\ & ((\selec[1]~input_o\ & (!\A[7]~input_o\)) # (!\selec[1]~input_o\ & (\A[7]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf~38_combout\);

-- Location: LCCOMB_X52_Y50_N22
\auxf~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~39_combout\ = (\selec[2]~input_o\ & ((\B[7]~input_o\ & ((\A[6]~input_o\) # (\auxf~38_combout\))) # (!\B[7]~input_o\ & (\A[6]~input_o\ & \auxf~38_combout\)))) # (!\selec[2]~input_o\ & (((\auxf~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[2]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \auxf~38_combout\,
	combout => \auxf~39_combout\);

-- Location: LCCOMB_X52_Y50_N24
\auxf[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[8]~32_combout\ = (!\selec[0]~input_o\ & (!\selec[1]~input_o\ & !\selec[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datac => \selec[1]~input_o\,
	datad => \selec[2]~input_o\,
	combout => \auxf[8]~32_combout\);

-- Location: LCCOMB_X52_Y50_N10
\auxf~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~33_combout\ = (\selec[0]~input_o\ & ((\auxf~39_combout\) # ((\Add0~16_combout\ & \auxf[8]~32_combout\)))) # (!\selec[0]~input_o\ & (\Add0~16_combout\ & ((\auxf[8]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \Add0~16_combout\,
	datac => \auxf~39_combout\,
	datad => \auxf[8]~32_combout\,
	combout => \auxf~33_combout\);

-- Location: LCCOMB_X52_Y50_N6
\auxf~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf~35_combout\ = (\auxf~33_combout\) # ((\auxf~34_combout\ & \selec[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxf~34_combout\,
	datac => \selec[1]~input_o\,
	datad => \auxf~33_combout\,
	combout => \auxf~35_combout\);

-- Location: LCCOMB_X50_Y50_N26
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X52_Y50_N0
\auxf[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[8]~36_combout\ = (\selec[1]~input_o\ & (((\auxf[8]~37_combout\ & !\selec[2]~input_o\)))) # (!\selec[1]~input_o\ & (\A[7]~input_o\ & ((\selec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \auxf[8]~37_combout\,
	datad => \selec[2]~input_o\,
	combout => \auxf[8]~36_combout\);

-- Location: LCCOMB_X52_Y50_N26
\auxf[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \auxf[8]~37_combout\ = (\selec[0]~input_o\ & ((\auxf[8]~36_combout\) # ((\auxf[8]~32_combout\ & \Add0~18_combout\)))) # (!\selec[0]~input_o\ & (\auxf[8]~32_combout\ & (\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selec[0]~input_o\,
	datab => \auxf[8]~32_combout\,
	datac => \Add0~18_combout\,
	datad => \auxf[8]~36_combout\,
	combout => \auxf[8]~37_combout\);

-- Location: LCCOMB_X49_Y50_N12
\Z~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = (\auxf~16_combout\) # ((\auxf~11_combout\) # ((\auxf~21_combout\) # (\auxf~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~16_combout\,
	datab => \auxf~11_combout\,
	datac => \auxf~21_combout\,
	datad => \auxf~26_combout\,
	combout => \Z~1_combout\);

-- Location: LCCOMB_X49_Y50_N26
\Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (\auxf~6_combout\) # ((\auxf~35_combout\) # (\auxf~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxf~6_combout\,
	datab => \auxf~35_combout\,
	datac => \auxf~1_combout\,
	combout => \Z~0_combout\);

-- Location: LCCOMB_X49_Y50_N14
\Z~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Z~2_combout\ = (\Z~1_combout\) # ((\Z~0_combout\) # (\auxf~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~1_combout\,
	datac => \Z~0_combout\,
	datad => \auxf~31_combout\,
	combout => \Z~2_combout\);

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


