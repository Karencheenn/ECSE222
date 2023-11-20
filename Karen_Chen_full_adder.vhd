library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_full_adder is
	port(a: in std_logic;
			b: in std_logic;
			c_in: in std_logic;
			s: out std_logic;
			c_out: out std_logic);
	end Karen_Chen_full_adder;
	
architecture structural of Karen_Chen_full_adder is

	component Karen_Chen_half_adder
		port(a, b : in std_logic;
				s, c: out std_logic);
	end component;

	signal sum, c_HA1, c_HA2: std_logic;
	
begin 
		
		HA1: Karen_Chen_half_adder
			port map(a, b, sum, c_HA1);
			
			
		HA2: Karen_Chen_half_adder
			port map(sum, c_in, s, c_HA2);
			
		c_out <= c_HA1 or c_HA2;		
			
end;

