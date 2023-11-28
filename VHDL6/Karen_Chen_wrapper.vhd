library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Karen_Chen_wrapper is
Port  (   reset  : in std_logic ;
          clk    : in std_logic ;
          HEX0   : out std_logic_vector(6 downto 0);
          HEX5   : out std_logic_vector(6 downto 0) );
end Karen_Chen_wrapper ;

architecture wrapper of Karen_Chen_wrapper is
	
	component Karen_Chen_clock_divider is
		port (   enable   : in std_logic;
					reset    : in std_logic;
					clk      : in std_logic;
					en_out   : out std_logic );
	end component;
	
	component ROM
		port(clk : in std_logic;
				reset : in std_logic;
				data : out std_logic);
	end component;

	component Karen_Chen_sequence_detector is
		port (seq : in std_logic;
				enable : in std_logic;
				reset : in std_logic;
				clk : in std_logic;
				cnt_1 : out std_logic_vector(2 downto 0);
				cnt_2 : out std_logic_vector(2 downto 0));
	end component;
	
	component seven_segment_decoder is
		port(code: in std_logic_vector (3 downto 0);
				segments_out: out std_logic_vector (6 downto 0));
	end component;
	
	signal enable: std_logic;
	signal R_reset: std_logic;
	signal data_out: std_logic;
	signal en : std_logic := '1'; -- enable for sequence_detector
	signal count1, count2: std_logic_vector(2 downto 0);
	signal code1, code2 : std_logic_vector(3 downto 0);

begin
	clock_divider: Karen_Chen_clock_divider port map(en, reset, clk, enable);
	
	R_reset <= not reset;
	
	read_only_memory: ROM port map(enable, R_reset, data_out);
	
	sequence_counter: Karen_Chen_sequence_detector port map(data_out, en, reset, enable, count1, count2);
	
	code1 <= '0' & count1;
	code2 <= '0' & count2;
	
	decoder1: seven_segment_decoder port map(code1, HEX0);
	
	decoder2: seven_segment_decoder port map(code2, HEX5);
	
end wrapper;