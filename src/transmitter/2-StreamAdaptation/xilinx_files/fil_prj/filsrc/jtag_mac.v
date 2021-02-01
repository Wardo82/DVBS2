
/*-- ----------------------------------------------
-- File Name: jtag_mac.v
-- Created:   01-Feb-2021 10:19:19
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------*/

//   Copyright 2014 The MathWorks, Inc.


// Module Name: jtag_mac

module jtag_mac(
//clock and reset
input   chif_clk,
input   sys_rst,

//interface with BSCANE2
input   tck,
input   tdi,
output  tdo,

//interface with chif_top
output  [7:0]chif_din,
input   [7:0]chif_dout,
output  reg chif_din_valid,
output  chif_dout_ready, 
input   chif_din_ready, 
input   chif_dout_valid,
output  reg[15:0]chif_simcycle,
output  chif_reset
    );

parameter [31:0] VERSION = 32'h0002ECEC; // Minor ver, Major ver, EC, EC
wire    reset;
reg     user_rst_assert;
//when sys_rst is high or user reset command is running, reset jtag_mac FIFOs and entire chif
assign  reset = user_rst_assert || sys_rst;
assign  chif_reset = reset;

//simcycle_fifo
wire    [15:0]simcycle_din,simcycle_dout;
wire    simcycle_wr_en;
wire    simcycle_rd_en;   
reg     simcycle_rd_en_d1;   
wire    simcycle_full, simcycle_empty;

simcycle_fifo_wrapper u_simcycle_fifo (
  .rst(reset),        // input wire rst
  .wr_clk(tck),  // input wire wr_clk
  .rd_clk(chif_clk),  // input wire rd_clk
  .din(simcycle_din),        // input wire [15 : 0] din
  .wr_en(simcycle_wr_en),    // input wire wr_en
  .rd_en(simcycle_rd_en),    // input wire rd_en
  .dout(simcycle_dout),      // output wire [15 : 0] dout
  .full(simcycle_full),      // output wire full
  .empty(simcycle_empty)    // output wire empty
);

//pre_chif_fifo    
wire [7:0] pre_chif_fifo_din;
wire [7:0] pre_chif_fifo_dout;
wire  pre_chif_fifo_wr_en;
wire  pre_chif_fifo_rd_en;
wire  pre_chif_fifo_full, pre_chif_fifo_empty;
wire  [11:0]pre_chif_fifo_data_count;

jtag_mac_fifo_wrapper u_pre_chif_fifo (
  .rst(reset),                      // input wire rst
  .wr_clk(tck),                // input wire wr_clk
  .rd_clk(chif_clk),                // input wire rd_clk
  .din(pre_chif_fifo_din),                      // input wire [7 : 0] din
  .wr_en(pre_chif_fifo_wr_en),                  // input wire wr_en
  .rd_en(pre_chif_fifo_rd_en),                  // input wire rd_en
  .dout(pre_chif_fifo_dout),                    // output wire [7 : 0] dout
  .full(pre_chif_fifo_full),                    // output wire full
  .empty(pre_chif_fifo_empty),                  // output wire empty
  .rd_data_count(pre_chif_fifo_data_count)  // output wire [11 : 0] rd_data_count
);

//post_chif_fifo
wire [7:0] post_chif_fifo_din;
wire [7:0] post_chif_fifo_dout;
wire  post_chif_fifo_wr_en;
reg   post_chif_fifo_rd_en;
wire  post_chif_fifo_full;
wire  [11:0]post_chif_fifo_data_count;

jtag_mac_fifo_wrapper u_post_chif_fifo (
  .rst(reset),                      // input wire rst
  .wr_clk(chif_clk),                // input wire wr_clk
  .rd_clk(tck),                // input wire rd_clk
  .din(post_chif_fifo_din),                      // input wire [7 : 0] din
  .wr_en(post_chif_fifo_wr_en),                  // input wire wr_en
  .rd_en(post_chif_fifo_rd_en),                  // input wire rd_en
  .dout(post_chif_fifo_dout),                    // output wire [7 : 0] dout
  .full(),                                       // output wire full
  .almost_full(post_chif_fifo_full),
  .empty(),                  // output wire empty
  .rd_data_count(post_chif_fifo_data_count)  // output wire [11 : 0] rd_data_count
);

