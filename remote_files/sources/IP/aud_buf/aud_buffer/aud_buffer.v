/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.11.2.446 */
/* Module Version: 5.1 */
/* C:\lscc\diamond\3.11_x64\ispfpga\bin\nt64\scuba.exe -w -n aud_buffer -lang verilog -synth lse -bus_exp 7 -bb -arch sa5p00 -type ebfifo -sync_mode -depth 128 -width 16 -regout -no_enable -pe -1 -pf 100 -sync_reset -fdc F:/cypress_prj/HDMI_Rx_cypress/HDMI_RX_FPGA_design_FULLHD_Industrialgrade_192aud/PAR_aud_release/aud_buf/aud_buffer/aud_buffer.fdc  */
/* Tue Mar 09 16:14:07 2021 */


`timescale 1 ns / 1 ps
module aud_buffer (Data, Clock, WrEn, RdEn, Reset, Q, Empty, Full, 
    AlmostFull)/* synthesis NGD_DRC_MASK=1 */;
    input wire [15:0] Data;
    input wire Clock;
    input wire WrEn;
    input wire RdEn;
    input wire Reset;
    output wire [15:0] Q;
    output wire Empty;
    output wire Full;
    output wire AlmostFull;

    wire invout_2;
    wire invout_1;
    wire rden_i_inv;
    wire invout_0;
    wire r_nw_inv;
    wire r_nw;
    wire fcnt_en_inv;
    wire fcnt_en;
    wire empty_i;
    wire empty_d;
    wire full_i;
    wire full_d;
    wire ifcount_0;
    wire ifcount_1;
    wire bdcnt_bctr_ci;
    wire ifcount_2;
    wire ifcount_3;
    wire co0;
    wire ifcount_4;
    wire ifcount_5;
    wire co1;
    wire ifcount_6;
    wire ifcount_7;
    wire co3;
    wire co2;
    wire cmp_ci;
    wire rden_i;
    wire co0_1;
    wire co1_1;
    wire co2_1;
    wire cmp_le_1;
    wire cmp_le_1_c;
    wire cmp_ci_1;
    wire co0_2;
    wire co1_2;
    wire co2_2;
    wire wren_i;
    wire wren_i_inv;
    wire cmp_ge_d1;
    wire cmp_ge_d1_c;
    wire iwcount_0;
    wire iwcount_1;
    wire w_ctr_ci;
    wire wcount_0;
    wire wcount_1;
    wire iwcount_2;
    wire iwcount_3;
    wire co0_3;
    wire wcount_2;
    wire wcount_3;
    wire iwcount_4;
    wire iwcount_5;
    wire co1_3;
    wire wcount_4;
    wire wcount_5;
    wire iwcount_6;
    wire iwcount_7;
    wire co3_1;
    wire co2_3;
    wire wcount_6;
    wire wcount_7;
    wire ircount_0;
    wire ircount_1;
    wire r_ctr_ci;
    wire rcount_0;
    wire rcount_1;
    wire ircount_2;
    wire ircount_3;
    wire co0_4;
    wire rcount_2;
    wire rcount_3;
    wire ircount_4;
    wire ircount_5;
    wire co1_4;
    wire rcount_4;
    wire rcount_5;
    wire ircount_6;
    wire ircount_7;
    wire co3_2;
    wire co2_4;
    wire rcount_6;
    wire rcount_7;
    wire cmp_ci_2;
    wire fcnt_en_inv_inv;
    wire cnt_con;
    wire fcount_0;
    wire fcount_1;
    wire co0_5;
    wire cnt_con_inv;
    wire fcount_2;
    wire fcount_3;
    wire co1_5;
    wire fcount_4;
    wire fcount_5;
    wire co2_5;
    wire fcount_6;
    wire fcount_7;
    wire af_d;
    wire scuba_vhi;
    wire scuba_vlo;
    wire af_d_c;

    AND2 AND2_t4 (.A(WrEn), .B(invout_2), .Z(wren_i));

    INV INV_8 (.A(full_i), .Z(invout_2));

    AND2 AND2_t3 (.A(RdEn), .B(invout_1), .Z(rden_i));

    INV INV_7 (.A(empty_i), .Z(invout_1));

    AND2 AND2_t2 (.A(wren_i), .B(rden_i_inv), .Z(cnt_con));

    XOR2 XOR2_t1 (.A(wren_i), .B(rden_i), .Z(fcnt_en));

    INV INV_6 (.A(rden_i), .Z(rden_i_inv));

    INV INV_5 (.A(wren_i), .Z(wren_i_inv));

    defparam LUT4_1.initval =  16'h3232 ;
    ROM16X1A LUT4_1 (.AD3(scuba_vlo), .AD2(cmp_le_1), .AD1(wren_i), .AD0(empty_i), 
        .DO0(empty_d));

    defparam LUT4_0.initval =  16'h3232 ;
    ROM16X1A LUT4_0 (.AD3(scuba_vlo), .AD2(cmp_ge_d1), .AD1(rden_i), .AD0(full_i), 
        .DO0(full_d));

    AND2 AND2_t0 (.A(rden_i), .B(invout_0), .Z(r_nw));

    INV INV_4 (.A(wren_i), .Z(invout_0));

    INV INV_3 (.A(fcnt_en), .Z(fcnt_en_inv));

    INV INV_2 (.A(cnt_con), .Z(cnt_con_inv));

    INV INV_1 (.A(r_nw), .Z(r_nw_inv));

    INV INV_0 (.A(fcnt_en_inv), .Z(fcnt_en_inv_inv));

    defparam pdp_ram_0_0_0.INIT_DATA = "STATIC" ;
    defparam pdp_ram_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pdp_ram_0_0_0.CSDECODE_B = "0b000" ;
    defparam pdp_ram_0_0_0.CSDECODE_A = "0b000" ;
    defparam pdp_ram_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pdp_ram_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pdp_ram_0_0_0.GSR = "ENABLED" ;
    defparam pdp_ram_0_0_0.RESETMODE = "SYNC" ;
    defparam pdp_ram_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pdp_ram_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pdp_ram_0_0_0.DATA_WIDTH_B = 18 ;
    defparam pdp_ram_0_0_0.DATA_WIDTH_A = 18 ;
    DP16KD pdp_ram_0_0_0 (.DIA17(scuba_vlo), .DIA16(scuba_vlo), .DIA15(Data[15]), 
        .DIA14(Data[14]), .DIA13(Data[13]), .DIA12(Data[12]), .DIA11(Data[11]), 
        .DIA10(Data[10]), .DIA9(Data[9]), .DIA8(Data[8]), .DIA7(Data[7]), 
        .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), .DIA3(Data[3]), 
        .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), .ADA13(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(wcount_6), .ADA9(wcount_5), 
        .ADA8(wcount_4), .ADA7(wcount_3), .ADA6(wcount_2), .ADA5(wcount_1), 
        .ADA4(wcount_0), .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vhi), 
        .ADA0(scuba_vhi), .CEA(wren_i), .OCEA(wren_i), .CLKA(Clock), .WEA(scuba_vhi), 
        .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), 
        .DIB17(scuba_vlo), .DIB16(scuba_vlo), .DIB15(scuba_vlo), .DIB14(scuba_vlo), 
        .DIB13(scuba_vlo), .DIB12(scuba_vlo), .DIB11(scuba_vlo), .DIB10(scuba_vlo), 
        .DIB9(scuba_vlo), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB13(scuba_vlo), .ADB12(scuba_vlo), 
        .ADB11(scuba_vlo), .ADB10(rcount_6), .ADB9(rcount_5), .ADB8(rcount_4), 
        .ADB7(rcount_3), .ADB6(rcount_2), .ADB5(rcount_1), .ADB4(rcount_0), 
        .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(rden_i), .OCEB(scuba_vhi), .CLKB(Clock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA17(), .DOA16(), 
        .DOA15(), .DOA14(), .DOA13(), .DOA12(), .DOA11(), .DOA10(), .DOA9(), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB17(), .DOB16(), .DOB15(Q[15]), .DOB14(Q[14]), .DOB13(Q[13]), 
        .DOB12(Q[12]), .DOB11(Q[11]), .DOB10(Q[10]), .DOB9(Q[9]), .DOB8(Q[8]), 
        .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), .DOB3(Q[3]), 
        .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="aud_buffer.lpc" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_26 (.D(ifcount_0), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_0))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_25 (.D(ifcount_1), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_1))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_24 (.D(ifcount_2), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_23 (.D(ifcount_3), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_3))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_22 (.D(ifcount_4), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_4))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_21 (.D(ifcount_5), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_5))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_20 (.D(ifcount_6), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_6))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_19 (.D(ifcount_7), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_7))
             /* synthesis GSR="ENABLED" */;

    FD1S3BX FF_18 (.D(empty_d), .CK(Clock), .PD(Reset), .Q(empty_i))
             /* synthesis GSR="ENABLED" */;

    FD1S3DX FF_17 (.D(full_d), .CK(Clock), .CD(Reset), .Q(full_i))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_16 (.D(iwcount_0), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_0))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_15 (.D(iwcount_1), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_1))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_14 (.D(iwcount_2), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_13 (.D(iwcount_3), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_3))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_12 (.D(iwcount_4), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_4))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_11 (.D(iwcount_5), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_5))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_10 (.D(iwcount_6), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_6))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_9 (.D(iwcount_7), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_7))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_8 (.D(ircount_0), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_0))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_7 (.D(ircount_1), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_1))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_6 (.D(ircount_2), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_5 (.D(ircount_3), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_3))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_4 (.D(ircount_4), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_4))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_3 (.D(ircount_5), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_5))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(ircount_6), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_6))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(ircount_7), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_7))
             /* synthesis GSR="ENABLED" */;

    FD1S3DX FF_0 (.D(af_d), .CK(Clock), .CD(Reset), .Q(AlmostFull))
             /* synthesis GSR="ENABLED" */;

    defparam bdcnt_bctr_cia.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_cia.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_cia.INIT1 =  16'h66AA ;
    defparam bdcnt_bctr_cia.INIT0 =  16'h66AA ;
    CCU2C bdcnt_bctr_cia (.A0(scuba_vlo), .A1(cnt_con), .B0(scuba_vlo), 
        .B1(cnt_con), .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(bdcnt_bctr_ci));

    defparam bdcnt_bctr_0.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_0.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_0.INIT1 =  16'h99AA ;
    defparam bdcnt_bctr_0.INIT0 =  16'h99AA ;
    CCU2C bdcnt_bctr_0 (.A0(fcount_0), .A1(fcount_1), .B0(cnt_con), .B1(cnt_con), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(bdcnt_bctr_ci), .S0(ifcount_0), .S1(ifcount_1), .COUT(co0));

    defparam bdcnt_bctr_1.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_1.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_1.INIT1 =  16'h99AA ;
    defparam bdcnt_bctr_1.INIT0 =  16'h99AA ;
    CCU2C bdcnt_bctr_1 (.A0(fcount_2), .A1(fcount_3), .B0(cnt_con), .B1(cnt_con), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0), .S0(ifcount_2), .S1(ifcount_3), .COUT(co1));

    defparam bdcnt_bctr_2.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_2.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_2.INIT1 =  16'h99AA ;
    defparam bdcnt_bctr_2.INIT0 =  16'h99AA ;
    CCU2C bdcnt_bctr_2 (.A0(fcount_4), .A1(fcount_5), .B0(cnt_con), .B1(cnt_con), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1), .S0(ifcount_4), .S1(ifcount_5), .COUT(co2));

    defparam bdcnt_bctr_3.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_3.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_3.INIT1 =  16'h99AA ;
    defparam bdcnt_bctr_3.INIT0 =  16'h99AA ;
    CCU2C bdcnt_bctr_3 (.A0(fcount_6), .A1(fcount_7), .B0(cnt_con), .B1(cnt_con), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2), .S0(ifcount_6), .S1(ifcount_7), .COUT(co3));

    defparam e_cmp_ci_a.INJECT1_1 = "NO" ;
    defparam e_cmp_ci_a.INJECT1_0 = "NO" ;
    defparam e_cmp_ci_a.INIT1 =  16'h66AA ;
    defparam e_cmp_ci_a.INIT0 =  16'h66AA ;
    CCU2C e_cmp_ci_a (.A0(scuba_vhi), .A1(scuba_vhi), .B0(scuba_vhi), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(cmp_ci));

    defparam e_cmp_0.INJECT1_1 = "NO" ;
    defparam e_cmp_0.INJECT1_0 = "NO" ;
    defparam e_cmp_0.INIT1 =  16'h99AA ;
    defparam e_cmp_0.INIT0 =  16'h99AA ;
    CCU2C e_cmp_0 (.A0(rden_i), .A1(scuba_vlo), .B0(fcount_0), .B1(fcount_1), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_ci), .S0(), .S1(), .COUT(co0_1));

    defparam e_cmp_1.INJECT1_1 = "NO" ;
    defparam e_cmp_1.INJECT1_0 = "NO" ;
    defparam e_cmp_1.INIT1 =  16'h99AA ;
    defparam e_cmp_1.INIT0 =  16'h99AA ;
    CCU2C e_cmp_1 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(fcount_2), .B1(fcount_3), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_1), .S0(), .S1(), .COUT(co1_1));

    defparam e_cmp_2.INJECT1_1 = "NO" ;
    defparam e_cmp_2.INJECT1_0 = "NO" ;
    defparam e_cmp_2.INIT1 =  16'h99AA ;
    defparam e_cmp_2.INIT0 =  16'h99AA ;
    CCU2C e_cmp_2 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(fcount_4), .B1(fcount_5), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_1), .S0(), .S1(), .COUT(co2_1));

    defparam e_cmp_3.INJECT1_1 = "NO" ;
    defparam e_cmp_3.INJECT1_0 = "NO" ;
    defparam e_cmp_3.INIT1 =  16'h99AA ;
    defparam e_cmp_3.INIT0 =  16'h99AA ;
    CCU2C e_cmp_3 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(fcount_6), .B1(fcount_7), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_1), .S0(), .S1(), .COUT(cmp_le_1_c));

    defparam a0.INJECT1_1 = "NO" ;
    defparam a0.INJECT1_0 = "NO" ;
    defparam a0.INIT1 =  16'h66AA ;
    defparam a0.INIT0 =  16'h66AA ;
    CCU2C a0 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_le_1_c), .S0(cmp_le_1), .S1(), .COUT());

    defparam g_cmp_ci_a.INJECT1_1 = "NO" ;
    defparam g_cmp_ci_a.INJECT1_0 = "NO" ;
    defparam g_cmp_ci_a.INIT1 =  16'h66AA ;
    defparam g_cmp_ci_a.INIT0 =  16'h66AA ;
    CCU2C g_cmp_ci_a (.A0(scuba_vhi), .A1(scuba_vhi), .B0(scuba_vhi), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(cmp_ci_1));

    defparam g_cmp_0.INJECT1_1 = "NO" ;
    defparam g_cmp_0.INJECT1_0 = "NO" ;
    defparam g_cmp_0.INIT1 =  16'h99AA ;
    defparam g_cmp_0.INIT0 =  16'h99AA ;
    CCU2C g_cmp_0 (.A0(fcount_0), .A1(fcount_1), .B0(wren_i), .B1(wren_i), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_ci_1), .S0(), .S1(), .COUT(co0_2));

    defparam g_cmp_1.INJECT1_1 = "NO" ;
    defparam g_cmp_1.INJECT1_0 = "NO" ;
    defparam g_cmp_1.INIT1 =  16'h99AA ;
    defparam g_cmp_1.INIT0 =  16'h99AA ;
    CCU2C g_cmp_1 (.A0(fcount_2), .A1(fcount_3), .B0(wren_i), .B1(wren_i), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_2), .S0(), .S1(), .COUT(co1_2));

    defparam g_cmp_2.INJECT1_1 = "NO" ;
    defparam g_cmp_2.INJECT1_0 = "NO" ;
    defparam g_cmp_2.INIT1 =  16'h99AA ;
    defparam g_cmp_2.INIT0 =  16'h99AA ;
    CCU2C g_cmp_2 (.A0(fcount_4), .A1(fcount_5), .B0(wren_i), .B1(wren_i), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_2), .S0(), .S1(), .COUT(co2_2));

    defparam g_cmp_3.INJECT1_1 = "NO" ;
    defparam g_cmp_3.INJECT1_0 = "NO" ;
    defparam g_cmp_3.INIT1 =  16'h99AA ;
    defparam g_cmp_3.INIT0 =  16'h99AA ;
    CCU2C g_cmp_3 (.A0(fcount_6), .A1(fcount_7), .B0(wren_i), .B1(wren_i_inv), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_2), .S0(), .S1(), .COUT(cmp_ge_d1_c));

    defparam a1.INJECT1_1 = "NO" ;
    defparam a1.INJECT1_0 = "NO" ;
    defparam a1.INIT1 =  16'h66AA ;
    defparam a1.INIT0 =  16'h66AA ;
    CCU2C a1 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_ge_d1_c), .S0(cmp_ge_d1), .S1(), .COUT());

    defparam w_ctr_cia.INJECT1_1 = "NO" ;
    defparam w_ctr_cia.INJECT1_0 = "NO" ;
    defparam w_ctr_cia.INIT1 =  16'h66AA ;
    defparam w_ctr_cia.INIT0 =  16'h66AA ;
    CCU2C w_ctr_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(w_ctr_ci));

    defparam w_ctr_0.INJECT1_1 = "NO" ;
    defparam w_ctr_0.INJECT1_0 = "NO" ;
    defparam w_ctr_0.INIT1 =  16'h66AA ;
    defparam w_ctr_0.INIT0 =  16'h66AA ;
    CCU2C w_ctr_0 (.A0(wcount_0), .A1(wcount_1), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(w_ctr_ci), .S0(iwcount_0), .S1(iwcount_1), .COUT(co0_3));

    defparam w_ctr_1.INJECT1_1 = "NO" ;
    defparam w_ctr_1.INJECT1_0 = "NO" ;
    defparam w_ctr_1.INIT1 =  16'h66AA ;
    defparam w_ctr_1.INIT0 =  16'h66AA ;
    CCU2C w_ctr_1 (.A0(wcount_2), .A1(wcount_3), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_3), .S0(iwcount_2), .S1(iwcount_3), .COUT(co1_3));

    defparam w_ctr_2.INJECT1_1 = "NO" ;
    defparam w_ctr_2.INJECT1_0 = "NO" ;
    defparam w_ctr_2.INIT1 =  16'h66AA ;
    defparam w_ctr_2.INIT0 =  16'h66AA ;
    CCU2C w_ctr_2 (.A0(wcount_4), .A1(wcount_5), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_3), .S0(iwcount_4), .S1(iwcount_5), .COUT(co2_3));

    defparam w_ctr_3.INJECT1_1 = "NO" ;
    defparam w_ctr_3.INJECT1_0 = "NO" ;
    defparam w_ctr_3.INIT1 =  16'h66AA ;
    defparam w_ctr_3.INIT0 =  16'h66AA ;
    CCU2C w_ctr_3 (.A0(wcount_6), .A1(wcount_7), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_3), .S0(iwcount_6), .S1(iwcount_7), .COUT(co3_1));

    defparam r_ctr_cia.INJECT1_1 = "NO" ;
    defparam r_ctr_cia.INJECT1_0 = "NO" ;
    defparam r_ctr_cia.INIT1 =  16'h66AA ;
    defparam r_ctr_cia.INIT0 =  16'h66AA ;
    CCU2C r_ctr_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(r_ctr_ci));

    defparam r_ctr_0.INJECT1_1 = "NO" ;
    defparam r_ctr_0.INJECT1_0 = "NO" ;
    defparam r_ctr_0.INIT1 =  16'h66AA ;
    defparam r_ctr_0.INIT0 =  16'h66AA ;
    CCU2C r_ctr_0 (.A0(rcount_0), .A1(rcount_1), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(r_ctr_ci), .S0(ircount_0), .S1(ircount_1), .COUT(co0_4));

    defparam r_ctr_1.INJECT1_1 = "NO" ;
    defparam r_ctr_1.INJECT1_0 = "NO" ;
    defparam r_ctr_1.INIT1 =  16'h66AA ;
    defparam r_ctr_1.INIT0 =  16'h66AA ;
    CCU2C r_ctr_1 (.A0(rcount_2), .A1(rcount_3), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_4), .S0(ircount_2), .S1(ircount_3), .COUT(co1_4));

    defparam r_ctr_2.INJECT1_1 = "NO" ;
    defparam r_ctr_2.INJECT1_0 = "NO" ;
    defparam r_ctr_2.INIT1 =  16'h66AA ;
    defparam r_ctr_2.INIT0 =  16'h66AA ;
    CCU2C r_ctr_2 (.A0(rcount_4), .A1(rcount_5), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_4), .S0(ircount_4), .S1(ircount_5), .COUT(co2_4));

    defparam r_ctr_3.INJECT1_1 = "NO" ;
    defparam r_ctr_3.INJECT1_0 = "NO" ;
    defparam r_ctr_3.INIT1 =  16'h66AA ;
    defparam r_ctr_3.INIT0 =  16'h66AA ;
    CCU2C r_ctr_3 (.A0(rcount_6), .A1(rcount_7), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_4), .S0(ircount_6), .S1(ircount_7), .COUT(co3_2));

    defparam af_cmp_ci_a.INJECT1_1 = "NO" ;
    defparam af_cmp_ci_a.INJECT1_0 = "NO" ;
    defparam af_cmp_ci_a.INIT1 =  16'h66AA ;
    defparam af_cmp_ci_a.INIT0 =  16'h66AA ;
    CCU2C af_cmp_ci_a (.A0(scuba_vhi), .A1(scuba_vhi), .B0(scuba_vhi), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(cmp_ci_2));

    defparam af_cmp_0.INJECT1_1 = "NO" ;
    defparam af_cmp_0.INJECT1_0 = "NO" ;
    defparam af_cmp_0.INIT1 =  16'h99AA ;
    defparam af_cmp_0.INIT0 =  16'h99AA ;
    CCU2C af_cmp_0 (.A0(fcount_0), .A1(fcount_1), .B0(fcnt_en_inv_inv), 
        .B1(cnt_con), .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_ci_2), .S0(), .S1(), .COUT(co0_5));

    defparam af_cmp_1.INJECT1_1 = "NO" ;
    defparam af_cmp_1.INJECT1_0 = "NO" ;
    defparam af_cmp_1.INIT1 =  16'h99AA ;
    defparam af_cmp_1.INIT0 =  16'h99AA ;
    CCU2C af_cmp_1 (.A0(fcount_2), .A1(fcount_3), .B0(cnt_con_inv), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_5), .S0(), .S1(), .COUT(co1_5));

    defparam af_cmp_2.INJECT1_1 = "NO" ;
    defparam af_cmp_2.INJECT1_0 = "NO" ;
    defparam af_cmp_2.INIT1 =  16'h99AA ;
    defparam af_cmp_2.INIT0 =  16'h99AA ;
    CCU2C af_cmp_2 (.A0(fcount_4), .A1(fcount_5), .B0(scuba_vlo), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_5), .S0(), .S1(), .COUT(co2_5));

    defparam af_cmp_3.INJECT1_1 = "NO" ;
    defparam af_cmp_3.INJECT1_0 = "NO" ;
    defparam af_cmp_3.INIT1 =  16'h99AA ;
    defparam af_cmp_3.INIT0 =  16'h99AA ;
    CCU2C af_cmp_3 (.A0(fcount_6), .A1(fcount_7), .B0(scuba_vhi), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_5), .S0(), .S1(), .COUT(af_d_c));

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam a2.INJECT1_1 = "NO" ;
    defparam a2.INJECT1_0 = "NO" ;
    defparam a2.INIT1 =  16'h66AA ;
    defparam a2.INIT0 =  16'h66AA ;
    CCU2C a2 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(af_d_c), .S0(af_d), .S1(), .COUT());

    assign Empty = empty_i;
    assign Full = full_i;


    // exemplar begin
    // exemplar attribute pdp_ram_0_0_0 MEM_LPC_FILE aud_buffer.lpc
    // exemplar attribute pdp_ram_0_0_0 MEM_INIT_FILE 
    // exemplar attribute FF_26 GSR ENABLED
    // exemplar attribute FF_25 GSR ENABLED
    // exemplar attribute FF_24 GSR ENABLED
    // exemplar attribute FF_23 GSR ENABLED
    // exemplar attribute FF_22 GSR ENABLED
    // exemplar attribute FF_21 GSR ENABLED
    // exemplar attribute FF_20 GSR ENABLED
    // exemplar attribute FF_19 GSR ENABLED
    // exemplar attribute FF_18 GSR ENABLED
    // exemplar attribute FF_17 GSR ENABLED
    // exemplar attribute FF_16 GSR ENABLED
    // exemplar attribute FF_15 GSR ENABLED
    // exemplar attribute FF_14 GSR ENABLED
    // exemplar attribute FF_13 GSR ENABLED
    // exemplar attribute FF_12 GSR ENABLED
    // exemplar attribute FF_11 GSR ENABLED
    // exemplar attribute FF_10 GSR ENABLED
    // exemplar attribute FF_9 GSR ENABLED
    // exemplar attribute FF_8 GSR ENABLED
    // exemplar attribute FF_7 GSR ENABLED
    // exemplar attribute FF_6 GSR ENABLED
    // exemplar attribute FF_5 GSR ENABLED
    // exemplar attribute FF_4 GSR ENABLED
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule