-- Teste da Máquina de Estados.

library IEEE;
use IEEE.std_logic_1164.all;

entity mdeNew is port
(
	clk, rst, s: in std_logic;
	q: out std_logic_vector(1 downto 0)
);
end mdeNew;

architecture hardware of mdeNew is
	type st is ( A, B, C, D );
	signal estado: st;
	
	begin
		process(clk, rst)
			begin
				if rst = '1' then
					estado <= A;
				elsif(clk'event and clk= '1') then
					case estado is
						when A => 
							if s = '1' then estado <= B;
							else estado <= D;
							end if;
						when B => 
							if s = '1' then estado <= C;
							else estado <= A;
							end if;
						when C =>
							if s = '1' then estado <= D;
							else estado <= B;
							end if;
						when D =>
							if s = '1' then estado <= A;
							else estado <= C;
							end if;
						end case;
					end if;
			end process;
			
			with estado select 
				q <= "00" when A,
					  "01" when B,
					  "10" when C,
					  "11" when D;
end hardware;