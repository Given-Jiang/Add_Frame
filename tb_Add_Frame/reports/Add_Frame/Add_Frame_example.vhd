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
		Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col : out STD_LOGIC_VECTOR(15 downto 0);
		Avalon_ST_Sink_valid : in STD_LOGIC;
		Clock : in STD_LOGIC;
		Avalon_ST_Source_endofpacket : out STD_LOGIC;
		Add_Frame_Add_Frame_Module_frame_in : out STD_LOGIC_VECTOR(0 downto 0);
		Add_Frame_Add_Frame_Module_row_counter : out STD_LOGIC_VECTOR(15 downto 0);
		Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row : out STD_LOGIC_VECTOR(15 downto 0);
		Avalon_ST_Source_startofpacket : out STD_LOGIC;
		Add_Frame_Add_Frame_Module_col_counter : out STD_LOGIC_VECTOR(15 downto 0);
		Avalon_MM_Slave_write : in STD_LOGIC;
		Avalon_ST_Source_ready : in STD_LOGIC;
		aclr : in STD_LOGIC;
		Avalon_ST_Sink_ready : out STD_LOGIC;
		Add_Frame_Add_Frame_Module_state : out STD_LOGIC_VECTOR(2 downto 0);
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
		Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col : out STD_LOGIC_VECTOR(15 downto 0);
		Avalon_ST_Sink_valid : in STD_LOGIC;
		Clock : in STD_LOGIC;
		Avalon_ST_Source_endofpacket : out STD_LOGIC;
		Add_Frame_Add_Frame_Module_frame_in : out STD_LOGIC_VECTOR(0 downto 0);
		Add_Frame_Add_Frame_Module_row_counter : out STD_LOGIC_VECTOR(15 downto 0);
		Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row : out STD_LOGIC_VECTOR(15 downto 0);
		Avalon_ST_Source_startofpacket : out STD_LOGIC;
		Add_Frame_Add_Frame_Module_col_counter : out STD_LOGIC_VECTOR(15 downto 0);
		Avalon_MM_Slave_write : in STD_LOGIC;
		Avalon_ST_Source_ready : in STD_LOGIC;
		aclr : in STD_LOGIC;
		Avalon_ST_Sink_ready : out STD_LOGIC;
		Add_Frame_Add_Frame_Module_state : out STD_LOGIC_VECTOR(2 downto 0);
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
				Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col => Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col,
				Avalon_ST_Sink_valid => Avalon_ST_Sink_valid,
				Clock => Clock,
				Avalon_ST_Source_endofpacket => Avalon_ST_Source_endofpacket,
				Add_Frame_Add_Frame_Module_frame_in => Add_Frame_Add_Frame_Module_frame_in,
				Add_Frame_Add_Frame_Module_row_counter => Add_Frame_Add_Frame_Module_row_counter,
				Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row => Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row,
				Avalon_ST_Source_startofpacket => Avalon_ST_Source_startofpacket,
				Add_Frame_Add_Frame_Module_col_counter => Add_Frame_Add_Frame_Module_col_counter,
				Avalon_MM_Slave_write => Avalon_MM_Slave_write,
				Avalon_ST_Source_ready => Avalon_ST_Source_ready,
				aclr => aclr,
				Avalon_ST_Sink_ready => Avalon_ST_Sink_ready,
				Add_Frame_Add_Frame_Module_state => Add_Frame_Add_Frame_Module_state,
				Avalon_ST_Sink_startofpacket => Avalon_ST_Sink_startofpacket,
				Avalon_ST_Source_data => Avalon_ST_Source_data);
end architecture rtl;
