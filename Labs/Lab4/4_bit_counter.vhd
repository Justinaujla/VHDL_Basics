-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY U_D_Bin_Counter4bit IS PORT
	(
		CLK				:	in std_logic := '0';
		RESET_n			:	in std_logic := '0';
		CLK_EN			:	in std_logic := '0';
		UP1_DOWN0		:	in std_logic := '0';
		COUNTER_BITS	:	out std_logic_vector(3 downto 0)
	);
END ENTITY;
	
ARCHITECTURE one OF U_D_Bin_Counter4bit IS

--
-- Provided Project Components Used
------------------------------------------------------------------- 

-- Add Other Components here
-------------------------------------------------------------------

 -- Create any signals to be used
------------------------------------------------------------------- 
	
SIGNAL ud_bin_counter	: UNSIGNED(3 downto 0);

-- Here the circuit begins
	
BEGIN

 -- This process synchronizes the activity to a clock
PROCESS (CLK, RESET_n) IS
BEGIN
	
	-- Reset the counter if on active low
	IF (RESET_n = '0') THEN
				ud_bin_counter <= "0000";
				
	-- On clock rise, update counter by 1 digit based on current state of UP1_DOWN0
	ELSIF (rising_edge(CLK)) THEN
		
		IF (( UP1_DOWN0 = '1') AND (CLK_EN = '1')) THEN
				ud_bin_counter <= (ud_bin_counter + 1);
		ELSIF (( UP1_DOWN0 = '0') AND (CLK_EN = '1')) THEN
				ud_bin_counter <= (ud_bin_counter - 1);
		END IF;
		
	END IF;
END PROCESS;

-- The COUNTER_BITS output is set to the value of the 4-bit binary counter signal
COUNTER_BITS <= std_logic_vector(ud_bin_counter);

END one;
		