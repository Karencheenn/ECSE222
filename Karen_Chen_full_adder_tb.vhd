library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_full_adder_tb is
--empty
	end Karen_Chen_full_adder_tb;
	
architecture tb of Karen_Chen_full_adder_tb is

	component Karen_Chen_full_adder
		port( a: in std_logic;
			b: in std_logic;
			c_in: in std_logic;
			s: out std_logic;
			c_out: out std_logic);
	end component;
		
	signal a_in, b_in, c_in_in, s_out, c_out_out : std_logic;
		
		
	begin 
	dut: Karen_Chen_full_adder port map(
		a => a_in,
		b => b_in,
		c_in => c_in_in,
		c_out => c_out_out,
		s => s_out);
		
		test: process
		begin
			for i in std_logic range '0'to '1' loop
				a_in <= i;
				for j in std_logic range '0' to '1' loop
					b_in <= j;
					for k in std_logic range '0' to '1' loop
						c_in_in <= k;
						wait for 10 ns;
					end loop;
				end loop;
			end loop;
		wait;
	end process;

end tb;

