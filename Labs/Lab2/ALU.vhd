-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity ALU is
	port(
			full_adder_input	:	in std_logic_vector(4 downto 0);
			logic_proc_input	:	in std_logic_vector(3 downto 0);
			mux_selector		:	in std_logic;
			ALU_output			: 	out std_logic_vector(3 downto 0);
			ALU_carry			:	out std_logic;
			indicator			:	out std_logic
			);
end ALU;

architecture ALU_logic of ALU is

-- Declare any Components to be Used ---
------------------------------------------------------------------- 

component hex_2_to_1_mux
	port (
			hex_num1, hex_num0	:	in std_logic_vector(3 downto 0);
			mux_select				:	in std_logic;
			hex_out					:	out std_logic_vector(3 downto 0)
			);
end component;


begin

hex_mux: hex_2_to_1_mux port map (full_adder_input(3 downto 0), logic_proc_input, mux_selector, ALU_output);
ALU_carry <= full_adder_input(4) AND mux_selector;
indicator <= mux_selector;


end ALU_logic;