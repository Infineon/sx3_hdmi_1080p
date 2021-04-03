/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module ddr_ip
//
module ddr_ip (cam_in_fifo_Data, cam_in_fifo_Q, cam_in_fifo_RCNT, i2s_rx_fifo_Data, 
            i2s_rx_fifo_Q, i2s_rx_fifo_RCNT, i2s_rx_fifo_WCNT, slfifo_fifo_Data, 
            slfifo_fifo_Q, cam_in_fifo_Empty, cam_in_fifo_Full, cam_in_fifo_RPReset, 
            cam_in_fifo_RdClock, cam_in_fifo_RdEn, cam_in_fifo_Reset, 
            cam_in_fifo_WrClock, cam_in_fifo_WrEn, i2s_rx_fifo_AlmostEmpty, 
            i2s_rx_fifo_Empty, i2s_rx_fifo_Full, i2s_rx_fifo_RPReset, 
            i2s_rx_fifo_RdClock, i2s_rx_fifo_RdEn, i2s_rx_fifo_Reset, 
            i2s_rx_fifo_WrClock, i2s_rx_fifo_WrEn, pll_clk_CLKI, pll_clk_CLKOP, 
            pll_clk_CLKOS, pll_clk_LOCK, slfifo_fifo_AlmostFull, slfifo_fifo_Empty, 
            slfifo_fifo_Full, slfifo_fifo_RPReset, slfifo_fifo_RdClock, 
            slfifo_fifo_RdEn, slfifo_fifo_Reset, slfifo_fifo_WrClock, 
            slfifo_fifo_WrEn) /* synthesis sbp_module=true */ ;
    input [31:0]cam_in_fifo_Data;
    output [63:0]cam_in_fifo_Q;
    output [11:0]cam_in_fifo_RCNT;
    input [31:0]i2s_rx_fifo_Data;
    output [31:0]i2s_rx_fifo_Q;
    output [11:0]i2s_rx_fifo_RCNT;
    output [11:0]i2s_rx_fifo_WCNT;
    input [63:0]slfifo_fifo_Data;
    output [31:0]slfifo_fifo_Q;
    output cam_in_fifo_Empty;
    output cam_in_fifo_Full;
    input cam_in_fifo_RPReset;
    input cam_in_fifo_RdClock;
    input cam_in_fifo_RdEn;
    input cam_in_fifo_Reset;
    input cam_in_fifo_WrClock;
    input cam_in_fifo_WrEn;
    output i2s_rx_fifo_AlmostEmpty;
    output i2s_rx_fifo_Empty;
    output i2s_rx_fifo_Full;
    input i2s_rx_fifo_RPReset;
    input i2s_rx_fifo_RdClock;
    input i2s_rx_fifo_RdEn;
    input i2s_rx_fifo_Reset;
    input i2s_rx_fifo_WrClock;
    input i2s_rx_fifo_WrEn;
    input pll_clk_CLKI;
    output pll_clk_CLKOP;
    output pll_clk_CLKOS;
    output pll_clk_LOCK;
    output slfifo_fifo_AlmostFull;
    output slfifo_fifo_Empty;
    output slfifo_fifo_Full;
    input slfifo_fifo_RPReset;
    input slfifo_fifo_RdClock;
    input slfifo_fifo_RdEn;
    input slfifo_fifo_Reset;
    input slfifo_fifo_WrClock;
    input slfifo_fifo_WrEn;
    
    
    cam_in_fifo cam_in_fifo_inst (.Data({cam_in_fifo_Data}), .Q({cam_in_fifo_Q}), 
            .RCNT({cam_in_fifo_RCNT}), .Empty(cam_in_fifo_Empty), .Full(cam_in_fifo_Full), 
            .RPReset(cam_in_fifo_RPReset), .RdClock(cam_in_fifo_RdClock), 
            .RdEn(cam_in_fifo_RdEn), .Reset(cam_in_fifo_Reset), .WrClock(cam_in_fifo_WrClock), 
            .WrEn(cam_in_fifo_WrEn));
    i2s_rx_fifo i2s_rx_fifo_inst (.Data({i2s_rx_fifo_Data}), .Q({i2s_rx_fifo_Q}), 
            .RCNT({i2s_rx_fifo_RCNT}), .WCNT({i2s_rx_fifo_WCNT}), .AlmostEmpty(i2s_rx_fifo_AlmostEmpty), 
            .Empty(i2s_rx_fifo_Empty), .Full(i2s_rx_fifo_Full), .RPReset(i2s_rx_fifo_RPReset), 
            .RdClock(i2s_rx_fifo_RdClock), .RdEn(i2s_rx_fifo_RdEn), .Reset(i2s_rx_fifo_Reset), 
            .WrClock(i2s_rx_fifo_WrClock), .WrEn(i2s_rx_fifo_WrEn));
    pll_clk pll_clk_inst (.CLKI(pll_clk_CLKI), .CLKOP(pll_clk_CLKOP), .CLKOS(pll_clk_CLKOS), 
            .LOCK(pll_clk_LOCK));
    slfifo_fifo slfifo_fifo_inst (.Data({slfifo_fifo_Data}), .Q({slfifo_fifo_Q}), 
            .AlmostFull(slfifo_fifo_AlmostFull), .Empty(slfifo_fifo_Empty), 
            .Full(slfifo_fifo_Full), .RPReset(slfifo_fifo_RPReset), .RdClock(slfifo_fifo_RdClock), 
            .RdEn(slfifo_fifo_RdEn), .Reset(slfifo_fifo_Reset), .WrClock(slfifo_fifo_WrClock), 
            .WrEn(slfifo_fifo_WrEn));
    
endmodule

