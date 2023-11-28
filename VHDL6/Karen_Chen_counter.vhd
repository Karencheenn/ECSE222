library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_counter is
    Port ( enable   : in std_logic;
           reset    : in std_logic;
           clk      : in std_logic;
           count    : out std_logic_vector(2 downto 0));
end Karen_Chen_counter ;

architecture counter of Karen_Chen_counter is

	signal count_signal: integer range 0 to 7;

begin

	process (clk)
		begin

			if (reset = '0') then 
				count_signal <= 0;
			elsif RISING_EDGE( clk ) then
				if (enable = '1') then
					if (count_signal = 7) then
						count_signal<= 0;
					else
						count_signal <= count_signal + 1;
					end if;
				end if;
			end if;
	end process;
count <= std_logic_vector( to_unsigned(count_signal, 3));

end counter;