-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;

entity Mux is port (
 	hex_num1, hex_num0 : in std_logic_vector(3 downto 0);
	mux_select         : in std_logic;
	hex_out				 : out std_logic_vector(3 downto 0)
); 
end Mux;

architecture mux_logic of Mux is 

--
-- Provided Project Components Used
------------------------------------------------------------------- 

------------------------------------------------------------------
-- Add Other Components here

------------------------------------------------------------------	
-- Create any signals to be used
------------------------------------------------------------------- 

-- Here the circuit begins

begin

with mux_select select
hex_out <= hex_num0 when '0',
		     hex_num1 when '1';
			  
end mux_logic;
