library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity Karen_Chen_wrapper_tb is 
--empty
end Karen_Chen_wrapper_tb;

architecture tb of Karen_Chen_wrapper_tb is

	component Karen_Chen_wrapper is
		port   ( reset  : in std_logic ;
					clk    : in std_logic ;
					HEX0   : out std_logic_vector(6 downto 0);
					HEX5   : out std_logic_vector(6 downto 0));
	end component;

	signal reset: std_logic;
	signal clk:  std_logic;
	signal HEX0: std_logic_vector(6 downto 0);
	signal HEX5: std_logic_vector(6 downto 0);
	constant clock_period : time := 100 ms;
	--constant clock_period : time := 20 ns;

	begin
	uut: Karen_Chen_wrapper port map (reset, clk, HEX0, HEX5);
		 
	clock_generation : process
	begin
		clk <= '1';
		wait for 50 ms;
		clk <= '0';
		wait for 50 ms;
	end process clock_generation ;

	process 
		begin
		
		reset <= '0';
		wait for 700 ms;
   
		reset <= '1';
		wait;
  end process;
end tb;