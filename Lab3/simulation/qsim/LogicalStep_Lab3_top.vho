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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/12/2020 20:33:18"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clk_in : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END LogicalStep_Lab3_top;

ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(11 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \leds[10]~output_o\ : std_logic;
SIGNAL \leds[11]~output_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \inst1|hex_out[3]~0_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \inst1|hex_out[2]~1_combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \inst2|counter:cnt[2]~1_combout\ : std_logic;
SIGNAL \inst2|counter:cnt[1]~4\ : std_logic;
SIGNAL \inst2|counter:cnt[2]~3\ : std_logic;
SIGNAL \inst2|counter:cnt[3]~1_combout\ : std_logic;
SIGNAL \inst2|counter:cnt[3]~q\ : std_logic;
SIGNAL \inst3|compx4_lt~0_combout\ : std_logic;
SIGNAL \inst3|compx4_gt~2_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst1|hex_out[0]~3_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \inst1|hex_out[1]~2_combout\ : std_logic;
SIGNAL \inst3|compx4_lt~1_combout\ : std_logic;
SIGNAL \inst3|compx4_lt~2_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|counter:cnt[2]~4_combout\ : std_logic;
SIGNAL \inst2|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \inst2|counter:cnt[0]~q\ : std_logic;
SIGNAL \inst2|counter:cnt[1]~2_cout\ : std_logic;
SIGNAL \inst2|counter:cnt[1]~3_combout\ : std_logic;
SIGNAL \inst2|counter:cnt[1]~q\ : std_logic;
SIGNAL \inst2|counter~0_combout\ : std_logic;
SIGNAL \inst3|compx4_gt~1_combout\ : std_logic;
SIGNAL \inst2|counter~1_combout\ : std_logic;
SIGNAL \inst2|counter:cnt[2]~2_combout\ : std_logic;
SIGNAL \inst2|counter:cnt[2]~q\ : std_logic;
SIGNAL \inst3|compx4_gt~0_combout\ : std_logic;
SIGNAL \inst3|compx4_gt~3_combout\ : std_logic;
SIGNAL \inst3|inst3|compx1_eq~0_combout\ : std_logic;
SIGNAL \inst3|compx4_eq~0_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~0_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~1_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~2_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~3_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~4_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~5_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~6_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~7_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~8_combout\ : std_logic;
SIGNAL \inst4|TEST_PASS~9_combout\ : std_logic;
SIGNAL \inst5|leds\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst5|ALT_INV_leds\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \inst3|ALT_INV_compx4_eq~0_combout\ : std_logic;

BEGIN

ww_clk_in <= clk_in;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst5|ALT_INV_leds\(3) <= NOT \inst5|leds\(3);
\inst3|ALT_INV_compx4_eq~0_combout\ <= NOT \inst3|compx4_eq~0_combout\;

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|compx4_gt~3_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_compx4_eq~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|compx4_lt~2_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_leds\(3),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|TEST_PASS~9_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|counter:cnt[0]~q\,
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|counter:cnt[1]~q\,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|counter:cnt[2]~q\,
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|counter:cnt[3]~q\,
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

\inst1|hex_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|hex_out[3]~0_combout\ = (\pb[3]~input_o\ & (\sw[7]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[3]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \inst1|hex_out[3]~0_combout\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\inst1|hex_out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|hex_out[2]~1_combout\ = (\pb[3]~input_o\ & (\sw[6]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[2]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \inst1|hex_out[2]~1_combout\);

\clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

\inst2|counter:cnt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter:cnt[2]~1_combout\ = (!\pb[0]~input_o\ & (!\pb[1]~input_o\ & !\pb[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[0]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \inst2|counter:cnt[2]~1_combout\);

\inst2|counter:cnt[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter:cnt[1]~3_combout\ = (\inst2|counter:cnt[1]~q\ & ((\inst2|counter~1_combout\ & (!\inst2|counter:cnt[1]~2_cout\)) # (!\inst2|counter~1_combout\ & (\inst2|counter:cnt[1]~2_cout\ & VCC)))) # (!\inst2|counter:cnt[1]~q\ & 
-- ((\inst2|counter~1_combout\ & ((\inst2|counter:cnt[1]~2_cout\) # (GND))) # (!\inst2|counter~1_combout\ & (!\inst2|counter:cnt[1]~2_cout\))))
-- \inst2|counter:cnt[1]~4\ = CARRY((\inst2|counter:cnt[1]~q\ & (\inst2|counter~1_combout\ & !\inst2|counter:cnt[1]~2_cout\)) # (!\inst2|counter:cnt[1]~q\ & ((\inst2|counter~1_combout\) # (!\inst2|counter:cnt[1]~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[1]~q\,
	datab => \inst2|counter~1_combout\,
	datad => VCC,
	cin => \inst2|counter:cnt[1]~2_cout\,
	combout => \inst2|counter:cnt[1]~3_combout\,
	cout => \inst2|counter:cnt[1]~4\);

\inst2|counter:cnt[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter:cnt[2]~2_combout\ = ((\inst2|counter:cnt[2]~q\ $ (\inst2|counter~1_combout\ $ (\inst2|counter:cnt[1]~4\)))) # (GND)
-- \inst2|counter:cnt[2]~3\ = CARRY((\inst2|counter:cnt[2]~q\ & ((!\inst2|counter:cnt[1]~4\) # (!\inst2|counter~1_combout\))) # (!\inst2|counter:cnt[2]~q\ & (!\inst2|counter~1_combout\ & !\inst2|counter:cnt[1]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[2]~q\,
	datab => \inst2|counter~1_combout\,
	datad => VCC,
	cin => \inst2|counter:cnt[1]~4\,
	combout => \inst2|counter:cnt[2]~2_combout\,
	cout => \inst2|counter:cnt[2]~3\);

\inst2|counter:cnt[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter:cnt[3]~1_combout\ = \inst2|counter:cnt[3]~q\ $ (\inst2|counter~1_combout\ $ (!\inst2|counter:cnt[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[3]~q\,
	datab => \inst2|counter~1_combout\,
	cin => \inst2|counter:cnt[2]~3\,
	combout => \inst2|counter:cnt[3]~1_combout\);

\inst2|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \inst2|counter:cnt[3]~1_combout\,
	ena => \inst2|counter:cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter:cnt[3]~q\);

\inst3|compx4_lt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|compx4_lt~0_combout\ = (\inst2|counter:cnt[3]~q\ & (((\inst2|counter:cnt[2]~q\ & !\inst1|hex_out[2]~1_combout\)) # (!\inst1|hex_out[3]~0_combout\))) # (!\inst2|counter:cnt[3]~q\ & (\inst2|counter:cnt[2]~q\ & (!\inst1|hex_out[2]~1_combout\ & 
-- !\inst1|hex_out[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[3]~q\,
	datab => \inst2|counter:cnt[2]~q\,
	datac => \inst1|hex_out[2]~1_combout\,
	datad => \inst1|hex_out[3]~0_combout\,
	combout => \inst3|compx4_lt~0_combout\);

\inst3|compx4_gt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|compx4_gt~2_combout\ = (\inst2|counter:cnt[3]~q\ & (\inst1|hex_out[3]~0_combout\ & (\inst2|counter:cnt[2]~q\ $ (!\inst1|hex_out[2]~1_combout\)))) # (!\inst2|counter:cnt[3]~q\ & (!\inst1|hex_out[3]~0_combout\ & (\inst2|counter:cnt[2]~q\ $ 
-- (!\inst1|hex_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[3]~q\,
	datab => \inst2|counter:cnt[2]~q\,
	datac => \inst1|hex_out[2]~1_combout\,
	datad => \inst1|hex_out[3]~0_combout\,
	combout => \inst3|compx4_gt~2_combout\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\inst1|hex_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|hex_out[0]~3_combout\ = (\pb[3]~input_o\ & (\sw[4]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \inst1|hex_out[0]~3_combout\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\inst1|hex_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|hex_out[1]~2_combout\ = (\pb[3]~input_o\ & (\sw[5]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \inst1|hex_out[1]~2_combout\);

\inst3|compx4_lt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|compx4_lt~1_combout\ = (\inst2|counter:cnt[1]~q\ & (((\inst2|counter:cnt[0]~q\ & !\inst1|hex_out[0]~3_combout\)) # (!\inst1|hex_out[1]~2_combout\))) # (!\inst2|counter:cnt[1]~q\ & (\inst2|counter:cnt[0]~q\ & (!\inst1|hex_out[0]~3_combout\ & 
-- !\inst1|hex_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[1]~q\,
	datab => \inst2|counter:cnt[0]~q\,
	datac => \inst1|hex_out[0]~3_combout\,
	datad => \inst1|hex_out[1]~2_combout\,
	combout => \inst3|compx4_lt~1_combout\);

\inst3|compx4_lt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|compx4_lt~2_combout\ = (\inst3|compx4_lt~0_combout\) # ((\inst3|compx4_gt~2_combout\ & \inst3|compx4_lt~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compx4_lt~0_combout\,
	datab => \inst3|compx4_gt~2_combout\,
	datac => \inst3|compx4_lt~1_combout\,
	combout => \inst3|compx4_lt~2_combout\);

\inst2|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (!\inst2|counter:cnt[1]~q\ & (!\inst2|counter:cnt[0]~q\ & (!\inst2|counter:cnt[3]~q\ & !\inst2|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[1]~q\,
	datab => \inst2|counter:cnt[0]~q\,
	datac => \inst2|counter:cnt[3]~q\,
	datad => \inst2|counter:cnt[2]~q\,
	combout => \inst2|Equal1~0_combout\);

\inst2|counter:cnt[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter:cnt[2]~4_combout\ = (\inst2|counter:cnt[2]~1_combout\ & ((\inst2|counter~1_combout\) # ((\inst3|compx4_lt~2_combout\ & !\inst2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[2]~1_combout\,
	datab => \inst2|counter~1_combout\,
	datac => \inst3|compx4_lt~2_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|counter:cnt[2]~4_combout\);

\inst2|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter:cnt[0]~0_combout\ = \inst2|counter:cnt[0]~q\ $ (\inst2|counter:cnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter:cnt[0]~q\,
	datad => \inst2|counter:cnt[2]~4_combout\,
	combout => \inst2|counter:cnt[0]~0_combout\);

\inst2|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \inst2|counter:cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter:cnt[0]~q\);

\inst2|counter:cnt[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter:cnt[1]~2_cout\ = CARRY(\inst2|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[0]~q\,
	datad => VCC,
	cout => \inst2|counter:cnt[1]~2_cout\);

\inst2|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \inst2|counter:cnt[1]~3_combout\,
	ena => \inst2|counter:cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter:cnt[1]~q\);

\inst2|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~0_combout\ = (((!\inst2|counter:cnt[2]~q\) # (!\inst2|counter:cnt[3]~q\)) # (!\inst2|counter:cnt[0]~q\)) # (!\inst2|counter:cnt[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[1]~q\,
	datab => \inst2|counter:cnt[0]~q\,
	datac => \inst2|counter:cnt[3]~q\,
	datad => \inst2|counter:cnt[2]~q\,
	combout => \inst2|counter~0_combout\);

\inst3|compx4_gt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|compx4_gt~1_combout\ = (\inst1|hex_out[1]~2_combout\ & (((\inst1|hex_out[0]~3_combout\ & !\inst2|counter:cnt[0]~q\)) # (!\inst2|counter:cnt[1]~q\))) # (!\inst1|hex_out[1]~2_combout\ & (\inst1|hex_out[0]~3_combout\ & (!\inst2|counter:cnt[0]~q\ & 
-- !\inst2|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|hex_out[1]~2_combout\,
	datab => \inst1|hex_out[0]~3_combout\,
	datac => \inst2|counter:cnt[0]~q\,
	datad => \inst2|counter:cnt[1]~q\,
	combout => \inst3|compx4_gt~1_combout\);

\inst2|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|counter~1_combout\ = (\inst2|counter~0_combout\ & ((\inst3|compx4_gt~0_combout\) # ((\inst3|compx4_gt~1_combout\ & \inst3|compx4_gt~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter~0_combout\,
	datab => \inst3|compx4_gt~0_combout\,
	datac => \inst3|compx4_gt~1_combout\,
	datad => \inst3|compx4_gt~2_combout\,
	combout => \inst2|counter~1_combout\);

\inst2|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \inst2|counter:cnt[2]~2_combout\,
	ena => \inst2|counter:cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter:cnt[2]~q\);

\inst3|compx4_gt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|compx4_gt~0_combout\ = (\inst1|hex_out[3]~0_combout\ & (((\inst1|hex_out[2]~1_combout\ & !\inst2|counter:cnt[2]~q\)) # (!\inst2|counter:cnt[3]~q\))) # (!\inst1|hex_out[3]~0_combout\ & (\inst1|hex_out[2]~1_combout\ & (!\inst2|counter:cnt[2]~q\ & 
-- !\inst2|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|hex_out[3]~0_combout\,
	datab => \inst1|hex_out[2]~1_combout\,
	datac => \inst2|counter:cnt[2]~q\,
	datad => \inst2|counter:cnt[3]~q\,
	combout => \inst3|compx4_gt~0_combout\);

\inst3|compx4_gt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|compx4_gt~3_combout\ = (\inst3|compx4_gt~0_combout\) # ((\inst3|compx4_gt~1_combout\ & \inst3|compx4_gt~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compx4_gt~0_combout\,
	datab => \inst3|compx4_gt~1_combout\,
	datac => \inst3|compx4_gt~2_combout\,
	combout => \inst3|compx4_gt~3_combout\);

\inst3|inst3|compx1_eq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3|compx1_eq~0_combout\ = \inst2|counter:cnt[1]~q\ $ (((\pb[3]~input_o\ & ((\sw[5]~input_o\))) # (!\pb[3]~input_o\ & (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \inst2|counter:cnt[1]~q\,
	combout => \inst3|inst3|compx1_eq~0_combout\);

\inst3|compx4_eq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|compx4_eq~0_combout\ = (\inst3|inst3|compx1_eq~0_combout\) # ((\inst2|counter:cnt[0]~q\ $ (\inst1|hex_out[0]~3_combout\)) # (!\inst3|compx4_gt~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|compx1_eq~0_combout\,
	datab => \inst2|counter:cnt[0]~q\,
	datac => \inst1|hex_out[0]~3_combout\,
	datad => \inst3|compx4_gt~2_combout\,
	combout => \inst3|compx4_eq~0_combout\);

\inst5|leds[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|leds\(3) = (\pb[0]~input_o\) # ((\pb[1]~input_o\) # ((\pb[2]~input_o\) # (!\inst3|compx4_eq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \pb[2]~input_o\,
	datad => \inst3|compx4_eq~0_combout\,
	combout => \inst5|leds\(3));

\inst4|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~0_combout\ = (\inst2|counter:cnt[1]~q\ & (((\inst2|counter:cnt[0]~q\ & !\sw[0]~input_o\)) # (!\sw[1]~input_o\))) # (!\inst2|counter:cnt[1]~q\ & (\inst2|counter:cnt[0]~q\ & (!\sw[0]~input_o\ & !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[1]~q\,
	datab => \inst2|counter:cnt[0]~q\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \inst4|TEST_PASS~0_combout\);

\inst4|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~1_combout\ = (\inst2|counter:cnt[2]~q\ & ((\inst4|TEST_PASS~0_combout\) # (!\sw[2]~input_o\))) # (!\inst2|counter:cnt[2]~q\ & (!\sw[2]~input_o\ & \inst4|TEST_PASS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[2]~q\,
	datab => \sw[2]~input_o\,
	datac => \inst4|TEST_PASS~0_combout\,
	combout => \inst4|TEST_PASS~1_combout\);

\inst4|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~2_combout\ = (\inst3|compx4_lt~2_combout\ & ((\inst2|counter:cnt[3]~q\ & ((\inst4|TEST_PASS~1_combout\) # (!\sw[3]~input_o\))) # (!\inst2|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & \inst4|TEST_PASS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[3]~q\,
	datab => \sw[3]~input_o\,
	datac => \inst3|compx4_lt~2_combout\,
	datad => \inst4|TEST_PASS~1_combout\,
	combout => \inst4|TEST_PASS~2_combout\);

\inst4|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~3_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\inst2|counter:cnt[0]~q\)) # (!\inst2|counter:cnt[1]~q\))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\inst2|counter:cnt[0]~q\ & !\inst2|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \inst2|counter:cnt[0]~q\,
	datad => \inst2|counter:cnt[1]~q\,
	combout => \inst4|TEST_PASS~3_combout\);

\inst4|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~4_combout\ = (\sw[2]~input_o\ & ((\inst4|TEST_PASS~3_combout\) # (!\inst2|counter:cnt[2]~q\))) # (!\sw[2]~input_o\ & (!\inst2|counter:cnt[2]~q\ & \inst4|TEST_PASS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \inst2|counter:cnt[2]~q\,
	datac => \inst4|TEST_PASS~3_combout\,
	combout => \inst4|TEST_PASS~4_combout\);

\inst4|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~5_combout\ = (\inst3|compx4_gt~3_combout\ & ((\sw[3]~input_o\ & ((\inst4|TEST_PASS~4_combout\) # (!\inst2|counter:cnt[3]~q\))) # (!\sw[3]~input_o\ & (!\inst2|counter:cnt[3]~q\ & \inst4|TEST_PASS~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \inst2|counter:cnt[3]~q\,
	datac => \inst3|compx4_gt~3_combout\,
	datad => \inst4|TEST_PASS~4_combout\,
	combout => \inst4|TEST_PASS~5_combout\);

\inst4|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~6_combout\ = (\inst2|counter:cnt[3]~q\ & (\sw[3]~input_o\ & (\inst2|counter:cnt[2]~q\ $ (!\sw[2]~input_o\)))) # (!\inst2|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & (\inst2|counter:cnt[2]~q\ $ (!\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[3]~q\,
	datab => \inst2|counter:cnt[2]~q\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \inst4|TEST_PASS~6_combout\);

\inst4|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~7_combout\ = (\inst2|counter:cnt[1]~q\ & (\sw[1]~input_o\ & (\inst2|counter:cnt[0]~q\ $ (!\sw[0]~input_o\)))) # (!\inst2|counter:cnt[1]~q\ & (!\sw[1]~input_o\ & (\inst2|counter:cnt[0]~q\ $ (!\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter:cnt[1]~q\,
	datab => \inst2|counter:cnt[0]~q\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \inst4|TEST_PASS~7_combout\);

\inst4|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~8_combout\ = (\inst4|TEST_PASS~6_combout\ & (\inst4|TEST_PASS~7_combout\ & !\inst3|compx4_eq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|TEST_PASS~6_combout\,
	datab => \inst4|TEST_PASS~7_combout\,
	datad => \inst3|compx4_eq~0_combout\,
	combout => \inst4|TEST_PASS~8_combout\);

\inst4|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|TEST_PASS~9_combout\ = (\pb[2]~input_o\ & ((\inst4|TEST_PASS~2_combout\) # ((\inst4|TEST_PASS~5_combout\) # (\inst4|TEST_PASS~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \inst4|TEST_PASS~2_combout\,
	datac => \inst4|TEST_PASS~5_combout\,
	datad => \inst4|TEST_PASS~8_combout\,
	combout => \inst4|TEST_PASS~9_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_leds(10) <= \leds[10]~output_o\;

ww_leds(11) <= \leds[11]~output_o\;
END structure;


