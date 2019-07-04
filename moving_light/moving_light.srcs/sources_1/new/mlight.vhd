----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/28/2019 12:04:46 PM
-- Design Name: 
-- Module Name: mlight - Behavioral
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mlight is
    Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
           clock : in STD_LOGIC;                       -- we have 125 Mhz clock to FPGA and we need to activate it too 
           leds : out STD_LOGIC_VECTOR (3 downto 0));
end mlight;

architecture Behavioral of mlight is
constant clkdiv:integer:=25;
signal counter: std_logic_vector (clkdiv-1 downto 0):=(others=>'0');
signal pulse_3_72Hz:std_logic;  --i want to write 3.72 hz
signal led_reg:std_logic_vector(3 downto 0);
--signal clock_activate_signal:std_logic;


begin

pulse_3_72Hz<='1' when counter=std_logic_vector(to_unsigned(0,counter'length))else '0';
leds<=led_reg;
--clock_activate_signal<='1';

process (clock, counter)
begin
if (clock'event and clock='1') then 
   counter<=counter+1;
   
end if;
end process;      

process (pulse_3_72Hz,clock,sw)
begin 
if (clock'event and clock='1') then
    if pulse_3_72Hz='1' then 
        if sw(2)='1' then 
            led_reg<="0011";
        elsif sw(0)= '1' then
             if sw(1)='1'  then -- rotate right 
                led_reg<=led_reg(0)& led_reg(3 downto 1);
             else               -- rotate left
                led_reg<=led_reg(2 downto 0)& led_reg(3);
                
end if ;
end if ;
end if ;
end if ;
end process; 
                           
end Behavioral;
