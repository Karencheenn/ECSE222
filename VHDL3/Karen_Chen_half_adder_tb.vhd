library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_half_adder_tb is
--empty
	end Karen_Chen_half_adder_tb;
	
architecture tb of Karen_Chen_half_adder_tb is

	component Karen_Chen_half_adder
		port( a, b: in std_logic;
				s, c: out std_logic);
	end component;
		
	signal a_in, b_in, s_out, c_out : std_logic;
		
		
	begin 
	dut: Karen_Chen_half_adder port map(
		a => a_in,
		b => b_in,
		c => c_out,
		s => s_out);
		
		test: process
		begin
			for i in std_logic range '0'to '1' loop
				a_in <= i;
				for j in std_logic range '0' to '1' loop
					b_in <= j;
					wait for 10 ns;
				end loop;
			end loop;
		wait;
	end process;

end tb;

