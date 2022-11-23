-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component T_reg is
		port (input:in std_logic_vector(15 downto 0) ;w_enable, clk: in std_logic;
				output: out std_logic_vector(15 downto 0));
	end component T_reg;

begin
   add_instance: T_reg 
			port map (
					input(15 downto 0) => input_vector(17 downto 2),
					w_enable => input_vector(1),
					clk => input_vector(0),
					output(15 downto 0) => output_vector(15 downto 0));
end DutWrap;