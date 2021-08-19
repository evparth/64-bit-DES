library ieee;
use ieee.std_logic_1164.all;


entity PC2 is 
port(xkey_temp :in std_logic_vector(0 to 55);
	xkey_temprd :out std_logic_vector(0 to 47));

end PC2;

architecture works of PC2 is

begin
xkey_temprd(0) <= xkey_temp(13);			     ----PC2----
xkey_temprd(1) <= xkey_temp(16);
xkey_temprd(2) <= xkey_temp(10);
xkey_temprd(3) <= xkey_temp(23);
xkey_temprd(4) <= xkey_temp(0);
xkey_temprd(5) <= xkey_temp(4);
xkey_temprd(6) <= xkey_temp(2);
xkey_temprd(7) <= xkey_temp(27);
xkey_temprd(8) <= xkey_temp(14);
xkey_temprd(9) <= xkey_temp(5);
xkey_temprd(10) <= xkey_temp(20);
xkey_temprd(11) <=xkey_temp(9);
xkey_temprd(12) <= xkey_temp(22);
xkey_temprd(13) <= xkey_temp(18);
xkey_temprd(14)<= xkey_temp(11);
xkey_temprd(15) <= xkey_temp(3);
xkey_temprd(16) <= xkey_temp(25);
xkey_temprd(17) <= xkey_temp(7);
xkey_temprd(18) <= xkey_temp(15);
xkey_temprd(19) <= xkey_temp(6);
xkey_temprd(20) <= xkey_temp(26);
xkey_temprd(21) <= xkey_temp(19);
xkey_temprd(22) <= xkey_temp(12);
xkey_temprd(23)<= xkey_temp(1);
xkey_temprd(24)<= xkey_temp(40);
xkey_temprd(25)<= xkey_temp(51);
xkey_temprd(26)<= xkey_temp(30);
xkey_temprd(27) <=xkey_temp(36);
xkey_temprd(28)<= xkey_temp(46);
xkey_temprd(29) <= xkey_temp(54);
xkey_temprd(30)<= xkey_temp(29);
xkey_temprd(31) <= xkey_temp(39);
xkey_temprd(32) <= xkey_temp(50);
xkey_temprd(33) <= xkey_temp(44);
xkey_temprd(34) <= xkey_temp(32);
xkey_temprd(35)<= xkey_temp(47);
xkey_temprd(36) <= xkey_temp(43);
xkey_temprd(37) <= xkey_temp(48);
xkey_temprd(38)<=xkey_temp(38);
xkey_temprd(39)<= xkey_temp(55);
xkey_temprd(40) <= xkey_temp(33);
xkey_temprd(41) <=xkey_temp(52);
xkey_temprd(42) <=xkey_temp(45);
xkey_temprd(43) <=xkey_temp(41);
xkey_temprd(44) <= xkey_temp(49);
xkey_temprd(45) <= xkey_temp(35);
xkey_temprd(46) <= xkey_temp(28);
xkey_temprd(47) <= xkey_temp(31);

end;