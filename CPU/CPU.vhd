library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity FSM is 
	port( opcode:in std_logic_vector(3 downto 0);
			t1_70:in std_logic_vector(7 downto 0);
			c_i, z_i, z_in, c_out, z_out:in std_logic;
			clk:in std_logic;
			output_state: out std_logic_vector(3 downto 0)
		 );
end entity;

architecture shatranj of FSM is


--Represents id for each state we we using
constant s1  : std_logic_vector(3 downto 0):= "0001";  
constant s2  : std_logic_vector(3 downto 0):= "0010";
constant s3  : std_logic_vector(3 downto 0):= "0011";
constant s4  : std_logic_vector(3 downto 0):= "0100";
constant s5  : std_logic_vector(3 downto 0):= "0101";
constant s6  : std_logic_vector(3 downto 0):= "0110";
constant s7  : std_logic_vector(3 downto 0):= "0111";
constant s8  : std_logic_vector(3 downto 0):= "1000";
constant s9  : std_logic_vector(3 downto 0):= "1001";  
constant s10 : std_logic_vector(3 downto 0):= "1010";
constant s11 : std_logic_vector(3 downto 0):= "1011";
constant s12 : std_logic_vector(3 downto 0):= "1100";
constant s13 : std_logic_vector(3 downto 0):= "1101";
constant s14 : std_logic_vector(3 downto 0):= "1110";
constant s15 : std_logic_vector(3 downto 0):= "1111";

----Signals which represent present and next state id
signal y_present: std_logic_vector(3 downto 0) :=s1;
signal y_next: std_logic_vector(3 downto 0) :=s1;

begin
		output_state <= y_present;
		
	Moveon: process(clk)
	
	begin
			if(rising_edge(clk)) then
				y_present <= y_next;
			end if;
			
	end process;

	next_state:process(y_present,opcode, c_i, z_i, c_out, z_out, z_in, t1_70)
   begin
		case y_present is
		
			when s1=>
				case opcode is
					when "0001" =>		--adi
						y_next<=s5;   
					when "0100" | "0101" =>      --lw/sw
						y_next<=s6;
					when "1000" =>		--jal
						y_next<=s10;   
					when "0011" =>		--lhi
						y_next<=s9;	    
					when "1001" =>   --jlr
						y_next<=s11;   
					when others =>
						y_next<=s2;
				end case;
				
			when s2=>
				case opcode is
					when "0000" | "0010" =>  	--add/adc/adz/ndu/ndc/ndz	
						if ((c_i='0' and z_i='0') or (c_i='1' and c_out='1') or (z_i='1' and z_out='1')) then
							y_next<=s3;
						else
							y_next<=s1;
						end if;
					when "1100" => --beq
						y_next<=s3;
					when "0110" => --lm
						y_next<=s13;
					when "0111" => --sm
						y_next<=s14;
					when others =>
						y_next <= s1;
				end case;			
				
			when s3=>
				case opcode is
					when "0001" | "0010" | "0011" | "0000"=>  --
						y_next<=s4;
					when "1100" =>      --beq
						if ( z_in='1') then
							y_next<=s10;
						else
							y_next<=s1;
						end if;
					when others =>
						y_next <= s1;
				end case;
				
			when s4=> --last
				y_next<=s1;
				
			when s5=> --adi
				y_next<=s3;
				
			when s6=>
				case opcode is
					when "0100" =>  --lw
						y_next<=s7;
					when "0101" =>  --sw
						y_next<=s8;
					when others =>
						y_next <= s1;
				end case;
				
			when s7=> --lw
				y_next<=s4;
				
			when s8=> --last
				y_next<=s1;
				
			when s9=> --lhi
				y_next<=s4;
				
			when s10=>
				if (opcode="1000") then --jal
					y_next<=s11;
				else 
					y_next<=s1;
				end if;
			
			when s11=>
				if (opcode="1001") then --jlr
					y_next<=s12;
				else 
					y_next<=s1;
				end if;
				
			when s12=> --last
				y_next<=s1;
				
			when s13=> --lm
				y_next<=s14;
				
			when s14=> 
				case opcode is
					when "0110" =>  --lm
						if (t1_70 = "00000000") then
							y_next<=s1;
						else 
							y_next<=s13;
						end if;
					when "0111" =>  --lm
						if (t1_70 = "00000000") then
							y_next<=s1;
						else 
							y_next<=s15;
						end if;
					when others =>
						y_next <= s1;
				end case;
				
			when s15=>
				y_next<=s14;
				
			when others=>
				y_next<=s1;
				
