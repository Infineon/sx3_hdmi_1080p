//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
// 
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		HDMI RX FULLHD
// Module Name:		hdmi_rx_top
// Target Devices:	LFE5U-45F-8BG381I
// Description: The hdmi_rx_top module is the overall top module of this design. It integrates all the sub-modules.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 100 ps
`include "ddr3_test_params.v"

module hdmi_rx_top
(
    clk_in,
	reset_i,	// Active High reset
	
    // FX3 GPIF Interface
	fx3_pclk_o,			// pixel data clock output
    fx3_pd_o, 			// pixel data output
    fx3_slcs_ctl0_o,	// chip select
    fx3_slwr_ctl1_o, // Slave write
    fx3_sloe_ctl2_o, 	// Reset pin, active low
    fx3_flaga_ctl4_i,	// Water mark
    fx3_flagb_ctl5_i,	// DMA ready
    fx3_pktend_ctl7_o,	// Packet End
    fx3_sladdr1_ctl11_o,// Socket Addr A1
    fx3_sladdr0_ctl12_o,// Socket Addr A0
	fx3_slrd_ctl3_o, 	// Slave read

	// FX3 I2C Interface
    fx3_i2c_scl_io,
    fx3_i2c_sda_io,

	//	HDMI rx input
	hdmi_clk_i,	// Source sync clock
	hdmi_y_i,
	hdmi_cbcr_i,
	hdmi_vsync_i,
	hdmi_de_i,

	i2s_d0_i,
	i2s_sclk_i,
	i2s_ws_i
	
    )/* synthesis syn_dspstyle=LOGIC */ /* synthesis syn_useioff = 0 */;

// Defining all inputs and outputs

input				clk_in;
input				reset_i;	// Active High reset

// FX3 GPIF Interface
output	wire		fx3_pclk_o;			// Pixel data clock output
output	wire [31:0]	fx3_pd_o; 			// Pixel data output
output	wire		fx3_slcs_ctl0_o;	// CHIP SELECT
output	wire		fx3_slwr_ctl1_o; // SLAVE WRITE
output	wire		fx3_sloe_ctl2_o; 		// Reset pin, active low
input	wire		fx3_flaga_ctl4_i;	// WATER MARK
input	wire		fx3_flagb_ctl5_i;	//DMA READY
output	wire		fx3_pktend_ctl7_o;	//PACKET END
output	wire		fx3_sladdr1_ctl11_o;		//A1
output	wire		fx3_sladdr0_ctl12_o;		//A0
output	wire		fx3_slrd_ctl3_o;			// Slave read

// FX3 I2C Interface
inout	wire		fx3_i2c_scl_io;
inout	wire		fx3_i2c_sda_io;

//	HDMI rx input
input			hdmi_clk_i;
input	[7:0]	hdmi_y_i;
input	[7:0]	hdmi_cbcr_i;
input			hdmi_vsync_i;
					   
input			hdmi_de_i;

input		i2s_d0_i;
input		i2s_sclk_i;
input		i2s_ws_i;


//	Wires and register declarations

wire	hdmi_clk_o;
wire	pll_clk1;
wire	pll_clk2;
wire	sclk /* synthesis syn_keep=1 */;    

reg 	rst_n_150M, rff1_150M/* synthesis syn_keep=1 */;
reg 	rst_n_pll_clk1, rff1_pll_clk1/* synthesis syn_keep=1 */;
reg 	rst_n_pll_clk2, rff1_pll_clk2/* synthesis syn_keep=1 */;
reg 	rst_n_hdmi, rff1_hdmi/* synthesis syn_keep=1 */;
reg 	rst_hdmi, rff1_p_hdmi/* synthesis syn_keep=1 */;


assign fx3_sloe_ctl2_o =1'b1;
assign fx3_slrd_ctl3_o= 1'b1;

//	Reset bridge of reset_i in hdmi_clk domain Active HIGH
always @(posedge hdmi_clk_o, posedge reset_i)
begin
  if (reset_i) begin
    rst_hdmi <= 'd1;
    rff1_p_hdmi <= 'd1;
  end
  else begin
    rff1_p_hdmi <= 'd0;
    rst_hdmi <= rff1_p_hdmi;
  end
end

//	Reset bridge of reset_i in hdmi_clk domain Active LOW
always @(posedge hdmi_clk_o, posedge reset_i)
begin
  if (reset_i) begin
    rff1_hdmi <= 'd0;
    rst_n_hdmi <= 'd0;
  end
  else begin
    rff1_hdmi <= 'd1;
    rst_n_hdmi <= rff1_hdmi;
  end
end

//	Reset bridge of reset_i in pll_clk1 domain Active LOW
always @(posedge pll_clk1, posedge reset_i)
begin
  if (reset_i) begin
    rff1_pll_clk1 <= 'd0;
    rst_n_pll_clk1 <= 'd0;
  end
  else begin
    rff1_pll_clk1 <= 'd1;
    rst_n_pll_clk1 <= rff1_pll_clk1;
  end
end

//	Reset bridge of reset_i in pll_clk2 domain Active LOW
always @(posedge pll_clk2, posedge reset_i)
begin
  if (reset_i) begin
    rff1_pll_clk2 <= 'd0;
    rst_n_pll_clk2 <= 'd0;
  end
  else begin
    rff1_pll_clk2 <= 'd1;
    rst_n_pll_clk2 <= rff1_pll_clk2;
  end
end

wire [15:0] img_wt_clk2/* synthesis syn_keep=1 */;
wire [31:0] hdmi_din_ddr/* synthesis syn_keep=1 */;
wire [15:0] img_ht_clk2/* synthesis syn_keep=1 */;
wire [31:0] i2s_fifo_data_pre;
wire aud_pktend_o;
wire uvc_header_en;
wire ddr_fr_buf_sw;
wire fx3_clock_out;
reg ddr_fr_buf_sw_hdmi1='d0/* synthesis syn_keep=1 */;
reg ddr_fr_buf_sw_hdmi2='d0/* synthesis syn_keep=1 */;
wire ddr_fr_buf_sw_hdmi;
wire vsync_fal_clk2/* synthesis syn_keep=1 */;
wire vsync_ris_clk2/* synthesis syn_keep=1 */;
reg vsync_clk2_r1/* synthesis syn_keep=1 */;
reg vsync_clk2_r2/* synthesis syn_keep=1 */;
reg vsync_clk2_r3/* synthesis syn_keep=1 */;
reg vsync_clk2_r4/* synthesis syn_keep=1 */;
wire i2s_fifo_rd_en;
wire video_en_o;
wire pll_lock;
wire aud_en_o;
wire [31:0] i2s_fifo_data_o;

wire slfifo_st_vidrst_o;
reg fr_vsync_t/* synthesis syn_keep=1 */;
reg fr_vsync_t_r1/* synthesis syn_keep=1 */;
reg fr_vsync_t_r2/* synthesis syn_keep=1 */;
wire frame_rd_start/* synthesis syn_keep=1 */;
reg frame_rd_act_r/* synthesis syn_keep=1 */;
wire slfifo_st_audrst_o;
wire	hdmi_hsync;
wire	hdmi_vsync;
wire [15:0]	slfifo_uvc_buf_size;
reg hdmi_vsync_r1/* synthesis syn_keep=1 */;
reg hdmi_vsync_r2/* synthesis syn_keep=1 */;
reg hdmi_de_r1/* synthesis syn_keep=1 */;
reg hdmi_de_r2/* synthesis syn_keep=1 */;
wire	hdmi_de_ris/* synthesis syn_keep=1 */;
wire	hdmi_de_fal/* synthesis syn_keep=1 */;
wire	hdmi_vsync_fal;
wire	hdmi_vsync_ris/* synthesis syn_keep=1 */;
reg	[7:0]	hdmi_y_r='d0;
reg	[7:0]	hdmi_cbcr_r='d0;
reg			hdmi_de_r/* synthesis syn_keep=1 */;
reg			hdmi_de_rr/* synthesis syn_keep=1 */;
wire i2s_fifo_empty_o;
wire fullhd_mode_o;
wire [31:0] y_data;
wire [15:0] uv_data;
wire cam_empty_o;
wire y_data_vld;
wire u_data_vld;
wire v_data_vld;
wire uv_data_vld;
wire cam_rd_vld_o;
wire [63:0] cam_fifo_dout;
wire cam_app_en;
wire aud_app_en;
reg cam_app_en_sclk1='d0/* synthesis syn_keep=1 */;
reg cam_app_en_sclk2='d0/* synthesis syn_keep=1 */;
reg [31:0] img_size_r;
wire [31:0] img_size;
reg [15:0] img_ht_sclk_cdc1/* synthesis syn_keep=1 */;
reg [15:0] img_ht_sclk_cdc2/* synthesis syn_keep=1 */;
reg [15:0] img_wt_sclk_cdc1/* synthesis syn_keep=1 */;
reg [15:0] img_wt_sclk_cdc2/* synthesis syn_keep=1 */;
wire	fr_act_rd_f/* synthesis syn_keep=1 */;
wire	cam_full_o;
reg	cam_full_pllclk2_1/* synthesis syn_keep=1 */;
reg	cam_full_pllclk2_2/* synthesis syn_keep=1 */;
reg	hdmi_vid_en='d1;
reg camfifo_overflow='d1/* synthesis syn_keep=1 */;

wire slfifo_almostfull_o;
reg		vsync_r1/* synthesis syn_keep=1 */;
reg		vsync_r2/* synthesis syn_keep=1 */;
reg		vsync_r3/* synthesis syn_keep=1 */;
reg		vsync_r4/* synthesis syn_keep=1 */;
reg		cam_app_en_hdmi1/* synthesis syn_keep=1 */;
reg		cam_app_en_hdmi2/* synthesis syn_keep=1 */;
wire	vsync_ris;
wire	yuv_420_en;
wire	vid_pktend_o;
wire	vid_pktend_hdmi;

wire [15:0] i2s_wr_fifo_cnt;
reg [31:0]	fifo_wr_data_r/* synthesis syn_keep=1 */;
reg [31:0]	fifo_wr_data_rr/* synthesis syn_keep=1 */;
reg 	fifo_wr_data_vld_r/* synthesis syn_keep=1 */;
reg 	fifo_wr_data_vld_rr/* synthesis syn_keep=1 */;
reg [7:0]	rst_cnt='d0;

//	PLL for clock generation
pll_clk 
u_pll_clk
(
	.CLKI(clk_in),
	.CLKOP(pll_clk1),
	.CLKOS(pll_clk2),
	.LOCK(pll_lock)
	);

// CDC for ddr_fr_buf_sw signal
pulse_sync pulse_sync_inst(
	.clk_h(pll_clk2),	//	High FZ clock
	.clk_l(hdmi_clk_o),	//	Low FZ clock
	.data_h_i(vid_pktend_o),	//	Input Pulse in clk_l domain
	.data_l_o(vid_pktend_hdmi)	//	Output Pulse in clk_h domain
    );

//	HDMI_IN module -
//		Receives the DDR HDMI video input from the HDMI rx IC
hdmi_in
hdmi_in_mod
(
	.ddr_in_datain({hdmi_cbcr_i,hdmi_y_i}),	// HDMI DDR video input lines
	.ddr_in_q(hdmi_din_ddr),	// SDR output
	.ddr_in_clkin(hdmi_clk_i),	// HDMI source clock
	.ddr_in_reset('d0),			// active high reset
	.ddr_in_sclk(hdmi_clk_o)
	);


always @(posedge hdmi_clk_o) begin
	cam_app_en_hdmi1 <= cam_app_en;
	cam_app_en_hdmi2 <= cam_app_en_hdmi1;
									  
											
end

always@(posedge pll_clk2) begin
	img_size_r <= img_size;
end

//	Frame read valid and frmae read start flags generation
always @(posedge hdmi_clk_o) begin
	if(hdmi_vsync_ris)
		fr_vsync_t <= 'd1;
	else if(hdmi_de_r2)
		fr_vsync_t <= 'd0;
	fr_vsync_t_r1 <= fr_vsync_t;
	fr_vsync_t_r2 <= fr_vsync_t_r1;
	if(!cam_app_en_hdmi2)
		frame_rd_act_r <= 'd0;
	else if(frame_rd_start)
		frame_rd_act_r <= 'd1;
	else if(vid_pktend_hdmi)
		frame_rd_act_r <= 'd0;
end

always @(posedge hdmi_clk_o) begin
	hdmi_vsync_r1 <= hdmi_vsync;
	hdmi_vsync_r2 <= hdmi_vsync_r1;
	hdmi_de_r1 <= hdmi_de_i & pll_lock;
	hdmi_de_r2 <= hdmi_de_r1;
end
assign frame_rd_start = (!fr_vsync_t_r1) & fr_vsync_t_r2;
assign	hdmi_de_fal = (!hdmi_de_r1) & (hdmi_de_r2);
assign	hdmi_de_ris = (hdmi_de_r1) & (!hdmi_de_r2);
assign	hdmi_vsync_fal = (!hdmi_vsync_r1) & (hdmi_vsync_r2);
assign	hdmi_vsync_ris = (hdmi_vsync_r1) & (!hdmi_vsync_r2);

always @(posedge hdmi_clk_o) begin
	hdmi_de_r <= hdmi_de_i & pll_lock;
	hdmi_de_rr <= hdmi_de_r & hdmi_vid_en;
end

//	HDMI video data enable flag and camoverflow flag generation
always @(posedge hdmi_clk_o) begin
	if(!rst_n_hdmi)
		hdmi_vid_en <= 'd1;
	else if(hdmi_de_ris & fr_vsync_t) begin
		if(frame_rd_act_r)
			hdmi_vid_en <= 'd0;
		else
			hdmi_vid_en <= 'd1;
	end
	else if(cam_full_o)
		hdmi_vid_en <= 'd0;
	if(vid_pktend_hdmi)
		camfifo_overflow <= 'd0;
	else if(cam_full_o & frame_rd_act_r)
		camfifo_overflow <= 'd1;
end
assign hdmi_hsync = hdmi_de_rr;
assign hdmi_vsync = !hdmi_vsync_i;

//	GPIF interface clock buffer
OB i_OB_FX_CLOCK ( .I( fx3_clock_out ), .O( fx3_pclk_o ) );

always @(posedge pll_clk2) begin
	vsync_clk2_r1 <= hdmi_vsync;
	vsync_clk2_r2 <= vsync_clk2_r1;
	vsync_clk2_r3 <= vsync_clk2_r2;
	vsync_clk2_r4 <= vsync_clk2_r3;
end
assign vsync_fal_clk2 = (!vsync_clk2_r3) & vsync_clk2_r4;
assign vsync_ris_clk2 = (vsync_clk2_r3) & (!vsync_clk2_r4);

always @(posedge pll_clk2)
	if(!rst_cnt[7])
		rst_cnt <= rst_cnt + 'd1;

//	I2S receiver module - 
//		Deserializes the I2S data received. Maintains 2 buffers to store the audio data alternatively.
i2s_rx_mod
i2s_rx_mod
(
	.clk_i(pll_clk2),
	.rstn_i(aud_app_en/*rst_n_pll_clk2*/),	// Active LOW Reset
	//.rstn_i(!reset_i/*rst_n_pll_clk2*/),	// Active LOW Reset

	// interface inputs
	.sd_i(i2s_d0_i),	// I2S input data line
	.sck_i(i2s_sclk_i), // I2S input clock line
	.lrclk_i(i2s_ws_i),	// I2S input Word Select

	// Control signals
	.vsync_fal_i(vsync_fal_clk2),
	.vsync_ris_i(vsync_ris_clk2),
	.i2s_fifo_rd_en_i(i2s_fifo_rd_en),
	.i2s_fifo_data_o(i2s_fifo_data_o),
	.i2s_fifo_data_pre(i2s_fifo_data_pre),
	.i2s_fifo_empty_o(i2s_fifo_empty_o),
	.i2s_fifo_almostempty_o(i2s_fifo_almostempty_o),
	.aud_pktend_i(aud_pktend_o),
	.wr_fifo_cnt_o(i2s_wr_fifo_cnt)
	);

always @(posedge hdmi_clk_o) begin
	fifo_wr_data_r <= {hdmi_din_ddr[23:16],hdmi_din_ddr[31:24],hdmi_din_ddr[7:0],hdmi_din_ddr[15:8]};
	fifo_wr_data_rr <= fifo_wr_data_r;
	fifo_wr_data_vld_r <= hdmi_hsync;
	fifo_wr_data_vld_rr <= fifo_wr_data_vld_r;
end

//	Write FIFO module
//		Store the input HDMI video data
wr_fifo_mod  wr_fifo_mod(
    .rd_clk(pll_clk2),	//	FIFO Read Clock
    .reset_n(rst_n_pll_clk2),
    .reset_n_hdmi(rst_n_hdmi),
    .ddr_fr_buf_sw(ddr_fr_buf_sw),	// video data commit flag
    .fv_wr_clk(hdmi_vsync), //	FIFO Write Clock
    .wr_vld_i(fifo_wr_data_vld_rr),
    .wr_data_i(fifo_wr_data_rr),
    .wr_clk(hdmi_clk_o),
	.cam_full_o(cam_full_o),
	.slfifo_almostfull(slfifo_almostfull_o),
	.cam_rd_vld_o(cam_rd_vld_o),
	.cam_fifo_dout(cam_fifo_dout),
	.hdmi_vid_en(hdmi_vid_en),
	.frame_rd_act(frame_rd_act_r),
	.cam_empty_o(cam_empty_o)
    );


// GPIF Interface top module
gpif_interface_mod
	#( 
		.FX3_BITS(`DATA_WIDTH_OUT)
	)
	GPIF_interface
	(
		.reset_n_i(rst_n_pll_clk2 )	//	Input Reset Active Low
	  , .fx3_interface_clock_i(pll_clk2 ) // FX3 interface clock
	  , .ddr_fr_buf_sw(ddr_fr_buf_sw)
	  
	  //	FX3 interface
	  , .fx3_pclk_o(fx3_clock_out)
	  , .fx3_pd_o(fx3_pd_o[31:0])
	  , .fx3_chip_select_o(fx3_slcs_ctl0_o ) // CHIP SELECT
	  , .fx3_slave_write_enable_o(fx3_slwr_ctl1_o) // SLAVE WRITE
	  , .fx3_reset_i(!reset_i ) // Reset pin, active low
	  , .fx3_water_mark_i(fx3_flaga_ctl4_i)// Water mark
	  , .fx3_dma_ready_i(fx3_flagb_ctl5_i) // DMA ready
	  , .fx3_packet_ready_o(fx3_pktend_ctl7_o) // Packet end
	  , .fx3_address1_o(fx3_sladdr1_ctl11_o) // Socket Addr A1
	  , .fx3_address0_o(fx3_sladdr0_ctl12_o) // Socket Addr A0
	  
	  , .i2s_fifo_almostempty_i(i2s_fifo_almostempty_o)
	  , .i2s_fifo_empty_i(i2s_fifo_empty_o)
	  , .i2s_rd_en_o(i2s_fifo_rd_en)
	  , .i2s_fifo_data_i(i2s_fifo_data_o)
	  , .i2s_fifo_data_pre(i2s_fifo_data_pre)
	  , .video_en_o(video_en_o)
	  , .aud_en_o(aud_en_o)
	  , .aud_pktend_o(aud_pktend_o)
	  , .slfifo_st_vidrst_o(slfifo_st_vidrst_o)
	  , .slfifo_st_audrst_o(slfifo_st_audrst_o)
	  , .fr_act_rd_f(fr_act_rd_f)
	  , .slfifo_almostfull_o(slfifo_almostfull_o)
	  , .cam_rd_vld(cam_rd_vld_o)
	  , .cam_fifo_dout(cam_fifo_dout)
	  , .cam_full_pllclk2(cam_full_o)
	  , .cam_app_en(cam_app_en)
	  , .aud_app_en(aud_app_en)
	  , .img_size(img_size_r)
	  , .uvc_header_en(uvc_header_en)
	  , .slfifo_uvc_buf_size(slfifo_uvc_buf_size)
	  , .camfifo_overflow(camfifo_overflow)
	  , .fx3_slclk(pll_clk1)
	  , .vid_pktend_o(vid_pktend_o)
	  , .i2s_wr_fifo_cnt_i(i2s_wr_fifo_cnt)
	  );
	  
