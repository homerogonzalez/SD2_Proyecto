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

-- DATE "10/09/2023 19:09:25"

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

ENTITY 	PC IS
    PORT (
	ARST_PC : IN std_logic;
	CLK : IN std_logic;
	MBR : IN std_logic_vector(7 DOWNTO 0);
	MBRAux : IN std_logic_vector(1 DOWNTO 0);
	LOAD : IN std_logic;
	INC : IN std_logic;
	PCH : OUT std_logic_vector(1 DOWNTO 0);
	PCL : OUT std_logic_vector(7 DOWNTO 0)
	);
END PC;

-- Design Ports Information
-- PCH[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCH[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCL[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCL[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCL[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCL[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCL[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCL[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCL[6]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCL[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBRAux[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARST_PC	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INC	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBRAux[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[5]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MBR[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ARST_PC : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MBR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MBRAux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_INC : std_logic;
SIGNAL ww_PCH : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PCL : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ARST_PC~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \PCH[0]~output_o\ : std_logic;
SIGNAL \PCH[1]~output_o\ : std_logic;
SIGNAL \PCL[0]~output_o\ : std_logic;
SIGNAL \PCL[1]~output_o\ : std_logic;
SIGNAL \PCL[2]~output_o\ : std_logic;
SIGNAL \PCL[3]~output_o\ : std_logic;
SIGNAL \PCL[4]~output_o\ : std_logic;
SIGNAL \PCL[5]~output_o\ : std_logic;
SIGNAL \PCL[6]~output_o\ : std_logic;
SIGNAL \PCL[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC[0]~10_combout\ : std_logic;
SIGNAL \MBR[0]~input_o\ : std_logic;
SIGNAL \ARST_PC~input_o\ : std_logic;
SIGNAL \ARST_PC~inputclkctrl_outclk\ : std_logic;
SIGNAL \LOAD~input_o\ : std_logic;
SIGNAL \INC~input_o\ : std_logic;
SIGNAL \PC[8]~28_combout\ : std_logic;
SIGNAL \PC[0]~11\ : std_logic;
SIGNAL \PC[1]~12_combout\ : std_logic;
SIGNAL \MBR[1]~input_o\ : std_logic;
SIGNAL \PC[1]~13\ : std_logic;
SIGNAL \PC[2]~14_combout\ : std_logic;
SIGNAL \MBR[2]~input_o\ : std_logic;
SIGNAL \PC[2]~15\ : std_logic;
SIGNAL \PC[3]~16_combout\ : std_logic;
SIGNAL \MBR[3]~input_o\ : std_logic;
SIGNAL \PC[3]~17\ : std_logic;
SIGNAL \PC[4]~18_combout\ : std_logic;
SIGNAL \MBR[4]~input_o\ : std_logic;
SIGNAL \PC[4]~19\ : std_logic;
SIGNAL \PC[5]~20_combout\ : std_logic;
SIGNAL \MBR[5]~input_o\ : std_logic;
SIGNAL \PC[5]~21\ : std_logic;
SIGNAL \PC[6]~22_combout\ : std_logic;
SIGNAL \MBR[6]~input_o\ : std_logic;
SIGNAL \PC[6]~23\ : std_logic;
SIGNAL \PC[7]~24_combout\ : std_logic;
SIGNAL \MBR[7]~input_o\ : std_logic;
SIGNAL \PC[7]~25\ : std_logic;
SIGNAL \PC[8]~26_combout\ : std_logic;
SIGNAL \MBRAux[0]~input_o\ : std_logic;
SIGNAL \PC[8]~27\ : std_logic;
SIGNAL \PC[9]~29_combout\ : std_logic;
SIGNAL \MBRAux[1]~input_o\ : std_logic;
SIGNAL PC : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_ARST_PC~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ARST_PC <= ARST_PC;
ww_CLK <= CLK;
ww_MBR <= MBR;
ww_MBRAux <= MBRAux;
ww_LOAD <= LOAD;
ww_INC <= INC;
PCH <= ww_PCH;
PCL <= ww_PCL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\ARST_PC~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ARST_PC~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_ARST_PC~inputclkctrl_outclk\ <= NOT \ARST_PC~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X0_Y30_N2
\PCH[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(8),
	devoe => ww_devoe,
	o => \PCH[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\PCH[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(9),
	devoe => ww_devoe,
	o => \PCH[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\PCL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(0),
	devoe => ww_devoe,
	o => \PCL[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\PCL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(1),
	devoe => ww_devoe,
	o => \PCL[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\PCL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(2),
	devoe => ww_devoe,
	o => \PCL[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\PCL[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(3),
	devoe => ww_devoe,
	o => \PCL[3]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\PCL[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(4),
	devoe => ww_devoe,
	o => \PCL[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\PCL[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(5),
	devoe => ww_devoe,
	o => \PCL[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\PCL[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(6),
	devoe => ww_devoe,
	o => \PCL[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\PCL[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(7),
	devoe => ww_devoe,
	o => \PCL[7]~output_o\);

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

-- Location: LCCOMB_X1_Y26_N6
\PC[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[0]~10_combout\ = PC(0) $ (VCC)
-- \PC[0]~11\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datad => VCC,
	combout => \PC[0]~10_combout\,
	cout => \PC[0]~11\);

-- Location: IOIBUF_X0_Y25_N22
\MBR[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBR(0),
	o => \MBR[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\ARST_PC~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARST_PC,
	o => \ARST_PC~input_o\);

-- Location: CLKCTRL_G4
\ARST_PC~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ARST_PC~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ARST_PC~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N15
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

-- Location: IOIBUF_X0_Y25_N8
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

-- Location: LCCOMB_X1_Y26_N28
\PC[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[8]~28_combout\ = \INC~input_o\ $ (\LOAD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INC~input_o\,
	datad => \LOAD~input_o\,
	combout => \PC[8]~28_combout\);

-- Location: FF_X1_Y26_N7
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[0]~10_combout\,
	asdata => \MBR[0]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X1_Y26_N8
\PC[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[1]~12_combout\ = (PC(1) & (!\PC[0]~11\)) # (!PC(1) & ((\PC[0]~11\) # (GND)))
-- \PC[1]~13\ = CARRY((!\PC[0]~11\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \PC[0]~11\,
	combout => \PC[1]~12_combout\,
	cout => \PC[1]~13\);

-- Location: IOIBUF_X0_Y26_N15
\MBR[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBR(1),
	o => \MBR[1]~input_o\);

-- Location: FF_X1_Y26_N9
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[1]~12_combout\,
	asdata => \MBR[1]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X1_Y26_N10
\PC[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[2]~14_combout\ = (PC(2) & (\PC[1]~13\ $ (GND))) # (!PC(2) & (!\PC[1]~13\ & VCC))
-- \PC[2]~15\ = CARRY((PC(2) & !\PC[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datad => VCC,
	cin => \PC[1]~13\,
	combout => \PC[2]~14_combout\,
	cout => \PC[2]~15\);

-- Location: IOIBUF_X0_Y26_N8
\MBR[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBR(2),
	o => \MBR[2]~input_o\);

-- Location: FF_X1_Y26_N11
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[2]~14_combout\,
	asdata => \MBR[2]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X1_Y26_N12
\PC[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[3]~16_combout\ = (PC(3) & (!\PC[2]~15\)) # (!PC(3) & ((\PC[2]~15\) # (GND)))
-- \PC[3]~17\ = CARRY((!\PC[2]~15\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datad => VCC,
	cin => \PC[2]~15\,
	combout => \PC[3]~16_combout\,
	cout => \PC[3]~17\);

-- Location: IOIBUF_X0_Y26_N22
\MBR[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBR(3),
	o => \MBR[3]~input_o\);

-- Location: FF_X1_Y26_N13
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[3]~16_combout\,
	asdata => \MBR[3]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X1_Y26_N14
\PC[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[4]~18_combout\ = (PC(4) & (\PC[3]~17\ $ (GND))) # (!PC(4) & (!\PC[3]~17\ & VCC))
-- \PC[4]~19\ = CARRY((PC(4) & !\PC[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \PC[3]~17\,
	combout => \PC[4]~18_combout\,
	cout => \PC[4]~19\);

-- Location: IOIBUF_X0_Y27_N8
\MBR[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBR(4),
	o => \MBR[4]~input_o\);

-- Location: FF_X1_Y26_N15
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[4]~18_combout\,
	asdata => \MBR[4]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X1_Y26_N16
\PC[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[5]~20_combout\ = (PC(5) & (!\PC[4]~19\)) # (!PC(5) & ((\PC[4]~19\) # (GND)))
-- \PC[5]~21\ = CARRY((!\PC[4]~19\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datad => VCC,
	cin => \PC[4]~19\,
	combout => \PC[5]~20_combout\,
	cout => \PC[5]~21\);

-- Location: IOIBUF_X0_Y23_N8
\MBR[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBR(5),
	o => \MBR[5]~input_o\);

-- Location: FF_X1_Y26_N17
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[5]~20_combout\,
	asdata => \MBR[5]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X1_Y26_N18
\PC[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[6]~22_combout\ = (PC(6) & (\PC[5]~21\ $ (GND))) # (!PC(6) & (!\PC[5]~21\ & VCC))
-- \PC[6]~23\ = CARRY((PC(6) & !\PC[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \PC[5]~21\,
	combout => \PC[6]~22_combout\,
	cout => \PC[6]~23\);

-- Location: IOIBUF_X0_Y26_N1
\MBR[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBR(6),
	o => \MBR[6]~input_o\);

-- Location: FF_X1_Y26_N19
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[6]~22_combout\,
	asdata => \MBR[6]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X1_Y26_N20
\PC[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[7]~24_combout\ = (PC(7) & (!\PC[6]~23\)) # (!PC(7) & ((\PC[6]~23\) # (GND)))
-- \PC[7]~25\ = CARRY((!\PC[6]~23\) # (!PC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(7),
	datad => VCC,
	cin => \PC[6]~23\,
	combout => \PC[7]~24_combout\,
	cout => \PC[7]~25\);

-- Location: IOIBUF_X0_Y23_N22
\MBR[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBR(7),
	o => \MBR[7]~input_o\);

-- Location: FF_X1_Y26_N21
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[7]~24_combout\,
	asdata => \MBR[7]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X1_Y26_N22
\PC[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[8]~26_combout\ = (PC(8) & (\PC[7]~25\ $ (GND))) # (!PC(8) & (!\PC[7]~25\ & VCC))
-- \PC[8]~27\ = CARRY((PC(8) & !\PC[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(8),
	datad => VCC,
	cin => \PC[7]~25\,
	combout => \PC[8]~26_combout\,
	cout => \PC[8]~27\);

-- Location: IOIBUF_X0_Y25_N1
\MBRAux[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBRAux(0),
	o => \MBRAux[0]~input_o\);

-- Location: FF_X1_Y26_N23
\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[8]~26_combout\,
	asdata => \MBRAux[0]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

-- Location: LCCOMB_X1_Y26_N24
\PC[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[9]~29_combout\ = \PC[8]~27\ $ (PC(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(9),
	cin => \PC[8]~27\,
	combout => \PC[9]~29_combout\);

-- Location: IOIBUF_X0_Y23_N1
\MBRAux[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MBRAux(1),
	o => \MBRAux[1]~input_o\);

-- Location: FF_X1_Y26_N25
\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[9]~29_combout\,
	asdata => \MBRAux[1]~input_o\,
	clrn => \ALT_INV_ARST_PC~inputclkctrl_outclk\,
	sload => \LOAD~input_o\,
	ena => \PC[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

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

ww_PCH(0) <= \PCH[0]~output_o\;

ww_PCH(1) <= \PCH[1]~output_o\;

ww_PCL(0) <= \PCL[0]~output_o\;

ww_PCL(1) <= \PCL[1]~output_o\;

ww_PCL(2) <= \PCL[2]~output_o\;

ww_PCL(3) <= \PCL[3]~output_o\;

ww_PCL(4) <= \PCL[4]~output_o\;

ww_PCL(5) <= \PCL[5]~output_o\;

ww_PCL(6) <= \PCL[6]~output_o\;

ww_PCL(7) <= \PCL[7]~output_o\;
END structure;


