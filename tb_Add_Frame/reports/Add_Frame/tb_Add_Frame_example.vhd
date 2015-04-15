library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity tb_Add_Frame_example is   
end entity;
architecture rtl of tb_Add_Frame_example is
component tb_Add_Frame
	   
end component;
begin
	tb_Add_Frame_instance : 
		component tb_Add_Frame
			port map();
end architecture rtl;
