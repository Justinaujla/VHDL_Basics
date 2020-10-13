-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY RAC_grappler IS PORT
	(
		 rst_n, grappler_toggle, fully_extended 	: IN 	std_logic; 	-- rst_n:							Reset input
																						-- fully_extended: 				Input from RAC grappler to determine if fully extended. If not fully extended, we can't open grappler, else we can,
																						-- grappler_toggle: 				Push button to trigger the grappler when pressed AND released (only if extender is fully extended),
		 grappler_open1_closed0							: OUT std_logic	--	grappler_open1_closed0:		Output state of if grappler is opened or closed
	);
END ENTITY;
	
ARCHITECTURE grap_circuit OF RAC_grappler IS

--
-- Provided Project Components Used
------------------------------------------------------------------- 


-- Add Other Components here
-------------------------------------------------------------------

	
-- Create any signals to be used
------------------------------------------------------------------- 

SIGNAL grappler_state : std_logic := '0';		--		stores the current state of the grappler; open: (1), closed: (0)

-- Here the circuit begins
	
BEGIN		

grap_proc: PROCESS (grappler_toggle, rst_n)
BEGIN

	-- If grappler_toggle is pressed AND released, and the RAC extender is fully extended we can open/close the grappler
	IF(falling_edge(grappler_toggle) AND (fully_extended = '1')) THEN		
		grappler_state <= not grappler_state;
	END IF;
	
	--	Reset the grappler state
	IF(rst_n = '0') THEN
		grappler_state <= '0';
	END IF;
	
END PROCESS;

-- Sets the grappler_open1_closed0 to the current state of the grappler
grappler_open1_closed0 <= grappler_state;

END grap_circuit;
		