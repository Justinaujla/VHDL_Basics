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

-- DATE "07/31/2020 18:19:40"

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

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clk : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(15 DOWNTO 0);
SIGNAL \pb[3]~input_o\ : std_logic;
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
SIGNAL \leds[12]~output_o\ : std_logic;
SIGNAL \leds[13]~output_o\ : std_logic;
SIGNAL \leds[14]~output_o\ : std_logic;
SIGNAL \leds[15]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \inst1|inst4|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \inst1|inst4|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \inst1|inst4|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst4|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \inst1|inst4|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \inst1|inst4|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst1|inst4|process_0~2_combout\ : std_logic;
SIGNAL \inst1|inst4|process_0~4_combout\ : std_logic;
SIGNAL \inst1|inst4|process_0~3_combout\ : std_logic;
SIGNAL \inst1|inst4|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|compx1_eq~0_combout\ : std_logic;
SIGNAL \inst1|inst2|compx4_eq~0_combout\ : std_logic;
SIGNAL \inst1|inst2|compx4_eq~combout\ : std_logic;
SIGNAL \inst1|counter_y_enabled~q\ : std_logic;
SIGNAL \inst1|inst3|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \inst1|inst3|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \inst1|inst3|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst3|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \inst1|inst3|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \inst1|inst3|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \inst1|inst3|process_0~2_combout\ : std_logic;
SIGNAL \inst1|inst3|process_0~4_combout\ : std_logic;
SIGNAL \inst1|inst3|process_0~3_combout\ : std_logic;
SIGNAL \inst1|inst3|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst1|inst1|inst2|compx1_eq~0_combout\ : std_logic;
SIGNAL \inst1|inst1|compx4_eq~0_combout\ : std_logic;
SIGNAL \inst1|inst1|compx4_eq~combout\ : std_logic;
SIGNAL \inst1|counter_x_enabled~q\ : std_logic;
SIGNAL \inst1|process_2~1_combout\ : std_logic;
SIGNAL \inst2|next_state.State_1st_extend~0_combout\ : std_logic;
SIGNAL \inst2|current_state.State_1st_extend~q\ : std_logic;
SIGNAL \inst2|current_state.State_2nd_extend~q\ : std_logic;
SIGNAL \inst2|current_state.State_3rd_extend~q\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|current_state.State_extended~q\ : std_logic;
SIGNAL \inst2|DIRECTION_UP1_DOWN0~0_combout\ : std_logic;
SIGNAL \inst2|DIRECTION_UP1_DOWN0~q\ : std_logic;
SIGNAL \inst2|next_state.State_1st_retract~0_combout\ : std_logic;
SIGNAL \inst2|current_state.State_1st_retract~q\ : std_logic;
SIGNAL \inst2|current_state.State_2nd_retract~q\ : std_logic;
SIGNAL \inst2|current_state.State_3rd_retract~q\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|current_state.State_retracted~q\ : std_logic;
SIGNAL \inst1|process_2~0_combout\ : std_logic;
SIGNAL \inst1|comb~1_combout\ : std_logic;
SIGNAL \inst1|fault_error~combout\ : std_logic;
SIGNAL \inst1|comb~0_combout\ : std_logic;
SIGNAL \inst1|Error_led~combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \inst3|grappler_state~0_combout\ : std_logic;
SIGNAL \inst3|grappler_state~q\ : std_logic;
SIGNAL \inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst2|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|y_target_pos\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst4|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|x_temp_target\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst3|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|y_temp_target\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|x_target_pos\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_pb[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Clk~input_o\ : std_logic;
SIGNAL \ALT_INV_pb[0]~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr2~0_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pb[2]~input_o\ <= NOT \pb[2]~input_o\;
\ALT_INV_pb[1]~input_o\ <= NOT \pb[1]~input_o\;
\ALT_INV_Clk~input_o\ <= NOT \Clk~input_o\;
\ALT_INV_pb[0]~input_o\ <= NOT \pb[0]~input_o\;
\inst1|ALT_INV_process_2~0_combout\ <= NOT \inst1|process_2~0_combout\;
\inst2|ALT_INV_WideOr2~0_combout\ <= NOT \inst2|WideOr2~0_combout\;

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Error_led~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|grappler_state~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|current_state.State_extended~q\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|current_state.State_retracted~q\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|ud_bin_counter\(0),
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|ud_bin_counter\(1),
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|ud_bin_counter\(2),
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|ud_bin_counter\(3),
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

\leds[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3|ud_bin_counter\(0),
	devoe => ww_devoe,
	o => \leds[12]~output_o\);

\leds[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3|ud_bin_counter\(1),
	devoe => ww_devoe,
	o => \leds[13]~output_o\);

\leds[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3|ud_bin_counter\(2),
	devoe => ww_devoe,
	o => \leds[14]~output_o\);

\leds[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3|ud_bin_counter\(3),
	devoe => ww_devoe,
	o => \leds[15]~output_o\);

\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

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

\inst1|inst4|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|ud_bin_counter[0]~3_combout\ = \inst1|inst4|ud_bin_counter\(0) $ (\inst1|counter_y_enabled~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst4|ud_bin_counter\(0),
	datad => \inst1|counter_y_enabled~q\,
	combout => \inst1|inst4|ud_bin_counter[0]~3_combout\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\inst1|inst4|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst1|inst4|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|ud_bin_counter\(0));

\inst1|inst4|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|ud_bin_counter[1]~5_cout\ = CARRY(\inst1|inst4|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ud_bin_counter\(0),
	datad => VCC,
	cout => \inst1|inst4|ud_bin_counter[1]~5_cout\);

\inst1|inst4|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|ud_bin_counter[1]~6_combout\ = (\inst1|inst4|ud_bin_counter\(1) & ((\inst1|inst4|process_0~3_combout\ & (!\inst1|inst4|ud_bin_counter[1]~5_cout\)) # (!\inst1|inst4|process_0~3_combout\ & (\inst1|inst4|ud_bin_counter[1]~5_cout\ & VCC)))) # 
-- (!\inst1|inst4|ud_bin_counter\(1) & ((\inst1|inst4|process_0~3_combout\ & ((\inst1|inst4|ud_bin_counter[1]~5_cout\) # (GND))) # (!\inst1|inst4|process_0~3_combout\ & (!\inst1|inst4|ud_bin_counter[1]~5_cout\))))
-- \inst1|inst4|ud_bin_counter[1]~7\ = CARRY((\inst1|inst4|ud_bin_counter\(1) & (\inst1|inst4|process_0~3_combout\ & !\inst1|inst4|ud_bin_counter[1]~5_cout\)) # (!\inst1|inst4|ud_bin_counter\(1) & ((\inst1|inst4|process_0~3_combout\) # 
-- (!\inst1|inst4|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ud_bin_counter\(1),
	datab => \inst1|inst4|process_0~3_combout\,
	datad => VCC,
	cin => \inst1|inst4|ud_bin_counter[1]~5_cout\,
	combout => \inst1|inst4|ud_bin_counter[1]~6_combout\,
	cout => \inst1|inst4|ud_bin_counter[1]~7\);

\inst1|inst4|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst1|inst4|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|counter_y_enabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|ud_bin_counter\(1));

\inst1|inst4|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|ud_bin_counter[2]~8_combout\ = ((\inst1|inst4|ud_bin_counter\(2) $ (\inst1|inst4|process_0~3_combout\ $ (\inst1|inst4|ud_bin_counter[1]~7\)))) # (GND)
-- \inst1|inst4|ud_bin_counter[2]~9\ = CARRY((\inst1|inst4|ud_bin_counter\(2) & ((!\inst1|inst4|ud_bin_counter[1]~7\) # (!\inst1|inst4|process_0~3_combout\))) # (!\inst1|inst4|ud_bin_counter\(2) & (!\inst1|inst4|process_0~3_combout\ & 
-- !\inst1|inst4|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ud_bin_counter\(2),
	datab => \inst1|inst4|process_0~3_combout\,
	datad => VCC,
	cin => \inst1|inst4|ud_bin_counter[1]~7\,
	combout => \inst1|inst4|ud_bin_counter[2]~8_combout\,
	cout => \inst1|inst4|ud_bin_counter[2]~9\);

\inst1|inst4|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|ud_bin_counter[3]~10_combout\ = \inst1|inst4|ud_bin_counter\(3) $ (\inst1|inst4|process_0~3_combout\ $ (!\inst1|inst4|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ud_bin_counter\(3),
	datab => \inst1|inst4|process_0~3_combout\,
	cin => \inst1|inst4|ud_bin_counter[2]~9\,
	combout => \inst1|inst4|ud_bin_counter[3]~10_combout\);

\inst1|inst4|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst1|inst4|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|counter_y_enabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|ud_bin_counter\(3));

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

\inst1|y_temp_target[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[2]~input_o\,
	d => \sw[3]~input_o\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y_temp_target\(3));

\inst1|y_target_pos[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|y_target_pos\(3) = (\rst_n~input_o\ & ((\inst1|process_2~1_combout\ & ((\inst1|y_target_pos\(3)))) # (!\inst1|process_2~1_combout\ & (\inst1|y_temp_target\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|y_temp_target\(3),
	datab => \inst1|y_target_pos\(3),
	datac => \inst1|process_2~1_combout\,
	datad => \rst_n~input_o\,
	combout => \inst1|y_target_pos\(3));

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

\inst1|y_temp_target[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[2]~input_o\,
	d => \sw[2]~input_o\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y_temp_target\(2));

\inst1|y_target_pos[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|y_target_pos\(2) = (\rst_n~input_o\ & ((\inst1|process_2~1_combout\ & ((\inst1|y_target_pos\(2)))) # (!\inst1|process_2~1_combout\ & (\inst1|y_temp_target\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|y_temp_target\(2),
	datab => \inst1|y_target_pos\(2),
	datac => \inst1|process_2~1_combout\,
	datad => \rst_n~input_o\,
	combout => \inst1|y_target_pos\(2));

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

\inst1|y_temp_target[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[2]~input_o\,
	d => \sw[1]~input_o\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y_temp_target\(1));

\inst1|y_target_pos[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|y_target_pos\(1) = (\rst_n~input_o\ & ((\inst1|process_2~1_combout\ & ((\inst1|y_target_pos\(1)))) # (!\inst1|process_2~1_combout\ & (\inst1|y_temp_target\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|y_temp_target\(1),
	datab => \inst1|y_target_pos\(1),
	datac => \inst1|process_2~1_combout\,
	datad => \rst_n~input_o\,
	combout => \inst1|y_target_pos\(1));

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

\inst1|y_temp_target[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[2]~input_o\,
	d => \sw[0]~input_o\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y_temp_target\(0));

\inst1|y_target_pos[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|y_target_pos\(0) = (\rst_n~input_o\ & ((\inst1|process_2~1_combout\ & ((\inst1|y_target_pos\(0)))) # (!\inst1|process_2~1_combout\ & (\inst1|y_temp_target\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|y_temp_target\(0),
	datab => \inst1|y_target_pos\(0),
	datac => \inst1|process_2~1_combout\,
	datad => \rst_n~input_o\,
	combout => \inst1|y_target_pos\(0));

\inst1|inst4|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|process_0~2_combout\ = (\inst1|y_target_pos\(1) & (((\inst1|y_target_pos\(0) & !\inst1|inst4|ud_bin_counter\(0))) # (!\inst1|inst4|ud_bin_counter\(1)))) # (!\inst1|y_target_pos\(1) & (\inst1|y_target_pos\(0) & 
-- (!\inst1|inst4|ud_bin_counter\(0) & !\inst1|inst4|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|y_target_pos\(1),
	datab => \inst1|y_target_pos\(0),
	datac => \inst1|inst4|ud_bin_counter\(0),
	datad => \inst1|inst4|ud_bin_counter\(1),
	combout => \inst1|inst4|process_0~2_combout\);

\inst1|inst4|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|process_0~4_combout\ = (\inst1|inst4|ud_bin_counter\(2) & (\inst1|y_target_pos\(2) & \inst1|inst4|process_0~2_combout\)) # (!\inst1|inst4|ud_bin_counter\(2) & ((\inst1|y_target_pos\(2)) # (\inst1|inst4|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ud_bin_counter\(2),
	datab => \inst1|y_target_pos\(2),
	datac => \inst1|inst4|process_0~2_combout\,
	combout => \inst1|inst4|process_0~4_combout\);

\inst1|inst4|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|process_0~3_combout\ = (\inst1|counter_y_enabled~q\ & ((\inst1|inst4|ud_bin_counter\(3) & (\inst1|y_target_pos\(3) & \inst1|inst4|process_0~4_combout\)) # (!\inst1|inst4|ud_bin_counter\(3) & ((\inst1|y_target_pos\(3)) # 
-- (\inst1|inst4|process_0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ud_bin_counter\(3),
	datab => \inst1|y_target_pos\(3),
	datac => \inst1|counter_y_enabled~q\,
	datad => \inst1|inst4|process_0~4_combout\,
	combout => \inst1|inst4|process_0~3_combout\);

\inst1|inst4|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst1|inst4|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|counter_y_enabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4|ud_bin_counter\(2));

\inst1|inst2|inst2|compx1_eq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|compx1_eq~0_combout\ = \inst1|inst4|ud_bin_counter\(2) $ (\inst1|y_target_pos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst4|ud_bin_counter\(2),
	datad => \inst1|y_target_pos\(2),
	combout => \inst1|inst2|inst2|compx1_eq~0_combout\);

\inst1|inst2|compx4_eq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|compx4_eq~0_combout\ = (\inst1|inst4|ud_bin_counter\(0) & ((\inst1|inst4|ud_bin_counter\(1) $ (\inst1|y_target_pos\(1))) # (!\inst1|y_target_pos\(0)))) # (!\inst1|inst4|ud_bin_counter\(0) & ((\inst1|y_target_pos\(0)) # 
-- (\inst1|inst4|ud_bin_counter\(1) $ (\inst1|y_target_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|ud_bin_counter\(0),
	datab => \inst1|y_target_pos\(0),
	datac => \inst1|inst4|ud_bin_counter\(1),
	datad => \inst1|y_target_pos\(1),
	combout => \inst1|inst2|compx4_eq~0_combout\);

\inst1|inst2|compx4_eq\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2|compx4_eq~combout\ = (\inst1|inst2|inst2|compx1_eq~0_combout\) # ((\inst1|inst2|compx4_eq~0_combout\) # (\inst1|inst4|ud_bin_counter\(3) $ (\inst1|y_target_pos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst2|compx1_eq~0_combout\,
	datab => \inst1|inst2|compx4_eq~0_combout\,
	datac => \inst1|inst4|ud_bin_counter\(3),
	datad => \inst1|y_target_pos\(3),
	combout => \inst1|inst2|compx4_eq~combout\);

\inst1|counter_y_enabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \inst1|inst2|compx4_eq~combout\,
	clrn => \inst1|ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_y_enabled~q\);

\inst1|inst3|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|ud_bin_counter[0]~3_combout\ = \inst1|inst3|ud_bin_counter\(0) $ (\inst1|counter_x_enabled~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst3|ud_bin_counter\(0),
	datad => \inst1|counter_x_enabled~q\,
	combout => \inst1|inst3|ud_bin_counter[0]~3_combout\);

\inst1|inst3|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst1|inst3|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|ud_bin_counter\(0));

\inst1|inst3|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|ud_bin_counter[1]~5_cout\ = CARRY(\inst1|inst3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ud_bin_counter\(0),
	datad => VCC,
	cout => \inst1|inst3|ud_bin_counter[1]~5_cout\);

\inst1|inst3|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|ud_bin_counter[1]~6_combout\ = (\inst1|inst3|ud_bin_counter\(1) & ((\inst1|inst3|process_0~3_combout\ & (!\inst1|inst3|ud_bin_counter[1]~5_cout\)) # (!\inst1|inst3|process_0~3_combout\ & (\inst1|inst3|ud_bin_counter[1]~5_cout\ & VCC)))) # 
-- (!\inst1|inst3|ud_bin_counter\(1) & ((\inst1|inst3|process_0~3_combout\ & ((\inst1|inst3|ud_bin_counter[1]~5_cout\) # (GND))) # (!\inst1|inst3|process_0~3_combout\ & (!\inst1|inst3|ud_bin_counter[1]~5_cout\))))
-- \inst1|inst3|ud_bin_counter[1]~7\ = CARRY((\inst1|inst3|ud_bin_counter\(1) & (\inst1|inst3|process_0~3_combout\ & !\inst1|inst3|ud_bin_counter[1]~5_cout\)) # (!\inst1|inst3|ud_bin_counter\(1) & ((\inst1|inst3|process_0~3_combout\) # 
-- (!\inst1|inst3|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ud_bin_counter\(1),
	datab => \inst1|inst3|process_0~3_combout\,
	datad => VCC,
	cin => \inst1|inst3|ud_bin_counter[1]~5_cout\,
	combout => \inst1|inst3|ud_bin_counter[1]~6_combout\,
	cout => \inst1|inst3|ud_bin_counter[1]~7\);

\inst1|inst3|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst1|inst3|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|counter_x_enabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|ud_bin_counter\(1));

\inst1|inst3|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|ud_bin_counter[2]~8_combout\ = ((\inst1|inst3|ud_bin_counter\(2) $ (\inst1|inst3|process_0~3_combout\ $ (\inst1|inst3|ud_bin_counter[1]~7\)))) # (GND)
-- \inst1|inst3|ud_bin_counter[2]~9\ = CARRY((\inst1|inst3|ud_bin_counter\(2) & ((!\inst1|inst3|ud_bin_counter[1]~7\) # (!\inst1|inst3|process_0~3_combout\))) # (!\inst1|inst3|ud_bin_counter\(2) & (!\inst1|inst3|process_0~3_combout\ & 
-- !\inst1|inst3|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ud_bin_counter\(2),
	datab => \inst1|inst3|process_0~3_combout\,
	datad => VCC,
	cin => \inst1|inst3|ud_bin_counter[1]~7\,
	combout => \inst1|inst3|ud_bin_counter[2]~8_combout\,
	cout => \inst1|inst3|ud_bin_counter[2]~9\);

\inst1|inst3|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|ud_bin_counter[3]~10_combout\ = \inst1|inst3|ud_bin_counter\(3) $ (\inst1|inst3|process_0~3_combout\ $ (!\inst1|inst3|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ud_bin_counter\(3),
	datab => \inst1|inst3|process_0~3_combout\,
	cin => \inst1|inst3|ud_bin_counter[2]~9\,
	combout => \inst1|inst3|ud_bin_counter[3]~10_combout\);

\inst1|inst3|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst1|inst3|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|counter_x_enabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|ud_bin_counter\(3));

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

\inst1|x_temp_target[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[2]~input_o\,
	d => \sw[7]~input_o\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x_temp_target\(3));

\inst1|x_target_pos[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|x_target_pos\(3) = (\rst_n~input_o\ & ((\inst1|process_2~1_combout\ & ((\inst1|x_target_pos\(3)))) # (!\inst1|process_2~1_combout\ & (\inst1|x_temp_target\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x_temp_target\(3),
	datab => \inst1|x_target_pos\(3),
	datac => \inst1|process_2~1_combout\,
	datad => \rst_n~input_o\,
	combout => \inst1|x_target_pos\(3));

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

\inst1|x_temp_target[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[2]~input_o\,
	d => \sw[6]~input_o\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x_temp_target\(2));

\inst1|x_target_pos[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|x_target_pos\(2) = (\rst_n~input_o\ & ((\inst1|process_2~1_combout\ & ((\inst1|x_target_pos\(2)))) # (!\inst1|process_2~1_combout\ & (\inst1|x_temp_target\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x_temp_target\(2),
	datab => \inst1|x_target_pos\(2),
	datac => \inst1|process_2~1_combout\,
	datad => \rst_n~input_o\,
	combout => \inst1|x_target_pos\(2));

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

\inst1|x_temp_target[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[2]~input_o\,
	d => \sw[5]~input_o\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x_temp_target\(1));

\inst1|x_target_pos[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|x_target_pos\(1) = (\rst_n~input_o\ & ((\inst1|process_2~1_combout\ & ((\inst1|x_target_pos\(1)))) # (!\inst1|process_2~1_combout\ & (\inst1|x_temp_target\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x_temp_target\(1),
	datab => \inst1|x_target_pos\(1),
	datac => \inst1|process_2~1_combout\,
	datad => \rst_n~input_o\,
	combout => \inst1|x_target_pos\(1));

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

\inst1|x_temp_target[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[2]~input_o\,
	d => \sw[4]~input_o\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x_temp_target\(0));

\inst1|x_target_pos[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|x_target_pos\(0) = (\rst_n~input_o\ & ((\inst1|process_2~1_combout\ & ((\inst1|x_target_pos\(0)))) # (!\inst1|process_2~1_combout\ & (\inst1|x_temp_target\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x_temp_target\(0),
	datab => \inst1|x_target_pos\(0),
	datac => \inst1|process_2~1_combout\,
	datad => \rst_n~input_o\,
	combout => \inst1|x_target_pos\(0));

\inst1|inst3|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|process_0~2_combout\ = (\inst1|x_target_pos\(1) & (((\inst1|x_target_pos\(0) & !\inst1|inst3|ud_bin_counter\(0))) # (!\inst1|inst3|ud_bin_counter\(1)))) # (!\inst1|x_target_pos\(1) & (\inst1|x_target_pos\(0) & 
-- (!\inst1|inst3|ud_bin_counter\(0) & !\inst1|inst3|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x_target_pos\(1),
	datab => \inst1|x_target_pos\(0),
	datac => \inst1|inst3|ud_bin_counter\(0),
	datad => \inst1|inst3|ud_bin_counter\(1),
	combout => \inst1|inst3|process_0~2_combout\);

\inst1|inst3|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|process_0~4_combout\ = (\inst1|inst3|ud_bin_counter\(2) & (\inst1|x_target_pos\(2) & \inst1|inst3|process_0~2_combout\)) # (!\inst1|inst3|ud_bin_counter\(2) & ((\inst1|x_target_pos\(2)) # (\inst1|inst3|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ud_bin_counter\(2),
	datab => \inst1|x_target_pos\(2),
	datac => \inst1|inst3|process_0~2_combout\,
	combout => \inst1|inst3|process_0~4_combout\);

\inst1|inst3|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst3|process_0~3_combout\ = (\inst1|counter_x_enabled~q\ & ((\inst1|inst3|ud_bin_counter\(3) & (\inst1|x_target_pos\(3) & \inst1|inst3|process_0~4_combout\)) # (!\inst1|inst3|ud_bin_counter\(3) & ((\inst1|x_target_pos\(3)) # 
-- (\inst1|inst3|process_0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ud_bin_counter\(3),
	datab => \inst1|x_target_pos\(3),
	datac => \inst1|counter_x_enabled~q\,
	datad => \inst1|inst3|process_0~4_combout\,
	combout => \inst1|inst3|process_0~3_combout\);

\inst1|inst3|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst1|inst3|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|counter_x_enabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|ud_bin_counter\(2));

\inst1|inst1|inst2|compx1_eq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2|compx1_eq~0_combout\ = \inst1|inst3|ud_bin_counter\(2) $ (\inst1|x_target_pos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst3|ud_bin_counter\(2),
	datad => \inst1|x_target_pos\(2),
	combout => \inst1|inst1|inst2|compx1_eq~0_combout\);

\inst1|inst1|compx4_eq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst1|compx4_eq~0_combout\ = (\inst1|inst3|ud_bin_counter\(0) & ((\inst1|inst3|ud_bin_counter\(1) $ (\inst1|x_target_pos\(1))) # (!\inst1|x_target_pos\(0)))) # (!\inst1|inst3|ud_bin_counter\(0) & ((\inst1|x_target_pos\(0)) # 
-- (\inst1|inst3|ud_bin_counter\(1) $ (\inst1|x_target_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|ud_bin_counter\(0),
	datab => \inst1|x_target_pos\(0),
	datac => \inst1|inst3|ud_bin_counter\(1),
	datad => \inst1|x_target_pos\(1),
	combout => \inst1|inst1|compx4_eq~0_combout\);

\inst1|inst1|compx4_eq\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst1|compx4_eq~combout\ = (\inst1|inst1|inst2|compx1_eq~0_combout\) # ((\inst1|inst1|compx4_eq~0_combout\) # (\inst1|inst3|ud_bin_counter\(3) $ (\inst1|x_target_pos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst2|compx1_eq~0_combout\,
	datab => \inst1|inst1|compx4_eq~0_combout\,
	datac => \inst1|inst3|ud_bin_counter\(3),
	datad => \inst1|x_target_pos\(3),
	combout => \inst1|inst1|compx4_eq~combout\);

\inst1|counter_x_enabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~input_o\,
	d => \inst1|inst1|compx4_eq~combout\,
	clrn => \inst1|ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_x_enabled~q\);

\inst1|process_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|process_2~1_combout\ = (\inst1|counter_y_enabled~q\) # (\inst1|counter_x_enabled~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_y_enabled~q\,
	datab => \inst1|counter_x_enabled~q\,
	combout => \inst1|process_2~1_combout\);

\inst2|next_state.State_1st_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|next_state.State_1st_extend~0_combout\ = (\inst2|DIRECTION_UP1_DOWN0~q\ & !\inst2|current_state.State_retracted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DIRECTION_UP1_DOWN0~q\,
	datad => \inst2|current_state.State_retracted~q\,
	combout => \inst2|next_state.State_1st_extend~0_combout\);

\inst2|current_state.State_1st_extend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst2|next_state.State_1st_extend~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|current_state.State_1st_extend~q\);

\inst2|current_state.State_2nd_extend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst2|current_state.State_1st_extend~q\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|current_state.State_2nd_extend~q\);

\inst2|current_state.State_3rd_extend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst2|current_state.State_2nd_extend~q\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|current_state.State_3rd_extend~q\);

\inst2|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|current_state.State_3rd_extend~q\) # ((\inst2|current_state.State_extended~q\ & \inst2|DIRECTION_UP1_DOWN0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state.State_3rd_extend~q\,
	datab => \inst2|current_state.State_extended~q\,
	datac => \inst2|DIRECTION_UP1_DOWN0~q\,
	combout => \inst2|Selector1~0_combout\);

\inst2|current_state.State_extended\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst2|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|current_state.State_extended~q\);

\inst2|DIRECTION_UP1_DOWN0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DIRECTION_UP1_DOWN0~0_combout\ = \inst2|DIRECTION_UP1_DOWN0~q\ $ (((!\inst1|process_2~1_combout\ & ((\inst2|current_state.State_extended~q\) # (!\inst2|current_state.State_retracted~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DIRECTION_UP1_DOWN0~q\,
	datab => \inst1|process_2~1_combout\,
	datac => \inst2|current_state.State_retracted~q\,
	datad => \inst2|current_state.State_extended~q\,
	combout => \inst2|DIRECTION_UP1_DOWN0~0_combout\);

\inst2|DIRECTION_UP1_DOWN0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[1]~input_o\,
	d => \inst2|DIRECTION_UP1_DOWN0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DIRECTION_UP1_DOWN0~q\);

\inst2|next_state.State_1st_retract~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|next_state.State_1st_retract~0_combout\ = (!\inst2|DIRECTION_UP1_DOWN0~q\ & \inst2|current_state.State_extended~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DIRECTION_UP1_DOWN0~q\,
	datad => \inst2|current_state.State_extended~q\,
	combout => \inst2|next_state.State_1st_retract~0_combout\);

\inst2|current_state.State_1st_retract\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst2|next_state.State_1st_retract~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|current_state.State_1st_retract~q\);

\inst2|current_state.State_2nd_retract\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst2|current_state.State_1st_retract~q\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|current_state.State_2nd_retract~q\);

\inst2|current_state.State_3rd_retract\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst2|current_state.State_2nd_retract~q\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|current_state.State_3rd_retract~q\);

\inst2|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (!\inst2|current_state.State_3rd_retract~q\ & ((\inst2|current_state.State_retracted~q\) # (\inst2|DIRECTION_UP1_DOWN0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state.State_3rd_retract~q\,
	datac => \inst2|current_state.State_retracted~q\,
	datad => \inst2|DIRECTION_UP1_DOWN0~q\,
	combout => \inst2|Selector0~0_combout\);

\inst2|current_state.State_retracted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst2|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|current_state.State_retracted~q\);

\inst1|process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|process_2~0_combout\ = (\inst2|current_state.State_retracted~q\ & ((\inst1|counter_y_enabled~q\) # (\inst1|counter_x_enabled~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state.State_retracted~q\,
	datab => \inst1|counter_y_enabled~q\,
	datac => \inst1|counter_x_enabled~q\,
	combout => \inst1|process_2~0_combout\);

\inst1|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|comb~1_combout\ = (\inst2|current_state.State_retracted~q\) # (!\inst1|fault_error~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state.State_retracted~q\,
	datad => \inst1|fault_error~combout\,
	combout => \inst1|comb~1_combout\);

\inst1|fault_error\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|fault_error~combout\ = (\inst1|comb~1_combout\ & ((\inst1|fault_error~combout\) # (\inst1|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|fault_error~combout\,
	datac => \inst1|process_2~0_combout\,
	datad => \inst1|comb~1_combout\,
	combout => \inst1|fault_error~combout\);

\inst1|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|comb~0_combout\ = (\inst2|current_state.State_retracted~q\ & ((\inst1|fault_error~combout\) # ((\inst1|counter_y_enabled~q\) # (\inst1|counter_x_enabled~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state.State_retracted~q\,
	datab => \inst1|fault_error~combout\,
	datac => \inst1|counter_y_enabled~q\,
	datad => \inst1|counter_x_enabled~q\,
	combout => \inst1|comb~0_combout\);

\inst1|Error_led\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Error_led~combout\ = (\inst1|comb~0_combout\ & ((\inst1|Error_led~combout\) # (\inst1|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Error_led~combout\,
	datac => \inst1|process_2~0_combout\,
	datad => \inst1|comb~0_combout\,
	combout => \inst1|Error_led~combout\);

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

\inst3|grappler_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|grappler_state~0_combout\ = \inst3|grappler_state~q\ $ (\inst2|current_state.State_extended~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|grappler_state~q\,
	datad => \inst2|current_state.State_extended~q\,
	combout => \inst3|grappler_state~0_combout\);

\inst3|grappler_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb[0]~input_o\,
	d => \inst3|grappler_state~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|grappler_state~q\);

\inst2|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~0_combout\ = (\inst2|current_state.State_extended~q\) # ((\inst2|current_state.State_3rd_extend~q\) # (\inst2|current_state.State_1st_retract~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state.State_extended~q\,
	datab => \inst2|current_state.State_3rd_extend~q\,
	datac => \inst2|current_state.State_1st_retract~q\,
	combout => \inst2|WideOr3~0_combout\);

\inst2|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~0_combout\ = (\inst2|current_state.State_1st_extend~q\) # ((\inst2|current_state.State_3rd_retract~q\) # (!\inst2|current_state.State_retracted~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|current_state.State_1st_extend~q\,
	datab => \inst2|current_state.State_3rd_retract~q\,
	datad => \inst2|current_state.State_retracted~q\,
	combout => \inst2|WideOr2~0_combout\);

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

ww_leds(12) <= \leds[12]~output_o\;

ww_leds(13) <= \leds[13]~output_o\;

ww_leds(14) <= \leds[14]~output_o\;

ww_leds(15) <= \leds[15]~output_o\;
END structure;


