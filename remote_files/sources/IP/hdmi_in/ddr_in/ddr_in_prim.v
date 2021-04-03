// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Jan 08 13:29:40 2021
//
// Verilog Description of module ddr_in
//

module ddr_in (clkin, reset, sclk, datain, q) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(8[8:14])
    input clkin /* synthesis black_box_pad_pin=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(9[16:21])
    input reset;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(10[16:21])
    output sclk;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(12[17:21])
    input [15:0]datain;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(11[23:29])
    output [31:0]q;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(13[24:25])
    
    wire sclk /* synthesis is_clock=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(12[17:21])
    
    wire dataini_t15, dataini_t14, dataini_t13, dataini_t12, dataini_t11, 
        dataini_t10, dataini_t9, dataini_t8, dataini_t7, dataini_t6, 
        dataini_t5, dataini_t4, dataini_t3, dataini_t2, dataini_t1, 
        dataini_t0, buf_dataini15, buf_dataini14, buf_dataini13, buf_dataini12, 
        buf_dataini11, buf_dataini10, buf_dataini9, buf_dataini8, buf_dataini7, 
        buf_dataini6, buf_dataini5, buf_dataini4, buf_dataini3, buf_dataini2, 
        buf_dataini1, buf_dataini0, GND_net, VCC_net;
    
    IDDRX1F Inst2_IDDRX1F15 (.D(dataini_t15), .SCLK(sclk), .RST(reset), 
            .Q0(q[15]), .Q1(q[31])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F15.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F14 (.D(dataini_t14), .SCLK(sclk), .RST(reset), 
            .Q0(q[14]), .Q1(q[30])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F14.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F13 (.D(dataini_t13), .SCLK(sclk), .RST(reset), 
            .Q0(q[13]), .Q1(q[29])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F13.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F12 (.D(dataini_t12), .SCLK(sclk), .RST(reset), 
            .Q0(q[12]), .Q1(q[28])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F12.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F11 (.D(dataini_t11), .SCLK(sclk), .RST(reset), 
            .Q0(q[11]), .Q1(q[27])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F11.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F10 (.D(dataini_t10), .SCLK(sclk), .RST(reset), 
            .Q0(q[10]), .Q1(q[26])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F10.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F9 (.D(dataini_t9), .SCLK(sclk), .RST(reset), 
            .Q0(q[9]), .Q1(q[25])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F9.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F8 (.D(dataini_t8), .SCLK(sclk), .RST(reset), 
            .Q0(q[8]), .Q1(q[24])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F8.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F7 (.D(dataini_t7), .SCLK(sclk), .RST(reset), 
            .Q0(q[7]), .Q1(q[23])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F7.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F6 (.D(dataini_t6), .SCLK(sclk), .RST(reset), 
            .Q0(q[6]), .Q1(q[22])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F6.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F5 (.D(dataini_t5), .SCLK(sclk), .RST(reset), 
            .Q0(q[5]), .Q1(q[21])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F5.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F4 (.D(dataini_t4), .SCLK(sclk), .RST(reset), 
            .Q0(q[4]), .Q1(q[20])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F4.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F3 (.D(dataini_t3), .SCLK(sclk), .RST(reset), 
            .Q0(q[3]), .Q1(q[19])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F3.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F2 (.D(dataini_t2), .SCLK(sclk), .RST(reset), 
            .Q0(q[2]), .Q1(q[18])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F2.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F1 (.D(dataini_t1), .SCLK(sclk), .RST(reset), 
            .Q0(q[1]), .Q1(q[17])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F1.GSR = "ENABLED";
    IDDRX1F Inst2_IDDRX1F0 (.D(dataini_t0), .SCLK(sclk), .RST(reset), 
            .Q0(q[0]), .Q1(q[16])) /* synthesis syn_instantiated=1 */ ;
    defparam Inst2_IDDRX1F0.GSR = "ENABLED";
    DELAYG udel_dataini15 (.A(buf_dataini15), .Z(dataini_t15)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini15.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini15.DEL_VALUE = 0;
    DELAYG udel_dataini14 (.A(buf_dataini14), .Z(dataini_t14)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini14.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini14.DEL_VALUE = 0;
    DELAYG udel_dataini13 (.A(buf_dataini13), .Z(dataini_t13)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini13.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini13.DEL_VALUE = 0;
    DELAYG udel_dataini12 (.A(buf_dataini12), .Z(dataini_t12)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini12.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini12.DEL_VALUE = 0;
    DELAYG udel_dataini11 (.A(buf_dataini11), .Z(dataini_t11)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini11.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini11.DEL_VALUE = 0;
    DELAYG udel_dataini10 (.A(buf_dataini10), .Z(dataini_t10)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini10.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini10.DEL_VALUE = 0;
    DELAYG udel_dataini9 (.A(buf_dataini9), .Z(dataini_t9)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini9.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini9.DEL_VALUE = 0;
    DELAYG udel_dataini8 (.A(buf_dataini8), .Z(dataini_t8)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini8.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini8.DEL_VALUE = 0;
    DELAYG udel_dataini7 (.A(buf_dataini7), .Z(dataini_t7)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini7.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini7.DEL_VALUE = 0;
    DELAYG udel_dataini6 (.A(buf_dataini6), .Z(dataini_t6)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini6.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini6.DEL_VALUE = 0;
    DELAYG udel_dataini5 (.A(buf_dataini5), .Z(dataini_t5)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini5.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini5.DEL_VALUE = 0;
    DELAYG udel_dataini4 (.A(buf_dataini4), .Z(dataini_t4)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini4.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini4.DEL_VALUE = 0;
    DELAYG udel_dataini3 (.A(buf_dataini3), .Z(dataini_t3)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini3.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini3.DEL_VALUE = 0;
    DELAYG udel_dataini2 (.A(buf_dataini2), .Z(dataini_t2)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini2.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini2.DEL_VALUE = 0;
    DELAYG udel_dataini1 (.A(buf_dataini1), .Z(dataini_t1)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini1.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini1.DEL_VALUE = 0;
    DELAYG udel_dataini0 (.A(buf_dataini0), .Z(dataini_t0)) /* synthesis syn_instantiated=1 */ ;
    defparam udel_dataini0.DEL_MODE = "SCLK_CENTERED";
    defparam udel_dataini0.DEL_VALUE = 0;
    IB Inst1_IB15 (.I(datain[15]), .O(buf_dataini15)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(181[8:54])
    IB Inst1_IB14 (.I(datain[14]), .O(buf_dataini14)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(184[8:54])
    IB Inst1_IB13 (.I(datain[13]), .O(buf_dataini13)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(187[8:54])
    IB Inst1_IB12 (.I(datain[12]), .O(buf_dataini12)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(190[8:54])
    IB Inst1_IB11 (.I(datain[11]), .O(buf_dataini11)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(193[8:54])
    IB Inst1_IB10 (.I(datain[10]), .O(buf_dataini10)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(196[8:54])
    IB Inst1_IB9 (.I(datain[9]), .O(buf_dataini9)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(199[8:51])
    IB Inst1_IB8 (.I(datain[8]), .O(buf_dataini8)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(202[8:51])
    IB Inst1_IB7 (.I(datain[7]), .O(buf_dataini7)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(205[8:51])
    IB Inst1_IB6 (.I(datain[6]), .O(buf_dataini6)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(208[8:51])
    IB Inst1_IB5 (.I(datain[5]), .O(buf_dataini5)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(211[8:51])
    IB Inst1_IB4 (.I(datain[4]), .O(buf_dataini4)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(214[8:51])
    IB Inst1_IB3 (.I(datain[3]), .O(buf_dataini3)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(217[8:51])
    IB Inst1_IB2 (.I(datain[2]), .O(buf_dataini2)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(220[8:51])
    IB Inst1_IB1 (.I(datain[1]), .O(buf_dataini1)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(223[8:51])
    IB Inst1_IB0 (.I(datain[0]), .O(buf_dataini0)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(226[8:51])
    GSR GSR_INST (.GSR(VCC_net));
    VLO i74 (.Z(GND_net));
    IB Inst3_IB (.I(clkin), .O(sclk)) /* synthesis IO_TYPE="LVCMOS18", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/hdmi_in/ddr_in/ddr_in.v(82[8:43])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i75 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

