--This contains all the components we might need in a single place to make the initialisation a lot easier.

library ieee;
use ieee.std_logic_1164.all;

--A package declaration is used to store a set of common declarations, such as components.
--These declarations can then be imported into other design units using a use clause.

package Components is

	component sixteenbitas is
		port(in_a, in_b: in std_logic_vector(15 downto 0);
			output: out std_logic_vector(15 downto 0);
			c: out std_logic
			);
	end component sixteenbitas;

	component sixteenbitsub is
		port(in_a, in_b: in std_logic_vector(15 downto 0);
			output: out std_logic_vector(15 downto 0);
			c: out std_logic
			);
	end component sixteenbitsub;

	component Temp_reg3 is
		port (input:in std_logic_vector(2 downto 0);
				w_enable, clk: in std_logic;
				output: out std_logic_vector(2 downto 0));
	end component Temp_reg3;

	component T_reg is
		port (input:in std_logic_vector(15 downto 0);
				w_enable, clk: in std_logic;
				output: out std_logic_vector(15 downto 0));
	end component T_reg;

	component flag_reg is
		port (cin, zin:in std_logic;
				c_enable, z_enable, clk: in std_logic;
				cout, zout: out std_logic);
	end component flag_reg;

	component DEMUX_4 is
		port(input: in std_logic;
				selection: in std_logic_vector(1 downto 0);
				output_3, output_2, output_1, output_0: out std_logic);
	end component;

	component ALU is 
		port (ALU_A, ALU_B: in std_logic_vector(15 downto 0);
				ALU_SELECT: in std_logic_vector(1 downto 0);
				ALU_C: out std_logic_vector(15 downto 0);
				Z_O, C_O: out std_logic);
	end component ALU;
	
	component T1_reg is
		port (input:in std_logic_vector(15 downto 0);
				w_enable, clk: in std_logic;
				T1_80: out std_logic_vector(8 downto 0);
				T1_50: out std_logic_vector(5 downto 0);
				T1_70: out std_logic_vector(7 downto 0);
				T1_1512: out std_logic_vector(3 downto 0);
				T1_119, T1_86, T1_53: out std_logic_vector(2 downto 0);
				T1_1, T1_0: out std_logic;
				T1_out: out std_logic_vector(15 downto 0));
	end component T1_reg;

	component prog_reg is
		port (A1: in std_logic_vector(2 downto 0);
				A2: in std_logic_vector(2 downto 0);
				A3: in std_logic_vector(2 downto 0);
				D1: out std_logic_vector(15 downto 0);
				D2: out std_logic_vector(15 downto 0);
				D3: in std_logic_vector(15 downto 0);
				clk: in std_logic;
				w_enable: in std_logic);
	end component prog_reg;
		
	component Priority is
		
		port (
			A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(2 downto 0)) ;
	end component;

	
	component decoder_3to8 is
		port (input: in std_logic_vector(2 downto 0);
				output: out std_logic_vector(7 downto 0));
	end component decoder_3to8;
	
	component Lshifter7 is
		port (inp : in std_logic_vector (8 downto 0);
				outp : out std_logic_vector (15 downto 0));
	end component LShifter7;

	component extender8 is
		port (inp : in std_logic_vector (7 downto 0);
				outp : out std_logic_vector (15 downto 0));
	end component extender8;
	
	component signed_extender is
		port (input: in std_logic_vector(5 downto 0);
				output: out std_logic_vector(15 downto 0));
	end component signed_extender;
	
	component memory is
		port (m_a, m_in: in std_logic_vector(15 downto 0);
				m_wr, m_rd:in std_logic;
				m_out:out std_logic_vector(15 downto 0));
	end component memory;
end package Components;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;
entity Temp_reg3 is
	port (input:in std_logic_vector(2 downto 0);
			w_enable, clk: in std_logic;
			output: out std_logic_vector(2 downto 0));
end entity Temp_reg3;

