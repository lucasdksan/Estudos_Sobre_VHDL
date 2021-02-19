--
--
--		Mux 4 para 1 em VHDL
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4_to_1 is port
(
	sel: in std_logic_vector(1 downto 0); -- Vetor de 2 elementos
	A: in std_logic_vector( 3 downto 0 ); -- Vetor de 4 elementos
	X: out std_logic
);
end mux_4_to_1;

architecture hardware of mux_4_to_1 is
begin
	with sel select
				X <= A(0) when "00",
					  A(1) when "01",
					  A(2) when "10",
					  A(3) when "11",
					  '0' when others;	
end hardware;