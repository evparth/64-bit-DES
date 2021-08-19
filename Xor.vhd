library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity x_or32 is
port( a,b:in std_logic_vector(0 to 31);
	c: out std_logic_vector(0 to 31));
end x_or32;

architecture works of x_or32 is 

begin

c<=a xor b;

end;
