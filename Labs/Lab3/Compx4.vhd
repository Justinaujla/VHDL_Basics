-- Group 17: Yuhao Chen & Gurvijaypal Aujla
library ieee;
use ieee.std_logic_1164.all;

entity Compx4 is port (
 	compx4_a, compx4_b					: in std_logic_vector(3 downto 0);	
   compx4_lt, compx4_eq, compx4_gt 	: out std_logic
); 
end Compx4;

architecture dataflow of Compx4 is


-- Provided Project Components Used
------------------------------------------------------------------- 

------------------------------------------------------------------
-- Add Other Components here

component Compx1
	port (
		compx1_a, compx1_b		  			: in std_logic;	
		compx1_lt, compx1_eq, compx1_gt 	: out std_logic
	); 
end component;

------------------------------------------------------------------	
-- Create any signals to be used
signal res_gt, res_eq, res_lt : std_logic_vector(3 downto 0); 	-- res_gt, res_eq, res_lt: signal used to store the values of each bit comparison for each of the 4 1-bit comparators
																					-- each 1-bit comparator will store their outputs to each (A > B), (A == B), and (A < B) vector for later use
------------------------------------------------------------------- 
	
-- Here the circuit begins

begin

-- 1-bit comparator for 1st bit of each 4-bit input
inst1: Compx1 port map (
	compx4_a(3), compx4_b(3),
	res_lt(3), res_eq(3), res_gt(3)
);

-- 1-bit comparator for 2nd bit of each 4-bit input
inst2: Compx1 port map (
	compx4_a(2), compx4_b(2),
	res_lt(2), res_eq(2), res_gt(2)
);

-- 1-bit comparator for 3rd bit of each 4-bit input
inst3: Compx1 port map (
	compx4_a(1), compx4_b(1),
	res_lt(1), res_eq(1), res_gt(1)
);

-- 1-bit comparator for 4th bit of each 4-bit input
inst4: Compx1 port map (
	compx4_a(0), compx4_b(0),
	res_lt(0), res_eq(0), res_gt(0)
);

compx4_lt <= res_lt(3) or (res_eq(3) and res_lt(2)) or (res_eq(3) and res_eq(2) and res_lt(1)) or (res_eq(3) and res_eq(2) and res_eq(1) and res_lt(0)); -- A < B; 4-bit A < 4-bit B
compx4_eq <= res_eq(3) and res_eq(2) and res_eq(1) and res_eq(0);																														-- A == B; 4-bit A == 4-bit B
compx4_gt <= res_gt(3) or (res_eq(3) and res_gt(2)) or (res_eq(3) and res_eq(2) and res_gt(1)) or (res_eq(3) and res_eq(2) and res_eq(1) and res_gt(0)); -- A > B; 4-bit A > 4-bit B

end dataflow;