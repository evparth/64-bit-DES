library ieee;
use ieee.std_logic_1164.all;


entity PC1 is 
port(key: in std_logic_vector(0 to 63);
	key_lh,key_rh: out std_logic_vector(0 to 27));
end PC1;

architecture works of PC1 is
begin
key_lh(0) <= key(56);                                                                                                          ----PC1---- 
key_lh(1) <=key(48);
key_lh(2) <=key(40);
key_lh(3) <= key(32);
key_lh(4) <=key(24);
key_lh(5) <= key(16);
key_lh(6) <= key(8);
key_lh(7) <=key(0);
key_lh(8) <=key(57);
key_lh(9) <=key(49);
key_lh(10) <= key(41);
key_lh(11) <= key(33);
key_lh(12) <= key(25);
key_lh(13)<=key(17);
key_lh(14) <= key(9);
key_lh(15) <=key(1);
key_lh(16) <=key(58);
key_lh(17) <=key(50);
key_lh(18) <= key(42);
key_lh(19) <= key(34);
key_lh(20)<=key(26);
key_lh(21)<= key(18);
key_lh(22) <= key(10);
key_lh(23) <= key(2);
key_lh(24) <=key(59);
key_lh(25)<=key(51);
key_lh(26) <= key(43);
key_lh(27) <=key(35);
key_rh(0)<= key(62);
key_rh(1) <= key(54);
key_rh(2) <=key(46);
key_rh(3) <= key(38);
key_rh(4) <= key(30);
key_rh(5) <= key(22);
key_rh(6) <= key(14);
key_rh(7) <= key(6);
key_rh(8) <=key(61);
key_rh(9) <=key(53);
key_rh(10) <= key(45);
key_rh(11)<= key(37);
key_rh(12) <= key(29);
key_rh(13) <= key(21);
key_rh(14) <=key(13);
key_rh(15) <= key(5);
key_rh(16) <= key(60);
key_rh(17) <=key(52);
key_rh(18) <= key(44);
key_rh(19) <=key(36);
key_rh(20) <= key(28);
key_rh(21) <= key(20);
key_rh(22) <= key(12);
key_rh(23) <= key(4);
key_rh(24) <=key(27);
key_rh(25) <= key(19);
key_rh(26) <=key(11);
key_rh(27)<= key(3);

end;