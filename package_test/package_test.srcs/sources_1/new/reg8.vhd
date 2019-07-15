
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



	entity reg8 is
		  generic(REGSIZE:integer:=8);
		 Port ( clk : in  STD_LOGIC;
				  clr : in  STD_LOGIC;
				  din : in  STD_LOGIC_vector(REGSIZE-1 downto 0);
				  qout : out  STD_LOGIC_vector(REGSIZE-1 downto 0));
	end reg8;

	architecture Behavioral of reg8 is

	begin
	my_reg:process(clk,clr,din)
	     begin

		 if clk'event and clk='1' then
		  if clr='1' then 
		  qout<=(others=>'0');
		  else 
		  qout<=din;
    end if;
	 end if;
	 end process;
	end Behavioral;
	

