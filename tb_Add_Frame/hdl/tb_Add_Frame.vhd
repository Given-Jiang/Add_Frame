-- tb_Add_Frame.vhd

-- Generated using ACDS version 13.1 162 at 2015.02.25.10:37:28

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_Add_Frame is
end entity tb_Add_Frame;

architecture rtl of tb_Add_Frame is
	component Add_Frame_GN is
		port (
			Clock                                               : in  std_logic                     := 'X';             -- clk
			aclr                                                : in  std_logic                     := 'X';             -- reset
			Avalon_MM_Slave_address                             : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- wire
			Avalon_ST_Source_valid                              : out std_logic;                                        -- wire
			Avalon_MM_Slave_writedata                           : in  std_logic_vector(31 downto 0) := (others => 'X'); -- wire
			Avalon_ST_Source_endofpacket                        : out std_logic;                                        -- wire
			Avalon_ST_Source_startofpacket                      : out std_logic;                                        -- wire
			Avalon_MM_Slave_write                               : in  std_logic                     := 'X';             -- wire
			Avalon_ST_Sink_data                                 : in  std_logic_vector(23 downto 0) := (others => 'X'); -- wire
			Avalon_ST_Sink_ready                                : out std_logic;                                        -- wire
			Avalon_ST_Sink_startofpacket                        : in  std_logic                     := 'X';             -- wire
			Avalon_ST_Sink_endofpacket                          : in  std_logic                     := 'X';             -- wire
			Avalon_ST_Source_data                               : out std_logic_vector(23 downto 0);                    -- wire
			Avalon_ST_Sink_valid                                : in  std_logic                     := 'X';             -- wire
			Add_Frame_Add_Frame_Module_row_counter              : out std_logic_vector(15 downto 0);                    -- wire
			Add_Frame_Add_Frame_Module_state                    : out std_logic_vector(2 downto 0);                     -- wire
			Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row : out std_logic_vector(15 downto 0);                    -- wire
			Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col : out std_logic_vector(15 downto 0);                    -- wire
			Add_Frame_Add_Frame_Module_frame_in                 : out std_logic_vector(0 downto 0);                     -- wire
			Add_Frame_Add_Frame_Module_col_counter              : out std_logic_vector(15 downto 0);                    -- wire
			Avalon_ST_Source_ready                              : in  std_logic                     := 'X'              -- wire
		);
	end component Add_Frame_GN;

	component alt_dspbuilder_testbench_clock_GNCGUFKHRR is
		generic (
			SIMULATION_START_CYCLE       : natural := 4;
			RESET_LATENCY                : natural := 0;
			RESET_REGISTER_CASCADE_DEPTH : natural := 0
		);
		port (
			aclr_out     : out std_logic;  -- reset
			clock_out    : out std_logic;  -- clk
			reg_aclr_out : out std_logic;  -- reset
			tb_aclr      : out std_logic   -- reset
		);
	end component alt_dspbuilder_testbench_clock_GNCGUFKHRR;

	component alt_dspbuilder_testbench_salt_GNUCY2GBID is
		generic (
			XFILE : string := "default"
		);
		port (
			clock  : in  std_logic                    := 'X'; -- clk
			aclr   : in  std_logic                    := 'X'; -- reset
			output : out std_logic_vector(2 downto 0)         -- wire
		);
	end component alt_dspbuilder_testbench_salt_GNUCY2GBID;

	component alt_dspbuilder_testbench_salt_GN7Z4SHGOK is
		generic (
			XFILE : string := "default"
		);
		port (
			clock  : in  std_logic                     := 'X'; -- clk
			aclr   : in  std_logic                     := 'X'; -- reset
			output : out std_logic_vector(31 downto 0)         -- wire
		);
	end component alt_dspbuilder_testbench_salt_GN7Z4SHGOK;

	component alt_dspbuilder_testbench_salt_GNDBMPYDND is
		generic (
			XFILE : string := "default"
		);
		port (
			clock  : in  std_logic := 'X'; -- clk
			aclr   : in  std_logic := 'X'; -- reset
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_testbench_salt_GNDBMPYDND;

	component alt_dspbuilder_testbench_salt_GNOXVOQUET is
		generic (
			XFILE : string := "default"
		);
		port (
			clock  : in  std_logic                     := 'X'; -- clk
			aclr   : in  std_logic                     := 'X'; -- reset
			output : out std_logic_vector(23 downto 0)         -- wire
		);
	end component alt_dspbuilder_testbench_salt_GNOXVOQUET;

	component alt_dspbuilder_testbench_capture_GNQX2JTRTZ is
		generic (
			XFILE    : string := "default";
			DSPBTYPE : string := ""
		);
		port (
			clock : in std_logic := 'X'; -- clk
			aclr  : in std_logic := 'X'; -- reset
			input : in std_logic := 'X'  -- wire
		);
	end component alt_dspbuilder_testbench_capture_GNQX2JTRTZ;

	component alt_dspbuilder_testbench_capture_GNHCRI5YMO is
		generic (
			XFILE    : string := "default";
			DSPBTYPE : string := ""
		);
		port (
			clock : in std_logic                     := 'X';             -- clk
			aclr  : in std_logic                     := 'X';             -- reset
			input : in std_logic_vector(23 downto 0) := (others => 'X')  -- wire
		);
	end component alt_dspbuilder_testbench_capture_GNHCRI5YMO;

	component alt_dspbuilder_testbench_capture_GNAXODEVVW is
		generic (
			XFILE    : string := "default";
			DSPBTYPE : string := ""
		);
		port (
			clock : in std_logic                     := 'X';             -- clk
			aclr  : in std_logic                     := 'X';             -- reset
			input : in std_logic_vector(15 downto 0) := (others => 'X')  -- wire
		);
	end component alt_dspbuilder_testbench_capture_GNAXODEVVW;

	component alt_dspbuilder_testbench_capture_GN32ABLG7V is
		generic (
			XFILE    : string := "default";
			DSPBTYPE : string := ""
		);
		port (
			clock : in std_logic                    := 'X';             -- clk
			aclr  : in std_logic                    := 'X';             -- reset
			input : in std_logic_vector(2 downto 0) := (others => 'X')  -- wire
		);
	end component alt_dspbuilder_testbench_capture_GN32ABLG7V;

	component alt_dspbuilder_testbench_capture_GNZUHKKGTG is
		generic (
			XFILE    : string := "default";
			DSPBTYPE : string := ""
		);
		port (
			clock : in std_logic                    := 'X';             -- clk
			aclr  : in std_logic                    := 'X';             -- reset
			input : in std_logic_vector(0 downto 0) := (others => 'X')  -- wire
		);
	end component alt_dspbuilder_testbench_capture_GNZUHKKGTG;

	signal salt_avalon_mm_slave_address_output_wire                     : std_logic_vector(2 downto 0);  -- salt_Avalon_MM_Slave_address:output -> dut:Avalon_MM_Slave_address
	signal clock_clock_tb_reset                                         : std_logic;                     -- Clock:tb_aclr -> [salt_Avalon_MM_Slave_address:aclr, salt_Avalon_MM_Slave_write:aclr, salt_Avalon_MM_Slave_writedata:aclr, salt_Avalon_ST_Sink_data:aclr, salt_Avalon_ST_Sink_endofpacket:aclr, salt_Avalon_ST_Sink_startofpacket:aclr, salt_Avalon_ST_Sink_valid:aclr, salt_Avalon_ST_Source_ready:aclr]
	signal clock_clock_tb_clk                                           : std_logic;                     -- Clock:clock_out -> [capture_Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col:clock, capture_Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row:clock, capture_Add_Frame_Add_Frame_Module_col_counter:clock, capture_Add_Frame_Add_Frame_Module_frame_in:clock, capture_Add_Frame_Add_Frame_Module_row_counter:clock, capture_Add_Frame_Add_Frame_Module_state:clock, capture_Avalon_ST_Sink_ready:clock, capture_Avalon_ST_Source_data:clock, capture_Avalon_ST_Source_endofpacket:clock, capture_Avalon_ST_Source_startofpacket:clock, capture_Avalon_ST_Source_valid:clock, dut:Clock, salt_Avalon_MM_Slave_address:clock, salt_Avalon_MM_Slave_write:clock, salt_Avalon_MM_Slave_writedata:clock, salt_Avalon_ST_Sink_data:clock, salt_Avalon_ST_Sink_endofpacket:clock, salt_Avalon_ST_Sink_startofpacket:clock, salt_Avalon_ST_Sink_valid:clock, salt_Avalon_ST_Source_ready:clock]
	signal salt_avalon_mm_slave_writedata_output_wire                   : std_logic_vector(31 downto 0); -- salt_Avalon_MM_Slave_writedata:output -> dut:Avalon_MM_Slave_writedata
	signal salt_avalon_mm_slave_write_output_wire                       : std_logic;                     -- salt_Avalon_MM_Slave_write:output -> dut:Avalon_MM_Slave_write
	signal salt_avalon_st_sink_data_output_wire                         : std_logic_vector(23 downto 0); -- salt_Avalon_ST_Sink_data:output -> dut:Avalon_ST_Sink_data
	signal salt_avalon_st_sink_startofpacket_output_wire                : std_logic;                     -- salt_Avalon_ST_Sink_startofpacket:output -> dut:Avalon_ST_Sink_startofpacket
	signal salt_avalon_st_sink_endofpacket_output_wire                  : std_logic;                     -- salt_Avalon_ST_Sink_endofpacket:output -> dut:Avalon_ST_Sink_endofpacket
	signal salt_avalon_st_sink_valid_output_wire                        : std_logic;                     -- salt_Avalon_ST_Sink_valid:output -> dut:Avalon_ST_Sink_valid
	signal salt_avalon_st_source_ready_output_wire                      : std_logic;                     -- salt_Avalon_ST_Source_ready:output -> dut:Avalon_ST_Source_ready
	signal dut_avalon_st_source_valid_wire                              : std_logic;                     -- dut:Avalon_ST_Source_valid -> capture_Avalon_ST_Source_valid:input
	signal clock_clock_reg_reset_reset                                  : std_logic;                     -- Clock:reg_aclr_out -> [capture_Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col:aclr, capture_Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row:aclr, capture_Add_Frame_Add_Frame_Module_col_counter:aclr, capture_Add_Frame_Add_Frame_Module_frame_in:aclr, capture_Add_Frame_Add_Frame_Module_row_counter:aclr, capture_Add_Frame_Add_Frame_Module_state:aclr, capture_Avalon_ST_Sink_ready:aclr, capture_Avalon_ST_Source_data:aclr, capture_Avalon_ST_Source_endofpacket:aclr, capture_Avalon_ST_Source_startofpacket:aclr, capture_Avalon_ST_Source_valid:aclr]
	signal dut_avalon_st_source_endofpacket_wire                        : std_logic;                     -- dut:Avalon_ST_Source_endofpacket -> capture_Avalon_ST_Source_endofpacket:input
	signal dut_avalon_st_source_startofpacket_wire                      : std_logic;                     -- dut:Avalon_ST_Source_startofpacket -> capture_Avalon_ST_Source_startofpacket:input
	signal dut_avalon_st_sink_ready_wire                                : std_logic;                     -- dut:Avalon_ST_Sink_ready -> capture_Avalon_ST_Sink_ready:input
	signal dut_avalon_st_source_data_wire                               : std_logic_vector(23 downto 0); -- dut:Avalon_ST_Source_data -> capture_Avalon_ST_Source_data:input
	signal dut_add_frame_add_frame_module_row_counter_wire              : std_logic_vector(15 downto 0); -- dut:Add_Frame_Add_Frame_Module_row_counter -> capture_Add_Frame_Add_Frame_Module_row_counter:input
	signal dut_add_frame_add_frame_module_state_wire                    : std_logic_vector(2 downto 0);  -- dut:Add_Frame_Add_Frame_Module_state -> capture_Add_Frame_Add_Frame_Module_state:input
	signal dut_add_frame_add_frame_module_ctrl_decoder_decoder_row_wire : std_logic_vector(15 downto 0); -- dut:Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row -> capture_Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row:input
	signal dut_add_frame_add_frame_module_ctrl_decoder_decoder_col_wire : std_logic_vector(15 downto 0); -- dut:Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col -> capture_Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col:input
	signal dut_add_frame_add_frame_module_frame_in_wire                 : std_logic_vector(0 downto 0);  -- dut:Add_Frame_Add_Frame_Module_frame_in -> capture_Add_Frame_Add_Frame_Module_frame_in:input
	signal dut_add_frame_add_frame_module_col_counter_wire              : std_logic_vector(15 downto 0); -- dut:Add_Frame_Add_Frame_Module_col_counter -> capture_Add_Frame_Add_Frame_Module_col_counter:input
	signal clock_clock_output_reset                                     : std_logic;                     -- Clock:aclr_out -> dut:aclr

begin

	dut : component Add_Frame_GN
		port map (
			Clock                                               => clock_clock_tb_clk,                                           --                                               Clock.clk
			aclr                                                => clock_clock_output_reset,                                     --                                                    .reset
			Avalon_MM_Slave_address                             => salt_avalon_mm_slave_address_output_wire,                     --                             Avalon_MM_Slave_address.wire
			Avalon_ST_Source_valid                              => dut_avalon_st_source_valid_wire,                              --                              Avalon_ST_Source_valid.wire
			Avalon_MM_Slave_writedata                           => salt_avalon_mm_slave_writedata_output_wire,                   --                           Avalon_MM_Slave_writedata.wire
			Avalon_ST_Source_endofpacket                        => dut_avalon_st_source_endofpacket_wire,                        --                        Avalon_ST_Source_endofpacket.wire
			Avalon_ST_Source_startofpacket                      => dut_avalon_st_source_startofpacket_wire,                      --                      Avalon_ST_Source_startofpacket.wire
			Avalon_MM_Slave_write                               => salt_avalon_mm_slave_write_output_wire,                       --                               Avalon_MM_Slave_write.wire
			Avalon_ST_Sink_data                                 => salt_avalon_st_sink_data_output_wire,                         --                                 Avalon_ST_Sink_data.wire
			Avalon_ST_Sink_ready                                => dut_avalon_st_sink_ready_wire,                                --                                Avalon_ST_Sink_ready.wire
			Avalon_ST_Sink_startofpacket                        => salt_avalon_st_sink_startofpacket_output_wire,                --                        Avalon_ST_Sink_startofpacket.wire
			Avalon_ST_Sink_endofpacket                          => salt_avalon_st_sink_endofpacket_output_wire,                  --                          Avalon_ST_Sink_endofpacket.wire
			Avalon_ST_Source_data                               => dut_avalon_st_source_data_wire,                               --                               Avalon_ST_Source_data.wire
			Avalon_ST_Sink_valid                                => salt_avalon_st_sink_valid_output_wire,                        --                                Avalon_ST_Sink_valid.wire
			Add_Frame_Add_Frame_Module_row_counter              => dut_add_frame_add_frame_module_row_counter_wire,              --              Add_Frame_Add_Frame_Module_row_counter.wire
			Add_Frame_Add_Frame_Module_state                    => dut_add_frame_add_frame_module_state_wire,                    --                    Add_Frame_Add_Frame_Module_state.wire
			Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row => dut_add_frame_add_frame_module_ctrl_decoder_decoder_row_wire, -- Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_row.wire
			Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col => dut_add_frame_add_frame_module_ctrl_decoder_decoder_col_wire, -- Add_Frame_Add_Frame_Module_CTRL_DECODER_decoder_col.wire
			Add_Frame_Add_Frame_Module_frame_in                 => dut_add_frame_add_frame_module_frame_in_wire,                 --                 Add_Frame_Add_Frame_Module_frame_in.wire
			Add_Frame_Add_Frame_Module_col_counter              => dut_add_frame_add_frame_module_col_counter_wire,              --              Add_Frame_Add_Frame_Module_col_counter.wire
			Avalon_ST_Source_ready                              => salt_avalon_st_source_ready_output_wire                       --                              Avalon_ST_Source_ready.wire
		);

	clock : component alt_dspbuilder_testbench_clock_GNCGUFKHRR
		generic map (
			SIMULATION_START_CYCLE       => 5,
			RESET_LATENCY                => 0,
			RESET_REGISTER_CASCADE_DEPTH => 0
		)
		port map (
			clock_out    => clock_clock_tb_clk,          --        clock_tb.clk
			tb_aclr      => clock_clock_tb_reset,        --                .reset
			aclr_out     => clock_clock_output_reset,    --    clock_output.reset
			reg_aclr_out => clock_clock_reg_reset_reset  -- clock_reg_reset.reset
		);

	salt_avalon_mm_slave_address : component alt_dspbuilder_testbench_salt_GNUCY2GBID
		generic map (
			XFILE => "Add%5FFrame_Avalon-MM+Slave_address.salt"
		)
		port map (
			clock  => clock_clock_tb_clk,                       -- clock_aclr.clk
			aclr   => clock_clock_tb_reset,                     --           .reset
			output => salt_avalon_mm_slave_address_output_wire  --     output.wire
		);

	salt_avalon_mm_slave_writedata : component alt_dspbuilder_testbench_salt_GN7Z4SHGOK
		generic map (
			XFILE => "Add%5FFrame_Avalon-MM+Slave_writedata.salt"
		)
		port map (
			clock  => clock_clock_tb_clk,                         -- clock_aclr.clk
			aclr   => clock_clock_tb_reset,                       --           .reset
			output => salt_avalon_mm_slave_writedata_output_wire  --     output.wire
		);

	salt_avalon_mm_slave_write : component alt_dspbuilder_testbench_salt_GNDBMPYDND
		generic map (
			XFILE => "Add%5FFrame_Avalon-MM+Slave_write.salt"
		)
		port map (
			clock  => clock_clock_tb_clk,                     -- clock_aclr.clk
			aclr   => clock_clock_tb_reset,                   --           .reset
			output => salt_avalon_mm_slave_write_output_wire  --     output.wire
		);

	salt_avalon_st_sink_data : component alt_dspbuilder_testbench_salt_GNOXVOQUET
		generic map (
			XFILE => "Add%5FFrame_Avalon-ST+Sink_data.salt"
		)
		port map (
			clock  => clock_clock_tb_clk,                   -- clock_aclr.clk
			aclr   => clock_clock_tb_reset,                 --           .reset
			output => salt_avalon_st_sink_data_output_wire  --     output.wire
		);

	salt_avalon_st_sink_startofpacket : component alt_dspbuilder_testbench_salt_GNDBMPYDND
		generic map (
			XFILE => "Add%5FFrame_Avalon-ST+Sink_startofpacket.salt"
		)
		port map (
			clock  => clock_clock_tb_clk,                            -- clock_aclr.clk
			aclr   => clock_clock_tb_reset,                          --           .reset
			output => salt_avalon_st_sink_startofpacket_output_wire  --     output.wire
		);

	salt_avalon_st_sink_endofpacket : component alt_dspbuilder_testbench_salt_GNDBMPYDND
		generic map (
			XFILE => "Add%5FFrame_Avalon-ST+Sink_endofpacket.salt"
		)
		port map (
			clock  => clock_clock_tb_clk,                          -- clock_aclr.clk
			aclr   => clock_clock_tb_reset,                        --           .reset
			output => salt_avalon_st_sink_endofpacket_output_wire  --     output.wire
		);

	salt_avalon_st_sink_valid : component alt_dspbuilder_testbench_salt_GNDBMPYDND
		generic map (
			XFILE => "Add%5FFrame_Avalon-ST+Sink_valid.salt"
		)
		port map (
			clock  => clock_clock_tb_clk,                    -- clock_aclr.clk
			aclr   => clock_clock_tb_reset,                  --           .reset
			output => salt_avalon_st_sink_valid_output_wire  --     output.wire
		);

	salt_avalon_st_source_ready : component alt_dspbuilder_testbench_salt_GNDBMPYDND
		generic map (
			XFILE => "Add%5FFrame_Avalon-ST+Source_ready.salt"
		)
		port map (
			clock  => clock_clock_tb_clk,                      -- clock_aclr.clk
			aclr   => clock_clock_tb_reset,                    --           .reset
			output => salt_avalon_st_source_ready_output_wire  --     output.wire
		);

	capture_avalon_st_source_valid : component alt_dspbuilder_testbench_capture_GNQX2JTRTZ
		generic map (
			XFILE    => "Add%5FFrame_Avalon-ST+Source_valid.capture.msim",
			DSPBTYPE => "BIT [1, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,              -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,     --           .reset
			input => dut_avalon_st_source_valid_wire  --      input.wire
		);

	capture_avalon_st_source_endofpacket : component alt_dspbuilder_testbench_capture_GNQX2JTRTZ
		generic map (
			XFILE    => "Add%5FFrame_Avalon-ST+Source_endofpacket.capture.msim",
			DSPBTYPE => "BIT [1, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,                    -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,           --           .reset
			input => dut_avalon_st_source_endofpacket_wire  --      input.wire
		);

	capture_avalon_st_source_startofpacket : component alt_dspbuilder_testbench_capture_GNQX2JTRTZ
		generic map (
			XFILE    => "Add%5FFrame_Avalon-ST+Source_startofpacket.capture.msim",
			DSPBTYPE => "BIT [1, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,                      -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,             --           .reset
			input => dut_avalon_st_source_startofpacket_wire  --      input.wire
		);

	capture_avalon_st_sink_ready : component alt_dspbuilder_testbench_capture_GNQX2JTRTZ
		generic map (
			XFILE    => "Add%5FFrame_Avalon-ST+Sink_ready.capture.msim",
			DSPBTYPE => "BIT [1, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,            -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,   --           .reset
			input => dut_avalon_st_sink_ready_wire  --      input.wire
		);

	capture_avalon_st_source_data : component alt_dspbuilder_testbench_capture_GNHCRI5YMO
		generic map (
			XFILE    => "Add%5FFrame_Avalon-ST+Source_data.capture.msim",
			DSPBTYPE => "UINT [24, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,             -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,    --           .reset
			input => dut_avalon_st_source_data_wire  --      input.wire
		);

	capture_add_frame_add_frame_module_row_counter : component alt_dspbuilder_testbench_capture_GNAXODEVVW
		generic map (
			XFILE    => "Add%5FFrame_Add+Frame+Module_row%5Fcounter.capture.msim",
			DSPBTYPE => "UINT [16, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,                              -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,                     --           .reset
			input => dut_add_frame_add_frame_module_row_counter_wire  --      input.wire
		);

	capture_add_frame_add_frame_module_state : component alt_dspbuilder_testbench_capture_GN32ABLG7V
		generic map (
			XFILE    => "Add%5FFrame_Add+Frame+Module_state.capture.msim",
			DSPBTYPE => "INT [3, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,                        -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,               --           .reset
			input => dut_add_frame_add_frame_module_state_wire  --      input.wire
		);

	capture_add_frame_add_frame_module_ctrl_decoder_decoder_row : component alt_dspbuilder_testbench_capture_GNAXODEVVW
		generic map (
			XFILE    => "Add%5FFrame_Add+Frame+Module_CTRL%5FDECODER_decoder%5Frow.capture.msim",
			DSPBTYPE => "UINT [16, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,                                           -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,                                  --           .reset
			input => dut_add_frame_add_frame_module_ctrl_decoder_decoder_row_wire  --      input.wire
		);

	capture_add_frame_add_frame_module_ctrl_decoder_decoder_col : component alt_dspbuilder_testbench_capture_GNAXODEVVW
		generic map (
			XFILE    => "Add%5FFrame_Add+Frame+Module_CTRL%5FDECODER_decoder%5Fcol.capture.msim",
			DSPBTYPE => "UINT [16, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,                                           -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,                                  --           .reset
			input => dut_add_frame_add_frame_module_ctrl_decoder_decoder_col_wire  --      input.wire
		);

	capture_add_frame_add_frame_module_frame_in : component alt_dspbuilder_testbench_capture_GNZUHKKGTG
		generic map (
			XFILE    => "Add%5FFrame_Add+Frame+Module_frame%5Fin.capture.msim",
			DSPBTYPE => "INT [1, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,                           -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,                  --           .reset
			input => dut_add_frame_add_frame_module_frame_in_wire  --      input.wire
		);

	capture_add_frame_add_frame_module_col_counter : component alt_dspbuilder_testbench_capture_GNAXODEVVW
		generic map (
			XFILE    => "Add%5FFrame_Add+Frame+Module_col%5Fcounter.capture.msim",
			DSPBTYPE => "UINT [16, 0]"
		)
		port map (
			clock => clock_clock_tb_clk,                              -- clock_aclr.clk
			aclr  => clock_clock_reg_reset_reset,                     --           .reset
			input => dut_add_frame_add_frame_module_col_counter_wire  --      input.wire
		);

end architecture rtl; -- of tb_Add_Frame
