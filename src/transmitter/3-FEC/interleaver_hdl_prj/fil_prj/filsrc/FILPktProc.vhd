
-- ----------------------------------------------
-- File Name: FILPktProc.vhd
-- Created:   03-Jan-2021 15:43:33
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FILPktProc is
generic (VERSION: std_logic_vector(15 DOWNTO 0));
port(
    -- MAC rx
    rxclk                           : IN  std_logic;
    rxclk_en                        : IN  std_logic;
    RxData                          : IN  std_logic_vector(7 DOWNTO 0);
    RxDataValid                     : IN  std_logic;
    RxEOP                           : IN  std_logic;
    RxCRCOK                         : IN  std_logic;
    RxCRCBad                        : IN  std_logic;
    RxDstPort                       : IN  std_logic_vector(1 DOWNTO 0); 
    RxReset                         : OUT std_logic;
    -- MAX tx
    txclk                           : IN  std_logic;
    txclk_en                        : IN  std_logic;
    TxData                          : OUT std_logic_vector(7 DOWNTO 0);
    TxDataValid                     : OUT std_logic;
    TxEOP                           : OUT std_logic;
    TxDataLength                    : OUT std_logic_vector(12 DOWNTO 0);
    TxSrcPort                       : OUT std_logic_vector(1 DOWNTO 0);
    TxReady                         : IN  std_logic;
    TxReset                         : OUT std_logic;
    -- DUT clk, sysrst and DUTrst
    clk                             : IN  std_logic;
    rst                             : IN  std_logic;
    dut_rst                         : OUT std_logic;
    -- DUT in
    dut_din                         : OUT std_logic_vector(7 DOWNTO 0);
    dut_dinvld                      : OUT std_logic;
    dut_dinrdy                      : IN  std_logic;
    simcycle                        : OUT std_logic_vector(15 DOWNTO 0);
    -- DUT out
    dut_dout                        : IN  std_logic_vector(7 DOWNTO 0);
    dut_doutvld                     : IN  std_logic;    
    dut_doutrdy                     : OUT std_logic
    );
end FILPktProc;

