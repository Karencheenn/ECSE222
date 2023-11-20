library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_half_adder is
	port(a: in std_logic;
			b: in std_logic;
			s: out std_logic;
			c: out std_logic);
	end Karen_Chen_half_adder;
	
architecture structural of Karen_Chen_half_adder is
begin 
		process (a,b)
		begin
			s <= a xor b;
			c <= (a and b);
		end process;
end;