//state machine -- state definition
reg [14:0]ns,cs;
parameter [14:0] 
    idle            = 15'b000000000000000,
    user_rst        = 15'b000000000000001,
    get_cmd         = 15'b000000000000010,
    get_wr_len      = 15'b000000000000100,
    get_sim         = 15'b000000000001000,
    wr              = 15'b000000000010000,
    get_rd_len      = 15'b000000001000000,
    get_skip        = 15'b000000010000000,
    exe_skip        = 15'b000000100000000,
    rdbk_len        = 15'b000001000000000,
    rdbk_dat        = 15'b000010000000000,
    ver_get_skip    = 15'b000100000000000,
    ver_exe_skip    = 15'b001000000000000,
    ver_rdbk_len    = 15'b010000000000000,
    ver_rdbk_dat    = 15'b100000000000000;

reg [15:0]data_buffer;              //buffer 16 consecutive incoming bits
reg [12:0]wr_len, rd_len;           //user command w/r length
reg [15:0]simcycle;                 //user command simcycle
reg [2:0]skip_len;                  //user command skip_len
reg [4:0]sm_cnt;                    //state transfering counter
reg [15:0]act_wr_cnt, act_rd_cnt;   //count w/r bit number
reg [12:0]act_rd_len, act_rd_len_sft;   //FPGA to Host data length
reg [12:0]ver_act_rd_len_sft;
reg [15:0]ver_act_rd_cnt;
reg [7:0]user_rst_cnt;              //user reset command counter


//sm_cnt
always @ (posedge tck)
if(reset || ns == idle)
    sm_cnt <= 0;
else if (ns != cs)
    sm_cnt <= 1;
else
    sm_cnt <= sm_cnt + 1;
    
//reg   [15:0]act_wr_cnt;
always @ (posedge tck)
if(reset || ns != wr)
    act_wr_cnt <= 0;
else if (ns == wr && cs != wr)
    act_wr_cnt <= 1;
else
    act_wr_cnt <= act_wr_cnt + 1;    

//reg   [15:0]act_rd_cnt;
always @ (posedge tck)
if(reset || ns != rdbk_dat)
    act_rd_cnt <= 0;
else if (ns == rdbk_dat && cs != rdbk_dat)
    act_rd_cnt <= 1;
else
    act_rd_cnt <= act_rd_cnt + 1;    

//reg [15:0]ver_act_rd_cnt;
always @ (posedge tck)
if(reset || ns != ver_rdbk_dat)
    ver_act_rd_cnt <= 0;
else if (ns == ver_rdbk_dat && cs != ver_rdbk_dat)
    ver_act_rd_cnt <= 1;
else
    ver_act_rd_cnt <= ver_act_rd_cnt + 1;    

//reg   [7:0]user_rst_cnt;
always @ (posedge tck)
if(sys_rst)
    user_rst_cnt <= 0;
else if (ns==user_rst)
    user_rst_cnt <= user_rst_cnt + 1;    
else
    user_rst_cnt <= 0;
    
//state shift    
always @ (posedge tck)
if (sys_rst)
    cs <= idle;
else
    cs <= ns;    

