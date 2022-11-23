----IITB-CPU-2022
-----------------------------------------------------------------------------------------
-----------------------------------LEFT SHIFTER 7 BIT------------------------------------

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

-----------------------------------------------------------------------------------------
-----------------------------------LEFT SHIFTER 8 BIT------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lshifter8 is
	port (inp : in std_logic_vector (7 downto 0);
			outp : out std_logic_vector (15 downto 0));
end entity LShifter8;

architecture sidehojana of Lshifter8 is
	begin
		outp(15 downto 8) <= inp;
		outp(7 downto 0) <= "00000000";
end sidehojana;

