//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
// 
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		HDMI RX FULLHD
// Module Name:		gpif_interface_mod
// Target Devices:	LFE5U-45F-8BG381I
// Description: gpif_interface_mod recevies the video data read out from RAM and stores it in the async FIFO before sending it to the slfifo_interface_mod. It also bypasses the audio data to slfifo_interface_mod.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`include "ddr3_test_params.v"
module gpif_interface_mod
#( 
	parameter  FX3_BITS = 32
	)
( 
	reset_n_i	// Active Low reset
	, fx3_interface_clock_i // FX3 interface clock
	, ddr_fr_buf_sw

	// FX3 GPIF Interface
	,fx3_pclk_o			// pixel data clock output
	,fx3_pd_o 			// pixel data output
	,fx3_chip_select_o	// chip select
	,fx3_slave_write_enable_o // Slave write
	,fx3_reset_i 		// Reset pin, active low
	,fx3_water_mark_i	// Water mark
	,fx3_dma_ready_i	// DMA ready
	,fx3_packet_ready_o // Packet End
	,fx3_address1_o		// Socket Addr A1
	,fx3_address0_o		// Socket Addr A0
	, i2s_rd_en_o
	, i2s_fifo_almostempty_i
	, i2s_fifo_empty_i
	, i2s_fifo_data_i
	, i2s_fifo_data_pre
	, aud_en_o
	, video_en_o
	, aud_ind_f_o
	, aud_pktend_o
	, slfifo_st_vidrst_o
	, slfifo_st_audrst_o
	, fr_act_rd_f
	, slfifo_almostfull_o
	, cam_rd_vld
	, cam_fifo_dout
	, cam_full_pllclk2
	, cam_app_en
	, aud_app_en
	, img_size
	, uvc_header_en
	, slfifo_uvc_buf_size
	, camfifo_overflow
	, fx3_slclk
	, vid_pktend_o
	, i2s_wr_fifo_cnt_i

	);


// most significant bit calculation
parameter  FX3_MSB            =            FX3_BITS -1;

input 	        reset_n_i;
wire 	        reset_n_i;   

input 	        fx3_interface_clock_i;
wire 	        fx3_interface_clock_i;

output			ddr_fr_buf_sw;
wire  			ddr_fr_buf_sw;

output 			fx3_pclk_o;
wire 			fx3_pclk_o;

output [FX3_MSB:0]	fx3_pd_o;
wire [FX3_MSB:0] 	fx3_pd_o;
output 			fx3_chip_select_o;
wire 			fx3_chip_select_o;

output 			fx3_slave_write_enable_o;
wire 			fx3_slave_write_enable_o;

input 			fx3_reset_i;
wire 			fx3_reset_i;

input 			fx3_water_mark_i;
wire 			fx3_water_mark_i;

input 			fx3_dma_ready_i;
wire 			fx3_dma_ready_i;

output 			fx3_packet_ready_o;
wire 			fx3_packet_ready_o;

output 			fx3_address1_o;
wire 			fx3_address1_o;

output 			fx3_address0_o;
wire 			fx3_address0_o;

output 			i2s_rd_en_o;
wire 			i2s_rd_en_o;

input 			i2s_fifo_almostempty_i;
wire			i2s_fifo_almostempty_i;

input 			i2s_fifo_empty_i;
wire			i2s_fifo_empty_i;

input 	[31:0]	i2s_fifo_data_i;
wire 	[31:0]	i2s_fifo_data_i;

input 	[31:0]	i2s_fifo_data_pre;
wire 	[31:0]	i2s_fifo_data_pre;

input			aud_en_o;
wire			aud_en_o;

input			video_en_o;
wire			video_en_o;

output			aud_ind_f_o;
wire			aud_ind_f_o;

output			aud_pktend_o;
wire			aud_pktend_o;

input   		slfifo_st_vidrst_o;
wire   			slfifo_st_vidrst_o;

input   		slfifo_st_audrst_o;
wire   			slfifo_st_audrst_o;

output			fr_act_rd_f;
wire		   	fr_act_rd_f;

output			slfifo_almostfull_o;
wire		   	slfifo_almostfull_o;

input			cam_rd_vld;
wire			cam_rd_vld;

input [63:0]	cam_fifo_dout;
wire [63:0]		cam_fifo_dout;

input			cam_full_pllclk2;
wire			cam_full_pllclk2;

input			cam_app_en;
wire			cam_app_en;

input			aud_app_en;
wire			aud_app_en;

input [31:0]	img_size;
wire	[31:0]	img_size;

