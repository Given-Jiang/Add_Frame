library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_multiplexer_GNRF25WCVA is
	generic		( 			HDLTYPE : string := "STD_LOGIC_VECTOR";
			use_one_hot_select_bus : natural := 1;
			width : positive := 24;
			pipeline : natural := 0;
			number_inputs : natural := 3);

	port(
		clock : in std_logic;
		aclr : in std_logic;
		sel : in std_logic_vector(2 downto 0);
		result : out std_logic_vector(23 downto 0);
		ena : in std_logic;
		user_aclr : in std_logic;
		in0 : in std_logic_vector(23 downto 0);
		in1 : in std_logic_vector(23 downto 0);
		in2 : in std_logic_vector(23 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_multiplexer_GNRF25WCVA is 

	signal data_muxin		:	std_logic_vector(71 downto 0);
	

Begin

data_muxin		<=	 in2 &  in1 &  in0 ;

nto1Multiplexeri : alt_dspbuilder_sMuxAltr generic map (
				lpm_pipeline =>0,
				lpm_size => 3,
				lpm_widths => 3  ,
				lpm_width => 24 ,
				SelOneHot => 1 )
		port map (
				clock		=>	clock,
				ena   		=>	ena,
				user_aclr	=>	user_aclr,
				aclr		=>	aclr,
				data   		=>	data_muxin,
				sel   		=>	sel,
				result		=>	 result);


end architecture;









