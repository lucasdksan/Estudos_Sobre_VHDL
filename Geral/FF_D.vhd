--
--
--		Flip Flop tipo D em VHDL
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity FF_D is port
(
	D: in std_logic;
	clk: in std_logic;
	Q: out std_logic;
	Qn: out std_logic
);
end FF_D;

architecture hardware of FF_D is

signal dado: std_logic;


begin
	dado <= D when (clk = '1') else dado;
	Q <= dado;
	Qn <= not dado;
end hardware;