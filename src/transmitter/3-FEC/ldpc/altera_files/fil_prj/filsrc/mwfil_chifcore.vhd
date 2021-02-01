
-- ----------------------------------------------
-- File Name: mwfil_chifcore.vhd
-- Created:   31-Jan-2021 19:23:14
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_arith.all;

entity mwfil_chifcore is
generic(
    INWORD  : integer range 0 to 2047 := 8;
    OUTWORD : integer range 0 to 2047 := 8;
    WORDSIZE : integer range 1 to 256 := 8;
    HASENABLE: integer range 0 to 1 := 1);
port(		
    -- Host -> FPGA interface
    din         : IN std_logic_vector(WORDSIZE-1 downto 0);
    din_valid   : IN std_logic;
    din_ready   : OUT std_logic;
    -- FPGA -> host interface
    dout        : OUT std_logic_vector(WORDSIZE-1 downto 0);
    dout_valid  : OUT std_logic;
    dout_ready  : IN std_logic;
    
    -- Control signal
    clk         : IN std_logic;
    reset       : IN std_logic;
    simcycle    : IN std_logic_vector(15 downto 0);
    
    -- DUT signals
    dut_din     : out std_logic_vector(INWORD*WORDSIZE-1 downto 0);
    dut_dout    : in  std_logic_vector(OUTWORD*WORDSIZE-1 downto 0);
    dut_enable  : out std_logic);
end mwfil_chifcore;

architecture rtl of mwfil_chifcore is

    component mwfil_controller is
    generic(
        HASENABLE: integer range 0 to 1 := 1
    );
    port(
        -- Interface with B2D
        b2d_fifo_empty  : in std_logic;
        b2d_fifo_rdreq  : out std_logic;
        
        -- Interface with D2B
        d2b_fifo_wrreq  : out std_logic;
        d2b_fifo_full   : in std_logic;    
        
        -- DUT controller signals
        dut_enable : out std_logic;
        
        -- Control signals
        clk : in std_logic;
        reset: in std_logic;
        simcycle: in std_logic_vector(15 downto 0)
        );
    end component;

    component mwfil_dut2bus is
    generic(
			WORDSIZE : integer range 1 to 256 := 64;
			OUTWORD: integer range 0 to 2047 := 2);
    port (		
        -- Interface with the DUT
        d2b_fifo_q      : in std_logic_vector(OUTWORD*WORDSIZE-1 downto 0);
        d2b_fifo_rdreq  : out std_logic;
        d2b_fifo_empty  : in std_logic;
        
        -- Interface with the WORDSIZE-bit bus
        dout        : out std_logic_vector(WORDSIZE-1 downto 0);
        dout_valid  : out std_logic;
        dout_ready  : in  std_logic;
        
        -- Control signals
        clk : in std_logic;
        reset: in std_logic
        );
    end component;

    component mwfil_bus2dut is
    generic(
			WORDSIZE : integer range 1 to 256 := 64;
			OUTWORD: integer range 0 to 2047 := 3);
    port (  
        -- Interface with the WORDSIZE-bit data bus
        din         : in std_logic_vector(WORDSIZE-1 downto 0);
        din_valid   : in std_logic;
        din_ready   : out std_logic;
        
        -- Interface with the DUT
        fifo_data   : out std_logic_vector(OUTWORD*WORDSIZE-1 downto 0);
        fifo_wrreq  : out std_logic;
        fifo_full   : in  std_logic;
        
        -- Control signals
        clk : in std_logic;
        reset: in std_logic
    );
    end component;

	component mwfil_udfifo
	generic (
			fifo_depth : integer := 16;
			fifo_uword : integer := 4;
			fifo_width : integer := 16
		);
	port (
			clk	: IN STD_LOGIC ;
			sclr	: IN STD_LOGIC ;
			usedw	: OUT STD_LOGIC_VECTOR (fifo_uword-1 downto 0);
			empty	: OUT STD_LOGIC ;
			full	: OUT STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (fifo_width-1 downto 0);
			wrreq	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (fifo_width-1 downto 0);
			rdreq	: IN STD_LOGIC 
	);
	end component;

    signal b2d_fifo_data    : std_logic_vector(INWORD*WORDSIZE-1 downto 0);
    signal b2d_fifo_full    : std_logic;
    signal b2d_fifo_wrreq   : std_logic;
    signal b2d_fifo_rdreq   : std_logic;
    signal b2d_fifo_empty   : std_logic;
    signal b2d_fifo_usedw   : std_logic_vector(3 downto 0);
    signal b2d_fifo_almostfull : std_logic;

    signal d2b_fifo_data    : std_logic_vector(OUTWORD*WORDSIZE-1 downto 0);
    signal d2b_fifo_rdreq   : std_logic;
    signal d2b_fifo_empty   : std_logic;
    signal d2b_fifo_q       : std_logic_vector(OUTWORD*WORDSIZE-1 downto 0);
    signal d2b_fifo_wrreq   : std_logic;
    signal d2b_fifo_full    : std_logic;
    signal d2b_fifo_usedw   : std_logic_vector(3 downto 0);
    signal d2b_fifo_almostfull    : std_logic;

    signal b2d_dout_valid : std_logic;
    signal b2d_dout_ready: std_logic;
    signal d2b_din_valid: std_logic;
    signal d2b_din_ready: std_logic;

