//Verilog instantiation template

ddr_ip _inst (.cam_in_fifo_Data(), .cam_in_fifo_Q(), .cam_in_fifo_RCNT(), 
       .cam_in_fifo_Empty(), .cam_in_fifo_Full(), .cam_in_fifo_RPReset(), 
       .cam_in_fifo_RdClock(), .cam_in_fifo_RdEn(), .cam_in_fifo_Reset(), 
       .cam_in_fifo_WrClock(), .cam_in_fifo_WrEn(), .pll_clk_CLKI(), .pll_clk_CLKOP(), 
       .pll_clk_CLKOS(), .pll_clk_LOCK(), .slfifo_fifo_Data(), .slfifo_fifo_Q(), 
       .slfifo_fifo_AlmostFull(), .slfifo_fifo_Empty(), .slfifo_fifo_Full(), 
       .slfifo_fifo_RPReset(), .slfifo_fifo_RdClock(), .slfifo_fifo_RdEn(), 
       .slfifo_fifo_Reset(), .slfifo_fifo_WrClock(), .slfifo_fifo_WrEn(), 
       .i2s_rx_fifo_Data(), .i2s_rx_fifo_Q(), .i2s_rx_fifo_RCNT(), .i2s_rx_fifo_WCNT(), 
       .i2s_rx_fifo_AlmostEmpty(), .i2s_rx_fifo_Empty(), .i2s_rx_fifo_Full(), 
       .i2s_rx_fifo_RPReset(), .i2s_rx_fifo_RdClock(), .i2s_rx_fifo_RdEn(), 
       .i2s_rx_fifo_Reset(), .i2s_rx_fifo_WrClock(), .i2s_rx_fifo_WrEn());