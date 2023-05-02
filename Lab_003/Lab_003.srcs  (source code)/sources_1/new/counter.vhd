----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/13/2023 02:39:47 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
  Port ( 
    rst : in std_logic;
    clk : in std_logic;
    en : in std_logic;
    count : out std_logic_vector(4 downto 0)
    );
end counter;

architecture Behavioral of counter is
    signal temp : std_logic_vector(4 downto 0);

begin
    count <= temp;
    process(rst, clk)
    begin
        if(rst = '1') then
            temp <= "00000";
        elsif(rising_edge(clk)) then
            if(en = '1') then
                temp <= temp + 1;
           end if;
       end if;
   end process;


end Behavioral;
