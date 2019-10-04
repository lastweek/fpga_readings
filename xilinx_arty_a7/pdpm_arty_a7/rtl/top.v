/*
 * The top RTL design for pDPM project.
 * Two major modules are connected: Network and Memory.
 *
 * The design is sub-optimal, this really just serves as a PoC.
 */

module pDPM_top(
	input	glbl_rst,
	input	sys_clk_100M,

	/*
	 * Ports group I: network related
	 * and some LED/switch input/output.
	 */

	/* 25MHz output clk for PHY */
	output	mii_ref_clk_out,

	output	phy_resetn,

	/* MII Interface */
	output [3:0]	mii_txd,
	output		mii_tx_en,
	input [3:0]	mii_rxd,
	input		mii_rx_dv,
	input		mii_rx_er,
	input		mii_rx_clk,
	input		mii_tx_clk,

	/* MDIO Interface */
	inout		mdio,
	output		mdc,

	/* Serialised statistics vectors */
	output        tx_statistics_s,
	output        rx_statistics_s,

	/* Serialised Pause interface controls */
	input         pause_req_s,

	/* Main example design controls */
	input [1:0]	mac_speed,
	input         update_speed,
	input         config_board,
	output        serial_response,
	input         gen_tx_data,
	input         chk_tx_data,
	input         reset_error,
	output        frame_error,
	output        activity_flash,

	output        user_LED,

	/*
	 * I changed the original one. This one now indicate
	 * package generation activity.
	 */
	output        activity_flash_gen,

	/*
	 * I added this. This indicates if packet generation is enabled.
	 * It directly reflects gen_tx_data switch.
	 * It is now connected to LD3 blue light
	 */
	output        pkt_gen_enabled,

	/*
	 * Port Group II: memory interface
	 * mainly the DDR3 signals
	 */
	output [13:0]	ddr3_sdram_addr,
	output [2:0]	ddr3_sdram_ba,
	output		ddr3_sdram_cas_n,
	output [0:0]	ddr3_sdram_ck_n,
	output [0:0]	ddr3_sdram_ck_p,
	output [0:0]	ddr3_sdram_cke,
	output [0:0]	ddr3_sdram_cs_n,
	output [1:0]	ddr3_sdram_dm,
	inout [15:0]	ddr3_sdram_dq,
	inout [1:0]	ddr3_sdram_dqs_n,
	inout [1:0]	ddr3_sdram_dqs_p,
	output [0:0]	ddr3_sdram_odt,
	output		ddr3_sdram_ras_n,
	output		ddr3_sdram_reset_n,
	output		ddr3_sdram_we_n
);

	/* AXI-S: Network to Memory */
	wire		rx_fifo_clock;
	wire		rx_fifo_resetn;
	wire [7:0]	rx_axis_fifo_tdata;
	wire		rx_axis_fifo_tvalid;
	wire		rx_axis_fifo_tlast;
	wire		rx_axis_fifo_tready;

	/* AXI-S: Memory to Network */
	wire		tx_fifo_clock;
	wire		tx_fifo_resetn;
	wire [7:0]	tx_axis_fifo_tdata;
	wire		tx_axis_fifo_tvalid;
	wire		tx_axis_fifo_tlast;
	wire		tx_axis_fifo_tready;

	wire		mig_166MHZ;
	wire		mig_ref_200MHZ;
	wire		mig_sys_rst_n;

	wire		net_125MHZ;
	wire		net_25MHZ;

	design_1	clock_generator
	(
		.sys_clock		(sys_clk_100M),
		.clk_out1_0		(net_125MHZ),
		.clk_out2_0		(net_25MHZ),
		.clk_out3_0		(mig_166MHZ),
		.clk_out4_0		(mig_ref_200MHZ),

		/* High when clock output is valid */
		.locked_0		(clock_locked)
	);

	assign		mig_sys_rst_n = clock_locked;

	/* Output clock to PHY */
	assign		mii_ref_clk_out = net_25MHZ;

	tri_mode_ethernet_mac_0_example_design pdpm_network
	(
		.glbl_rst		(glbl_rst),
		.clk_100MHZ		(sys_clk_100M),
		.clk_125MHZ		(net_125MHZ),
		.clk_locked		(clock_locked),

		.phy_resetn		(phy_resetn),

		/* MII and MDIO */
		.mii_txd		(mii_txd),
		.mii_tx_en		(mii_tx_en),
		.mii_rxd		(mii_rxd),
		.mii_rx_dv		(mii_rx_dv),
		.mii_rx_er		(mii_rx_er),
		.mii_rx_clk		(mii_rx_clk),
		.mii_tx_clk		(mii_tx_clk),
		.mdio			(mdio),
		.mdc			(mdc),

		/* Misc input and output */
		.tx_statistics_s	(tx_statistics_s),
		.rx_statistics_s	(rx_statistics_s),
		
		.pause_req_s		(pause_req_s),
		.mac_speed		(mac_speed),
		.update_speed		(update_speed),
		.config_board		(config_board),
		.serial_response	(serial_response),
		.gen_tx_data		(gen_tx_data),
		.chk_tx_data		(chk_tx_data),
		.reset_error		(reset_error),
		.frame_error		(frame_error),
		.activity_flash		(activity_flash),
		.user_LED		(user_LED),
		.activity_flash_gen	(activity_flash_gen),
		.pkt_gen_enabled	(pkt_gen_enabled),

		/* AXI-S to Memory */
		.rx_fifo_clock_ref	(rx_fifo_clock),
		.rx_fifo_resetn_ref	(rx_fifo_resetn),
		.rx_axis_fifo_tdata	(rx_axis_fifo_tdata),
		.rx_axis_fifo_tvalid	(rx_axis_fifo_tvalid),
		.rx_axis_fifo_tready	(rx_axis_fifo_tready),
		.rx_axis_fifo_tlast	(rx_axis_fifo_tlast),

		/* AXI-S from Memory */
		.tx_fifo_clock_ref	(tx_fifo_clock),
		.tx_fifo_resetn_ref	(tx_fifo_resetn),
		.tx_axis_fifo_tdata	(tx_axis_fifo_tdata),
		.tx_axis_fifo_tvalid	(tx_axis_fifo_tvalid),
		.tx_axis_fifo_tready	(tx_axis_fifo_tready),
		.tx_axis_fifo_tlast	(tx_axis_fifo_tlast)
	);

	pdpm_system_2	pdpm_memory (
		.mig_166MHZ		(mig_166MHZ),
		.mig_ref_200MHZ		(mig_ref_200MHZ),
		.mig_sys_rst_n		(mig_sys_rst_n),

		/* AXI-S to Network */
		.m_axis_aclk_0		(tx_fifo_clock),
		.m_axis_aresetn_0	(tx_fifo_resetn),
		.M_AXIS_0_tdata		(tx_axis_fifo_tdata),
		.M_AXIS_0_tlast		(tx_axis_fifo_tlast),
		.M_AXIS_0_tready	(tx_axis_fifo_tready),
		.M_AXIS_0_tvalid	(tx_axis_fifo_tvalid),

		/* AXI-S from Network */
		.s_axis_aclk_0		(rx_fifo_clock),
		.s_axis_aresetn_0	(rx_fifo_resetn),
		.S_AXIS_0_tdata		(rx_axis_fifo_tdata),
		.S_AXIS_0_tlast		(rx_axis_fifo_tlast),
		.S_AXIS_0_tready	(rx_axis_fifo_tready),
		.S_AXIS_0_tvalid	(rx_axis_fifo_tvalid),

		/* DDR3 */
		.ddr3_sdram_addr	(ddr3_sdram_addr),
		.ddr3_sdram_ba		(ddr3_sdram_ba),
		.ddr3_sdram_cas_n	(ddr3_sdram_cas_n),
		.ddr3_sdram_ck_n	(ddr3_sdram_ck_n),
		.ddr3_sdram_ck_p	(ddr3_sdram_ck_p),
		.ddr3_sdram_cke		(ddr3_sdram_cke),
		.ddr3_sdram_cs_n	(ddr3_sdram_cs_n),
		.ddr3_sdram_dm		(ddr3_sdram_dm),
		.ddr3_sdram_dq		(ddr3_sdram_dq),
		.ddr3_sdram_dqs_n	(ddr3_sdram_dqs_n),
		.ddr3_sdram_dqs_p	(ddr3_sdram_dqs_p),
		.ddr3_sdram_odt		(ddr3_sdram_odt),
		.ddr3_sdram_ras_n	(ddr3_sdram_ras_n),
		.ddr3_sdram_reset_n	(ddr3_sdram_reset_n),
		.ddr3_sdram_we_n	(ddr3_sdram_we_n)
	);

endmodule
