library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_multiplexer_GNHHROOGAI is
	generic		( 			HDLTYPE : string := "STD_LOGIC_VECTOR";
			use_one_hot_select_bus : natural := 0;
			width : positive := 24;
			pipeline : natural := 0;
			number_inputs : natural := 5);

	port(
		clock : in std_logic;
		aclr : in std_logic;
		sel : in std_logic_vector(2 downto 0);
		result : out std_logic_vector(23 downto 0);
		ena : in std_logic;
		user_aclr : in std_logic;
		in0 : in std_logic_vector(23 downto 0);
		in1 : in std_logic_vector(23 downto 0);
		in2 : in std_logic_vector(23 downto 0);
		in3 : in std_logic_vector(23 downto 0);
		in4 : in std_logic_vector(23 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_multiplexer_GNHHROOGAI is 

	signal data_muxin		:	std_logic_vector(119 downto 0);
	

Begin

data_muxin		<=	 in4 &  in3 &  in2 &  in1 &  in0 ;

nto1Multiplexeri : alt_dspbuilder_sMuxAltr generic map (
				lpm_pipeline =>0,
				lpm_size => 5,
				lpm_widths => 3  ,
				lpm_width => 24 ,
				SelOneHot => 0 )
		port map (
				clock		=>	clock,
				ena   		=>	ena,
				user_aclr	=>	user_aclr,
				aclr		=>	aclr,
				data   		=>	data_muxin,
				sel   		=>	sel,
				result		=>	 result);


end architecture;









