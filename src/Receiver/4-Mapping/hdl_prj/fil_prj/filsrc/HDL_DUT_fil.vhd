
-- ----------------------------------------------
-- File Name: HDL_DUT_fil.vhd
-- Created:   26-Dec-2020 16:06:37
-- Copyright  2020 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


-- Required Xilinx Library
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

LIBRARY UNISIM;
USE UNISIM.VComponents.all;

ENTITY HDL_DUT_fil IS 
PORT (
      sysclk                          : IN  std_logic;
      sysrst                          : IN  std_logic
);
END HDL_DUT_fil;

ARCHITECTURE rtl of HDL_DUT_fil IS

COMPONENT clk_wiz_0 IS 
PORT (
      clk_in1                         : IN  std_logic;
      reset                           : IN  std_logic;
      locked                          : OUT std_logic;
      clk_out1                        : OUT std_logic
);
END COMPONENT;

COMPONENT BSCANE2 IS 
PORT (
      TDO                             : IN  std_logic;
      TCK                             : OUT std_logic;
      TDI                             : OUT std_logic;
      TMS                             : OUT std_logic;
      UPDATE                          : OUT std_logic;
      CAPTURE                         : OUT std_logic;
      RESET                           : OUT std_logic;
      DRCK                            : OUT std_logic;
      RUNTEST                         : OUT std_logic;
      SEL                             : OUT std_logic;
      SHIFT                           : OUT std_logic
);
END COMPONENT;

COMPONENT jtag_mac IS 
PORT (
      chif_clk                        : IN  std_logic;
      sys_rst                         : IN  std_logic;
      tck                             : IN  std_logic;
      tdi                             : IN  std_logic;
      chif_dout                       : IN  std_logic_vector(7 DOWNTO 0);
      chif_din_ready                  : IN  std_logic;
      chif_dout_valid                 : IN  std_logic;
      chif_simcycle                   : OUT std_logic_vector(15 DOWNTO 0);
      chif_reset                      : OUT std_logic;
      chif_din                        : OUT std_logic_vector(7 DOWNTO 0);
      chif_din_valid                  : OUT std_logic;
      chif_dout_ready                 : OUT std_logic;
      tdo                             : OUT std_logic
);
END COMPONENT;

COMPONENT mwfil_chiftop IS 
PORT (
      clk                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(7 DOWNTO 0);
      din_valid                       : IN  std_logic;
      dout_ready                      : IN  std_logic;
      simcycle                        : IN  std_logic_vector(15 DOWNTO 0);
      din_ready                       : OUT std_logic;
      dout                            : OUT std_logic_vector(7 DOWNTO 0);
      dout_valid                      : OUT std_logic
);
END COMPONENT;

  SIGNAL din                              : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL din_valid                        : std_logic; -- boolean
  SIGNAL din_ready                        : std_logic; -- boolean
  SIGNAL dout                             : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL dout_valid                       : std_logic; -- boolean
  SIGNAL dout_ready                       : std_logic; -- boolean
  SIGNAL simcycle                         : std_logic_vector(15 DOWNTO 0); -- std16
  SIGNAL dutClk                           : std_logic; -- boolean
  SIGNAL chif_reset                       : std_logic; -- boolean
  SIGNAL locked                           : std_logic; -- boolean
  SIGNAL mac_reset                        : std_logic; -- boolean
  SIGNAL CAPTURE                          : std_logic; -- boolean
  SIGNAL DRCK                             : std_logic; -- boolean
  SIGNAL RESET                            : std_logic; -- boolean
  SIGNAL RUNTEST                          : std_logic; -- boolean
  SIGNAL SEL                              : std_logic; -- boolean
  SIGNAL SHIFT                            : std_logic; -- boolean
  SIGNAL TCK                              : std_logic; -- boolean
  SIGNAL TDI                              : std_logic; -- boolean
  SIGNAL TMS                              : std_logic; -- boolean
  SIGNAL UPDATE                           : std_logic; -- boolean
  SIGNAL TDO                              : std_logic; -- boolean
  SIGNAL dcm_reset                        : std_logic; -- boolean
  SIGNAL dut_din                          : std_logic_vector(63 DOWNTO 0); -- std64
  SIGNAL dut_dout                         : std_logic_vector(95 DOWNTO 0); -- std96
  SIGNAL dut_clkenb                       : std_logic; -- boolean

BEGIN

u_clk_wiz_0: clk_wiz_0 
PORT MAP(
        clk_in1              => sysclk,
        locked               => locked,
        reset                => dcm_reset,
        clk_out1             => dutClk
);

u_BSCANE2: BSCANE2 
PORT MAP(
        TCK                  => TCK,
        TDI                  => TDI,
        TMS                  => TMS,
        UPDATE               => UPDATE,
        TDO                  => TDO,
        CAPTURE              => CAPTURE,
        RESET                => RESET,
        DRCK                 => DRCK,
        RUNTEST              => RUNTEST,
        SEL                  => SEL,
        SHIFT                => SHIFT
);

u_jtag_mac: jtag_mac 
PORT MAP(
        chif_simcycle        => simcycle,
        chif_clk             => dutClk,
        sys_rst              => mac_reset,
        chif_reset           => chif_reset,
        tck                  => TCK,
        tdi                  => TDI,
        chif_din             => din,
        chif_dout            => dout,
        chif_din_valid       => din_valid,
        chif_dout_ready      => dout_ready,
        chif_din_ready       => din_ready,
        chif_dout_valid      => dout_valid,
        tdo                  => TDO
);

u_mwfil_chiftop: mwfil_chiftop 
PORT MAP(
        clk                  => dutClk,
        reset                => chif_reset,
        din                  => din,
        din_valid            => din_valid,
        din_ready            => din_ready,
        dout                 => dout,
        dout_valid           => dout_valid,
        dout_ready           => dout_ready,
        simcycle             => simcycle
);

mac_reset <=  NOT locked;
dcm_reset <= sysrst;


END;