architecture rtl of FILPktProc is

  component  FILUDPCRC
  generic(BUFFERADDRWIDTH: integer);
  port(
        clk        : in  std_logic;
        clk_en     : in  std_logic;
        reset      : in  std_logic;
        ---------------------------------------------------------------------
        dataIn     : in std_logic_vector(7 downto 0);
        dataVldIn  : in std_logic;
        EOPIn      : in std_logic;
        CRCOK      : in std_logic;
        CRCBad     : in std_logic;
        ---------------------------------------------------------------------
        dataOut    : out std_logic_vector(7 downto 0);
        dataVldOut : out std_logic;
        EOPOut     : out std_logic
        );
  end component;   


  component FILPktMUX
  port(
        clk        : in  std_logic;
        reset      : in  std_logic;
        -----------------------------------------------------------------------
        dataIn     : in std_logic_vector(7 downto 0);
        dataVldIn  : in std_logic;
        EOPIn      : in std_logic;
        -----------------------------------------------------------------------
        dataOut    : out std_logic_vector(7 downto 0);
        dataVldOut : out std_logic;
        dataEOPOut : out std_logic;
        cmdOut     : out std_logic_vector(7 downto 0);
        cmdVldOut  : out std_logic;
        cmdEOPOut  : out std_logic        
        );
  end component;
  
  component FILCmdProc
  generic (VERSION : std_logic_vector(15 DOWNTO 0));
  port(
      rxclk         : in  std_logic;
      txclk         : in  std_logic;
      dutclk        : in  std_logic;      
      reset         : in  std_logic;
      cmd           : in  std_logic_vector(7 downto 0);
      cmdVld        : in  std_logic;
      cmdEOP        : in  std_logic;
      statusReady   : in  std_logic;
      status        : out std_logic_vector(7 downto 0);
      statusVld     : out std_logic;
      statusEOP     : out std_logic;
      rxrst         : out std_logic;
      txrst         : out std_logic;
      dutrst        : out std_logic
      );
  end component;

  component FILDataProc
  port(
      rxclk         : in  std_logic;
      txclk         : in  std_logic;
      dutclk        : in  std_logic;
      rxrst         : in  std_logic;
      txrst         : in  std_logic;
      dutrst        : in  std_logic;      
      -- from MAC
      rxdata        : in  std_logic_vector(7 downto 0);
      rxvld         : in  std_logic;
      rxeop         : in  std_logic;
      -- to MAC
      txdata        : out  std_logic_vector(7 downto 0);
      txvld         : out  std_logic;
      txeop         : out  std_logic;
      txrdy         : in std_logic;
      -- DUT in
      dut_din       : OUT std_logic_vector(7 DOWNTO 0);
      dut_dinvld    : OUT std_logic;
      dut_dinrdy    : IN  std_logic;
      simcycle      : OUT std_logic_vector(15 DOWNTO 0);
      -- DUT out
      dut_dout      : IN  std_logic_vector(7 DOWNTO 0);
      dut_doutvld   : IN  std_logic;    
      dut_doutrdy   : OUT std_logic
      );
  end component;  
  
  component MWUDPPKTBuilder
  generic ( DATA_BUF_WIDTH           : integer;
            DATA_PKTINFO_BUF_WIDTH   : integer;
            STATUS_BUF_WIDTH         : integer;
            STATUS_PKTINFO_BUF_WIDTH : integer
           );
  port(
        clk        : in  std_logic;
        clk_en     : in  std_logic;
        reset      : in  std_logic;
        ------------------------------------------
        dataIn     : in  std_logic_vector(7 downto 0);
        dataVld    : in  std_logic;
        dataEOP    : in  std_logic;
        statusIn   : in  std_logic_vector(7 downto 0);
        statusVld  : in  std_logic;
        statusEOP  : in  std_logic;
        statusPort : in  std_logic_vector(1 downto 0);
        dataReady  : out std_logic;
        statusReady: out std_logic;
        ------------------------------------------
        txReady    : in  std_logic; -- from Tx MAC, MAC is ready for tx
        txRequest  : out std_logic; -- to Tx MAC, pkt builder is ready for tx
        pktData    : out std_logic_vector(7 downto 0);
        pktDataVld : out std_logic;
        pktPort    : out std_logic_vector(1 downto 0);
        pktLen     : out std_logic_vector(12 downto 0)
        );
  end component;
  
  signal rxrst                     : std_logic;
  signal txrst                     : std_logic;
  signal dutrst                    : std_logic;
  signal pktmux_dataIn             : std_logic_vector(7 downto 0);
  signal pktmux_dataVldIn          : std_logic;
  signal pktmux_EOPIn              : std_logic;
  signal pktmux_cmd                : std_logic_vector(7 downto 0);
  signal pktmux_cmdVld             : std_logic;
  signal pktmux_cmdEOP             : std_logic;
  signal pktmux_data               : std_logic_vector(7 downto 0);
  signal pktmux_dataVld            : std_logic;
  signal pktmux_dataEOP            : std_logic;
  signal statusReady               : std_logic;
  signal dataReady                 : std_logic;
  signal pktbld_status             : std_logic_vector(7 downto 0);
  signal pktbld_statusVld          : std_logic;
  signal pktbld_statusEOP          : std_logic;
  signal pktbld_data               : std_logic_vector(7 downto 0);
  signal pktbld_dataVld            : std_logic;
  signal pktbld_dataEOP            : std_logic;  
  
  
  
