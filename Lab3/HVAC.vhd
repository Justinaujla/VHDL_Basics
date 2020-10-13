library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HVAC is

	port
	(
		clk						: in std_logic; 
		run_n		   			: in std_logic;
		increase, decrease	: in std_logic;
		temp						: out std_logic_vector (3 downto 0)
	);

end entity;

architecture rtl of HVAC is


begin


counter:	process (clk)
	variable   cnt		:  unsigned(3 downto 0);
	begin
		
	-- Synchronously update counter
		if ((rising_edge(clk)) AND (run_n ='0')) then

			if ((increase = '1') AND (cnt /= 15))then
				-- Increment only if not at maxvalue
				cnt := cnt + 1;
			elsif ((decrease = '1') AND (cnt /= 0)) then
				-- Decrement only if not at minvalue
				cnt := cnt - 1;
			end if;
			
		end if;

	-- Output the current count	
		temp <= std_logic_vector(cnt);		
	end process;

end rtl;


