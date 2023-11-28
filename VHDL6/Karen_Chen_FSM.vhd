library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Karen_Chen_FSM is
port (seq : in std_logic; 
		enable : in std_logic;
		reset : in std_logic; 
		clk : in std_logic;
		out_1 : out std_logic; -- generates 1 when the pattern "1011" is detected; otherwise 0.
		out_2 : out std_logic); -- generates 1 when the pattern "0010" is detected; otherwise 0.
end Karen_Chen_FSM;

architecture FSM of Karen_Chen_FSM is

	type stateOne is ( stateA, stateB, stateC, stateD, stateE); -- 1011 define type
	signal stateOneCurrent, stateOneNext: stateOne;

	type stateTwo is ( stateF, stateG, stateH, stateI, stateJ); -- 0010 define type
	signal stateTwoCurrent, stateTwoNext: stateTwo;

	begin

		process(clk,reset)
		begin
	
				if(reset='0') then -- reset if reset is 0
					stateOneCurrent <= stateA; 
					stateTwoCurrent <= stateF;
				elsif(enable='0') then 
					stateOneCurrent <= stateOneCurrent;
					stateTwoCurrent<=stateTwoCurrent;
				elsif(rising_edge(clk)) then 
					stateOneCurrent <= stateOneNext; 
					stateTwoCurrent <= stateTwoNext;
				end if;
		end process;

		process(stateOneCurrent,seq) -- 1011
		begin
			case (stateOneCurrent) is
				when stateA => 
					if (seq='1') then
						stateOneNext <= stateB;
					else
						stateOneNext <= stateA;
					end if;
  
				when stateB => 
					if (seq = '0') then
						stateOneNext <= stateC;
					else 
						stateOneNext <= stateB;
					end if;
   
				when stateC => 
					if (seq = '1') then
						stateOneNext <= stateD; 
					else
						stateOneNext <= stateA; -- go back to A
					end if;
					
				when stateD => 
					if (seq = '1') then
						stateOneNext <= stateE; 
					else 
						stateOneNext <= stateC;
					end if;
					
				when stateE => 
					if (seq = '1') then
						stateOneNext <= stateB;
					else 
						stateOneNext <= stateC;
					end if;
				
				when others => null;
				
			end case;
		end process;
	
		process (stateTwoCurrent, seq) -- 0010
		begin
			case (stateTwoCurrent) is
				when stateF => 
					if (seq = '0') then
						stateTwoNext <= stateG;
					else 
						stateTwoNext <= stateF;
					end if;
					
				when stateG => 
					if (seq = '0') then
						stateTwoNext <= stateH;
					else 
						stateTwoNext <= stateF;
					end if;
					
				when stateH => 
					if (seq = '1') then
						stateTwoNext <= stateI;
					else 
						stateTwoNext <= stateH;
					end if;
					
				when stateI => 
					if (seq = '0') then
						stateTwoNext <= stateJ;
					else 
						stateTwoNext <= stateF;
					end if;
				
				when stateJ => 
					if (seq = '0') then
						stateTwoNext <= stateH;
					else 
						stateTwoNext <= stateF;
					end if;
 
 				when others => null;
				
			end case;
		end process;
	
		process(stateOneCurrent)
		begin 
			case stateOneCurrent is
				when stateE => 
					out_1 <= '1';
 
				when others => 
					out_1 <= '0';
			end case;
		end process;

		process(stateTwoCurrent)
		begin 
			case stateTwoCurrent is
				when stateJ => 
					out_2 <= '1';
 
				when others => 
					out_2 <= '0';
			end case;
		end process;	
	
	
end FSM;
 
   
