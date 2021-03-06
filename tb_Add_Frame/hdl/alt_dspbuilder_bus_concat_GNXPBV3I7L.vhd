library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_bus_concat_GNXPBV3I7L is
	generic		( 			widthB : natural := 4;
			widthA : natural := 12);

	port(
		a : in std_logic_vector((widthA)-1 downto 0);
		aclr : in std_logic;
		b : in std_logic_vector((widthB)-1 downto 0);
		clock : in std_logic;
		output : out std_logic_vector((widthA+widthB)-1 downto 0));		
end entity;



architecture rtl of alt_dspbuilder_bus_concat_GNXPBV3I7L is 
Begin

output <= a & b;
				
end architecture;