library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit0 is
    generic(
        BITS : integer := 64);
    Port ( data_in : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           counter : in STD_LOGIC_VECTOR(4 DOWNTO 0); 
           --output signals connecting the control unit to the enable signals for the other components (to enable each component)
           alu_en : out STD_LOGIC; --tell it to enable/load values of A and B
           ff_en : out STD_LOGIC; --tell it to enable product register for writing result
           count_en : out STD_LOGIC; --tell it to enable the count register to increase the count by one
           shift64_en : out STD_LOGIC; --tell it to enable the shift registers to shift left/right by one bit
           shift32_en : out STD_LOGIC; --tell it to enable the shift registers to shift left/right by one bit
           done : out STD_LOGIC --tell it to enable the done signal and flag it high 
           ); 
end ControlUnit0;

architecture Behavioral of ControlUnit0 is
	type state_type is (s0, s1, s2);
	signal pr_state, nx_state : state_type;
	
begin
    -----------------------------Section 1: FSM register------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
	       pr_state <= s0;
        elsif (rising_edge(clk)) then
            pr_state <= nx_state;
        end if; 
    end process;
     
    -----------section 2: next state function for Mealy-----------------
	process (pr_state, counter)
	begin
		case pr_state is
			when s0=>
				nx_state <= s1; 
			when s1=>
			  if counter = "11111" then
				nx_state <= s2;   
			  else 
				nx_state <=s1; 
			  end if; 
			when s2=>
				nx_state <= s2; 
		end case;
	end process;
	
	-------------------------------------Section 3: Output Function----------------------------------------------
	process (pr_state, data_in)
	begin
		case pr_state is
		--load multiplier and multiplicand values
			when s0=>
			    alu_en <= '1';
			    ff_en <= '0'; 
	            shift64_en <= '0'; 
	            shift32_en <= '0';
	            count_en <= '0'; 
	            done <= '0'; 
	        --shift values 32 times
			when s1=>
			--write 1 to prod reg
			   if data_in = '1' then 
			      ff_en <= '1'; 
			      shift64_en <= '1'; 
				 shift32_en <= '1';
				 count_en <= '1';
				 alu_en <= '0'; 
	              done <= '0';  
			   else 
			   --write 0 to prod reg
			     ff_en <= '0'; 
			     shift64_en <= '1'; 
				 shift32_en <= '1';
				 count_en <= '1';
				 alu_en <= '0'; 
	              done <= '0';  
			   end if;  
			--done state
			when s2=>
			     done <= '1'; 
			     alu_en <= '0'; 
			     shift64_en <= '0'; 
			     shift32_en <= '0';
			     count_en <= '0'; 
		end case;
	end process;
end Behavioral;
