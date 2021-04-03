//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
// 
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		HDMI RX FULLHD
// Module Name:		wr_fifo_mod
// Target Devices:	LFE5U-45F-8BG381I
// Description: 
// 
// Dependencies: wr_fifo_mod receives the video data from the HDMI rx module and stores it in a FIFO before sending it to the gpif_interface_top
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 100 ps
`include "ddr3_test_params.v"

module wr_fifo_mod
(
    input		rd_clk,
    input		reset_n,
    input		reset_n_hdmi,
    input		ddr_fr_buf_sw,
	input		fv_wr_clk,
	input		wr_vld_i,
	input [31:0]wr_data_i,
	input		wr_clk,
	output		cam_full_o,
	input		slfifo_almostfull,
	output		cam_rd_vld_o,
	output[63:0]cam_fifo_dout,
	input		hdmi_vid_en,
	input		frame_rd_act,
	output		cam_empty_o
    );

//	Register and Net declararion
reg			uv_ddr_wr_f='d0;
wire [63:0]	cam_dout;
wire 		cam_empty/* synthesis syn_keep=1 */;
wire 		cam_full/* synthesis syn_keep=1 */;
wire 		cam_WrEn/* synthesis syn_keep=1 */;
wire [31:0]	cam_WrData;
wire [10:0]	cam_rcnt/* synthesis syn_keep=1 */;
wire 		cam_rd_en/* synthesis syn_keep=1 */;
reg 		Reset_fifo='d1;
reg 		RPReset='d1;
reg 		fv_r;
reg 		fv_rr;
wire 		fv_rise;
reg 		fv_rise_sclk;
wire 		fv_fall;
reg 		fv_fall_r;
reg [63:0]	fv_hdmi_r;
reg 		fv_fall_sclk;
reg 		frame_wr_completed;
reg 		frame_rd_completed;
reg 		ddr_rd_enable;
reg 		wr_frame_buf;
reg 		rd_frame_buf;
reg 		ddr_rd_valid;
reg 		grab_frame;
reg [1:0]	wr_addr_st;
reg [31:0]	fv_slclk;
reg [1:0]	rd_addr_st;
reg 		cam_rd_vld_r='d0;
reg 		cam_rd_vld_rr='d0;
wire [8:0] 	uv_fifo_rcnt;
wire [15:0] uv_fifo_wrdata;
wire [63:0] uv_fifo_dout;
wire 		uv_fifo_empty;
wire 		uv_fifo_almostempty;
wire 		uv_fifo_full;
wire 		uv_fifo_wren;
wire 		uv_fifo_rd_en;
reg [31:0] 	img_size_sclk_r1='d0;
reg [31:0] 	img_size_sclk_r2='d0;
reg [31:0] 	img_size_sclk='d0;

parameter [`inst1_ADDR_WIDTH-1:0]frame_buf_st_addr1 = 27'h1000000;
parameter [`inst1_ADDR_WIDTH-1:0]frame_buf_st_addr_uv1 = 27'h1900000;
parameter [`inst1_ADDR_WIDTH-1:0]frame_buf_st_addr2 = 27'h2000000;
parameter [`inst1_ADDR_WIDTH-1:0]frame_buf_st_addr_uv2 = 27'h2900000;
parameter [31:0] fv_end_data = 32'hFF00FF00;

wire 		magic_byte_en/* synthesis syn_keep=1 */;
wire 		cam_almostempty/* synthesis syn_keep=1 */;
wire 		fv_rise_long;
wire 		fv_rise_slclk;
reg 		datain_rdy_r1='d0;
reg 		datain_rdy_r2='d0;
wire 		ddr_wr_data_idx;
reg [7:0]	wr_c_r='d0;
reg [7:0]	rd_c_r='d0;
wire 		rd_ris;
wire 		wr_ris;
reg			sec_flag='d0;
reg	[31:0]	sec_cnt_r='d0;

wire magic_byte_en_1st;
reg frame_rd_act_pclk1='d0;
reg frame_rd_act_pclk2='d0;

always @(posedge rd_clk/* or negedge reset_n*/) begin
    if (!reset_n) begin
        RPReset   <=  1'b1;
        Reset_fifo   <=  1'b1;
    end
    else begin
		//RPReset   <=  'd0;
		//Reset_fifo   <=  1'b0;
		RPReset   <=  (fv_rise_slclk&(!frame_rd_act_pclk2))||(!ddr_fr_buf_sw);
		Reset_fifo   <=  (fv_rise_slclk&(!frame_rd_act_pclk2))||(!ddr_fr_buf_sw);
    end
end
always @ (posedge rd_clk) begin
	frame_rd_act_pclk1 <= frame_rd_act;
	frame_rd_act_pclk2 <= frame_rd_act_pclk1;
end

//	Cam in FIFO -
//		
cam_in_fifo 
cam_fifo_inst
(
	.Data(cam_WrData), 
	.Q(cam_dout), 
	.RCNT(cam_rcnt), 
	.Empty(cam_empty), 
	.AlmostEmpty(cam_almostempty), 
	.Full(cam_full), 
	.RPReset(RPReset), 
	.RdClock(rd_clk), 
	.RdEn(cam_rd_en), 
	.Reset(Reset_fifo), 
	.WrClock(wr_clk), 
	.WrEn(cam_WrEn)
);

always @(posedge rd_clk) begin
	cam_rd_vld_r <= !(slfifo_almostfull||cam_almostempty);
	cam_rd_vld_rr <= cam_rd_vld_r;
end

assign cam_empty_o = cam_empty;
assign cam_rd_vld_o = cam_rd_vld_rr;
assign cam_fifo_dout = cam_dout;
assign cam_full_o = cam_full;
assign cam_WrData = ((!wr_vld_i)/* & (!magic_byte_en_1st)*/)? fv_end_data[31:0] : wr_data_i;
assign cam_WrEn = wr_vld_i || (magic_byte_en&hdmi_vid_en);
assign cam_rd_en = !(slfifo_almostfull||cam_almostempty);

// frame vaild rise and fall edge detecttion
always@(posedge wr_clk or negedge reset_n)begin
	if(!reset_n)
		fv_slclk <= 'd0;
	else
		fv_slclk <= {fv_slclk[30:0],fv_wr_clk};
end
always@(posedge wr_clk or negedge reset_n_hdmi)begin
	if(!reset_n_hdmi)begin
		fv_hdmi_r <= 32'd0;
	end
	else begin
		fv_hdmi_r <= {fv_hdmi_r[62:0],fv_wr_clk};
	end
end
assign magic_byte_en = ((!fv_hdmi_r[0]) & (fv_hdmi_r[39]));
assign magic_byte_en_1st = ((!fv_hdmi_r[0]) & (fv_hdmi_r[1]));
assign fv_rise_long = (fv_hdmi_r[0]) & (!fv_hdmi_r[30]);
assign fv_rise_slclk = (fv_slclk[3]) & (!fv_slclk[31]);
	
endmodule
