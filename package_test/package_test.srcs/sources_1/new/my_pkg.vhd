----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/08/2019 02:25:46 PM
-- Design Name: 
-- Module Name: my_pkg - 
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
use IEEE.STD_LOGIC_1164.all;

package my_pkg is

FUNCTION neg_edge(signal s :  std_logic) return BOOLEAN;

end my_pkg;

package body my_pkg is

FUNCTION neg_edge(signal s :  std_logic) return BOOLEAN is
begin
	return (s='0');
end neg_edge;


 
end my_pkg;
