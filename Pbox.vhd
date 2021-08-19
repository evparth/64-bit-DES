library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Pbox is 
port( concrh: in std_logic_vector(0 to 31);
	permrh: out std_logic_vector(0 to 31));
end Pbox;

architecture works of Pbox is


begin

permrh(0) <= concrh(15) ;                                                                  ------------------PERMUTE-----
permrh(1) <=  concrh(6) ;
permrh(2) <=  concrh(19) ;
permrh(3) <=  concrh(20) ;
permrh(4)<=  concrh(28) ;
permrh(5) <=  concrh(11) ;
permrh(6)<=  concrh(27) ;
permrh(7) <=  concrh(16) ;
permrh(8)<=  concrh(0) ;
permrh(9) <=  concrh(14) ;
permrh(10) <=  concrh(22) ;
permrh(11) <=  concrh(25) ;
permrh(12) <=  concrh(4) ;
permrh(13) <= concrh(17) ;
permrh(14) <=  concrh(30) ;
permrh(15) <= concrh(9) ;
permrh(16) <=  concrh(1) ;
permrh(17) <= concrh(7) ;
permrh(18) <=  concrh(23) ;
permrh(19) <=  concrh(13) ;
permrh(20) <= concrh(31) ;
permrh(21)<= concrh(26) ;
permrh(22)<= concrh(2) ;
permrh(23)<=  concrh(8) ;
permrh(24) <=  concrh(18) ;
permrh(25) <= concrh(12) ;
permrh(26) <= concrh(29) ;
permrh(27) <=  concrh(5) ;
permrh(28)<=  concrh(21) ;
permrh(29) <=  concrh(10) ;
permrh(30) <= concrh(3) ;
permrh(31) <=  concrh(24) ;
end;