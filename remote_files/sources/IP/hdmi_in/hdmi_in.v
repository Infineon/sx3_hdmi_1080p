/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module hdmi_in
//
module hdmi_in (ddr_in_datain, ddr_in_q, ddr_in_clkin, ddr_in_reset, 
            ddr_in_sclk) /* synthesis sbp_module=true */ ;
    input [15:0]ddr_in_datain;
    output [31:0]ddr_in_q;
    input ddr_in_clkin;
    input ddr_in_reset;
    output ddr_in_sclk;
    
    
    ddr_in ddr_in_inst (.datain({ddr_in_datain}), .q({ddr_in_q}), .clkin(ddr_in_clkin), 
           .reset(ddr_in_reset), .sclk(ddr_in_sclk));
    
endmodule

