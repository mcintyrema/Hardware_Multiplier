----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2023 02:00:44 PM
-- Design Name: 
-- Module Name: splitter - Behavioral
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

entity splitter is
    generic (
        BITS : integer := 64
        );
  Port ( 
        R : in std_logic_vector(BITS-1 downto 0);
        R_msb : out std_logic_vector((BITS/2)-1 downto 0);
        R_lsb : out std_logic_vector((BITS/2)-1 downto 0)
        );
end splitter;

architecture Behavioral of splitter is

begin
    R_msb <= R(BITS-1 downto BITS/2);
    R_lsb <= R((BITS/2)-1 downto 0);

end Behavioral;
