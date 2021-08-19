library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity InitP is 
port( plaintext: in std_logic_vector(0 to 63);
	data_enable: std_logic;
	lh,rh: out std_logic_vector(0 to 31));
end InitP;

architecture works of InitP is
begin

process(data_enable)
begin
	if(data_enable='1') then
		lh(0) <=plaintext(57); 
		lh(1) <=plaintext(49);
		lh(2) <=plaintext(41);
		lh(3) <= plaintext(33);
		lh(4) <=plaintext(25);
		lh(5) <= plaintext(17);
		lh(6) <= plaintext(9);
		lh(7) <= plaintext(1);
		lh(8) <= plaintext(59);
		lh(9)<= plaintext(51);
		lh(10) <=plaintext(43);
		lh(11) <= plaintext(35);
		lh(12) <= plaintext(27);
		lh(13) <= plaintext(19);
		lh(14) <= plaintext(11);
		lh(15) <=plaintext(3);
		lh(16)<= plaintext(61);
		lh(17) <= plaintext(53);
		lh(18) <= plaintext(45);
		lh(19)<=plaintext(37);
		lh(20) <= plaintext(29);
		lh(21) <= plaintext(21);
		lh(22) <= plaintext(13);
		lh(23) <= plaintext(5);
		lh(24) <= plaintext(63);
		lh(25) <= plaintext(55);
		lh(26) <= plaintext(47);
		lh(27) <= plaintext(39);
		lh(28)<= plaintext(31);
		lh(29) <= plaintext(23);
		lh(30)<= plaintext(15);
		lh(31) <= plaintext(7);
		rh(0) <= plaintext(56);
		rh(1) <=plaintext(48);
		rh(2) <= plaintext(40);
		rh(3)<= plaintext(32);
		rh(4) <=plaintext(24);
		rh(5) <= plaintext(16);
		rh(6) <= plaintext(8);
		rh(7) <=plaintext(0);
		rh(8) <= plaintext(58);
		rh(9) <= plaintext(50);
		rh(10)<= plaintext(42);
		rh(11) <= plaintext(34);
		rh(12) <=plaintext(26);
		rh(13)<= plaintext(18);
		rh(14) <= plaintext(10);
		rh(15) <= plaintext(2);
		rh(16) <= plaintext(60);
		rh(17)<= plaintext(52);
		rh(18) <= plaintext(44);
		rh(19) <= plaintext(36);
		rh(20) <= plaintext(28);
		rh(21) <=plaintext(20);
		rh(22) <= plaintext(12);
		rh(23) <= plaintext(4);
		rh(24) <= plaintext(62);
		rh(25)<= plaintext(54);
		rh(26) <= plaintext(46);
		rh(27) <= plaintext(38);
		rh(28) <=plaintext(30);
		rh(29) <=plaintext(22);
		rh(30) <= plaintext(14);
		rh(31) <=plaintext(6);
	elsif data_enable='0' then
		lh <= (others => 'U');
		rh <= (others => 'U');
		end if;
end process;

end;