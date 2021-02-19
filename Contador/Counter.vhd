--
--
--		Contador em VHDL.
--
--
library IEEE;
use IEEE.std_logic_1164.all;

entity Counter is port
(
	clk, load, reset: in bit;
	data: in integer range 15 downto 0;
	q: out integer range 15 downto 0
);
end Counter;

architecture hardware of counter is
begin
	counter_process: process(clk, reset) 	
	variable q_var: integer range 15 downto 0;
	begin
		if(reset = '1') then 
			q_var := 0;
		elsif(clk'event and clk = '1') then 
			if(load = '1') then q_var := data;
			else
				if(q_var >= 9) then q_var := 0;
				else q_var := q_var + 1;
				end if;
			end if;
		end if;
		q <= q_var;
	end process counter_process;
end hardware;