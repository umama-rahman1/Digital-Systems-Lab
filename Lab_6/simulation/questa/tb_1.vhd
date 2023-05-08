LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY tb_1  IS 
END ; 
 
ARCHITECTURE tb_1_arch OF tb_1 IS
  SIGNAL HEX3   :  std_logic_vector (6 downto 0)  ; 
  SIGNAL CLOCK_50   :  STD_LOGIC  ; 
  SIGNAL HEX0   :  std_logic_vector (6 downto 0)  ; 
  SIGNAL HEX4   :  std_logic_vector (6 downto 0)  ; 
  SIGNAL KEY   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL enb   :  STD_LOGIC  ; 
  SIGNAL HEX1   :  std_logic_vector (6 downto 0)  ; 
  SIGNAL HEX5   :  std_logic_vector (6 downto 0)  ; 
  SIGNAL HEX2   :  std_logic_vector (6 downto 0)  ; 
  COMPONENT tb_counter26  
    PORT ( 
      HEX3  : out std_logic_vector (6 downto 0) ; 
      CLOCK_50  : in STD_LOGIC ; 
      HEX0  : out std_logic_vector (6 downto 0) ; 
      HEX4  : out std_logic_vector (6 downto 0) ; 
      KEY  : in std_logic_vector (3 downto 0) ; 
      enb  : in STD_LOGIC ; 
      HEX1  : out std_logic_vector (6 downto 0) ; 
      HEX5  : out std_logic_vector (6 downto 0) ; 
      HEX2  : out std_logic_vector (6 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : tb_counter26  
    PORT MAP ( 
      HEX3   => HEX3  ,
      CLOCK_50   => CLOCK_50  ,
      HEX0   => HEX0  ,
      HEX4   => HEX4  ,
      KEY   => KEY  ,
      enb   => enb  ,
      HEX1   => HEX1  ,
      HEX5   => HEX5  ,
      HEX2   => HEX2   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 1 us, Period = 1 ns
  Process
	Begin
	 CLOCK_50  <= '0'  ;
	wait for 500 ps ;
-- 500 ps, single loop till start period.
	 CLOCK_50  <= '1'  ;
	wait for 500 ps ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 us, Period = 0 ps
  Process
	Begin
	 enb  <= '1'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
END;
