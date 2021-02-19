library IEEE;
use IEEE.std_logic_1164.all;

entity som_1a is port
(
	a,b,ve: in bit;
	s, vs: out bit
);
end som_1a;

architecture hardware_Somador of som_1a is
	begin
		s <= a XOR b XOR ve;
		vs <= (a AND b) OR ( a AND ve ) OR ( b AND ve );
end hardware_Somador;