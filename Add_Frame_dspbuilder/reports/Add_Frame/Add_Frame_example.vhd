library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity Add_Frame_example is  
	port(
		Avalon_ST_Sink_data : in STD_LOGIC_VECTOR(23 downto 0);
		Avalon_ST_Sink_endofpacket : in STD_LOGIC;
		Avalon_MM_Slave_address : in STD_LOGIC_VECTOR(2 downto 0);
		Avalon_MM_Slave_writedata : in STD_LOGIC_VECTOR(31 downto 0);
		Avalon_ST_Source_valid : out STD_LOGIC;
		Avalon_ST_Sink_valid : in STD_LOGIC;
		Clock : in STD_LOGIC;
		Avalon_ST_Source_endofpacket : out STD_LOGIC;
		Avalon_ST_Source_startofpacket : out STD_LOGIC;
		Avalon_MM_Slave_write : in STD_LOGIC;
		aclr : in STD_LOGIC;
		Avalon_ST_Source_ready : in STD_LOGIC;
		Avalon_ST_Sink_ready : out STD_LOGIC;
		Avalon_ST_Sink_startofpacket : in STD_LOGIC;
		Avalon_ST_Source_data : out STD_LOGIC_VECTOR(23 downto 0)); 
end entity;
architecture rtl of Add_Frame_example is
component Add_Frame
	  
	port(
		Avalon_ST_Sink_data : in STD_LOGIC_VECTOR(23 downto 0);
		Avalon_ST_Sink_endofpacket : in STD_LOGIC;
		Avalon_MM_Slave_address : in STD_LOGIC_VECTOR(2 downto 0);
		Avalon_MM_Slave_writedata : in STD_LOGIC_VECTOR(31 downto 0);
		Avalon_ST_Source_valid : out STD_LOGIC;
		Avalon_ST_Sink_valid : in STD_LOGIC;
		Clock : in STD_LOGIC;
		Avalon_ST_Source_endofpacket : out STD_LOGIC;
		Avalon_ST_Source_startofpacket : out STD_LOGIC;
		Avalon_MM_Slave_write : in STD_LOGIC;
		aclr : in STD_LOGIC;
		Avalon_ST_Source_ready : in STD_LOGIC;
		Avalon_ST_Sink_ready : out STD_LOGIC;
		Avalon_ST_Sink_startofpacket : in STD_LOGIC;
		Avalon_ST_Source_data : out STD_LOGIC_VECTOR(23 downto 0)); 
end component;
begin
	Add_Frame_instance : 
		component Add_Frame
			port map(
				Avalon_ST_Sink_data => Avalon_ST_Sink_data,
				Avalon_ST_Sink_endofpacket => Avalon_ST_Sink_endofpacket,
				Avalon_MM_Slave_address => Avalon_MM_Slave_address,
				Avalon_MM_Slave_writedata => Avalon_MM_Slave_writedata,
				Avalon_ST_Source_valid => Avalon_ST_Source_valid,
				Avalon_ST_Sink_valid => Avalon_ST_Sink_valid,
				Clock => Clock,
				Avalon_ST_Source_endofpacket => Avalon_ST_Source_endofpacket,
				Avalon_ST_Source_startofpacket => Avalon_ST_Source_startofpacket,
				Avalon_MM_Slave_write => Avalon_MM_Slave_write,
				aclr => aclr,
				Avalon_ST_Source_ready => Avalon_ST_Source_ready,
				Avalon_ST_Sink_ready => Avalon_ST_Sink_ready,
				Avalon_ST_Sink_startofpacket => Avalon_ST_Sink_startofpacket,
				Avalon_ST_Source_data => Avalon_ST_Source_data);
end architecture rtl;
