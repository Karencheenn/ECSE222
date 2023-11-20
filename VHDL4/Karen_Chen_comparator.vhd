library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Karen_Chen_comparator is
Port ( A, B : in std_logic_vector(3 downto 0);
	AgtBplusOne : out std_logic;
	AgteBplusOne : out std_logic;
	AltBplusOne : out std_logic; 
	AlteBplusOne : out std_logic;
	AeqBplusOne : out std_logic; 
	overflow : out std_logic);
end Karen_Chen_comparator;

architecture comp of Karen_Chen_comparator is
	--5-bit to account for overflow
	Signal BplusOne: std_logic_vector(4 downto 0); 
	
begin 
	process(A,B)
	begin	
			AgtBplusOne <= '0';
			AgteBplusOne <= '0';
			AltBplusOne <= '0'; 
			AlteBplusOne <= '0';
			AeqBplusOne <= '0'; 
			overflow <= '0';
			
		if to_integer(unsigned(B)) +1 >= 16 then 
			overflow <= '1';
			
		else

			if to_integer(unsigned(B)) + 1 = to_integer(unsigned(A)) then
				AeqBplusOne <= '1';
				AgteBplusOne <= '1';
				AlteBplusOne <= '1';
				
			elsif to_integer(unsigned(B)) + 1 > to_integer(unsigned(A)) then
				AltBplusOne <= '1';
				AlteBplusOne <= '1';
			
			else
			
				AgtBplusOne<= '1';
				AgteBplusOne <= '1';
			end if;
			
		end if;
	end process;
end comp;