----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2023 12:10:48 PM
-- Design Name: 
-- Module Name: flipflop_64 - Behavioral
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

entity flipflop_64 is
    Generic(
        BITS : integer := 64
        );
  Port (
        CLK : IN std_logic;
        D : IN std_logic_vector(BITS-1 downto 0); 
        EN : IN std_logic;
        RST : IN std_logic;
        Q : OUT std_logic_vector(BITS-1 downto 0)
        );
end flipflop_64;

architecture Behavioral of flipflop_64 is

begin
    CLKD : process(CLK, RST)
    begin
        if(RST = '1') then
            Q <= X"0000000000000000";
        elsif(CLK'event AND CLK = '1') then 
            if(EN = '1') then
                Q <= D;
            end if;
        end if;
    end process CLKD;


end Behavioral;
