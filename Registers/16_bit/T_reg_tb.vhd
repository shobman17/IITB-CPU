library ieee;
use ieee.std_logic_1164.all;

entity T_reg_tb is
end entity T_reg_tb;

architecture bhv of T_reg_tb is
	component T_reg is
		port (input(15 downto 0):in std_logic_vector ;w_enable, clk: in std_logic;
				output(15 downto 0): out std_logic_vector);
	end component T_reg;

signal resetn : std_logic := '0';
signal clk_50, clk_out : std_logic := '1';
constant clk_period : time := 20 ns;
begin
	
	dut_instance: clock_divider port map(clk_out, clk_50, resetn);
	clk_50 <= not clk_50 after clk_period/2 ;
	resetn <= '0', '1' after 1200 ms;
end bhv;