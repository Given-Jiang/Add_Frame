-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_decoder is
	generic (
		DECODE : string := "00000000";
		PIPELINE : natural := 0;
		WIDTH : natural := 8
	);
	port (
		dec : out std_logic;
		clock : in std_logic := '0';
		sclr : in std_logic := '0';
		data : in std_logic_vector(width-1 downto 0) := (others=>'0');
		aclr : in std_logic := '0';
		ena : in std_logic := '0'
	);
end entity alt_dspbuilder_decoder;

architecture rtl of alt_dspbuilder_decoder is

component alt_dspbuilder_decoder_GNSCEXJCJK is
	generic (
		DECODE : string := "000000000000000000001111";
		PIPELINE : natural := 0;
		WIDTH : natural := 24
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(24-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNSCEXJCJK;

component alt_dspbuilder_decoder_GNASZZCDAR is
	generic (
		DECODE : string := "110";
		PIPELINE : natural := 1;
		WIDTH : natural := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(3-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNASZZCDAR;

component alt_dspbuilder_decoder_GNBHXAVAPH is
	generic (
		DECODE : string := "010";
		PIPELINE : natural := 1;
		WIDTH : natural := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(3-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNBHXAVAPH;

component alt_dspbuilder_decoder_GN7UJNSI7B is
	generic (
		DECODE : string := "101";
		PIPELINE : natural := 1;
		WIDTH : natural := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(3-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GN7UJNSI7B;

component alt_dspbuilder_decoder_GN7W55JURN is
	generic (
		DECODE : string := "100";
		PIPELINE : natural := 1;
		WIDTH : natural := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(3-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GN7W55JURN;

component alt_dspbuilder_decoder_GNBT6YIKS3 is
	generic (
		DECODE : string := "011";
		PIPELINE : natural := 1;
		WIDTH : natural := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(3-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNBT6YIKS3;

component alt_dspbuilder_decoder_GNQPHUITBS is
	generic (
		DECODE : string := "001";
		PIPELINE : natural := 1;
		WIDTH : natural := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(3-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNQPHUITBS;

component alt_dspbuilder_decoder_GNAGWQMRGS is
	generic (
		DECODE : string := "000000000000000000000000";
		PIPELINE : natural := 0;
		WIDTH : natural := 24
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(24-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNAGWQMRGS;

begin

alt_dspbuilder_decoder_GNSCEXJCJK_0: if ((DECODE = "000000000000000000001111") and (PIPELINE = 0) and (WIDTH = 24)) generate
	inst_alt_dspbuilder_decoder_GNSCEXJCJK_0: alt_dspbuilder_decoder_GNSCEXJCJK
		generic map(DECODE => "000000000000000000001111", PIPELINE => 0, WIDTH => 24)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GNASZZCDAR_1: if ((DECODE = "110") and (PIPELINE = 1) and (WIDTH = 3)) generate
	inst_alt_dspbuilder_decoder_GNASZZCDAR_1: alt_dspbuilder_decoder_GNASZZCDAR
		generic map(DECODE => "110", PIPELINE => 1, WIDTH => 3)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GNBHXAVAPH_2: if ((DECODE = "010") and (PIPELINE = 1) and (WIDTH = 3)) generate
	inst_alt_dspbuilder_decoder_GNBHXAVAPH_2: alt_dspbuilder_decoder_GNBHXAVAPH
		generic map(DECODE => "010", PIPELINE => 1, WIDTH => 3)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GN7UJNSI7B_3: if ((DECODE = "101") and (PIPELINE = 1) and (WIDTH = 3)) generate
	inst_alt_dspbuilder_decoder_GN7UJNSI7B_3: alt_dspbuilder_decoder_GN7UJNSI7B
		generic map(DECODE => "101", PIPELINE => 1, WIDTH => 3)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GN7W55JURN_4: if ((DECODE = "100") and (PIPELINE = 1) and (WIDTH = 3)) generate
	inst_alt_dspbuilder_decoder_GN7W55JURN_4: alt_dspbuilder_decoder_GN7W55JURN
		generic map(DECODE => "100", PIPELINE => 1, WIDTH => 3)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GNBT6YIKS3_5: if ((DECODE = "011") and (PIPELINE = 1) and (WIDTH = 3)) generate
	inst_alt_dspbuilder_decoder_GNBT6YIKS3_5: alt_dspbuilder_decoder_GNBT6YIKS3
		generic map(DECODE => "011", PIPELINE => 1, WIDTH => 3)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GNQPHUITBS_6: if ((DECODE = "001") and (PIPELINE = 1) and (WIDTH = 3)) generate
	inst_alt_dspbuilder_decoder_GNQPHUITBS_6: alt_dspbuilder_decoder_GNQPHUITBS
		generic map(DECODE => "001", PIPELINE => 1, WIDTH => 3)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GNAGWQMRGS_7: if ((DECODE = "000000000000000000000000") and (PIPELINE = 0) and (WIDTH = 24)) generate
	inst_alt_dspbuilder_decoder_GNAGWQMRGS_7: alt_dspbuilder_decoder_GNAGWQMRGS
		generic map(DECODE => "000000000000000000000000", PIPELINE => 0, WIDTH => 24)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

assert not (((DECODE = "000000000000000000001111") and (PIPELINE = 0) and (WIDTH = 24)) or ((DECODE = "110") and (PIPELINE = 1) and (WIDTH = 3)) or ((DECODE = "010") and (PIPELINE = 1) and (WIDTH = 3)) or ((DECODE = "101") and (PIPELINE = 1) and (WIDTH = 3)) or ((DECODE = "100") and (PIPELINE = 1) and (WIDTH = 3)) or ((DECODE = "011") and (PIPELINE = 1) and (WIDTH = 3)) or ((DECODE = "001") and (PIPELINE = 1) and (WIDTH = 3)) or ((DECODE = "000000000000000000000000") and (PIPELINE = 0) and (WIDTH = 24)))
	report "Please run generate again" severity error;

end architecture rtl;

