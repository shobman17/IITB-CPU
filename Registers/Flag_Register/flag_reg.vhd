library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;
entity flag_reg is
	port (input:in std_logic_vector(1 downto 0);
			w_enable, clk: in std_logic;
			output: out std_logic_vector(1 downto 0));
end entity flag_reg;

architecture bhv of flag_reg is
	signal storage: std_logic_vector(1 downto 0):="00";
	begin
		output(1 downto 0)<= storage(1 downto 0);
		edit_process: process(clk)
		begin
			if(clk='1' and clk'event and w_enable='1') then
				storage(1 downto 0)<=input(1 downto 0);
			else
				storage(1 downto 0)<=storage(1 downto 0);
			end if;
		end process;
end architecture bhv;