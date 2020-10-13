-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity logic_proc is port (
	hex_num1, hex_num0	: in	std_logic_vector(3 downto 0);	--	two 4-bit inputs
	mux_select				: in	std_logic_vector(1 downto 0);	-- 2-bit selector for hex_out
	hex_out					: out	std_logic_vector(3 downto 0) 	-- mux output
	);

end logic_proc;

architecture Circuit of logic_proc is

-------------------------------------------------------------------

begin

 with mux_select(1 downto 0) select
 hex_out <= hex_num0 AND hex_num1	when "00",	-- Logical AND of two 4-bit operands
				hex_num0 OR hex_num1		when "01",	-- Logical OR of two 4-bit operands
				hex_num0 XOR hex_num1	when "10",	-- Logical XOR of two 4-bit operands
				hex_num0 XNOR hex_num1	when "11";	-- Logical XNOR of two 4-bit operands

end Circuit;