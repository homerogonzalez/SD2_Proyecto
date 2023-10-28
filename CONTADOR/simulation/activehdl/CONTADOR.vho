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

-- DATE "10/06/2023 09:50:26"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
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

ENTITY 	CONTADOR IS
    PORT (
	ARST_CONT : IN std_logic;
	SRST_CONT : IN std_logic;
	CLK : IN std_logic;
	Qsal_cont : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CONTADOR;

-- Design Ports Information
-- Qsal_cont[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_cont[1]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_cont[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_cont[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_cont[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_cont[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_cont[6]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_cont[7]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARST_CONT	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRST_CONT	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONTADOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ARST_CONT : std_logic;
SIGNAL ww_SRST_CONT : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Qsal_cont : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ARST_CONT~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Qsal_cont[0]~output_o\ : std_logic;
SIGNAL \Qsal_cont[1]~output_o\ : std_logic;
SIGNAL \Qsal_cont[2]~output_o\ : std_logic;
SIGNAL \Qsal_cont[3]~output_o\ : std_logic;
SIGNAL \Qsal_cont[4]~output_o\ : std_logic;
SIGNAL \Qsal_cont[5]~output_o\ : std_logic;
SIGNAL \Qsal_cont[6]~output_o\ : std_logic;
SIGNAL \Qsal_cont[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \cuenta[0]~8_combout\ : std_logic;
SIGNAL \ARST_CONT~input_o\ : std_logic;
SIGNAL \ARST_CONT~inputclkctrl_outclk\ : std_logic;
SIGNAL \SRST_CONT~input_o\ : std_logic;
SIGNAL \cuenta[0]~9\ : std_logic;
SIGNAL \cuenta[1]~10_combout\ : std_logic;
SIGNAL \cuenta[1]~11\ : std_logic;
SIGNAL \cuenta[2]~12_combout\ : std_logic;
SIGNAL \cuenta[2]~13\ : std_logic;
SIGNAL \cuenta[3]~14_combout\ : std_logic;
SIGNAL \cuenta[3]~15\ : std_logic;
SIGNAL \cuenta[4]~16_combout\ : std_logic;
SIGNAL \cuenta[4]~17\ : std_logic;
SIGNAL \cuenta[5]~18_combout\ : std_logic;
SIGNAL \cuenta[5]~19\ : std_logic;
SIGNAL \cuenta[6]~20_combout\ : std_logic;
SIGNAL \cuenta[6]~21\ : std_logic;
SIGNAL \cuenta[7]~22_combout\ : std_logic;
SIGNAL cuenta : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_ARST_CONT~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ARST_CONT <= ARST_CONT;
ww_SRST_CONT <= SRST_CONT;
ww_CLK <= CLK;
Qsal_cont <= ww_Qsal_cont;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\ARST_CONT~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ARST_CONT~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_ARST_CONT~inputclkctrl_outclk\ <= NOT \ARST_CONT~inputclkctrl_outclk\;
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

-- Location: IOOBUF_X16_Y0_N16
\Qsal_cont[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(0),
	devoe => ww_devoe,
	o => \Qsal_cont[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Qsal_cont[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(1),
	devoe => ww_devoe,
	o => \Qsal_cont[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Qsal_cont[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(2),
	devoe => ww_devoe,
	o => \Qsal_cont[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\Qsal_cont[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(3),
	devoe => ww_devoe,
	o => \Qsal_cont[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Qsal_cont[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(4),
	devoe => ww_devoe,
	o => \Qsal_cont[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Qsal_cont[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(5),
	devoe => ww_devoe,
	o => \Qsal_cont[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Qsal_cont[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(6),
	devoe => ww_devoe,
	o => \Qsal_cont[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Qsal_cont[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(7),
	devoe => ww_devoe,
	o => \Qsal_cont[7]~output_o\);

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

-- Location: LCCOMB_X18_Y1_N8
\cuenta[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[0]~8_combout\ = cuenta(0) $ (VCC)
-- \cuenta[0]~9\ = CARRY(cuenta(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cuenta(0),
	datad => VCC,
	combout => \cuenta[0]~8_combout\,
	cout => \cuenta[0]~9\);

-- Location: IOIBUF_X0_Y18_N22
\ARST_CONT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARST_CONT,
	o => \ARST_CONT~input_o\);

-- Location: CLKCTRL_G4
\ARST_CONT~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ARST_CONT~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ARST_CONT~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N15
\SRST_CONT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRST_CONT,
	o => \SRST_CONT~input_o\);

-- Location: FF_X18_Y1_N9
\cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cuenta[0]~8_combout\,
	clrn => \ALT_INV_ARST_CONT~inputclkctrl_outclk\,
	sclr => \SRST_CONT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(0));

-- Location: LCCOMB_X18_Y1_N10
\cuenta[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[1]~10_combout\ = (cuenta(1) & (!\cuenta[0]~9\)) # (!cuenta(1) & ((\cuenta[0]~9\) # (GND)))
-- \cuenta[1]~11\ = CARRY((!\cuenta[0]~9\) # (!cuenta(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(1),
	datad => VCC,
	cin => \cuenta[0]~9\,
	combout => \cuenta[1]~10_combout\,
	cout => \cuenta[1]~11\);

-- Location: FF_X18_Y1_N11
\cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cuenta[1]~10_combout\,
	clrn => \ALT_INV_ARST_CONT~inputclkctrl_outclk\,
	sclr => \SRST_CONT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(1));

-- Location: LCCOMB_X18_Y1_N12
\cuenta[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[2]~12_combout\ = (cuenta(2) & (\cuenta[1]~11\ $ (GND))) # (!cuenta(2) & (!\cuenta[1]~11\ & VCC))
-- \cuenta[2]~13\ = CARRY((cuenta(2) & !\cuenta[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(2),
	datad => VCC,
	cin => \cuenta[1]~11\,
	combout => \cuenta[2]~12_combout\,
	cout => \cuenta[2]~13\);

-- Location: FF_X18_Y1_N13
\cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cuenta[2]~12_combout\,
	clrn => \ALT_INV_ARST_CONT~inputclkctrl_outclk\,
	sclr => \SRST_CONT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(2));

-- Location: LCCOMB_X18_Y1_N14
\cuenta[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[3]~14_combout\ = (cuenta(3) & (!\cuenta[2]~13\)) # (!cuenta(3) & ((\cuenta[2]~13\) # (GND)))
-- \cuenta[3]~15\ = CARRY((!\cuenta[2]~13\) # (!cuenta(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(3),
	datad => VCC,
	cin => \cuenta[2]~13\,
	combout => \cuenta[3]~14_combout\,
	cout => \cuenta[3]~15\);

-- Location: FF_X18_Y1_N15
\cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cuenta[3]~14_combout\,
	clrn => \ALT_INV_ARST_CONT~inputclkctrl_outclk\,
	sclr => \SRST_CONT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(3));

-- Location: LCCOMB_X18_Y1_N16
\cuenta[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[4]~16_combout\ = (cuenta(4) & (\cuenta[3]~15\ $ (GND))) # (!cuenta(4) & (!\cuenta[3]~15\ & VCC))
-- \cuenta[4]~17\ = CARRY((cuenta(4) & !\cuenta[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(4),
	datad => VCC,
	cin => \cuenta[3]~15\,
	combout => \cuenta[4]~16_combout\,
	cout => \cuenta[4]~17\);

-- Location: FF_X18_Y1_N17
\cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cuenta[4]~16_combout\,
	clrn => \ALT_INV_ARST_CONT~inputclkctrl_outclk\,
	sclr => \SRST_CONT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(4));

-- Location: LCCOMB_X18_Y1_N18
\cuenta[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[5]~18_combout\ = (cuenta(5) & (!\cuenta[4]~17\)) # (!cuenta(5) & ((\cuenta[4]~17\) # (GND)))
-- \cuenta[5]~19\ = CARRY((!\cuenta[4]~17\) # (!cuenta(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(5),
	datad => VCC,
	cin => \cuenta[4]~17\,
	combout => \cuenta[5]~18_combout\,
	cout => \cuenta[5]~19\);

-- Location: FF_X18_Y1_N19
\cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cuenta[5]~18_combout\,
	clrn => \ALT_INV_ARST_CONT~inputclkctrl_outclk\,
	sclr => \SRST_CONT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(5));

-- Location: LCCOMB_X18_Y1_N20
\cuenta[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[6]~20_combout\ = (cuenta(6) & (\cuenta[5]~19\ $ (GND))) # (!cuenta(6) & (!\cuenta[5]~19\ & VCC))
-- \cuenta[6]~21\ = CARRY((cuenta(6) & !\cuenta[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(6),
	datad => VCC,
	cin => \cuenta[5]~19\,
	combout => \cuenta[6]~20_combout\,
	cout => \cuenta[6]~21\);

-- Location: FF_X18_Y1_N21
\cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cuenta[6]~20_combout\,
	clrn => \ALT_INV_ARST_CONT~inputclkctrl_outclk\,
	sclr => \SRST_CONT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(6));

-- Location: LCCOMB_X18_Y1_N22
\cuenta[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[7]~22_combout\ = cuenta(7) $ (\cuenta[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(7),
	cin => \cuenta[6]~21\,
	combout => \cuenta[7]~22_combout\);

-- Location: FF_X18_Y1_N23
\cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cuenta[7]~22_combout\,
	clrn => \ALT_INV_ARST_CONT~inputclkctrl_outclk\,
	sclr => \SRST_CONT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(7));

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

ww_Qsal_cont(0) <= \Qsal_cont[0]~output_o\;

ww_Qsal_cont(1) <= \Qsal_cont[1]~output_o\;

ww_Qsal_cont(2) <= \Qsal_cont[2]~output_o\;

ww_Qsal_cont(3) <= \Qsal_cont[3]~output_o\;

ww_Qsal_cont(4) <= \Qsal_cont[4]~output_o\;

ww_Qsal_cont(5) <= \Qsal_cont[5]~output_o\;

ww_Qsal_cont(6) <= \Qsal_cont[6]~output_o\;

ww_Qsal_cont(7) <= \Qsal_cont[7]~output_o\;
END structure;


