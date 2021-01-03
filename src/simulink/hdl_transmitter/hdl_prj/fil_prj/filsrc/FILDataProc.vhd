
-- ----------------------------------------------
-- File Name: FILDataProc.vhd
-- Created:   03-Jan-2021 02:07:09
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;


entity FILDataProc is 
port (
      rxclk        : in  std_logic;
      txclk        : in  std_logic;
      dutclk       : in  std_logic;
      rxrst        : in  std_logic;
      txrst        : in  std_logic;
      dutrst       : in  std_logic;
      -- from MAC
      rxdata       : in  std_logic_vector(7 downto 0);
      rxvld        : in  std_logic;
      rxeop        : in  std_logic;
      -- to MAC
      txdata       : out std_logic_vector(7 downto 0);
      txvld        : out std_logic;
      txeop        : out std_logic;
      txrdy        : in  std_logic;
      -- DUT in
      dut_din      : OUT std_logic_vector(7 DOWNTO 0);
      dut_dinvld   : OUT std_logic;
      dut_dinrdy   : IN  std_logic;
      simcycle     : OUT std_logic_vector(15 DOWNTO 0);
      -- DUT out
      dut_dout     : IN  std_logic_vector(7 DOWNTO 0);
      dut_doutvld  : IN  std_logic;    
      dut_doutrdy  : OUT std_logic
);
end FILDataProc;

architecture rtl of FILDataProc is

  component MWAsyncFIFO
  generic (
          DATA_WIDTH :integer;
          ADDR_WIDTH :integer
          );
  port (
    data_in_clk    :in  std_logic;
    data_in        :in  std_logic_vector (DATA_WIDTH-1 downto 0);
    data_in_vld    :in  std_logic;
    data_out_clk   :in  std_logic;
    data_rst       :in  std_logic;
    data_out_en    :in  std_logic;
    data_out       :out std_logic_vector (DATA_WIDTH-1 downto 0);
    data_out_vld   :out std_logic;
    fifo_full      :out std_logic
    );
  end component;
  
  signal rxfifo_din          : std_logic_vector(8 downto 0);
  signal rxfifo_din_vld      : std_logic;
  signal rxfifo_dout         : std_logic_vector(8 downto 0);
  signal rxfifo_dout_vld     : std_logic;
  signal rxfifo_dout_rdy     : std_logic;
  
  signal txfifo_din          : std_logic_vector(8 downto 0);
  signal txfifo_din_vld      : std_logic;
  signal txfifo_dout         : std_logic_vector(8 downto 0);
  signal txfifo_dout_vld     : std_logic;

  signal dut_dout_reg        : std_logic_vector(7 downto 0);
  signal dut_doutvld_reg     : std_logic;
  
  signal tx_done             : std_logic; -- if tx_done, send next packet to dut
  
  signal tx_dlen             : std_logic_vector(15 downto 0); -- include 5 bytes of header
  signal tx_dlen_low         : std_logic_vector(7 downto 0);
  signal tx_dlen_actual      : std_logic_vector(15 downto 0); -- actual length of data = tx_dlen-5
  signal tx_dlen_rdy         : std_logic;
  signal tx_cnt              : std_logic_vector(15 downto 0);
  signal rx_cnt              : std_logic_vector(15 downto 0);
  signal simcycle_low        : std_logic_vector(7 downto 0);
  
  type   RX_STATE_TYPE      is (RX_IDLE, RX_HEADER_1,RX_HEADER_2,
                                RX_HEADER_3, RX_HEADER_4, RX_HEADER_5,
                                RX_DATA, RX_EOP);
  signal rx_state            : RX_STATE_TYPE;
  signal skip_RX_HEADER_1    : std_logic;

  type   TX_STATE_TYPE      is (TX_IDLE, TX_DATA, TX_EOP);
  signal tx_state            : TX_STATE_TYPE;  
  
