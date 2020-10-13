-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;
library work;

entity hex_mux is
 	port (
			hex_num3, hex_num2, hex_num1, hex_num0 : in std_logic_vector(3 downto 0); -- four 4-bit inputs
			mux_select 										: in std_logic_vector(1 downto 0); -- 2-bit selector for hex_out
			hex_out				 							: out std_logic_vector(3 downto 0) -- mux output
			);

 end hex_mux;

 architecture mux_logic of hex_mux is
 
 
 
 begin
 
 -- complete the with/select construct with the VHDL coding from the Lab Manual for Lab2.
 with mux_select(1 downto 0) select
 hex_out <= hex_num0 when "00",
				hex_num1 when "01",
				hex_num2 when "10",
				hex_num3 when "11";
 
 end mux_logic;
 
 