-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;


entity LogicalStep_Lab3_top is port (
	clk_in		: in 	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
   leds			: out std_logic_vector(11 downto 0)		
	
);
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is

--
-- Provided Project Components Used
------------------------------------------------------------------- 
	
component Tester port (
   MC_TESTMODE				: in  std_logic;
   I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
); 
end component;
	
component HVAC port (
	clk						: in std_logic; 
	run_n		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
);
end component;

------------------------------------------------------------------
-- Add Other Components here
component Compx4 port (
	compx4_a, compx4_b: in std_logic_vector(3 downto 0);	
	compx4_lt, compx4_eq, compx4_gt : out std_logic
); 
end component;

component EMAC port (
	pb						  		  : in std_logic_vector(3 downto 0);
	lt, eq, gt					  : in std_logic;
	leds 							  : out std_logic_vector(5 downto 0);
	vacOn							  : out std_logic;
	increase, decrease, run_n : out std_logic
); 
end component;

component Mux port (
 	hex_num1, hex_num0 : in std_logic_vector(3 downto 0);
	mux_select         : in std_logic;
	hex_out				 : out std_logic_vector(3 downto 0)
); 
end component;


------------------------------------------------------------------	
-- Create any signals to be used
signal current_temp, mux_temp   					: std_logic_vector(3 downto 0); 	-- current_temp: stores 4-bit value of the current_temp
signal increase, decrease, run_n, lt, eq, gt : std_logic;							-- mux_temp: stores 4-bit value of either desired_temp or vacation_temp, dependent on vacation_temp_mode input
																										-- increase, decrease, run_n: stores the output of EMAC for input in HVAC, dependent on 4-bit comparator
																										-- lt, eq, gt: stores the output of 4-bit comparator; 4-bit A < 4-bit B, 4-bit A == 4-bit B, 4-bit A > 4-bit B respectively
------------------------------------------------------------------- 
	
-- Here the circuit begins

begin

-- 4-bit 2-1 mux for selecting desired_temp or vacation_temp

inst1: Mux port map (
	sw(7 downto 4), sw(3 downto 0),
	pb(3),
	mux_temp
);

-- HVAC component controlling current_temp
inst2: HVAC port map (
	clk_in,
	run_n,
	increase, decrease,
	current_temp(3 downto 0)
);

-- 4-bit comparator. Compare the value of the current_temp and the output of the 4-bit 2-1 mux
inst3: Compx4 port map (
	mux_temp(3 downto 0), current_temp(3 downto 0),
	lt, eq, gt
);

-- Tester component controlling MAG_test led
inst4: Tester port map (
	pb(2),
	eq, gt, lt,
	sw(3 downto 0),
	current_temp(3 downto 0),
	leds(6)
);

-- Energy Monitor and Control (EMAC) logic component
inst5: EMAC port map (
	pb(3 downto 0),
	lt, eq, gt,
	leds(5 downto 0),
	leds(7),
	increase, decrease, run_n
);

-- Assign the current_temp value to leds[11] to leds[8]
leds(11 downto 8) <= current_temp(3 downto 0);


end design;

