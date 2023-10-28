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

-- DATE "10/09/2023 20:45:17"

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

ENTITY 	SP IS
    PORT (
	ARST_SP : IN std_logic;
	CLK : IN std_logic;
	INC : IN std_logic;
	DEC : IN std_logic;
	LOAD : IN std_logic;
	Din_SP : IN std_logic_vector(7 DOWNTO 0);
	Qsal_SP : OUT std_logic_vector(9 DOWNTO 0)
	);
END SP;

-- Design Ports Information
-- Qsal_SP[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[8]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qsal_SP[9]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din_SP[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARST_SP	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INC	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din_SP[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din_SP[2]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din_SP[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din_SP[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din_SP[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din_SP[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din_SP[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ARST_SP : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INC : std_logic;
SIGNAL ww_DEC : std_logic;
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_Din_SP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Qsal_SP : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ARST_SP~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Qsal_SP[0]~output_o\ : std_logic;
SIGNAL \Qsal_SP[1]~output_o\ : std_logic;
SIGNAL \Qsal_SP[2]~output_o\ : std_logic;
SIGNAL \Qsal_SP[3]~output_o\ : std_logic;
SIGNAL \Qsal_SP[4]~output_o\ : std_logic;
SIGNAL \Qsal_SP[5]~output_o\ : std_logic;
SIGNAL \Qsal_SP[6]~output_o\ : std_logic;
SIGNAL \Qsal_SP[7]~output_o\ : std_logic;
SIGNAL \Qsal_SP[8]~output_o\ : std_logic;
SIGNAL \Qsal_SP[9]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SP[0]~8_combout\ : std_logic;
SIGNAL \Din_SP[0]~input_o\ : std_logic;
SIGNAL \ARST_SP~input_o\ : std_logic;
SIGNAL \ARST_SP~inputclkctrl_outclk\ : std_logic;
SIGNAL \INC~input_o\ : std_logic;
SIGNAL \DEC~input_o\ : std_logic;
SIGNAL \SP[0]~10_combout\ : std_logic;
SIGNAL \LOAD~input_o\ : std_logic;
SIGNAL \SP[0]~11_combout\ : std_logic;
SIGNAL \SP[0]~9\ : std_logic;
SIGNAL \SP[1]~12_combout\ : std_logic;
SIGNAL \Din_SP[1]~input_o\ : std_logic;
SIGNAL \SP[1]~13\ : std_logic;
SIGNAL \SP[2]~14_combout\ : std_logic;
SIGNAL \Din_SP[2]~input_o\ : std_logic;
SIGNAL \SP[2]~15\ : std_logic;
SIGNAL \SP[3]~16_combout\ : std_logic;
SIGNAL \Din_SP[3]~input_o\ : std_logic;
SIGNAL \SP[3]~17\ : std_logic;
SIGNAL \SP[4]~18_combout\ : std_logic;
SIGNAL \Din_SP[4]~input_o\ : std_logic;
SIGNAL \SP[4]~19\ : std_logic;
SIGNAL \SP[5]~20_combout\ : std_logic;
SIGNAL \Din_SP[5]~input_o\ : std_logic;
SIGNAL \SP[5]~21\ : std_logic;
SIGNAL \SP[6]~22_combout\ : std_logic;
SIGNAL \Din_SP[6]~input_o\ : std_logic;
SIGNAL \SP[6]~23\ : std_logic;
SIGNAL \SP[7]~24_combout\ : std_logic;
SIGNAL \Din_SP[7]~input_o\ : std_logic;
SIGNAL SP : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_ARST_SP~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ARST_SP <= ARST_SP;
ww_CLK <= CLK;
ww_INC <= INC;
ww_DEC <= DEC;
ww_LOAD <= LOAD;
ww_Din_SP <= Din_SP;
Qsal_SP <= ww_Qsal_SP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\ARST_SP~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ARST_SP~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_ARST_SP~inputclkctrl_outclk\ <= NOT \ARST_SP~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X49_Y0_N9
\Qsal_SP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SP(0),
	devoe => ww_devoe,
	o => \Qsal_SP[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Qsal_SP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SP(1),
	devoe => ww_devoe,
	o => \Qsal_SP[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\Qsal_SP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SP(2),
	devoe => ww_devoe,
	o => \Qsal_SP[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\Qsal_SP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SP(3),
	devoe => ww_devoe,
	o => \Qsal_SP[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Qsal_SP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SP(4),
	devoe => ww_devoe,
	o => \Qsal_SP[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\Qsal_SP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SP(5),
	devoe => ww_devoe,
	o => \Qsal_SP[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\Qsal_SP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SP(6),
	devoe => ww_devoe,
	o => \Qsal_SP[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\Qsal_SP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SP(7),
	devoe => ww_devoe,
	o => \Qsal_SP[7]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\Qsal_SP[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Qsal_SP[8]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Qsal_SP[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Qsal_SP[9]~output_o\);

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

-- Location: LCCOMB_X51_Y1_N8
\SP[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[0]~8_combout\ = SP(0) $ (VCC)
-- \SP[0]~9\ = CARRY(SP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SP(0),
	datad => VCC,
	combout => \SP[0]~8_combout\,
	cout => \SP[0]~9\);

-- Location: IOIBUF_X54_Y0_N8
\Din_SP[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din_SP(0),
	o => \Din_SP[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\ARST_SP~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARST_SP,
	o => \ARST_SP~input_o\);

-- Location: CLKCTRL_G4
\ARST_SP~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ARST_SP~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ARST_SP~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y0_N8
\INC~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INC,
	o => \INC~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\DEC~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEC,
	o => \DEC~input_o\);

-- Location: LCCOMB_X51_Y1_N28
\SP[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[0]~10_combout\ = (!\INC~input_o\ & !\DEC~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INC~input_o\,
	datad => \DEC~input_o\,
	combout => \SP[0]~10_combout\);

-- Location: IOIBUF_X51_Y0_N1
\LOAD~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD,
	o => \LOAD~input_o\);

-- Location: LCCOMB_X51_Y1_N30
\SP[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[0]~11_combout\ = (\INC~input_o\ & (!\LOAD~input_o\ & !\DEC~input_o\)) # (!\INC~input_o\ & (\LOAD~input_o\ $ (\DEC~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INC~input_o\,
	datac => \LOAD~input_o\,
	datad => \DEC~input_o\,
	combout => \SP[0]~11_combout\);

-- Location: FF_X51_Y1_N9
\SP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SP[0]~8_combout\,
	asdata => \Din_SP[0]~input_o\,
	clrn => \ALT_INV_ARST_SP~inputclkctrl_outclk\,
	sload => \SP[0]~10_combout\,
	ena => \SP[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(0));

-- Location: LCCOMB_X51_Y1_N10
\SP[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[1]~12_combout\ = (SP(1) & ((\DEC~input_o\ & (\SP[0]~9\ & VCC)) # (!\DEC~input_o\ & (!\SP[0]~9\)))) # (!SP(1) & ((\DEC~input_o\ & (!\SP[0]~9\)) # (!\DEC~input_o\ & ((\SP[0]~9\) # (GND)))))
-- \SP[1]~13\ = CARRY((SP(1) & (!\DEC~input_o\ & !\SP[0]~9\)) # (!SP(1) & ((!\SP[0]~9\) # (!\DEC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SP(1),
	datab => \DEC~input_o\,
	datad => VCC,
	cin => \SP[0]~9\,
	combout => \SP[1]~12_combout\,
	cout => \SP[1]~13\);

-- Location: IOIBUF_X49_Y0_N22
\Din_SP[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din_SP(1),
	o => \Din_SP[1]~input_o\);

-- Location: FF_X51_Y1_N11
\SP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SP[1]~12_combout\,
	asdata => \Din_SP[1]~input_o\,
	clrn => \ALT_INV_ARST_SP~inputclkctrl_outclk\,
	sload => \SP[0]~10_combout\,
	ena => \SP[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(1));

-- Location: LCCOMB_X51_Y1_N12
\SP[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[2]~14_combout\ = ((SP(2) $ (\DEC~input_o\ $ (!\SP[1]~13\)))) # (GND)
-- \SP[2]~15\ = CARRY((SP(2) & ((\DEC~input_o\) # (!\SP[1]~13\))) # (!SP(2) & (\DEC~input_o\ & !\SP[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SP(2),
	datab => \DEC~input_o\,
	datad => VCC,
	cin => \SP[1]~13\,
	combout => \SP[2]~14_combout\,
	cout => \SP[2]~15\);

-- Location: IOIBUF_X51_Y0_N29
\Din_SP[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din_SP(2),
	o => \Din_SP[2]~input_o\);

-- Location: FF_X51_Y1_N13
\SP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SP[2]~14_combout\,
	asdata => \Din_SP[2]~input_o\,
	clrn => \ALT_INV_ARST_SP~inputclkctrl_outclk\,
	sload => \SP[0]~10_combout\,
	ena => \SP[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(2));

-- Location: LCCOMB_X51_Y1_N14
\SP[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[3]~16_combout\ = (\DEC~input_o\ & ((SP(3) & (\SP[2]~15\ & VCC)) # (!SP(3) & (!\SP[2]~15\)))) # (!\DEC~input_o\ & ((SP(3) & (!\SP[2]~15\)) # (!SP(3) & ((\SP[2]~15\) # (GND)))))
-- \SP[3]~17\ = CARRY((\DEC~input_o\ & (!SP(3) & !\SP[2]~15\)) # (!\DEC~input_o\ & ((!\SP[2]~15\) # (!SP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEC~input_o\,
	datab => SP(3),
	datad => VCC,
	cin => \SP[2]~15\,
	combout => \SP[3]~16_combout\,
	cout => \SP[3]~17\);

-- Location: IOIBUF_X56_Y0_N8
\Din_SP[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din_SP(3),
	o => \Din_SP[3]~input_o\);

-- Location: FF_X51_Y1_N15
\SP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SP[3]~16_combout\,
	asdata => \Din_SP[3]~input_o\,
	clrn => \ALT_INV_ARST_SP~inputclkctrl_outclk\,
	sload => \SP[0]~10_combout\,
	ena => \SP[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(3));

-- Location: LCCOMB_X51_Y1_N16
\SP[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[4]~18_combout\ = ((\DEC~input_o\ $ (SP(4) $ (!\SP[3]~17\)))) # (GND)
-- \SP[4]~19\ = CARRY((\DEC~input_o\ & ((SP(4)) # (!\SP[3]~17\))) # (!\DEC~input_o\ & (SP(4) & !\SP[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEC~input_o\,
	datab => SP(4),
	datad => VCC,
	cin => \SP[3]~17\,
	combout => \SP[4]~18_combout\,
	cout => \SP[4]~19\);

-- Location: IOIBUF_X54_Y0_N1
\Din_SP[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din_SP(4),
	o => \Din_SP[4]~input_o\);

-- Location: FF_X51_Y1_N17
\SP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SP[4]~18_combout\,
	asdata => \Din_SP[4]~input_o\,
	clrn => \ALT_INV_ARST_SP~inputclkctrl_outclk\,
	sload => \SP[0]~10_combout\,
	ena => \SP[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(4));

-- Location: LCCOMB_X51_Y1_N18
\SP[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[5]~20_combout\ = (\DEC~input_o\ & ((SP(5) & (\SP[4]~19\ & VCC)) # (!SP(5) & (!\SP[4]~19\)))) # (!\DEC~input_o\ & ((SP(5) & (!\SP[4]~19\)) # (!SP(5) & ((\SP[4]~19\) # (GND)))))
-- \SP[5]~21\ = CARRY((\DEC~input_o\ & (!SP(5) & !\SP[4]~19\)) # (!\DEC~input_o\ & ((!\SP[4]~19\) # (!SP(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEC~input_o\,
	datab => SP(5),
	datad => VCC,
	cin => \SP[4]~19\,
	combout => \SP[5]~20_combout\,
	cout => \SP[5]~21\);

-- Location: IOIBUF_X54_Y0_N15
\Din_SP[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din_SP(5),
	o => \Din_SP[5]~input_o\);

-- Location: FF_X51_Y1_N19
\SP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SP[5]~20_combout\,
	asdata => \Din_SP[5]~input_o\,
	clrn => \ALT_INV_ARST_SP~inputclkctrl_outclk\,
	sload => \SP[0]~10_combout\,
	ena => \SP[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(5));

-- Location: LCCOMB_X51_Y1_N20
\SP[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[6]~22_combout\ = ((\DEC~input_o\ $ (SP(6) $ (!\SP[5]~21\)))) # (GND)
-- \SP[6]~23\ = CARRY((\DEC~input_o\ & ((SP(6)) # (!\SP[5]~21\))) # (!\DEC~input_o\ & (SP(6) & !\SP[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEC~input_o\,
	datab => SP(6),
	datad => VCC,
	cin => \SP[5]~21\,
	combout => \SP[6]~22_combout\,
	cout => \SP[6]~23\);

-- Location: IOIBUF_X49_Y0_N29
\Din_SP[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din_SP(6),
	o => \Din_SP[6]~input_o\);

-- Location: FF_X51_Y1_N21
\SP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SP[6]~22_combout\,
	asdata => \Din_SP[6]~input_o\,
	clrn => \ALT_INV_ARST_SP~inputclkctrl_outclk\,
	sload => \SP[0]~10_combout\,
	ena => \SP[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(6));

-- Location: LCCOMB_X51_Y1_N22
\SP[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP[7]~24_combout\ = SP(7) $ (\SP[6]~23\ $ (\DEC~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SP(7),
	datad => \DEC~input_o\,
	cin => \SP[6]~23\,
	combout => \SP[7]~24_combout\);

-- Location: IOIBUF_X51_Y0_N15
\Din_SP[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din_SP(7),
	o => \Din_SP[7]~input_o\);

-- Location: FF_X51_Y1_N23
\SP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SP[7]~24_combout\,
	asdata => \Din_SP[7]~input_o\,
	clrn => \ALT_INV_ARST_SP~inputclkctrl_outclk\,
	sload => \SP[0]~10_combout\,
	ena => \SP[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(7));

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

ww_Qsal_SP(0) <= \Qsal_SP[0]~output_o\;

ww_Qsal_SP(1) <= \Qsal_SP[1]~output_o\;

ww_Qsal_SP(2) <= \Qsal_SP[2]~output_o\;

ww_Qsal_SP(3) <= \Qsal_SP[3]~output_o\;

ww_Qsal_SP(4) <= \Qsal_SP[4]~output_o\;

ww_Qsal_SP(5) <= \Qsal_SP[5]~output_o\;

ww_Qsal_SP(6) <= \Qsal_SP[6]~output_o\;

ww_Qsal_SP(7) <= \Qsal_SP[7]~output_o\;

ww_Qsal_SP(8) <= \Qsal_SP[8]~output_o\;

ww_Qsal_SP(9) <= \Qsal_SP[9]~output_o\;
END structure;


