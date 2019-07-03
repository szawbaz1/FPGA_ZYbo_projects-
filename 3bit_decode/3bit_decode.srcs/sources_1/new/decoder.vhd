----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/25/2019 04:26:26 PM
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder is
    Port ( g1 : in STD_LOGIC;
           g2a : in STD_LOGIC;
           g2b : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end decoder;

architecture Behavioral of decoder is
Signal Y_i:STD_LOGIC_VECTOR(7 downto 0);
begin
With address Select
Y_i<="11111110" when "000",
"11111101" When "001",
"11111011" When "010",
"11110111" When "011",
"11101111" When "100",
"11011111" When "101",
"10111111" When "110",
"01111111" When "111",
"11111111" When others;

output<=Y_i when (not g1 and not g2a and g2b) ='1' else 
"11111111";


end Behavioral;
