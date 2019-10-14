----------------------------------------------------------------------------------
    -- Company: 
    -- Engineer: 
    -- 
    -- Create Date:    15:01:06 04/18/2013 
    -- Design Name: 
    -- Module Name:    pkgtop - Behavioral 
    -- Project Name: 
    -- Target Devices: 
    -- Tool versions: 
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
    
    use work.my_pkg.all;
    --library  my_registers;
    library my_registers;
    use my_registers.regpkg.all;
    
    entity pkg_top is
        Port ( clk : in  STD_LOGIC;
               d : in  STD_LOGIC;
               q : out  STD_LOGIC;
               qout_test: out STD_LOGIC_vector(3 downto 0)
               );
    end pkg_top;
    
    architecture Behavioral of pkg_top is
    
    begin
        my_nff:process(clk,d)
        begin
            if (clk'event and neg_edge(clk)) then
                 q<=d;
            end if;
        end process;
        
        reg10:reg8
        generic map (REGSIZE=>4)
        PORT MAP(clk=>clk,
        clr=>'0',
        din=>"1111",
        qout=>qout_test);
        
        
        
    end Behavioral;