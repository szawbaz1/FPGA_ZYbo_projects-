----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/12/2019 12:27:19 PM
-- Design Name: 
-- Module Name: top_mod - 
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
use work.opcode.all;

entity top_mod is
Port ( adr : in integer RANGE 0 to 3;
data : out STD_LOGIC_VECTOR (3 downto 0));
end top_mod;

architecture Behavioral  of top_mod is

type register_file is array(0 to 3) of std_logic_vector(3 downto 0);
signal regfile : register_file;
begin
regfile(0) <= AluCode(load, s0);
regfile(1) <= AluCode(add, s2);
regfile(2) <= AluCode(store, s1);
regfile(3) <= (others => '0');
data <= regfile(adr);


end Behavioral;
