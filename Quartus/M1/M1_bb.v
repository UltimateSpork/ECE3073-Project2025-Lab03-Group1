
module M1 (
	clk_clk,
	hex0_export,
	hex1_export,
	hex2_export,
	hex3_export,
	hex4_export,
	hex5_export,
	key0_export,
	key1_export,
	leds_export,
	reset_reset_n,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	switches_export,
	pixel_export,
	camera_ready_export,
	img_addr_export,
	pio_wren_export);	

	input		clk_clk;
	output	[7:0]	hex0_export;
	output	[7:0]	hex1_export;
	output	[7:0]	hex2_export;
	output	[7:0]	hex3_export;
	output	[7:0]	hex4_export;
	output	[7:0]	hex5_export;
	input		key0_export;
	input		key1_export;
	output	[8:0]	leds_export;
	input		reset_reset_n;
	output	[12:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[15:0]	sdram_dq;
	output	[1:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	input	[3:0]	switches_export;
	output	[3:0]	pixel_export;
	output		camera_ready_export;
	output	[16:0]	img_addr_export;
	output		pio_wren_export;
endmodule
