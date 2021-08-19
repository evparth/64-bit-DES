
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-----------------------------------------------------

	entity BigDes is 
		port(plaintext: in std_logic_vector(0 to 63);
		key: in std_logic_vector(0 to 63);
		ciphertext : out std_logic_vector(0 to 63);
		clk,rst: in std_logic);
	end BigDes;

-------------------------------------------------------
	architecture lego of BigDes is

	component Basicdes 
		port(lh,rh: in std_logic_vector(0 to 31);
		key: in std_logic_vector(0 to 47);
		rcounter: in integer range 0 to 15:=0;
		dr: in std_logic;
		flh,frh: out std_logic_vector(0 to 31));
	end component;
----------------------
	component InitP is 
		port( plaintext: in std_logic_vector(0 to 63);
		data_enable: std_logic;
		lh,rh: out std_logic_vector(0 to 31));
	end component;
----------------------
	component ReverseIP is 
		port( 	lh,rh: in std_logic_vector(0 to 31);
		ciphertext: out std_logic_vector(0 to 63));
	end component;
----------------------
	component KPU is
		port(key: in std_logic_vector(0 to 63);
		enable: in std_logic;
		kcounter: in integer;
		key0: out std_logic_vector(0 to 47));
	end component;
-------------------------------------------------------

	type state_type is (ksched,waitdata,rounds,final);
	signal state : state_type;                        -- FSM states --

	type mem1 is array(0 to 15) of std_logic_vector(0 to 47); 
	type mem2 is array(0 to 16) of std_logic_vector(0 to 31);
	signal key_mem: mem1;   
	signal des_meml,des_memr: mem2;

	signal kc,rc: integer:= 0;
	signal de,desr,keyr: std_logic;
	signal lefthalf,righthalf,finalhalfl,finalhalfr: std_logic_vector(0 to 31);
	signal lefthalfinit,righthalfinit: std_logic_vector(0 to 31);
	signal deshalfl,deshalfr: std_logic_vector(0 to 31);
	signal key_out,key_in: std_logic_vector(0 to 47);
	signal ciphertextP: std_logic_vector(0 to 63);


---------------------------------------------------------

	begin


	U0: KPU port map(key,keyr,kc,key_out);
	U1: InitP port map(plaintext,de,lefthalfinit,righthalfinit);
	U2: Basicdes port map(lefthalf,righthalf,key_in,rc,desr,deshalfl,deshalfr);
	U3: ReverseIP port map(finalhalfl,finalhalfr,ciphertext);
	

-----------------------------------------------------------

	process(clk,rst,deshalfl,deshalfr)
	
	variable rint: integer:= 0;
	variable kint: integer:= 0;
	begin
		if rst='1' then 	
						keyr<='0';
						de<='0';
						desr<='0';
						rint:=0;
						kint:=0;
						state<=ksched;
	
		elsif(clk'event and clk='1') then
			case state is
				when ksched=> 
					if kint=0 then 
						keyr<='1';
						de<='0';
						desr<='0';
						kc<=0;
						kint:=kint+1;
					elsif kint<17 then
						kc<=kint;
						key_mem(kint-1)<=key_out;
						kint:=kint+1;
					elsif kint=17 then
						state<=waitdata;
					end if;
				when waitdata=> 
					if(key /= "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU") then
					
						de<='1';
						desr<='1';
						state<=rounds;

					else
						de<='0';
					end if;
				when rounds=> 
					if rint=0 then
						lefthalf<=lefthalfinit;
						righthalf<=righthalfinit;
						key_in<=key_mem(rint);
						rc<=0;
						rint:=1;
					elsif rint<16 then
						des_meml(rint)<=deshalfl;
						des_memr(rint)<=deshalfr;
						key_in<=key_mem(rint);
						rc<=rint;
						rint:=rint+1;
					elsif rint=16 then
						state<=final;
						desr<='0';
					end if;
				when final=> 
						finalhalfl<=deshalfl;
						finalhalfr<=deshalfr;
						keyr<='0';
						de<='0';
						desr<='0';
						state<=ksched;
						kint:=0;
						rint:=0;
						
			end case;	
			end if;
		
	end process;
	
	end;