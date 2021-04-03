
//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
//
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
// 
// Design Name:		HDMI RX FULLHD
// Module Name:		i2s_receiver
// Target Devices:	LFE5U-45F-8BG381I
// Tool Versions:	
// Tool versions:  
// Description: This module receives the audio data from I2S interface and sends out 16bit parallell data with a qualifier.
//				LRCLK Frequency      = 48kHz
//              Sampling word length = 16 bit
//              Audio Format         = LPCM
//              I2S Mode             = 32 bit Left Justified with 1T delay
//              LRCLK                = Left Channel (0) & Right Channel (1)
//  
// Dependencies: 
//
// Revision: 
// Revision 0.01 - Initial Design
// Additional Comments: 
// 1. IT6801FN HDMI Receiver latch data in negative edges
//////////////////////////////////////////////////////////////////////////////////

module i2s_receiver
#(
    parameter  WORD_LENGTH                = 16,
    parameter  CHANNEL_SELECT             = "STEREO"      //"MONO_LEFT", "MONO_RIGHT", "STEREO"
)
(
	clk_i,
	rstn_i,
	sck_i,
	lrclk_i,
	sd_i,
	en_i,
	rst_fifo_pos,
	data_o,
	data_vld
);

//Input Port
//	All the inputs are latched to the sclk domain
input en_i;
input sd_i;
input rstn_i;
input sck_i; 
input lrclk_i; 
input clk_i;
input rst_fifo_pos;
output [15:0]	data_o;
output			data_vld;

reg lrclk_r1;
reg lrclk_r2;
reg wr_en_lch;
reg wr_en_rch;
reg [4:0] wr_cnt; 
reg [23:0] wr_data;
reg [1:0] i2s_curstate;

reg	sclk_r1='d0;
reg	sclk_r2='d0;
wire	sclk_pos;
wire	sclk_neg;

//FSM States
localparam [0:0] I2S_IDLE  = 1'd0;
localparam [0:0] I2S_LEFT  = 1'd1;
localparam [1:0] I2S_RIGHT = 2'd2;


assign data_o = wr_data;
assign data_vld = wr_en;
assign wr_en = (CHANNEL_SELECT == "MONO_LEFT")  ? wr_en_lch :
               (CHANNEL_SELECT == "MONO_RIGHT") ? wr_en_rch : (wr_en_lch | wr_en_rch);

always @ (posedge clk_i) begin
		sclk_r1 <= sck_i;
		sclk_r2 <= sclk_r1;
end
assign	sclk_pos = sclk_r1 & (!sclk_r2);
assign	sclk_neg = (!sclk_r1) & sclk_r2;

always @ (posedge clk_i/*, negedge rstn_i*/) begin
    if(!rstn_i) begin
        wr_cnt			<= 1'b0;  
		wr_data			<= 24'd0;
		lrclk_r1		<= 1'b0;
		lrclk_r2		<= 1'b0;
        wr_en_lch		<= 1'b0;
        wr_en_rch		<= 1'b0;
        i2s_curstate	<= I2S_IDLE;
    end
    else begin
        if(en_i) begin
            lrclk_r1 <= lrclk_i;
            lrclk_r2 <= lrclk_r1;
            case(i2s_curstate) 
                I2S_IDLE: begin
					wr_en_lch <= 1'b0;
					wr_en_rch <= 1'b0;
                    if(!lrclk_r1 && lrclk_r2)
                        i2s_curstate <= I2S_LEFT;
                    else if (lrclk_r1 && !lrclk_r2)
                        i2s_curstate <= I2S_RIGHT;
                    else
                        i2s_curstate <= I2S_IDLE;
                end
                I2S_LEFT: begin
					if(sclk_pos) begin
						if(wr_cnt == (WORD_LENGTH+'d1)) begin	// +1 for 1 clock data delay after the WS change
							wr_cnt       <= 16'd0;
							wr_en_lch    <= 1'b1;
							i2s_curstate <= I2S_IDLE;
						end
						else begin
							wr_cnt    <= wr_cnt + 1'b1;
							wr_data   <= {wr_data[22:0],sd_i};
						end
					end
					else begin
						i2s_curstate <= I2S_LEFT;
					end
                end
                I2S_RIGHT: begin
					if(sclk_pos) begin
						if(wr_cnt == (WORD_LENGTH+'d1)) begin	// +1 for 1 clock data delay after the WS change
							wr_cnt       <= 16'd0;
							wr_en_rch    <= 1'b1;
							i2s_curstate <= I2S_IDLE;
						end
						else begin
							wr_cnt    <= wr_cnt + 1'b1;
							wr_data   <= {wr_data[22:0],sd_i};
						end
					end
					else begin
						i2s_curstate <= I2S_RIGHT;
					end
                end
            endcase
        end
    end
end


endmodule
