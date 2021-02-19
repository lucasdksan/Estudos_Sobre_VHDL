--
--
--		Circuito Somador com Geração e For
--	
--
library IEEE;
use IEEE.std_logic_1164.all;

entity Somador_Com_For is
generic(n : integer := 4);
port
(
	x, y: in bit_vector(n-1 downto 0);
	ze: in bit;
	s: out bit_vector(n-1 downto 0);
	zs: out bit
);
end Somador_Com_For;

architecture hardware of Somador_Com_For is
	signal v: bit_vector(n downto 0);
	begin
		v(0) <= ze;
		zs <= v(n);
		
		add: for i in 0 to n-1 generate
			s(i) <= x(i) xor y(i) xor v(i);
			v(i+1) <= (x(i) and y(i)) or (x(i) and v(i)) or (y(i) and v(i));
		end generate add;
end hardware;