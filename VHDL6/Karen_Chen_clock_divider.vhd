library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_clock_divider is
	Port (   enable   : in std_logic;
				reset    : in std_logic;
				clk      : in std_logic;
				en_out   : out std_logic );
	end Karen_Chen_clock_divider ;

architecture clock_divider of Karen_Chen_clock_divider is

	signal counter	:	integer := 49999999;
	-- T = 1/f = 1/ 50M HZ = 20 ns
	--49999999

	begin

		process(reset, clk)

		begin
			if (reset = '0') then
				en_out <= '0';
				counter <= 	49999999;
			elsif (RISING_EDGE(clk) and enable = '1') then
				if (counter = 0) then	
					en_out	<=	'1';
					counter	<=	49999999;
				else
					en_out	<=	'0';
					counter <= 	counter - 1;
				end if;
			end if;
   	end process;

end clock_divider;