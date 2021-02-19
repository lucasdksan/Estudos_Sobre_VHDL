--
--
--		Somador de 2 bits VHDL
--
--
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEE.std_logic_unsigned.all;

entity adder_2bits is port
(
	number1: in std_logic_vector(1 downto 0);
	number2: in std_logic_vector(1 downto 0);
	result: out std_logic_vector(2 downto 0)
);
end adder_2bits;

architecture hardwera of adder_2bits is
begin
	result <= ('0' & number1) + ('0' & number2);
end hardwera;