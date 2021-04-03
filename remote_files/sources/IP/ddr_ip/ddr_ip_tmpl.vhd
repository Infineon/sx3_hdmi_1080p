--VHDL instantiation template

component ddr_ip is
    port (cam_in_fifo_Data: in std_logic_vector(31 downto 0);
        cam_in_fifo_Q: out std_logic_vector(63 downto 0);
        cam_in_fifo_RCNT: out std_logic_vector(11 downto 0);
        i2s_rx_fifo_Data: in std_logic_vector(31 downto 0);
        i2s_rx_fifo_Q: out std_logic_vector(31 downto 0);
        i2s_rx_fifo_RCNT: out std_logic_vector(11 downto 0);
        i2s_rx_fifo_WCNT: out std_logic_vector(11 downto 0);
        slfifo_fifo_Data: in std_logic_vector(63 downto 0);
        slfifo_fifo_Q: out std_logic_vector(31 downto 0);
        cam_in_fifo_Empty: out std_logic;
        cam_in_fifo_Full: out std_logic;
        cam_in_fifo_RPReset: in std_logic;
        cam_in_fifo_RdClock: in std_logic;
        cam_in_fifo_RdEn: in std_logic;
        cam_in_fifo_Reset: in std_logic;
        cam_in_fifo_WrClock: in std_logic;
        cam_in_fifo_WrEn: in std_logic;
        i2s_rx_fifo_AlmostEmpty: out std_logic;
        i2s_rx_fifo_Empty: out std_logic;
        i2s_rx_fifo_Full: out std_logic;
        i2s_rx_fifo_RPReset: in std_logic;
        i2s_rx_fifo_RdClock: in std_logic;
        i2s_rx_fifo_RdEn: in std_logic;
        i2s_rx_fifo_Reset: in std_logic;
        i2s_rx_fifo_WrClock: in std_logic;
        i2s_rx_fifo_WrEn: in std_logic;
        pll_clk_CLKI: in std_logic;
        pll_clk_CLKOP: out std_logic;
        pll_clk_CLKOS: out std_logic;
        pll_clk_LOCK: out std_logic;
        slfifo_fifo_AlmostFull: out std_logic;
        slfifo_fifo_Empty: out std_logic;
        slfifo_fifo_Full: out std_logic;
        slfifo_fifo_RPReset: in std_logic;
        slfifo_fifo_RdClock: in std_logic;
        slfifo_fifo_RdEn: in std_logic;
        slfifo_fifo_Reset: in std_logic;
        slfifo_fifo_WrClock: in std_logic;
        slfifo_fifo_WrEn: in std_logic
    );
    
end component ddr_ip; -- sbp_module=true 
_inst: ddr_ip port map (cam_in_fifo_Data => __,cam_in_fifo_Q => __,cam_in_fifo_RCNT => __,
            cam_in_fifo_Empty => __,cam_in_fifo_Full => __,cam_in_fifo_RPReset => __,
            cam_in_fifo_RdClock => __,cam_in_fifo_RdEn => __,cam_in_fifo_Reset => __,
            cam_in_fifo_WrClock => __,cam_in_fifo_WrEn => __,pll_clk_CLKI => __,
            pll_clk_CLKOP => __,pll_clk_CLKOS => __,pll_clk_LOCK => __,slfifo_fifo_Data => __,
            slfifo_fifo_Q => __,slfifo_fifo_AlmostFull => __,slfifo_fifo_Empty => __,
            slfifo_fifo_Full => __,slfifo_fifo_RPReset => __,slfifo_fifo_RdClock => __,
            slfifo_fifo_RdEn => __,slfifo_fifo_Reset => __,slfifo_fifo_WrClock => __,
            slfifo_fifo_WrEn => __,i2s_rx_fifo_Data => __,i2s_rx_fifo_Q => __,
            i2s_rx_fifo_RCNT => __,i2s_rx_fifo_WCNT => __,i2s_rx_fifo_AlmostEmpty => __,
            i2s_rx_fifo_Empty => __,i2s_rx_fifo_Full => __,i2s_rx_fifo_RPReset => __,
            i2s_rx_fifo_RdClock => __,i2s_rx_fifo_RdEn => __,i2s_rx_fifo_Reset => __,
            i2s_rx_fifo_WrClock => __,i2s_rx_fifo_WrEn => __);
