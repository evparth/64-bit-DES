
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity x_or48 is
port( a,b:in std_logic_vector(0 to 47);
	c: out std_logic_vector(0 to 47));
end x_or48;

architecture works of x_or48 is 

begin

c<=a xor b;

end;