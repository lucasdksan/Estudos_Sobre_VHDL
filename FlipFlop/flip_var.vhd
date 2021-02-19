--
--
--		Flip Flop Empregando Variáveis
--
--
library IEEE;
use IEEE.std_logic_1164.all;

entity flip_var is port
(
	clk, d1, d2: in bit;
	q1, q2: out bit
);
end flip_var;

architecture hardware of flip_var is
	begin
		fgh: process(clk)
		variable v1: bit;
		
		begin
			if(clk'event and clk='1') then 
				q1 <= v1;
				v1 := d1;
			end if;
		end process fgh;
		ijk: process(clk)
		variable v2: bit;
		
		begin
			if(clk'event and clk='1') then
				v2 := d2;
				q2 <= v2;
			end if;
		end process ijk;
end hardware; 