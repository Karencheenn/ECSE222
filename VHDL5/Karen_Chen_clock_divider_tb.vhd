library IEEE;
use IEEE.std_logic_1164.all;

entity Karen_Chen_clock_divider_tb is 
--empty
end Karen_Chen_clock_divider_tb;

architecture tb of Karen_Chen_clock_divider_tb is

	component Karen_Chen_clock_divider is
		Port (   enable   : in std_logic;
					reset    : in std_logic;
					clk      : in std_logic;
					en_out   : out std_logic );
	end component;

	signal enable_in: std_logic;
	signal reset_in:  std_logic;
	signal clk_in:  std_logic;
	signal en_out_out: std_logic;
	-- constant clock_period : time := 100 ms;
	
	
	begin
	DUT: Karen_Chen_clock_divider port map(enable_in, reset_in, clk_in, en_out_out);
	
	clk_generatioin : process
	begin
		clk_in <= '0'; --T = 1/50M HZ = 20 ns
		wait for 10 ns;
		clk_in <= '1';
		wait for 10 ns;
	end process;
	
	assertion_enable : process
	begin
		enable_in <= '0';
		reset_in <= '0';
		wait for 20 ns;
		
		enable_in <= '1';
		reset_in <= '1';
		wait for 1000000000 ns;

	end process;

end tb;