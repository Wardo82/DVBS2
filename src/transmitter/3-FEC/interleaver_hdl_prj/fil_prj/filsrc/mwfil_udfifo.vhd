
-- ----------------------------------------------
-- File Name: mwfil_udfifo.vhd
-- Created:   03-Jan-2021 15:43:34
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

-- A parameterized single-clock synchronous FIFO based on inferred Block RAM in VHDL.
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.ALL;

entity mwfil_udfifo is
generic (
		fifo_depth : integer := 16;
		fifo_uword : integer := 4;
		fifo_width : integer := 2048
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
end mwfil_udfifo;

architecture rtl of mwfil_udfifo is

component mwfil_dpscram
generic (
	DATA : integer := 16;
	ADDR : integer := 2
);
port (
	clk : in std_logic;
	-- write port
	wr_en : in std_logic;
	wr_addr : in std_logic_vector(ADDR-1 downto 0);
	wr_din : in std_logic_vector(DATA-1 downto 0);
	-- read port
	rd_addr : in std_logic_vector(ADDR-1 downto 0);
	rd_dout : out std_logic_vector(DATA-1 downto 0)
);
end component;

signal wr_addr, rd_addr: std_logic_vector(fifo_uword-1 downto 0);
signal empty_tmp, empty_tmp_d1, full_tmp: STD_LOGIC ;
signal usedw_tmp: STD_LOGIC_VECTOR (fifo_uword-1 downto 0);
signal wr_en: STD_LOGIC ;
signal rd_dout, reg_out, q_tmp: STD_LOGIC_VECTOR (fifo_width-1 downto 0);
signal rdreq_d1: STD_LOGIC ;
signal sclr_d1: STD_LOGIC ;


begin
    -- write enable signal to Block RAM
	wr_en <= wrreq and (not full_tmp or rdreq);
	empty <= empty_tmp;
	full <= full_tmp;
	usedw <= usedw_tmp;
	usedw_tmp <= wr_addr - rd_addr;		
    -- Decide FIFO data output
	q_tmp <= (others => '0') when sclr_d1 = '1' else
				rd_dout when rdreq_d1 = '1' and empty_tmp_d1 = '0' else
				reg_out;
	q <= q_tmp;
					
process(clk)
begin
    if clk'event and clk='1' then        
        if sclr = '1' then
            wr_addr <= (others => '0');
				rd_addr <= (others => '0');
				empty_tmp <= '1';
				full_tmp <= '0';
				empty_tmp_d1 <= '1';
				rdreq_d1 <= '0';
				reg_out <= (others => '0');
				sclr_d1 <= '1';
        else
            -- write address of Block RAM
            if wr_en = '1' then
					wr_addr <= wr_addr + 1;
				else
					wr_addr <= wr_addr;
				end if;
				-- read address of Block RAM
				if rdreq = '1' and empty_tmp = '0' then
					rd_addr <= rd_addr + 1;
				else
					rd_addr <= rd_addr;
				end if;
				
                -- write request of Block RAM
				if wrreq = '1' and rdreq = '0' and (usedw_tmp = fifo_depth-1) then
					full_tmp <= '1';
				elsif wrreq = '0' and rdreq = '1' and full_tmp = '1' then
					full_tmp <= '0';
				else
					full_tmp <= full_tmp;
				end if;
				
                -- read request of Block RAM
				if wrreq = '1' and empty_tmp = '1' then
					empty_tmp <= '0';
				elsif wrreq = '0' and rdreq = '1' and usedw_tmp = 1 then
					empty_tmp <= '1';
				else
					empty_tmp <= empty_tmp;
				end if;	
				
				empty_tmp_d1 <= empty_tmp;
				
				rdreq_d1 <= rdreq;
				
				reg_out <= q_tmp;
				
                -- synchronous clear
				sclr_d1 <= '0';
        end if;
    end if;
end process;
                  
u_dpscram : mwfil_dpscram
generic map (
	DATA => fifo_width,
	ADDR => fifo_uword
)
port map (
	clk => clk,
	-- write port
	wr_en => wr_en,
	wr_addr => wr_addr,
	wr_din => data,
	-- read port
	rd_addr => rd_addr,
	rd_dout => rd_dout
); 						
						
						
end architecture;

