----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2019 12:28:34 PM
-- Design Name: 
-- Module Name: comparator - Behavioral
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

entity comparator is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           a_lt_b : out STD_LOGIC;
           a_eq_b : out STD_LOGIC;
           a_gt_b : out STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin
    a_eq_b <= ( not b0 and not b1 and not a0 and not a1) or (b0 and not b1 and not a0 and a1) or (b0 and b1 and a0 and a1) or (not b0 and b1 and not a0 and a1);
    a_gt_b <= (not b1 and a1) or (not b0 and not b1 and  a0 ) or (not b0 and a1 and a0);
    a_lt_b <= ( b1 and not a1) or (b0 and b1 and not a0 ) or (b0 and not a1 and not a0);
    
 

end Behavioral;
