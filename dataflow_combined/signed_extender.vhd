library ieee;
use ieee.std_logic_1164.all;

entity signed_extender is
	port (input: in std_logic_vector(5 downto 0);
			output: out std_logic_vector(15 downto 0));
end entity signed_extender;

architecture ext of signed_extender is
begin
	conv_process: process(input)
	begin
		if (input(5) = '0') then
			output <= "0000000000" & input;
		else 
			output <= "1111111111" & input;
		end if;
	end process;
end ext;