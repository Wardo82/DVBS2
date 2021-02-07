
-- ----------------------------------------------
-- File Name: FILCmdProc.vhd
-- Created:   07-Feb-2021 15:24:56
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;


entity FILCmdProc is 
generic (
         VERSION: std_logic_vector(15 downto 0) := X"0100"
);

port (
      rxclk                           : in  std_logic;
      txclk                           : in  std_logic;
      dutclk                          : in  std_logic;
      reset                           : in  std_logic;
      cmd                             : in  std_logic_vector(7 downto 0);
      cmdVld                          : in  std_logic;
      cmdEOP                          : in  std_logic;
      statusReady                     : in  std_logic;
      status                          : out std_logic_vector(7 downto 0);
      statusVld                       : out std_logic;
      statusEOP                       : out std_logic;
      rxrst                           : out std_logic;
      txrst                           : out std_logic;
      dutrst                          : out std_logic
);
end FILCmdProc;

architecture rtl of FILCmdProc is

  
  constant GETVERSION         : std_logic_vector(7 downto 0) := X"80";
  constant RESETDUT           : std_logic_vector(7 downto 0) := X"81";
  constant RESETFPGA          : std_logic_vector(7 downto 0) := X"82";
  constant FLUSH              : std_logic_vector(7 downto 0) := X"83";
  constant NOP                : std_logic_vector(7 downto 0) := X"84";
  
  signal cmdReg               : std_logic_vector(7 downto 0);
  signal cmdVldReg            : std_logic;
  
  signal get_ver_reg          : std_logic_vector(3 downto 0);
  signal dut_rst_reg          : std_logic_vector(15 downto 0);
  signal fpga_rst_reg         : std_logic_vector(15 downto 0);
  signal rxrst_s              : std_logic;
  signal txrst_s              : std_logic;
  signal rxrst_int            : std_logic;
  signal txrst_int            : std_logic;
  signal dutrst_s             : std_logic;
  signal get_ver_s1           : std_logic;
  signal get_ver_s2           : std_logic;
  signal get_ver_s3           : std_logic;
  signal get_ver_posedge      : std_logic;
  
  
  type   CMD_STATE_TYPE      is (CMD_IDLE, CMD_WAIT_EOP);
  signal cmd_state           : CMD_STATE_TYPE;  
  type   STATUS_STATE_TYPE   is (STATUS_IDLE, STATUS_WAIT_RDY, STATUS_BYTE_1,STATUS_BYTE_2,
                                 STATUS_BYTE_3,STATUS_BYTE_4,STATUS_BYTE_5, STATUS_BYTE_6,
                                 STATUS_BYTE_7,STATUS_BYTE_8);
  signal status_state        : STATUS_STATE_TYPE;  
  
