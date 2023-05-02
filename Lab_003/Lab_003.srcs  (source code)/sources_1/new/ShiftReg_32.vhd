----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2023 01:36:48 PM
-- Design Name: 
-- Module Name: ShiftReg_32 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftReg_32 is
 generic(
    BITS : integer := 32
    );
  Port (
        CLK : IN std_logic;
        D : IN std_logic_vector(BITS-1 downto 0); 
        Shift : IN std_logic;
        Load : IN std_logic;
        RST : IN std_logic;
        Q : OUT std_logic_vector(BITS-1 downto 0)
         );
end ShiftReg_32;

architecture Behavioral of ShiftReg_32 is
    signal temp : std_logic_vector(BITS-1 downto 0);

begin
 Q <= temp;
    process(CLK, RST)
        begin
            if(RST = '1') then
                temp <= X"00000000";
            elsif(rising_edge(clk)) then
                if(Shift = '1') then 
                    temp <= std_logic_vector(shift_right(unsigned(temp), 1));
                elsif(Load = '1') then 
                    temp <= D; 
                end if;
           end if;
    end process;

end Behavioral;
