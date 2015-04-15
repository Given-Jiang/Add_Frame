-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_bus_concat is
	generic (
		WIDTHB : natural := 8;
		WIDTHA : natural := 8
	);
	port (
		b : in std_logic_vector(widthB-1 downto 0) := (others=>'0');
		clock : in std_logic := '0';
		a : in std_logic_vector(widthA-1 downto 0) := (others=>'0');
		aclr : in std_logic := '0';
		output : out std_logic_vector(widthA+widthB-1 downto 0)
	);
end entity alt_dspbuilder_bus_concat;

architecture rtl of alt_dspbuilder_bus_concat is

component alt_dspbuilder_bus_concat_GNAUBM7IRL is
	generic (
		WIDTHB : natural := 4;
		WIDTHA : natural := 4
	);
	port (
		a : in std_logic_vector(4-1 downto 0) := (others=>'0');
		aclr : in std_logic := '0';
		b : in std_logic_vector(4-1 downto 0) := (others=>'0');
		clock : in std_logic := '0';
		output : out std_logic_vector(8-1 downto 0)
	);
end component alt_dspbuilder_bus_concat_GNAUBM7IRL;

component alt_dspbuilder_bus_concat_GNBH75ZTOD is
	generic (
		WIDTHB : natural := 4;
		WIDTHA : natural := 8
	);
	port (
		a : in std_logic_vector(8-1 downto 0) := (others=>'0');
		aclr : in std_logic := '0';
		b : in std_logic_vector(4-1 downto 0) := (others=>'0');
		clock : in std_logic := '0';
		output : out std_logic_vector(12-1 downto 0)
	);
end component alt_dspbuilder_bus_concat_GNBH75ZTOD;

component alt_dspbuilder_bus_concat_GNXPBV3I7L is
	generic (
		WIDTHB : natural := 4;
		WIDTHA : natural := 12
	);
	port (
		a : in std_logic_vector(12-1 downto 0) := (others=>'0');
		aclr : in std_logic := '0';
		b : in std_logic_vector(4-1 downto 0) := (others=>'0');
		clock : in std_logic := '0';
		output : out std_logic_vector(16-1 downto 0)
	);
end component alt_dspbuilder_bus_concat_GNXPBV3I7L;

begin

alt_dspbuilder_bus_concat_GNAUBM7IRL_0: if ((WIDTHB = 4) and (WIDTHA = 4)) generate
	inst_alt_dspbuilder_bus_concat_GNAUBM7IRL_0: alt_dspbuilder_bus_concat_GNAUBM7IRL
		generic map(WIDTHB => 4, WIDTHA => 4)
		port map(a => a, aclr => aclr, b => b, clock => clock, output => output);
end generate;

alt_dspbuilder_bus_concat_GNBH75ZTOD_1: if ((WIDTHB = 4) and (WIDTHA = 8)) generate
	inst_alt_dspbuilder_bus_concat_GNBH75ZTOD_1: alt_dspbuilder_bus_concat_GNBH75ZTOD
		generic map(WIDTHB => 4, WIDTHA => 8)
		port map(a => a, aclr => aclr, b => b, clock => clock, output => output);
end generate;

alt_dspbuilder_bus_concat_GNXPBV3I7L_2: if ((WIDTHB = 4) and (WIDTHA = 12)) generate
	inst_alt_dspbuilder_bus_concat_GNXPBV3I7L_2: alt_dspbuilder_bus_concat_GNXPBV3I7L
		generic map(WIDTHB => 4, WIDTHA => 12)
		port map(a => a, aclr => aclr, b => b, clock => clock, output => output);
end generate;

assert not (((WIDTHB = 4) and (WIDTHA = 4)) or ((WIDTHB = 4) and (WIDTHA = 8)) or ((WIDTHB = 4) and (WIDTHA = 12)))
	report "Please run generate again" severity error;

end architecture rtl;

