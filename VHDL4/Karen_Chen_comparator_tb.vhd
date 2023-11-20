library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_comparator_tb is
end Karen_Chen_comparator_tb;
architecture tb of Karen_Chen_comparator_tb is                                                 

-- signals                                                   
signal A: std_logic_vector(3 downto 0);
signal B: std_logic_vector(3 downto 0);
signal AgtBplusOne: std_logic;
signal AgteBplusOne: std_logic;
signal AltBplusOne: std_logic;
signal AlteBplusOne: std_logic;
signal AeqBplusOne: std_logic;
signal overflow: std_logic;

component Karen_Chen_comparator
	port (A, B: in std_logic_vector(3 downto 0);
			AgtBplusOne: out std_logic;
			AgteBplusOne: out std_logic;
			AltBplusOne: out std_logic;
			AlteBplusOne: out std_logic;
			AeqBplusOne: out std_logic;
			overflow: out std_logic);
end component;

begin
	comparator : Karen_Chen_comparator 
	port map (A, B, AgtBplusOne, AgteBplusOne, AltBplusOne, AlteBplusOne, AeqBplusOne, overflow);

comparator_test: process
begin
	A <= "0101";
	
	for i in 0 to 16 loop
		B <= std_logic_vector(to_unsigned(i, 4));
		wait for 10 ns;
	end loop;
	
	wait;
end process comparator_test;

end tb;