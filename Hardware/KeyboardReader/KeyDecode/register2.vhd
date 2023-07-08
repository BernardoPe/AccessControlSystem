LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY register2 is
PORT( I : in std_logic_vector(1 downto 0);
		EN : in STD_LOGIC;
		RST : in std_logic;
		CLK : IN STD_LOGIC;
		Q : out std_logic_vector(1 downto 0)
		);	
end register2;

ARCHITECTURE logicregister OF register2 is
		
COMPONENT FFD
PORT(	CLK : in std_logic;
		RESET : in STD_LOGIC;
		SET : in std_logic;
		D : IN STD_LOGIC;
		EN : IN STD_LOGIC;
		Q : out std_logic
		);
end component; 	
BEGIN

FF0 : FFD port map(
	CLK => CLK,
	EN => EN,
	D => I(0),
	Q => Q(0),
	RESET => RST,
	SET => '0'
	
);

FF1 : FFD port map(
	CLK => CLK, 
	EN => EN,
	D => I(1),
	Q => Q(1),
	RESET => RST, 
	SET => '0'
);

END logicregister;