architecture bhv of Temp_reg3 is
	signal storage: std_logic_vector(2 downto 0):="000";
	begin
		output(2 downto 0)<= storage(2 downto 0);
		edit_process: process(clk)
		begin
			if(clk='1' and clk'event and w_enable='1') then
				storage(2 downto 0)<=input(2 downto 0);
			else
				storage(2 downto 0)<=storage(2 downto 0);
			end if;
		end process;
end architecture bhv;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;
entity flag_reg is
	port (cin, zin:in std_logic;
			c_enable, z_enable, clk: in std_logic;
			cout, zout: out std_logic);
end entity flag_reg;

architecture bhv of flag_reg is
	signal storage: std_logic_vector(1 downto 0):="00";
	begin
		cout<= storage(1);
		zout<= storage(0); --storage(0) is z and storage(1) is c
		edit_process: process(clk)
		begin
			if(clk='1' and clk'event and c_enable='1') then
				storage(1)<=cin;
			else
				storage(1)<=storage(1);
			end if;
			if(clk='1' and clk'event and z_enable='1') then
				storage(0)<=zin;
			else
				storage(0)<=storage(0);
			end if;
		end process;
end architecture bhv;
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity DEMUX_4 is
	port(input: in std_logic;
			selection: in std_logic_vector(1 downto 0);
			output_3, output_2, output_1, output_0: out std_logic);
end entity;

architecture struct of DEMUX_4 is --Logic used https://www.elprocus.com/wp-content/uploads/1-to-4-demultiplexer.jpg
	
	begin
		output_3<= (selection(1) and selection(0)) and input;
		output_2<= (selection(1) and not selection(0)) and input;
		output_1<= (not selection(1) and selection(0)) and input;
		output_0<= (not selection(1) and not selection(0)) and input;
end architecture;

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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library Work;
entity T1_reg is
	port (input:in std_logic_vector(15 downto 0);
			w_enable, clk: in std_logic;
			T1_80: out std_logic_vector(8 downto 0);
			T1_50: out std_logic_vector(5 downto 0);
			T1_70: out std_logic_vector(7 downto 0);
			T1_1512: out std_logic_vector(3 downto 0);
			T1_119, T1_86, T1_53: out std_logic_vector(2 downto 0);
			T1_1, T1_0: out std_logic;
			T1_out: out std_logic_vector(15 downto 0));
end entity T1_reg;

architecture bhv of T1_reg is
	
	signal s, storage: std_logic_vector(15 downto 0):="0000000000000000";
	
	begin
		s(15 downto 0)<= storage(15 downto 0);
		edit_process: process(clk)
		begin
			if(clk='1' and clk'event and w_enable='1') then
				storage(15 downto 0)<=input(15 downto 0);
			else
				storage(15 downto 0)<=storage(15 downto 0);
			end if;
		end process;
			
		T1_80<= s(8 downto 0);
		T1_50<= s(5 downto 0);
		T1_70<= s(7 downto 0);
		T1_1512<= s(15 downto 12);
		T1_119<= s(11 downto 9);
		T1_86<= s(8 downto 6);
		T1_53<= s(5 downto 3);
		T1_1<=s(1);
		T1_0<=s(0);
		T1_out<=s;
end architecture bhv;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.all;

entity prog_reg is
	port (A1: in std_logic_vector(2 downto 0);
			A2: in std_logic_vector(2 downto 0);
			A3: in std_logic_vector(2 downto 0);
			D1: out std_logic_vector(15 downto 0);
			D2: out std_logic_vector(15 downto 0);
			D3: in std_logic_vector(15 downto 0);
			clk: in std_logic;
			w_enable: in std_logic);
end entity prog_reg;

architecture pr of prog_reg is
	-- These signals dictate which registers are allowed to be written
	signal e0, e1, e2, e3, e4, e5, e6,  e7: std_logic;
	-- These signals carry the output from each register
	signal r0, r1, r2, r3, r4, r5, r6, r7: std_logic_vector(15 downto 0);
begin

	-- Assign signals to control write enable for individual registers
	e0 <= w_enable and not(A3(2)) and not(A3(1)) and not(A3(0));
	e1 <= w_enable and not(A3(2)) and not(A3(1)) and (A3(0));
	e2 <= w_enable and not(A3(2)) and (A3(1)) and not(A3(0));
	e3 <= w_enable and not(A3(2)) and (A3(1)) and (A3(0));
	e4 <= w_enable and (A3(2)) and not(A3(1)) and not(A3(0));
	e5 <= w_enable and (A3(2)) and not(A3(1)) and (A3(0));
	e6 <= w_enable and (A3(2)) and (A3(1)) and not(A3(0));
	e7 <= w_enable and (A3(2)) and (A3(1)) and (A3(0));
	
	-- Initialise the registers
	reg0: T_reg port map (input => D3, w_enable => e0, clk => clk, output => r0);
	reg1: T_reg port map (input => D3, w_enable => e1, clk => clk, output => r1);
	reg2: T_reg port map (input => D3, w_enable => e2, clk => clk, output => r2);
	reg3: T_reg port map (input => D3, w_enable => e3, clk => clk, output => r3);
	reg4: T_reg port map (input => D3, w_enable => e4, clk => clk, output => r4);
	reg5: T_reg port map (input => D3, w_enable => e5, clk => clk, output => r5);
	reg6: T_reg port map (input => D3, w_enable => e6, clk => clk, output => r6);
	reg7: T_reg port map (input => D3, w_enable => e7, clk => clk, output => r7);
	
	with A1 select
		D1 <= r0 when "000",
				r1 when "001",
				r2 when "010",
				r3 when "011",
				r4 when "100",
				r5 when "101",
				r6 when "110",
				r7 when "111";
	
	with A2 select
		D2 <= r0 when "000",
				r1 when "001",
				r2 when "010",
				r3 when "011",
				r4 when "100",
				r5 when "101",
				r6 when "110",
				r7 when "111";
end pr;

library ieee;
use ieee.std_logic_1164.all;

entity Priority is
	
	port (A: in std_logic_vector(7 downto 0);
		output: out std_logic_vector(2 downto 0)) ;
end Priority;

architecture bhv of Priority is
  

begin 

   output(0) <= not (A(6) or A(4) or A(2) or A(0));
	output(1) <= not (A(5) or A(4) or A(1) or A(0));
	output(2) <= not (A(3) or A(2) or A(1) or A(0));
	
end bhv; 


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
	end process;
end dec;
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
-----------------------------------Extender 8 bits------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extender8 is
	port (inp : in std_logic_vector (7 downto 0);
			outp : out std_logic_vector (15 downto 0));
end entity extender8;

architecture sidehojana of extender8 is
	begin
		outp(15 downto 8) <= "00000000";
		outp(7 downto 0) <= inp;
end sidehojana;

library ieee;
use ieee.std_logic_1164.all;

entity signed_extender is
	port (input: in std_logic_vector(5 downto 0);
			output: out std_logic_vector(15 downto 0));
end entity signed_extender;

architecture ext of signed_extender is
begin
	conv_process: process(input)
	begin
		if (input(5) = '0') then
			output <= "0000000000" & input;
		else 
			output <= "1111111111" & input;
		end if;
	end process;
end ext;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
port(
	Addr: in std_logic_vector(15 downto 0);
	Din: in std_logic_vector(15 downto 0);
	Dout: out std_logic_vector(15 downto 0);
	clk,memory_write_enable: in std_logic
	); 
end entity;

architecture bhv of memory is
  type m is array(0 to 2**7 - 1) of std_logic_vector(15 downto 0);
  signal RAM: m:= (others=>x"0000");
begin

  proc : process (clk) is
  begin
  Dout <= RAM(to_integer(unsigned(Addr)));
    if falling_edge(clk) then

      if memory_write_enable = '1' then
        RAM(to_integer(unsigned(Addr))) <= Din;  -- Write

      end if;
    end if;
  end  process;
end  architecture;