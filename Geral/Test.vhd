use ieee.std_logic_1164.all;

entity mde is
	port( ck, rst : in std_logic;
			q: out std_logic_vector(1 downto 0)
	);
end mde;

architecture logica of mde is 

begin 
	process(ck, rst)
	begin
		if rst = '1' then
			q <= "00";
		elsif (ck'event and ck ='1') then 
			case q is
				when "00" => q <= "01";
				when "01" => q <= "11";
				when "10" => q <= "10";
				when "11" => q <= "00";
			end case;
		end if;
	end process;
end logica;