end case;
end process;
end architecture;
-----------------------------------------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Components.all;

entity DataPath is
	port(clk: in std_logic; state: in std_logic_vector(3 downto 0); 
		out_c_i, out_z_i, out_z_in, out_c_out, out_z_out: out std_logic;
			opcode: out std_logic_vector(3 downto 0);
			t17downto0: out std_logic_vector(7 downto 0));
end entity Datapath;

architecture trivial of DataPath is
	for all: T1_reg
		use entity work.T1_reg(bhv);
	
	for all: t_reg
		use entity work.t_reg(bhv);
		
	for all: temp_reg3
		use entity work.temp_reg3(bhv);
		
	for all: flag_reg
		use entity work.flag_reg(bhv);
	
	for all: Priority
		use entity work.Priority(bhv);
		
	for all:decoder_3to8
		use entity work.decoder_3to8(dec);
		
	for all: Lshifter7
		use entity work.Lshifter7(sidehoja);
		
	for all:extender8
		use entity work.extender8(sidehojana);
	
	for all: ALU
		use entity work.ALU(addsubnand);
	
	for all: prog_reg
		use entity work.prog_reg(pr);
		
	for all: memory
		use entity work.memory(memorykakaam);
	
	signal alu_a, alu_b, alu_out, s1_0, s1_10, s2_0, s2_1, s3_0, s3_1, s4_0, s4_1, s5_0, s5_1, d1, d2, d3, e8_out, se6_out, L7_out, m_a, m_in, m_out: std_logic_vector(15 downto 0):=(others=>'0');
	signal a1, a2, a3, s6_0, s6_1, s1_7, s1_6, s1_5, enc_out: std_logic_vector(2 downto 0):=(others=>'0');
	signal alu_ctrl: std_logic_vector(1 downto 0);
	signal s1_1: std_logic_vector(8 downto 0);
	signal s1_2: std_logic_vector(5 downto 0);
	signal s1_3, dec_out: std_logic_vector(7 downto 0);
	signal s1_4:std_logic_vector(3 downto 0):=(others=>'0');
	signal t1_wr, t2_wr, t3_wr, t4_wr, t5_wr, t6_wr, m_rd, m_wr, r_wr, c_en, z_en, c_in, c_out, z_in, z_out, s1_8, s1_9: std_logic;
		
	--Represents id for each state we we using
	constant state1  : std_logic_vector(3 downto 0):= "0001";  
	constant state2  : std_logic_vector(3 downto 0):= "0010";
	constant state3  : std_logic_vector(3 downto 0):= "0011";
	constant state4  : std_logic_vector(3 downto 0):= "0100";
	constant state5  : std_logic_vector(3 downto 0):= "0101";
	constant state6  : std_logic_vector(3 downto 0):= "0110";
	constant state7  : std_logic_vector(3 downto 0):= "0111";
	constant state8  : std_logic_vector(3 downto 0):= "1000";
	constant state9  : std_logic_vector(3 downto 0):= "1001";  
	constant state10 : std_logic_vector(3 downto 0):= "1010";
	constant state11 : std_logic_vector(3 downto 0):= "1011";
	constant state12 : std_logic_vector(3 downto 0):= "1100";
	constant state13 : std_logic_vector(3 downto 0):= "1101";
	constant state14 : std_logic_vector(3 downto 0):= "1110";
	constant state15 : std_logic_vector(3 downto 0):= "1111";
	constant state_reset : std_logic_vector(3 downto 0):= "0000";
	
	begin
		--How many t_regs do we need? 5. The first one is a bit special though
		T1: component t1_reg
			port map(s1_0, t1_wr, clk, s1_1, s1_2, s1_3, s1_4, s1_5, s1_6, s1_7, s1_8, s1_9, s1_10);
			
		T2: component t_reg
			port map(s2_0, t2_wr, clk, s2_1);
			
		T3: component t_reg
			port map(s3_0, t3_wr, clk, s3_1);
			
		T4: component t_reg
			port map(s4_0, t4_wr, clk, s4_1);
			
		T5: component t_reg
			port map(s5_0, t5_wr, clk, s5_1);
		
		-- now the final 2 registers
		T6: component temp_reg3
			port map(s6_0, t6_wr, clk, s6_1);
		
		flag: component flag_reg
			port map(c_in, z_in, c_en, z_en, clk, c_out, z_out);
			
		--Now we will try and connect the shift register to everything
		
		reg_file: component prog_reg
			port map(a1, a2, a3, d1, d2, d3, clk, r_wr);
			
		-- viola we are now done with all of the storage units except memory
		priori_enc: component Priority
			port map(s1_3, enc_out);
			
		decoder: component decoder_3to8
			port map(enc_out, dec_out);
			
		e8: component extender8
			port map(dec_out, e8_out);
		
		lshift7: component Lshifter7
			port map(s1_1, L7_out);
			
		se6: component signed_extender
			port map(s1_2, se6_out);
			
		mem: component memory
			port map(clk, m_wr, m_rd, m_a, m_in, m_out);
			
		alu_comp: component alu
			port map(alu_a, alu_b, alu_ctrl, alu_out, z_in, c_in);
			
