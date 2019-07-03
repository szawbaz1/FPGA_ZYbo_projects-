----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2019 02:15:18 PM
-- Design Name: 
-- Module Name: top_module - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_module is
    Port ( swi : in STD_LOGIC_VECTOR (3 downto 0);
           ld: out STD_LOGIC_VECTOR (2 downto 0) 
    );
end top_module;

architecture Behavioral of top_module is
component comparator is 
          Port ( a0 : in STD_LOGIC;
         a1 : in STD_LOGIC;
         b0 : in STD_LOGIC;
         b1 : in STD_LOGIC;
         a_lt_b : out STD_LOGIC;
         a_eq_b : out STD_LOGIC;
         a_gt_b : out STD_LOGIC);
end component;

begin
c1:comparator
   port map (
   a0=> swi(3),
   a1=> swi(2),
   b0=> swi(1),
   b1=> swi(0),
   a_lt_b => ld(2),
   a_eq_b => ld(1),
   a_gt_b=> ld(0)
   );

end Behavioral;



