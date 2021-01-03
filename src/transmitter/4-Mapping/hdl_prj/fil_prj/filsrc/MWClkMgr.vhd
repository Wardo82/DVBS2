
-- ----------------------------------------------
-- File Name: MWClkMgr.vhd
-- Created:   03-Jan-2021 10:47:35
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

 LIBRARY altera_mf;
 USE altera_mf.altera_mf_components.all;
 USE altera_mf.all;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY MWClkMgr IS 
PORT (
      CLK_IN                          : IN  std_logic;
      RXCLK_IN                        : IN  std_logic;
      RESET_IN                        : IN  std_logic;
      TXCLK                           : OUT std_logic;
      MACTXCLK                        : OUT std_logic;
      MACRXCLK                        : OUT std_logic;
      RESET_OUT                       : OUT std_logic;
      DUTCLK                          : OUT std_logic
);
END MWClkMgr;

ARCHITECTURE rtl of MWClkMgr IS

COMPONENT altpll IS 
GENERIC (width_clock: natural := 5;
bandwidth_type: string := "AUTO";
clk0_divide_by: natural;
clk0_duty_cycle: natural;
clk0_multiply_by: natural;
clk0_phase_shift: string;
compensate_clock: string := "CLK0";
inclk0_input_frequency: natural;
intended_devcie_family: string := "NONE";
lpm_hint: string := "CBX_MODULE_PREFIX=clockmodule";
lpm_type: string := "altpll";
operation_mode: string := "NORMAL";
pll_type: string := "AUTO";
port_activeclock: string := "PORT_UNUSED";
port_areset: string := "PORT_USED";
port_clkbad0: string := "PORT_UNUSED";
port_clkbad1: string := "PORT_UNUSED";
port_clkloss: string := "PORT_UNUSED";
port_clkswitch: string := "PORT_UNUSED";
port_configupdate: string := "PORT_UNUSED";
port_fbin: string := "PORT_UNUSED";
port_inclk0: string := "PORT_USED";
port_inclk1: string := "PORT_UNUSED";
port_locked: string := "PORT_USED";
port_pfdena: string := "PORT_UNUSED";
port_phasecounterselect: string := "PORT_UNUSED";
port_phasedone: string := "PORT_UNUSED";
port_phasestep: string := "PORT_UNUSED";
port_phaseupdown: string := "PORT_UNUSED";
port_pllena: string := "PORT_UNUSED";
port_clk0: string := "PORT_USED";
port_clk1: string := "PORT_UNUSED";
port_clk2: string := "PORT_UNUSED";
port_clk3: string := "PORT_UNUSED";
port_clk4: string := "PORT_UNUSED";
port_clk5: string := "PORT_UNUSED";
port_clenak0: string := "PORT_UNUSED";
port_clkena1: string := "PORT_UNUSED";
port_clkena2: string := "PORT_UNUSED";
port_clkena3: string := "PORT_UNUSED";
port_clkena4: string := "PORT_UNUSED";
port_clkena5: string := "PORT_UNUSED";
port_extclk0: string := "PORT_UNUSED";
port_extclk1: string := "PORT_UNUSED";
port_extclk2: string := "PORT_UNUSED";
port_extclk3: string := "PORT_UNUSED";
clk1_divide_by: natural;
clk1_duty_cycle: natural;
clk1_multiply_by: natural;
clk1_phase_shift: string;
clk2_divide_by: natural;
clk2_duty_cycle: natural;
clk2_multiply_by: natural;
clk2_phase_shift: string
);
PORT (
      inclk                           : IN  std_logic_vector(1 DOWNTO 0);
      areset                          : IN  std_logic;
      locked                          : OUT std_logic;
      clk                             : OUT std_logic_vector(4 DOWNTO 0)
);
END COMPONENT;

  SIGNAL clk5                             : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL clk1                             : std_logic; -- boolean
  SIGNAL clk2                             : std_logic; -- boolean
  SIGNAL clk3                             : std_logic; -- boolean
  SIGNAL LOCKED                           : std_logic; -- boolean
  SIGNAL notLocked                        : std_logic; -- boolean
  SIGNAL clkin_vector                     : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL clkin_tmp                        : std_logic; -- boolean
  SIGNAL zero                             : std_logic; -- boolean
  SIGNAL tmp                              : std_logic; -- boolean

BEGIN

u_dcm: altpll 
GENERIC MAP (width_clock => 5,
bandwidth_type => "AUTO",
clk0_divide_by =>     2,
clk0_duty_cycle => 50,
clk0_multiply_by =>     1,
clk0_phase_shift => "0",
compensate_clock => "CLK0",
inclk0_input_frequency =>  20000,
intended_devcie_family => "NONE",
lpm_hint => "CBX_MODULE_PREFIX=clockmodule",
lpm_type => "altpll",
operation_mode => "NORMAL",
pll_type => "AUTO",
port_activeclock => "PORT_UNUSED",
port_areset => "PORT_USED",
port_clkbad0 => "PORT_UNUSED",
port_clkbad1 => "PORT_UNUSED",
port_clkloss => "PORT_UNUSED",
port_clkswitch => "PORT_UNUSED",
port_configupdate => "PORT_UNUSED",
port_fbin => "PORT_UNUSED",
port_inclk0 => "PORT_USED",
port_inclk1 => "PORT_UNUSED",
port_locked => "PORT_USED",
port_pfdena => "PORT_UNUSED",
port_phasecounterselect => "PORT_UNUSED",
port_phasedone => "PORT_UNUSED",
port_phasestep => "PORT_UNUSED",
port_phaseupdown => "PORT_UNUSED",
port_pllena => "PORT_UNUSED",
port_clk0 => "PORT_USED",
port_clk1 => "PORT_USED",
port_clk2 => "PORT_USED",
port_clk3 => "PORT_UNUSED",
port_clk4 => "PORT_UNUSED",
port_clk5 => "PORT_UNUSED",
port_clenak0 => "PORT_UNUSED",
port_clkena1 => "PORT_UNUSED",
port_clkena2 => "PORT_UNUSED",
port_clkena3 => "PORT_UNUSED",
port_clkena4 => "PORT_UNUSED",
port_clkena5 => "PORT_UNUSED",
port_extclk0 => "PORT_UNUSED",
port_extclk1 => "PORT_UNUSED",
port_extclk2 => "PORT_UNUSED",
port_extclk3 => "PORT_UNUSED",
clk1_divide_by =>     2,
clk1_duty_cycle => 50,
clk1_multiply_by =>     5,
clk1_phase_shift => "0",
clk2_divide_by =>     2,
clk2_duty_cycle => 50,
clk2_multiply_by =>     5,
clk2_phase_shift => "0"
)
PORT MAP(
        inclk                => clkin_vector,
        locked               => LOCKED,
        clk                  => clk5,
        areset               => RESET_IN
);

DUTCLK <= clk5(0);
MACTXCLK <= clk5(1);
TXCLK <= clk5(2);
RESET_OUT <=  NOT LOCKED;
clkin_vector <= zero & clkin_tmp;
clkin_tmp <= CLK_IN;

zero <= '0';
MACRXCLK <= RXCLK_IN;


END;
