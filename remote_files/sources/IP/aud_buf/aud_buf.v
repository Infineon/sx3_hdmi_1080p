/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module aud_buf
//
module aud_buf (aud_buffer_Data, aud_buffer_Q, aud_buffer_AlmostFull, 
            aud_buffer_Clock, aud_buffer_Empty, aud_buffer_Full, aud_buffer_RdEn, 
            aud_buffer_Reset, aud_buffer_WrEn) /* synthesis sbp_module=true */ ;
    input [15:0]aud_buffer_Data;
    output [15:0]aud_buffer_Q;
    output aud_buffer_AlmostFull;
    input aud_buffer_Clock;
    output aud_buffer_Empty;
    output aud_buffer_Full;
    input aud_buffer_RdEn;
    input aud_buffer_Reset;
    input aud_buffer_WrEn;
    
    
    aud_buffer aud_buffer_inst (.Data({aud_buffer_Data}), .Q({aud_buffer_Q}), 
            .AlmostFull(aud_buffer_AlmostFull), .Clock(aud_buffer_Clock), 
            .Empty(aud_buffer_Empty), .Full(aud_buffer_Full), .RdEn(aud_buffer_RdEn), 
            .Reset(aud_buffer_Reset), .WrEn(aud_buffer_WrEn));
    
endmodule

