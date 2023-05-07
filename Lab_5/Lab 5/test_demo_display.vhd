library ieee;
use ieee.std_logic_1164.all;

entity test_demo_display is
end test_demo_display;

architecture test of test_demo_display is
  component demo_display is
    port ( RESET, clk, rstb: in std_logic;
           leds : out std_logic_vector (9 downto 0));
  end component ;
  -- Test signals
  signal clk, rstb: std_logic := '1';
  signal leds_out: std_logic_vector (9 downto 0);
  signal reset: std_logic;
begin
  dds0 : demo_display port map (reset, clk, rstb, leds_out);
  clk <= not clk after 0.5 ns; -- for clock_50 set it to after 0.02s
  rstb <= '0', '1' after 0.7 ns;
  reset <= '0', '1' after 1.5 ns, '0' after 3 ns;
end test;