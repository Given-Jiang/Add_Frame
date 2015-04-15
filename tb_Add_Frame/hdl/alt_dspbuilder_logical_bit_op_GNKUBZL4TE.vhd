library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_logical_bit_op_GNKUBZL4TE is
	generic		( 			LogicalOp : string := "AltNOT";
			number_inputs : positive := 1);

	port(
		result : out std_logic;
		data0 : in std_logic);		
end entity;

architecture rtl of alt_dspbuilder_logical_bit_op_GNKUBZL4TE is 

Begin

-- Logical Bit Operation - Simulink Block "LogicalBitOperator"
LogicalBitOperatori : alt_dspbuilder_SBitLogical	generic map (
				LPM_WIDTH      => 1,
				LOP            => AltNOT)
			port map (
									dataa(0) => data0,
								result => result);



end architecture;