library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T_reg is
	port (input:in std_logic_vector(15 downto 0);
			w_enable, clk: in std_logic;
			output: out std_logic_vector(15 downto 0));
end entity T_reg;

architecture bhv of T_reg is
	signal storage: std_logic_vector(15 downto 0):="0000000000000000";
	begin
		output(15 downto 0)<= storage(15 downto 0);
		edit_process: process(clk)
		begin
			if(clk='1' and clk'event and w_enable='1') then
				storage(15 downto 0)<=input(15 downto 0);
			else
				storage(15 downto 0)<=storage(15 downto 0);
			end if;
		end process;
end architecture bhv;