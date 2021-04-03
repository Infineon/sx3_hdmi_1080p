// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.2.446
// Netlist written on Fri Apr 02 13:51:07 2021
//
// Verilog Description of module pll_clk
//

module pll_clk (CLKI, CLKOP, CLKOS, LOCK) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // g:/cypress_prj/interlaced_new/interlaced_rtl/compare/hdmi_rx_cypress/hdmi_rx_fhd_cust/ip/ddr_ip/pll_clk/pll_clk.v(8[8:15])
    input CLKI /* synthesis black_box_pad_pin=1 */ ;   // g:/cypress_prj/interlaced_new/interlaced_rtl/compare/hdmi_rx_cypress/hdmi_rx_fhd_cust/ip/ddr_ip/pll_clk/pll_clk.v(9[16:20])
    output CLKOP;   // g:/cypress_prj/interlaced_new/interlaced_rtl/compare/hdmi_rx_cypress/hdmi_rx_fhd_cust/ip/ddr_ip/pll_clk/pll_clk.v(10[17:22])
    output CLKOS;   // g:/cypress_prj/interlaced_new/interlaced_rtl/compare/hdmi_rx_cypress/hdmi_rx_fhd_cust/ip/ddr_ip/pll_clk/pll_clk.v(11[17:22])
    output LOCK;   // g:/cypress_prj/interlaced_new/interlaced_rtl/compare/hdmi_rx_cypress/hdmi_rx_fhd_cust/ip/ddr_ip/pll_clk/pll_clk.v(12[17:21])
    
    wire CLKOP /* synthesis is_clock=1 */ ;   // g:/cypress_prj/interlaced_new/interlaced_rtl/compare/hdmi_rx_cypress/hdmi_rx_fhd_cust/ip/ddr_ip/pll_clk/pll_clk.v(10[17:22])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // g:/cypress_prj/interlaced_new/interlaced_rtl/compare/hdmi_rx_cypress/hdmi_rx_fhd_cust/ip/ddr_ip/pll_clk/pll_clk.v(17[10:18])
    
    wire scuba_vlo, VCC_net;
    
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    IB Inst1_IB (.I(CLKI), .O(buf_CLKI)) /* synthesis IO_TYPE="LVDS", syn_instantiated=1 */ ;   // g:/cypress_prj/interlaced_new/interlaced_rtl/compare/hdmi_rx_cypress/hdmi_rx_fhd_cust/ip/ddr_ip/pll_clk/pll_clk.v(21[8:41])
    EHXPLLL PLLInst_0 (.CLKI(buf_CLKI), .CLKFB(CLKOP), .PHASESEL0(scuba_vlo), 
            .PHASESEL1(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), 
            .PHASELOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), 
            .RST(scuba_vlo), .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), 
            .ENCLKOS2(scuba_vlo), .ENCLKOS3(scuba_vlo), .CLKOP(CLKOP), 
            .CLKOS(CLKOS), .LOCK(LOCK)) /* synthesis FREQUENCY_PIN_CLKOS="100.000000", FREQUENCY_PIN_CLKOP="100.000000", FREQUENCY_PIN_CLKI="100.000000", ICP_CURRENT="9", LPF_RESISTOR="72", syn_instantiated=1 */ ;
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 6;
    defparam PLLInst_0.CLKOS_DIV = 6;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 5;
    defparam PLLInst_0.CLKOS_CPHASE = 5;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 2;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i85 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

