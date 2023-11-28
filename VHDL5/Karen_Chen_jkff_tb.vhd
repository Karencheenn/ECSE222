library IEEE;
use IEEE.std_logic_1164.all;

entity Karen_Chen_jkff_tb is 
--empty
end Karen_Chen_jkff_tb;

architecture tb of Karen_Chen_jkff_tb is

	component Karen_Chen_jkff is
		Port (    clk : in std_logic;
					J   : in std_logic;
					K   : in std_logic;
					Q   : out std_logic);

	end component;

	signal clk_in: std_logic;
	signal J_in:  std_logic;
	signal K_in:  std_logic;
	signal Q_out: std_logic;
	--constant clock_period : time := 10 ns ;


	begin 
		DUT : Karen_Chen_jkff port map (clk_in, J_in, K_in, Q_out);
  

		clock_generation : process
	begin
		clk_in <= '1';
		wait for 5 ns;
		clk_in <= '0';
		wait for 5 ns;
	end process clock_generation ;


	process 
		begin

			J_in <= '0';
			K_in <= '0';
			wait for 10 ns;

			J_in <= '0';
			K_in <= '1';
			wait for 10 ns;

			J_in <= '1';
			K_in <= '0';
			wait for 10 ns;

			J_in <= '1';
			K_in <= '1';
			wait for 10 ns;

		wait;
  end process;
end tb;