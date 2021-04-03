// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Jan 08 13:28:30 2021
//
// Verilog Description of module slfifo_fifo
//

module slfifo_fifo (Data, WrClock, RdClock, WrEn, RdEn, Reset, RPReset, 
            Q, WCNT, RCNT, Empty, Full, AlmostEmpty, AlmostFull) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(8[8:19])
    input [63:0]Data;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(10[23:27])
    input WrClock;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(11[16:23])
    input RdClock;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(12[16:23])
    input WrEn;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(13[16:20])
    input RdEn;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(14[16:20])
    input Reset;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(15[16:21])
    input RPReset;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(16[16:23])
    output [31:0]Q;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(17[24:25])
    output [9:0]WCNT;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(18[23:27])
    output [10:0]RCNT;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(19[24:28])
    output Empty;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(20[17:22])
    output Full;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(21[17:21])
    output AlmostEmpty;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(22[17:28])
    output AlmostFull;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(23[17:27])
    
    wire WrClock /* synthesis is_clock=1, SET_AS_NETWORK=WrClock */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(11[16:23])
    wire RdClock /* synthesis is_clock=1, SET_AS_NETWORK=RdClock */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(12[16:23])
    
    wire invout_1, invout_0, w_g2b_xor_cluster_1, r_g2b_xor_cluster_1, 
        w_gdata_0, w_gdata_1, w_gdata_2, w_gdata_3, w_gdata_4, w_gdata_5, 
        w_gdata_6, w_gdata_7, w_gdata_8, wptr_9, r_gdata_1, r_gdata_2, 
        r_gdata_3, r_gdata_4, r_gdata_5, r_gdata_6, r_gdata_7, r_gdata_8, 
        r_gdata_9, rptr_10, w_gcount_0, w_gcount_1, w_gcount_2, w_gcount_3, 
        w_gcount_4, w_gcount_5, w_gcount_6, w_gcount_7, w_gcount_8, 
        w_gcount_9, r_gcount_1, r_gcount_2, r_gcount_3, r_gcount_4, 
        r_gcount_5, r_gcount_6, r_gcount_7, r_gcount_8, r_gcount_9, 
        r_gcount_10, w_gcount_r20, w_gcount_r0, w_gcount_r21, w_gcount_r1, 
        w_gcount_r22, w_gcount_r2, w_gcount_r23, w_gcount_r3, w_gcount_r24, 
        w_gcount_r4, w_gcount_r25, w_gcount_r5, w_gcount_r26, w_gcount_r6, 
        w_gcount_r27, w_gcount_r7, w_gcount_r28, w_gcount_r8, w_gcount_r29, 
        w_gcount_r9, r_gcount_w21, r_gcount_w1, r_gcount_w22, r_gcount_w2, 
        r_gcount_w23, r_gcount_w3, r_gcount_w24, r_gcount_w4, r_gcount_w25, 
        r_gcount_w5, r_gcount_w26, r_gcount_w6, r_gcount_w27, r_gcount_w7, 
        r_gcount_w28, r_gcount_w8, r_gcount_w29, r_gcount_w9, r_gcount_w210, 
        r_gcount_w10, rRst, ae_d, iwcount_0, iwcount_1, w_gctr_ci, 
        iwcount_2, iwcount_3, co0, iwcount_4, iwcount_5, co1, iwcount_6, 
        iwcount_7, co2, iwcount_8, iwcount_9, co3, wcount_9, ircount_0, 
        ircount_1, r_gctr_ci, ircount_2, ircount_3, co0_1, ircount_4, 
        ircount_5, co1_1, ircount_6, ircount_7, co2_1, ircount_8, 
        ircount_9, co3_1, ircount_10, co4_1, rcount_10, wfill_sub_0, 
        wptr_0, precin, wfill_sub_1, wfill_sub_2, wptr_2, wptr_1, 
        co0_2, wfill_sub_3, wfill_sub_4, wptr_4, wptr_3, co1_2, 
        wfill_sub_5, wfill_sub_6, wptr_6, wptr_5, co2_2, wfill_sub_7, 
        wfill_sub_8, wptr_8, wptr_7, co3_2, wfill_sub_9, wfill_sub_msb, 
        co4_2, rfill_sub_0, rptr_0, precin_1, rfill_sub_1, rfill_sub_2, 
        rptr_2, rptr_1, co0_3, rfill_sub_3, rfill_sub_4, rptr_4, 
        rptr_3, co1_3, rfill_sub_5, rfill_sub_6, rptr_6, rptr_5, 
        co2_3, rfill_sub_7, rfill_sub_8, rptr_8, rptr_7, co3_3, 
        rfill_sub_9, rfill_sub_10, rptr_9, rfill_sub_msb, co4_3, cmp_ci, 
        rcount_0, rcount_1, co0_4, rcount_2, rcount_3, co1_4, rcount_4, 
        rcount_5, co2_4, rcount_6, rcount_7, co3_4, rcount_8, rcount_9, 
        co4_4, empty_cmp_clr, empty_cmp_set, empty_d, empty_d_c, cmp_ci_1, 
        wcount_0, wcount_1, co0_5, wcount_2, wcount_3, co1_5, wcount_4, 
        wcount_5, co2_5, wcount_6, wcount_7, co3_5, full_cmp_clr, 
        wcount_8, full_cmp_set, full_d, full_d_c, iae_setcount_0, 
        iae_setcount_1, ae_set_ctr_ci, iae_setcount_2, iae_setcount_3, 
        co0_6, iae_setcount_4, iae_setcount_5, co1_6, iae_setcount_6, 
        iae_setcount_7, co2_6, iae_setcount_8, iae_setcount_9, co3_6, 
        iae_setcount_10, co4_5, ae_setcount_10, cmp_ci_2, ae_setcount_0, 
        ae_setcount_1, co0_7, ae_setcount_2, ae_setcount_3, co1_7, 
        ae_setcount_4, ae_setcount_5, co2_7, ae_setcount_6, ae_setcount_7, 
        co3_7, ae_setcount_8, ae_setcount_9, co4_6, ae_set_cmp_clr, 
        ae_set_cmp_set, ae_set_d, ae_set_d_c, iae_clrcount_0, iae_clrcount_1, 
        ae_clr_ctr_ci, iae_clrcount_2, iae_clrcount_3, co0_8, iae_clrcount_4, 
        iae_clrcount_5, co1_8, iae_clrcount_6, iae_clrcount_7, co2_8, 
        iae_clrcount_8, iae_clrcount_9, co3_8, iae_clrcount_10, co4_7, 
        ae_clrcount_10, rden_i, cmp_ci_3, wcount_r0, ae_clrcount_0, 
        ae_clrcount_1, co0_9, wcount_r1, wcount_r2, ae_clrcount_2, 
        ae_clrcount_3, co1_9, wcount_r3, wcount_r4, ae_clrcount_4, 
        ae_clrcount_5, co2_9, wcount_r5, w_g2b_xor_cluster_0, ae_clrcount_6, 
        ae_clrcount_7, co3_9, wcount_r7, wcount_r8, ae_clrcount_8, 
        ae_clrcount_9, co4_8, ae_clr_cmp_clr, ae_clr_cmp_set, ae_clr_d, 
        ae_clr_d_c, iaf_setcount_0, iaf_setcount_1, af_set_ctr_ci, iaf_setcount_2, 
        iaf_setcount_3, co0_10, iaf_setcount_4, iaf_setcount_5, co1_10, 
        iaf_setcount_6, iaf_setcount_7, co2_10, iaf_setcount_8, iaf_setcount_9, 
        co3_10, af_setcount_9, wren_i, cmp_ci_4, rcount_w1, rcount_w2, 
        af_setcount_0, af_setcount_1, co0_11, rcount_w3, rcount_w4, 
        af_setcount_2, af_setcount_3, co1_11, rcount_w5, rcount_w6, 
        af_setcount_4, af_setcount_5, co2_11, r_g2b_xor_cluster_0, rcount_w8, 
        af_setcount_6, af_setcount_7, co3_11, rcount_w9, af_set_cmp_clr, 
        af_setcount_8, af_set_cmp_set, af_set, scuba_vhi, scuba_vlo, 
        af_set_c;
    
    AND2 AND2_t23 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(386[10:55])
    OR2 OR2_t21 (.A(Reset), .B(RPReset), .Z(rRst)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(394[9:51])
    XOR2 XOR2_t19 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(398[10:62])
    FD1P3DX FF_160 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(646[13] 647[22])
    defparam FF_160.GSR = "ENABLED";
    FD1P3DX FF_159 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(650[13] 651[22])
    defparam FF_159.GSR = "ENABLED";
    FD1P3DX FF_158 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(654[13] 655[22])
    defparam FF_158.GSR = "ENABLED";
    FD1P3DX FF_157 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(658[13] 659[22])
    defparam FF_157.GSR = "ENABLED";
    FD1P3DX FF_156 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(662[13] 663[22])
    defparam FF_156.GSR = "ENABLED";
    FD1P3DX FF_155 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(666[13] 667[22])
    defparam FF_155.GSR = "ENABLED";
    FD1P3DX FF_154 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(670[13] 671[22])
    defparam FF_154.GSR = "ENABLED";
    FD1P3DX FF_153 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(674[13] 675[22])
    defparam FF_153.GSR = "ENABLED";
    FD1P3DX FF_152 (.D(iwcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(678[13] 679[22])
    defparam FF_152.GSR = "ENABLED";
    FD1P3DX FF_151 (.D(w_gdata_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(682[13] 683[24])
    defparam FF_151.GSR = "ENABLED";
    FD1P3DX FF_150 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(686[13] 687[24])
    defparam FF_150.GSR = "ENABLED";
    FD1P3DX FF_149 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(690[13] 691[24])
    defparam FF_149.GSR = "ENABLED";
    FD1P3DX FF_148 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(694[13] 695[24])
    defparam FF_148.GSR = "ENABLED";
    FD1P3DX FF_147 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(698[13] 699[24])
    defparam FF_147.GSR = "ENABLED";
    FD1P3DX FF_146 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(702[13] 703[24])
    defparam FF_146.GSR = "ENABLED";
    FD1P3DX FF_145 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(706[13] 707[24])
    defparam FF_145.GSR = "ENABLED";
    FD1P3DX FF_144 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(710[13] 711[24])
    defparam FF_144.GSR = "ENABLED";
    FD1P3DX FF_143 (.D(w_gdata_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(714[13] 715[24])
    defparam FF_143.GSR = "ENABLED";
    FD1P3DX FF_142 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(718[13] 719[24])
    defparam FF_142.GSR = "ENABLED";
    FD1P3DX FF_141 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(722[13] 723[20])
    defparam FF_141.GSR = "ENABLED";
    FD1P3DX FF_140 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(726[13] 727[20])
    defparam FF_140.GSR = "ENABLED";
    FD1P3DX FF_139 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(730[13] 731[20])
    defparam FF_139.GSR = "ENABLED";
    FD1P3DX FF_138 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(734[13] 735[20])
    defparam FF_138.GSR = "ENABLED";
    FD1P3DX FF_137 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(738[13] 739[20])
    defparam FF_137.GSR = "ENABLED";
    FD1P3DX FF_136 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(742[13] 743[20])
    defparam FF_136.GSR = "ENABLED";
    FD1P3DX FF_135 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(746[13] 747[20])
    defparam FF_135.GSR = "ENABLED";
    FD1P3DX FF_134 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(750[13] 751[20])
    defparam FF_134.GSR = "ENABLED";
    FD1P3DX FF_133 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(754[13] 755[20])
    defparam FF_133.GSR = "ENABLED";
    FD1P3DX FF_132 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(758[13] 759[20])
    defparam FF_132.GSR = "ENABLED";
    FD1P3BX FF_131 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(762[13] 763[22])
    defparam FF_131.GSR = "ENABLED";
    FD1P3DX FF_130 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(766[13] 767[22])
    defparam FF_130.GSR = "ENABLED";
    FD1P3DX FF_129 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(770[13] 771[22])
    defparam FF_129.GSR = "ENABLED";
    FD1P3DX FF_128 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(774[13] 775[22])
    defparam FF_128.GSR = "ENABLED";
    FD1P3DX FF_127 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(778[13] 779[22])
    defparam FF_127.GSR = "ENABLED";
    FD1P3DX FF_126 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(782[13] 783[22])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(ircount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(786[13] 787[22])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(ircount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(790[13] 791[22])
    defparam FF_124.GSR = "ENABLED";
    FD1P3DX FF_123 (.D(ircount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(794[13] 795[22])
    defparam FF_123.GSR = "ENABLED";
    FD1P3DX FF_122 (.D(ircount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(798[13] 799[22])
    defparam FF_122.GSR = "ENABLED";
    FD1P3DX FF_121 (.D(ircount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(802[13] 803[23])
    defparam FF_121.GSR = "ENABLED";
    FD1P3DX FF_119 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(810[13] 811[24])
    defparam FF_119.GSR = "ENABLED";
    INV INV_1 (.A(Full), .Z(invout_1));
    FD1P3DX FF_118 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(814[13] 815[24])
    defparam FF_118.GSR = "ENABLED";
    FD1P3DX FF_117 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(818[13] 819[24])
    defparam FF_117.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(822[13] 823[24])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_115 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(826[13] 827[24])
    defparam FF_115.GSR = "ENABLED";
    FD1P3DX FF_114 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(830[13] 831[24])
    defparam FF_114.GSR = "ENABLED";
    FD1P3DX FF_113 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(834[13] 835[24])
    defparam FF_113.GSR = "ENABLED";
    FD1P3DX FF_112 (.D(r_gdata_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(838[13] 839[24])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(r_gdata_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(842[13] 843[24])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(rcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(846[13] 847[25])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(850[13] 851[20])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(854[13] 855[20])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(858[13] 859[20])
    defparam FF_107.GSR = "ENABLED";
    FD1P3DX FF_106 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(862[13] 863[20])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(866[13] 867[20])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(870[13] 871[20])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(rcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(874[13] 875[20])
    defparam FF_103.GSR = "ENABLED";
    FD1P3DX FF_102 (.D(rcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(878[13] 879[20])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(882[13] 883[20])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(rcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(886[13] 887[20])
    defparam FF_100.GSR = "ENABLED";
    FD1P3DX FF_99 (.D(rcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(890[13] 891[21])
    defparam FF_99.GSR = "ENABLED";
    FD1S3DX FF_98 (.D(w_gcount_0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(894[13:78])
    defparam FF_98.GSR = "ENABLED";
    FD1S3DX FF_97 (.D(w_gcount_1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(897[13:78])
    defparam FF_97.GSR = "ENABLED";
    FD1S3DX FF_96 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(900[13:78])
    defparam FF_96.GSR = "ENABLED";
    FD1S3DX FF_95 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(903[13:78])
    defparam FF_95.GSR = "ENABLED";
    FD1S3DX FF_94 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(906[13:78])
    defparam FF_94.GSR = "ENABLED";
    FD1S3DX FF_93 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(909[13:78])
    defparam FF_93.GSR = "ENABLED";
    FD1S3DX FF_92 (.D(w_gcount_6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(912[13:78])
    defparam FF_92.GSR = "ENABLED";
    FD1S3DX FF_91 (.D(w_gcount_7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(915[13:78])
    defparam FF_91.GSR = "ENABLED";
    FD1S3DX FF_90 (.D(w_gcount_8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(918[13:78])
    defparam FF_90.GSR = "ENABLED";
    FD1S3DX FF_89 (.D(w_gcount_9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(921[13:78])
    defparam FF_89.GSR = "ENABLED";
    FD1S3DX FF_87 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(927[13:77])
    defparam FF_87.GSR = "ENABLED";
    AND2 AND2_t22 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(390[10:55])
    FD1S3DX FF_86 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(930[13:77])
    defparam FF_86.GSR = "ENABLED";
    FD1S3DX FF_85 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(933[13:77])
    defparam FF_85.GSR = "ENABLED";
    FD1S3DX FF_84 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(936[13:77])
    defparam FF_84.GSR = "ENABLED";
    FD1S3DX FF_83 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(939[13:77])
    defparam FF_83.GSR = "ENABLED";
    FD1S3DX FF_82 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(942[13:77])
    defparam FF_82.GSR = "ENABLED";
    FD1S3DX FF_81 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(945[13:77])
    defparam FF_81.GSR = "ENABLED";
    FD1S3DX FF_80 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(948[13:77])
    defparam FF_80.GSR = "ENABLED";
    FD1S3DX FF_79 (.D(r_gcount_9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(951[13:77])
    defparam FF_79.GSR = "ENABLED";
    FD1S3DX FF_78 (.D(r_gcount_10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(954[13:79])
    defparam FF_78.GSR = "ENABLED";
    FD1S3DX FF_77 (.D(w_gcount_r0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(957[13:80])
    defparam FF_77.GSR = "ENABLED";
    FD1S3DX FF_76 (.D(w_gcount_r1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(960[13:80])
    defparam FF_76.GSR = "ENABLED";
    FD1S3DX FF_75 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(963[13:80])
    defparam FF_75.GSR = "ENABLED";
    FD1S3DX FF_74 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(966[13:80])
    defparam FF_74.GSR = "ENABLED";
    FD1S3DX FF_73 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(969[13:80])
    defparam FF_73.GSR = "ENABLED";
    FD1S3DX FF_72 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(972[13:80])
    defparam FF_72.GSR = "ENABLED";
    FD1S3DX FF_71 (.D(w_gcount_r6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(975[13:80])
    defparam FF_71.GSR = "ENABLED";
    FD1S3DX FF_70 (.D(w_gcount_r7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(978[13:80])
    defparam FF_70.GSR = "ENABLED";
    FD1S3DX FF_69 (.D(w_gcount_r8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(981[13:80])
    defparam FF_69.GSR = "ENABLED";
    FD1S3DX FF_68 (.D(w_gcount_r9), .CK(RdClock), .CD(Reset), .Q(w_gcount_r29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(984[13:80])
    defparam FF_68.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(990[13:79])
    defparam FF_66.GSR = "ENABLED";
    INV INV_0 (.A(Empty), .Z(invout_0));
    FD1S3DX FF_65 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(993[13:79])
    defparam FF_65.GSR = "ENABLED";
    FD1S3DX FF_64 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(996[13:79])
    defparam FF_64.GSR = "ENABLED";
    FD1S3DX FF_63 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(999[13:79])
    defparam FF_63.GSR = "ENABLED";
    FD1S3DX FF_62 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1002[13:79])
    defparam FF_62.GSR = "ENABLED";
    FD1S3DX FF_61 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1005[13:79])
    defparam FF_61.GSR = "ENABLED";
    FD1S3DX FF_60 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1008[13:79])
    defparam FF_60.GSR = "ENABLED";
    FD1S3DX FF_59 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1011[13:79])
    defparam FF_59.GSR = "ENABLED";
    FD1S3DX FF_58 (.D(r_gcount_w9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w29)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1014[13:79])
    defparam FF_58.GSR = "ENABLED";
    FD1S3DX FF_57 (.D(r_gcount_w10), .CK(WrClock), .CD(rRst), .Q(r_gcount_w210)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1017[13:81])
    defparam FF_57.GSR = "ENABLED";
    FD1S3DX FF_56 (.D(wfill_sub_0), .CK(WrClock), .CD(Reset), .Q(WCNT[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1020[13:75])
    defparam FF_56.GSR = "ENABLED";
    FD1S3DX FF_55 (.D(wfill_sub_1), .CK(WrClock), .CD(Reset), .Q(WCNT[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1023[13:75])
    defparam FF_55.GSR = "ENABLED";
    FD1S3DX FF_54 (.D(wfill_sub_2), .CK(WrClock), .CD(Reset), .Q(WCNT[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1026[13:75])
    defparam FF_54.GSR = "ENABLED";
    FD1S3DX FF_53 (.D(wfill_sub_3), .CK(WrClock), .CD(Reset), .Q(WCNT[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1029[13:75])
    defparam FF_53.GSR = "ENABLED";
    FD1S3DX FF_52 (.D(wfill_sub_4), .CK(WrClock), .CD(Reset), .Q(WCNT[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1032[13:75])
    defparam FF_52.GSR = "ENABLED";
    FD1S3DX FF_51 (.D(wfill_sub_5), .CK(WrClock), .CD(Reset), .Q(WCNT[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1035[13:75])
    defparam FF_51.GSR = "ENABLED";
    FD1S3DX FF_50 (.D(wfill_sub_6), .CK(WrClock), .CD(Reset), .Q(WCNT[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1038[13:75])
    defparam FF_50.GSR = "ENABLED";
    FD1S3DX FF_49 (.D(wfill_sub_7), .CK(WrClock), .CD(Reset), .Q(WCNT[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1041[13:75])
    defparam FF_49.GSR = "ENABLED";
    FD1S3DX FF_48 (.D(wfill_sub_8), .CK(WrClock), .CD(Reset), .Q(WCNT[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1044[13:75])
    defparam FF_48.GSR = "ENABLED";
    FD1S3DX FF_47 (.D(wfill_sub_9), .CK(WrClock), .CD(Reset), .Q(WCNT[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1047[13:75])
    defparam FF_47.GSR = "ENABLED";
    FD1S3DX FF_46 (.D(rfill_sub_0), .CK(RdClock), .CD(rRst), .Q(RCNT[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1050[13:74])
    defparam FF_46.GSR = "ENABLED";
    FD1S3DX FF_45 (.D(rfill_sub_1), .CK(RdClock), .CD(rRst), .Q(RCNT[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1053[13:74])
    defparam FF_45.GSR = "ENABLED";
    FD1S3DX FF_44 (.D(rfill_sub_2), .CK(RdClock), .CD(rRst), .Q(RCNT[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1056[13:74])
    defparam FF_44.GSR = "ENABLED";
    FD1S3DX FF_43 (.D(rfill_sub_3), .CK(RdClock), .CD(rRst), .Q(RCNT[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1059[13:74])
    defparam FF_43.GSR = "ENABLED";
    FD1S3DX FF_42 (.D(rfill_sub_4), .CK(RdClock), .CD(rRst), .Q(RCNT[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1062[13:74])
    defparam FF_42.GSR = "ENABLED";
    FD1S3DX FF_41 (.D(rfill_sub_5), .CK(RdClock), .CD(rRst), .Q(RCNT[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1065[13:74])
    defparam FF_41.GSR = "ENABLED";
    FD1S3DX FF_40 (.D(rfill_sub_6), .CK(RdClock), .CD(rRst), .Q(RCNT[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1068[13:74])
    defparam FF_40.GSR = "ENABLED";
    FD1S3DX FF_39 (.D(rfill_sub_7), .CK(RdClock), .CD(rRst), .Q(RCNT[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1071[13:74])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(rfill_sub_8), .CK(RdClock), .CD(rRst), .Q(RCNT[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1074[13:74])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_37 (.D(rfill_sub_9), .CK(RdClock), .CD(rRst), .Q(RCNT[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1077[13:74])
    defparam FF_37.GSR = "ENABLED";
    FD1S3DX FF_36 (.D(rfill_sub_10), .CK(RdClock), .CD(rRst), .Q(RCNT[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1080[13:76])
    defparam FF_36.GSR = "ENABLED";
    FD1S3BX FF_35 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1083[13:70])
    defparam FF_35.GSR = "ENABLED";
    FD1S3DX FF_34 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1086[13:69])
    defparam FF_34.GSR = "ENABLED";
    FD1P3BX FF_33 (.D(iae_setcount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1089[13] 1090[27])
    defparam FF_33.GSR = "ENABLED";
    FD1P3BX FF_32 (.D(iae_setcount_1), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1093[13] 1094[27])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(iae_setcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1097[13] 1098[27])
    defparam FF_31.GSR = "ENABLED";
    FD1P3BX FF_30 (.D(iae_setcount_3), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1101[13] 1102[27])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(iae_setcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1105[13] 1106[27])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(iae_setcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1109[13] 1110[27])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(iae_setcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1113[13] 1114[27])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(iae_setcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1117[13] 1118[27])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(iae_setcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1121[13] 1122[27])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(iae_setcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1125[13] 1126[27])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(iae_setcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1129[13] 1130[28])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(iae_clrcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1133[13] 1134[27])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(iae_clrcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1137[13] 1138[27])
    defparam FF_21.GSR = "ENABLED";
    FD1P3BX FF_20 (.D(iae_clrcount_2), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1141[13] 1142[27])
    defparam FF_20.GSR = "ENABLED";
    FD1P3BX FF_19 (.D(iae_clrcount_3), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1145[13] 1146[27])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(iae_clrcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1149[13] 1150[27])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(iae_clrcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1153[13] 1154[27])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(iae_clrcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1157[13] 1158[27])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(iae_clrcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1161[13] 1162[27])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(iae_clrcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1165[13] 1166[27])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(iae_clrcount_9), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1169[13] 1170[27])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(iae_clrcount_10), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1173[13] 1174[28])
    defparam FF_12.GSR = "ENABLED";
    FD1S3BX FF_11 (.D(ae_d), .CK(RdClock), .PD(rRst), .Q(AlmostEmpty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1177[13:62])
    defparam FF_11.GSR = "ENABLED";
    FD1P3BX FF_10 (.D(iaf_setcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1180[13] 1181[27])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(iaf_setcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1184[13] 1185[27])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(iaf_setcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1188[13] 1189[27])
    defparam FF_8.GSR = "ENABLED";
    FD1P3BX FF_7 (.D(iaf_setcount_3), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1192[13] 1193[27])
    defparam FF_7.GSR = "ENABLED";
    FD1P3BX FF_6 (.D(iaf_setcount_4), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1196[13] 1197[27])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(iaf_setcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1200[13] 1201[27])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(iaf_setcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1204[13] 1205[27])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(iaf_setcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1208[13] 1209[27])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(iaf_setcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1212[13] 1213[27])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(iaf_setcount_9), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1216[13] 1217[27])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(af_set), .CK(WrClock), .CD(Reset), .Q(AlmostFull)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1220[13:72])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1227[11] 1229[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_gctr_ci), .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1235[11] 1237[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1243[11] 1245[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1251[11] 1253[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1259[11] 1261[63])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1267[11] 1269[63])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1275[11] 1277[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_gctr_ci), .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1283[11] 1285[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1291[11] 1293[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1299[11] 1301[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1307[11] 1309[67])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_9), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .COUT(co4_1), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1315[11] 1317[67])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_5 (.A0(rcount_10), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_1), .S0(ircount_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1323[11] 1325[57])
    defparam r_gctr_5.INIT0 = 16'b0110011010101010;
    defparam r_gctr_5.INIT1 = 16'b0110011010101010;
    defparam r_gctr_5.INJECT1_0 = "NO";
    defparam r_gctr_5.INJECT1_1 = "NO";
    CCU2C precin_inst364 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(precin)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1331[11] 1333[61])
    defparam precin_inst364.INIT0 = 16'b0000000000000000;
    defparam precin_inst364.INIT1 = 16'b0000000000000000;
    defparam precin_inst364.INJECT1_0 = "NO";
    defparam precin_inst364.INJECT1_1 = "NO";
    CCU2C wfill_0 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wptr_0), .B1(rcount_w1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(precin), .COUT(co0_2), .S1(wfill_sub_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1339[11] 1341[61])
    defparam wfill_0.INIT0 = 16'b1001100110101010;
    defparam wfill_0.INIT1 = 16'b1001100110101010;
    defparam wfill_0.INJECT1_0 = "NO";
    defparam wfill_0.INJECT1_1 = "NO";
    CCU2C wfill_1 (.A0(wptr_1), .B0(rcount_w2), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wptr_2), .B1(rcount_w3), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_2), .COUT(co1_2), .S0(wfill_sub_1), .S1(wfill_sub_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1347[11] 1349[71])
    defparam wfill_1.INIT0 = 16'b1001100110101010;
    defparam wfill_1.INIT1 = 16'b1001100110101010;
    defparam wfill_1.INJECT1_0 = "NO";
    defparam wfill_1.INJECT1_1 = "NO";
    CCU2C wfill_2 (.A0(wptr_3), .B0(rcount_w4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wptr_4), .B1(rcount_w5), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_2), .COUT(co2_2), .S0(wfill_sub_3), .S1(wfill_sub_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1355[11] 1357[71])
    defparam wfill_2.INIT0 = 16'b1001100110101010;
    defparam wfill_2.INIT1 = 16'b1001100110101010;
    defparam wfill_2.INJECT1_0 = "NO";
    defparam wfill_2.INJECT1_1 = "NO";
    CCU2C wfill_3 (.A0(wptr_5), .B0(rcount_w6), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wptr_6), .B1(r_g2b_xor_cluster_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_2), .COUT(co3_2), .S0(wfill_sub_5), .S1(wfill_sub_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1363[11] 1365[71])
    defparam wfill_3.INIT0 = 16'b1001100110101010;
    defparam wfill_3.INIT1 = 16'b1001100110101010;
    defparam wfill_3.INJECT1_0 = "NO";
    defparam wfill_3.INJECT1_1 = "NO";
    CCU2C wfill_4 (.A0(wptr_7), .B0(rcount_w8), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wptr_8), .B1(rcount_w9), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_2), .COUT(co4_2), .S0(wfill_sub_7), .S1(wfill_sub_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1371[11] 1373[71])
    defparam wfill_4.INIT0 = 16'b1001100110101010;
    defparam wfill_4.INIT1 = 16'b1001100110101010;
    defparam wfill_4.INJECT1_0 = "NO";
    defparam wfill_4.INJECT1_1 = "NO";
    CCU2C wfill_5 (.A0(wfill_sub_msb), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_2), .S0(wfill_sub_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1379[11] 1381[55])
    defparam wfill_5.INIT0 = 16'b1001100110101010;
    defparam wfill_5.INIT1 = 16'b1001100110101010;
    defparam wfill_5.INJECT1_0 = "NO";
    defparam wfill_5.INJECT1_1 = "NO";
    CCU2C precin_inst382 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(precin_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1387[11] 1389[63])
    defparam precin_inst382.INIT0 = 16'b0000000000000000;
    defparam precin_inst382.INIT1 = 16'b0000000000000000;
    defparam precin_inst382.INJECT1_0 = "NO";
    defparam precin_inst382.INJECT1_1 = "NO";
    CCU2C rfill_0 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(rptr_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(precin_1), .COUT(co0_3), .S1(rfill_sub_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1395[11] 1397[63])
    defparam rfill_0.INIT0 = 16'b1001100110101010;
    defparam rfill_0.INIT1 = 16'b1001100110101010;
    defparam rfill_0.INJECT1_0 = "NO";
    defparam rfill_0.INJECT1_1 = "NO";
    CCU2C rfill_1 (.A0(wcount_r0), .B0(rptr_1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r1), .B1(rptr_2), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_3), .COUT(co1_3), .S0(rfill_sub_1), .S1(rfill_sub_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1403[11] 1405[71])
    defparam rfill_1.INIT0 = 16'b1001100110101010;
    defparam rfill_1.INIT1 = 16'b1001100110101010;
    defparam rfill_1.INJECT1_0 = "NO";
    defparam rfill_1.INJECT1_1 = "NO";
    CCU2C rfill_2 (.A0(wcount_r2), .B0(rptr_3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r3), .B1(rptr_4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_3), .COUT(co2_3), .S0(rfill_sub_3), .S1(rfill_sub_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1411[11] 1413[71])
    defparam rfill_2.INIT0 = 16'b1001100110101010;
    defparam rfill_2.INIT1 = 16'b1001100110101010;
    defparam rfill_2.INJECT1_0 = "NO";
    defparam rfill_2.INJECT1_1 = "NO";
    CCU2C rfill_3 (.A0(wcount_r4), .B0(rptr_5), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r5), .B1(rptr_6), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_3), .COUT(co3_3), .S0(rfill_sub_5), .S1(rfill_sub_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1419[11] 1421[71])
    defparam rfill_3.INIT0 = 16'b1001100110101010;
    defparam rfill_3.INIT1 = 16'b1001100110101010;
    defparam rfill_3.INJECT1_0 = "NO";
    defparam rfill_3.INJECT1_1 = "NO";
    CCU2C rfill_4 (.A0(w_g2b_xor_cluster_0), .B0(rptr_7), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_r7), .B1(rptr_8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_3), .COUT(co4_3), .S0(rfill_sub_7), 
          .S1(rfill_sub_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1427[11] 1429[71])
    defparam rfill_4.INIT0 = 16'b1001100110101010;
    defparam rfill_4.INIT1 = 16'b1001100110101010;
    defparam rfill_4.INJECT1_0 = "NO";
    defparam rfill_4.INJECT1_1 = "NO";
    CCU2C rfill_5 (.A0(wcount_r8), .B0(rptr_9), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rfill_sub_msb), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4_3), .S0(rfill_sub_9), .S1(rfill_sub_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1435[11] 1437[72])
    defparam rfill_5.INIT0 = 16'b1001100110101010;
    defparam rfill_5.INIT1 = 16'b1001100110101010;
    defparam rfill_5.INJECT1_0 = "NO";
    defparam rfill_5.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1451[11] 1453[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    XOR2 XOR2_t20 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(396[10:62])
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_1), .B1(wcount_r0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci), .COUT(co0_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1459[11] 1461[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r1), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_3), .B1(wcount_r2), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_4), .COUT(co1_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1467[11] 1469[49])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r3), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_5), .B1(wcount_r4), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_4), .COUT(co2_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1475[11] 1477[49])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r5), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_7), .B1(w_g2b_xor_cluster_0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_4), .COUT(co3_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1483[11] 1485[49])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(rcount_8), .B0(wcount_r7), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_9), .B1(wcount_r8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_4), .COUT(co4_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1491[11] 1493[49])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_5 (.A0(empty_cmp_set), .B0(empty_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_4), .COUT(empty_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1499[11] 1501[69])
    defparam empty_cmp_5.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_5.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_5.INJECT1_0 = "NO";
    defparam empty_cmp_5.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1507[11] 1509[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1515[11] 1517[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(rcount_w2), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1523[11] 1525[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(rcount_w4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1531[11] 1533[49])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w5), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(rcount_w6), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_5), .COUT(co2_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1539[11] 1541[49])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(r_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_7), .B1(rcount_w8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_5), .COUT(co3_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1547[11] 1549[65])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(wcount_8), .B0(rcount_w9), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(full_cmp_set), .B1(full_cmp_clr), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_5), .COUT(full_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1555[11] 1557[68])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1563[11] 1565[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_set_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1571[11] 1573[68])
    defparam ae_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INJECT1_0 = "NO";
    defparam ae_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_0 (.A0(ae_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_set_ctr_ci), .COUT(co0_6), .S0(iae_setcount_0), 
          .S1(iae_setcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1579[11] 1582[22])
    defparam ae_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INJECT1_0 = "NO";
    defparam ae_set_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_1 (.A0(ae_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_6), .COUT(co1_6), .S0(iae_setcount_2), 
          .S1(iae_setcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1588[11] 1591[22])
    defparam ae_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INJECT1_0 = "NO";
    defparam ae_set_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_2 (.A0(ae_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_6), .COUT(co2_6), .S0(iae_setcount_4), 
          .S1(iae_setcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1597[11] 1600[22])
    defparam ae_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INJECT1_0 = "NO";
    defparam ae_set_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_3 (.A0(ae_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_6), .COUT(co3_6), .S0(iae_setcount_6), 
          .S1(iae_setcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1606[11] 1609[22])
    defparam ae_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INJECT1_0 = "NO";
    defparam ae_set_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_4 (.A0(ae_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_6), .COUT(co4_5), .S0(iae_setcount_8), 
          .S1(iae_setcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1615[11] 1618[22])
    defparam ae_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INJECT1_0 = "NO";
    defparam ae_set_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_5 (.A0(ae_setcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_5), .S0(iae_setcount_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1624[11] 1626[80])
    defparam ae_set_ctr_5.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_5.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_5.INJECT1_0 = "NO";
    defparam ae_set_ctr_5.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1632[11] 1634[47])
    defparam ae_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_0 (.A0(ae_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(wcount_r0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_2), .COUT(co0_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1640[11] 1642[68])
    defparam ae_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INJECT1_0 = "NO";
    defparam ae_set_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_1 (.A0(ae_setcount_2), .B0(wcount_r1), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(wcount_r2), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_7), .COUT(co1_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1648[11] 1650[65])
    defparam ae_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INJECT1_0 = "NO";
    defparam ae_set_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_2 (.A0(ae_setcount_4), .B0(wcount_r3), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(wcount_r4), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_7), .COUT(co2_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1656[11] 1658[65])
    defparam ae_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INJECT1_0 = "NO";
    defparam ae_set_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_3 (.A0(ae_setcount_6), .B0(wcount_r5), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(w_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co2_7), .COUT(co3_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1664[11] 1666[65])
    defparam ae_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INJECT1_0 = "NO";
    defparam ae_set_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_4 (.A0(ae_setcount_8), .B0(wcount_r7), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_9), .B1(wcount_r8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_7), .COUT(co4_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1672[11] 1674[65])
    defparam ae_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INJECT1_0 = "NO";
    defparam ae_set_cmp_4.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_5 (.A0(ae_set_cmp_set), .B0(ae_set_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_6), .COUT(ae_set_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1680[11] 1682[70])
    defparam ae_set_cmp_5.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_5.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_5.INJECT1_0 = "NO";
    defparam ae_set_cmp_5.INJECT1_1 = "NO";
    CCU2C a2 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_set_d_c), .S0(ae_set_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1688[11] 1690[57])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_clr_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1696[11] 1698[68])
    defparam ae_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INJECT1_0 = "NO";
    defparam ae_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_0 (.A0(ae_clrcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_clr_ctr_ci), .COUT(co0_8), .S0(iae_clrcount_0), 
          .S1(iae_clrcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1704[11] 1707[22])
    defparam ae_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INJECT1_0 = "NO";
    defparam ae_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_1 (.A0(ae_clrcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_8), .COUT(co1_8), .S0(iae_clrcount_2), 
          .S1(iae_clrcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1713[11] 1716[22])
    defparam ae_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INJECT1_0 = "NO";
    defparam ae_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_2 (.A0(ae_clrcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_8), .COUT(co2_8), .S0(iae_clrcount_4), 
          .S1(iae_clrcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1722[11] 1725[22])
    defparam ae_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INJECT1_0 = "NO";
    defparam ae_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_3 (.A0(ae_clrcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_8), .COUT(co3_8), .S0(iae_clrcount_6), 
          .S1(iae_clrcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1731[11] 1734[22])
    defparam ae_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INJECT1_0 = "NO";
    defparam ae_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_4 (.A0(ae_clrcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_8), .COUT(co4_7), .S0(iae_clrcount_8), 
          .S1(iae_clrcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1740[11] 1743[22])
    defparam ae_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INJECT1_0 = "NO";
    defparam ae_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_5 (.A0(ae_clrcount_10), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_7), .S0(iae_clrcount_10)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1749[11] 1751[80])
    defparam ae_clr_ctr_5.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_5.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_5.INJECT1_0 = "NO";
    defparam ae_clr_ctr_5.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1757[11] 1759[47])
    defparam ae_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_0 (.A0(ae_clrcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_1), .B1(wcount_r0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_3), .COUT(co0_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1765[11] 1767[68])
    defparam ae_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INJECT1_0 = "NO";
    defparam ae_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_1 (.A0(ae_clrcount_2), .B0(wcount_r1), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_3), .B1(wcount_r2), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_9), .COUT(co1_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1773[11] 1775[65])
    defparam ae_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INJECT1_0 = "NO";
    defparam ae_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_2 (.A0(ae_clrcount_4), .B0(wcount_r3), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_5), .B1(wcount_r4), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_9), .COUT(co2_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1781[11] 1783[65])
    defparam ae_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INJECT1_0 = "NO";
    defparam ae_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_3 (.A0(ae_clrcount_6), .B0(wcount_r5), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_7), .B1(w_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co2_9), .COUT(co3_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1789[11] 1791[65])
    defparam ae_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INJECT1_0 = "NO";
    defparam ae_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_4 (.A0(ae_clrcount_8), .B0(wcount_r7), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_9), .B1(wcount_r8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_9), .COUT(co4_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1797[11] 1799[65])
    defparam ae_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INJECT1_0 = "NO";
    defparam ae_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_5 (.A0(ae_clr_cmp_set), .B0(ae_clr_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_8), .COUT(ae_clr_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1805[11] 1807[70])
    defparam ae_clr_cmp_5.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_5.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_5.INJECT1_0 = "NO";
    defparam ae_clr_cmp_5.INJECT1_1 = "NO";
    CCU2C a3 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_clr_d_c), .S0(ae_clr_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1813[11] 1815[57])
    defparam a3.INIT0 = 16'b0110011010101010;
    defparam a3.INIT1 = 16'b0110011010101010;
    defparam a3.INJECT1_0 = "NO";
    defparam a3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(af_set_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1821[11] 1823[68])
    defparam af_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INJECT1_0 = "NO";
    defparam af_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_set_ctr_0 (.A0(af_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(af_set_ctr_ci), .COUT(co0_10), .S0(iaf_setcount_0), 
          .S1(iaf_setcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1829[11] 1832[23])
    defparam af_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_0.INJECT1_0 = "NO";
    defparam af_set_ctr_0.INJECT1_1 = "NO";
    CCU2C af_set_ctr_1 (.A0(af_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_10), .COUT(co1_10), .S0(iaf_setcount_2), 
          .S1(iaf_setcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1838[11] 1841[23])
    defparam af_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_1.INJECT1_0 = "NO";
    defparam af_set_ctr_1.INJECT1_1 = "NO";
    CCU2C af_set_ctr_2 (.A0(af_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_10), .COUT(co2_10), .S0(iaf_setcount_4), 
          .S1(iaf_setcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1847[11] 1850[23])
    defparam af_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_2.INJECT1_0 = "NO";
    defparam af_set_ctr_2.INJECT1_1 = "NO";
    CCU2C af_set_ctr_3 (.A0(af_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_10), .COUT(co3_10), .S0(iaf_setcount_6), 
          .S1(iaf_setcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1856[11] 1859[23])
    defparam af_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_3.INJECT1_0 = "NO";
    defparam af_set_ctr_3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_4 (.A0(af_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_9), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_10), .S0(iaf_setcount_8), .S1(iaf_setcount_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1865[11] 1868[22])
    defparam af_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_4.INJECT1_0 = "NO";
    defparam af_set_ctr_4.INJECT1_1 = "NO";
    CCU2C af_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1874[11] 1876[47])
    defparam af_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_set_cmp_0 (.A0(af_setcount_0), .B0(rcount_w1), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_1), .B1(rcount_w2), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_4), .COUT(co0_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1882[11] 1884[69])
    defparam af_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_0.INJECT1_0 = "NO";
    defparam af_set_cmp_0.INJECT1_1 = "NO";
    CCU2C af_set_cmp_1 (.A0(af_setcount_2), .B0(rcount_w3), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_3), .B1(rcount_w4), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_11), .COUT(co1_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1890[11] 1892[67])
    defparam af_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_1.INJECT1_0 = "NO";
    defparam af_set_cmp_1.INJECT1_1 = "NO";
    CCU2C af_set_cmp_2 (.A0(af_setcount_4), .B0(rcount_w5), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_5), .B1(rcount_w6), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_11), .COUT(co2_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1898[11] 1900[67])
    defparam af_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_2.INJECT1_0 = "NO";
    defparam af_set_cmp_2.INJECT1_1 = "NO";
    CCU2C af_set_cmp_3 (.A0(af_setcount_6), .B0(r_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_7), .B1(rcount_w8), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_11), .COUT(co3_11)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1906[11] 1908[67])
    defparam af_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_3.INJECT1_0 = "NO";
    defparam af_set_cmp_3.INJECT1_1 = "NO";
    CCU2C af_set_cmp_4 (.A0(af_setcount_8), .B0(rcount_w9), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_set_cmp_set), .B1(af_set_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_11), .COUT(af_set_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1914[11] 1916[69])
    defparam af_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_4.INJECT1_0 = "NO";
    defparam af_set_cmp_4.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a4 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_set_c), .S0(af_set)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(1926[11] 1928[53])
    defparam a4.INIT0 = 16'b0110011010101010;
    defparam a4.INIT1 = 16'b0110011010101010;
    defparam a4.INJECT1_0 = "NO";
    defparam a4.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    XOR2 XOR2_t18 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(400[10:62])
    XOR2 XOR2_t17 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(402[10:62])
    XOR2 XOR2_t16 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(404[10:62])
    XOR2 XOR2_t15 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(406[10:62])
    XOR2 XOR2_t14 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(408[10:62])
    XOR2 XOR2_t13 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(410[10:62])
    XOR2 XOR2_t12 (.A(wcount_8), .B(wcount_9), .Z(w_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(412[10:62])
    XOR2 XOR2_t10 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(416[10:62])
    XOR2 XOR2_t9 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(418[10:61])
    XOR2 XOR2_t8 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(420[10:61])
    XOR2 XOR2_t7 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(422[10:61])
    XOR2 XOR2_t6 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(424[10:61])
    XOR2 XOR2_t5 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(426[10:61])
    XOR2 XOR2_t4 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(428[10:61])
    XOR2 XOR2_t3 (.A(rcount_8), .B(rcount_9), .Z(r_gdata_8)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(430[10:61])
    XOR2 XOR2_t2 (.A(rcount_9), .B(rcount_10), .Z(r_gdata_9)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(432[10:62])
    ROM16X1A LUT4_32 (.AD0(w_gcount_r29), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_32.initval = 16'b0110100110010110;
    ROM16X1A LUT4_31 (.AD0(w_gcount_r25), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_31.initval = 16'b0110100110010110;
    ROM16X1A LUT4_30 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r29), 
            .AD3(w_gcount_r28), .DO0(wcount_r8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_30.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(scuba_vlo), .AD1(w_gcount_r29), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(wcount_r8), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(wcount_r5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(wcount_r7), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(wcount_r4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(wcount_r3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(scuba_vlo), .AD1(w_gcount_r21), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(w_gcount_r21), .AD1(w_gcount_r20), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(r_gcount_w210), .AD1(r_gcount_w29), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(r_gcount_w26), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w210), 
            .AD3(r_gcount_w29), .DO0(rcount_w9)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(scuba_vlo), .AD1(r_gcount_w210), .AD2(r_gcount_w29), 
            .AD3(r_gcount_w28), .DO0(rcount_w8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(rcount_w9), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(rcount_w8), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(rcount_w5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(scuba_vlo), .AD1(r_gcount_w22), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(r_gcount_w22), .AD1(r_gcount_w21), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0110100110010110;
    XOR2 XOR2_t1 (.A(wptr_9), .B(r_gcount_w210), .Z(wfill_sub_msb)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(522[10:68])
    XOR2 XOR2_t0 (.A(w_gcount_r29), .B(rptr_10), .Z(rfill_sub_msb)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(524[10:68])
    ROM16X1A LUT4_10 (.AD0(scuba_vlo), .AD1(w_gcount_r29), .AD2(rcount_10), 
            .AD3(rptr_10), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0000010000010000;
    ROM16X1A LUT4_9 (.AD0(scuba_vlo), .AD1(w_gcount_r29), .AD2(rcount_10), 
            .AD3(rptr_10), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0001000000000100;
    ROM16X1A LUT4_8 (.AD0(scuba_vlo), .AD1(r_gcount_w210), .AD2(wcount_9), 
            .AD3(wptr_9), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0000000101000000;
    ROM16X1A LUT4_7 (.AD0(scuba_vlo), .AD1(r_gcount_w210), .AD2(wcount_9), 
            .AD3(wptr_9), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0100000000000001;
    ROM16X1A LUT4_6 (.AD0(rptr_10), .AD1(w_gcount_r29), .AD2(rcount_10), 
            .AD3(ae_setcount_10), .DO0(ae_set_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0001001111001000;
    ROM16X1A LUT4_5 (.AD0(rptr_10), .AD1(w_gcount_r29), .AD2(rcount_10), 
            .AD3(ae_setcount_10), .DO0(ae_set_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0010000000000100;
    ROM16X1A LUT4_4 (.AD0(rptr_10), .AD1(w_gcount_r29), .AD2(rcount_10), 
            .AD3(ae_clrcount_10), .DO0(ae_clr_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0001001111001000;
    ROM16X1A LUT4_3 (.AD0(rptr_10), .AD1(w_gcount_r29), .AD2(rcount_10), 
            .AD3(ae_clrcount_10), .DO0(ae_clr_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b0010000000000100;
    ROM16X1A LUT4_2 (.AD0(scuba_vlo), .AD1(ae_clr_d), .AD2(ae_set_d), 
            .AD3(AlmostEmpty), .DO0(ae_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0100010001010000;
    ROM16X1A LUT4_1 (.AD0(wptr_9), .AD1(r_gcount_w210), .AD2(wcount_9), 
            .AD3(af_setcount_9), .DO0(af_set_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0100110000110010;
    ROM16X1A LUT4_0 (.AD0(wptr_9), .AD1(r_gcount_w210), .AD2(wcount_9), 
            .AD3(af_setcount_9), .DO0(af_set_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b1000000000000001;
    PDPW16KD pdp_ram_0_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), 
            .DI3(Data[3]), .DI4(Data[4]), .DI5(Data[5]), .DI6(Data[6]), 
            .DI7(Data[7]), .DI8(Data[8]), .DI9(Data[9]), .DI10(Data[10]), 
            .DI11(Data[11]), .DI12(Data[12]), .DI13(Data[13]), .DI14(Data[14]), 
            .DI15(Data[15]), .DI16(Data[16]), .DI17(Data[17]), .DI18(Data[32]), 
            .DI19(Data[33]), .DI20(Data[34]), .DI21(Data[35]), .DI22(Data[36]), 
            .DI23(Data[37]), .DI24(Data[38]), .DI25(Data[39]), .DI26(Data[40]), 
            .DI27(Data[41]), .DI28(Data[42]), .DI29(Data[43]), .DI30(Data[44]), 
            .DI31(Data[45]), .DI32(Data[46]), .DI33(Data[47]), .DI34(Data[48]), 
            .DI35(Data[49]), .ADW0(wptr_0), .ADW1(wptr_1), .ADW2(wptr_2), 
            .ADW3(wptr_3), .ADW4(wptr_4), .ADW5(wptr_5), .ADW6(wptr_6), 
            .ADW7(wptr_7), .ADW8(wptr_8), .BE0(scuba_vhi), .BE1(scuba_vhi), 
            .BE2(scuba_vhi), .BE3(scuba_vhi), .CEW(wren_i), .CLKW(WrClock), 
            .CSW0(scuba_vhi), .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), 
            .ADR1(scuba_vlo), .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(rptr_0), 
            .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), .ADR8(rptr_4), 
            .ADR9(rptr_5), .ADR10(rptr_6), .ADR11(rptr_7), .ADR12(rptr_8), 
            .ADR13(rptr_9), .CER(scuba_vhi), .OCER(scuba_vhi), .CLKR(RdClock), 
            .CSR0(rden_i), .CSR1(scuba_vlo), .CSR2(scuba_vlo), .RST(Reset), 
            .DO0(Q[0]), .DO1(Q[1]), .DO2(Q[2]), .DO3(Q[3]), .DO4(Q[4]), 
            .DO5(Q[5]), .DO6(Q[6]), .DO7(Q[7]), .DO8(Q[8]), .DO9(Q[9]), 
            .DO10(Q[10]), .DO11(Q[11]), .DO12(Q[12]), .DO13(Q[13]), 
            .DO14(Q[14]), .DO15(Q[15]), .DO16(Q[16]), .DO17(Q[17])) /* synthesis MEM_LPC_FILE="slfifo_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_1.DATA_WIDTH_W = 36;
    defparam pdp_ram_0_0_1.DATA_WIDTH_R = 18;
    defparam pdp_ram_0_0_1.GSR = "ENABLED";
    defparam pdp_ram_0_0_1.REGMODE = "OUTREG";
    defparam pdp_ram_0_0_1.RESETMODE = "SYNC";
    defparam pdp_ram_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_1.CSDECODE_W = "0b001";
    defparam pdp_ram_0_0_1.CSDECODE_R = "0b001";
    defparam pdp_ram_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INIT_DATA = "STATIC";
    PDPW16KD pdp_ram_0_1_0 (.DI0(Data[18]), .DI1(Data[19]), .DI2(Data[20]), 
            .DI3(Data[21]), .DI4(Data[22]), .DI5(Data[23]), .DI6(Data[24]), 
            .DI7(Data[25]), .DI8(Data[26]), .DI9(Data[27]), .DI10(Data[28]), 
            .DI11(Data[29]), .DI12(Data[30]), .DI13(Data[31]), .DI14(scuba_vlo), 
            .DI15(scuba_vlo), .DI16(scuba_vlo), .DI17(scuba_vlo), .DI18(Data[50]), 
            .DI19(Data[51]), .DI20(Data[52]), .DI21(Data[53]), .DI22(Data[54]), 
            .DI23(Data[55]), .DI24(Data[56]), .DI25(Data[57]), .DI26(Data[58]), 
            .DI27(Data[59]), .DI28(Data[60]), .DI29(Data[61]), .DI30(Data[62]), 
            .DI31(Data[63]), .DI32(scuba_vlo), .DI33(scuba_vlo), .DI34(scuba_vlo), 
            .DI35(scuba_vlo), .ADW0(wptr_0), .ADW1(wptr_1), .ADW2(wptr_2), 
            .ADW3(wptr_3), .ADW4(wptr_4), .ADW5(wptr_5), .ADW6(wptr_6), 
            .ADW7(wptr_7), .ADW8(wptr_8), .BE0(scuba_vhi), .BE1(scuba_vhi), 
            .BE2(scuba_vhi), .BE3(scuba_vhi), .CEW(wren_i), .CLKW(WrClock), 
            .CSW0(scuba_vhi), .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), 
            .ADR1(scuba_vlo), .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(rptr_0), 
            .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), .ADR8(rptr_4), 
            .ADR9(rptr_5), .ADR10(rptr_6), .ADR11(rptr_7), .ADR12(rptr_8), 
            .ADR13(rptr_9), .CER(scuba_vhi), .OCER(scuba_vhi), .CLKR(RdClock), 
            .CSR0(rden_i), .CSR1(scuba_vlo), .CSR2(scuba_vlo), .RST(Reset), 
            .DO0(Q[18]), .DO1(Q[19]), .DO2(Q[20]), .DO3(Q[21]), .DO4(Q[22]), 
            .DO5(Q[23]), .DO6(Q[24]), .DO7(Q[25]), .DO8(Q[26]), .DO9(Q[27]), 
            .DO10(Q[28]), .DO11(Q[29]), .DO12(Q[30]), .DO13(Q[31])) /* synthesis MEM_LPC_FILE="slfifo_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_1_0.DATA_WIDTH_W = 36;
    defparam pdp_ram_0_1_0.DATA_WIDTH_R = 18;
    defparam pdp_ram_0_1_0.GSR = "ENABLED";
    defparam pdp_ram_0_1_0.REGMODE = "OUTREG";
    defparam pdp_ram_0_1_0.RESETMODE = "SYNC";
    defparam pdp_ram_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_0.CSDECODE_W = "0b001";
    defparam pdp_ram_0_1_0.CSDECODE_R = "0b001";
    defparam pdp_ram_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INIT_DATA = "STATIC";
    FD1P3BX FF_161 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/ftp/hdmi_rx_fpga_design_fullhd/par/ddr_ip/slfifo_fifo/slfifo_fifo.v(642[13] 643[22])
    defparam FF_161.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