--		only_process: process(state)
		only_process: process(state, d1, m_out, alu_out, s1_5, s1_6, d2, s1_7, s2_1, s3_1, s1_4, s4_1, s6_1, se6_out, s5_1, L7_out, enc_out, e8_out, s1_10)
		begin
			--Although we get inferred latches without doing the below assignments, we need to get rid of them as they make the logic wrong in some instructions
--			alu_a<=(others=>'0');
--			alu_b<=(others=>'0');
--			s1_0<=(others=>'0');
--			s2_0<=(others=>'0');
--			s3_0<=(others=>'0');
--			s4_0<=(others=>'0');
--			s5_0<=(others=>'0');
--			d3<=(others=>'0');
--			m_a<=(others=>'0');
--			m_in<=(others=>'0');
--			a1<=(others=>'0');
--			a2<=(others=>'0');
--			a3<=(others=>'0');
--			s6_0<=(others=>'0');
--			alu_ctrl<=(others=>'0');
			
			case state is
				when state1 =>
					--Data Flow
					a1<="111";
					m_a<=d1;
					alu_a<=d1;
					s5_0<= d1;
					s1_0<=m_out;
					alu_b<="0000000000000001";
					d3<=alu_out;
					a3<="111";
					opcode<=m_out(15 downto 12);

					
					--Control Signals
					r_wr<='1';
					m_wr<='0';
					m_rd<='1';
					t1_wr<='1';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='0';
					t5_wr<='1';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";

				when state2 =>
					--Data Flow
					a1<=s1_5;
					a2<=s1_6;
					s2_0<=d1;
					s3_0<=d2;
					s6_0<=s1_7;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='0';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='1';
					t3_wr<='1';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='1';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state3 =>
					--Data Flow
					alu_a<=s2_1;
					alu_b<=s3_1;
					s4_0<=alu_out;
					--aluz, aluc are implicit
					opcode<=s1_4;

					
					--Control Signal
					r_wr<='0';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='1';
					t5_wr<='0';
					t6_wr<='0';
					z_en<=(not s1_4(3)) and (not s1_4(2)) and (not(s1_4(1) and s1_4(0)));
					c_en<=(not s1_4(3)) and (not s1_4(2)) and (not s1_4(1));
					--alu_ctrl<=(1=>s1_4(3) and s1_4(2), 0=>((not s1_4(3)) and (not s1_4(2)) and s1_4(1) and (not s1_4(0))) or (s1_4(3) and s1_4(2)));
					alu_ctrl <= (1=>((not s1_4(3)) and (not s1_4(2)) and s1_4(1) and (not s1_4(0))) or (s1_4(3) and s1_4(2)), 0=>s1_4(3) and s1_4(2));
					
				when state4 =>
					--Data Flow
					d3<=s4_1;
					a3<=s6_1;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='1';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state5 =>
					--Data Flow
					a1<=s1_5;
					s2_0<=d1;
					--se6_in is implicit
					s3_0<=se6_out;
					s6_0<=s1_6;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='0';
					m_wr<='0';
					m_rd<='1';
					t1_wr<='0';
					t2_wr<='1';
					t3_wr<='1';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='1';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state6 =>
					--Data Flow
					s6_0<=s1_5;
					--se6_in is implicit
					alu_a<=se6_out;
					a2<=s1_6;
					alu_b<=d2;
					s4_0<=alu_out;
					a1<=s1_5;
					s2_0<=d1;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='0';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='1';
					t3_wr<='0';
					t4_wr<='1';
					t5_wr<='0';
					t6_wr<='1';
					z_en<=(not s1_4(3)) and s1_4(2) and (not s1_4(1)) and (not s1_4(0));
					c_en<='0';
					alu_ctrl<="00";
					
				when state7 =>
					--Data Flow
					m_a<=s4_1;
					s4_0<=m_out;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='0';
					m_wr<='0';
					m_rd<='1';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='1';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state8 =>
					--Data Flow
					m_in<=s2_1;
					m_a<=s4_1;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='0';
					m_wr<='1';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state9 =>
					--Data Flow
					--lshift_in is implicit
					s4_0<=L7_out;
					s6_0<=s1_5;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='0';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='1';
					t5_wr<='0';
					t6_wr<='1';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state10 =>
					--Data Flow
					alu_b<=s5_1;
					--se6_in is implicit
					alu_a<=se6_out;
					d3<=alu_out;
					a3<="111";
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='1';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state11 =>
					--Data Flow
					a3<=s1_5;
					d3<=s5_1;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='1';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state12 =>
					--Data Flow
					a2<=s1_6;
					d3<=d2;
					a3<="111";
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='1';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state13 =>
					--Data Flow
					m_a<=s2_1;
					d3<=m_out;
					--priori_in is implicit
					a3<=enc_out;
					--enc_out to dec_in is implicit
					--dec_out to e8_in is implicit
					s3_0<=e8_out;
					alu_a<=s2_1;
					alu_b<="0000000000000001";
					s2_0<=alu_out;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='1';
					m_wr<='0';
					m_rd<='1';
					t1_wr<='0';
					t2_wr<='1';
					t3_wr<='1';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when state14 =>
					--Data Flow
					alu_a<=s1_10;
					alu_b<=s3_1;
					s1_0<=alu_out;
					opcode<=s1_4;

					
					--Control Signals
					r_wr<='0';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='1';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="01";
					
				when state15 =>
					--Data Flow
					m_a<=s2_1;
					--priori_in is implicit
					a2<=enc_out;
					m_in<=d2;
					--enc_out to dec_in is implicit
					--dec_out to e8_in is implicit
					s3_0<=e8_out;
					alu_a<=s2_1;
					alu_b<="0000000000000001";
					s2_0<=alu_out;
					opcode<=s1_4;
					
					--Control Signals
					r_wr<='0';
					m_wr<='1';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='1';
					t3_wr<='1';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
					
				when others =>
					opcode<=s1_4;
					--Control Signals
					r_wr<='0';
					m_wr<='0';
					m_rd<='0';
					t1_wr<='0';
					t2_wr<='0';
					t3_wr<='0';
					t4_wr<='0';
					t5_wr<='0';
					t6_wr<='0';
					z_en<='0';
					c_en<='0';
					alu_ctrl<="00";
			end case;
		end process;
		
		t17downto0<=s1_3;
		out_c_out<=c_out;
		out_z_in<=z_in;
		out_z_out<=z_out;
		out_c_i<=s1_8;
		out_z_i<=s1_9;
	
