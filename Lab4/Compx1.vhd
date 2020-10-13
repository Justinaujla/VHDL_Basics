library ieee;
use ieee.std_logic_1164.all;

entity Compx1 is port (
 	compx1_a, compx1_b		  			: in std_logic;	
   compx1_lt, compx1_eq, compx1_gt 	: out std_logic
); 
end Compx1;

architecture dataflow of Compx1 is

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

compx1_lt <= (not compx1_a) and compx1_b; -- A < B; 1-bit A < 1-bit B
compx1_eq <= not (compx1_a xor compx1_b); -- A == B; 1-bit A == 1-bit B
compx1_gt <= compx1_a and (not compx1_b); -- A > B; 1-bit A > 1-bit B

end dataflow;