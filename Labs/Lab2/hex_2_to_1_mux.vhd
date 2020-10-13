-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity hex_2_to_1_mux is
	port (
			hex_num1, hex_num0	:	in std_logic_vector(3 downto 0);
			mux_select				:	in std_logic;
			hex_out					:	out std_logic_vector(3 downto 0)
			);
end hex_2_to_1_mux;

architecture two_to_one_mux_logic of hex_2_to_1_mux is

begin

with mux_select select
hex_out <= 	hex_num0 when '0',
				hex_num1 when '1';
end two_to_one_mux_logic;