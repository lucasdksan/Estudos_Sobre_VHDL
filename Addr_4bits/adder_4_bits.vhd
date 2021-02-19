--
--
--		Estudos Sobre VHDL.
--		Somador de 4 Bits.
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity adder_4_bits is port
(
	x,y : in bit_vector(3 downto 0);
	ze : in bit;
	s : out bit_vector(3 downto 0);
	zs : out bit
);
end adder_4_bits;

architecture hardware of adder_4_bits is
	component som_1a
		port(
			a,b,ve: in bit;
			s, vs: out bit
		);
	end component;
	signal v: bit_vector(3 downto 1);
	begin
		x0: som_1a PORT MAP( x(0), y(0), ze, s(0), v(1) );
		x1: som_1a PORT MAP( x(1), y(1), v(1), s(1), v(2) );
		x2: som_1a PORT MAP( x(2), y(2), v(2), s(2), v(3) );
		x3: som_1a PORT MAP( x(3), y(3), v(3), s(3), zs );
end hardware;