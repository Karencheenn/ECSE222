library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity Karen_Chen_sequence_detector is
port (seq : in std_logic;
		enable : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		cnt_1 : out std_logic_vector(2 downto 0); -- counts the occurrence of the pattern "1011".
		cnt_2 : out std_logic_vector(2 downto 0)); -- counts the occurrence of the pattern "0010".
end Karen_Chen_sequence_detector;

architecture sequence_detector of Karen_Chen_sequence_detector is

	component Karen_Chen_FSM is
		port (seq : in std_logic; 
					enable : in std_logic;
					reset : in std_logic; 
					clk : in std_logic;
					out_1 : out std_logic; -- "1011" 
					out_2 : out std_logic); -- "0010"
	end component;
	
	component Karen_Chen_counter is
		port (	enable   : in std_logic;
					reset    : in std_logic;
					clk      : in std_logic;
					count    : out std_logic_vector(2 downto 0));
	end component;

	signal count1,count2:std_logic;

begin

	FSM : Karen_Chen_FSM port map (seq,enable,reset,clk,count1,count2);

	counter1 : Karen_Chen_counter port map (count1,reset,clk,cnt_1);
	
	counter2 : Karen_Chen_counter port map (count2,reset,clk,cnt_2);


end sequence_detector;

	
