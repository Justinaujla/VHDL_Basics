-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;


entity EMAC is port (
	pb						  		  : in std_logic_vector(3 downto 0);
	lt, eq, gt					  : in std_logic;
	leds 							  : out std_logic_vector(5 downto 0);
	vacOn  						  : out std_logic;
	increase, decrease, run_n : out std_logic
); 
end EMAC;

architecture design of EMAC is

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

increase <= gt; 															-- mux_temp > current_temp ==> increase
decrease <= lt; 															-- mux_temp < current_temp ==> decrease
run_n <= pb(2) or pb(1) or pb(0); 									-- run_n set to off (according to HVAC requirements) when MC_test_mode, door_open, or window_open are enabled
leds(2) <= lt; 															-- when mux_temp < current_temp, ac is on
leds(0) <= gt; 															-- when mux_temp > current_temp, furnace is on
leds(1) <= eq; 															-- when mux_temp == current_temp, are at right temp
leds(3) <= (not eq) and (not (pb(2) or pb(1) or pb (0))); 	-- when mux_temp /= current_temp, and mc_test_mode, window_open, or door_open are not on, blower is on
leds(5) <= pb(0); 														-- when door_open is on, door_open_led is on
leds(4) <= pb(1); 														-- when window_open is on, window_open_led is on
vacOn <= pb(3);															-- when vacation_mode is on, Vacation_mode_led is on

end design;
