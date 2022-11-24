-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(33 downto 0);
       	output_vector: out std_logic_vector(17 downto 0));
end entity;

architecture DutWrap of DUT is
   component ALU is 
	port (ALU_A, ALU_B: in std_logic_vector(15 downto 0);
			ALU_SELECT: in std_logic_vector(1 downto 0);
			ALU_C: out std_logic_vector(15 downto 0);
			Z_O, C_O: out std_logic);
	end component ALU;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ALU
			port map (
					-- order of inputs ALU_A ALU_B ALU_SELECT
					ALU_A => input_vector(33 downto 18),
					ALU_B => input_vector(17 downto 2),
					ALU_SELECT => input_vector(1 downto 0),
               -- order of output ALU_C Z_O C_O
					ALU_C => output_vector(17 downto 2),
					Z_O => output_vector(1),
					C_O => output_vector(0));
end DutWrap;