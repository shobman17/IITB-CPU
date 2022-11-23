library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lshifter7 is
	port (inp : in std_logic_vector (8 downto 0);
			outp : out std_logic_vector (15 downto 0));
end entity LShifter7;

architecture sidehoja of Lshifter7 is
	begin
		outp(15 downto 7) <= inp;
		outp(6 downto 0) <= "0000000";
end sidehoja;
