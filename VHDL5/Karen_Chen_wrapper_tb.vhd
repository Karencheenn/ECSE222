library IEEE;
use IEEE.std_logic_1164.all;

entity Karen_Chen_wrapper_tb is 
--empty
end Karen_Chen_wrapper_tb;

architecture tb of Karen_Chen_wrapper_tb is

component Karen_Chen_wrapper is
	Port   ( enable  : in std_logic ;
				reset   : in std_logic ;
				clk     : in std_logic ;
				HEX0    : out std_logic_vector(6 downto 0));
end component;


	signal enable_in: std_logic;
	signal reset_in:  std_logic;
	signal clk_in:  std_logic;
	signal HEX0_out: std_logic_vector(6 downto 0);
	--constant clock_period : time := 100 ms;

	begin 

	DUT : Karen_Chen_wrapper port map (enable_in, reset_in, clk_in, HEX0_out);

	clock_generation : process
	begin
		clk_in <= '1';
		wait for 10 ns;
		clk_in <= '0';
		wait for 10 ns;
	end process clock_generation ;

  process 
	begin
  
	enable_in <= '0';
	reset_in <= '0';
	wait for 10 ns;

	enable_in <= '0';
	reset_in <= '1';
	wait for 10 ns;

	enable_in <= '1';
	reset_in <= '0';
	wait for 10 ns;

	enable_in <= '1';
	reset_in <= '1';
	wait for 10 ns;

    wait;
  end process;
end tb;