begin
  
  -- rx async fifo: 4K hold two full packets
  rxfifo_din      <= rxeop & rxdata;
  rxfifo_din_vld  <= rxvld;

  u_rxFIFO: MWAsyncFIFO
  generic map(
          DATA_WIDTH => 9,
          ADDR_WIDTH => 12
          )
  port map(
    data_in_clk    => rxclk            ,
    data_in        => rxfifo_din       ,
    data_in_vld    => rxfifo_din_vld   ,
    data_rst       => dutrst           ,
    data_out_clk   => dutclk           ,
    data_out_en    => rxfifo_dout_rdy  ,
    data_out       => rxfifo_dout      ,
    data_out_vld   => rxfifo_dout_vld  ,
    fifo_full      => open
    );   

  -- parse RX data packet
  process (dutclk)
  begin
    if rising_edge(dutclk) then
      if dutrst = '1' then
        dut_din          <= (others =>'0');
        dut_dinvld       <= '0';
        simcycle         <= (others =>'0');
        simcycle_low     <= (others =>'0');
        rxfifo_dout_rdy  <= '0';
        tx_dlen          <= (others =>'0');
        tx_dlen_low      <= (others =>'0');
        tx_dlen_rdy      <= '0';
        rx_state         <= RX_IDLE;
        rx_cnt           <= (others =>'0');
        skip_RX_HEADER_1 <= '0';
      else
        case rx_state is
          when RX_IDLE =>
            dut_din           <= (others =>'0');
            dut_dinvld        <= '0';
            rxfifo_dout_rdy   <= '0';
            tx_dlen_rdy       <= '0';
            rx_cnt            <= (others =>'0');
            if tx_done = '1' then -- tx is finished              
              rxfifo_dout_rdy <= dut_dinrdy;
              if skip_RX_HEADER_1 = '0' then
                rx_state        <= RX_HEADER_1;
              else
                rx_state        <= RX_HEADER_2;
              end if;
            end if;
          when RX_HEADER_1 =>     
            rxfifo_dout_rdy   <= dut_dinrdy;
            if rxfifo_dout_vld = '1' then
              rx_state        <= RX_HEADER_2;
            end if;
          when RX_HEADER_2 =>
            rxfifo_dout_rdy   <= dut_dinrdy;
            if rxfifo_dout_vld = '1' then
              rx_state        <= RX_HEADER_3;
              tx_dlen_low     <= rxfifo_dout(7 downto 0); -- save tx_dlen first byte
            end if;
          when RX_HEADER_3 =>
            rxfifo_dout_rdy   <= dut_dinrdy;
            if rxfifo_dout_vld = '1' then
              tx_dlen         <= rxfifo_dout(7 downto 0) & tx_dlen_low; -- update tx_dlen
              tx_dlen_rdy     <= '1'; -- once get tx dlen, assert tx_dlen_rdy for one cycle
              rx_state        <= RX_HEADER_4;
            end if;            
          when RX_HEADER_4 =>
            rxfifo_dout_rdy   <= dut_dinrdy;
            tx_dlen_rdy       <= '0';
            if rxfifo_dout_vld = '1' then
              rx_state        <= RX_HEADER_5;
              simcycle_low    <= rxfifo_dout(7 downto 0); -- save simcycle first byte
            end if;
          when RX_HEADER_5 =>
            rxfifo_dout_rdy   <= dut_dinrdy;
            if rxfifo_dout_vld = '1' then
              simcycle        <= rxfifo_dout(7 downto 0) & simcycle_low;-- update simcycle
              rx_state        <= RX_DATA;
            end if;
            if rxfifo_dout_vld = '1' and rxfifo_dout(8) = '1' then -- EOP: no payload
              rxfifo_dout_rdy <= '0';
              rx_state        <= RX_EOP;
            end if;            
          when RX_DATA =>
            dut_din           <= rxfifo_dout(7 downto 0);
            dut_dinvld        <= rxfifo_dout_vld;
            rxfifo_dout_rdy   <= dut_dinrdy;
            if rxfifo_dout_vld = '1' then
              rx_cnt <= rx_cnt +1;
            end if;
            if rxfifo_dout_vld = '1' and rxfifo_dout(8) = '1' then -- EOP
              rxfifo_dout_rdy <= '0';
              rx_state        <= RX_EOP;
            end if;            
          when RX_EOP =>
            dut_din        <= (others =>'0');
            dut_dinvld     <= '0';
            rx_state       <= RX_IDLE;
            if rxfifo_dout_vld = '1' then
              skip_RX_HEADER_1 <= '1';
            else
              skip_RX_HEADER_1 <= '0';
            end if;
        end case;
      end if;
    end if;
  end process;

  -- tx async fifo: 2K hold one full packet, and pkt builder can hold another full packet
  txdata <= txfifo_dout(7 downto 0);
  txeop  <= txfifo_dout(8);
  txvld  <= txfifo_dout_vld;
  
  u_txFIFO: MWAsyncFIFO
  generic map(
          DATA_WIDTH => 9,
          ADDR_WIDTH => 11
          )
  port map(
    data_in_clk    => dutclk            ,
    data_in        => txfifo_din        ,
    data_in_vld    => txfifo_din_vld    ,
    data_rst       => dutrst            ,
    data_out_clk   => txclk             ,
    data_out_en    => txrdy             ,
    data_out       => txfifo_dout       ,
    data_out_vld   => txfifo_dout_vld   ,
    fifo_full      => open
    ); 
    
  -- send TX data packet
  process (dutclk)
  begin
    if rising_edge(dutclk) then
      if dutrst = '1' then
        tx_done             <= '1';
        txfifo_din          <= (others => '0');
        txfifo_din_vld      <= '0';
        tx_dlen_actual      <= (others => '0');
        tx_cnt              <= (others => '0');
        dut_doutrdy         <= '0';
        tx_state            <= TX_IDLE;
        dut_dout_reg        <= (others => '0');
        dut_doutvld_reg     <= '0';
      else
        case tx_state is
          when TX_IDLE => 
            tx_done        <= '1';
            txfifo_din     <= (others => '0');
            txfifo_din_vld <= '0';
            tx_dlen_actual <= (others => '0');
            tx_cnt         <= (others => '0'); 
            dut_doutrdy    <= '0';
            if tx_dlen_rdy = '1' then
              tx_done        <= '0';
              tx_dlen_actual <= tx_dlen -5;
              tx_state       <= TX_DATA;
            end if;
          when TX_DATA =>
            if dut_doutvld_reg = '1' then
              if tx_cnt = tx_dlen_actual-1 then
                tx_cnt         <= (others => '0');
                txfifo_din     <= '1' & dut_dout_reg;
                txfifo_din_vld <= '1';
                tx_done        <= '1';
                dut_doutrdy    <= '0';
                tx_state       <= TX_EOP;
              else
                tx_cnt         <= tx_cnt +1;
                txfifo_din     <= '0' & dut_dout_reg;
                txfifo_din_vld <= '1';
                dut_doutrdy    <= '1';
              end if;
              dut_dout_reg     <= (others => '0');
              dut_doutvld_reg  <= '0';
            elsif dut_doutvld = '1' then
              if tx_cnt = tx_dlen_actual-1 then
                tx_cnt         <= (others => '0');
                txfifo_din     <= '1' & dut_dout;
                txfifo_din_vld <= '1'; 
                tx_done        <= '1';
                dut_doutrdy    <= '0';
                tx_state       <= TX_EOP;
              else
                tx_cnt         <= tx_cnt +1;
                txfifo_din     <= '0' & dut_dout;
                txfifo_din_vld <= '1'; 
                dut_doutrdy    <= '1';
              end if;    
            else
              txfifo_din       <= (others => '0');
              txfifo_din_vld   <= '0';
              dut_doutrdy      <= '1';
            end if;
          when TX_EOP =>
            dut_dout_reg       <= dut_dout;
            dut_doutvld_reg    <= dut_doutvld;
            txfifo_din         <= (others => '0');
            txfifo_din_vld     <= '0';
            tx_state           <= TX_IDLE;
        end case;
      end if;
    end if;  
  end process; 
  
end;