input			uvc_header_en;
wire			uvc_header_en;

input [15:0]	slfifo_uvc_buf_size;
wire [15:0]		slfifo_uvc_buf_size;

input			camfifo_overflow;
wire			camfifo_overflow;

input			fx3_slclk;
wire			fx3_slclk;

output			vid_pktend_o;
wire			vid_pktend_o;

input [15:0]	i2s_wr_fifo_cnt_i;
wire [15:0]	i2s_wr_fifo_cnt_i;



//	Register and Net declarations   
wire			slcs_w;
wire 	        slwr_w;
wire 	        pktend_w;
wire [FX3_MSB:0]fx3_dq_w;
wire [1:0] 	    sock_addr_w;
wire 			warter_mark;
wire 			dma_rdy;
reg             AlmostFull_r;
reg             read_data_valid_r;
reg [`inst1_DSIZE-1:0]	read_data_r;
reg 			slfifo_rd_en;
reg 			Rst_fifo;
wire 			slfifo_empty;
wire 			slfifo_AlmostEmpty;
wire 			slfifo_full;
reg 			slfifo_RPReset;
wire [31:0]		slfifo_dout;
reg 			video1_line_valid_reg;
reg 			video1_line_valid_reg2;
reg 			video1_line_valid_reg3;
reg 			audio_lv_r='d0;
reg 			audio_lv_rr='d0;
reg 			aud_rd_en='d0;
reg [31:0] 		i2s_fifo_data_r='d0;
localparam [31:0]fv_end_data = 32'hFF00FF00;
reg 			rst_sclk1='d0;
reg 			dma_rdy_r='d0;
reg 			rst_sclk2='d0;
reg [23:0] 		read_cnt_fifo_1='d0;
reg [23:0] 		read_cnt_fifo_2='d0;
reg [23:0]		read_cnt_fifo='d0;
reg [31:0]		slfifo_dout_r='d0;
reg [31:0]		slfifo_dout_rr='d0;

//	IO assignments
assign fx3_chip_select_o		= slcs_w;
assign fx3_slave_write_enable_o = slwr_w;
assign fx3_packet_ready_o       = pktend_w;
assign fx3_pd_o[FX3_MSB:0]      = fx3_dq_w[FX3_MSB:0];
assign dma_rdy                  = fx3_dma_ready_i;
assign warter_mark				= fx3_water_mark_i;
assign fx3_address1_o			= sock_addr_w[1];
assign fx3_address0_o			= sock_addr_w[0];

always @(posedge fx3_interface_clock_i)begin
	read_cnt_fifo_1 <= read_cnt_fifo[23:1];
	read_cnt_fifo_2 <= read_cnt_fifo_1;
	rst_sclk1 <= Rst_fifo;
	rst_sclk2 <= rst_sclk1;
end

assign slfifo_almostfull_o = AlmostFull_r;

always @(posedge fx3_interface_clock_i)begin
	read_data_r <= cam_fifo_dout;
	read_data_valid_r <= cam_rd_vld;
	AlmostFull_r <= AlmostFull;
end

always @(posedge fx3_interface_clock_i)
	dma_rdy_r <= dma_rdy;

//	slfifo_fifo -
//		Buffer the data before the GPIF interface
slfifo_fifo 
slfifo_fifo_inst 
(
	.Data(read_data_r), 
	.Q(slfifo_dout), 
	.AlmostFull(AlmostFull), 
	.AlmostEmpty(slfifo_AlmostEmpty), 
	.Empty(slfifo_empty), 
	.Full(slfifo_full), 
	.RPReset(slfifo_RPReset), 
	.RdClock(fx3_interface_clock_i), 
	.RdEn((video1_read_en_o /*&& dma_rdy*/)), 
	.Reset(slfifo_RPReset), 
	.WrClock(fx3_interface_clock_i), 
	.WrEn(read_data_valid_r)
	);
always@(posedge fx3_interface_clock_i) begin
	if(Rst_fifo) begin
		read_cnt_fifo <= 'd0;
	end
	else if((video1_read_en_o /*&& dma_rdy*/))begin
		read_cnt_fifo <= read_cnt_fifo + 'd1;
	end
end

//	Slfifo read data valid generation
always @(posedge fx3_interface_clock_i)
	if(!fx3_reset_i)
	  slfifo_rd_en <= 'b0;
	else if((slfifo_empty)||(!video1_read_en_o)/*||(!dma_rdy)*/)
	  slfifo_rd_en <= 1'b0;
	else if(video1_read_en_o)
	  slfifo_rd_en <= 1'b1;

   
always @(posedge fx3_interface_clock_i or negedge reset_n_i ) begin
	if(!reset_n_i)	begin
		video1_line_valid_reg             <= 1'b0;			
		slfifo_RPReset       <= 1'b1;
		Rst_fifo             <= 1'b1;
	end
	else begin
		video1_line_valid_reg        <= slfifo_rd_en;
		video1_line_valid_reg2        <= video1_line_valid_reg;
		video1_line_valid_reg3        <= video1_line_valid_reg2;
		slfifo_dout_r <= slfifo_dout;
		slfifo_dout_rr <= slfifo_dout_r;
		if((!ddr_fr_buf_sw))begin
			slfifo_RPReset       <= 1'b1;
			Rst_fifo             <= 1'b1;
		end
		else begin
			slfifo_RPReset       <= 1'b0;
			Rst_fifo             <= 1'b0;
		end
	end
end

always @(posedge fx3_interface_clock_i) begin
	if(!reset_n_i)
		aud_rd_en <= 'd0;
	else if((i2s_fifo_empty_i)||(!audio_rd_en_o)/*||(!dma_rdy)*/)
		aud_rd_en <= 'd0;
	else if(audio_rd_en_o)
		aud_rd_en <= 'd1;
end
always @(posedge fx3_interface_clock_i or negedge reset_n_i ) begin
	if(!reset_n_i)	begin
		audio_lv_r <= 1'b0;
		audio_lv_rr <= 1'b0;
		i2s_fifo_data_r <= 1'b0;
	end else begin
		audio_lv_r <= aud_rd_en;
		audio_lv_rr <= audio_lv_r;
		i2s_fifo_data_r <= i2s_fifo_data_i;
	end
end


assign i2s_rd_en_o = audio_rd_en_o /*& dma_rdy*/;


slfifo_interface_mod
#( 
	.FX3_DATA_BITS(                    FX3_BITS ) //
	)
slfifo_interface
(
	.rstn_i(fx3_reset_i ) // asynchronous reset 
	, .rd_clk_i(fx3_interface_clock_i) 	// fx3 interface clock
	, .video1_lv_i(video1_line_valid_reg2) 
	, .video1_fx3_dq_i(slfifo_dout_r[FX3_MSB:0])
	, .video1_fx3_dq_i_temp(slfifo_dout[FX3_MSB:0])
	, .ddr_rdout_empty(slfifo_empty)
	, .ddr_rdout_progempty(slfifo_AlmostEmpty)
	, .slcs_o(slcs_w)
	, .slwr_o(slwr_w)
	, .pktend_o(pktend_w)
	, .fx3_dq_o(fx3_dq_w[FX3_MSB:0])
	, .thread_addr_o(sock_addr_w[1:0])
	, .fx3_pclk_o(fx3_pclk_o)
	, .flagb(warter_mark ) 
	, .flaga(dma_rdy ) 
	, .ddr_fr_buf_sw(ddr_fr_buf_sw ) 
	, .video1_read_en_o(video1_read_en_o )
	, .error_sig_o(fx3_module_detected_error)
	, .i2s_fifo_data_i(i2s_fifo_data_r)
	, .i2s_fifo_data_pre(i2s_fifo_data_i)
	, .i2s_fifo_almostempty_i(i2s_fifo_almostempty_i)
	, .audio_rd_en_o(audio_rd_en_o)
	, .audio_lv_i(audio_lv_rr)
	, .aud_ind_f_o(aud_ind_f_o)
	, .aud_en_o(aud_en_o)
	, .video_en_o(video_en_o)
	, .aud_pktend_o(aud_pktend_o)
	, .slfifo_st_vidrst_o(slfifo_st_vidrst_o)
	, .slfifo_st_audrst_o(slfifo_st_audrst_o)
	, .fr_act_rd_f(fr_act_rd_f)
	, .cam_full_pllclk2(cam_full_pllclk2)
	, .cam_app_en(cam_app_en)
	, .aud_app_en(aud_app_en)
	, .img_size(img_size)
	, .uvc_header_en(uvc_header_en)
	, .slfifo_uvc_buf_size(slfifo_uvc_buf_size)
	, .camfifo_overflow(camfifo_overflow)
	, .fx3_slclk(fx3_slclk)
	, .vid_pktend_o(vid_pktend_o)
	, .i2s_wr_fifo_cnt_i(i2s_wr_fifo_cnt_i)
	);

endmodule 