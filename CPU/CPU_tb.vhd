LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity CPU_tb is
end entity CPU_tb;

architecture bhv of CPU_tb is
	component CPU is
		port (clk: in std_logic);
	end component CPU;

signal clk: std_logic := '1';
constant clk_period : time := 20 ns;
begin
	dut_instance: CPU port map(clk);
	clk <= not clk after clk_period/2 ;
end bhv;