//	I2C Slave module

i2c_slave 
fx3_i2c_slave_if
(
	//	Interface Inouts
	.sl_sda_io(fx3_i2c_sda_io)
	, .sl_scl_io(fx3_i2c_scl_io)

	//	Global Inputs
	, .reset_n_i(rst_n_pll_clk2)
	//, .reset_n_i(rst_cnt[7])
	, .clock_i(pll_clk2)

	//	Control Signals
	, .aud_en_o(aud_en_o)	//	Audio enable
	, .video_en_o(video_en_o)//	Video enable
	, .slfifo_st_vidrst_o(slfifo_st_vidrst_o) // video channel reset
	, .slfifo_st_audrst_o(slfifo_st_audrst_o) // audio channel reset
	//, .yuv_420_en(yuv_420_en)	// YUV_420 Conversion enable
	, .img_wt_o(img_wt_clk2)	// Number of pixels in a line
	, .img_ht_o(img_ht_clk2)	// Number of lines ina  frame
	, .img_size_o(img_size)		// Number of pixels in a frame
	//, .interleaved_en_o(interleaved_en_o) // Interlaced Conversion enable
	, .cam_app_en_o(cam_app_en)	// Video Streaming Applicaton enable
	, .aud_app_en_o(aud_app_en)	// Audio Applicaton enable
	, .uvc_header_en_o(uvc_header_en)	// UVC header padding Enable flag
	, .slfifo_uvc_buf_size_o(slfifo_uvc_buf_size) // Number of byte in a buffer in FX3
);

endmodule
module pulse_sync(
	input	clk_h,	//	High FZ clock
	input	clk_l,	//	Low FZ clock
	input	data_h_i,	//	Input Pulse in clk_l domain
	output	data_l_o	//	Output Pulse in clk_h domain
    );

reg	sync_0_h/* synthesis syn_keep=1 */;
reg	sync_0_l/* synthesis syn_keep=1 */;
reg	sync_1_l/* synthesis syn_keep=1 */;
reg	sync_2_l/* synthesis syn_keep=1 */;

//		Toogle logic
always@(posedge clk_h) begin
	sync_0_h <= data_h_i ? (!sync_0_h) : sync_0_h;
end

always@(posedge clk_l) begin
	sync_0_l <= sync_0_h;
	sync_1_l <= sync_0_l;
	sync_2_l <= sync_1_l;
end

assign data_l_o = sync_2_l ^ sync_1_l;
//assign data_l_o = ((!sync_2_l)&sync_1_l) || (sync_2_l&(!sync_1_l));

endmodule