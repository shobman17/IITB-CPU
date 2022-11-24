library ieee;
use ieee.std_logic_1164.all;

entity ALU_unit_cell is
	port (A, B: in std_logic;
			C: in std_logic;
			s0, s1: in std_logic;
			out_c, out_s: out std_logic);
end entity ALU_unit_cell;

architecture unit of ALU_unit_cell is
	signal sxb, axb, anb: std_logic;
	signal out0, out1: std_logic;
begin

	-------------------------------------------------------
	-- 00: ADD
	-- 01: SUBTRACT
	-- 10: NAND
	-- 11: garbage (A NAND B')
	-------------------------------------------------------
	
	-- intermediate signals
	sxb <= s0 xor B;
	axb <= sxb xor A;
	anb <= A nand sxb;
	-- the addsub and nand outputs
	out0 <= axb xor C;
	out1 <= anb;
	out_c <= (axb and C) or not(anb);
	
	out_s <= (out0 and not(s1)) or (out1 and s1);
end unit;

library ieee;
use ieee.std_logic_1164.all;

entity ALU is 
	port (ALU_A, ALU_B: in std_logic_vector(15 downto 0);
			ALU_SELECT: in std_logic_vector(1 downto 0);
			ALU_C: out std_logic_vector(15 downto 0);
			Z_O, C_O: out std_logic);
end entity ALU;


architecture addsubnand of ALU is

	signal carry: std_logic_vector(16 downto 0);
	signal output: std_logic_vector(15 downto 0);
	
	component ALU_unit_cell is
	port (A, B: in std_logic;
			C: in std_logic;
			s0, s1: in std_logic;
			out_c, out_s: out std_logic);
	end component ALU_unit_cell;

begin
	carry(0) <= ALU_SELECT(0);
	unit_cell_generate: for i in 0 to 15 generate -- generate 16 such cells
	begin
		unit: component ALU_unit_cell
			port map (A => ALU_A(i), B => ALU_B(i), C => carry(i), 
						 s0 => ALU_SELECT(0), s1 => ALU_SELECT(1),
						 out_s => output(i), out_c => carry(i+1));
	end generate;
	Z_O <= not(output(0) or output(1) or output(2) or output(3) or output(4) or output(5) or output(6) or output(7) or output(8) or output(9) or output(10) or output(11) or output(12) or output(13) or output(14) or output(15));
	C_O <= carry(16);
	ALU_C <= output;
end addsubnand;