end architecture trivial;
------------------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library Work;
use work.Components.all;

entity CPU is 
	port(clk: in std_logic);
end entity;

architecture completete of CPU is
	component FSM is 
		port( opcode:in std_logic_vector(3 downto 0);
				t1_70:in std_logic_vector(7 downto 0);
				c_i, z_i, z_in, c_out, z_out:in std_logic;
				clk:in std_logic;
				output_state: out std_logic_vector(3 downto 0)
			 );
	end component;
	
	component DataPath is
		port(clk: in std_logic; state: in std_logic_vector(3 downto 0); 
			out_c_i, out_z_i,out_z_in, out_c_out, out_z_out: out std_logic;
				opcode: out std_logic_vector(3 downto 0);
				t17downto0: out std_logic_vector(7 downto 0));
	end component Datapath;
	
	for all: Datapath
		use entity work.Datapath(trivial);
		
	for all: FSM
		use entity work.FSM(shatranj);
	
	signal t17downto0: std_logic_vector(7 downto 0);
	signal state, opcode: std_logic_vector(3 downto 0);
	signal c_i, z_i, z_in, c_out, z_out: std_logic;
	
	begin
		Main_Data: component Datapath
			port map(clk, state, c_i, z_i, z_in, c_out, z_out, opcode, t17downto0);
			
		Main_FSM: component FSM
			port map(opcode, t17downto0, c_i, z_i, z_in, c_out, z_out, clk, state);
end architecture;