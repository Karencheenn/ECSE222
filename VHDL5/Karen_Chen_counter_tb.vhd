library IEEE;
use IEEE.std_logic_1164.all;

entity Karen_Chen_counter_tb is 
--empty
end Karen_Chen_counter_tb;

architecture tb of Karen_Chen_counter_tb is

	component Karen_Chen_counter is
		Port (	enable   : in std_logic;
					reset    : in std_logic;
					clk      : in std_logic;
					count    : out std_logic_vector(2 downto 0));

	end component;

	signal enable_in: std_logic;
	signal reset_in:  std_logic;
	signal clk_in:  std_logic;
	signal count_out: std_logic_vector(2 downto 0);
	--constant clock_period : time := 10 ns;

	begin 

		DUT : Karen_Chen_counter port map (enable_in, reset_in, clk_in, count_out);

		clock_generation : process
			begin
				clk_in <= '1';
				wait for 5 ns;
				clk_in <= '0';
				wait for 5 ns;
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