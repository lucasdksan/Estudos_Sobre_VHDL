--
--
--		Sinais e Circuitos Combinacionais
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity circuitoCom is port 
(
	A: in std_logic;
	B: in std_logic;
	C: in std_logic;
	O: out std_logic
);

end circuitoCom;

architecture hardware of circuitoCom is

signal OR1: std_logic;
signal OR2: std_logic;
signal OR3: std_logic;

begin
	OR1 <= (not A) and (not B);
	OR2 <= (not B) and (not C);
	OR3 <= A and (not C);
	
	O <= (OR1 or OR2 or OR3);
end hardware;