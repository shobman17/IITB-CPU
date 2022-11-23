library ieee;
use ieee.std_logic_1164.all;

entity decoder_3to8 is
	port (input: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(7 downto 0));
end entity decoder_3to8;

architecture dec of decoder_3to8 is
begin
	decode_process: process(input)
	begin
		output(0) <= not(input(0)) and not(input(1)) and not(input(2));
		output(1) <= (input(0)) and not(input(1)) and not(input(2));
		output(2) <= not(input(0)) and (input(1)) and not(input(2));
		output(3) <= (input(0)) and (input(1)) and not(input(2));
		output(4) <= not(input(0)) and not(input(1)) and (input(2));
		output(5) <= (input(0)) and not(input(1)) and (input(2));
		output(6) <= not(input(0)) and (input(1)) and (input(2));
		output(7) <= (input(0)) and (input(1)) and (input(2));
--		case input is
--			when "000" => output <= "00000001";
--			when "001" => output <= "00000010";
--			when "010" => output <= "00000100";
--			when "011" => output <= "00001000";
--			when "100" => output <= "00010000";
--			when "101" => output <= "00100000";
--			when "110" => output <= "01000000";
--			when "111" => output <= "10000000";
--			when others => output <= "00000000";
--		end case;
	end process;
end dec;