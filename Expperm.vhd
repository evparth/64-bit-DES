library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Exp is 
port( rh: in std_logic_vector(0 to 31);
	exrh: out std_logic_vector(0 to 47));
end Exp;

architecture works of Exp is

begin

		exrh(0)<= rh(31) ;						----------------------------EXPANSION PERMUTATION--------------------------------
		exrh(1) <= rh(0) ;
		exrh(2) <= rh(1) ;
		exrh(3) <=rh(2) ;
		exrh(4) <= rh(3) ;
		exrh(5) <= rh(4) ;
		exrh(6)<= rh(3) ;
		exrh(7) <= rh(4) ;
		exrh(8)<= rh(5) ;
		exrh(9) <= rh(6) ;
		exrh(10)<= rh(7) ;
		exrh(11) <= rh(8) ;
		exrh(12) <= rh(7) ;
		exrh(13) <= rh(8) ;
		exrh(14)<= rh(9) ;
		exrh(15) <= rh(10) ;
		exrh(16)<= rh(11) ;
		exrh(17) <= rh(12) ;
		exrh(18) <= rh(11) ;
		exrh(19) <=rh(12) ;
		exrh(20) <=rh(13) ;
		exrh(21) <=rh(14) ;
		exrh(22) <=rh(15) ;
		exrh(23) <=rh(16) ;
		exrh(24) <= rh(15) ;
		exrh(25) <=rh(16) ;
		exrh(26) <=rh(17) ;
		exrh(27) <=rh(18) ;
		exrh(28)<= rh(19) ;
		exrh(29) <= rh(20) ;
		exrh(30)<= rh(19) ;
		exrh(31) <= rh(20) ;
		exrh(32)<= rh(21) ;
		exrh(33) <=rh(22) ;
		exrh(34) <= rh(23) ;
		exrh(35) <= rh(24) ;
		exrh(36)<=rh(23) ;
		exrh(37) <= rh(24) ;
		exrh(38) <= rh(25) ;
		exrh(39)<= rh(26) ;
		exrh(40)<= rh(27) ;
		exrh(41) <= rh(28) ;
		exrh(42)<= rh(27) ;
		exrh(43) <= rh(28) ;
		exrh(44) <= rh(29) ;
		exrh(45) <=rh(30) ;
		exrh(46) <= rh(31) ;
		exrh(47) <= rh(0) ;
end;