begin  
  
  u_FILUDPCRC: FILUDPCRC
  generic map (BUFFERADDRWIDTH => 11)
  port map(
           clk        =>  rxclk              ,
           clk_en     =>  rxclk_en           ,
           reset      =>  rxrst              ,
           dataIn     =>  RxData             ,   
           dataVldIn  =>  RxDataValid        ,   
           EOPIn      =>  RxEOP              ,
           CRCOK      =>  RxCRCOK            ,
           CRCBad     =>  RxCRCBad           ,
           dataOut    =>  pktmux_dataIn      ,
           dataVldOut =>  pktmux_dataVldIn   ,
           EOPOut     =>  pktmux_EOPIn
          );

  u_FILPktMUX: FILPktMUX
  port map(
          clk        => rxclk                , 
          reset      => rxrst                ,
          dataIn     => pktmux_dataIn        ,
          dataVldIn  => pktmux_dataVldIn     ,
          EOPIn      => pktmux_EOPIn         ,
          dataOut    => pktmux_data          ,
          dataVldOut => pktmux_dataVld       ,
          dataEOPOut => pktmux_dataEOP       ,
          cmdOut     => pktmux_cmd           ,
          cmdVldOut  => pktmux_cmdVld        ,
          cmdEOPOut  => pktmux_cmdEOP
          );

  u_FILCmdProc: FILCmdProc
  generic map ( VERSION => VERSION)
  port map(
           rxclk          => rxclk            ,
           txclk          => txclk            ,
           dutclk         => clk              ,
           reset          => rst              ,
           cmd            => pktmux_cmd       ,
           cmdVld         => pktmux_cmdVld    ,
           cmdEOP         => pktmux_cmdEOP    ,
           statusReady    => statusReady      ,
           status         => pktbld_status    ,   
           statusVld      => pktbld_statusVld , 
           statusEOP      => pktbld_statusEOP ,  
           rxrst          => rxrst            ,
           txrst          => txrst            ,
           dutrst         => dutrst
           );
           
  u_FILDataProc: FILDataProc
  port map(
           rxclk        => rxclk           ,      
           txclk        => txclk           ,
           dutclk       => clk             ,
           rxrst        => rxrst           ,
           txrst        => txrst           ,
           dutrst       => dutrst          ,
           -- from MAC  
           rxdata       => pktmux_data     ,
           rxvld        => pktmux_dataVld  ,
           rxeop        => pktmux_dataEOP  ,
           -- to MAC    
           txdata       => pktbld_data     ,
           txvld        => pktbld_dataVld  ,
           txeop        => pktbld_dataEOP  ,
           txrdy        => dataReady       ,
           -- DUT in    
           dut_din      => dut_din         ,
           dut_dinvld   => dut_dinvld      ,
           dut_dinrdy   => dut_dinrdy      ,
           simcycle     => simcycle        ,
           -- DUT out   
           dut_dout     => dut_dout        ,
           dut_doutvld  => dut_doutvld     ,
           dut_doutrdy  => dut_doutrdy
           );           

  u_MWUDPPKTBuilder: MWUDPPKTBuilder
  generic map ( DATA_BUF_WIDTH           =>  11  ,
                DATA_PKTINFO_BUF_WIDTH   =>  2   ,
                STATUS_BUF_WIDTH         =>  4   ,
                STATUS_PKTINFO_BUF_WIDTH =>  2
              )
  port map(
           clk         =>  txclk             ,
           clk_en      =>  txclk_en          ,
           reset       =>  txrst             ,
           dataIn      =>  pktbld_data       ,
           dataVld     =>  pktbld_dataVld    ,
           dataEOP     =>  pktbld_dataEOP    ,
           statusIn    =>  pktbld_status     ,
           statusVld   =>  pktbld_statusVld  ,
           statusEOP   =>  pktbld_statusEOP  ,
           statusPort  =>  "00"              ,
           dataReady   =>  dataReady         ,
           statusReady =>  statusReady       ,
           txReady     =>  TxReady           ,
           txRequest   =>  TxEOP             ,
           pktData     =>  TxData            ,
           pktDataVld  =>  TxDataValid       ,
           pktPort     =>  TxSrcPort         ,
           pktLen      =>  TxDataLength 
           );
  
  RxReset <= rxrst;           
  TxReset <= txrst;
  dut_rst <= dutrst;

end rtl;