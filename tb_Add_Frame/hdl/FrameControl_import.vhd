-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity FrameControl_import is
	port (
		clock : in std_logic;
		ctrl_in : in std_logic;
		data_in : in std_logic;
		frame_in : in std_logic;
		reset : in std_logic;
		state : out std_logic_vector(3-1 downto 0)
	);
end entity FrameControl_import;

architecture rtl of FrameControl_import is

component FrameControl_import_GN is
	port (
		clock : in std_logic;
		ctrl_in : in std_logic;
		data_in : in std_logic;
		frame_in : in std_logic;
		reset : in std_logic;
		state : out std_logic_vector(3-1 downto 0)
	);
end component FrameControl_import_GN;

begin

FrameControl_import_GN_0: if true generate
	inst_FrameControl_import_GN_0: FrameControl_import_GN
		port map(clock => clock, ctrl_in => ctrl_in, data_in => data_in, frame_in => frame_in, reset => reset, state => state);
end generate;

end architecture rtl;

