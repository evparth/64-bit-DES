
library ieee;
use ieee.std_logic_1164.all;

entity ReverseIP is 
port( 	lh,rh: in std_logic_vector(0 to 31);
	ciphertext: out std_logic_vector(0 to 63));
end ReverseIP;

architecture works of ReverseIP is
signal finalrt: std_logic_vector(0 to 63);


begin

finalrt<= rh & lh;
	ciphertext(0) <= finalrt (39);
	ciphertext(1)<= finalrt (7);
	ciphertext(2) <= finalrt (47);
	ciphertext(3) <= finalrt (15);
	ciphertext(4) <= finalrt (55);
	ciphertext(5) <= finalrt (23);
	ciphertext(6) <=finalrt (63);
	ciphertext(7)<= finalrt (31);
	ciphertext(8) <= finalrt (38);
	ciphertext(9) <= finalrt (6);
	ciphertext(10) <= finalrt (46);
	ciphertext(11) <= finalrt (14);
	ciphertext(12) <= finalrt (54);
	ciphertext(13)<= finalrt (22);
	ciphertext(14)<= finalrt (62);
	ciphertext(15) <= finalrt (30);
	ciphertext(16) <= finalrt (37);
	ciphertext(17) <= finalrt (5);
	ciphertext(18)<= finalrt (45);
	ciphertext(19) <= finalrt (13);
	ciphertext(20) <= finalrt (53);
	ciphertext(21) <= finalrt (21);
	ciphertext(22)<= finalrt (61);
	ciphertext(23)<=finalrt (29);
	ciphertext(24)<= finalrt (36);
	ciphertext(25) <=finalrt (4);
	ciphertext(26) <= finalrt (44);
	ciphertext(27)<= finalrt (12);
	ciphertext(28)<= finalrt (52);
	ciphertext(29)<= finalrt (20);
	ciphertext(30)<= finalrt (60);
	ciphertext(31) <= finalrt (28);
	ciphertext(32) <= finalrt (35);
	ciphertext(33) <=finalrt (3);
	ciphertext(34)<=finalrt (43);
	ciphertext(35)<= finalrt (11);
	ciphertext(36) <=finalrt (51);
	ciphertext(37) <= finalrt (19);
	ciphertext(38) <= finalrt (59);
	ciphertext(39)<=finalrt (27);
	ciphertext(40) <= finalrt (34);
	ciphertext(41)<= finalrt (2);
	ciphertext(42)<= finalrt (42);
	ciphertext(43) <= finalrt (10);
	ciphertext(44) <= finalrt (50);
	ciphertext(45) <= finalrt (18);
	ciphertext(46) <= finalrt (58);
	ciphertext(47) <= finalrt (26);
	ciphertext(48) <= finalrt (33);
	ciphertext(49) <= finalrt (1);
	ciphertext(50) <= finalrt (41);
	ciphertext(51) <= finalrt (9);
	ciphertext(52) <= finalrt (49);
	ciphertext(53) <= finalrt (17);
	ciphertext(54) <= finalrt (57);
	ciphertext(55) <=finalrt (25);
	ciphertext(56) <= finalrt (32);
	ciphertext(57) <= finalrt (0);
	ciphertext(58) <= finalrt (40);
	ciphertext(59) <= finalrt (8);
	ciphertext(60) <= finalrt (48);
	ciphertext(61) <=finalrt (16);
	ciphertext(62) <= finalrt (56);
	ciphertext(63) <= finalrt (24);
end;