//next state flow
always @ (cs,data_buffer,sm_cnt,act_wr_cnt,act_rd_cnt,user_rst_cnt,ver_act_rd_cnt)
begin
    case(cs)
        //idle
        idle: begin
            if (data_buffer[15:8]==8'b11010111)
                ns <= get_cmd;
            else
                ns <= idle;
        end
        //get_cmd
        get_cmd: begin
            if (sm_cnt == 8 && data_buffer[10:8] == 3'b000)
                ns <= get_wr_len;
            else if (sm_cnt == 8 && data_buffer[10:8] == 3'b001)
                ns <= get_rd_len;
            else if (sm_cnt == 8 && data_buffer[10:8] == 3'b111)
                ns <= user_rst;    
            else if (sm_cnt == 8 && data_buffer[10:8] == 3'b101)
                ns <= ver_get_skip;    
            else if (sm_cnt == 8)
                ns <= idle;
            else
                ns <= get_cmd;
        end
        //get_wr_len
        get_wr_len: begin
            if (sm_cnt==16)
                ns <= get_sim;
            else
                ns <= get_wr_len;
        end
        //get_sim
        get_sim: begin
            if (sm_cnt==16)
                ns <= wr;
            else
                ns <= get_sim;
        end
        //wr
        wr: begin
            if (act_wr_cnt[15:3]==wr_len)
            //    ns <= wr_tail;
                ns <= idle;
            else
                ns <= wr;
        end
        //wr
//        wr_tail: begin
//            if (sm_cnt==16)
//                ns <= idle;
//            else
//                ns <= wr_tail;
//        end
        //get_rd_len
        get_rd_len: begin
            if (sm_cnt==16)
                ns <= get_skip;
            else
                ns <= get_rd_len;
        end
        //get_skip
        get_skip: begin
            if (sm_cnt==8 && skip_len==0)
                ns <= rdbk_len;
            else if (sm_cnt==8)
                ns <= exe_skip;
            else
                ns <= get_skip;
        end
        //exe_skip
        exe_skip: begin
            if (sm_cnt[2:0]==skip_len)
                ns <= rdbk_len;
            else
                ns <= exe_skip;
        end
        //rdbk_len
        rdbk_len: begin
            if (sm_cnt==13 && act_rd_len==0 ) //leave 3 cycles for fifo output buffer
                ns <= idle;
            else if (sm_cnt==13) //leave 3 cycles for fifo output buffer
                ns <= rdbk_dat;
            else
                ns <= rdbk_len;
        end
        //rdbk_dat
        rdbk_dat: begin
            if (act_rd_cnt[15:3]==act_rd_len)
                ns <= idle;
            else
                ns <= rdbk_dat;
        end        
        //user_rst
        user_rst: begin
            if(user_rst_cnt == 100)
                ns <= idle;
            else
                ns <= user_rst;
        end
        //ver_get_skip
        ver_get_skip: begin
            if (sm_cnt==8 && skip_len==0)
                ns <= ver_rdbk_len;
            else if (sm_cnt==8)
                ns <= ver_exe_skip;
            else
                ns <= ver_get_skip;
        end
        //ver_exe_skip
        ver_exe_skip: begin
            if (sm_cnt[2:0]==skip_len)
                ns <= ver_rdbk_len;
            else
                ns <= ver_exe_skip;
        end
        //ver_rdbk_len
        ver_rdbk_len: begin
            if (sm_cnt==16) 
                ns <= ver_rdbk_dat;
            else
                ns <= ver_rdbk_len;
        end
        //ver_rdbk_dat
        ver_rdbk_dat: begin
            if (ver_act_rd_cnt[15:3]==4)
                ns <= idle;
            else
                ns <= ver_rdbk_dat;
        end        
        default: begin
            ns <= idle;
        end
    endcase
end

//////////FSM logic output///////////

//reg [15:0]data_buffer;
always @ (posedge tck)
if (reset)
    data_buffer <= 0;
else
    data_buffer <= {tdi,data_buffer[15:1]};

//reg [12:0]wr_len;
always @ (posedge tck)
if (reset)
    wr_len <= 0;
else if (cs==get_wr_len && sm_cnt==16)
    wr_len <= data_buffer[12:0];
else
    wr_len <= wr_len;

//reg [12:0]rd_len;
always @ (posedge tck)
if (reset)
    rd_len <= 0;
else if (cs==get_rd_len && sm_cnt==16)
    rd_len <= data_buffer[12:0];
else
    rd_len <= rd_len;
    
//reg [2:0]skip_len;
always @ (posedge tck)
if (reset)
    skip_len <= 0;
else if ((cs==get_skip || cs==ver_get_skip) && sm_cnt==3)
       skip_len <= data_buffer[15:13];
   else
       skip_len <= skip_len;       

//reg [12:0]act_rd_len;
always @ (posedge tck)
if (reset)
    act_rd_len <= 0;
else if (ns == rdbk_len && cs != rdbk_len)
     begin
     if (rd_len[11:0] > post_chif_fifo_data_count)   
        act_rd_len <= {post_chif_fifo_full,post_chif_fifo_data_count};
     else
        act_rd_len <= rd_len;   
     end  
else
    act_rd_len <= act_rd_len;    

//reg [12:0]act_rd_len_sft;
always @ (posedge tck)
if (reset)
    act_rd_len_sft <= 0;
else if (ns == rdbk_len && cs != rdbk_len)
     begin
     if (rd_len[11:0] > post_chif_fifo_data_count)   
        act_rd_len_sft <= {post_chif_fifo_full,post_chif_fifo_data_count};
     else
        act_rd_len_sft <= rd_len;   
     end  
else
    act_rd_len_sft <= {1'b0,act_rd_len_sft[12:1]};   

//reg [12:0]ver_act_rd_len_sft;
always @ (posedge tck)
if (reset)
    ver_act_rd_len_sft <= 0;
else if (ns == ver_rdbk_len && cs != ver_rdbk_len)
        ver_act_rd_len_sft <= 4;   
else
    ver_act_rd_len_sft <= {1'b0,ver_act_rd_len_sft[12:1]};   

//user_rst_assert
always @ (posedge tck)
if(sys_rst)
    user_rst_assert <= 1;
else if (ns == user_rst)
    user_rst_assert <= 1;
else
    user_rst_assert <= 0;
    
//////////////////////////////////insert CHIF signals here////////////////////////////////////////

//simcycle connection
assign  simcycle_wr_en = cs==get_sim && sm_cnt==16;
assign  simcycle_din = data_buffer;
assign  simcycle_rd_en = ~simcycle_empty;

always @ (posedge chif_clk)
if(reset)
begin
    chif_simcycle <= 1;
    simcycle_rd_en_d1 <= 0;
end
else
begin
    if (simcycle_rd_en_d1)
        chif_simcycle <= simcycle_dout;
    else
        chif_simcycle <= chif_simcycle;
    simcycle_rd_en_d1 <= simcycle_rd_en;
end   

//pre_chif_fifo connection
assign  pre_chif_fifo_din = data_buffer[15:8];
assign  pre_chif_fifo_wr_en = (cs==wr)&&(act_wr_cnt[2:0]==3'b000); //every 8 cycle at write state   
assign  pre_chif_fifo_rd_en = ~pre_chif_fifo_empty && chif_din_ready;    

assign  chif_din = pre_chif_fifo_dout;

always @ (posedge chif_clk)
if(reset)
    chif_din_valid <= 0;
else
    chif_din_valid <= pre_chif_fifo_rd_en;

//post_chif_fifo connection
assign  chif_dout_ready = ~post_chif_fifo_full;
assign  post_chif_fifo_wr_en = chif_dout_valid;
assign  post_chif_fifo_din = chif_dout;

always @ (posedge tck)
if(reset)
    post_chif_fifo_rd_en <= 0;
else if (act_rd_cnt[2:0]==3'b001)
    post_chif_fifo_rd_en <= 1;
else
    post_chif_fifo_rd_en <= 0;

//post_chif_fifo_rd_en_d1
reg post_chif_fifo_rd_en_d1;
always @ (posedge tck)
if(reset)
    post_chif_fifo_rd_en_d1 <= 0;
else
    post_chif_fifo_rd_en_d1 <= post_chif_fifo_rd_en;

//fifo output reg
reg [7:0]fifo_output_reg;
always @ (posedge tck)
if(reset)
    fifo_output_reg <= 0;
else if (post_chif_fifo_rd_en_d1==1'b1)
    fifo_output_reg <= post_chif_fifo_dout;
else
    fifo_output_reg <= {1'b0,fifo_output_reg[7:1]};

//ver output reg
reg [31:0]ver_output_reg;
always @ (posedge tck)
if(reset)
    ver_output_reg <= 0;
else if (ns == ver_rdbk_dat && cs != ver_rdbk_dat)
    ver_output_reg <= VERSION;
else
    ver_output_reg <= {1'b0,ver_output_reg[31:1]};

//final output
reg [14:0]cs_d1, cs_d2, cs_d3;
always @ (posedge tck)
if(reset)
begin
    cs_d1 <= 0;
    cs_d2 <= 0;
    cs_d3 <= 0;
end
else
begin
    cs_d1 <= cs;
    cs_d2 <= cs_d1;
    cs_d3 <= cs_d2;
end

//tdo output
assign tdo = (cs==ver_rdbk_len)?ver_act_rd_len_sft[0]:((cs==ver_rdbk_dat)?ver_output_reg[0]:
                ((cs==rdbk_len)?act_rd_len_sft[0]:((cs_d3==rdbk_dat)?fifo_output_reg[0]:0)));

endmodule
