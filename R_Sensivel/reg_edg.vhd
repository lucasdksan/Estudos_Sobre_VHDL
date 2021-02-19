--
--	Borda Sensivel
--

library IEEE;
use IEEE.std_logic_1164.all;

entity reg_edg is port
(
	clk, rst, set: in bit;
	d: in bit_vector(2 downto 0);
	q: out bit_vector(2 downto 0)
);
end reg_edg;

architecture hardware of reg_edg is
begin
process(rst, set, clk)
begin
	if (rst = '1') then q <= "000";
	elsif (set = '1') then q <= "111";
	elsif (clk'event and clk = '1') then q <= d;
	end if;
end process;
end hardware;