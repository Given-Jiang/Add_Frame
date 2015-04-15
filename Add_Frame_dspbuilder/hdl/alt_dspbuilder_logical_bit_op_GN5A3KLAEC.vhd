library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_logical_bit_op_GN5A3KLAEC is
	generic		( 			LogicalOp : string := "AltAND";
			number_inputs : positive := 3);

	port(
		result : out std_logic;
		data0 : in std_logic;
		data1 : in std_logic;
		data2 : in std_logic);		
end entity;

architecture rtl of alt_dspbuilder_logical_bit_op_GN5A3KLAEC is 

Begin

-- Logical Bit Operation - Simulink Block "LogicalBitOperator"
LogicalBitOperatori : alt_dspbuilder_SBitLogical	generic map (
				LPM_WIDTH      => 3,
				LOP            => AltAND)
			port map (
									dataa(0) => data0,
									dataa(1) => data1,
									dataa(2) => data2,
								result => result);



end architecture;