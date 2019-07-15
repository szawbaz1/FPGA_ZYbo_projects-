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

package opcode is
 type mnemonics is (load,store,add,sub);
 type register_names is (s0,s1,s2,s3);
 function Alucode(instr:mnemonics;regn:register_names) return std_logic_vector;
  
end opcode;



package body opcode is
function Alucode(instr:mnemonics;regn:register_names)  return std_logic_vector is

variable opc:std_logic_vector(1 downto 0);
variable regc:std_logic_vector(1 downto 0);
begin
case instr is 
           when load=>opc:="00";
			  when store=>opc:="01";
			  when add=>opc:="10";
			  when sub=>opc:="11";
end case;

case regn is 
           when s0=>regc:="00";
			  when s1=>regc:="01";
			  when s2=>regc:="10";
			  when s3=>regc:="11";
end case;

 
return opc &regc;
end function Alucode;

end opcode;

