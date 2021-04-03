//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
// 
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		HDMI RX FULLHD
// Module Name:		slfifo_interface_mod
// Target Devices:	LFE5U-45F-8BG381I
// Tool Versions:	
// Description: This module controls the SlaveFIFO interface betwen the FPGA and the SX3. It generates all the SlaveFIFO interface signals. It receives the audio and video data and sends it to the SX3 in the corresponding sockets. Video and audio data is sent in the sockets 0/1 and 2/3 respectively. It also stops sending the current frame and moves to the next frame data if the input video buffer overflows.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module	slfifo_interface_mod
	#( 
		parameter   FX3_DATA_BITS       = 32 // `DATA_WIDTH_OUT
	)
	(
	rstn_i
	, rd_clk_i
	, video1_lv_i              
	, video1_fx3_dq_i        	
	, video1_fx3_dq_i_temp  	
	, ddr_rdout_empty
	, ddr_rdout_progempty
	, fx3_pclk_o
	
	//                  FX3 interface
	, flagb         
	, flaga         
	, video1_read_en_o  
	, ddr_fr_buf_sw
	, slcs_o            
	, slwr_o            
	, pktend_o          
	, fx3_dq_o          
	, thread_addr_o     	
	, error_sig_o
	, i2s_fifo_data_i
	, i2s_fifo_data_pre
	, i2s_fifo_almostempty_i
	, audio_rd_en_o
	, audio_lv_i
	, aud_ind_f_o
	, video_en_o
	, aud_en_o
	, aud_pktend_o
	, slfifo_st_vidrst_o
	, slfifo_st_audrst_o
	, fr_act_rd_f
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

// most significant bit calculation:
parameter  FX3_DATA_MSB       =  FX3_DATA_BITS      -1;
   
input  rstn_i;
wire   rstn_i;

input  rd_clk_i;
wire   rd_clk_i;

input [FX3_DATA_MSB:0] video1_fx3_dq_i;
wire [FX3_DATA_MSB:0] video1_fx3_dq_i;

input [FX3_DATA_MSB:0] video1_fx3_dq_i_temp;
wire [FX3_DATA_MSB:0]  video1_fx3_dq_i_temp;

input 		   ddr_rdout_empty;
wire 		   ddr_rdout_empty;

input 		   ddr_rdout_progempty;
wire 		   ddr_rdout_progempty;

input 		   flagb;
wire 		   flagb;

input 		   flaga;
wire 		   flaga;

input 		   video1_lv_i;
wire 		   video1_lv_i;

output 		   video1_read_en_o;
wire 		   video1_read_en_o;

output			ddr_fr_buf_sw;
wire			ddr_fr_buf_sw;

output 		   slcs_o;
wire 		   slcs_o;

output 		   slwr_o;
wire 		   slwr_o;

output		   fx3_pclk_o;
wire			   fx3_pclk_o;

output 		   pktend_o;
wire 		   pktend_o;

output [FX3_DATA_MSB:0] fx3_dq_o;
wire [FX3_DATA_MSB:0]   fx3_dq_o;

output [1:0] 		thread_addr_o;
wire [1:0] 			thread_addr_o;

output          error_sig_o;
wire            error_sig_o;   

input	[31:0]	i2s_fifo_data_i;
wire	[31:0]	i2s_fifo_data_i;

input	[31:0]	i2s_fifo_data_pre;
wire	[31:0]	i2s_fifo_data_pre;

input			i2s_fifo_almostempty_i;   
wire			i2s_fifo_almostempty_i;   

output			audio_rd_en_o;   
wire			audio_rd_en_o;   

input			audio_lv_i;   
wire			audio_lv_i;

output			aud_ind_f_o;   
wire			aud_ind_f_o;

input			video_en_o;   
wire			video_en_o;   

input			aud_en_o;   
wire			aud_en_o;

output			aud_pktend_o;
wire			aud_pktend_o;

input			slfifo_st_vidrst_o;
wire			slfifo_st_vidrst_o;

input			slfifo_st_audrst_o;
wire			slfifo_st_audrst_o;

output			fr_act_rd_f;
wire			fr_act_rd_f;

input			cam_full_pllclk2;
wire			cam_full_pllclk2;

input			cam_app_en;
wire			cam_app_en;

input			aud_app_en;
wire			aud_app_en;

input [31:0]	img_size;
wire [31:0]		img_size;

input			uvc_header_en;
wire			uvc_header_en;

input [15:0]	slfifo_uvc_buf_size;
wire [15:0]	slfifo_uvc_buf_size;

input		camfifo_overflow;
wire		camfifo_overflow;

input		fx3_slclk;
wire		fx3_slclk;

output		vid_pktend_o;
wire		vid_pktend_o;

input [15:0]	i2s_wr_fifo_cnt_i;
wire [15:0]	i2s_wr_fifo_cnt_i;


// Register and Net declararion

reg     pktend_r;
reg		internal_slwr;
reg 	internal_slwr_gen/* synthesis syn_keep=1 */;
wire [30:0]img_size_4;
localparam [4:0]watermark_fx3 = 5'd10;
localparam [4:0]watermark_fpga = watermark_fx3 - 3'd2;
localparam [31:0] fv_end_data = 32'hFF00FF00;
localparam UVC_LENGTH = 8'h0C;
localparam UVC_BIT_FIELD = 8'h8C;

wire 	stream_in_mode_selected;
wire 	slwr_streamIN_;
reg 	sync_d;	
reg 	aud_data_rr='d0;
reg [1:0]	current_stream_in_state;
reg [1:0]	next_stream_in_state;
reg [31:0]	data_gen_stream_in;
reg 	flagabuf='d0;
reg 	flagbbuf='d0;
reg 	pktend_i;
reg 	msb_lsb;
reg 	test_reg;
reg [4:0]	w_cnt;
reg 	xtra_wr_en;
reg 	outfifo_rd_en;
reg 	aud_rd_en_r='d0;
reg 	aud_pktend_r='d0;
reg [4:0]	wm_cnt;
reg [31:0]	flaga_lowcnt='d0;
reg [2:0]	slfifo_state	;
reg 	leader_transfer;
reg 	trailer_transfer;
reg [1:0]	thread_addr_r;
reg [6:0]	cnt_l_t;
wire [7:0]	U3V_leader[0:51];
wire [7:0]	U3V_trailer[0:31];
(*KEEP="TRUE"*)reg last_byte;
reg [2:0]	empty_prog_ct;
reg [1:0]	uvc_cnt='d0;
reg 	uvc_frame_idx='d0;
reg 	par_buf_f='d0;
reg 	aud_data_f='d1;
reg [15:0] aud_data_cnt='d0;

reg [15:0]	buf_size_r='d12276;
reg 	camfifo_overflow_pllclk1='d0;	
reg 	camfifo_overflow_pllclk2='d0;	
reg 	init_r='d1;
reg [15:0] skt_delay_cnt_r='d0;
reg [31:0] sec_cnt='d0;
reg [15:0] flaga_cnt='d0;
reg [19:0] line_vld_cnt='d0;
reg [23:0] slwr_cnt='d0;
reg 	sec_cnt_f='d0;
reg [7:0]	aud_vid_fps='d0;
reg 	vid_thread_idx='d0;
reg 	aud_thread_idx='d0;
reg 	vid_overflow_pktend_f='d0;
reg 	vid_pktend_r='d0;

reg aud_init_clkn_rr='d1;
reg aud_init_clkn_r='d1;
reg [3:0] wait_state_cnt_r='d0;

localparam [2:0]FLAGA_0_ST = 3'b000;
localparam [2:0]PKTEND_0_ST = 3'b001;
localparam [2:0]SLFIFO_DATA_ST = 3'b010;
localparam [2:0]AUD_DATA_ST = 3'b011;
localparam [2:0]THREAD_ST = 3'b100;
localparam [2:0]INIT_SKT_ST = 3'b101;
localparam [2:0]WAIT_SKT_ST = 3'b110;
localparam [2:0]UVC_HEADER_ST = 3'b111;

localparam 		BUFFER_SIZE='d12276;

always@(posedge rd_clk_i) begin
	camfifo_overflow_pllclk1 <= camfifo_overflow;
	camfifo_overflow_pllclk2 <= camfifo_overflow_pllclk1;
end

always@(posedge rd_clk_i) begin
	flagabuf <= flaga;
	flagbbuf <= flagb;
end

//parameters for StreamIN mode state machine
localparam [1:0] STREAM_IN_IDLE                    = 2'd0;
localparam [1:0] STREAM_IN_WAIT_FLAGB              = 2'd1;
localparam [1:0] STREAM_IN_WRITE                   = 2'd2;
localparam [1:0] STREAM_IN_WRITE_WR_DELAY          = 2'd3;

assign img_size_4 = img_size[31:1];

assign video1_read_en_o = outfifo_rd_en;
assign thread_addr_o = thread_addr_r;
assign sloe = 1'b1;
assign slrd = 1'b1;	
assign PMODE = 2'b11;		
assign RESET = 1'b1;	
assign stream_in_mode_selected = 1'b1;
assign slcs = 1'b0;
assign vid_pktend_o = vid_pktend_r;
assign ddr_fr_buf_sw = pktend_i || aud_data_f;
assign aud_pktend_o = aud_pktend_r;

reg [7:0] pktend_r_cnt='d0;
always @(posedge rd_clk_i)
	if(!aud_app_en)
		pktend_r_cnt <= 'd0;
	else if(!pktend_r)
		pktend_r_cnt <= pktend_r_cnt + 'd1;;
	
always @(posedge rd_clk_i) begin
	aud_pktend_r <= pktend_r || (!aud_data_f);
end
always @(posedge rd_clk_i) begin
	if((!pktend_r) & aud_data_f)
		aud_data_cnt <= 'd0;
	else if(!aud_app_en)
		aud_data_cnt <= 'd0;
	else if((!internal_slwr) & aud_data_f)
		aud_data_cnt <= aud_data_cnt + 'd1;
end

always @(posedge rd_clk_i)
	vid_pktend_r <= !(pktend_r || aud_data_f);
always @(posedge rd_clk_i)
	buf_size_r <= slfifo_uvc_buf_size[15:2];

always @(posedge rd_clk_i)begin
	if(!rstn_i)
		aud_data_rr <= 'd0;
	else 
		aud_data_rr <= aud_data_f;
end
always @(posedge rd_clk_i) begin
	if(!flagabuf)
		flaga_lowcnt <= flaga_lowcnt + 'd1;
	else 
		flaga_lowcnt <= 'd0;
end

//slave fifo 	
assign fx3_pclk_o = ((flaga == 1'b1) && (flagb == 1'b1) && (pktend_i == 1'b1) && (internal_slwr_gen == 1'b1) & aud_init_clkn_rr) ? 1'b1 : fx3_slclk;

assign slwr_streamIN_ = ((current_stream_in_state == STREAM_IN_WRITE) | (current_stream_in_state == STREAM_IN_WRITE_WR_DELAY) && (wm_cnt < (watermark_fpga - 2)) && (flagabuf)) ? 1'b0 : 1'b1;

//streamIN mode state machine
always @(posedge rd_clk_i, negedge rstn_i)begin
	if(!rstn_i)begin 
		current_stream_in_state <= STREAM_IN_IDLE;
	end else begin
		current_stream_in_state <= next_stream_in_state;
	end	
end

//StreamIN mode state machine combo
always @(*)begin
	next_stream_in_state = current_stream_in_state;
	case(current_stream_in_state)
	STREAM_IN_IDLE:begin
		if(flagabuf == 1'b1)begin
			next_stream_in_state = STREAM_IN_WAIT_FLAGB; 
		end else begin
			next_stream_in_state = STREAM_IN_IDLE;
		end	
	end
	STREAM_IN_WAIT_FLAGB :begin
		if (flagbbuf == 1'b1)begin
			next_stream_in_state = STREAM_IN_WRITE; 
		end else begin
			next_stream_in_state = STREAM_IN_WAIT_FLAGB; 
		end
	end
	STREAM_IN_WRITE:begin
		if(flagbbuf == 1'b0)begin
			next_stream_in_state = STREAM_IN_WRITE_WR_DELAY;
		end else begin
		 	next_stream_in_state = STREAM_IN_WRITE;
		end
	end
   STREAM_IN_WRITE_WR_DELAY:begin
	  if (wm_cnt == (watermark_fpga - 2))begin
		  next_stream_in_state = STREAM_IN_IDLE;
	  end
	end
	endcase
end

always @(posedge rd_clk_i) 
	if(ddr_rdout_empty)
		empty_prog_ct <= 'd0;
	else if(ddr_rdout_progempty)
		empty_prog_ct <= empty_prog_ct + 'd1;
	else
		empty_prog_ct <= 'd0;


reg [31:0]data_cnt='d0;
always @(posedge rd_clk_i, negedge rstn_i)begin
	if(!rstn_i)begin 
		data_cnt <= 'd0;
	end
	else begin
		if(!flagabuf)
			data_cnt <= 'd0;	
		else if(slfifo_state==3'b100)
			data_cnt <= data_cnt + 'd1;
	end
end
reg [23:0] flagb_cnt='d0;
always @(posedge rd_clk_i) begin
	if((!flagbbuf) & flagabuf)
		flagb_cnt <= flagb_cnt + 'd1;
	else
		flagb_cnt <= 'd0;
end

assign aud_ind_f_o = aud_pktend_r;

always @(posedge rd_clk_i) begin
	if(sec_cnt=='d90000000) begin
		sec_cnt <= 'd0;
		sec_cnt_f <= 'd1;
	end
	else begin
		sec_cnt_f <= 'd0;
		sec_cnt <= sec_cnt + 'd1;
	end
	if(sec_cnt_f)
		aud_vid_fps <= 'd0;
	else if(!pktend_r)
		aud_vid_fps <= aud_vid_fps + 'd1;
end
reg [15:0] aud_rd_en_cnt='d0;
reg [15:0] audio_lv_cnt='d0;
always@(posedge rd_clk_i) begin
	if(!pktend_r)
		aud_rd_en_cnt <= 'd0;
	else if(aud_rd_en_r)
		aud_rd_en_cnt <= aud_rd_en_cnt + 'd1;
	if(!pktend_r)
		audio_lv_cnt <= 'd0;
	else if(audio_lv_i)
		audio_lv_cnt <= audio_lv_cnt + 'd1;
end

always@(posedge rd_clk_i) begin
	if(!pktend_r)
		line_vld_cnt <= 'd0;
	else if(outfifo_rd_en)
		line_vld_cnt <= line_vld_cnt + 'd1;;
	if(!pktend_r)
		slwr_cnt <= 'd0;
	else if(!internal_slwr)
		slwr_cnt <= slwr_cnt + 'd1;;
end

always @(posedge rd_clk_i)begin
	if(!rstn_i)
		vid_overflow_pktend_f <= 'd0;
	else if((slfifo_state==SLFIFO_DATA_ST)&(camfifo_overflow_pllclk2&ddr_rdout_progempty))
		vid_overflow_pktend_f <= 'd1;
	else if((slfifo_state==FLAGA_0_ST))
		vid_overflow_pktend_f <= 'd0;
end
always @(posedge rd_clk_i)begin
	if(!rstn_i)begin 
		vid_thread_idx <= 'd0;
		aud_thread_idx <= 'd0;
	end
	else begin
		if(slfifo_st_vidrst_o || (!cam_app_en))begin
			vid_thread_idx <= 'd0;
		end
		else if(slfifo_state==PKTEND_0_ST) begin
			if(!flagabuf)begin
				if(!aud_data_f) begin
					vid_thread_idx <= !thread_addr_r[0];
				end
			end				
		end
		if(slfifo_st_audrst_o || (!aud_app_en))begin
			aud_thread_idx <= 'd0;
		end
		else if(slfifo_state==PKTEND_0_ST) begin
			if(!flagabuf)begin
				if(aud_data_f) begin
					aud_thread_idx <= !thread_addr_r[0];
				end
			end				
		end
	end
end
wire i2s_fifo_end;
assign i2s_fifo_end = (i2s_wr_fifo_cnt_i>='d2) ? (aud_data_cnt==(i2s_wr_fifo_cnt_i-'d2)) : 1'b0;
always @(posedge rd_clk_i) begin
	aud_init_clkn_rr <= aud_init_clkn_r;
	if(aud_app_en&aud_data_f&(slfifo_state==FLAGA_0_ST))
		aud_init_clkn_r <= 'd0;
	else
		aud_init_clkn_r <= 'd1;
end
always @(posedge rd_clk_i) begin
	if(!rstn_i)
		wait_state_cnt_r <= 'd0;
	else if((slfifo_state==FLAGA_0_ST)) begin
		if(wait_state_cnt_r<='d10)
			wait_state_cnt_r <= wait_state_cnt_r + 'd1;
	end
	else
		wait_state_cnt_r <= 'd0;
end


//	GPIF interface FSM
always @(posedge rd_clk_i, negedge rstn_i)begin
	if(!rstn_i)begin 
		uvc_cnt <= 'd0;
		outfifo_rd_en <= 'd0;
		flaga_cnt <= 'd0;
		skt_delay_cnt_r <= 'd0;
		data_gen_stream_in <= 32'd0;
		pktend_r <= 1'b1;
		wm_cnt <= 'd0;
		internal_slwr_gen <= 1'b1;
		internal_slwr <= 1'b1;
		last_byte <= 1'b0;
		pktend_i <= 1'b1;
		msb_lsb <= 1'b1;
		thread_addr_r <= 2'd0;
		cnt_l_t <= 'd0;
		xtra_wr_en <= 'd0;
		aud_data_f <= 'd0;
		slfifo_state <= INIT_SKT_ST;
		aud_rd_en_r <= 'd0;
		init_r <= 'd1;
	end 
	else begin
		case(slfifo_state)
			INIT_SKT_ST : begin
				flaga_cnt <= 'd0;
				if(video_en_o & aud_en_o) begin
					thread_addr_r <= 2'b00;
					slfifo_state <= WAIT_SKT_ST;
					aud_data_f <= 'd0;
				end
				else if(video_en_o)begin
					aud_data_f <= 'd0;
					thread_addr_r <= 2'b00;
					slfifo_state <= FLAGA_0_ST;
				end
				else if(aud_en_o)begin
					aud_data_f <= 'd1;
					thread_addr_r <= 2'b10;
					slfifo_state <= FLAGA_0_ST;
				end
				else begin
					aud_data_f <= 'd0;
					slfifo_state <= INIT_SKT_ST;
					thread_addr_r <= 2'b00;
				end
				skt_delay_cnt_r <= 'd0;
			end
			
			WAIT_SKT_ST : begin
				if((aud_data_f&aud_app_en)) begin
					slfifo_state <= FLAGA_0_ST;
					skt_delay_cnt_r <= 'd0;
				end
				else if(((!aud_data_f)&cam_app_en))begin
					slfifo_state <= FLAGA_0_ST;
					skt_delay_cnt_r <= 'd0;
				end
				else begin
						skt_delay_cnt_r <= 'd0;
						slfifo_state <= WAIT_SKT_ST;
						if(thread_addr_r[1])
							thread_addr_r[0] <= vid_thread_idx;
						else
							thread_addr_r[0] <= aud_thread_idx;
						thread_addr_r[1] <= !thread_addr_r[1];
						aud_data_f <= !aud_data_f;
				end
			end
			
			FLAGA_0_ST : begin
				aud_rd_en_r <= 'd0;
				outfifo_rd_en <= 'd0;
				xtra_wr_en <= 'd0;
				data_gen_stream_in <= 32'hffffffff;
				pktend_r <= 1'b1;
				internal_slwr_gen <= 1'b1;
				internal_slwr <= 1'b1;
				wm_cnt <= 'd0;
				pktend_i <= 1'b1;
				last_byte <= 1'b0;
				msb_lsb <= 1'b1;
				if(slfifo_st_vidrst_o || slfifo_st_audrst_o)begin
					slfifo_state <= WAIT_SKT_ST;
				end
				else if((!aud_app_en) & aud_data_f)
					slfifo_state <= WAIT_SKT_ST;					
				else if(!(cam_app_en || aud_data_f))
					slfifo_state <= WAIT_SKT_ST;					
				else if(!slwr_streamIN_&(wait_state_cnt_r>='d10)) begin
					if(aud_data_f) begin
						slfifo_state <= AUD_DATA_ST;
					end
					else if(video_en_o) begin
						if(uvc_header_en)
							slfifo_state <= UVC_HEADER_ST;
						else
							slfifo_state <= SLFIFO_DATA_ST;
					end
					else if(aud_en_o)
						slfifo_state <= AUD_DATA_ST;
					else
						slfifo_state <= FLAGA_0_ST;
				end
			end
			PKTEND_0_ST : begin
				init_r <= 'd0;
				outfifo_rd_en <= 'd0;
				xtra_wr_en <= 'd0;
				pktend_r <= 'd1;
				internal_slwr_gen <= 1'b1;
				internal_slwr <= 1'b1;

				if(!flagabuf)begin
						pktend_i <= 'd1;
					if(aud_en_o & video_en_o) begin
						if(vid_overflow_pktend_f) begin
							aud_data_f <= 'd0;
							thread_addr_r[1] <= 1'd0;
							thread_addr_r[0] <= !thread_addr_r[0];
						end
						else if(aud_data_f) begin
							aud_data_f <= 'd0;
							thread_addr_r[1] <= 1'd0;
							thread_addr_r[0] <= vid_thread_idx;
						end
						else begin
							aud_data_f <= 'd1;
							thread_addr_r[1] <= 1'd1;
							thread_addr_r[0] <= aud_thread_idx;
						end
					end
					else if(video_en_o) begin
						aud_data_f <= 'd0;
						thread_addr_r[1] <= 1'd0;
						thread_addr_r[0] <= !thread_addr_r[0];
					end
					else begin
						aud_data_f <= 'd1;
						thread_addr_r[1] <= 1'd1;
						thread_addr_r[0] <= !thread_addr_r[0];
					end
					if(video_en_o & aud_en_o)
						slfifo_state <= WAIT_SKT_ST;
					else
						slfifo_state <= FLAGA_0_ST;
				end
				else
					pktend_i <= 1'b0;
 
			end
			SLFIFO_DATA_ST : begin
				if(((ddr_rdout_progempty)&&(flagb))||(xtra_wr_en))
					outfifo_rd_en <= 'd0;
				else if((wm_cnt == (watermark_fpga - 4))&(!internal_slwr))
					outfifo_rd_en <= 'd0;
				else if(((video1_lv_i)&flaga&((video1_fx3_dq_i_temp == fv_end_data[31:0]))))
					outfifo_rd_en <= 'd0;
				else 
					outfifo_rd_en <= 'd1;
				if(camfifo_overflow_pllclk2&ddr_rdout_progempty)begin
					internal_slwr <= 1'b0;
					internal_slwr_gen <= 1'b0;
					pktend_i <= 1'b1;
					xtra_wr_en <= 1'b0;
					pktend_r <= 'd0;
				end
				else if(((video1_lv_i)||(xtra_wr_en))&&(flaga)) begin
					data_gen_stream_in <= video1_fx3_dq_i;
					xtra_wr_en <= 1'b0;
					if(video1_fx3_dq_i_temp == fv_end_data[31:0]) begin
						internal_slwr <= 1'b0;
						internal_slwr_gen <= 1'b0;
						pktend_r <= 1'b0;
					end
					else begin
						internal_slwr <= 1'b0;
						internal_slwr_gen <= 1'b0;
						pktend_r <= 1'b1;
					end
					internal_slwr <= 1'b0;
					internal_slwr_gen <= 1'b0;
					pktend_i <= 1'b1;
				end
				else if((video1_lv_i)&&(!flaga)) begin
					internal_slwr <= 1'b1;
					internal_slwr_gen <= 1'b1;
					pktend_i <= 1'b1;
					xtra_wr_en <= 1'b1;
				end
				else begin
					internal_slwr <= 1'b1;
					internal_slwr_gen <= 1'b1;
					pktend_i <= 1'b1;
				end
				if(!internal_slwr) begin
					if(!flagabuf)begin
						wm_cnt <= 'd0;
					end
					else if (wm_cnt == (watermark_fpga - 4))begin
						wm_cnt <= wm_cnt + 1'b1;
					end
					else if(flagb == 1'b0)begin
						wm_cnt <= wm_cnt + 1'b1;
					end
					else if(flagb)
						wm_cnt <= 'd0;
				end
				if((wm_cnt == (watermark_fpga - 4))&(!internal_slwr))
					slfifo_state <= THREAD_ST;
				else if(camfifo_overflow_pllclk2&ddr_rdout_progempty)
					slfifo_state <= PKTEND_0_ST;
				else if(((video1_lv_i)&flaga&((video1_fx3_dq_i_temp == fv_end_data[31:0]))))
					slfifo_state <= PKTEND_0_ST;
				else if(slfifo_st_vidrst_o||(!cam_app_en))begin
					slfifo_state <= WAIT_SKT_ST;
				end
			end
			THREAD_ST : begin
				init_r <= 'd0;
				aud_rd_en_r <= 'd0;
				outfifo_rd_en <= 'd0;
				data_gen_stream_in <= 32'hffffffff;
				if(aud_data_f&i2s_fifo_end&(audio_lv_i)) begin
					pktend_r <= 'd0;
				end
				else begin
					pktend_r <= 'd1;
				end
				internal_slwr_gen <= 1'b1;
				internal_slwr <= 1'b1;
				wm_cnt <= 'd0;
				pktend_i <= 1'b1;
				last_byte <= 1'b0;
				msb_lsb <= 1'b1;
				if(aud_data_f) begin
					if((audio_lv_i)&&(flaga)) begin
						data_gen_stream_in <= i2s_fifo_data_i;
						internal_slwr <= 1'b0;
						internal_slwr_gen <= 1'b0;
						pktend_i <= 1'b1;
					end
				end
				else begin
					if((video1_lv_i)&&(flaga)) begin
						data_gen_stream_in <= video1_fx3_dq_i;
						internal_slwr <= 1'b0;
						internal_slwr_gen <= 1'b0;
						pktend_i <= 1'b1;
					end
				end
				if(!flagabuf)begin
					slfifo_state <= FLAGA_0_ST;
					thread_addr_r[0] <= !thread_addr_r[0];
				end
				else if(aud_data_f&i2s_fifo_end&(audio_lv_i)) begin
					slfifo_state <= PKTEND_0_ST;
				end
			end
			AUD_DATA_ST : begin
				if(((i2s_fifo_almostempty_i)&&(flagb))||(xtra_wr_en)/*||(!flaga)*/)
					aud_rd_en_r <= 'd0;
				else if((wm_cnt == (watermark_fpga - 4))&(!internal_slwr))
					aud_rd_en_r <= 'd0;
				else if((audio_lv_i)&flaga&(i2s_fifo_data_pre==fv_end_data[31:0]))
					aud_rd_en_r <= 'd0;
				else 
					aud_rd_en_r <= 'd1;
				if(((audio_lv_i)||(xtra_wr_en))&&(flaga)) begin
					data_gen_stream_in <= i2s_fifo_data_i;
					xtra_wr_en <= 1'b0;
					pktend_i <= 1'b1;
					internal_slwr <= 1'b0;
					internal_slwr_gen <= 1'b0;
					if(i2s_fifo_data_pre==fv_end_data[31:0]) begin
						pktend_r <= 'd0;
					end
					else begin
						pktend_r <= 'd1;
					end
				end
				else if((audio_lv_i)&&(!flaga)) begin
					internal_slwr <= 1'b1;
					internal_slwr_gen <= 1'b1;
					pktend_i <= 1'b1;
					 xtra_wr_en <= 1'b1;
				end
				else begin
					internal_slwr <= 1'b1;
					internal_slwr_gen <= 1'b1;
					pktend_i <= 1'b1;
				end
				if(!internal_slwr) begin
					if(!flagabuf)begin
						wm_cnt <= 'd0;
					end
					else if (wm_cnt == (watermark_fpga - 4))begin
						wm_cnt <= wm_cnt + 1'b1;
					end
					else if(flagb == 1'b0)begin
						wm_cnt <= wm_cnt + 1'b1;
					end
					else if(flagb)
						wm_cnt <= 'd0;
				end
				if((wm_cnt == (watermark_fpga - 4))&(!internal_slwr))
					slfifo_state <= THREAD_ST;
				else if((audio_lv_i)&flaga&(i2s_fifo_data_pre==fv_end_data[31:0]))
					slfifo_state <= PKTEND_0_ST;
				else if(slfifo_st_audrst_o||(!aud_app_en))begin
 					slfifo_state <= WAIT_SKT_ST;
				end
			end
			
			UVC_HEADER_ST : begin
				internal_slwr <= 'd0;
				internal_slwr_gen <= 'd0;
				data_gen_stream_in[31:10] <= (uvc_cnt=='d0) ? {16'd0,UVC_BIT_FIELD[7:2]}: 'd0;
				data_gen_stream_in[9] <= (uvc_cnt=='d0) ? (par_buf_f||camfifo_overflow_pllclk2) : 'd0;
				data_gen_stream_in[8:0] <= (uvc_cnt=='d0) ? {uvc_frame_idx,UVC_LENGTH[7:0]}: 'd0;
				if((uvc_cnt=='d1)&(!internal_slwr)) begin
					slfifo_state <= SLFIFO_DATA_ST;
				end
				else begin
					slfifo_state <= UVC_HEADER_ST;
				end
				if(!internal_slwr) begin
					if(uvc_cnt=='d1) 
						uvc_cnt <= 'd0;
					else
						uvc_cnt <= uvc_cnt + 'd1;
				end
			end
		endcase
	end
end
always @(posedge rd_clk_i, negedge rstn_i)begin
	if(!rstn_i)begin 
		par_buf_f <= 'd0;
	end
	else begin
		if((img_size_4 < (slwr_cnt+buf_size_r))&(slfifo_state==FLAGA_0_ST)&(!slwr_streamIN_)) begin
			par_buf_f <= 'd1;
		end
		else if(slfifo_state==SLFIFO_DATA_ST)
			par_buf_f <= 'd0;
	end
	if(!rstn_i)
		uvc_frame_idx <= 'd0;
	else if((!pktend_r) & (!aud_data_f))begin
		uvc_frame_idx <= !uvc_frame_idx;
	end
end
assign audio_rd_en_o = aud_rd_en_r;

assign pktend_o = pktend_r;

assign slwr_o = internal_slwr;

assign slcs_o = 1'b0;

assign fx3_dq_o = data_gen_stream_in;
 

endmodule

