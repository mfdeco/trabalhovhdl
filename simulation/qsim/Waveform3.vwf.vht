-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "07/11/2023 14:19:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULAV2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULAV2_vhd_vec_tst IS
END ULAV2_vhd_vec_tst;
ARCHITECTURE ULAV2_arch OF ULAV2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL carryout : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL f : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL sinal : STD_LOGIC;
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL zeros : STD_LOGIC;
COMPONENT ULAV2
	PORT (
	carryout : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	D : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	f : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	overflow : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC;
	sinal : BUFFER STD_LOGIC;
	Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	zeros : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ULAV2
	PORT MAP (
-- list connections between master ports and signals
	carryout => carryout,
	clk => clk,
	D => D,
	f => f,
	overflow => overflow,
	rst => rst,
	sinal => sinal,
	Y => Y,
	zeros => zeros
	);
-- f[2]
t_prcs_f_2: PROCESS
BEGIN
	f(2) <= '1';
	WAIT FOR 100000 ps;
	f(2) <= '0';
	WAIT FOR 50000 ps;
	f(2) <= '1';
	WAIT FOR 50000 ps;
	f(2) <= '0';
	WAIT FOR 50000 ps;
	f(2) <= '1';
	WAIT FOR 200000 ps;
	f(2) <= '0';
	WAIT FOR 50000 ps;
	f(2) <= '1';
	WAIT FOR 50000 ps;
	f(2) <= '0';
	WAIT FOR 50000 ps;
	f(2) <= '1';
	WAIT FOR 150000 ps;
	f(2) <= '0';
	WAIT FOR 100000 ps;
	f(2) <= '1';
	WAIT FOR 50000 ps;
	f(2) <= '0';
WAIT;
END PROCESS t_prcs_f_2;
-- f[1]
t_prcs_f_1: PROCESS
BEGIN
	f(1) <= '1';
	WAIT FOR 50000 ps;
	f(1) <= '0';
	WAIT FOR 50000 ps;
	f(1) <= '1';
	WAIT FOR 50000 ps;
	f(1) <= '0';
	WAIT FOR 100000 ps;
	f(1) <= '1';
	WAIT FOR 50000 ps;
	f(1) <= '0';
	WAIT FOR 50000 ps;
	f(1) <= '1';
	WAIT FOR 50000 ps;
	f(1) <= '0';
	WAIT FOR 100000 ps;
	f(1) <= '1';
	WAIT FOR 50000 ps;
	f(1) <= '0';
	WAIT FOR 100000 ps;
	f(1) <= '1';
	WAIT FOR 100000 ps;
	f(1) <= '0';
	WAIT FOR 50000 ps;
	f(1) <= '1';
	WAIT FOR 150000 ps;
	f(1) <= '0';
WAIT;
END PROCESS t_prcs_f_1;
-- f[0]
t_prcs_f_0: PROCESS
BEGIN
	f(0) <= '1';
	WAIT FOR 50000 ps;
	f(0) <= '0';
	WAIT FOR 100000 ps;
	f(0) <= '1';
	WAIT FOR 50000 ps;
	f(0) <= '0';
	WAIT FOR 100000 ps;
	f(0) <= '1';
	WAIT FOR 50000 ps;
	f(0) <= '0';
	WAIT FOR 150000 ps;
	f(0) <= '1';
	WAIT FOR 50000 ps;
	f(0) <= '0';
	WAIT FOR 100000 ps;
	f(0) <= '1';
	WAIT FOR 50000 ps;
	f(0) <= '0';
	WAIT FOR 50000 ps;
	f(0) <= '1';
	WAIT FOR 50000 ps;
	f(0) <= '0';
	WAIT FOR 100000 ps;
	f(0) <= '1';
WAIT;
END PROCESS t_prcs_f_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- Y[3]
t_prcs_Y_3: PROCESS
BEGIN
	Y(3) <= '1';
	WAIT FOR 50000 ps;
	Y(3) <= '0';
	WAIT FOR 50000 ps;
	Y(3) <= '1';
	WAIT FOR 250000 ps;
	Y(3) <= '0';
	WAIT FOR 50000 ps;
	Y(3) <= '1';
	WAIT FOR 50000 ps;
	Y(3) <= '0';
	WAIT FOR 50000 ps;
	Y(3) <= '1';
	WAIT FOR 50000 ps;
	Y(3) <= '0';
	WAIT FOR 150000 ps;
	Y(3) <= '1';
	WAIT FOR 150000 ps;
	Y(3) <= '0';
WAIT;
END PROCESS t_prcs_Y_3;
-- Y[2]
t_prcs_Y_2: PROCESS
BEGIN
	Y(2) <= '0';
	WAIT FOR 100000 ps;
	Y(2) <= '1';
	WAIT FOR 100000 ps;
	Y(2) <= '0';
	WAIT FOR 50000 ps;
	Y(2) <= '1';
	WAIT FOR 50000 ps;
	Y(2) <= '0';
	WAIT FOR 100000 ps;
	Y(2) <= '1';
	WAIT FOR 50000 ps;
	Y(2) <= '0';
	WAIT FOR 50000 ps;
	Y(2) <= '1';
	WAIT FOR 100000 ps;
	Y(2) <= '0';
	WAIT FOR 50000 ps;
	Y(2) <= '1';
	WAIT FOR 150000 ps;
	Y(2) <= '0';
	WAIT FOR 50000 ps;
	Y(2) <= '1';
	WAIT FOR 100000 ps;
	Y(2) <= '0';
WAIT;
END PROCESS t_prcs_Y_2;
-- Y[1]
t_prcs_Y_1: PROCESS
BEGIN
	Y(1) <= '0';
	WAIT FOR 50000 ps;
	Y(1) <= '1';
	WAIT FOR 50000 ps;
	Y(1) <= '0';
	WAIT FOR 50000 ps;
	Y(1) <= '1';
	WAIT FOR 50000 ps;
	Y(1) <= '0';
	WAIT FOR 50000 ps;
	Y(1) <= '1';
	WAIT FOR 150000 ps;
	Y(1) <= '0';
	WAIT FOR 50000 ps;
	Y(1) <= '1';
	WAIT FOR 150000 ps;
	Y(1) <= '0';
	WAIT FOR 100000 ps;
	Y(1) <= '1';
	WAIT FOR 150000 ps;
	Y(1) <= '0';
	WAIT FOR 50000 ps;
	Y(1) <= '1';
WAIT;
END PROCESS t_prcs_Y_1;
-- Y[0]
t_prcs_Y_0: PROCESS
BEGIN
	Y(0) <= '1';
	WAIT FOR 100000 ps;
	Y(0) <= '0';
	WAIT FOR 50000 ps;
	Y(0) <= '1';
	WAIT FOR 50000 ps;
	Y(0) <= '0';
	WAIT FOR 50000 ps;
	Y(0) <= '1';
	WAIT FOR 50000 ps;
	Y(0) <= '0';
	WAIT FOR 50000 ps;
	Y(0) <= '1';
	WAIT FOR 50000 ps;
	Y(0) <= '0';
	WAIT FOR 100000 ps;
	Y(0) <= '1';
	WAIT FOR 50000 ps;
	Y(0) <= '0';
	WAIT FOR 150000 ps;
	Y(0) <= '1';
	WAIT FOR 100000 ps;
	Y(0) <= '0';
	WAIT FOR 50000 ps;
	Y(0) <= '1';
	WAIT FOR 50000 ps;
	Y(0) <= '0';
	WAIT FOR 50000 ps;
	Y(0) <= '1';
WAIT;
END PROCESS t_prcs_Y_0;
END ULAV2_arch;
