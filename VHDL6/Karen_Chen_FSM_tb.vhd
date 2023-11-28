library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Karen_Chen_FSM_tb is 
--empty
end Karen_Chen_FSM_tb;

architecture tb of Karen_Chen_FSM_tb is
component Karen_Chen_FSM is
	port (   seq      : in std_logic ;
         enable   : in std_logic ;
         reset    : in std_logic ;
         clk      : in std_logic ;
         out_1    : out std_logic ; 
         out_2    : out std_logic ); 
end component;

signal seq, enable, reset, clk, out_1, out_2: std_logic;
constant clock_period : time := 10 ns;

begin
	uut: Karen_Chen_FSM port map (seq, enable, reset, clk, out_1, out_2);

   clock_generation :process
   begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
   end process clock_generation;
   
   process
		begin    
			enable <= '0';
			reset <= '0';
			seq <= '0';
			wait for 20 ns;
      
			enable <= '0';
			reset <= '1';
			seq <= '0';
			wait for 20 ns;
      
			enable <= '1';
			reset <= '0';
			seq <= '0';
			wait for 20 ns;
      
			enable <= '1';
			reset <= '1';
			seq <= '0';
			wait for 20 ns;
      
			enable <= '1'; ------
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