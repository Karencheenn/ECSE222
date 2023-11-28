library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_wrapper is 
	Port (enable : in std_logic;
			reset : in std_logic; 
			clk : in std_logic;
			HEX0 : out std_logic_vector (6 downto 0)); 
end Karen_Chen_wrapper;

architecture wrapper of Karen_Chen_wrapper is

	component Karen_Chen_clock_divider is
		port (   enable   : in std_logic;
					reset    : in std_logic;
					clk      : in std_logic;
					en_out   : out std_logic );
	end component;
	
	component Karen_Chen_counter is
		port ( enable   : in std_logic;
				reset    : in std_logic;
				clk      : in std_logic;
				count    : out std_logic_vector(2 downto 0));
	end component;
	
	component seven_segment_decoder is
		port(code: in std_logic_vector (3 downto 0);
			segments_out: out std_logic_vector (6 downto 0));
	end component;
	
	signal en_out_out : std_logic;
	signal count_out : std_logic_vector(2 downto 0);
	signal code1 : std_logic_vector (3 downto 0);

	begin

		clock: Karen_Chen_clock_divider port map (enable, reset, clk, en_out_out);

		counter: Karen_Chen_counter port map (en_out_out, reset, clk, count_out);
		
		code1 <= ("0" & count_out);

		decoder: seven_segment_decoder port map (code1, HEX0);

end wrapper;
