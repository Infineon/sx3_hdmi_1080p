// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.2.446
// Netlist written on Tue Mar 09 16:14:08 2021
//
// Verilog Description of module aud_buffer
//

module aud_buffer (Data, Clock, WrEn, RdEn, Reset, Q, Empty, Full, 
            AlmostFull) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(8[8:18])
    input [15:0]Data;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(10[23:27])
    input Clock;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(11[16:21])
    input WrEn;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(12[16:20])
    input RdEn;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(13[16:20])
    input Reset;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(14[16:21])
    output [15:0]Q;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(15[24:25])
    output Empty;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(16[17:22])
    output Full;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(17[17:21])
    output AlmostFull;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(18[17:27])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(11[16:21])
    
    wire invout_2, invout_1, rden_i_inv, fcnt_en_inv, fcnt_en, empty_d, 
        full_d, ifcount_0, ifcount_1, bdcnt_bctr_ci, ifcount_2, ifcount_3, 
        co0, ifcount_4, ifcount_5, co1, ifcount_6, ifcount_7, co2, 
        cmp_ci, rden_i, co0_1, co1_1, co2_1, cmp_le_1, cmp_le_1_c, 
        cmp_ci_1, co0_2, co1_2, co2_2, wren_i, wren_i_inv, cmp_ge_d1, 
        cmp_ge_d1_c, iwcount_0, iwcount_1, w_ctr_ci, wcount_0, wcount_1, 
        iwcount_2, iwcount_3, co0_3, wcount_2, wcount_3, iwcount_4, 
        iwcount_5, co1_3, wcount_4, wcount_5, iwcount_6, iwcount_7, 
        co2_3, wcount_6, wcount_7, ircount_0, ircount_1, r_ctr_ci, 
        rcount_0, rcount_1, ircount_2, ircount_3, co0_4, rcount_2, 
        rcount_3, ircount_4, ircount_5, co1_4, rcount_4, rcount_5, 
        ircount_6, ircount_7, co2_4, rcount_6, rcount_7, cmp_ci_2, 
        fcnt_en_inv_inv, cnt_con, fcount_0, fcount_1, co0_5, cnt_con_inv, 
        fcount_2, fcount_3, co1_5, fcount_4, fcount_5, co2_5, fcount_6, 
        fcount_7, af_d, scuba_vhi, scuba_vlo, af_d_c;
    
    INV INV_8 (.A(Full), .Z(invout_2));
    AND2 AND2_t4 (.A(WrEn), .B(invout_2), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(122[10:54])
    AND2 AND2_t3 (.A(RdEn), .B(invout_1), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(126[10:54])
    FD1P3DX FF_25 (.D(ifcount_1), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(203[13] 204[22])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(ifcount_2), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(207[13] 208[22])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(ifcount_3), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(211[13] 212[22])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(ifcount_4), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(215[13] 216[22])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(ifcount_5), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(219[13] 220[22])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(ifcount_6), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(223[13] 224[22])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(ifcount_7), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(227[13] 228[22])
    defparam FF_19.GSR = "ENABLED";
    FD1S3BX FF_18 (.D(empty_d), .CK(Clock), .PD(Reset), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(231[13:69])
    defparam FF_18.GSR = "ENABLED";
    FD1S3DX FF_17 (.D(full_d), .CK(Clock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(234[13:67])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(iwcount_0), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(237[13:85])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(iwcount_1), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(240[13:85])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(iwcount_2), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(243[13:85])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(iwcount_3), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(246[13:85])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(iwcount_4), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(249[13:85])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(iwcount_5), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(252[13:85])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(iwcount_6), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(255[13:85])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(iwcount_7), .SP(wren_i), .CK(Clock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(258[13:84])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(ircount_0), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(261[13:84])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(ircount_1), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(264[13:84])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(ircount_2), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(267[13:84])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(ircount_3), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(270[13:84])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(ircount_4), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(273[13:84])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(ircount_5), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(276[13:84])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(ircount_6), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(279[13:84])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(ircount_7), .SP(rden_i), .CK(Clock), .CD(Reset), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(282[13:84])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(af_d), .CK(Clock), .CD(Reset), .Q(AlmostFull)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(285[13:68])
    defparam FF_0.GSR = "ENABLED";
    CCU2C bdcnt_bctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(cnt_con), .B1(cnt_con), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(bdcnt_bctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(292[11] 294[52])
    defparam bdcnt_bctr_cia.INIT0 = 16'b0110011010101010;
    defparam bdcnt_bctr_cia.INIT1 = 16'b0110011010101010;
    defparam bdcnt_bctr_cia.INJECT1_0 = "NO";
    defparam bdcnt_bctr_cia.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_0 (.A0(fcount_0), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_1), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(bdcnt_bctr_ci), .COUT(co0), .S0(ifcount_0), .S1(ifcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(300[11] 302[73])
    defparam bdcnt_bctr_0.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_0.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_0.INJECT1_0 = "NO";
    defparam bdcnt_bctr_0.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_1 (.A0(fcount_2), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_3), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(ifcount_2), .S1(ifcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(308[11] 310[63])
    defparam bdcnt_bctr_1.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_1.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_1.INJECT1_0 = "NO";
    defparam bdcnt_bctr_1.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_2 (.A0(fcount_4), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_5), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(ifcount_4), .S1(ifcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(316[11] 318[63])
    defparam bdcnt_bctr_2.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_2.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_2.INJECT1_0 = "NO";
    defparam bdcnt_bctr_2.INJECT1_1 = "NO";
    CCU2C bdcnt_bctr_3 (.A0(fcount_6), .B0(cnt_con), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_7), .B1(cnt_con), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .S0(ifcount_6), .S1(ifcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(324[11] 326[63])
    defparam bdcnt_bctr_3.INIT0 = 16'b1001100110101010;
    defparam bdcnt_bctr_3.INIT1 = 16'b1001100110101010;
    defparam bdcnt_bctr_3.INJECT1_0 = "NO";
    defparam bdcnt_bctr_3.INJECT1_1 = "NO";
    CCU2C e_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(332[11] 334[45])
    defparam e_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam e_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam e_cmp_ci_a.INJECT1_0 = "NO";
    defparam e_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C e_cmp_0 (.A0(rden_i), .B0(fcount_0), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci), .COUT(co0_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(340[11] 342[50])
    defparam e_cmp_0.INIT0 = 16'b1001100110101010;
    defparam e_cmp_0.INIT1 = 16'b1001100110101010;
    defparam e_cmp_0.INJECT1_0 = "NO";
    defparam e_cmp_0.INJECT1_1 = "NO";
    CCU2C e_cmp_1 (.A0(scuba_vlo), .B0(fcount_2), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_3), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(348[11] 350[49])
    defparam e_cmp_1.INIT0 = 16'b1001100110101010;
    defparam e_cmp_1.INIT1 = 16'b1001100110101010;
    defparam e_cmp_1.INJECT1_0 = "NO";
    defparam e_cmp_1.INJECT1_1 = "NO";
    CCU2C e_cmp_2 (.A0(scuba_vlo), .B0(fcount_4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_5), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(356[11] 358[49])
    defparam e_cmp_2.INIT0 = 16'b1001100110101010;
    defparam e_cmp_2.INIT1 = 16'b1001100110101010;
    defparam e_cmp_2.INJECT1_0 = "NO";
    defparam e_cmp_2.INJECT1_1 = "NO";
    CCU2C e_cmp_3 (.A0(scuba_vlo), .B0(fcount_6), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(fcount_7), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(cmp_le_1_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(364[11] 366[54])
    defparam e_cmp_3.INIT0 = 16'b1001100110101010;
    defparam e_cmp_3.INIT1 = 16'b1001100110101010;
    defparam e_cmp_3.INJECT1_0 = "NO";
    defparam e_cmp_3.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_le_1_c), .S0(cmp_le_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(372[11] 374[57])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C g_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(380[11] 382[47])
    defparam g_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam g_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam g_cmp_ci_a.INJECT1_0 = "NO";
    defparam g_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C g_cmp_0 (.A0(fcount_0), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_1), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(388[11] 390[52])
    defparam g_cmp_0.INIT0 = 16'b1001100110101010;
    defparam g_cmp_0.INIT1 = 16'b1001100110101010;
    defparam g_cmp_0.INJECT1_0 = "NO";
    defparam g_cmp_0.INJECT1_1 = "NO";
    CCU2C g_cmp_1 (.A0(fcount_2), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_3), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(396[11] 398[49])
    defparam g_cmp_1.INIT0 = 16'b1001100110101010;
    defparam g_cmp_1.INIT1 = 16'b1001100110101010;
    defparam g_cmp_1.INJECT1_0 = "NO";
    defparam g_cmp_1.INJECT1_1 = "NO";
    CCU2C g_cmp_2 (.A0(fcount_4), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_5), .B1(wren_i), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(404[11] 406[49])
    defparam g_cmp_2.INIT0 = 16'b1001100110101010;
    defparam g_cmp_2.INIT1 = 16'b1001100110101010;
    defparam g_cmp_2.INJECT1_0 = "NO";
    defparam g_cmp_2.INJECT1_1 = "NO";
    CCU2C g_cmp_3 (.A0(fcount_6), .B0(wren_i), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_7), .B1(wren_i_inv), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_2), .COUT(cmp_ge_d1_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(412[11] 414[55])
    defparam g_cmp_3.INIT0 = 16'b1001100110101010;
    defparam g_cmp_3.INIT1 = 16'b1001100110101010;
    defparam g_cmp_3.INJECT1_0 = "NO";
    defparam g_cmp_3.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ge_d1_c), .S0(cmp_ge_d1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(420[11] 422[59])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C w_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), .D1(scuba_vhi), 
          .COUT(w_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(428[11] 430[47])
    defparam w_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_ctr_cia.INJECT1_0 = "NO";
    defparam w_ctr_cia.INJECT1_1 = "NO";
    CCU2C w_ctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_ctr_ci), .COUT(co0_3), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(436[11] 438[70])
    defparam w_ctr_0.INIT0 = 16'b0110011010101010;
    defparam w_ctr_0.INIT1 = 16'b0110011010101010;
    defparam w_ctr_0.INJECT1_0 = "NO";
    defparam w_ctr_0.INJECT1_1 = "NO";
    CCU2C w_ctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_3), .COUT(co1_3), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(444[11] 446[67])
    defparam w_ctr_1.INIT0 = 16'b0110011010101010;
    defparam w_ctr_1.INIT1 = 16'b0110011010101010;
    defparam w_ctr_1.INJECT1_0 = "NO";
    defparam w_ctr_1.INJECT1_1 = "NO";
    CCU2C w_ctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_3), .COUT(co2_3), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(452[11] 454[67])
    defparam w_ctr_2.INIT0 = 16'b0110011010101010;
    defparam w_ctr_2.INIT1 = 16'b0110011010101010;
    defparam w_ctr_2.INJECT1_0 = "NO";
    defparam w_ctr_2.INJECT1_1 = "NO";
    CCU2C w_ctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(460[11] 462[67])
    defparam w_ctr_3.INIT0 = 16'b0110011010101010;
    defparam w_ctr_3.INIT1 = 16'b0110011010101010;
    defparam w_ctr_3.INJECT1_0 = "NO";
    defparam w_ctr_3.INJECT1_1 = "NO";
    CCU2C r_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), .D1(scuba_vhi), 
          .COUT(r_ctr_ci)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(468[11] 470[47])
    defparam r_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_ctr_cia.INJECT1_0 = "NO";
    defparam r_ctr_cia.INJECT1_1 = "NO";
    CCU2C r_ctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_ctr_ci), .COUT(co0_4), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(476[11] 478[70])
    defparam r_ctr_0.INIT0 = 16'b0110011010101010;
    defparam r_ctr_0.INIT1 = 16'b0110011010101010;
    defparam r_ctr_0.INJECT1_0 = "NO";
    defparam r_ctr_0.INJECT1_1 = "NO";
    CCU2C r_ctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_4), .COUT(co1_4), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(484[11] 486[67])
    defparam r_ctr_1.INIT0 = 16'b0110011010101010;
    defparam r_ctr_1.INIT1 = 16'b0110011010101010;
    defparam r_ctr_1.INJECT1_0 = "NO";
    defparam r_ctr_1.INJECT1_1 = "NO";
    CCU2C r_ctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_4), .COUT(co2_4), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(492[11] 494[67])
    defparam r_ctr_2.INIT0 = 16'b0110011010101010;
    defparam r_ctr_2.INIT1 = 16'b0110011010101010;
    defparam r_ctr_2.INJECT1_0 = "NO";
    defparam r_ctr_2.INJECT1_1 = "NO";
    CCU2C r_ctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_4), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(500[11] 502[67])
    defparam r_ctr_3.INIT0 = 16'b0110011010101010;
    defparam r_ctr_3.INIT1 = 16'b0110011010101010;
    defparam r_ctr_3.INJECT1_0 = "NO";
    defparam r_ctr_3.INJECT1_1 = "NO";
    CCU2C af_cmp_ci_a (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_2)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(508[11] 510[47])
    defparam af_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_cmp_0 (.A0(fcount_0), .B0(fcnt_en_inv_inv), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(fcount_1), .B1(cnt_con), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_2), .COUT(co0_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(516[11] 518[52])
    defparam af_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_cmp_0.INJECT1_0 = "NO";
    defparam af_cmp_0.INJECT1_1 = "NO";
    CCU2C af_cmp_1 (.A0(fcount_2), .B0(cnt_con_inv), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(524[11] 526[49])
    defparam af_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_cmp_1.INJECT1_0 = "NO";
    defparam af_cmp_1.INJECT1_1 = "NO";
    CCU2C af_cmp_2 (.A0(fcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_5), .B1(scuba_vhi), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_5), .COUT(co2_5)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(532[11] 534[49])
    defparam af_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_cmp_2.INJECT1_0 = "NO";
    defparam af_cmp_2.INJECT1_1 = "NO";
    CCU2C af_cmp_3 (.A0(fcount_6), .B0(scuba_vhi), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(fcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_5), .COUT(af_d_c)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(540[11] 542[50])
    defparam af_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_cmp_3.INJECT1_0 = "NO";
    defparam af_cmp_3.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a2 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_d_c), .S0(af_d)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(552[11] 554[49])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    INV INV_7 (.A(Empty), .Z(invout_1));
    AND2 AND2_t2 (.A(wren_i), .B(rden_i_inv), .Z(cnt_con)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(130[10:59])
    XOR2 XOR2_t1 (.A(wren_i), .B(rden_i), .Z(fcnt_en)) /* synthesis syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(132[10:55])
    INV INV_6 (.A(rden_i), .Z(rden_i_inv));
    INV INV_5 (.A(wren_i), .Z(wren_i_inv));
    ROM16X1A LUT4_1 (.AD0(Empty), .AD1(wren_i), .AD2(cmp_le_1), .AD3(scuba_vlo), 
            .DO0(empty_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0011001000110010;
    ROM16X1A LUT4_0 (.AD0(Full), .AD1(rden_i), .AD2(cmp_ge_d1), .AD3(scuba_vlo), 
            .DO0(full_d)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0011001000110010;
    INV INV_3 (.A(fcnt_en), .Z(fcnt_en_inv));
    INV INV_2 (.A(cnt_con), .Z(cnt_con_inv));
    INV INV_0 (.A(fcnt_en_inv), .Z(fcnt_en_inv_inv));
    DP16KD pdp_ram_0_0_0 (.DIA0(Data[0]), .DIA1(Data[1]), .DIA2(Data[2]), 
           .DIA3(Data[3]), .DIA4(Data[4]), .DIA5(Data[5]), .DIA6(Data[6]), 
           .DIA7(Data[7]), .DIA8(Data[8]), .DIA9(Data[9]), .DIA10(Data[10]), 
           .DIA11(Data[11]), .DIA12(Data[12]), .DIA13(Data[13]), .DIA14(Data[14]), 
           .DIA15(Data[15]), .DIA16(scuba_vlo), .DIA17(scuba_vlo), .ADA0(scuba_vhi), 
           .ADA1(scuba_vhi), .ADA2(scuba_vlo), .ADA3(scuba_vlo), .ADA4(wcount_0), 
           .ADA5(wcount_1), .ADA6(wcount_2), .ADA7(wcount_3), .ADA8(wcount_4), 
           .ADA9(wcount_5), .ADA10(wcount_6), .ADA11(scuba_vlo), .ADA12(scuba_vlo), 
           .ADA13(scuba_vlo), .CEA(wren_i), .OCEA(wren_i), .CLKA(Clock), 
           .WEA(scuba_vhi), .CSA0(scuba_vlo), .CSA1(scuba_vlo), .CSA2(scuba_vlo), 
           .RSTA(Reset), .DIB0(scuba_vlo), .DIB1(scuba_vlo), .DIB2(scuba_vlo), 
           .DIB3(scuba_vlo), .DIB4(scuba_vlo), .DIB5(scuba_vlo), .DIB6(scuba_vlo), 
           .DIB7(scuba_vlo), .DIB8(scuba_vlo), .DIB9(scuba_vlo), .DIB10(scuba_vlo), 
           .DIB11(scuba_vlo), .DIB12(scuba_vlo), .DIB13(scuba_vlo), .DIB14(scuba_vlo), 
           .DIB15(scuba_vlo), .DIB16(scuba_vlo), .DIB17(scuba_vlo), .ADB0(scuba_vlo), 
           .ADB1(scuba_vlo), .ADB2(scuba_vlo), .ADB3(scuba_vlo), .ADB4(rcount_0), 
           .ADB5(rcount_1), .ADB6(rcount_2), .ADB7(rcount_3), .ADB8(rcount_4), 
           .ADB9(rcount_5), .ADB10(rcount_6), .ADB11(scuba_vlo), .ADB12(scuba_vlo), 
           .ADB13(scuba_vlo), .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(Clock), 
           .WEB(scuba_vlo), .CSB0(scuba_vlo), .CSB1(scuba_vlo), .CSB2(scuba_vlo), 
           .RSTB(Reset), .DOB0(Q[0]), .DOB1(Q[1]), .DOB2(Q[2]), .DOB3(Q[3]), 
           .DOB4(Q[4]), .DOB5(Q[5]), .DOB6(Q[6]), .DOB7(Q[7]), .DOB8(Q[8]), 
           .DOB9(Q[9]), .DOB10(Q[10]), .DOB11(Q[11]), .DOB12(Q[12]), 
           .DOB13(Q[13]), .DOB14(Q[14]), .DOB15(Q[15])) /* synthesis MEM_LPC_FILE="aud_buffer.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
    defparam pdp_ram_0_0_0.DATA_WIDTH_A = 18;
    defparam pdp_ram_0_0_0.DATA_WIDTH_B = 18;
    defparam pdp_ram_0_0_0.REGMODE_A = "OUTREG";
    defparam pdp_ram_0_0_0.REGMODE_B = "OUTREG";
    defparam pdp_ram_0_0_0.RESETMODE = "SYNC";
    defparam pdp_ram_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_0.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_0_0.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_0_0.CSDECODE_A = "0b000";
    defparam pdp_ram_0_0_0.CSDECODE_B = "0b000";
    defparam pdp_ram_0_0_0.GSR = "ENABLED";
    defparam pdp_ram_0_0_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_0.INIT_DATA = "STATIC";
    FD1P3DX FF_26 (.D(ifcount_0), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
            .Q(fcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // f:/cypress_prj/hdmi_rx_cypress/hdmi_rx_fpga_design_fullhd_industrialgrade_192aud/par_aud_release/aud_buf/aud_buffer/aud_buffer.v(199[13] 200[22])
    defparam FF_26.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

