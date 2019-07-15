--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package regpkg is
component reg8 is
		  generic(REGSIZE:integer:=8);
		 Port ( clk : in  STD_LOGIC;
				  clr : in  STD_LOGIC;
				  din : in  STD_LOGIC_vector(REGSIZE-1 downto 0);
				  qout : out  STD_LOGIC_vector(REGSIZE-1 downto 0));
	end component reg8;

end regpkg;

package body regpkg is


 
end regpkg;
