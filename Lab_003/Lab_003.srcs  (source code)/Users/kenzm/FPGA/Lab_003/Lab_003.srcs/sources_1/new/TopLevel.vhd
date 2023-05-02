----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2023 02:06:53 PM
-- Design Name: 
-- Module Name: TopLevel - Behavioral
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

entity TopLevel is
    generic(
        BITS : integer := 64
        );
  Port ( 
           A : in STD_LOGIC_VECTOR(31 DOWNTO 0);
           B : in STD_LOGIC_VECTOR(31 DOWNTO 0);
           Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Done : out STD_LOGIC;
           R : out STD_LOGIC_VECTOR(63 DOWNTO 0)
           );
end TopLevel;

architecture Behavioral of TopLevel is
--------COMPONENTS-------------

--Prod Reg
component flipflop_64 is
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
end component;

--Shift Left
component ShiftReg_64 is
    generic(
    BITS : integer := 64
    );
  Port (
        CLK : IN std_logic;
        D : IN std_logic_vector(BITS-1 downto 0); 
        Shift : IN std_logic;
        Load : IN std_logic;
        RST : IN std_logic;
        Q : OUT std_logic_vector(BITS-1 downto 0)
         );
end component;

--Shift Right
component ShiftReg_32 is
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
end component;

--adder
component fulladder is 
    generic(
        BITS : integer := 64
        );
    Port ( X : in STD_LOGIC_vector(BITS-1 downto 0);
        Y : in STD_LOGIC_vector(BITS-1 downto 0);
        Sum : out STD_LOGIC_vector(BITS-1 downto 0)
        );
end component;

--Control Unit
component ControlUnit is
    generic(
        BITS : integer := 32
        );
  Port ( 
        --internal clock and reset
        clk : in std_logic;
        rst : in std_logic;
        --input bit and counter
        data_in : in std_logic; --bit from multiplier
        counter : in std_logic_vector(4 downto 0); --5-bit counter
        --enables
        ff_en : out std_logic; --product register enable
        shift64_en : out std_logic; --shift multiplicand left
        shift32_en : out std_logic; --shift multiplier right
        alu_en : out std_logic; --adder enable
        count_en : out std_logic; --counter enable
        --done flag
        done : out std_logic --signals multiplier is done
        );
end component;

--counter
component counter is
  Port ( 
    rst : in std_logic;
    clk : in std_logic;
    en : in std_logic;
    count : out std_logic_vector(4 downto 0)
    );
end component;

--splitter
component splitter is
    generic (
        BITS : integer := 64
        );
  Port ( 
        R : in std_logic_vector(BITS-1 downto 0);
        R_msb : out std_logic_vector((BITS/2)-1 downto 0);
        R_lsb : out std_logic_vector((BITS/2)-1 downto 0)
        );
end component;

--------Signals-------------
    constant NUM : integer := 64;
    signal adder_sum : std_logic_vector(NUM-1 downto 0);
    signal ff_product : std_logic_vector(NUM-1 downto 0);
    signal mcand_shifted : std_logic_vector(NUM-1 downto 0);
    signal mlier_shifter : std_logic_vector((NUM/2)-1 downto 0);
    signal count : std_logic_vector(4 downto 0);
    signal CU_Load : std_logic;
    signal CU_Shift32 : std_logic;
    signal CU_Shift64 : std_logic;
    signal CU_counter : std_logic;
    signal CU_data_in : std_logic;
    signal shift_A : std_logic_vector(NUM-1 downto 0);

begin
    --ports
    ProdReg : flipflop_64
        generic map(
            BITS=>NUM)
        Port Map(clk=>clk, 
            D=>adder_sum, 
            En=>CU_data_in, 
            rst=>rst, 
            Q=>ff_product);
            
    LeftShift : ShiftReg_64
        generic map(
            BITS=>NUM)
        Port Map(clk=>clk,
            D=>shift_A,
            shift=>CU_shift64,
            Load=>CU_Load,
            rst=>rst,
            Q=>mcand_shifted);
            
    RightShift : ShiftReg_32
        generic map(
            BITS=>(NUM/2))
        Port Map(clk=>clk,
            D=>B,
            Shift=>CU_shift32,
            Load=>CU_Load,
            rst=>rst,
            Q=>mlier_shifter);
            
    Adder : fulladder
        generic map(
            BITS=>NUM)
        Port Map(X=>mcand_shifted,
            Y=>ff_product,
            Sum=>adder_sum);
            
   Counts : counter
    Port Map(clk=>clk,
        rst=>rst,
        en=>CU_counter,
        count=>count);
        
    Control_Unit : ControlUnit
        generic map(
            BITS=>NUM)
        Port Map(clk=>clk,
            rst=>rst,
            data_in=>mlier_shifter(0),
            counter=>count,
            ff_en=>CU_data_in,
            alu_en=>CU_Load,
            shift64_en=>CU_Shift64,
            shift32_en=>CU_Shift32,
            count_en=>CU_counter,
            done=>Done);
            
    shift_A((NUM/2)-1 downto 0) <= A;
    shift_A(NUM-1 downto (NUM/2)) <= X"00000000";
    R<=ff_product;

end Behavioral;
