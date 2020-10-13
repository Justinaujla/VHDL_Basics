-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY RAC_extender IS PORT
(
		 clk_input, rst_n, extender_toggle, extender_enabled		: IN std_logic;								-- clk_input: 				Clock,
																																		-- rst_n: 					Reset input,
																																		-- extender_toggle: 		Push button to enable extender when pressed AND released,
																																		-- extender_enabled: 	Input from RAC Movement to see if we are changing X-Y positions. If moving, can't extend, else we can,
		 extender_output						 								: OUT std_logic;								-- extender_output:		Outputs if we are no longer in the fully retracted state (not in 0000),
		 state_output															: OUT std_logic_vector(3 downto 0);		--	state_output:			Outputs the 4-bit value for our current location (0000, 1000, 1100, 1110, or 1111)
		 fully_extended														: OUT std_logic								--	fully_extended:		Outputs if we are in the fully extended state (1111)
 );
END ENTITY;
 

 ARCHITECTURE ext_circuit OF RAC_extender IS
 
 --
-- Provided Project Components Used
------------------------------------------------------------------- 


-- Add Other Components here
-------------------------------------------------------------------

	
-- Create any data types to be used
------------------------------------------------------------------- 
 
  
 TYPE STATE_NAMES IS (State_retracted, State_1st_extend, State_2nd_extend, State_3rd_extend, State_extended, State_1st_retract, State_2nd_retract, State_3rd_retract);   -- List all the STATE_NAMES values
 
 
 -- Create any signals to be used
------------------------------------------------------------------- 

 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- current_state, next_state: 	Signals of type STATE_NAMES					
 
 SIGNAL DIRECTION_UP1_DOWN0 : std_logic := '0';				--	DIRECTION_UP1_DOWN0:				Determines which direction the extender should be going, 1 (UP) to 'extend' or increase state values (0000 -> 1111)
																			--											and 0 (DOWN) 'retract' or to decrease state values (1111 -> 0000)
  
  
 -- Here the circuit begins

 BEGIN
 
 PROCESS (extender_toggle, current_state, extender_enabled, rst_n) IS
 BEGIN
	
	-- Checks: 	if extender push button was pressed AND released
	--				if we are fully extended or fully retracted
	--				if RAC is not moving X-Y positions
	--				if reset (active low) is not pressed
	-- If so, we flip out current direction of movement
	
	IF (falling_edge(extender_toggle) AND (current_state = State_retracted or current_state = State_extended) AND (extender_enabled = '1') AND (rst_n = '1')) THEN		
			DIRECTION_UP1_DOWN0 <= not (DIRECTION_UP1_DOWN0);																																				
	END IF;																																																					
																																																							
																																																							
	-- Reset direction
	IF (rst_n = '0') THEN					
			DIRECTION_UP1_DOWN0 <= '0';
	END IF;

	
END PROCESS;
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
 -- This process synchronizes the activity to a clock
Register_Section: PROCESS (clk_input, rst_n)
BEGIN

	-- Reset to first state
	IF (rst_n = '0') THEN							
		current_state <= State_retracted;
		
	--	Any time we reach the rising edge of the clock input, go to the next state
	ELSIF(rising_edge(clk_input)) THEN			
		current_state <= next_state;
	END IF;
	
END PROCESS;	



-- TRANSITION LOGIC PROCESS


-- Logic to determine if we should go from fully retracted to fully extended and back based on our desired current direction (DIRECTION_UP1_DOWN0)
Transition_Section: PROCESS (current_state, DIRECTION_UP1_DOWN0)

BEGIN
     CASE current_state IS
				WHEN State_retracted =>								-- 0000
						IF(DIRECTION_UP1_DOWN0 = '1') THEN
							next_state <= State_1st_extend;
						ELSE
							next_state <= State_retracted;
						END IF;

				WHEN State_1st_extend =>							-- 1000
						next_state <= State_2nd_extend;

				WHEN State_2nd_extend =>							--	1100
						next_state <= State_3rd_extend;
						
				WHEN State_3rd_extend =>							-- 1110
						next_state <= State_extended;
							
				WHEN State_extended =>								-- 1111
						IF(DIRECTION_UP1_DOWN0 = '0') THEN
							next_state <= State_1st_retract;
						ELSE
							next_state <= State_extended;
						END IF;
							
				WHEN State_1st_retract =>							-- 1110
						next_state <= State_2nd_retract;
						
				WHEN State_2nd_retract =>							-- 1100
						next_state <= State_3rd_retract;
						
				WHEN State_3rd_retract =>							-- 1000
						next_state <= State_retracted;
 	END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS (Moore Form)

-- Assigns values to the state output from our current extender position, extender output for if we are no longer retracted, and fully extended if we are fully extended
-- Does so for each of the 8 possible states
Decoder_Section: PROCESS (current_state) 		

BEGIN
     CASE current_state IS
         WHEN State_retracted =>		
				state_output <= "0000";
				extender_output <= '0';
				fully_extended <= '0';
			
         WHEN State_1st_extend =>		
				state_output <= "1000";
				extender_output <= '1';
				fully_extended <= '0';
				
         WHEN State_2nd_extend=>		
				state_output <= "1100";
				extender_output <= '1';
				fully_extended <= '0';
			
         WHEN State_3rd_extend=>		
				state_output <= "1110";
				extender_output <= '1';
				fully_extended <= '0';

         WHEN State_extended =>		
				state_output <= "1111";
				extender_output <= '1';
				fully_extended <= '1';
				
			WHEN State_1st_retract =>		
				state_output <= "1110";
				extender_output <= '1';
				fully_extended <= '0';
				
         WHEN State_2nd_retract =>		
				state_output <= "1100";
				extender_output <= '1';
				fully_extended <= '0';
			
         WHEN State_3rd_retract =>		
				state_output <= "1000";
				extender_output <= '1';
				fully_extended <= '0';
  END CASE;
 END PROCESS;

 END ARCHITECTURE ext_circuit;
