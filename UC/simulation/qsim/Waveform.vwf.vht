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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/28/2023 18:38:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UC_vhd_vec_tst IS
END UC_vhd_vec_tst;
ARCHITECTURE UC_arch OF UC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RW : STD_LOGIC;
SIGNAL T : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Xout : STD_LOGIC_VECTOR(0 TO 19);
SIGNAL Z : STD_LOGIC;
COMPONENT UC
	PORT (
	C : IN STD_LOGIC;
	q : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RW : OUT STD_LOGIC;
	T : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Xout : OUT STD_LOGIC_VECTOR(0 TO 19);
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UC
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	q => q,
	RW => RW,
	T => T,
	Xout => Xout,
	Z => Z
	);
-- T[3]
t_prcs_T_3: PROCESS
BEGIN
	T(3) <= '0';
	WAIT FOR 80000 ps;
	T(3) <= '1';
	WAIT FOR 20000 ps;
	T(3) <= '0';
	WAIT FOR 80000 ps;
	T(3) <= '1';
	WAIT FOR 20000 ps;
	T(3) <= '0';
WAIT;
END PROCESS t_prcs_T_3;
-- T[2]
t_prcs_T_2: PROCESS
BEGIN
	T(2) <= '0';
	WAIT FOR 40000 ps;
	T(2) <= '1';
	WAIT FOR 40000 ps;
	T(2) <= '0';
	WAIT FOR 60000 ps;
	T(2) <= '1';
	WAIT FOR 40000 ps;
	T(2) <= '0';
WAIT;
END PROCESS t_prcs_T_2;
-- T[1]
t_prcs_T_1: PROCESS
BEGIN
	T(1) <= '0';
	WAIT FOR 20000 ps;
	T(1) <= '1';
	WAIT FOR 20000 ps;
	T(1) <= '0';
	WAIT FOR 20000 ps;
	T(1) <= '1';
	WAIT FOR 20000 ps;
	T(1) <= '0';
	WAIT FOR 40000 ps;
	T(1) <= '1';
	WAIT FOR 20000 ps;
	T(1) <= '0';
	WAIT FOR 20000 ps;
	T(1) <= '1';
	WAIT FOR 20000 ps;
	T(1) <= '0';
WAIT;
END PROCESS t_prcs_T_1;
-- T[0]
t_prcs_T_0: PROCESS
BEGIN
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
	WAIT FOR 10000 ps;
	T(0) <= '1';
	WAIT FOR 10000 ps;
	T(0) <= '0';
WAIT;
END PROCESS t_prcs_T_0;
-- q[3]
t_prcs_q_3: PROCESS
BEGIN
	q(3) <= '1';
	WAIT FOR 200000 ps;
	q(3) <= '0';
WAIT;
END PROCESS t_prcs_q_3;
-- q[2]
t_prcs_q_2: PROCESS
BEGIN
	q(2) <= '1';
	WAIT FOR 200000 ps;
	q(2) <= '0';
WAIT;
END PROCESS t_prcs_q_2;
-- q[1]
t_prcs_q_1: PROCESS
BEGIN
	q(1) <= '0';
WAIT;
END PROCESS t_prcs_q_1;
-- q[0]
t_prcs_q_0: PROCESS
BEGIN
	q(0) <= '0';
	WAIT FOR 200000 ps;
	q(0) <= '1';
	WAIT FOR 50000 ps;
	q(0) <= '0';
WAIT;
END PROCESS t_prcs_q_0;

-- Z
t_prcs_Z: PROCESS
BEGIN
	Z <= '0';
WAIT;
END PROCESS t_prcs_Z;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
	WAIT FOR 110000 ps;
	C <= '1';
	WAIT FOR 90000 ps;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;
END UC_arch;
