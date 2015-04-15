-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_delay is
	generic (
		CLOCKPHASE : string := "1";
		DELAY : positive := 1;
		USE_INIT : natural := 0;
		BITPATTERN : string := "00000001";
		WIDTH : positive := 8
	);
	port (
		input : in std_logic_vector(width-1 downto 0) := (others=>'0');
		clock : in std_logic := '0';
		sclr : in std_logic := '0';
		aclr : in std_logic := '0';
		output : out std_logic_vector(width-1 downto 0);
		ena : in std_logic := '0'
	);
end entity alt_dspbuilder_delay;

architecture rtl of alt_dspbuilder_delay is

component alt_dspbuilder_delay_GNHYCSAEGT is
	generic (
		CLOCKPHASE : string := "1";
		DELAY : positive := 1;
		USE_INIT : natural := 0;
		BITPATTERN : string := "0";
		WIDTH : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(1-1 downto 0) := (others=>'0');
		output : out std_logic_vector(1-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNHYCSAEGT;

component alt_dspbuilder_delay_GNUECIBFDH is
	generic (
		CLOCKPHASE : string := "1";
		DELAY : positive := 1;
		USE_INIT : natural := 1;
		BITPATTERN : string := "0";
		WIDTH : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(1-1 downto 0) := (others=>'0');
		output : out std_logic_vector(1-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNUECIBFDH;

component alt_dspbuilder_delay_GNWON5MXYC is
	generic (
		CLOCKPHASE : string := "1";
		DELAY : positive := 1;
		USE_INIT : natural := 1;
		BITPATTERN : string := "0000000000001010";
		WIDTH : positive := 16
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNWON5MXYC;

component alt_dspbuilder_delay_GNFEQ57IEX is
	generic (
		CLOCKPHASE : string := "1";
		DELAY : positive := 1;
		USE_INIT : natural := 1;
		BITPATTERN : string := "000";
		WIDTH : positive := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(3-1 downto 0) := (others=>'0');
		output : out std_logic_vector(3-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNFEQ57IEX;

component alt_dspbuilder_delay_GNZCCH64DU is
	generic (
		CLOCKPHASE : string := "1";
		DELAY : positive := 1;
		USE_INIT : natural := 1;
		BITPATTERN : string := "0000000000000000";
		WIDTH : positive := 16
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNZCCH64DU;

component alt_dspbuilder_delay_GNXEWPAYC5 is
	generic (
		CLOCKPHASE : string := "1";
		DELAY : positive := 1;
		USE_INIT : natural := 0;
		BITPATTERN : string := "000000000000000000000001";
		WIDTH : positive := 24
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(24-1 downto 0) := (others=>'0');
		output : out std_logic_vector(24-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNXEWPAYC5;

component alt_dspbuilder_delay_GNGQ56ZS4N is
	generic (
		CLOCKPHASE : string := "1";
		DELAY : positive := 1;
		USE_INIT : natural := 0;
		BITPATTERN : string := "1";
		WIDTH : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(1-1 downto 0) := (others=>'0');
		output : out std_logic_vector(1-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNGQ56ZS4N;

begin

alt_dspbuilder_delay_GNHYCSAEGT_0: if ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 0) and (BITPATTERN = "0") and (WIDTH = 1)) generate
	inst_alt_dspbuilder_delay_GNHYCSAEGT_0: alt_dspbuilder_delay_GNHYCSAEGT
		generic map(CLOCKPHASE => "1", DELAY => 1, USE_INIT => 0, BITPATTERN => "0", WIDTH => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNUECIBFDH_1: if ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 1) and (BITPATTERN = "0") and (WIDTH = 1)) generate
	inst_alt_dspbuilder_delay_GNUECIBFDH_1: alt_dspbuilder_delay_GNUECIBFDH
		generic map(CLOCKPHASE => "1", DELAY => 1, USE_INIT => 1, BITPATTERN => "0", WIDTH => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNWON5MXYC_2: if ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 1) and (BITPATTERN = "0000000000001010") and (WIDTH = 16)) generate
	inst_alt_dspbuilder_delay_GNWON5MXYC_2: alt_dspbuilder_delay_GNWON5MXYC
		generic map(CLOCKPHASE => "1", DELAY => 1, USE_INIT => 1, BITPATTERN => "0000000000001010", WIDTH => 16)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNFEQ57IEX_3: if ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 1) and (BITPATTERN = "000") and (WIDTH = 3)) generate
	inst_alt_dspbuilder_delay_GNFEQ57IEX_3: alt_dspbuilder_delay_GNFEQ57IEX
		generic map(CLOCKPHASE => "1", DELAY => 1, USE_INIT => 1, BITPATTERN => "000", WIDTH => 3)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNZCCH64DU_4: if ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 1) and (BITPATTERN = "0000000000000000") and (WIDTH = 16)) generate
	inst_alt_dspbuilder_delay_GNZCCH64DU_4: alt_dspbuilder_delay_GNZCCH64DU
		generic map(CLOCKPHASE => "1", DELAY => 1, USE_INIT => 1, BITPATTERN => "0000000000000000", WIDTH => 16)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNXEWPAYC5_5: if ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 0) and (BITPATTERN = "000000000000000000000001") and (WIDTH = 24)) generate
	inst_alt_dspbuilder_delay_GNXEWPAYC5_5: alt_dspbuilder_delay_GNXEWPAYC5
		generic map(CLOCKPHASE => "1", DELAY => 1, USE_INIT => 0, BITPATTERN => "000000000000000000000001", WIDTH => 24)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNGQ56ZS4N_6: if ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 0) and (BITPATTERN = "1") and (WIDTH = 1)) generate
	inst_alt_dspbuilder_delay_GNGQ56ZS4N_6: alt_dspbuilder_delay_GNGQ56ZS4N
		generic map(CLOCKPHASE => "1", DELAY => 1, USE_INIT => 0, BITPATTERN => "1", WIDTH => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

assert not (((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 0) and (BITPATTERN = "0") and (WIDTH = 1)) or ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 1) and (BITPATTERN = "0") and (WIDTH = 1)) or ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 1) and (BITPATTERN = "0000000000001010") and (WIDTH = 16)) or ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 1) and (BITPATTERN = "000") and (WIDTH = 3)) or ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 1) and (BITPATTERN = "0000000000000000") and (WIDTH = 16)) or ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 0) and (BITPATTERN = "000000000000000000000001") and (WIDTH = 24)) or ((CLOCKPHASE = "1") and (DELAY = 1) and (USE_INIT = 0) and (BITPATTERN = "1") and (WIDTH = 1)))
	report "Please run generate again" severity error;

end architecture rtl;

