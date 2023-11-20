library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.ALL;

entity Karen_Chen_wrapper is
	Port ( A, B : in std_logic_vector(3 downto 0); 
		decoded_A, decoded_B : out std_logic_vector (6 downto 0); 
		decoded_AplusB : out std_logic_vector (13 downto 0));
end Karen_Chen_wrapper;

architecture wrapper of Karen_Chen_wrapper is
    component seven_segment_decoder is
        port(
            code        : in  std_logic_vector(3 downto 0);
            segments_out : out std_logic_vector(6 downto 0));
    end component;

    component Karen_Chen_bcd_adder is
        port(
            A, B:   in std_logic_vector(3 downto 0);
            S:      out std_logic_vector(3 downto 0);
            C:      out std_logic);
    end component;

    signal AplusB:  std_logic_vector(3 downto 0);
    signal C:       std_logic;

begin
-- 7-segments for A
	SA: seven_segment_decoder 
	port map(code => A, segments_out => decoded_A);
	
-- 7-segments for B
	SB: seven_segment_decoder
		port map(code => B, segments_out => decoded_B);
		
 -- 7-segments for A+B
    BCD: Karen_Chen_bcd_adder 
	 port map(A, B, AplusB, C);
		  
-- Displaying A+B, the first 4-bits
    SAplusB_6to0: seven_segment_decoder 
	 port map(code => AplusB, segments_out => (decoded_AplusB(6 downto 0)));
		
-- Displaying A+B, the last 4-bits
    SAplusB_13to7: seven_segment_decoder
        port map(code => ("000" & C), segments_out => (decoded_AplusB(13 downto 7)));
end;

