-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY RAC_movement IS PORT
	(
		CLK, RESET_n, CLK_EN, MOTION_EN, EXTENDER_POS	:	IN std_logic := '0';							-- CLK: 						Clock,
																																-- RESET_n: 				Reset input,
																																-- CLK_EN:					Clock enabler for the 4-bit counter
																																-- MOTION_EN: 				Push button to store the specified X-Y targets for movement when pressed AND released,
																																-- EXTENDER_POS: 			Input from RAC Extender to determine if we are changing the current extender position
		x_target, y_target										:	IN std_logic_vector(3 downto 0);			--	x_target, y_target:	Target 4-bit positions for our RAC to move to
		x_leds, y_leds												:	OUT std_logic_vector(3 downto 0);		-- x_leds, y_leds:		Leds to display our current X-Y positions
		Error_led													:	OUT std_logic := '0';						--	Error_led:				Output if we trip a System Fault Error (moving when RAC Extender is extended)
		is_not_moving												:	OUT std_logic := '0'							--	is_not_moving:			Output if we are currently changing our X-Y position
	);
END ENTITY;
	
ARCHITECTURE movement_circuit OF RAC_movement IS

--
-- Provided Project Components Used
------------------------------------------------------------------- 

COMPONENT U_D_Bin_Counter4bit PORT	-- Same as the 8-bit counter provided, but changed to be 4-bits wide
	(
		CLK				:	IN std_logic := '0';
		RESET_n			:	IN std_logic := '0';
		CLK_EN			:	IN std_logic := '0';
		UP1_DOWN0		:	IN std_logic := '0';
		COUNTER_BITS	:	OUT std_logic_vector(3 downto 0)
	);
END COMPONENT;


-- Add Other Components here
-------------------------------------------------------------------


COMPONENT Compx4 PORT -- 4-bit comparator to tell our 4-bit counter if it needs to increase, decrease or remain the same
(
 	compx4_a, compx4_b					: IN std_logic_vector(3 downto 0);	
   compx4_lt, compx4_eq, compx4_gt 	: OUT std_logic
); 
END COMponent;

	
-- Create any signals to be used
------------------------------------------------------------------- 


SIGNAL x_temp_target			: 	std_logic_vector(3 downto 0);		--	Temporary targets to store any newly inputed target values, will be processed as a valid target once RAC is no longer moving
SIGNAL y_temp_target			: 	std_logic_vector(3 downto 0);

SIGNAL x_target_pos 			: 	std_logic_vector(3 downto 0);		--	Current X-Y targets, value is of the last inputted target while the RAC was not moving. Only updates once position is reached
SIGNAL y_target_pos			: 	std_logic_vector(3 downto 0);

SIGNAL x_current_pos			: 	std_logic_vector(3 downto 0);		-- Current X-Y position
SIGNAL y_current_pos			: 	std_logic_vector(3 downto 0);

SIGNAL x_lt, x_eq, x_gt		: 	std_logic;								-- 4-bit comparator outputs for X-position
SIGNAL y_lt, y_eq, y_gt		: 	std_logic;								--	4-bit comparator outputs for Y-position

SIGNAL counter_x_enabled	:	std_logic;								--	Additional signal to hold if we have reached out X-target
SIGNAL counter_y_enabled	:	std_logic;								--	Additional signal to hold if we have reached out y-target

SIGNAL fault_error			:	std_logic := '0';						-- Signal to hold if we have reached a System Fault Error, and control the pausing of all processes until cleared




-- Here the circuit begins
	
BEGIN	

-- Logic:
--				1. Store into temp value
--				2. Push temp value into target when previous target reached
--				3. Compare current position and target
--				4.	If not at target, take a step towards target


-- When RAC's motion push button is pressed AND released, store the inputted target into a temporary holder
temp_target: PROCESS (MOTION_EN, RESET_n) IS	
BEGIN
	IF (falling_edge(MOTION_EN)) THEN
		x_temp_target <= x_target;
		y_temp_target <= y_target;
	END IF;
	IF (RESET_n = '0') THEN
		x_temp_target <= "0000";
		y_temp_target <= "0000";
	END IF;
	
END PROCESS;

-- This process synchronizes the activity to a clock
set_target: PROCESS (CLK) IS			
BEGIN

-- If we are not moving (reached our previous target), we can update our current target from the stored temporary target
	IF(counter_x_enabled = '0' AND counter_y_enabled = '0') THEN		
		x_target_pos <= x_temp_target;
		y_target_pos <= y_temp_target;
	END IF;
	IF (RESET_n = '0') THEN
		x_target_pos <= "0000";
		y_target_pos <= "0000";
		
	END IF;
	
END PROCESS;

		
-- 4-bit comparator components used to compare X-Y current positions with targets, and store their values into their respective signal

inst1: Compx4 PORT MAP (x_current_pos, x_target_pos, x_lt, x_eq, x_gt);		

inst2: Compx4 PORT MAP (y_current_pos, y_target_pos, y_lt, y_eq, y_gt);


PROCESS (CLK) IS
BEGIN

	-- If there is no fault error, set our error_led to (0)
	IF( fault_error = '0') THEN
		ERRor_led <= '0';
	END IF;
	
	-- If we had a System Fault Error but cleared it, clear the fault error and enable movement
	IF(fault_error = '1' AND ExtENDER_POS = '0') THEN		
		fault_error <= '0';
		Error_led <= '0';
	END IF;
	
	-- If our extender is not retracted and we try and move, create a fault error
	IF((counter_x_enabled = '1' OR counter_y_enabled = '1') AND EXTENDER_POS = '1') THEN	
		fault_error <= '1';
		Error_led <= '1';
		counter_x_enabled <= '0';
		counter_y_enabled <= '0';
		
	-- Otherwise if our X or Y positions are not at their targets, movement for that one component is enabled	
	ELSIF (falling_edge(CLK)) THEN		
		counter_x_enabled <= not x_eq;
		counter_y_enabled <= not y_eq;
	END IF;
	
END PROCESS;


-- 4-bit up/down binary counter components to change current X and Y positions to move towards target

inst3: U_D_Bin_Counter4bit PORT MAP (CLK, RESET_n, counter_x_enabled, x_lt, x_current_pos); 
	
inst4: U_D_Bin_Counter4bit PORT MAP (CLK, RESET_n, counter_y_enabled, y_lt, y_current_pos);

-- Assign our current position for X and Y to their respective outputs
x_leds <= x_current_pos;
y_leds <= y_current_pos;

-- RAC_extender is active high
is_not_moving <= not (counter_x_enabled or counter_y_enabled); 


END movement_circuit;
		