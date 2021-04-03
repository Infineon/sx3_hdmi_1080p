`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
// 
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		HDMI RX FULLHD
// Module Name:		i2s_rx_mod
// Target Devices:	LFE5U-45F-8BG381I
// Tool versions:  
// Description: Input audio data recevied from the I2S receiver module is written into a audio buffer. The audio buffer sends the data in 192 byte bursts. This burst data is written in the 2 FIFOs alternately for buffering.
//  
// Dependencies: 
//
// Revision: 
// Revision 0.01 - Initial Design
//////////////////////////////////////////////////////////////////////////////////

module i2s_rx_mod
(
	input	clk_i,
	input	rstn_i,	// Active LOW Reset

	// interface inputs
	input	sd_i, // I2S input data line
	input	sck_i, // I2S input clock line
	input	lrclk_i, // I2S input Word Select

	// Control signals
	input	vsync_fal_i,
	input	vsync_ris_i,
	input	i2s_fifo_rd_en_i,
	output	[31:0]	i2s_fifo_data_o,
	output	[31:0]	i2s_fifo_data_pre,
	output	[11:0]	i2s_fifo_rcnt_o,
	output	i2s_fifo_empty_o,
	output	i2s_fifo_almostempty_o,
	input	aud_pktend_i, //	Indicates audio data's packetend in GPIF interface
	output [15:0] wr_fifo_cnt_o
	);

wire	[15:0]	i2s_data;
wire	i2s_data_vld;
reg		wr_fifo_idx_r='d0;
reg		wr_fifo_idx='d0;
reg [5:0]	mg_byte_wr_cnt='d0;
reg		mg_byte_wr_en='d0;

reg		aud_rdidx_r='d0;
wire 	aud_rd_idx;
reg [31:0]	i2s_wr_data_r='d0;
reg [31:0]	i2s_wr_data_rr='d0;
reg [15:0]	i2s_res_data_r='d0;
reg		i2s_wr_en_r='d0;
reg	 [1:0]	st_16_32_r=2'd0;
localparam	IDLE_ST='d0;
localparam	VLD_DATA_ST='d1;
wire	[31:0]	i2s_fifo_dout[1:0];
wire	[11:0]	i2s_fifo_rcnt[1:0];
wire	[11:0]	i2s_fifo_wcnt[1:0];
reg	[1:0]		i2s_wr_en;
wire	[1:0]	i2s_fifo_empty;
wire	[1:0]	i2s_fifo_full;
wire	[1:0]	i2s_fifo_rden;
wire	[1:0]	i2s_almostempty;
wire	[15:0]	i2s_rx_data;
reg	[1:0]		rst='d3;
genvar gi;

localparam BIT_MODE_16='d1;

localparam	WR_IDLE	=2'd0;
localparam	WR_RST	=2'd1;
reg [1:0]	wr_state='d0;
reg			rst_fifo='d0;
reg [31:0]	wr_aud_frm_cnt_r='d0;

localparam	MAGIC_BYTE=32'hff00ff00;
reg 		init_r='d1;
reg [15:0]	vsync_ris_cnt='d0;
reg [63:0]	sec_cnt='d0;
reg 		sec_cnt_f='d0;
reg 		rst_fifo1='d0;
reg 		rst_fifo2='d0;

reg [31:0]	i2s_fifo_data_r='d0;
reg [1:0] 	i2s_wr_en_rr='d0;

reg [15:0]	i2s_rx_data_r='d0;
reg 		i2s_data_vld_r='d0;
	
wire aud_buf_AlmostFull;
reg aud_buf_AlmostFull_r='d0;
reg aud_buf_rden='d0;
reg aud_buf_rden_r='d0;
reg aud_buf_rdvld='d0;
reg aud_buf_rd_hold='d0;
reg buf_sw_trig='d0;
reg sw_trig_st='d0;
reg [7:0] aud_buf_cnt='d0;
reg [1:0] au_rd_st='d0;
reg [1:0] au_rd_st_n;
reg [15:0] wr_cnt_f0='d0; 
reg [15:0] wr_cnt_f1='d0;

localparam SW_VSYNC_TRIG = 1'd0;
localparam DELAYED_TRIG = 1'd1;
localparam RD_IDLE = 2'd0;
localparam RD_HOLD = 2'd1;
localparam RD_ACTIVE = 2'd2;
reg [15:0] test_data='d0;
assign aud_rd_idx = aud_rdidx_r;
always @(posedge clk_i)
	if(i2s_data_vld)
		test_data <= test_data + 'd8;
always @(posedge clk_i) begin
	if(!rstn_i)
		aud_rdidx_r <= 'd0;
	else if(!aud_pktend_i)begin
		aud_rdidx_r <= wr_fifo_idx_r;
	end
end
always @(posedge clk_i) begin
	//i2s_wr_data_rr <= {test_data,test_data};
	i2s_wr_data_rr <= i2s_wr_data_r;
	if(!rstn_i) begin
		i2s_wr_en_r <= 'd0;
		st_16_32_r <= IDLE_ST;
	end
	else begin
		case(st_16_32_r)
			IDLE_ST	:	begin
				i2s_wr_en_r <= 'd0;
				if(aud_buf_rdvld) begin
					i2s_wr_data_r <= {16'd0,i2s_data[15:0]};
					st_16_32_r <= VLD_DATA_ST;
				end
			end
			VLD_DATA_ST	:	begin
				if(aud_buf_rdvld) begin
					i2s_wr_en_r <= 'd1;
					i2s_res_data_r <= {i2s_data[15:0]};
					i2s_wr_data_r <= {i2s_data[15:0],i2s_wr_data_r[15:0]};
					st_16_32_r <= IDLE_ST;
				end
				else begin
					i2s_wr_en_r <= 'd0;
				end
			end
		endcase
	end
end
reg overwrite='d0;
always @(posedge clk_i) begin
	if(!rstn_i) begin
		wr_state <= WR_IDLE;
		mg_byte_wr_en <= 'd0;
		rst_fifo <= 'd0;
		wr_fifo_idx <= 'd0;
		wr_fifo_idx_r <= 'd0;
		mg_byte_wr_cnt <= 'd0;
		wr_aud_frm_cnt_r <= 'd0;
		init_r <= 'd1;
		overwrite <= 'd0;
	end
	else begin
		case(wr_state)
			WR_IDLE :	begin
				rst_fifo <= 'd0;
				if(buf_sw_trig) begin
					wr_aud_frm_cnt_r <= wr_aud_frm_cnt_r + 'd1;
					if(aud_rdidx_r||init_r) begin
						wr_fifo_idx <= 'd0;
						wr_fifo_idx_r <= 'd0;
					end
					else begin
						wr_fifo_idx <= 'd1;
						wr_fifo_idx_r <= 'd1;
					end
					overwrite <= ((!wr_fifo_idx)&aud_rdidx_r) || ((wr_fifo_idx)&(!aud_rdidx_r));
					wr_state <= WR_RST;
					mg_byte_wr_en <= 'd1;
				end
				else begin
					mg_byte_wr_en <= 'd0;
				end
			end
			WR_RST :	begin
				overwrite <= 'd0;
				init_r <= 'd0;
				if(mg_byte_wr_cnt=='d62) begin
					mg_byte_wr_en <= 'd0;
					rst_fifo <= 'd0;
					mg_byte_wr_cnt <= 'd0;
					wr_state <= WR_IDLE;
				end
				else if(mg_byte_wr_cnt>'d52) begin
					mg_byte_wr_en <= 'd0;
					rst_fifo <= 'd0;
					mg_byte_wr_cnt <= mg_byte_wr_cnt + 'd1;
				end
				else begin
					mg_byte_wr_en <= 'd1;
					rst_fifo <= 'd1;
					mg_byte_wr_cnt <= mg_byte_wr_cnt + 'd1;
				end
			end
			
		endcase
	end
end

//	I2S Receiver - 
//		Decodes the I2S input to parallel
i2s_receiver
#(
    .WORD_LENGTH(16),
    .CHANNEL_SELECT("STEREO")	//"MONO_LEFT", "MONO_RIGHT", "STEREO"
	)
i2s_rx
(
	.clk_i(clk_i),
	.rstn_i(rstn_i),
	.sck_i(sck_i),
	.lrclk_i(lrclk_i),
	.sd_i(sd_i),
	.en_i(1'b1),
	.data_o(i2s_rx_data),
	.data_vld(i2s_data_vld),
	.rst_fifo_pos(rst_fifo1&(!rst_fifo2))
	);

reg aud_buf_rdhold1='d0;
reg aud_buf_rdhold2='d0;
reg aud_buf_rdhold3='d0;

always @(posedge clk_i)
	if(!rstn_i)
		au_rd_st <= RD_IDLE;
	else
		au_rd_st <= au_rd_st_n;

always @(posedge clk_i) begin
	aud_buf_rdhold1 <= (au_rd_st==RD_IDLE);
	aud_buf_rdhold2 <= aud_buf_rdhold1;
	aud_buf_rdhold3 <= aud_buf_rdhold2;
	aud_buf_rden <= (au_rd_st==RD_ACTIVE);
	aud_buf_rden_r <= aud_buf_rden;
	aud_buf_rdvld <= aud_buf_rden_r;
end

always @(posedge clk_i)
	if(au_rd_st==RD_ACTIVE)
		aud_buf_cnt <= aud_buf_cnt + 8'd1;
	else
		aud_buf_cnt <= 'd0;
always @(posedge clk_i) begin
	if(!rstn_i) begin
		buf_sw_trig <= 'd0;
		sw_trig_st <= SW_VSYNC_TRIG;
	end
	else begin
		case(sw_trig_st)
			SW_VSYNC_TRIG : begin
				if(vsync_ris_i) begin
					if((au_rd_st==RD_IDLE)) begin
						buf_sw_trig <= 1'b1;
						sw_trig_st <= SW_VSYNC_TRIG;
					end
					else begin
						buf_sw_trig <= 1'd0;
						sw_trig_st <= DELAYED_TRIG;
					end
				end
				else begin
					buf_sw_trig <= 1'd0;
					sw_trig_st <= SW_VSYNC_TRIG;
				end
			end
			DELAYED_TRIG : begin
				if((au_rd_st==RD_IDLE)&(aud_buf_rdhold3)) begin
					sw_trig_st <= SW_VSYNC_TRIG;
					buf_sw_trig <= 1'd1;
				end
				else begin
					sw_trig_st <= DELAYED_TRIG;
					buf_sw_trig <= 1'd0;
				end
			end
		endcase
	end
end
always @(posedge clk_i) 
	aud_buf_AlmostFull_r <= aud_buf_AlmostFull;

always @* begin
	au_rd_st_n = au_rd_st;
	case(au_rd_st)	
	RD_IDLE : begin
		if(aud_buf_AlmostFull&(!aud_buf_AlmostFull_r)) begin
			au_rd_st_n = RD_HOLD;
		end
		else
			au_rd_st_n = RD_IDLE;
	end
	RD_HOLD : begin
		if(buf_sw_trig||(wr_state!=WR_IDLE))
			au_rd_st_n = RD_HOLD;
		else
			au_rd_st_n = RD_ACTIVE;
	end
	RD_ACTIVE : begin
		if(aud_buf_cnt>=8'd95)
			au_rd_st_n = RD_IDLE;
		else
			au_rd_st_n = RD_ACTIVE;
	end
	endcase
end

always @(posedge clk_i) begin
	i2s_rx_data_r <= i2s_rx_data;
	i2s_data_vld_r <= i2s_data_vld;
end
//	Input Audio buffer
aud_buf 
aud_buf_inst
(
	//.aud_buffer_Data(test_data),
	.aud_buffer_Data(i2s_rx_data),
	.aud_buffer_Q({i2s_data}),
	.aud_buffer_AlmostFull(aud_buf_AlmostFull), 
	.aud_buffer_Clock(clk_i),
	.aud_buffer_Empty(),
	.aud_buffer_Full(), 
	.aud_buffer_RdEn(aud_buf_rden),
	.aud_buffer_Reset(!rstn_i),
	.aud_buffer_WrEn(i2s_data_vld&(!init_r))
	);

always @(posedge clk_i/*, negedge rstn_i*/) begin
	if(!rstn_i)
		rst <= 2'b11;
	else begin
		rst[0] <= ((rst_fifo) & (!wr_fifo_idx));
		rst[1] <= ((rst_fifo) & (wr_fifo_idx));
	end
end
always@(posedge clk_i) begin
	rst_fifo1 <= rst_fifo;
	rst_fifo2 <= rst_fifo1;
end

assign wr_fifo_cnt_o = aud_rd_idx ? wr_cnt_f1 : wr_cnt_f0;

always @(posedge clk_i)
	i2s_fifo_data_r <= aud_rd_idx ? i2s_fifo_dout[1] : i2s_fifo_dout[0];
always @(posedge clk_i) begin
	i2s_wr_en[0] <= (i2s_wr_en_r & (!wr_fifo_idx)) || (mg_byte_wr_en & wr_fifo_idx);
	i2s_wr_en[1] <= (i2s_wr_en_r & wr_fifo_idx)  || (mg_byte_wr_en & (!wr_fifo_idx));
end
assign	i2s_fifo_data_o = i2s_fifo_data_r;
assign	i2s_fifo_data_pre = aud_rd_idx ? i2s_fifo_dout[1] : i2s_fifo_dout[0];
assign	i2s_fifo_data_0_o = i2s_fifo_dout[0];
assign	i2s_fifo_data_1_o = i2s_fifo_dout[1];
assign	i2s_fifo_rcnt_o = aud_rd_idx ? i2s_fifo_rcnt[1] : i2s_fifo_rcnt[0];
assign	i2s_fifo_empty_o = aud_rd_idx ? i2s_fifo_empty[1] : i2s_fifo_empty[0];
assign	i2s_fifo_almostempty_o = aud_rd_idx ? i2s_almostempty[1] : i2s_almostempty[0];
assign	i2s_fifo_rden[0] =  i2s_fifo_rd_en_i & (!aud_rd_idx);
assign	i2s_fifo_rden[1] =  i2s_fifo_rd_en_i & (aud_rd_idx);

// Audio Buffers
generate
	for(gi = 0; gi < 2; gi = gi + 1) begin: loop_fifo
		i2s_rx_fifo	i2s_fifo_inst (
			.Data(mg_byte_wr_en ? MAGIC_BYTE : i2s_wr_data_rr), 
			.Q(i2s_fifo_dout[gi]), 
			.RCNT(i2s_fifo_rcnt[gi]), 
			.WCNT(i2s_fifo_wcnt[gi]), 
			.Empty(i2s_fifo_empty[gi]), 
			.AlmostEmpty(i2s_almostempty[gi]), 
			.Full(i2s_fifo_full[gi]), 
			.RPReset(rst[gi]), 
			.RdClock(clk_i), 
			.RdEn(i2s_fifo_rden[gi]), 
			.Reset(rst[gi]), 
			.WrClock(clk_i), 
			.WrEn(i2s_wr_en[gi])
			);
	end
endgenerate

always @(posedge clk_i) begin
	if(rst[0])
		wr_cnt_f0 <= 'd0;
	else if(i2s_wr_en_r & (!wr_fifo_idx))
		wr_cnt_f0 <= wr_cnt_f0 + 'd1;
end
always @(posedge clk_i) begin
	if(rst[1])
		wr_cnt_f1 <= 'd0;
	else if(i2s_wr_en_r & (wr_fifo_idx))
		wr_cnt_f1 <= wr_cnt_f1 + 'd1;
end

endmodule
