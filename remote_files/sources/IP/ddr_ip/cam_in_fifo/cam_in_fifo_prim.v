// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Jan 08 13:27:58 2021
//
// Verilog Description of module cam_in_fifo
//

module cam_in_fifo (Data, WrClock, RdClock, WrEn, RdEn, Reset, RPReset, 
            Q, RCNT, Empty, Full, AlmostEmpty) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(8[8:19])
    input [31:0]Data;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(10[23:27])
    input WrClock;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(11[16:23])
    input RdClock;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(12[16:23])
    input WrEn;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(13[16:20])
    input RdEn;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(14[16:20])
    input Reset;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(15[16:21])
    input RPReset;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(16[16:23])
    output [63:0]Q;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(17[24:25])
    output [11:0]RCNT;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(18[24:28])
    output Empty;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(19[17:22])
    output Full;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(20[17:21])
    output AlmostEmpty;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(21[17:28])
    
    wire WrClock /* synthesis is_clock=1, SET_AS_NETWORK=WrClock */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(11[16:23])
    wire RdClock /* synthesis is_clock=1, SET_AS_NETWORK=RdClock */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(12[16:23])
    
    wire invout_1, invout_0, w_g2b_xor_cluster_2_1, w_g2b_xor_cluster_2, 
        w_g2b_xor_cluster_1, r_g2b_xor_cluster_2_1, r_g2b_xor_cluster_2, 
        r_g2b_xor_cluster_1, w_gdata_1, w_gdata_2, w_gdata_3, w_gdata_4, 
        w_gdata_5, w_gdata_6, w_gdata_7, w_gdata_8, w_gdata_9, w_gdata_10, 
        w_gdata_11, wptr_0, wptr_1, wptr_2, wptr_3, wptr_4, wptr_5, 
        wptr_6, wptr_7, wptr_8, wptr_9, wptr_10, wptr_11, wptr_12, 
        r_gdata_0, r_gdata_1, r_gdata_2, r_gdata_3, r_gdata_4, r_gdata_5, 
        r_gdata_6, r_gdata_7, r_gdata_8, r_gdata_9, r_gdata_10, rptr_11, 
        w_gcount_1, w_gcount_2, w_gcount_3, w_gcount_4, w_gcount_5, 
        w_gcount_6, w_gcount_7, w_gcount_8, w_gcount_9, w_gcount_10, 
        w_gcount_11, w_gcount_12, r_gcount_0, r_gcount_1, r_gcount_2, 
        r_gcount_3, r_gcount_4, r_gcount_5, r_gcount_6, r_gcount_7, 
        r_gcount_8, r_gcount_9, r_gcount_10, r_gcount_11, w_gcount_r21, 
        w_gcount_r1, w_gcount_r22, w_gcount_r2, w_gcount_r23, w_gcount_r3, 
        w_gcount_r24, w_gcount_r4, w_gcount_r25, w_gcount_r5, w_gcount_r26, 
        w_gcount_r6, w_gcount_r27, w_gcount_r7, w_gcount_r28, w_gcount_r8, 
        w_gcount_r29, w_gcount_r9, w_gcount_r210, w_gcount_r10, w_gcount_r211, 
        w_gcount_r11, w_gcount_r212, w_gcount_r12, r_gcount_w20, r_gcount_w0, 
        r_gcount_w21, r_gcount_w1, r_gcount_w22, r_gcount_w2, r_gcount_w23, 
        r_gcount_w3, r_gcount_w24, r_gcount_w4, r_gcount_w25, r_gcount_w5, 
        r_gcount_w26, r_gcount_w6, r_gcount_w27, r_gcount_w7, r_gcount_w28, 
        r_gcount_w8, r_gcount_w29, r_gcount_w9, r_gcount_w210, r_gcount_w10, 
        r_gcount_w211, r_gcount_w11, rRst, iwcount_0, iwcount_1, w_gctr_ci, 
        iwcount_2, iwcount_3, co0, iwcount_4, iwcount_5, co1, iwcount_6, 
        iwcount_7, co2, iwcount_8, iwcount_9, co3, iwcount_10, iwcount_11, 
        co4, iwcount_12, co5, wcount_12, ircount_0, ircount_1, r_gctr_ci, 
        ircount_2, ircount_3, co0_1, ircount_4, ircount_5, co1_1, 
        ircount_6, ircount_7, co2_1, ircount_8, ircount_9, co3_1, 
        ircount_10, ircount_11, co4_1, rcount_11, rfill_sub_0, rptr_0, 
        precin, rfill_sub_1, rfill_sub_2, rptr_2, rptr_1, co0_2, 
        rfill_sub_3, rfill_sub_4, rptr_4, rptr_3, co1_2, rfill_sub_5, 
        rfill_sub_6, rptr_6, rptr_5, co2_2, rfill_sub_7, rfill_sub_8, 
        rptr_8, rptr_7, co3_2, rfill_sub_9, rfill_sub_10, rptr_10, 
        rptr_9, co4_2, rfill_sub_11, rfill_sub_msb, co5_2, cmp_ci, 
        rcount_0, rcount_1, co0_3, rcount_2, rcount_3, co1_3, rcount_4, 
        rcount_5, co2_3, rcount_6, rcount_7, co3_3, rcount_8, rcount_9, 
        co4_3, empty_cmp_clr, rcount_10, empty_cmp_set, empty_d, empty_d_c, 
        wren_i, cmp_ci_1, rcount_w0, wcount_0, wcount_1, co0_4, 
        rcount_w1, rcount_w2, wcount_2, wcount_3, co1_4, rcount_w3, 
        rcount_w4, wcount_4, wcount_5, co2_4, rcount_w5, rcount_w6, 
        wcount_6, wcount_7, co3_4, rcount_w7, r_g2b_xor_cluster_0, 
        wcount_8, wcount_9, co4_4, rcount_w9, rcount_w10, wcount_10, 
        wcount_11, co5_3, full_cmp_clr, full_cmp_set, full_d, full_d_c, 
        iae_setcount_0, iae_setcount_1, ae_set_ctr_ci, iae_setcount_2, 
        iae_setcount_3, co0_5, iae_setcount_4, iae_setcount_5, co1_5, 
        iae_setcount_6, iae_setcount_7, co2_5, iae_setcount_8, iae_setcount_9, 
        co3_5, iae_setcount_10, iae_setcount_11, co4_5, ae_setcount_11, 
        rden_i, cmp_ci_2, wcount_r1, wcount_r2, ae_setcount_0, ae_setcount_1, 
        co0_6, wcount_r3, wcount_r4, ae_setcount_2, ae_setcount_3, 
        co1_6, wcount_r5, wcount_r6, ae_setcount_4, ae_setcount_5, 
        co2_6, wcount_r7, wcount_r8, ae_setcount_6, ae_setcount_7, 
        co3_6, w_g2b_xor_cluster_0, wcount_r10, ae_setcount_8, ae_setcount_9, 
        co4_6, wcount_r11, ae_set_cmp_clr, ae_setcount_10, ae_set_cmp_set, 
        ae_set_d, scuba_vhi, scuba_vlo, ae_set_d_c;
    
    AND2 AND2_t26 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(332[10:55])
    OR2 OR2_t24 (.A(Reset), .B(RPReset), .Z(rRst)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(340[9:51])
    FD1P3DX FF_150 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(854[13] 855[22])
    defparam FF_150.GSR = "ENABLED";
    FD1P3DX FF_149 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(858[13] 859[22])
    defparam FF_149.GSR = "ENABLED";
    FD1P3DX FF_148 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(862[13] 863[22])
    defparam FF_148.GSR = "ENABLED";
    FD1P3DX FF_147 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(866[13] 867[22])
    defparam FF_147.GSR = "ENABLED";
    FD1P3DX FF_146 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(870[13] 871[22])
    defparam FF_146.GSR = "ENABLED";
    FD1P3DX FF_145 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(874[13] 875[22])
    defparam FF_145.GSR = "ENABLED";
    FD1P3DX FF_144 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(878[13] 879[22])
    defparam FF_144.GSR = "ENABLED";
    FD1P3DX FF_143 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(882[13] 883[22])
    defparam FF_143.GSR = "ENABLED";
    FD1P3DX FF_142 (.D(iwcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(886[13] 887[22])
    defparam FF_142.GSR = "ENABLED";
    FD1P3DX FF_141 (.D(iwcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(890[13] 891[23])
    defparam FF_141.GSR = "ENABLED";
    FD1P3DX FF_140 (.D(iwcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(894[13] 895[23])
    defparam FF_140.GSR = "ENABLED";
    FD1P3DX FF_139 (.D(iwcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(898[13] 899[23])
    defparam FF_139.GSR = "ENABLED";
    FD1P3DX FF_137 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(906[13] 907[24])
    defparam FF_137.GSR = "ENABLED";
    INV INV_1 (.A(Full), .Z(invout_1));
    FD1P3DX FF_136 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(910[13] 911[24])
    defparam FF_136.GSR = "ENABLED";
    FD1P3DX FF_135 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(914[13] 915[24])
    defparam FF_135.GSR = "ENABLED";
    FD1P3DX FF_134 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(918[13] 919[24])
    defparam FF_134.GSR = "ENABLED";
    FD1P3DX FF_133 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(922[13] 923[24])
    defparam FF_133.GSR = "ENABLED";
    FD1P3DX FF_132 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(926[13] 927[24])
    defparam FF_132.GSR = "ENABLED";
    FD1P3DX FF_131 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(930[13] 931[24])
    defparam FF_131.GSR = "ENABLED";
    FD1P3DX FF_130 (.D(w_gdata_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(934[13] 935[24])
    defparam FF_130.GSR = "ENABLED";
    FD1P3DX FF_129 (.D(w_gdata_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(938[13] 939[24])
    defparam FF_129.GSR = "ENABLED";
    FD1P3DX FF_128 (.D(w_gdata_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(942[13] 943[25])
    defparam FF_128.GSR = "ENABLED";
    FD1P3DX FF_127 (.D(w_gdata_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(946[13] 947[25])
    defparam FF_127.GSR = "ENABLED";
    FD1P3DX FF_126 (.D(wcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(950[13] 951[25])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(954[13] 955[20])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(958[13] 959[20])
    defparam FF_124.GSR = "ENABLED";
    FD1P3DX FF_123 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(962[13] 963[20])
    defparam FF_123.GSR = "ENABLED";
    FD1P3DX FF_122 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(966[13] 967[20])
    defparam FF_122.GSR = "ENABLED";
    FD1P3DX FF_121 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(970[13] 971[20])
    defparam FF_121.GSR = "ENABLED";
    FD1P3DX FF_120 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(974[13] 975[20])
    defparam FF_120.GSR = "ENABLED";
    FD1P3DX FF_119 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(978[13] 979[20])
    defparam FF_119.GSR = "ENABLED";
    FD1P3DX FF_118 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(982[13] 983[20])
    defparam FF_118.GSR = "ENABLED";
    FD1P3DX FF_117 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(986[13] 987[20])
    defparam FF_117.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(990[13] 991[20])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_115 (.D(wcount_10), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(994[13] 995[21])
    defparam FF_115.GSR = "ENABLED";
    FD1P3DX FF_114 (.D(wcount_11), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(998[13] 999[21])
    defparam FF_114.GSR = "ENABLED";
    FD1P3DX FF_113 (.D(wcount_12), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1002[13] 1003[21])
    defparam FF_113.GSR = "ENABLED";
    FD1P3BX FF_112 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1006[13] 1007[22])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1010[13] 1011[22])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1014[13] 1015[22])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1018[13] 1019[22])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1022[13] 1023[22])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1026[13] 1027[22])
    defparam FF_107.GSR = "ENABLED";
    FD1P3DX FF_106 (.D(ircount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1030[13] 1031[22])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(ircount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1034[13] 1035[22])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(ircount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1038[13] 1039[22])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(ircount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1042[13] 1043[22])
    defparam FF_103.GSR = "ENABLED";
    FD1P3DX FF_102 (.D(ircount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1046[13] 1047[23])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(ircount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1050[13] 1051[23])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1054[13] 1055[24])
    defparam FF_100.GSR = "ENABLED";
    FD1P3DX FF_99 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1058[13] 1059[24])
    defparam FF_99.GSR = "ENABLED";
    FD1P3DX FF_98 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1062[13] 1063[24])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1066[13] 1067[24])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1070[13] 1071[24])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1074[13] 1075[24])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1078[13] 1079[24])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1082[13] 1083[24])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(r_gdata_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1086[13] 1087[24])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(r_gdata_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1090[13] 1091[24])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(r_gdata_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1094[13] 1095[25])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(rcount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1098[13] 1099[25])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1102[13:83])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1105[13:83])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1108[13:83])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1111[13:83])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1114[13:83])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1117[13:83])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(rcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1120[13:83])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(rcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1123[13:83])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1126[13:83])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(rcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1129[13:83])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(rcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1132[13] 1133[21])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(rcount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1136[13] 1137[21])
    defparam FF_77.GSR = "ENABLED";
    FD1S3DX FF_75 (.D(w_gcount_1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1143[13:78])
    defparam FF_75.GSR = "ENABLED";
    AND2 AND2_t25 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(336[10:55])
    FD1S3DX FF_74 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1146[13:78])
    defparam FF_74.GSR = "ENABLED";
    FD1S3DX FF_73 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1149[13:78])
    defparam FF_73.GSR = "ENABLED";
    FD1S3DX FF_72 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1152[13:78])
    defparam FF_72.GSR = "ENABLED";
    FD1S3DX FF_71 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1155[13:78])
    defparam FF_71.GSR = "ENABLED";
    FD1S3DX FF_70 (.D(w_gcount_6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1158[13:78])
    defparam FF_70.GSR = "ENABLED";
    FD1S3DX FF_69 (.D(w_gcount_7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1161[13:78])
    defparam FF_69.GSR = "ENABLED";
    FD1S3DX FF_68 (.D(w_gcount_8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1164[13:78])
    defparam FF_68.GSR = "ENABLED";
    FD1S3DX FF_67 (.D(w_gcount_9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1167[13:78])
    defparam FF_67.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(w_gcount_10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1170[13:80])
    defparam FF_66.GSR = "ENABLED";
    FD1S3DX FF_65 (.D(w_gcount_11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1173[13:80])
    defparam FF_65.GSR = "ENABLED";
    FD1S3DX FF_64 (.D(w_gcount_12), .CK(RdClock), .CD(Reset), .Q(w_gcount_r12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1176[13:80])
    defparam FF_64.GSR = "ENABLED";
    FD1S3DX FF_63 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1179[13:77])
    defparam FF_63.GSR = "ENABLED";
    FD1S3DX FF_62 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1182[13:77])
    defparam FF_62.GSR = "ENABLED";
    FD1S3DX FF_61 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1185[13:77])
    defparam FF_61.GSR = "ENABLED";
    FD1S3DX FF_60 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1188[13:77])
    defparam FF_60.GSR = "ENABLED";
    FD1S3DX FF_59 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1191[13:77])
    defparam FF_59.GSR = "ENABLED";
    FD1S3DX FF_58 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1194[13:77])
    defparam FF_58.GSR = "ENABLED";
    FD1S3DX FF_57 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1197[13:77])
    defparam FF_57.GSR = "ENABLED";
    FD1S3DX FF_56 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1200[13:77])
    defparam FF_56.GSR = "ENABLED";
    FD1S3DX FF_55 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1203[13:77])
    defparam FF_55.GSR = "ENABLED";
    FD1S3DX FF_54 (.D(r_gcount_9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1206[13:77])
    defparam FF_54.GSR = "ENABLED";
    FD1S3DX FF_53 (.D(r_gcount_10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1209[13:79])
    defparam FF_53.GSR = "ENABLED";
    FD1S3DX FF_52 (.D(r_gcount_11), .CK(WrClock), .CD(rRst), .Q(r_gcount_w11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1212[13:79])
    defparam FF_52.GSR = "ENABLED";
    FD1S3DX FF_50 (.D(w_gcount_r1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1218[13:80])
    defparam FF_50.GSR = "ENABLED";
    INV INV_0 (.A(Empty), .Z(invout_0));
    FD1S3DX FF_49 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1221[13:80])
    defparam FF_49.GSR = "ENABLED";
    FD1S3DX FF_48 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1224[13:80])
    defparam FF_48.GSR = "ENABLED";
    FD1S3DX FF_47 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1227[13:80])
    defparam FF_47.GSR = "ENABLED";
    FD1S3DX FF_46 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1230[13:80])
    defparam FF_46.GSR = "ENABLED";
    FD1S3DX FF_45 (.D(w_gcount_r6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1233[13:80])
    defparam FF_45.GSR = "ENABLED";
    FD1S3DX FF_44 (.D(w_gcount_r7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1236[13:80])
    defparam FF_44.GSR = "ENABLED";
    FD1S3DX FF_43 (.D(w_gcount_r8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1239[13:80])
    defparam FF_43.GSR = "ENABLED";
    FD1S3DX FF_42 (.D(w_gcount_r9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1242[13:80])
    defparam FF_42.GSR = "ENABLED";
    FD1S3DX FF_41 (.D(w_gcount_r10), .CK(RdClock), .CD(Reset), .Q(w_gcount_r210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1245[13:82])
    defparam FF_41.GSR = "ENABLED";
    FD1S3DX FF_40 (.D(w_gcount_r11), .CK(RdClock), .CD(Reset), .Q(w_gcount_r211)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1248[13:82])
    defparam FF_40.GSR = "ENABLED";
    FD1S3DX FF_39 (.D(w_gcount_r12), .CK(RdClock), .CD(Reset), .Q(w_gcount_r212)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1251[13:82])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1254[13:79])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_37 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1257[13:79])
    defparam FF_37.GSR = "ENABLED";
    FD1S3DX FF_36 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1260[13:79])
    defparam FF_36.GSR = "ENABLED";
    FD1S3DX FF_35 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1263[13:79])
    defparam FF_35.GSR = "ENABLED";
    FD1S3DX FF_34 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1266[13:79])
    defparam FF_34.GSR = "ENABLED";
    FD1S3DX FF_33 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1269[13:79])
    defparam FF_33.GSR = "ENABLED";
    FD1S3DX FF_32 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1272[13:79])
    defparam FF_32.GSR = "ENABLED";
    FD1S3DX FF_31 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1275[13:79])
    defparam FF_31.GSR = "ENABLED";
    FD1S3DX FF_30 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1278[13:79])
    defparam FF_30.GSR = "ENABLED";
    FD1S3DX FF_29 (.D(r_gcount_w9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1281[13:79])
    defparam FF_29.GSR = "ENABLED";
    FD1S3DX FF_28 (.D(r_gcount_w10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1284[13:81])
    defparam FF_28.GSR = "ENABLED";
    FD1S3DX FF_27 (.D(r_gcount_w11), .CK(WrClock), .CD(rRst), .Q(r_gcount_w211)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1287[13:81])
    defparam FF_27.GSR = "ENABLED";
    FD1S3DX FF_26 (.D(rfill_sub_0), .CK(RdClock), .CD(rRst), .Q(RCNT[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1290[13:74])
    defparam FF_26.GSR = "ENABLED";
    FD1S3DX FF_25 (.D(rfill_sub_1), .CK(RdClock), .CD(rRst), .Q(RCNT[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1293[13:74])
    defparam FF_25.GSR = "ENABLED";
    FD1S3DX FF_24 (.D(rfill_sub_2), .CK(RdClock), .CD(rRst), .Q(RCNT[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1296[13:74])
    defparam FF_24.GSR = "ENABLED";
    FD1S3DX FF_23 (.D(rfill_sub_3), .CK(RdClock), .CD(rRst), .Q(RCNT[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1299[13:74])
    defparam FF_23.GSR = "ENABLED";
    FD1S3DX FF_22 (.D(rfill_sub_4), .CK(RdClock), .CD(rRst), .Q(RCNT[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1302[13:74])
    defparam FF_22.GSR = "ENABLED";
    FD1S3DX FF_21 (.D(rfill_sub_5), .CK(RdClock), .CD(rRst), .Q(RCNT[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1305[13:74])
    defparam FF_21.GSR = "ENABLED";
    FD1S3DX FF_20 (.D(rfill_sub_6), .CK(RdClock), .CD(rRst), .Q(RCNT[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1308[13:74])
    defparam FF_20.GSR = "ENABLED";
    FD1S3DX FF_19 (.D(rfill_sub_7), .CK(RdClock), .CD(rRst), .Q(RCNT[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1311[13:74])
    defparam FF_19.GSR = "ENABLED";
    FD1S3DX FF_18 (.D(rfill_sub_8), .CK(RdClock), .CD(rRst), .Q(RCNT[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1314[13:74])
    defparam FF_18.GSR = "ENABLED";
    FD1S3DX FF_17 (.D(rfill_sub_9), .CK(RdClock), .CD(rRst), .Q(RCNT[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1317[13:74])
    defparam FF_17.GSR = "ENABLED";
    FD1S3DX FF_16 (.D(rfill_sub_10), .CK(RdClock), .CD(rRst), .Q(RCNT[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1320[13:76])
    defparam FF_16.GSR = "ENABLED";
    FD1S3DX FF_15 (.D(rfill_sub_11), .CK(RdClock), .CD(rRst), .Q(RCNT[11])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1323[13:76])
    defparam FF_15.GSR = "ENABLED";
    FD1S3BX FF_14 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1326[13:70])
    defparam FF_14.GSR = "ENABLED";
    FD1S3DX FF_13 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1329[13:69])
    defparam FF_13.GSR = "ENABLED";
    FD1P3BX FF_12 (.D(iae_setcount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1332[13] 1333[27])
    defparam FF_12.GSR = "ENABLED";
    FD1P3BX FF_11 (.D(iae_setcount_1), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1336[13] 1337[27])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(iae_setcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1340[13] 1341[27])
    defparam FF_10.GSR = "ENABLED";
    FD1P3BX FF_9 (.D(iae_setcount_3), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1344[13] 1345[27])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(iae_setcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1348[13] 1349[27])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(iae_setcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1352[13] 1353[27])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(iae_setcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1356[13] 1357[27])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(iae_setcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1360[13] 1361[27])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(iae_setcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1364[13] 1365[27])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(iae_setcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1368[13] 1369[27])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(iae_setcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1372[13] 1373[28])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(iae_setcount_11), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1376[13] 1377[28])
    defparam FF_1.GSR = "ENABLED";
    FD1S3BX FF_0 (.D(ae_set_d), .CK(RdClock), .PD(rRst), .Q(AlmostEmpty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1380[13:74])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1387[11] 1389[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_gctr_ci), .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1395[11] 1397[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1403[11] 1405[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1411[11] 1413[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1419[11] 1421[63])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .COUT(co4), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1427[11] 1429[63])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C w_gctr_5 (.A0(wcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4), .COUT(co5), .S0(iwcount_10), .S1(iwcount_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1435[11] 1437[65])
    defparam w_gctr_5.INIT0 = 16'b0110011010101010;
    defparam w_gctr_5.INIT1 = 16'b0110011010101010;
    defparam w_gctr_5.INJECT1_0 = "NO";
    defparam w_gctr_5.INJECT1_1 = "NO";
    CCU2C w_gctr_6 (.A0(wcount_12), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co5), .S0(iwcount_12)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1443[11] 1445[55])
    defparam w_gctr_6.INIT0 = 16'b0110011010101010;
    defparam w_gctr_6.INIT1 = 16'b0110011010101010;
    defparam w_gctr_6.INJECT1_0 = "NO";
    defparam w_gctr_6.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1451[11] 1453[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_gctr_ci), .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1459[11] 1461[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1467[11] 1469[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1475[11] 1477[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1483[11] 1485[67])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .COUT(co4_1), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1491[11] 1493[67])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_5 (.A0(rcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_11), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_1), .S0(ircount_10), .S1(ircount_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1499[11] 1501[69])
    defparam r_gctr_5.INIT0 = 16'b0110011010101010;
    defparam r_gctr_5.INIT1 = 16'b0110011010101010;
    defparam r_gctr_5.INJECT1_0 = "NO";
    defparam r_gctr_5.INJECT1_1 = "NO";
    CCU2C precin_inst427 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(precin)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1507[11] 1509[61])
    defparam precin_inst427.INIT0 = 16'b0000000000000000;
    defparam precin_inst427.INIT1 = 16'b0000000000000000;
    defparam precin_inst427.INJECT1_0 = "NO";
    defparam precin_inst427.INJECT1_1 = "NO";
    CCU2C rfill_0 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r1), .B1(rptr_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(precin), .COUT(co0_2), .S1(rfill_sub_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1515[11] 1517[61])
    defparam rfill_0.INIT0 = 16'b1001100110101010;
    defparam rfill_0.INIT1 = 16'b1001100110101010;
    defparam rfill_0.INJECT1_0 = "NO";
    defparam rfill_0.INJECT1_1 = "NO";
    CCU2C rfill_1 (.A0(wcount_r2), .B0(rptr_1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r3), .B1(rptr_2), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_2), .COUT(co1_2), .S0(rfill_sub_1), .S1(rfill_sub_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1523[11] 1525[71])
    defparam rfill_1.INIT0 = 16'b1001100110101010;
    defparam rfill_1.INIT1 = 16'b1001100110101010;
    defparam rfill_1.INJECT1_0 = "NO";
    defparam rfill_1.INJECT1_1 = "NO";
    CCU2C rfill_2 (.A0(wcount_r4), .B0(rptr_3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r5), .B1(rptr_4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_2), .COUT(co2_2), .S0(rfill_sub_3), .S1(rfill_sub_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1531[11] 1533[71])
    defparam rfill_2.INIT0 = 16'b1001100110101010;
    defparam rfill_2.INIT1 = 16'b1001100110101010;
    defparam rfill_2.INJECT1_0 = "NO";
    defparam rfill_2.INJECT1_1 = "NO";
    CCU2C rfill_3 (.A0(wcount_r6), .B0(rptr_5), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r7), .B1(rptr_6), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_2), .COUT(co3_2), .S0(rfill_sub_5), .S1(rfill_sub_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1539[11] 1541[71])
    defparam rfill_3.INIT0 = 16'b1001100110101010;
    defparam rfill_3.INIT1 = 16'b1001100110101010;
    defparam rfill_3.INJECT1_0 = "NO";
    defparam rfill_3.INJECT1_1 = "NO";
    CCU2C rfill_4 (.A0(wcount_r8), .B0(rptr_7), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(w_g2b_xor_cluster_0), .B1(rptr_8), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_2), .COUT(co4_2), .S0(rfill_sub_7), .S1(rfill_sub_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1547[11] 1549[71])
    defparam rfill_4.INIT0 = 16'b1001100110101010;
    defparam rfill_4.INIT1 = 16'b1001100110101010;
    defparam rfill_4.INJECT1_0 = "NO";
    defparam rfill_4.INJECT1_1 = "NO";
    CCU2C rfill_5 (.A0(wcount_r10), .B0(rptr_9), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r11), .B1(rptr_10), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_2), .COUT(co5_2), .S0(rfill_sub_9), .S1(rfill_sub_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1555[11] 1557[72])
    defparam rfill_5.INIT0 = 16'b1001100110101010;
    defparam rfill_5.INIT1 = 16'b1001100110101010;
    defparam rfill_5.INJECT1_0 = "NO";
    defparam rfill_5.INJECT1_1 = "NO";
    CCU2C rfill_6 (.A0(rfill_sub_msb), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_2), .S0(rfill_sub_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1563[11] 1565[56])
    defparam rfill_6.INIT0 = 16'b1001100110101010;
    defparam rfill_6.INIT1 = 16'b1001100110101010;
    defparam rfill_6.INJECT1_0 = "NO";
    defparam rfill_6.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1571[11] 1573[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r1), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_1), .B1(wcount_r2), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci), .COUT(co0_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1579[11] 1581[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r3), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_3), .B1(wcount_r4), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1587[11] 1589[49])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r5), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_5), .B1(wcount_r6), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1595[11] 1597[49])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r7), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_7), .B1(wcount_r8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1603[11] 1605[49])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(rcount_8), .B0(w_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_9), .B1(wcount_r10), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_3), .COUT(co4_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1611[11] 1613[65])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_5 (.A0(rcount_10), .B0(wcount_r11), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(empty_cmp_set), .B1(empty_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_3), .COUT(empty_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1619[11] 1621[69])
    defparam empty_cmp_5.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_5.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_5.INJECT1_0 = "NO";
    defparam empty_cmp_5.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1627[11] 1629[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1635[11] 1637[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(rcount_w0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1643[11] 1645[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(rcount_w2), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_4), .COUT(co1_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1651[11] 1653[49])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(rcount_w4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_4), .COUT(co2_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1659[11] 1661[49])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w5), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(rcount_w6), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_4), .COUT(co3_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1667[11] 1669[49])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(wcount_8), .B0(rcount_w7), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(r_g2b_xor_cluster_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_4), .COUT(co4_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1675[11] 1677[49])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C full_cmp_5 (.A0(wcount_10), .B0(rcount_w9), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_11), .B1(rcount_w10), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_4), .COUT(co5_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1683[11] 1685[49])
    defparam full_cmp_5.INIT0 = 16'b1001100110101010;
    defparam full_cmp_5.INIT1 = 16'b1001100110101010;
    defparam full_cmp_5.INJECT1_0 = "NO";
    defparam full_cmp_5.INJECT1_1 = "NO";
    CCU2C full_cmp_6 (.A0(full_cmp_set), .B0(full_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_3), .COUT(full_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1691[11] 1693[68])
    defparam full_cmp_6.INIT0 = 16'b1001100110101010;
    defparam full_cmp_6.INIT1 = 16'b1001100110101010;
    defparam full_cmp_6.INJECT1_0 = "NO";
    defparam full_cmp_6.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1699[11] 1701[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_set_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1707[11] 1709[68])
    defparam ae_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INJECT1_0 = "NO";
    defparam ae_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_0 (.A0(ae_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_set_ctr_ci), .COUT(co0_5), .S0(iae_setcount_0), 
          .S1(iae_setcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1715[11] 1718[22])
    defparam ae_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INJECT1_0 = "NO";
    defparam ae_set_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_1 (.A0(ae_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_5), .COUT(co1_5), .S0(iae_setcount_2), 
          .S1(iae_setcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1724[11] 1727[22])
    defparam ae_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INJECT1_0 = "NO";
    defparam ae_set_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_2 (.A0(ae_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_5), .COUT(co2_5), .S0(iae_setcount_4), 
          .S1(iae_setcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1733[11] 1736[22])
    defparam ae_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INJECT1_0 = "NO";
    defparam ae_set_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_3 (.A0(ae_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_5), .COUT(co3_5), .S0(iae_setcount_6), 
          .S1(iae_setcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1742[11] 1745[22])
    defparam ae_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INJECT1_0 = "NO";
    defparam ae_set_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_4 (.A0(ae_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_5), .COUT(co4_5), .S0(iae_setcount_8), 
          .S1(iae_setcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1751[11] 1754[22])
    defparam ae_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INJECT1_0 = "NO";
    defparam ae_set_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_5 (.A0(ae_setcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_11), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_5), .S0(iae_setcount_10), .S1(iae_setcount_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1760[11] 1763[22])
    defparam ae_set_ctr_5.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_5.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_5.INJECT1_0 = "NO";
    defparam ae_set_ctr_5.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1769[11] 1771[47])
    defparam ae_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_0 (.A0(ae_setcount_0), .B0(wcount_r1), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(wcount_r2), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_2), .COUT(co0_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1777[11] 1779[68])
    defparam ae_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INJECT1_0 = "NO";
    defparam ae_set_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_1 (.A0(ae_setcount_2), .B0(wcount_r3), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(wcount_r4), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_6), .COUT(co1_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1785[11] 1787[65])
    defparam ae_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INJECT1_0 = "NO";
    defparam ae_set_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_2 (.A0(ae_setcount_4), .B0(wcount_r5), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(wcount_r6), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_6), .COUT(co2_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1793[11] 1795[65])
    defparam ae_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INJECT1_0 = "NO";
    defparam ae_set_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_3 (.A0(ae_setcount_6), .B0(wcount_r7), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(wcount_r8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_6), .COUT(co3_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1801[11] 1803[65])
    defparam ae_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INJECT1_0 = "NO";
    defparam ae_set_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_4 (.A0(ae_setcount_8), .B0(w_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_9), .B1(wcount_r10), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_6), .COUT(co4_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1809[11] 1811[65])
    defparam ae_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INJECT1_0 = "NO";
    defparam ae_set_cmp_4.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_5 (.A0(ae_setcount_10), .B0(wcount_r11), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_set_cmp_set), .B1(ae_set_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_6), .COUT(ae_set_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1817[11] 1819[70])
    defparam ae_set_cmp_5.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_5.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_5.INJECT1_0 = "NO";
    defparam ae_set_cmp_5.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a2 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_set_d_c), .S0(ae_set_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(1829[11] 1831[57])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    XOR2 XOR2_t22 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(344[10:62])
    XOR2 XOR2_t21 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(346[10:62])
    XOR2 XOR2_t20 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(348[10:62])
    XOR2 XOR2_t19 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(350[10:62])
    XOR2 XOR2_t18 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(352[10:62])
    XOR2 XOR2_t17 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(354[10:62])
    XOR2 XOR2_t16 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(356[10:62])
    XOR2 XOR2_t15 (.A(wcount_8), .B(wcount_9), .Z(w_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(358[10:62])
    XOR2 XOR2_t14 (.A(wcount_9), .B(wcount_10), .Z(w_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(360[10:63])
    XOR2 XOR2_t13 (.A(wcount_10), .B(wcount_11), .Z(w_gdata_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(362[10:65])
    XOR2 XOR2_t12 (.A(wcount_11), .B(wcount_12), .Z(w_gdata_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(364[10:65])
    XOR2 XOR2_t11 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(366[10:62])
    XOR2 XOR2_t10 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(368[10:62])
    XOR2 XOR2_t9 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(370[10:61])
    XOR2 XOR2_t8 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(372[10:61])
    XOR2 XOR2_t7 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(374[10:61])
    XOR2 XOR2_t6 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(376[10:61])
    XOR2 XOR2_t5 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(378[10:61])
    XOR2 XOR2_t4 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(380[10:61])
    XOR2 XOR2_t3 (.A(rcount_8), .B(rcount_9), .Z(r_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(382[10:61])
    XOR2 XOR2_t2 (.A(rcount_9), .B(rcount_10), .Z(r_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(384[10:62])
    XOR2 XOR2_t1 (.A(rcount_10), .B(rcount_11), .Z(r_gdata_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(386[10:64])
    ROM16X1A LUT4_34 (.AD0(w_gcount_r212), .AD1(w_gcount_r211), .AD2(w_gcount_r210), 
            .AD3(w_gcount_r29), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_34.initval = 16'b0110100110010110;
    ROM16X1A LUT4_33 (.AD0(w_gcount_r28), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_33.initval = 16'b0110100110010110;
    ROM16X1A LUT4_32 (.AD0(w_gcount_r24), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_32.initval = 16'b0110100110010110;
    ROM16X1A LUT4_31 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r212), 
            .AD3(w_gcount_r211), .DO0(wcount_r11)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_31.initval = 16'b0110100110010110;
    ROM16X1A LUT4_30 (.AD0(scuba_vlo), .AD1(w_gcount_r212), .AD2(w_gcount_r211), 
            .AD3(w_gcount_r210), .DO0(wcount_r10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_30.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(wcount_r11), .AD1(w_gcount_r210), .AD2(w_gcount_r29), 
            .AD3(w_gcount_r28), .DO0(wcount_r8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(wcount_r10), .AD1(w_gcount_r29), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(scuba_vlo), .AD1(w_gcount_r24), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(w_gcount_r24), .AD1(w_gcount_r23), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(scuba_vlo), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(w_g2b_xor_cluster_2_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(scuba_vlo), .AD1(w_g2b_xor_cluster_2_1), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(scuba_vlo), .AD1(w_g2b_xor_cluster_2), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(r_gcount_w211), .AD1(r_gcount_w210), .AD2(r_gcount_w29), 
            .AD3(r_gcount_w28), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(r_gcount_w27), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(r_gcount_w23), .AD1(r_gcount_w22), .AD2(r_gcount_w21), 
            .AD3(r_gcount_w20), .DO0(r_g2b_xor_cluster_2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w211), 
            .AD3(r_gcount_w210), .DO0(rcount_w10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(scuba_vlo), .AD1(r_gcount_w211), .AD2(r_gcount_w210), 
            .AD3(r_gcount_w29), .DO0(rcount_w9)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(rcount_w10), .AD1(r_gcount_w29), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(rcount_w9), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0110100110010110;
    ROM16X1A LUT4_12 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(rcount_w5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_12.initval = 16'b0110100110010110;
    ROM16X1A LUT4_11 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_11.initval = 16'b0110100110010110;
    ROM16X1A LUT4_10 (.AD0(scuba_vlo), .AD1(r_gcount_w23), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0110100110010110;
    ROM16X1A LUT4_9 (.AD0(r_gcount_w23), .AD1(r_gcount_w22), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0110100110010110;
    ROM16X1A LUT4_8 (.AD0(scuba_vlo), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(r_g2b_xor_cluster_2_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0110100110010110;
    ROM16X1A LUT4_7 (.AD0(scuba_vlo), .AD1(r_g2b_xor_cluster_2_1), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0110100110010110;
    ROM16X1A LUT4_6 (.AD0(scuba_vlo), .AD1(r_g2b_xor_cluster_2), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0110100110010110;
    XOR2 XOR2_t0 (.A(w_gcount_r212), .B(rptr_11), .Z(rfill_sub_msb)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(504[10:69])
    ROM16X1A LUT4_5 (.AD0(scuba_vlo), .AD1(w_gcount_r212), .AD2(rcount_11), 
            .AD3(rptr_11), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0000010000010000;
    ROM16X1A LUT4_4 (.AD0(scuba_vlo), .AD1(w_gcount_r212), .AD2(rcount_11), 
            .AD3(rptr_11), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0001000000000100;
    ROM16X1A LUT4_3 (.AD0(scuba_vlo), .AD1(r_gcount_w211), .AD2(wcount_12), 
            .AD3(wptr_12), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b0000000101000000;
    ROM16X1A LUT4_2 (.AD0(scuba_vlo), .AD1(r_gcount_w211), .AD2(wcount_12), 
            .AD3(wptr_12), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0100000000000001;
    ROM16X1A LUT4_1 (.AD0(rptr_11), .AD1(w_gcount_r212), .AD2(rcount_11), 
            .AD3(ae_setcount_11), .DO0(ae_set_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0001001111001000;
    ROM16X1A LUT4_0 (.AD0(rptr_11), .AD1(w_gcount_r212), .AD2(rcount_11), 
            .AD3(ae_setcount_11), .DO0(ae_set_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0010000000000100;
    DP16KD pdp_ram_0_0_7 (.DIA0(Data[0]), .DIA1(Data[1]), .DIA2(Data[2]), 
           .DIA3(Data[3]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(rptr_0), .ADB4(rptr_1), 
           .ADB5(rptr_2), .ADB6(rptr_3), .ADB7(rptr_4), .ADB8(rptr_5), 
           .ADB9(rptr_6), .ADB10(rptr_7), .ADB11(rptr_8), .ADB12(rptr_9), 
           .ADB13(rptr_10), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[0]), .DOB1(Q[1]), .DOB2(Q[2]), .DOB3(Q[3]), 
           .DOB4(Q[32]), .DOB5(Q[33]), .DOB6(Q[34]), .DOB7(Q[35])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_7.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_0_7.DATA_WIDTH_B = 9;
    defparam pdp_ram_0_0_7.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_0_7.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_0_7.RESETMODE = "SYNC";
    defparam pdp_ram_0_0_7.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_7.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_0_7.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_0_7.CSDECODE_A = "0b000";
    defparam pdp_ram_0_0_7.CSDECODE_B = "0b000";
    defparam pdp_ram_0_0_7.GSR = "ENABLED";
    defparam pdp_ram_0_0_7.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_7.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_1_6 (.DIA0(Data[4]), .DIA1(Data[5]), .DIA2(Data[6]), 
           .DIA3(Data[7]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(rptr_0), .ADB4(rptr_1), 
           .ADB5(rptr_2), .ADB6(rptr_3), .ADB7(rptr_4), .ADB8(rptr_5), 
           .ADB9(rptr_6), .ADB10(rptr_7), .ADB11(rptr_8), .ADB12(rptr_9), 
           .ADB13(rptr_10), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[4]), .DOB1(Q[5]), .DOB2(Q[6]), .DOB3(Q[7]), 
           .DOB4(Q[36]), .DOB5(Q[37]), .DOB6(Q[38]), .DOB7(Q[39])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_1_6.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_1_6.DATA_WIDTH_B = 9;
    defparam pdp_ram_0_1_6.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_1_6.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_1_6.RESETMODE = "SYNC";
    defparam pdp_ram_0_1_6.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_6.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_1_6.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_1_6.CSDECODE_A = "0b000";
    defparam pdp_ram_0_1_6.CSDECODE_B = "0b000";
    defparam pdp_ram_0_1_6.GSR = "ENABLED";
    defparam pdp_ram_0_1_6.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_6.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_2_5 (.DIA0(Data[8]), .DIA1(Data[9]), .DIA2(Data[10]), 
           .DIA3(Data[11]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(rptr_0), .ADB4(rptr_1), 
           .ADB5(rptr_2), .ADB6(rptr_3), .ADB7(rptr_4), .ADB8(rptr_5), 
           .ADB9(rptr_6), .ADB10(rptr_7), .ADB11(rptr_8), .ADB12(rptr_9), 
           .ADB13(rptr_10), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[8]), .DOB1(Q[9]), .DOB2(Q[10]), .DOB3(Q[11]), 
           .DOB4(Q[40]), .DOB5(Q[41]), .DOB6(Q[42]), .DOB7(Q[43])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_2_5.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_2_5.DATA_WIDTH_B = 9;
    defparam pdp_ram_0_2_5.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_2_5.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_2_5.RESETMODE = "SYNC";
    defparam pdp_ram_0_2_5.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_2_5.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_2_5.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_2_5.CSDECODE_A = "0b000";
    defparam pdp_ram_0_2_5.CSDECODE_B = "0b000";
    defparam pdp_ram_0_2_5.GSR = "ENABLED";
    defparam pdp_ram_0_2_5.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_5.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_3_4 (.DIA0(Data[12]), .DIA1(Data[13]), .DIA2(Data[14]), 
           .DIA3(Data[15]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(rptr_0), .ADB4(rptr_1), 
           .ADB5(rptr_2), .ADB6(rptr_3), .ADB7(rptr_4), .ADB8(rptr_5), 
           .ADB9(rptr_6), .ADB10(rptr_7), .ADB11(rptr_8), .ADB12(rptr_9), 
           .ADB13(rptr_10), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[12]), .DOB1(Q[13]), .DOB2(Q[14]), .DOB3(Q[15]), 
           .DOB4(Q[44]), .DOB5(Q[45]), .DOB6(Q[46]), .DOB7(Q[47])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_3_4.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_3_4.DATA_WIDTH_B = 9;
    defparam pdp_ram_0_3_4.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_3_4.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_3_4.RESETMODE = "SYNC";
    defparam pdp_ram_0_3_4.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_3_4.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_3_4.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_3_4.CSDECODE_A = "0b000";
    defparam pdp_ram_0_3_4.CSDECODE_B = "0b000";
    defparam pdp_ram_0_3_4.GSR = "ENABLED";
    defparam pdp_ram_0_3_4.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_3_4.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_4_3 (.DIA0(Data[16]), .DIA1(Data[17]), .DIA2(Data[18]), 
           .DIA3(Data[19]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(rptr_0), .ADB4(rptr_1), 
           .ADB5(rptr_2), .ADB6(rptr_3), .ADB7(rptr_4), .ADB8(rptr_5), 
           .ADB9(rptr_6), .ADB10(rptr_7), .ADB11(rptr_8), .ADB12(rptr_9), 
           .ADB13(rptr_10), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[16]), .DOB1(Q[17]), .DOB2(Q[18]), .DOB3(Q[19]), 
           .DOB4(Q[48]), .DOB5(Q[49]), .DOB6(Q[50]), .DOB7(Q[51])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_4_3.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_4_3.DATA_WIDTH_B = 9;
    defparam pdp_ram_0_4_3.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_4_3.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_4_3.RESETMODE = "SYNC";
    defparam pdp_ram_0_4_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_4_3.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_4_3.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_4_3.CSDECODE_A = "0b000";
    defparam pdp_ram_0_4_3.CSDECODE_B = "0b000";
    defparam pdp_ram_0_4_3.GSR = "ENABLED";
    defparam pdp_ram_0_4_3.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_4_3.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_5_2 (.DIA0(Data[20]), .DIA1(Data[21]), .DIA2(Data[22]), 
           .DIA3(Data[23]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(rptr_0), .ADB4(rptr_1), 
           .ADB5(rptr_2), .ADB6(rptr_3), .ADB7(rptr_4), .ADB8(rptr_5), 
           .ADB9(rptr_6), .ADB10(rptr_7), .ADB11(rptr_8), .ADB12(rptr_9), 
           .ADB13(rptr_10), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[20]), .DOB1(Q[21]), .DOB2(Q[22]), .DOB3(Q[23]), 
           .DOB4(Q[52]), .DOB5(Q[53]), .DOB6(Q[54]), .DOB7(Q[55])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_5_2.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_5_2.DATA_WIDTH_B = 9;
    defparam pdp_ram_0_5_2.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_5_2.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_5_2.RESETMODE = "SYNC";
    defparam pdp_ram_0_5_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_5_2.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_5_2.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_5_2.CSDECODE_A = "0b000";
    defparam pdp_ram_0_5_2.CSDECODE_B = "0b000";
    defparam pdp_ram_0_5_2.GSR = "ENABLED";
    defparam pdp_ram_0_5_2.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_5_2.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_6_1 (.DIA0(Data[24]), .DIA1(Data[25]), .DIA2(Data[26]), 
           .DIA3(Data[27]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(rptr_0), .ADB4(rptr_1), 
           .ADB5(rptr_2), .ADB6(rptr_3), .ADB7(rptr_4), .ADB8(rptr_5), 
           .ADB9(rptr_6), .ADB10(rptr_7), .ADB11(rptr_8), .ADB12(rptr_9), 
           .ADB13(rptr_10), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[24]), .DOB1(Q[25]), .DOB2(Q[26]), .DOB3(Q[27]), 
           .DOB4(Q[56]), .DOB5(Q[57]), .DOB6(Q[58]), .DOB7(Q[59])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_6_1.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_6_1.DATA_WIDTH_B = 9;
    defparam pdp_ram_0_6_1.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_6_1.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_6_1.RESETMODE = "SYNC";
    defparam pdp_ram_0_6_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_6_1.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_6_1.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_6_1.CSDECODE_A = "0b000";
    defparam pdp_ram_0_6_1.CSDECODE_B = "0b000";
    defparam pdp_ram_0_6_1.GSR = "ENABLED";
    defparam pdp_ram_0_6_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_6_1.INIT_DATA = "STATIC";
    DP16KD pdp_ram_0_7_0 (.DIA0(Data[28]), .DIA1(Data[29]), .DIA2(Data[30]), 
           .DIA3(Data[31]), .DIA4(scuba_vlo), .DIA5(scuba_vlo), .DIA6(scuba_vlo), 
           .DIA7(scuba_vlo), .DIA8(scuba_vlo), .DIA9(scuba_vlo), .DIA10(scuba_vlo), 
           .DIA11(scuba_vlo), .DIA12(scuba_vlo), .DIA13(scuba_vlo), .DIA14(scuba_vlo), 
           .DIA15(scuba_vlo), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vlo), 
           .ADA1(scuba_vlo), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
           .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
           .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
           .ADA13(wptr_11), .CEA(wren_i), .OCEA(wren_i), .CLKA(WrClock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(rptr_0), .ADB4(rptr_1), 
           .ADB5(rptr_2), .ADB6(rptr_3), .ADB7(rptr_4), .ADB8(rptr_5), 
           .ADB9(rptr_6), .ADB10(rptr_7), .ADB11(rptr_8), .ADB12(rptr_9), 
           .ADB13(rptr_10), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(RdClock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[28]), .DOB1(Q[29]), .DOB2(Q[30]), .DOB3(Q[31]), 
           .DOB4(Q[60]), .DOB5(Q[61]), .DOB6(Q[62]), .DOB7(Q[63])) /* synthesis MEM_LPC_FILE="cam_in_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_7_0.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_7_0.DATA_WIDTH_B = 9;
    defparam pdp_ram_0_7_0.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_7_0.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_7_0.RESETMODE = "SYNC";
    defparam pdp_ram_0_7_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_7_0.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_7_0.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_7_0.CSDECODE_A = "0b000";
    defparam pdp_ram_0_7_0.CSDECODE_B = "0b000";
    defparam pdp_ram_0_7_0.GSR = "ENABLED";
    defparam pdp_ram_0_7_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_7_0.INIT_DATA = "STATIC";
    FD1P3BX FF_151 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/cam_in_fifo/cam_in_fifo.v(850[13] 851[22])
    defparam FF_151.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

