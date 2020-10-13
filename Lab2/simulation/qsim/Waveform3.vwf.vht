-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "06/19/2020 20:34:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LogicalStep_Lab2_top
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LogicalStep_Lab2_top_vhd_vec_tst IS
END LogicalStep_Lab2_top_vhd_vec_tst;
ARCHITECTURE LogicalStep_Lab2_top_arch OF LogicalStep_Lab2_top_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL leds : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL pb : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT LogicalStep_Lab2_top
	PORT (
	leds : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	pb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LogicalStep_Lab2_top
	PORT MAP (
-- list connections between master ports and signals
	leds => leds,
	pb => pb,
	sw => sw
	);
-- pb[7]
t_prcs_pb_7: PROCESS
BEGIN
	pb(7) <= '0';
WAIT;
END PROCESS t_prcs_pb_7;
-- pb[6]
t_prcs_pb_6: PROCESS
BEGIN
	pb(6) <= '0';
WAIT;
END PROCESS t_prcs_pb_6;
-- pb[5]
t_prcs_pb_5: PROCESS
BEGIN
	pb(5) <= '1';
WAIT;
END PROCESS t_prcs_pb_5;
-- pb[4]
t_prcs_pb_4: PROCESS
BEGIN
	pb(4) <= '0';
WAIT;
END PROCESS t_prcs_pb_4;
-- pb[3]
t_prcs_pb_3: PROCESS
BEGIN
	pb(3) <= '1';
WAIT;
END PROCESS t_prcs_pb_3;
-- pb[2]
t_prcs_pb_2: PROCESS
BEGIN
	pb(2) <= '1';
WAIT;
END PROCESS t_prcs_pb_2;
-- pb[1]
t_prcs_pb_1: PROCESS
BEGIN
	pb(1) <= '0';
WAIT;
END PROCESS t_prcs_pb_1;
-- pb[0]
t_prcs_pb_0: PROCESS
BEGIN
	pb(0) <= '1';
WAIT;
END PROCESS t_prcs_pb_0;
-- sw[15]
t_prcs_sw_15: PROCESS
BEGIN
	sw(15) <= '1';
WAIT;
END PROCESS t_prcs_sw_15;
-- sw[14]
t_prcs_sw_14: PROCESS
BEGIN
	sw(14) <= '1';
WAIT;
END PROCESS t_prcs_sw_14;
-- sw[13]
t_prcs_sw_13: PROCESS
BEGIN
	sw(13) <= '0';
WAIT;
END PROCESS t_prcs_sw_13;
-- sw[12]
t_prcs_sw_12: PROCESS
BEGIN
	sw(12) <= '1';
WAIT;
END PROCESS t_prcs_sw_12;
-- sw[11]
t_prcs_sw_11: PROCESS
BEGIN
	sw(11) <= '0';
WAIT;
END PROCESS t_prcs_sw_11;
-- sw[10]
t_prcs_sw_10: PROCESS
BEGIN
	sw(10) <= '0';
WAIT;
END PROCESS t_prcs_sw_10;
-- sw[9]
t_prcs_sw_9: PROCESS
BEGIN
	sw(9) <= '1';
WAIT;
END PROCESS t_prcs_sw_9;
-- sw[8]
t_prcs_sw_8: PROCESS
BEGIN
	sw(8) <= '0';
WAIT;
END PROCESS t_prcs_sw_8;
-- sw[7]
t_prcs_sw_7: PROCESS
BEGIN
	sw(7) <= '1';
WAIT;
END PROCESS t_prcs_sw_7;
-- sw[6]
t_prcs_sw_6: PROCESS
BEGIN
	sw(6) <= '0';
WAIT;
END PROCESS t_prcs_sw_6;
-- sw[5]
t_prcs_sw_5: PROCESS
BEGIN
	sw(5) <= '1';
WAIT;
END PROCESS t_prcs_sw_5;
-- sw[4]
t_prcs_sw_4: PROCESS
BEGIN
	sw(4) <= '0';
WAIT;
END PROCESS t_prcs_sw_4;
-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	sw(3) <= '0';
WAIT;
END PROCESS t_prcs_sw_3;
-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '0';
WAIT;
END PROCESS t_prcs_sw_2;
-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_1;
-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '0';
WAIT;
END PROCESS t_prcs_sw_0;
END LogicalStep_Lab2_top_arch;