begin
  
  -- parse CMD packet: get the first byte
  process (rxclk)
  begin
    if rising_edge(rxclk) then
      if rxrst_int = '1' then
        cmdReg     <= (others =>'0');
        cmdVldReg  <= '0';
        cmd_state  <= CMD_IDLE;
      else
        case cmd_state is
          when CMD_IDLE =>
            if cmdVld = '1' then
              cmdReg     <= cmd;
              cmdVldReg  <= '1';
              cmd_state  <= CMD_WAIT_EOP;
            else 
              cmdReg     <= (others =>'0');
              cmdVldReg  <= '0';
              cmd_state  <= CMD_IDLE;
            end if;
          when CMD_WAIT_EOP =>
              cmdReg     <= (others =>'0');
              cmdVldReg  <= '0';
            if cmdVld = '1' and cmdEOP = '1' then
              cmd_state <= CMD_IDLE;
            end if;        
        end case;
      end if;
    end if;
  end process;
    
  -- send status
  process (txclk)
  begin
    if rising_edge(txclk) then
      if txrst_int = '1' then
        status        <= (others =>'0');
        statusVld     <= '0';
        statusEOP     <= '0';
        status_state  <= STATUS_IDLE;
      else
        case status_state is
          when STATUS_IDLE =>
            status        <= (others =>'0');
            statusVld     <= '0';
            statusEOP     <= '0';
            status_state  <= STATUS_IDLE;
            if get_ver_posedge = '1' then
              status_state  <= STATUS_WAIT_RDY;
            end if;
          when STATUS_WAIT_RDY =>
            if statusReady = '1' then
              status_state  <= STATUS_BYTE_1;
            end if;
          when STATUS_BYTE_1 =>
            status        <= x"40";
            statusVld     <= '1';
            statusEOP     <= '0';
            status_state  <= STATUS_BYTE_2;
          when STATUS_BYTE_2 =>
            status        <= x"00";
            statusVld     <= '1';
            statusEOP     <= '0';
            status_state  <= STATUS_BYTE_3;
          when STATUS_BYTE_3 =>
            status        <= x"00";
            statusVld     <= '1';
            statusEOP     <= '0';
            status_state  <= STATUS_BYTE_4;
          when STATUS_BYTE_4 =>
            status        <= x"00";
            statusVld     <= '1';
            statusEOP     <= '0';
            status_state  <= STATUS_BYTE_5;
          when STATUS_BYTE_5 =>
            status        <= x"00";
            statusVld     <= '1';
            statusEOP     <= '0';
            status_state  <= STATUS_BYTE_6;
          when STATUS_BYTE_6 =>
            status        <= x"00";
            statusVld     <= '1';
            statusEOP     <= '0';
            status_state  <= STATUS_BYTE_7;
          when STATUS_BYTE_7 =>
            status        <= VERSION(15 downto 8);
            statusVld     <= '1';
            statusEOP     <= '0';
            status_state  <= STATUS_BYTE_8;
          when STATUS_BYTE_8 =>
            status        <= VERSION(7 downto 0);
            statusVld     <= '1';
            statusEOP     <= '1';
            status_state  <= STATUS_IDLE;
        end case;
      end if;
    end if;
  end process;
  
  -- hold signal level for clock domain crossing
  rst_proc: process (rxclk)
  begin 
    if rxclk'event and rxclk = '1' then 
      if reset = '1' then
        get_ver_reg  <= (others => '0');
        dut_rst_reg  <= (others => '0');
        fpga_rst_reg <= (others => '0');
      else
        get_ver_reg  <= get_ver_reg(2 downto 0) & '0';
        dut_rst_reg  <= dut_rst_reg(14 downto 0) & '0';
        fpga_rst_reg <= fpga_rst_reg(14 downto 0) & '0';
        if cmdVldReg = '1' and cmdReg = GETVERSION then 
          get_ver_reg  <= (others => '1');
        elsif cmdVldReg = '1' and cmdReg = RESETDUT then 
          dut_rst_reg  <= (others => '1');
        elsif cmdVldReg = '1' and cmdReg = RESETFPGA then 
          fpga_rst_reg <= (others => '1');
        end if;
      end if;
    end if;
  end process rst_proc;
  
  -- sync signals
  process (txclk)
  begin
    if rising_edge(txclk) then
      get_ver_s1  <= get_ver_reg(3);
      get_ver_s2  <= get_ver_s1;
      get_ver_s3  <= get_ver_s2;
    end if;
  end process;
  get_ver_posedge <= (not get_ver_s3) and get_ver_s2;
  
  process (dutclk)
  begin
    if rising_edge(dutclk) then
      dutrst_s <= reset or dut_rst_reg(15) or fpga_rst_reg(15);
      dutrst   <= dutrst_s;
    end if;
  end process;
  
  process (rxclk)
  begin
    if rising_edge(rxclk) then
      rxrst_s   <= reset or fpga_rst_reg(15);
      rxrst_int <= rxrst_s;
    end if;
  end process;
  rxrst <= rxrst_int;

  process (txclk)
  begin
    if rising_edge(txclk) then
      txrst_s   <= reset or fpga_rst_reg(15);
      txrst_int <= txrst_s;
    end if;
  end process;
  txrst <= txrst_int;
  
end;
