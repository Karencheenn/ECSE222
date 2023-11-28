library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_jkff is
    Port (clk : in std_logic;
          J   : in std_logic;
          K   : in std_logic;
          Q   : out std_logic);
end Karen_Chen_jkff ;

architecture jkff of Karen_Chen_jkff is
	signal input:std_logic_vector(1 downto 0);

begin
	PROCESS (clk)
		variable Qt: std_logic;
		BEGIN

		
			if RISING_EDGE( clk ) then
				if ( J ='0' AND K = '0') then
					Qt := Qt;
				elsif ( J ='0' AND K = '1') then
					Qt := '0';
				elsif ( J ='1' AND K = '0') then
					Qt := '1';
				elsif ( J ='1' AND K = '1') then
					Qt := NOT (Qt);
				else
					Qt := '1';
				end if;
			end if;
		Q <= Qt;
	end process;
end jkff;