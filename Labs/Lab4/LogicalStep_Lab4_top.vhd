-- Group 17: Yuhao Chen & Gurvijaypal Aujla
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   Clk			: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 
   leds			: out std_logic_vector(15 downto 0)	
	);
END LogicalStep_Lab4_top;

ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS

--
-- Provided Project Components Used
-------------------------------------------------------------------


-- Add Other Components here
-------------------------------------------------------------------

COMPONENT RAC_movement PORT
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
END COMPONENT;

COMPONENT RAC_extender PORT
(
		 clk_input, rst_n, extender_toggle, extender_enabled		: IN std_logic;								-- clk_input: 				Clock,
																																		-- rst_n: 					Reset input,
																																		-- extender_toggle: 		Push button to enable extender when pressed AND released,
																																		-- extender_enabled: 	Input from RAC Movement to see if we are changing X-Y positions. If moving, can't extend, else we can,
		 extender_output						 								: OUT std_logic;								-- extender_output:		Outputs if we are no longer in the fully retracted state (not in 0000),
		 state_output															: OUT std_logic_vector(3 downto 0);		--	state_output:			Outputs the 4-bit value for our current location (0000, 1000, 1100, 1110, or 1111)
		 fully_extended														: OUT std_logic								--	fully_extended:		Outputs if we are in the fully extended state (1111)
 );
END COMPONENT;

COMPONENT RAC_grappler PORT
	(
		 rst_n, grappler_toggle, fully_extended 	: IN 	std_logic; 	-- rst_n:							Reset input
																						-- fully_extended: 				Input from RAC grappler to determine if fully extended. If not fully extended, we can't open grappler, else we can,
																						-- grappler_toggle: 				Push button to trigger the grappler when pressed AND released (only if extender is fully extended),
		 grappler_open1_closed0							: OUT std_logic	--	grappler_open1_closed0:		Output state of if grappler is opened or closed
	);
END COMPONENT;

-- Create any signals to be used
------------------------------------------------------------------- 
SIGNAL Extender_fully_extended	:	std_logic;		-- Extender_fully_extended: 	stores the value from the extender component for if the extender is fully extended (1), otherwise (0)
SIGNAL Movement_not_changing		:	std_logic;		--	Movement_not_changing:		stores the value from the movement component for if the RAC is changing its X-Y position (0), otherwise its not moving (1)
SIGNAL Not_retracted					: std_logic;		--	Not_retracted:					stores the value from the extender component for if the extender is not fully retracted (1), otherwise it is retracted (0)

-- Here the circuit begins
	
BEGIN


-- RAC X-Y position movement component; Controls the current X-Y position of the RAC
inst1: RAC_movement PORT MAP (clk, rst_n, pb(3), pb(2), Not_retracted, sw(7 downto 4), sw(3 downto 0), leds(15 downto 12), leds(11 downto 8), leds(0), Movement_not_changing);

--	RAC extender component; Controls the posiiton of the extender of the RAC
inst2: RAC_extender PORT MAP (clk, rst_n, pb(1), Movement_not_changing, Not_retracted, leds(7 downto 4), Extender_fully_extended);

--	RAC grappler component; Controls the state of the grappler of the RAC
inst3: RAC_grappler PORT MAP (rst_n, pb(0), Extender_fully_extended, leds(3));

END Circuit;
