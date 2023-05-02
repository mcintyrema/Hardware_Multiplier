----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2023 03:04:08 PM
-- Design Name: 
-- Module Name: fulladder - Behavioral
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

entity fulladder is 
    generic(
        BITS : integer := 64
        );
    Port ( X : in STD_LOGIC_vector(BITS-1 downto 0);
        Y : in STD_LOGIC_vector(BITS-1 downto 0);
        Sum : out STD_LOGIC_vector(BITS-1 downto 0)
        );
end entity;
 
architecture rtl of fulladder is
begin
   Sum <= std_logic_vector(unsigned(X) + unsigned(Y));
end architecture;