

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Basicdes is 
port(lh,rh: in std_logic_vector(0 to 31);
	key: in std_logic_vector(0 to 47);
	rcounter: in integer:=0;
	dr: in std_logic;
	flh,frh: out std_logic_vector(0 to 31));
end Basicdes;

architecture wow of Basicdes is
type mem2 is array(0 to 15) of std_logic_vector(0 to 31); 
signal desl,desr: mem2;
signal t2,t3,t4,t5: std_logic_vector(0 to 31);
signal t7,t8: std_logic_vector(0 to 47);
signal tl,tr : std_logic_vector(0 to 31);

component Exp is 
port( rh: in std_logic_vector(0 to 31);
	exrh: out std_logic_vector(0 to 47));
end component;

component Pbox is 
port( concrh: in std_logic_vector(0 to 31);
	permrh: out std_logic_vector(0 to 31));
end component;

component Sbox is 
port( xor_rh: in std_logic_vector(0 to 47);
	b: out std_logic_vector(0 to 31));
end component;

component x_or32 is
port( a,b:in std_logic_vector(0 to 31);
	c: out std_logic_vector(0 to 31));
end component;


component x_or48 is
port( a,b:in std_logic_vector(0 to 47);
	c: out std_logic_vector(0 to 47));
end component;

begin


process(rcounter,dr,frh,flh,lh,rh)

begin
	if dr='0' then
	null;
	elsif dr='1' then
	
	desl(rcounter)<=flh;
	desr(rcounter)<=frh;



	with rcounter select 
		tl<=lh when 0 ,
			desl(0) when 1,
			desl(1) when 2,
			desl(2) when 3,
			desl(3) when 4,
			desl(4) when 5,
			desl(5) when 6,
			desl(6) when 7,
			desl(7) when 8,
			desl(8) when 9,
			desl(9) when 10,
			desl(10) when 11,
			desl(11) when 12,
			desl(12) when 13,
			desl(13) when 14,
			desl(14) when 15,
			desl(15) when others;
			
	
	with rcounter select 
		tr<=rh when 0 ,
			desr(0) when 1,
			desr(1) when 2,
			desr(2) when 3,
			desr(3) when 4,
			desr(4) when 5,
			desr(5) when 6,
			desr(6) when 7,
			desr(7) when 8,
			desr(8) when 9,
			desr(9) when 10,
			desr(10) when 11,
			desr(11) when 12,
			desr(12) when 13,
			desr(13) when 14,
			desr(14) when 15,
			desr(15) when others;
			
		end if;

			
	
end process;


U1: Exp port map(tr,t7);
U2: x_or48 port map(key,t7,t8);
U3: Sbox port map(t8,t2);
U4: Pbox port map(t2,t3);
U5: x_or32 port map(t3,tl,t4);
flh<=tr;
frh<=t4;
end;













