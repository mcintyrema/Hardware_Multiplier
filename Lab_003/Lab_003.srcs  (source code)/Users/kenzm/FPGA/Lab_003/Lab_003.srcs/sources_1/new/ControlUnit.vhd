------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 02/12/2023 01:59:09 PM
---- Design Name: 
---- Module Name: ControlUnit - Behavioral
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: 
---- 
---- Dependencies: 
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity ControlUnit is
--    generic(
--        BITS : integer := 32
--        );
--  Port ( 
--        --internal clock and reset
--        clk : in std_logic;
--        rst : in std_logic;
--        --input bit and counter
--        data_in : in std_logic; --bit from multiplier
--        counter : in std_logic_vector(4 downto 0); --5-bit counter
--        --enables
--        ff_en : out std_logic; --product register enable
--        shift64_en : out std_logic; --shift multiplicand left
--        shift32_en : out std_logic; --shift multiplier right
--        alu_en : out std_logic; --adder enable
--        count_en : out std_logic; --counter enable
--        --done flag
--        done : out std_logic --signals multiplier is done
--        );
--end ControlUnit;

--architecture Behavioral of ControlUnit is
--    --states
--    type state_type is (s0, s1, s2);
--    signal pr_state, nx_state : state_type;

--begin
----Mealy FSM Control Unit

---------------------------------------------------------------------
--    --section 1: fsm register
--    process(clk, rst)
--        begin
--            if(rst = '1') then
--                pr_state <= s0;
--            elsif (clk'event and clk = '1') then
--                pr_state <= nx_state;
--            end if;
--     end process;
---------------------------------------------------------------------
--    --section 2 Next State Function
--    process(pr_state, counter)
--    begin
--        case pr_state is
--            when s0 =>
--                nx_state <= s1;
--            when s1 =>
--                if(counter = "11111") then 
--                    nx_state <= s2;
--                else
--                    nx_state <= s1;
--                end if;
--            when s2 =>
--                nx_state <= s2;
--        end case;
--   end process;
   
---------------------------------------------------------------------  
--     --section 3 Output Function
--     process(data_in, pr_state)
--     begin
--        case pr_state is
--        ---------S0 is where we load A and B--------
--            when s0 =>
--                    --outputs
--                    ff_en <= '0'; --do not write to prod reg yet
--                    shift64_en <= '0'; --do not shift yet
--                    shift32_en <= '0';
--                    alu_en <= '1'; --load A and B to adder
--                    count_en <= '0'; --do not increment counter
--                    done <= '0'; --process not done
--            ---------S1 is where we shift A and B, increase the counter, and write to Product Register--------
--            when s1 =>
--            --if counter = 30 repeat process one more time then switch to s2
--                    --outputs
--                    if(data_in = '1') then
--                        --output
--                        ff_en <= '1'; --load prod register
--                        shift64_en <= '1'; --shift multiplicand
--                        shift32_en <= '1'; --shift multiplier
--                        alu_en <= '0'; --A and B already loaded
--                        count_en <= '1'; --add 1 to the counter
--                        done <= '0'; --not done yet
--                    else
--                        --output
--                        ff_en <= '0';
--                        shift64_en <= '1';
--                        shift32_en <= '1';
--                        alu_en <= '0';
--                        count_en <= '1';
--                        done <= '0';
--                    end if;
--            -------Done State---------
--            when s2 =>
--                    --output
--                    shift64_en <= '0'; --shift multiplicand
--                    shift32_en <= '0'; --shift multiplier
--                    alu_en <= '0'; --A and B already loaded
--                    count_en <= '0'; --add 1 to the counter
--                    done <= '1'; --not done yet
--            end case;
--    end process;


--end Behavioral;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is
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
end ControlUnit;

architecture Behavioral of ControlUnit is
	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2);
	
	-- Register to hold the current state
	signal state : state_type;
	signal nextstate : state_type;
begin
    --section 1: FSM register for Mealy
    process(clk, rst)
    begin
        if rst = '1' then
	       state <= s0;
        elsif (rising_edge(clk)) then
            state <= nextstate;
        end if; 
    end process;
     
    --section 2: next state function for Mealy
	process (state, counter)
	begin
      --if reset = '1' then
	--	 state <= s0;
    --  elsif (rising_edge(clk)) then
		case state is
			when s0=>
				nextstate <= s1; --s1 is where we go to do both use ALU and do shifting 
			when s1=>
			  if counter = "11111" then
				nextstate <= s2;  --if we've reached 32 repetitions, go to s2 where we write to product reg and signal done flag 
			  else 
				nextstate <=s1; --start another repetition if count<32; repeat shifting until count=32
			  end if; 
			when s2=>
				nextstate <= s2; --stay in s2 bc we are done 
		end case;
	 -- end if; 
	end process;
	
	--I tried combining sections 2 and 3, but it gets hard when you need to test two inputs to assign the state and output 
	
	--section 3: output function 
	-- Determine the output based only on the current state and the input (do not wait for a clock edge)
	process (state, data_in)
	begin
	--initialize all the signals to zero: 
		case state is
			when s0=>
			    alu_en <= '1'; --load A and B when we're in s0 
			    ff_en <= '0'; 
	            shift64_en <= '0'; 
	            shift32_en <= '0';
	            count_en <= '0'; 
	            done <= '0'; 
			when s1=>
			   if data_in = '1' then --multiplier0 = 1 
			      ff_en <= '1'; --write to the product register (R += R + multiplicand) aka adding partial products 
			   else 
			     ff_en <= '0'; 
			   end if;  
			     --always shift and increase count in s1 
				 shift64_en <= '1'; 
				 shift32_en <= '1';
				 count_en <= '1';
				 alu_en <= '0'; --load A and B when we're in s0 
	              done <= '0';  
			when s2=>
			     --in s2 we will just turn the done signal HIGH 
			     done <= '1'; 
			     alu_en <= '0'; 
			     --prod <= '0'; 
			     shift64_en <= '0'; 
			     shift32_en <= '0';
			     count_en <= '0'; 
		end case;
	end process;
end Behavioral;