begin

    NormalBlock: if INWORD>0 generate
    u_bus2dut: mwfil_bus2dut
    generic map( 
			WORDSIZE => WORDSIZE,
			OUTWORD => INWORD
	 )
    port map(
        din => din,
        din_valid => din_valid,
        din_ready => din_ready, 
        fifo_data => b2d_fifo_data,
        fifo_wrreq=> b2d_fifo_wrreq,
        fifo_full => b2d_fifo_almostfull,
        clk       => clk,
        reset     => reset);

	u_b2dfifo : mwfil_udfifo
	GENERIC MAP (
		fifo_depth => 16,
		fifo_uword => 4,
		fifo_width => INWORD*WORDSIZE
	)
	PORT MAP (
		clk   => clk,
        sclr    => reset,
		data    => b2d_fifo_data,
        usedw   => b2d_fifo_usedw,
		rdreq   => b2d_fifo_rdreq,
		wrreq   => b2d_fifo_wrreq,
		empty   => b2d_fifo_empty,
		full    => b2d_fifo_full,
		q       => dut_din);    
    
    -- Assert b2d_fifo_almostfull when usedw > 12
    b2d_fifo_almostfull <= (b2d_fifo_usedw(3) and b2d_fifo_usedw(2)) or b2d_fifo_full;
    end generate;
    
    SourceBlock: if INWORD=0 generate
        -- For source block, we can assume that there is always input data availble
        b2d_fifo_empty <= '0'; 
        din_ready      <= '1';
    end generate;    
    
    u_controller:  mwfil_controller
	 generic map(
		  HASENABLE => HASENABLE
	 )
    port map(		
        -- Interface with B2D
        b2d_fifo_empty  => b2d_fifo_empty, 
        b2d_fifo_rdreq  => b2d_fifo_rdreq, 
        
        -- Interface with D2B
        d2b_fifo_wrreq  => d2b_fifo_wrreq,
        d2b_fifo_full   => d2b_fifo_almostfull,  
        
        -- DUT controller signals
        dut_enable => dut_enable,
        
        -- Control signals
        clk => clk,
        reset => reset,
        simcycle => simcycle);
    
    -- Assert d2b_fifo_almostfull when usedw > 12
    d2b_fifo_data <= dut_dout;
    d2b_fifo_almostfull <= (d2b_fifo_usedw(3) and d2b_fifo_usedw(2)) or d2b_fifo_full;
	u_d2bfifo : mwfil_udfifo
	GENERIC MAP (
		fifo_depth => 16,
		fifo_uword => 4,
		fifo_width => OUTWORD*WORDSIZE
	)
	PORT MAP (
		clk   => clk,
		sclr    => reset,
		wrreq   => d2b_fifo_wrreq,
		data    => d2b_fifo_data,
		rdreq   => d2b_fifo_rdreq,
		usedw   => d2b_fifo_usedw,
		empty   => d2b_fifo_empty,
		full    => d2b_fifo_full,
		q       => d2b_fifo_q); 
    
    u_dut2bus: mwfil_dut2bus
    generic map(
        WORDSIZE => WORDSIZE,
		  OUTWORD => OUTWORD
		  )
    port map(		
        -- Interface with the WORDSIZE-bit data bus
        d2b_fifo_q      => d2b_fifo_q, 
        d2b_fifo_rdreq  => d2b_fifo_rdreq,
        d2b_fifo_empty  => d2b_fifo_empty,
        
        -- Interface with the DUT
        dout        => dout,
        dout_valid  => dout_valid,
        dout_ready  => dout_ready,
        
        -- Control signals
        clk => clk,
        reset => reset);
    
end architecture;

