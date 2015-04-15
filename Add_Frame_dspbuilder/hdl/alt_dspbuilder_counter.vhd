-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_counter is
	generic (
		USE_USR_ACLR : string := "false";
		USE_ENA : string := "false";
		USE_CIN : string := "false";
		NDIRECTION : natural := 1;
		SVALUE : string := "0";
		USE_SSET : string := "false";
		USE_SLOAD : string := "false";
		USE_SCLR : string := "false";
		USE_COUT : string := "false";
		MODULUS : integer := 256;
		USE_CNT_ENA : string := "false";
		WIDTH : natural := 8;
		USE_ASET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0"
	);
	port (
		user_aclr : in std_logic;
		clock : in std_logic;
		q : out std_logic_vector(width-1 downto 0);
		direction : in std_logic;
		sclr : in std_logic;
		data : in std_logic_vector(width-1 downto 0);
		aset : in std_logic;
		cout : out std_logic;
		sset : in std_logic;
		aclr : in std_logic;
		cnt_ena : in std_logic;
		cin : in std_logic;
		ena : in std_logic;
		aload : in std_logic;
		sload : in std_logic
	);
end entity alt_dspbuilder_counter;

architecture rtl of alt_dspbuilder_counter is

component alt_dspbuilder_counter_GNW5IG44CT is
	generic (
		USE_USR_ACLR : string := "false";
		USE_ENA : string := "false";
		USE_CIN : string := "false";
		NDIRECTION : natural := 1;
		SVALUE : string := "1";
		USE_SSET : string := "false";
		USE_SLOAD : string := "false";
		USE_SCLR : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := -1;
		USE_CNT_ENA : string := "true";
		WIDTH : natural := 3;
		USE_ASET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0"
	);
	port (
		aclr : in std_logic;
		clock : in std_logic;
		cnt_ena : in std_logic;
		cout : out std_logic;
		q : out std_logic_vector(3-1 downto 0);
		sclr : in std_logic
	);
end component alt_dspbuilder_counter_GNW5IG44CT;

begin

alt_dspbuilder_counter_GNW5IG44CT_0: if ((USE_USR_ACLR = "false") and (USE_ENA = "false") and (USE_CIN = "false") and (NDIRECTION = 1) and (SVALUE = "1") and (USE_SSET = "false") and (USE_SLOAD = "false") and (USE_SCLR = "true") and (USE_COUT = "false") and (MODULUS = -1) and (USE_CNT_ENA = "true") and (WIDTH = 3) and (USE_ASET = "false") and (USE_ALOAD = "false") and (AVALUE = "0")) generate
	inst_alt_dspbuilder_counter_GNW5IG44CT_0: alt_dspbuilder_counter_GNW5IG44CT
		generic map(USE_USR_ACLR => "false", USE_ENA => "false", USE_CIN => "false", NDIRECTION => 1, SVALUE => "1", USE_SSET => "false", USE_SLOAD => "false", USE_SCLR => "true", USE_COUT => "false", MODULUS => -1, USE_CNT_ENA => "true", WIDTH => 3, USE_ASET => "false", USE_ALOAD => "false", AVALUE => "0")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

assert not (((USE_USR_ACLR = "false") and (USE_ENA = "false") and (USE_CIN = "false") and (NDIRECTION = 1) and (SVALUE = "1") and (USE_SSET = "false") and (USE_SLOAD = "false") and (USE_SCLR = "true") and (USE_COUT = "false") and (MODULUS = -1) and (USE_CNT_ENA = "true") and (WIDTH = 3) and (USE_ASET = "false") and (USE_ALOAD = "false") and (AVALUE = "0")))
	report "Please run generate again" severity error;

end architecture rtl;

