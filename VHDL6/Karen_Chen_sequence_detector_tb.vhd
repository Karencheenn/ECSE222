library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Karen_Chen_sequence_detector_tb is 
-- empty
end Karen_Chen_sequence_detector_tb;

architecture tb of Karen_Chen_sequence_detector_tb is

	component Karen_Chen_sequence_detector is
	port (   seq      : in std_logic ;
				enable   : in std_logic ;
				reset    : in std_logic ;
				clk      : in std_logic ;
				cnt_1    : out std_logic_vector(2 downto 0) ; -- 1101
				cnt_2    : out std_logic_vector(2 downto 0) ); -- 0010
	end component;

	signal seq, enable, reset, clk: std_logic;
	signal cnt_1, cnt_2: std_logic_vector(2 downto 0) ;
	constant clock_period : time := 10 ns;

begin
	uut: Karen_Chen_sequence_detector port map (seq, enable, reset, clk, cnt_1, cnt_2);

   clock_generation :process
   begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
   end process clock_generation ;
	
   process
		begin    
			--enable <= '0'; For testing if they are working well
			--reset <= '0';
			--seq <= '0';
			--wait for 20 ns;
      
			--enable <= '0';
			--reset <= '1';
			--seq <= '0';
			--wait for 20 ns;
      
			--enable <= '1';
			--reset <= '0';
			--seq <= '0';
			--wait for 20 ns;
      
			--enable <= '1';
			--reset <= '1';
			--seq <= '0';
			--wait for 20 ns;
      
			enable <= '1'; -- testing for counting 
			reset <= '1';
     
			seq <= '0';
			wait for 10 ns;  
      
			seq <= '0';
			wait for 10 ns; 
      
			seq <= '1';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;
      
			seq <= '0';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;  
      
			seq <= '0';
			wait for 10 ns;
      
			seq <= '1';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;  
      
			seq <= '0';
			wait for 10 ns;  
      
			seq <= '0';
			wait for 10 ns;
      
			seq <= '1';
			wait for 10 ns;  
      
			seq <= '0';
			wait for 10 ns;  
      
			seq <= '0';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;
      
			seq <= '0';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;
      
			seq <= '0';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;  
      
			seq <= '1';
			wait for 10 ns;

   end process;
end;