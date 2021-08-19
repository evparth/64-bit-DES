library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity KPU is
port(key: in std_logic_vector(0 to 63);
	enable: in std_logic;
	kcounter: in integer;
	key0: out std_logic_vector(0 to 47));
end KPU;

architecture works of KPU is

signal ltemp,rtemp: std_logic_vector(0 to 27);
signal temp: std_logic_vector(0 to 55);


component PC1 is 
port(key: in std_logic_vector(0 to 63);
	key_lh,key_rh: out std_logic_vector(0 to 27));
end component;

component PC2 is
port(xkey_temp :in std_logic_vector(0 to 55);
	xkey_temprd :out std_logic_vector(0 to 47));
end component;



begin
	

U1: PC1 port map(key,ltemp,rtemp);

process(ltemp,rtemp,kcounter,temp,enable)
variable k1,k2: std_logic_vector(0 to 27);
variable k3: std_logic_vector(0 to 55);



begin

if enable='0' then 
	null;
elsif enable='1' then


with kcounter select                                          ----RIGHT HALF leftROTATION----
	k1 :=   rtemp ROL 1 when 0,
			rtemp ROL 2 when 1,
			rtemp ROL 4 when 2,
			rtemp ROL 6 when 3,
			rtemp ROL 8 when 4,
			rtemp ROL 10 when 5,
			rtemp ROL 12 when 6,
			rtemp ROL 14 when 7,
			rtemp ROL 15 when 8,
			rtemp ROL 17 when 9,
			rtemp ROL 19 when 10,
			rtemp ROL 21 when 11,
			rtemp ROL 23 when 12,
			rtemp ROL 25 when 13,
			rtemp ROL 27 when 14,
			rtemp ROL 28 when OTHERS;
			
with kcounter select                                          ----LEFT HALF leftROTATION----
	k2 :=   ltemp ROL 1 when 0,
			ltemp ROL 2 when 1,
			ltemp ROL 4 when 2,
			ltemp ROL 6 when 3,
			ltemp ROL 8 when 4,
			ltemp ROL 10 when 5,
			ltemp ROL 12 when 6,
			ltemp ROL 14 when 7,
			ltemp ROL 15 when 8,
			ltemp ROL 17 when 9,
			ltemp ROL 19 when 10,
			ltemp ROL 21 when 11,
			ltemp ROL 23 when 12,
			ltemp ROL 25 when 13,
			ltemp ROL 27 when 14,
			ltemp ROL 28 when OTHERS;

k3 := (k2 & k1);
temp<=k3;
end if;
end process;


U2: PC2 port map(temp,key0);

end;
