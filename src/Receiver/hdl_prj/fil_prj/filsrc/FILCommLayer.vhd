
-- ----------------------------------------------
-- File Name: FILCommLayer.vhd
-- Created:   28-Dec-2020 21:13:00
-- Copyright  2020 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY FILCommLayer IS 
PORT (
      clk                             : IN  std_logic;
      reset                           : IN  std_logic;
      txclk_en                        : IN  std_logic;
      rxclk_en                        : IN  std_logic;
      dut_dinrdy                      : IN  std_logic;
      dut_dout                        : IN  std_logic_vector(7 DOWNTO 0);
      dut_doutvld                     : IN  std_logic;
      CLK125                          : IN  std_logic;
      dut_rst                         : OUT std_logic;
      dut_din                         : OUT std_logic_vector(7 DOWNTO 0);
      dut_dinvld                      : OUT std_logic;
      simcycle                        : OUT std_logic_vector(15 DOWNTO 0);
      dut_doutrdy                     : OUT std_logic
);
END FILCommLayer;

ARCHITECTURE rtl of FILCommLayer IS

COMPONENT MWAJTAG IS 
PORT (
      TxDataLength                    : IN  std_logic_vector(12 DOWNTO 0);
      TxData                          : IN  std_logic_vector(7 DOWNTO 0);
      TxDataValid                     : IN  std_logic;
      CLK125                          : IN  std_logic;
      TxEOP                           : IN  std_logic;
      RxCRCBad                        : OUT std_logic;
      RxData                          : OUT std_logic_vector(7 DOWNTO 0);
      RxEOP                           : OUT std_logic;
      RxDataValid                     : OUT std_logic;
      RxCRCOK                         : OUT std_logic;
      TxReady                         : OUT std_logic
);
END COMPONENT;

COMPONENT FILPktProc IS 
GENERIC (VERSION: std_logic_vector(15 DOWNTO 0) := X"0200"
);
PORT (
      rxclk                           : IN  std_logic;
      txclk                           : IN  std_logic;
      rxclk_en                        : IN  std_logic;
      txclk_en                        : IN  std_logic;
      RxData                          : IN  std_logic_vector(7 DOWNTO 0);
      RxDataValid                     : IN  std_logic;
      RxEOP                           : IN  std_logic;
      RxCRCOK                         : IN  std_logic;
      RxCRCBad                        : IN  std_logic;
      RxDstPort                       : IN  std_logic_vector(1 DOWNTO 0);
      TxReady                         : IN  std_logic;
      clk                             : IN  std_logic;
      rst                             : IN  std_logic;
      dut_dinrdy                      : IN  std_logic;
      dut_dout                        : IN  std_logic_vector(7 DOWNTO 0);
      dut_doutvld                     : IN  std_logic;
      RxReset                         : OUT std_logic;
      TxData                          : OUT std_logic_vector(7 DOWNTO 0);
      TxDataValid                     : OUT std_logic;
      TxEOP                           : OUT std_logic;
      TxReset                         : OUT std_logic;
      TxDataLength                    : OUT std_logic_vector(12 DOWNTO 0);
      TxSrcPort                       : OUT std_logic_vector(1 DOWNTO 0);
      dut_rst                         : OUT std_logic;
      dut_din                         : OUT std_logic_vector(7 DOWNTO 0);
      dut_dinvld                      : OUT std_logic;
      simcycle                        : OUT std_logic_vector(15 DOWNTO 0);
      dut_doutrdy                     : OUT std_logic
);
END COMPONENT;

  SIGNAL mac_rxdata                       : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL mac_rxvld                        : std_logic; -- boolean
  SIGNAL mac_rxeop                        : std_logic; -- boolean
  SIGNAL mac_rxcrcok                      : std_logic; -- boolean
  SIGNAL mac_rxcrcbad                     : std_logic; -- boolean
  SIGNAL mac_rxdstport                    : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL mac_rxreset                      : std_logic; -- boolean
  SIGNAL mac_txreset                      : std_logic; -- boolean
  SIGNAL mac_txdata                       : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL mac_txvld                        : std_logic; -- boolean
  SIGNAL mac_txeop                        : std_logic; -- boolean
  SIGNAL mac_txrdy                        : std_logic; -- boolean
  SIGNAL mac_txdatalength                 : std_logic_vector(12 DOWNTO 0); -- std13
  SIGNAL mac_txsrcport                    : std_logic_vector(1 DOWNTO 0); -- std2

BEGIN

u_MWAJTAG: MWAJTAG 
PORT MAP(
        RxCRCBad             => mac_rxcrcbad,
        TxDataLength         => mac_txdatalength,
        RxData               => mac_rxdata,
        TxData               => mac_txdata,
        RxEOP                => mac_rxeop,
        RxDataValid          => mac_rxvld,
        TxDataValid          => mac_txvld,
        RxCRCOK              => mac_rxcrcok,
        CLK125               => CLK125,
        TxEOP                => mac_txeop,
        TxReady              => mac_txrdy
);

u_FILPktProc: FILPktProc 
GENERIC MAP (VERSION => X"0200"
)
PORT MAP(
        rxclk                => CLK125,
        txclk                => CLK125,
        rxclk_en             => rxclk_en,
        txclk_en             => txclk_en,
        RxData               => mac_rxdata,
        RxDataValid          => mac_rxvld,
        RxEOP                => mac_rxeop,
        RxCRCOK              => mac_rxcrcok,
        RxCRCBad             => mac_rxcrcbad,
        RxDstPort            => mac_rxdstport,
        RxReset              => mac_rxreset,
        TxData               => mac_txdata,
        TxDataValid          => mac_txvld,
        TxEOP                => mac_txeop,
        TxReady              => mac_txrdy,
        TxReset              => mac_txreset,
        TxDataLength         => mac_txdatalength,
        TxSrcPort            => mac_txsrcport,
        clk                  => clk,
        rst                  => reset,
        dut_rst              => dut_rst,
        dut_din              => dut_din,
        dut_dinvld           => dut_dinvld,
        dut_dinrdy           => dut_dinrdy,
        simcycle             => simcycle,
        dut_dout             => dut_dout,
        dut_doutvld          => dut_doutvld,
        dut_doutrdy          => dut_doutrdy
);


END;
