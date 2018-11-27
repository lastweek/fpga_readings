// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Tue Nov 20 16:27:15 2018
// Host        : ee345-OptiPlex running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_quad_spi_0_0_sim_netlist.v
// Design      : system_axi_quad_spi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (p_3_in,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ,
    Receive_ip2bus_error_reg,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ,
    \SPICR_data_int_reg[0] ,
    ipif_glbl_irpt_enable_reg_reg,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ,
    E,
    ip2Bus_WrAck_intr_reg_hole_d1_reg,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    SPICR_data_int_reg0,
    wr_ce_or_reduce_core_cmb,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ,
    bus2ip_wrce_int,
    IP2Bus_Error_1,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    reset_trig0,
    sw_rst_cond,
    irpt_wrack,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    Receive_ip2bus_error0,
    modf_reg,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_controller_rd_ce_or_reduce,
    rd_ce_or_reduce_core_cmb,
    ipif_glbl_irpt_enable_reg_reg_0,
    s_axi_wready,
    s_axi_arready,
    Q,
    s_axi_aclk,
    bus2ip_rnw_i_reg,
    s_axi_wstrb,
    empty,
    \bus2ip_addr_i_reg[6] ,
    ip2Bus_WrAck_core_reg_1,
    almost_full,
    ip2Bus_WrAck_core_reg_d1,
    Receive_ip2bus_error_reg_0,
    bus2ip_rnw_i_reg_0,
    sw_rst_cond_d1,
    irpt_wrack_d1,
    bus2ip_rnw_i_reg_1,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    \ip_irpt_enable_reg_reg[8] ,
    spicr_8_tr_inhibit_frm_axi_clk,
    p_1_in14_in,
    p_1_in17_in,
    p_1_in20_in,
    p_1_in23_in,
    p_1_in26_in,
    p_1_in32_in,
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ,
    p_1_in35_in,
    dout,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \grdc.rd_data_count_i_reg[0] ,
    wr_data_count,
    SPISSR_frm_axi_clk,
    spicr_0_loop_frm_axi_clk,
    rx_fifo_empty_i,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    spicr_2_mst_n_slv_frm_axi_clk,
    Tx_FIFO_Full_int,
    spicr_3_cpol_frm_axi_clk,
    sr_3_MODF_int,
    spicr_4_cpha_frm_axi_clk,
    spisel_d1_reg_to_axi_clk,
    spicr_5_txfifo_rst_frm_axi_clk,
    spicr_6_rxfifo_rst_frm_axi_clk,
    ip2Bus_RdAck_core_reg,
    spicr_7_ss_frm_axi_clk,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    scndry_out,
    spicr_1_spe_frm_axi_clk,
    spicr_9_lsb_frm_axi_clk,
    \gwdc.wr_data_count_i_reg[2] ,
    s_axi_wdata,
    s_axi_aresetn,
    p_15_out,
    is_read_reg,
    p_16_out,
    is_write_reg,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] );
  output p_3_in;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  output Receive_ip2bus_error_reg;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ;
  output \SPICR_data_int_reg[0] ;
  output ipif_glbl_irpt_enable_reg_reg;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ;
  output [0:0]E;
  output ip2Bus_WrAck_intr_reg_hole_d1_reg;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  output SPICR_data_int_reg0;
  output wr_ce_or_reduce_core_cmb;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  output [0:0]bus2ip_wrce_int;
  output IP2Bus_Error_1;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output reset_trig0;
  output sw_rst_cond;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output [8:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  output Receive_ip2bus_error0;
  output modf_reg;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_controller_rd_ce_or_reduce;
  output rd_ce_or_reduce_core_cmb;
  output ipif_glbl_irpt_enable_reg_reg_0;
  output s_axi_wready;
  output s_axi_arready;
  input Q;
  input s_axi_aclk;
  input bus2ip_rnw_i_reg;
  input [0:0]s_axi_wstrb;
  input empty;
  input [4:0]\bus2ip_addr_i_reg[6] ;
  input ip2Bus_WrAck_core_reg_1;
  input almost_full;
  input ip2Bus_WrAck_core_reg_d1;
  input Receive_ip2bus_error_reg_0;
  input bus2ip_rnw_i_reg_0;
  input sw_rst_cond_d1;
  input irpt_wrack_d1;
  input bus2ip_rnw_i_reg_1;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input [5:0]\ip_irpt_enable_reg_reg[8] ;
  input spicr_8_tr_inhibit_frm_axi_clk;
  input p_1_in14_in;
  input p_1_in17_in;
  input p_1_in20_in;
  input p_1_in23_in;
  input p_1_in26_in;
  input p_1_in32_in;
  input \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ;
  input p_1_in35_in;
  input [7:0]dout;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \grdc.rd_data_count_i_reg[0] ;
  input [0:0]wr_data_count;
  input SPISSR_frm_axi_clk;
  input spicr_0_loop_frm_axi_clk;
  input rx_fifo_empty_i;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input spicr_2_mst_n_slv_frm_axi_clk;
  input Tx_FIFO_Full_int;
  input spicr_3_cpol_frm_axi_clk;
  input sr_3_MODF_int;
  input spicr_4_cpha_frm_axi_clk;
  input spisel_d1_reg_to_axi_clk;
  input spicr_5_txfifo_rst_frm_axi_clk;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input ip2Bus_RdAck_core_reg;
  input spicr_7_ss_frm_axi_clk;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input scndry_out;
  input spicr_1_spe_frm_axi_clk;
  input spicr_9_lsb_frm_axi_clk;
  input \gwdc.wr_data_count_i_reg[2] ;
  input [0:0]s_axi_wdata;
  input s_axi_aresetn;
  input p_15_out;
  input is_read_reg;
  input p_16_out;
  input is_write_reg;
  input [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ;

  wire Bus_RNW_reg_i_1_n_0;
  wire [8:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ;
  wire IP2Bus_Error_1;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_5_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_2_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  wire \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ;
  wire \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire \MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire \MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire Q;
  wire Receive_ip2bus_error0;
  wire Receive_ip2bus_error_reg;
  wire Receive_ip2bus_error_reg_0;
  wire SPICR_data_int_reg0;
  wire \SPICR_data_int_reg[0] ;
  wire SPISSR_frm_axi_clk;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire Tx_FIFO_Full_int;
  wire almost_full;
  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire bus2ip_rnw_i_reg_1;
  wire [0:0]bus2ip_wrce_int;
  wire cs_ce_clr;
  wire [7:0]dout;
  wire empty;
  wire eqOp__4;
  wire \grdc.rd_data_count_i_reg[0] ;
  wire \gwdc.wr_data_count_i_reg[2] ;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0;
  wire ip2Bus_WrAck_intr_reg_hole_d1_reg;
  wire [5:0]\ip_irpt_enable_reg_reg[8] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_reg;
  wire is_write_reg;
  wire modf_reg;
  wire p_10_in;
  wire p_10_out;
  wire p_11_in;
  wire p_11_out;
  wire p_12_in;
  wire p_12_out;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_15_out;
  wire p_15_out_0;
  wire p_16_in;
  wire p_16_out;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_out;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_24_in;
  wire p_25_in;
  wire p_26_in;
  wire p_27_in;
  wire p_28_in;
  wire p_29_in;
  wire p_2_in;
  wire p_2_out;
  wire p_30_in;
  wire p_31_in;
  wire p_32_in;
  wire p_3_in;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_in;
  wire p_7_out;
  wire p_8_out;
  wire p_9_in;
  wire p_9_out;
  wire rd_ce_or_reduce_core_cmb;
  wire reset_trig0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [0:0]s_axi_wdata;
  wire s_axi_wready;
  wire [0:0]s_axi_wstrb;
  wire scndry_out;
  wire spicr_0_loop_frm_axi_clk;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_9_lsb_frm_axi_clk;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wr_ce_or_reduce_core_cmb;
  wire [0:0]wr_data_count;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(Q),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(ipif_glbl_irpt_enable_reg_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1 
       (.I0(ip2Bus_WrAck_core_reg_1),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(\SPICR_data_int_reg[0] ),
        .O(SPICR_data_int_reg0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(p_32_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_5_out),
        .Q(p_22_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_4_out),
        .Q(p_21_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out),
        .Q(p_20_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(p_19_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [3]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(p_15_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ),
        .Q(p_13_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_14_out),
        .Q(p_31_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [3]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ),
        .Q(p_12_in),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h00200000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ),
        .Q(p_11_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(p_15_out_0));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_15_out_0),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ),
        .Q(\SPICR_data_int_reg[0] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ),
        .Q(p_7_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ),
        .Q(Receive_ip2bus_error_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_13_out),
        .Q(p_30_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_arready),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2 
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31] ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_12_out),
        .Q(p_29_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_11_out),
        .Q(p_28_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_10_out),
        .Q(p_27_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_9_out),
        .Q(p_26_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_8_out),
        .Q(p_25_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_7_out),
        .Q(p_24_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_6_out),
        .Q(p_23_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFABFF)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(s_axi_wstrb),
        .I2(bus2ip_rnw_i_reg),
        .I3(p_24_in),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_1 
       (.I0(p_22_in),
        .I1(p_24_in),
        .I2(ipif_glbl_irpt_enable_reg),
        .I3(p_25_in),
        .I4(bus2ip_rnw_i_reg_1),
        .I5(ipif_glbl_irpt_enable_reg_reg),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_1 
       (.I0(spicr_9_lsb_frm_axi_clk),
        .I1(\SPICR_data_int_reg[0] ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ),
        .I1(\ip_irpt_enable_reg_reg[8] [5]),
        .I2(spicr_8_tr_inhibit_frm_axi_clk),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0 ),
        .I4(p_1_in14_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBBBFFFFF)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2 
       (.I0(p_24_in),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(s_axi_wstrb),
        .I3(bus2ip_rnw_i_reg),
        .I4(p_22_in),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\SPICR_data_int_reg[0] ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_4 
       (.I0(p_24_in),
        .I1(bus2ip_rnw_i_reg),
        .I2(s_axi_wstrb),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ),
        .I1(\ip_irpt_enable_reg_reg[8] [4]),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .I3(p_1_in17_in),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF888000088880000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2 
       (.I0(\SPICR_data_int_reg[0] ),
        .I1(spicr_7_ss_frm_axi_clk),
        .I2(ip2Bus_RdAck_core_reg),
        .I3(Receive_ip2bus_error_reg),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .I5(dout[7]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ),
        .I1(\ip_irpt_enable_reg_reg[8] [3]),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0 ),
        .I3(p_1_in20_in),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF888000088880000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2 
       (.I0(\SPICR_data_int_reg[0] ),
        .I1(spicr_6_rxfifo_rst_frm_axi_clk),
        .I2(ip2Bus_RdAck_core_reg),
        .I3(Receive_ip2bus_error_reg),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .I5(dout[6]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ),
        .I1(\ip_irpt_enable_reg_reg[8] [2]),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ),
        .I3(p_1_in23_in),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(dout[5]),
        .I2(spisel_d1_reg_to_axi_clk),
        .I3(modf_reg),
        .I4(spicr_5_txfifo_rst_frm_axi_clk),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3 
       (.I0(ip2Bus_RdAck_core_reg),
        .I1(Receive_ip2bus_error_reg),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ),
        .I1(\ip_irpt_enable_reg_reg[8] [1]),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ),
        .I3(p_1_in26_in),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(dout[4]),
        .I2(sr_3_MODF_int),
        .I3(modf_reg),
        .I4(spicr_4_cpha_frm_axi_clk),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(dout[3]),
        .I2(Tx_FIFO_Full_int),
        .I3(modf_reg),
        .I4(spicr_3_cpol_frm_axi_clk),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_6 
       (.I0(empty),
        .I1(p_2_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4FFF4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .I1(p_1_in32_in),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ),
        .I3(\ip_irpt_enable_reg_reg[8] [0]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ),
        .I5(\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(dout[2]),
        .I2(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .I3(modf_reg),
        .I4(spicr_2_mst_n_slv_frm_axi_clk),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_3_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .I1(p_1_in35_in),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_5_n_0 ),
        .I3(dout[1]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_3 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(p_3_in),
        .I2(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .I3(\gwdc.wr_data_count_i_reg[2] ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_5 
       (.I0(p_7_in),
        .I1(scndry_out),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(\SPICR_data_int_reg[0] ),
        .I4(spicr_1_spe_frm_axi_clk),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .I3(\grdc.rd_data_count_i_reg[0] ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ),
        .I5(wr_data_count),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4F4F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(dout[0]),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0 ),
        .I3(SPISSR_frm_axi_clk),
        .I4(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ),
        .I5(ipif_glbl_irpt_enable_reg_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF080F080F0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4 
       (.I0(\SPICR_data_int_reg[0] ),
        .I1(spicr_0_loop_frm_axi_clk),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(p_7_in),
        .I4(rx_fifo_empty_i),
        .I5(empty),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_1 
       (.I0(Receive_ip2bus_error_reg_0),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(p_16_in),
        .I3(bus2ip_rnw_i_reg_0),
        .O(IP2Bus_Error_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_2 
       (.I0(bus2ip_rnw_i_reg_0),
        .I1(p_16_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ));
  LUT6 #(
    .INIT(64'h00FF00F200FF00FF)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ),
        .I1(almost_full),
        .I2(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\SPICR_data_int_reg[0] ),
        .I5(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .O(wr_ce_or_reduce_core_cmb));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2 
       (.I0(Receive_ip2bus_error_reg),
        .I1(p_13_in),
        .I2(p_2_in),
        .I3(p_14_in),
        .I4(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ),
        .I5(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3 
       (.I0(p_9_in),
        .I1(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31] ),
        .I2(p_15_in),
        .I3(p_11_in),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4 
       (.I0(p_12_in),
        .I1(p_10_in),
        .I2(p_7_in),
        .I3(p_3_in),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1155115111551155)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_1 
       (.I0(ip2Bus_WrAck_core_reg_d1),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_2_n_0 ),
        .I2(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\SPICR_data_int_reg[0] ),
        .I5(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_2 
       (.I0(almost_full),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_i_1 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ),
        .I2(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ),
        .I3(p_16_in),
        .I4(\SPICR_data_int_reg[0] ),
        .I5(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .O(rd_ce_or_reduce_core_cmb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized0 \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_5_out(p_5_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_4_out(p_4_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12 \MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_3_out(p_3_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13 \MEM_DECODE_GEN[0].PER_CE_GEN[13].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_2_out(p_2_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14 \MEM_DECODE_GEN[0].PER_CE_GEN[14].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_1_out(p_1_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_14_out(p_14_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized2 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_13_out(p_13_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized3 \MEM_DECODE_GEN[0].PER_CE_GEN[3].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_12_out(p_12_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized4 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_11_out(p_11_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_10_out(p_10_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_9_out(p_9_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_8_out(p_8_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_7_out(p_7_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_6_out(p_6_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19 \MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] (\MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23 \MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] (\MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17 \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] (\MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18 \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] (\MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    Receive_ip2bus_error_i_1
       (.I0(Receive_ip2bus_error_reg),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(empty),
        .I3(rx_fifo_empty_i),
        .O(Receive_ip2bus_error0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1 
       (.I0(\SPICR_data_int_reg[0] ),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .O(bus2ip_wrce_int));
  LUT6 #(
    .INIT(64'h0050005000500040)) 
    intr2bus_rdack_i_1
       (.I0(irpt_rdack_d1),
        .I1(p_24_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(bus2ip_rnw_i_reg_1),
        .I4(p_22_in),
        .I5(p_25_in),
        .O(intr2bus_rdack0));
  LUT6 #(
    .INIT(64'h0000050500000504)) 
    intr2bus_wrack_i_1
       (.I0(irpt_wrack_d1),
        .I1(p_22_in),
        .I2(bus2ip_rnw_i_reg_1),
        .I3(p_24_in),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .I5(p_25_in),
        .O(interrupt_wrce_strb));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2Bus_RdAck_intr_reg_hole_d1_i_1
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .O(intr_controller_rd_ce_or_reduce));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ip2Bus_RdAck_intr_reg_hole_i_1
       (.I0(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(ip2Bus_RdAck_intr_reg_hole_d1),
        .O(ip2Bus_RdAck_intr_reg_hole0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_1
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_reg));
  LUT5 #(
    .INIT(32'h00000002)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_2
       (.I0(ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0),
        .I2(p_19_in),
        .I3(p_32_in),
        .I4(p_17_in),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_3
       (.I0(p_31_in),
        .I1(p_26_in),
        .I2(p_20_in),
        .I3(p_28_in),
        .I4(p_27_in),
        .I5(p_30_in),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_4
       (.I0(p_29_in),
        .I1(p_23_in),
        .I2(p_21_in),
        .I3(p_18_in),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ip2Bus_WrAck_intr_reg_hole_i_1
       (.I0(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(ip2Bus_WrAck_intr_reg_hole_d1),
        .O(ip2Bus_WrAck_intr_reg_hole0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \ip_irpt_enable_reg[8]_i_1 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(p_22_in),
        .I2(bus2ip_rnw_i_reg),
        .I3(s_axi_wstrb),
        .O(E));
  LUT6 #(
    .INIT(64'hEFEFEFFF20202000)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(p_25_in),
        .I3(bus2ip_rnw_i_reg),
        .I4(s_axi_wstrb),
        .I5(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg_0));
  LUT6 #(
    .INIT(64'hCCC0CCC0CCC08880)) 
    irpt_rdack_d1_i_1
       (.I0(p_24_in),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(s_axi_wstrb),
        .I3(bus2ip_rnw_i_reg),
        .I4(p_22_in),
        .I5(p_25_in),
        .O(irpt_rdack));
  LUT6 #(
    .INIT(64'h0000FCFC0000FCA8)) 
    irpt_wrack_d1_i_1
       (.I0(p_22_in),
        .I1(s_axi_wstrb),
        .I2(bus2ip_rnw_i_reg),
        .I3(p_24_in),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .I5(p_25_in),
        .O(irpt_wrack));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    modf_i_2
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(p_7_in),
        .O(modf_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    reset_trig_i_1
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(p_16_in),
        .I2(bus2ip_rnw_i_reg_0),
        .I3(sw_rst_cond_d1),
        .O(reset_trig0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_arready_INST_0
       (.I0(p_15_out),
        .I1(is_read_reg),
        .I2(eqOp__4),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_wready_INST_0
       (.I0(p_16_out),
        .I1(is_write_reg),
        .I2(eqOp__4),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    s_axi_wready_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [5]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [3]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [0]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [2]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [4]),
        .O(eqOp__4));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sw_rst_cond_d1_i_1
       (.I0(bus2ip_rnw_i_reg_0),
        .I1(p_16_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(sw_rst_cond));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg
   (wr_data_count,
    almost_full,
    dout,
    empty,
    IP2Bus_WrAck_transmit_enable,
    D,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    \OTHER_RATIO_GENERATE.Serial_Dout_reg ,
    rst,
    s_axi_aclk,
    s_axi_wdata,
    ext_spi_clk,
    rd_en,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    Bus_RNW_reg_reg,
    \grdc.rd_data_count_i_reg[1] ,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    Bus_RNW_reg,
    p_6_in,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    p_3_in,
    \grdc.rd_data_count_i_reg[4] ,
    \gen_fwft.empty_fwft_i_reg ,
    spicr_9_lsb_to_spi_clk);
  output [0:0]wr_data_count;
  output almost_full;
  output [7:0]dout;
  output empty;
  output IP2Bus_WrAck_transmit_enable;
  output [0:0]D;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  output \OTHER_RATIO_GENERATE.Serial_Dout_reg ;
  input rst;
  input s_axi_aclk;
  input [7:0]s_axi_wdata;
  input ext_spi_clk;
  input rd_en;
  input \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  input Bus_RNW_reg_reg;
  input \grdc.rd_data_count_i_reg[1] ;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input Bus_RNW_reg;
  input p_6_in;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input p_3_in;
  input \grdc.rd_data_count_i_reg[4] ;
  input \gen_fwft.empty_fwft_i_reg ;
  input spicr_9_lsb_to_spi_clk;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [0:0]D;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire IP2Bus_WrAck_transmit_enable;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_reg ;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire almost_full;
  wire [7:0]dout;
  wire empty;
  wire ext_spi_clk;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \grdc.rd_data_count_i_reg[1] ;
  wire \grdc.rd_data_count_i_reg[4] ;
  wire p_3_in;
  wire p_6_in;
  wire rd_en;
  wire rst;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire spicr_9_lsb_to_spi_clk;
  wire [0:0]wr_data_count;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async \xpm_fifo_instance.xpm_fifo_async_inst 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .IP2Bus_WrAck_transmit_enable(IP2Bus_WrAck_transmit_enable),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .\OTHER_RATIO_GENERATE.Serial_Dout_reg (\OTHER_RATIO_GENERATE.Serial_Dout_reg ),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .almost_full(almost_full),
        .dout(dout),
        .empty(empty),
        .ext_spi_clk(ext_spi_clk),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .\grdc.rd_data_count_i_reg[1] (\grdc.rd_data_count_i_reg[1] ),
        .\grdc.rd_data_count_i_reg[4] (\grdc.rd_data_count_i_reg[4] ),
        .p_3_in(p_3_in),
        .p_6_in(p_6_in),
        .rd_en(rd_en),
        .rst(rst),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .spicr_9_lsb_to_spi_clk(spicr_9_lsb_to_spi_clk),
        .wr_data_count(wr_data_count));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg__xdcDup__1
   (almost_full,
    dout,
    empty,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    Rx_FIFO_Full_Fifo,
    rst,
    ext_spi_clk,
    spiXfer_done_int,
    Q,
    s_axi_aclk,
    Bus_RNW_reg,
    p_5_in,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ,
    \gen_fwft.empty_fwft_i_reg ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \ip_irpt_enable_reg_reg[3] ,
    scndry_out);
  output almost_full;
  output [7:0]dout;
  output empty;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  output Rx_FIFO_Full_Fifo;
  input rst;
  input ext_spi_clk;
  input spiXfer_done_int;
  input [7:0]Q;
  input s_axi_aclk;
  input Bus_RNW_reg;
  input p_5_in;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  input \gen_fwft.empty_fwft_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  input [2:0]\ip_irpt_enable_reg_reg[3] ;
  input scndry_out;

  wire Bus_RNW_reg;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  wire [7:0]Q;
  wire Rx_FIFO_Full_Fifo;
  wire almost_full;
  wire [7:0]dout;
  wire empty;
  wire ext_spi_clk;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire [2:0]\ip_irpt_enable_reg_reg[3] ;
  wire p_5_in;
  wire rst;
  wire s_axi_aclk;
  wire scndry_out;
  wire spiXfer_done_int;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__xdcDup__1 \xpm_fifo_instance.xpm_fifo_async_inst 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ),
        .Q(Q),
        .Rx_FIFO_Full_Fifo(Rx_FIFO_Full_Fifo),
        .almost_full(almost_full),
        .dout(dout),
        .empty(empty),
        .ext_spi_clk(ext_spi_clk),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .\ip_irpt_enable_reg_reg[3] (\ip_irpt_enable_reg_reg[3] ),
        .p_5_in(p_5_in),
        .rst(rst),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .spiXfer_done_int(spiXfer_done_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (bus2ip_reset_ipif_inverted,
    p_3_in,
    p_4_in,
    p_5_in,
    p_6_in,
    p_8_in,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ,
    E,
    ip2Bus_WrAck_intr_reg_hole_d1_reg,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    SPICR_data_int_reg0,
    wr_ce_or_reduce_core_cmb,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ,
    bus2ip_wrce_int,
    IP2Bus_Error_1,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    reset_trig0,
    sw_rst_cond,
    irpt_wrack,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    Receive_ip2bus_error0,
    modf_reg,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_controller_rd_ce_or_reduce,
    rd_ce_or_reduce_core_cmb,
    s_axi_arready,
    s_axi_wready,
    ipif_glbl_irpt_enable_reg_reg,
    s_axi_rdata,
    s_axi_aclk,
    p_1_in,
    s_axi_arvalid,
    s_axi_wstrb,
    empty,
    ip2Bus_WrAck_core_reg_1,
    almost_full,
    ip2Bus_WrAck_core_reg_d1,
    Receive_ip2bus_error_reg,
    sw_rst_cond_d1,
    s_axi_wdata,
    irpt_wrack_d1,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    Q,
    spicr_8_tr_inhibit_frm_axi_clk,
    p_1_in14_in,
    p_1_in17_in,
    p_1_in20_in,
    p_1_in23_in,
    p_1_in26_in,
    p_1_in32_in,
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ,
    p_1_in35_in,
    dout,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \grdc.rd_data_count_i_reg[0] ,
    wr_data_count,
    SPISSR_frm_axi_clk,
    spicr_0_loop_frm_axi_clk,
    rx_fifo_empty_i,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    spicr_2_mst_n_slv_frm_axi_clk,
    Tx_FIFO_Full_int,
    spicr_3_cpol_frm_axi_clk,
    sr_3_MODF_int,
    spicr_4_cpha_frm_axi_clk,
    spisel_d1_reg_to_axi_clk,
    spicr_5_txfifo_rst_frm_axi_clk,
    spicr_6_rxfifo_rst_frm_axi_clk,
    ip2Bus_RdAck_core_reg,
    spicr_7_ss_frm_axi_clk,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    scndry_out,
    spicr_1_spe_frm_axi_clk,
    spicr_9_lsb_frm_axi_clk,
    \gwdc.wr_data_count_i_reg[2] ,
    s_axi_rready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ,
    s_axi_aresetn,
    p_15_out,
    p_16_out,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset_ipif_inverted;
  output p_3_in;
  output p_4_in;
  output p_5_in;
  output p_6_in;
  output p_8_in;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ;
  output [0:0]E;
  output ip2Bus_WrAck_intr_reg_hole_d1_reg;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  output SPICR_data_int_reg0;
  output wr_ce_or_reduce_core_cmb;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  output [0:0]bus2ip_wrce_int;
  output IP2Bus_Error_1;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output reset_trig0;
  output sw_rst_cond;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output [8:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  output Receive_ip2bus_error0;
  output modf_reg;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_controller_rd_ce_or_reduce;
  output rd_ce_or_reduce_core_cmb;
  output s_axi_arready;
  output s_axi_wready;
  output ipif_glbl_irpt_enable_reg_reg;
  output [10:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]p_1_in;
  input s_axi_arvalid;
  input [1:0]s_axi_wstrb;
  input empty;
  input ip2Bus_WrAck_core_reg_1;
  input almost_full;
  input ip2Bus_WrAck_core_reg_d1;
  input Receive_ip2bus_error_reg;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input irpt_wrack_d1;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input [5:0]Q;
  input spicr_8_tr_inhibit_frm_axi_clk;
  input p_1_in14_in;
  input p_1_in17_in;
  input p_1_in20_in;
  input p_1_in23_in;
  input p_1_in26_in;
  input p_1_in32_in;
  input \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ;
  input p_1_in35_in;
  input [7:0]dout;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \grdc.rd_data_count_i_reg[0] ;
  input [0:0]wr_data_count;
  input SPISSR_frm_axi_clk;
  input spicr_0_loop_frm_axi_clk;
  input rx_fifo_empty_i;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input spicr_2_mst_n_slv_frm_axi_clk;
  input Tx_FIFO_Full_int;
  input spicr_3_cpol_frm_axi_clk;
  input sr_3_MODF_int;
  input spicr_4_cpha_frm_axi_clk;
  input spisel_d1_reg_to_axi_clk;
  input spicr_5_txfifo_rst_frm_axi_clk;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input ip2Bus_RdAck_core_reg;
  input spicr_7_ss_frm_axi_clk;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input scndry_out;
  input spicr_1_spe_frm_axi_clk;
  input spicr_9_lsb_frm_axi_clk;
  input \gwdc.wr_data_count_i_reg[2] ;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [10:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ;
  input s_axi_aresetn;
  input p_15_out;
  input p_16_out;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire [8:0]D;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire IP2Bus_Error_1;
  wire [10:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  wire \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ;
  wire [5:0]Q;
  wire Receive_ip2bus_error0;
  wire Receive_ip2bus_error_reg;
  wire SPICR_data_int_reg0;
  wire SPISSR_frm_axi_clk;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire Tx_FIFO_Full_int;
  wire almost_full;
  wire bus2ip_reset_ipif_inverted;
  wire [0:0]bus2ip_wrce_int;
  wire [7:0]dout;
  wire empty;
  wire \grdc.rd_data_count_i_reg[0] ;
  wire \gwdc.wr_data_count_i_reg[2] ;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire modf_reg;
  wire p_15_out;
  wire p_16_out;
  wire [0:0]p_1_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_8_in;
  wire rd_ce_or_reduce_core_cmb;
  wire reset_trig0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire s_axi_wready;
  wire [1:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire scndry_out;
  wire spicr_0_loop_frm_axi_clk;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_9_lsb_frm_axi_clk;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wr_ce_or_reduce_core_cmb;
  wire [0:0]wr_data_count;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg (p_4_in),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 (p_6_in),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ),
        .\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 (\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ),
        .Q(Q),
        .Receive_ip2bus_error0(Receive_ip2bus_error0),
        .Receive_ip2bus_error_reg(p_5_in),
        .Receive_ip2bus_error_reg_0(Receive_ip2bus_error_reg),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .\SPICR_data_int_reg[0] (p_8_in),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .SR(bus2ip_reset_ipif_inverted),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .Tx_FIFO_Full_int(Tx_FIFO_Full_int),
        .almost_full(almost_full),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .dout(dout),
        .empty(empty),
        .\grdc.rd_data_count_i_reg[0] (\grdc.rd_data_count_i_reg[0] ),
        .\gwdc.wr_data_count_i_reg[2] (\gwdc.wr_data_count_i_reg[2] ),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1_reg(ip2Bus_WrAck_intr_reg_hole_d1_reg),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(Bus_RNW_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .modf_reg(modf_reg),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_1_in(p_1_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_3_in(p_3_in),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(reset_trig0),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .scndry_out(scndry_out),
        .spicr_0_loop_frm_axi_clk(spicr_0_loop_frm_axi_clk),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_5_txfifo_rst_frm_axi_clk(spicr_5_txfifo_rst_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spicr_9_lsb_frm_axi_clk(spicr_9_lsb_frm_axi_clk),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wr_ce_or_reduce_core_cmb(wr_ce_or_reduce_core_cmb),
        .wr_data_count(wr_data_count));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized0
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h00000001)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized1
   (p_14_out,
    \bus2ip_addr_i_reg[6] );
  output p_14_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_14_out;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(p_14_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10
   (p_5_out,
    \bus2ip_addr_i_reg[6] );
  output p_5_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_5_out;

  LUT5 #(
    .INIT(32'h00040000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(p_5_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11
   (p_4_out,
    \bus2ip_addr_i_reg[6] );
  output p_4_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_4_out;

  LUT5 #(
    .INIT(32'h00004000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(p_4_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12
   (p_3_out,
    \bus2ip_addr_i_reg[6] );
  output p_3_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_3_out;

  LUT5 #(
    .INIT(32'h00040000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(p_3_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13
   (p_2_out,
    \bus2ip_addr_i_reg[6] );
  output p_2_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_2_out;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(p_2_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14
   (p_1_out,
    \bus2ip_addr_i_reg[6] );
  output p_1_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_1_out;

  LUT5 #(
    .INIT(32'h04000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(p_1_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19
   (\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h00100000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17
   (\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized2
   (p_13_out,
    \bus2ip_addr_i_reg[6] );
  output p_13_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_13_out;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [0]),
        .O(p_13_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23
   (\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h02000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [0]),
        .I2(\bus2ip_addr_i_reg[6] [3]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18
   (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h20000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [0]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized3
   (p_12_out,
    \bus2ip_addr_i_reg[6] );
  output p_12_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_12_out;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(p_12_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized4
   (p_11_out,
    \bus2ip_addr_i_reg[6] );
  output p_11_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_11_out;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [0]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(p_11_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5
   (p_10_out,
    \bus2ip_addr_i_reg[6] );
  output p_10_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_10_out;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [1]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(p_10_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6
   (p_9_out,
    \bus2ip_addr_i_reg[6] );
  output p_9_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_9_out;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(p_9_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7
   (p_8_out,
    \bus2ip_addr_i_reg[6] );
  output p_8_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_8_out;

  LUT5 #(
    .INIT(32'h00400000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(p_8_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8
   (p_7_out,
    \bus2ip_addr_i_reg[6] );
  output p_7_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_7_out;

  LUT5 #(
    .INIT(32'h00000010)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [3]),
        .I3(\bus2ip_addr_i_reg[6] [1]),
        .I4(\bus2ip_addr_i_reg[6] [0]),
        .O(p_7_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9
   (p_6_out,
    \bus2ip_addr_i_reg[6] );
  output p_6_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_6_out;

  LUT5 #(
    .INIT(32'h00100000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [1]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(p_6_out));
endmodule

(* Async_Clk = "0" *) (* C_DUAL_QUAD_MODE = "0" *) (* C_FAMILY = "zynq" *) 
(* C_FIFO_DEPTH = "16" *) (* C_INSTANCE = "axi_quad_spi_inst" *) (* C_LSB_STUP = "0" *) 
(* C_NUM_SS_BITS = "1" *) (* C_NUM_TRANSFER_BITS = "8" *) (* C_SCK_RATIO = "16" *) 
(* C_SELECT_XPM = "1" *) (* C_SHARED_STARTUP = "0" *) (* C_SPI_MEMORY = "1" *) 
(* C_SPI_MEM_ADDR_BITS = "24" *) (* C_SPI_MODE = "0" *) (* C_SUB_FAMILY = "zynq" *) 
(* C_S_AXI4_ADDR_WIDTH = "24" *) (* C_S_AXI4_BASEADDR = "-1" *) (* C_S_AXI4_DATA_WIDTH = "32" *) 
(* C_S_AXI4_HIGHADDR = "0" *) (* C_S_AXI4_ID_WIDTH = "1" *) (* C_S_AXI_ADDR_WIDTH = "7" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TYPE_OF_AXI4_INTERFACE = "0" *) (* C_UC_FAMILY = "0" *) 
(* C_USE_STARTUP = "0" *) (* C_USE_STARTUP_EXT = "0" *) (* C_XIP_MODE = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi4_aclk,
    s_axi4_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_awid,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bid,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    io2_i,
    io2_o,
    io2_t,
    io3_i,
    io3_o,
    io3_t,
    io0_1_i,
    io0_1_o,
    io0_1_t,
    io1_1_i,
    io1_1_o,
    io1_1_t,
    io2_1_i,
    io2_1_o,
    io2_1_t,
    io3_1_i,
    io3_1_o,
    io3_1_t,
    spisel,
    sck_i,
    sck_o,
    sck_t,
    ss_i,
    ss_o,
    ss_t,
    ss_1_i,
    ss_1_o,
    ss_1_t,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    clk,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    pack,
    ip2intc_irpt);
  (* max_fanout = "10000" *) input ext_spi_clk;
  (* max_fanout = "10000" *) input s_axi_aclk;
  (* max_fanout = "10000" *) input s_axi_aresetn;
  (* max_fanout = "10000" *) input s_axi4_aclk;
  (* max_fanout = "10000" *) input s_axi4_aresetn;
  input [6:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [0:0]s_axi4_awid;
  input [23:0]s_axi4_awaddr;
  input [7:0]s_axi4_awlen;
  input [2:0]s_axi4_awsize;
  input [1:0]s_axi4_awburst;
  input s_axi4_awlock;
  input [3:0]s_axi4_awcache;
  input [2:0]s_axi4_awprot;
  input s_axi4_awvalid;
  output s_axi4_awready;
  input [31:0]s_axi4_wdata;
  input [3:0]s_axi4_wstrb;
  input s_axi4_wlast;
  input s_axi4_wvalid;
  output s_axi4_wready;
  output [0:0]s_axi4_bid;
  output [1:0]s_axi4_bresp;
  output s_axi4_bvalid;
  input s_axi4_bready;
  input [0:0]s_axi4_arid;
  input [23:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input [2:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input s_axi4_arlock;
  input [3:0]s_axi4_arcache;
  input [2:0]s_axi4_arprot;
  input s_axi4_arvalid;
  output s_axi4_arready;
  output [0:0]s_axi4_rid;
  output [31:0]s_axi4_rdata;
  output [1:0]s_axi4_rresp;
  output s_axi4_rlast;
  output s_axi4_rvalid;
  input s_axi4_rready;
  input io0_i;
  output io0_o;
  output io0_t;
  input io1_i;
  output io1_o;
  output io1_t;
  input io2_i;
  output io2_o;
  output io2_t;
  input io3_i;
  output io3_o;
  output io3_t;
  input io0_1_i;
  output io0_1_o;
  output io0_1_t;
  input io1_1_i;
  output io1_1_o;
  output io1_1_t;
  input io2_1_i;
  output io2_1_o;
  output io2_1_t;
  input io3_1_i;
  output io3_1_o;
  output io3_1_t;
  (* initialval = "VCC" *) input spisel;
  input sck_i;
  output sck_o;
  output sck_t;
  input [0:0]ss_i;
  output [0:0]ss_o;
  output ss_t;
  input ss_1_i;
  output ss_1_o;
  output ss_1_t;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  input clk;
  input gsr;
  input gts;
  input keyclearb;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input pack;
  output ip2intc_irpt;

  wire \<const0> ;
  wire \<const1> ;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire ext_spi_clk;
  wire io0_i;
  wire io0_t;
  wire io1_i;
  wire io1_o;
  wire io1_t;
  wire ip2intc_irpt;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi4_aclk;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi4_aresetn;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire spisel;
  wire [0:0]ss_o;
  wire ss_t;

  assign cfgclk = \<const0> ;
  assign cfgmclk = \<const0> ;
  assign eos = \<const0> ;
  assign io0_1_o = \<const0> ;
  assign io0_1_t = \<const0> ;
  assign io0_o = io1_o;
  assign io1_1_o = \<const0> ;
  assign io1_1_t = \<const0> ;
  assign io2_1_o = \<const0> ;
  assign io2_1_t = \<const0> ;
  assign io2_o = \<const0> ;
  assign io2_t = \<const1> ;
  assign io3_1_o = \<const0> ;
  assign io3_1_t = \<const0> ;
  assign io3_o = \<const0> ;
  assign io3_t = \<const1> ;
  assign preq = \<const0> ;
  assign s_axi4_arready = \<const0> ;
  assign s_axi4_awready = \<const0> ;
  assign s_axi4_bid[0] = \<const0> ;
  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_bvalid = \<const0> ;
  assign s_axi4_rdata[31] = \<const0> ;
  assign s_axi4_rdata[30] = \<const0> ;
  assign s_axi4_rdata[29] = \<const0> ;
  assign s_axi4_rdata[28] = \<const0> ;
  assign s_axi4_rdata[27] = \<const0> ;
  assign s_axi4_rdata[26] = \<const0> ;
  assign s_axi4_rdata[25] = \<const0> ;
  assign s_axi4_rdata[24] = \<const0> ;
  assign s_axi4_rdata[23] = \<const0> ;
  assign s_axi4_rdata[22] = \<const0> ;
  assign s_axi4_rdata[21] = \<const0> ;
  assign s_axi4_rdata[20] = \<const0> ;
  assign s_axi4_rdata[19] = \<const0> ;
  assign s_axi4_rdata[18] = \<const0> ;
  assign s_axi4_rdata[17] = \<const0> ;
  assign s_axi4_rdata[16] = \<const0> ;
  assign s_axi4_rdata[15] = \<const0> ;
  assign s_axi4_rdata[14] = \<const0> ;
  assign s_axi4_rdata[13] = \<const0> ;
  assign s_axi4_rdata[12] = \<const0> ;
  assign s_axi4_rdata[11] = \<const0> ;
  assign s_axi4_rdata[10] = \<const0> ;
  assign s_axi4_rdata[9] = \<const0> ;
  assign s_axi4_rdata[8] = \<const0> ;
  assign s_axi4_rdata[7] = \<const0> ;
  assign s_axi4_rdata[6] = \<const0> ;
  assign s_axi4_rdata[5] = \<const0> ;
  assign s_axi4_rdata[4] = \<const0> ;
  assign s_axi4_rdata[3] = \<const0> ;
  assign s_axi4_rdata[2] = \<const0> ;
  assign s_axi4_rdata[1] = \<const0> ;
  assign s_axi4_rdata[0] = \<const0> ;
  assign s_axi4_rid[0] = \<const0> ;
  assign s_axi4_rlast = \<const0> ;
  assign s_axi4_rresp[1] = \<const0> ;
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi4_rvalid = \<const0> ;
  assign s_axi4_wready = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9:0] = \^s_axi_rdata [9:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign ss_1_o = \<const0> ;
  assign ss_1_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi_top \NO_DUAL_QUAD_MODE.QSPI_NORMAL 
       (.ext_spi_clk(ext_spi_clk),
        .io0_i(io0_i),
        .io0_t(io0_t),
        .io1_i(io1_i),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_aresetn(s_axi4_aresetn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[6:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[6:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [9:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[9:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({s_axi_wstrb[3],s_axi_wstrb[0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .spisel(spisel),
        .ss_o(ss_o),
        .ss_t(ss_t));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi_top
   (sck_t,
    io0_t,
    ss_t,
    io1_t,
    sck_o,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_wready,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_rvalid,
    ip2intc_irpt,
    io1_o,
    s_axi_bresp,
    ss_o,
    s_axi_aclk,
    s_axi_wstrb,
    ext_spi_clk,
    s_axi_wdata,
    spisel,
    sck_i,
    io0_i,
    io1_i,
    s_axi4_aclk,
    s_axi4_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr);
  output sck_t;
  output io0_t;
  output ss_t;
  output io1_t;
  output sck_o;
  output [10:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output s_axi_wready;
  output s_axi_arready;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output ip2intc_irpt;
  output io1_o;
  output [0:0]s_axi_bresp;
  output [0:0]ss_o;
  input s_axi_aclk;
  input [1:0]s_axi_wstrb;
  input ext_spi_clk;
  input [10:0]s_axi_wdata;
  input spisel;
  input sck_i;
  input io0_i;
  input io1_i;
  input s_axi4_aclk;
  input s_axi4_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;

  wire \CONTROL_REG_I/SPICR_data_int_reg0 ;
  wire \FIFO_EXISTS.FIFO_IF_MODULE_I/Receive_ip2bus_error0 ;
  wire \INTERRUPT_CONTROL_I/interrupt_wrce_strb ;
  wire \INTERRUPT_CONTROL_I/intr2bus_rdack0 ;
  wire \INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg ;
  wire \INTERRUPT_CONTROL_I/irpt_rdack ;
  wire \INTERRUPT_CONTROL_I/irpt_rdack_d1 ;
  wire \INTERRUPT_CONTROL_I/irpt_wrack ;
  wire \INTERRUPT_CONTROL_I/irpt_wrack_d1 ;
  wire \INTERRUPT_CONTROL_I/p_0_in10_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in13_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in16_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in19_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in1_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in7_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in14_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in17_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in20_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in23_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in26_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in32_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in35_in ;
  wire [0:31]IP2Bus_Data;
  wire IP2Bus_Error_1;
  wire [0:0]IP2Bus_SPICR_Data_int;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_3_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_13 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_14 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_17 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_25 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_37 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_38 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_39 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_41 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_42 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_49 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_22 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_31 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_40 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_57 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_58 ;
  wire Rx_FIFO_Empty;
  wire Rx_FIFO_Full_Fifo_d1_synced;
  wire \SOFT_RESET_I/reset_trig0 ;
  wire \SOFT_RESET_I/sw_rst_cond ;
  wire \SOFT_RESET_I/sw_rst_cond_d1 ;
  wire SPISSR_frm_axi_clk;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire Tx_FIFO_Full_int;
  wire [0:0]Tx_FIFO_occ_Reversed;
  wire bus2ip_reset_ipif_inverted;
  wire [7:7]bus2ip_wrce_int;
  wire [0:7]data_from_rx_fifo;
  wire ext_spi_clk;
  wire intr_controller_rd_ce_or_reduce;
  wire [0:0]intr_ip2bus_data;
  wire io0_i;
  wire io0_i_sync;
  wire io0_t;
  wire io1_i;
  wire io1_i_sync;
  wire io1_o;
  wire io1_t;
  wire [23:31]ip2Bus_Data_1;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2intc_irpt;
  wire p_15_out;
  wire p_16_out;
  wire [1:1]p_1_in;
  wire rd_ce_or_reduce_core_cmb;
  wire rx_fifo_empty_i;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi4_aclk;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi4_aresetn;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wready;
  wire [1:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire spicr_0_loop_frm_axi_clk;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_9_lsb_frm_axi_clk;
  wire spisel;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire [0:0]ss_o;
  wire ss_t;
  wire wr_ce_or_reduce_core_cmb;

  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO0_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io0_i),
        .Q(io0_i_sync),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO1_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io1_i),
        .Q(io1_i_sync),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({intr_ip2bus_data,IP2Bus_SPICR_Data_int,ip2Bus_Data_1[23],ip2Bus_Data_1[24],ip2Bus_Data_1[25],ip2Bus_Data_1[26],ip2Bus_Data_1[27],ip2Bus_Data_1[29],ip2Bus_Data_1[31]}),
        .E(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_31 ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_25 ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ({IP2Bus_Data[0],IP2Bus_Data[22],IP2Bus_Data[23],IP2Bus_Data[24],IP2Bus_Data[25],IP2Bus_Data[26],IP2Bus_Data[27],IP2Bus_Data[28],IP2Bus_Data[29],IP2Bus_Data[30],IP2Bus_Data[31]}),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_37 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_42 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_14 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_38 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_39 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_17 ),
        .\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_57 ),
        .Q({\INTERRUPT_CONTROL_I/p_0_in19_in ,\INTERRUPT_CONTROL_I/p_0_in16_in ,\INTERRUPT_CONTROL_I/p_0_in13_in ,\INTERRUPT_CONTROL_I/p_0_in10_in ,\INTERRUPT_CONTROL_I/p_0_in7_in ,\INTERRUPT_CONTROL_I/p_0_in1_in }),
        .Receive_ip2bus_error0(\FIFO_EXISTS.FIFO_IF_MODULE_I/Receive_ip2bus_error0 ),
        .Receive_ip2bus_error_reg(\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_40 ),
        .SPICR_data_int_reg0(\CONTROL_REG_I/SPICR_data_int_reg0 ),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .Tx_FIFO_Full_int(Tx_FIFO_Full_int),
        .almost_full(\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_22 ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .dout({data_from_rx_fifo[0],data_from_rx_fifo[1],data_from_rx_fifo[2],data_from_rx_fifo[3],data_from_rx_fifo[4],data_from_rx_fifo[5],data_from_rx_fifo[6],data_from_rx_fifo[7]}),
        .empty(Rx_FIFO_Empty),
        .\grdc.rd_data_count_i_reg[0] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 ),
        .\gwdc.wr_data_count_i_reg[2] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_58 ),
        .interrupt_wrce_strb(\INTERRUPT_CONTROL_I/interrupt_wrce_strb ),
        .intr2bus_rdack0(\INTERRUPT_CONTROL_I/intr2bus_rdack0 ),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_13 ),
        .ipif_glbl_irpt_enable_reg(\INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg ),
        .ipif_glbl_irpt_enable_reg_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_49 ),
        .irpt_rdack(\INTERRUPT_CONTROL_I/irpt_rdack ),
        .irpt_rdack_d1(\INTERRUPT_CONTROL_I/irpt_rdack_d1 ),
        .irpt_wrack(\INTERRUPT_CONTROL_I/irpt_wrack ),
        .irpt_wrack_d1(\INTERRUPT_CONTROL_I/irpt_wrack_d1 ),
        .modf_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_41 ),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_1_in(p_1_in),
        .p_1_in14_in(\INTERRUPT_CONTROL_I/p_1_in14_in ),
        .p_1_in17_in(\INTERRUPT_CONTROL_I/p_1_in17_in ),
        .p_1_in20_in(\INTERRUPT_CONTROL_I/p_1_in20_in ),
        .p_1_in23_in(\INTERRUPT_CONTROL_I/p_1_in23_in ),
        .p_1_in26_in(\INTERRUPT_CONTROL_I/p_1_in26_in ),
        .p_1_in32_in(\INTERRUPT_CONTROL_I/p_1_in32_in ),
        .p_1_in35_in(\INTERRUPT_CONTROL_I/p_1_in35_in ),
        .p_3_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_3_in ),
        .p_4_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ),
        .p_5_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_5_in ),
        .p_6_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ),
        .p_8_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(\SOFT_RESET_I/reset_trig0 ),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[10],s_axi_wdata[3:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .scndry_out(Rx_FIFO_Full_Fifo_d1_synced),
        .spicr_0_loop_frm_axi_clk(spicr_0_loop_frm_axi_clk),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_5_txfifo_rst_frm_axi_clk(spicr_5_txfifo_rst_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spicr_9_lsb_frm_axi_clk(spicr_9_lsb_frm_axi_clk),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .sw_rst_cond(\SOFT_RESET_I/sw_rst_cond ),
        .sw_rst_cond_d1(\SOFT_RESET_I/sw_rst_cond_d1 ),
        .wr_ce_or_reduce_core_cmb(wr_ce_or_reduce_core_cmb),
        .wr_data_count(Tx_FIFO_occ_Reversed));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_core_interface \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_13 ),
        .Bus_RNW_reg_reg_0(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_49 ),
        .Bus_RNW_reg_reg_1(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_41 ),
        .Bus_RNW_reg_reg_2(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_39 ),
        .D({intr_ip2bus_data,IP2Bus_SPICR_Data_int,ip2Bus_Data_1[23],ip2Bus_Data_1[24],ip2Bus_Data_1[25],ip2Bus_Data_1[26],ip2Bus_Data_1[27],ip2Bus_Data_1[29],ip2Bus_Data_1[31]}),
        .E(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ),
        .\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_37 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_31 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_38 ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_57 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_58 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg_0 (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_40 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_17 ),
        .Q({\INTERRUPT_CONTROL_I/p_0_in19_in ,\INTERRUPT_CONTROL_I/p_0_in16_in ,\INTERRUPT_CONTROL_I/p_0_in13_in ,\INTERRUPT_CONTROL_I/p_0_in10_in ,\INTERRUPT_CONTROL_I/p_0_in7_in ,\INTERRUPT_CONTROL_I/p_0_in1_in }),
        .Receive_ip2bus_error0(\FIFO_EXISTS.FIFO_IF_MODULE_I/Receive_ip2bus_error0 ),
        .SPICR_data_int_reg0(\CONTROL_REG_I/SPICR_data_int_reg0 ),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .Tx_FIFO_Full_int(Tx_FIFO_Full_int),
        .almost_full(\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_22 ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .dout({data_from_rx_fifo[0],data_from_rx_fifo[1],data_from_rx_fifo[2],data_from_rx_fifo[3],data_from_rx_fifo[4],data_from_rx_fifo[5],data_from_rx_fifo[6],data_from_rx_fifo[7]}),
        .empty(Rx_FIFO_Empty),
        .ext_spi_clk(ext_spi_clk),
        .\gen_fwft.empty_fwft_i_reg (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_14 ),
        .\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_42 ),
        .interrupt_wrce_strb(\INTERRUPT_CONTROL_I/interrupt_wrce_strb ),
        .intr2bus_rdack0(\INTERRUPT_CONTROL_I/intr2bus_rdack0 ),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .io0_i_sync(io0_i_sync),
        .io0_t(io0_t),
        .io1_i_sync(io1_i_sync),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg(\INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg ),
        .irpt_rdack(\INTERRUPT_CONTROL_I/irpt_rdack ),
        .irpt_rdack_d1(\INTERRUPT_CONTROL_I/irpt_rdack_d1 ),
        .irpt_wrack(\INTERRUPT_CONTROL_I/irpt_wrack ),
        .irpt_wrack_d1(\INTERRUPT_CONTROL_I/irpt_wrack_d1 ),
        .irpt_wrack_d1_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_25 ),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_1_in(p_1_in),
        .p_1_in14_in(\INTERRUPT_CONTROL_I/p_1_in14_in ),
        .p_1_in17_in(\INTERRUPT_CONTROL_I/p_1_in17_in ),
        .p_1_in20_in(\INTERRUPT_CONTROL_I/p_1_in20_in ),
        .p_1_in23_in(\INTERRUPT_CONTROL_I/p_1_in23_in ),
        .p_1_in26_in(\INTERRUPT_CONTROL_I/p_1_in26_in ),
        .p_1_in32_in(\INTERRUPT_CONTROL_I/p_1_in32_in ),
        .p_1_in35_in(\INTERRUPT_CONTROL_I/p_1_in35_in ),
        .p_3_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_3_in ),
        .p_4_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ),
        .p_5_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_5_in ),
        .p_6_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ),
        .p_8_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(\SOFT_RESET_I/reset_trig0 ),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[31] ({IP2Bus_Data[0],IP2Bus_Data[22],IP2Bus_Data[23],IP2Bus_Data[24],IP2Bus_Data[25],IP2Bus_Data[26],IP2Bus_Data[27],IP2Bus_Data[28],IP2Bus_Data[29],IP2Bus_Data[30],IP2Bus_Data[31]}),
        .s_axi_wdata(s_axi_wdata[9:0]),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .scndry_out(Rx_FIFO_Full_Fifo_d1_synced),
        .spicr_0_loop_frm_axi_clk(spicr_0_loop_frm_axi_clk),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_5_txfifo_rst_frm_axi_clk(spicr_5_txfifo_rst_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spicr_9_lsb_frm_axi_clk(spicr_9_lsb_frm_axi_clk),
        .spisel(spisel),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .sw_rst_cond(\SOFT_RESET_I/sw_rst_cond ),
        .sw_rst_cond_d1(\SOFT_RESET_I/sw_rst_cond_d1 ),
        .wr_ce_or_reduce_core_cmb(wr_ce_or_reduce_core_cmb),
        .wr_data_count(Tx_FIFO_occ_Reversed));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (scndry_out,
    prmry_in,
    ext_spi_clk);
  output scndry_out;
  input prmry_in;
  input ext_spi_clk;

  wire ext_spi_clk;
  wire prmry_in;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0
   (Rx_FIFO_Full_Fifo_d1_synced_i,
    scndry_out,
    empty,
    prmry_in,
    s_axi_aclk);
  output Rx_FIFO_Full_Fifo_d1_synced_i;
  output scndry_out;
  input empty;
  input prmry_in;
  input s_axi_aclk;

  wire Rx_FIFO_Full_Fifo_d1_synced_i;
  wire empty;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    rc_FIFO_Full_d1_i_1
       (.I0(scndry_out),
        .I1(empty),
        .O(Rx_FIFO_Full_Fifo_d1_synced_i));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_f
   (\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ,
    tx_fifo_count,
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] ,
    tx_occ_msb_1,
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ,
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3 ,
    \RESET_FLOPS[15].RST_FLOPS ,
    bus2ip_reset_ipif_inverted,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ,
    reset2ip_reset_int,
    spiXfer_done_d3,
    spiXfer_done_d2,
    IP2Bus_WrAck_transmit_enable,
    Tx_FIFO_Full_i,
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 ,
    s_axi_aclk);
  output \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ;
  output [0:0]tx_fifo_count;
  output \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] ;
  output tx_occ_msb_1;
  output \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ;
  input \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3 ;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input bus2ip_reset_ipif_inverted;
  input \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  input reset2ip_reset_int;
  input spiXfer_done_d3;
  input spiXfer_done_d2;
  input IP2Bus_WrAck_transmit_enable;
  input Tx_FIFO_Full_i;
  input \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 ;
  input s_axi_aclk;

  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  wire \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ;
  wire \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ;
  wire \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] ;
  wire IP2Bus_WrAck_transmit_enable;
  wire \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 ;
  wire \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3 ;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire Tx_FIFO_Full_i;
  wire bus2ip_reset_ipif_inverted;
  wire \icount_out[0]_i_1_n_0 ;
  wire \icount_out[1]_i_1_n_0 ;
  wire \icount_out[2]_i_1_n_0 ;
  wire \icount_out[3]_i_2_n_0 ;
  wire \icount_out[3]_i_3_n_0 ;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire spiXfer_done_d2;
  wire spiXfer_done_d3;
  wire [0:0]tx_fifo_count;
  wire tx_occ_msb_1;

  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_2 
       (.I0(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] ),
        .I1(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ),
        .I2(tx_occ_msb_1),
        .I3(tx_fifo_count),
        .I4(IP2Bus_WrAck_transmit_enable),
        .I5(Tx_FIFO_Full_i),
        .O(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \icount_out[0]_i_1 
       (.I0(tx_fifo_count),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(bus2ip_reset_ipif_inverted),
        .I3(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .O(\icount_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF96)) 
    \icount_out[1]_i_1 
       (.I0(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ),
        .I1(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3 ),
        .I2(tx_fifo_count),
        .I3(\RESET_FLOPS[15].RST_FLOPS ),
        .I4(bus2ip_reset_ipif_inverted),
        .I5(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .O(\icount_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC96C)) 
    \icount_out[2]_i_1 
       (.I0(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ),
        .I1(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] ),
        .I2(tx_fifo_count),
        .I3(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3 ),
        .I4(reset2ip_reset_int),
        .I5(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .O(\icount_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDB24)) 
    \icount_out[3]_i_2 
       (.I0(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] ),
        .I1(\icount_out[3]_i_3_n_0 ),
        .I2(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ),
        .I3(tx_occ_msb_1),
        .I4(reset2ip_reset_int),
        .I5(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .O(\icount_out[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h557D0014)) 
    \icount_out[3]_i_3 
       (.I0(tx_fifo_count),
        .I1(spiXfer_done_d3),
        .I2(spiXfer_done_d2),
        .I3(IP2Bus_WrAck_transmit_enable),
        .I4(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ),
        .O(\icount_out[3]_i_3_n_0 ));
  FDRE \icount_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 ),
        .D(\icount_out[0]_i_1_n_0 ),
        .Q(tx_fifo_count),
        .R(1'b0));
  FDRE \icount_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 ),
        .D(\icount_out[1]_i_1_n_0 ),
        .Q(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] ),
        .R(1'b0));
  FDRE \icount_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 ),
        .D(\icount_out[2]_i_1_n_0 ),
        .Q(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] ),
        .R(1'b0));
  FDRE \icount_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 ),
        .D(\icount_out[3]_i_2_n_0 ),
        .Q(tx_occ_msb_1),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cross_clk_sync_fifo_1
   (\ip_irpt_enable_reg_reg[8] ,
    \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC_0 ,
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC_0 ,
    tx_FIFO_Occpncy_MSB_d1_reg,
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC_0 ,
    spiXfer_done_d2,
    spiXfer_done_d3,
    dtr_underrun_to_axi_clk,
    spicr_0_loop_to_spi_clk,
    spicr_1_spe_to_spi_clk,
    SPICR_2_MST_N_SLV_to_spi_clk,
    spicr_3_cpol_to_spi_clk,
    spicr_4_cpha_to_spi_clk,
    spicr_9_lsb_to_spi_clk,
    \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC_0 ,
    register_Data_slvsel_int,
    \icount_out_reg[0] ,
    Allow_Slave_MODF_Strobe_reg,
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg ,
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg ,
    modf_reg,
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ,
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    Tx_FIFO_Empty_intr,
    tx_occ_msb,
    D,
    \icount_out_reg[1] ,
    spiXfer_done_to_axi_1,
    R,
    transfer_start_reg,
    Slave_MODF_strobe0,
    MODF_strobe0,
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg ,
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ,
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ,
    \OTHER_RATIO_GENERATE.sck_o_int_reg ,
    rst,
    \SS_O_reg[0] ,
    D_0,
    SPI_TRISTATE_CONTROL_V,
    reset2ip_reset_int,
    spisel_d1_reg,
    s_axi_aclk,
    empty,
    Rst_to_spi,
    ext_spi_clk,
    dtr_underrun_int,
    spicr_0_loop_frm_axi_clk,
    spicr_1_spe_frm_axi_clk,
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ,
    spicr_3_cpol_frm_axi_clk,
    spicr_4_cpha_frm_axi_clk,
    spicr_7_ss_frm_axi_clk,
    spicr_8_tr_inhibit_frm_axi_clk,
    spicr_9_lsb_frm_axi_clk,
    sr_3_MODF_int,
    spicr_bits_7_8_frm_axi_clk,
    SPISSR_frm_axi_clk,
    p_9_out,
    p_5_out,
    p_2_out,
    p_0_out,
    IP2Bus_WrAck_transmit_enable,
    \RESET_FLOPS[15].RST_FLOPS ,
    bus2ip_reset_ipif_inverted,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ,
    Allow_Slave_MODF_Strobe,
    spicr_6_rxfifo_rst_frm_axi_clk,
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0 ,
    Tx_FIFO_Full_i,
    Tx_FIFO_Full_int,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ,
    Bus_RNW_reg_reg,
    irpt_wrack_d1_reg,
    s_axi_wdata,
    p_1_in14_in,
    p_1_in17_in,
    tx_occ_msb_4,
    tx_FIFO_Occpncy_MSB_d1,
    p_1_in20_in,
    p_1_in23_in,
    p_1_in35_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    tx_fifo_count_d2,
    spiXfer_done_to_axi_d1,
    data_Exists_RcFIFO_int_d1,
    almost_full,
    p_6_in,
    Bus_RNW_reg,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    slave_MODF_strobe_int,
    \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2_0 ,
    Allow_MODF_Strobe,
    Count_trigger,
    \OTHER_RATIO_GENERATE.Ratio_Count_reg[0] ,
    \OTHER_RATIO_GENERATE.Count_reg[1] ,
    SPIXfer_done_int_d1_reg,
    dout,
    transfer_start_d1,
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 ,
    serial_dout_int,
    io1_i_sync,
    io0_i_sync,
    modf_strobe_int,
    SPISEL_sync);
  output \ip_irpt_enable_reg_reg[8] ;
  output \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC_0 ;
  output \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC_0 ;
  output tx_FIFO_Occpncy_MSB_d1_reg;
  output \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC_0 ;
  output spiXfer_done_d2;
  output spiXfer_done_d3;
  output dtr_underrun_to_axi_clk;
  output spicr_0_loop_to_spi_clk;
  output spicr_1_spe_to_spi_clk;
  output SPICR_2_MST_N_SLV_to_spi_clk;
  output spicr_3_cpol_to_spi_clk;
  output spicr_4_cpha_to_spi_clk;
  output spicr_9_lsb_to_spi_clk;
  output \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC_0 ;
  output register_Data_slvsel_int;
  output \icount_out_reg[0] ;
  output Allow_Slave_MODF_Strobe_reg;
  output \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg ;
  output \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg ;
  output modf_reg;
  output \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ;
  output \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output Tx_FIFO_Empty_intr;
  output tx_occ_msb;
  output [0:0]D;
  output \icount_out_reg[1] ;
  output spiXfer_done_to_axi_1;
  output R;
  output transfer_start_reg;
  output Slave_MODF_strobe0;
  output MODF_strobe0;
  output \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg ;
  output [0:0]\OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ;
  output [0:0]\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ;
  output \OTHER_RATIO_GENERATE.sck_o_int_reg ;
  output rst;
  output \SS_O_reg[0] ;
  output D_0;
  output SPI_TRISTATE_CONTROL_V;
  input reset2ip_reset_int;
  input spisel_d1_reg;
  input s_axi_aclk;
  input empty;
  input Rst_to_spi;
  input ext_spi_clk;
  input dtr_underrun_int;
  input spicr_0_loop_frm_axi_clk;
  input spicr_1_spe_frm_axi_clk;
  input \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  input spicr_3_cpol_frm_axi_clk;
  input spicr_4_cpha_frm_axi_clk;
  input spicr_7_ss_frm_axi_clk;
  input spicr_8_tr_inhibit_frm_axi_clk;
  input spicr_9_lsb_frm_axi_clk;
  input sr_3_MODF_int;
  input [1:0]spicr_bits_7_8_frm_axi_clk;
  input SPISSR_frm_axi_clk;
  input p_9_out;
  input p_5_out;
  input p_2_out;
  input p_0_out;
  input IP2Bus_WrAck_transmit_enable;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input bus2ip_reset_ipif_inverted;
  input \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  input Allow_Slave_MODF_Strobe;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0 ;
  input Tx_FIFO_Full_i;
  input Tx_FIFO_Full_int;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  input Bus_RNW_reg_reg;
  input irpt_wrack_d1_reg;
  input [5:0]s_axi_wdata;
  input p_1_in14_in;
  input p_1_in17_in;
  input tx_occ_msb_4;
  input tx_FIFO_Occpncy_MSB_d1;
  input p_1_in20_in;
  input p_1_in23_in;
  input p_1_in35_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input [3:0]tx_fifo_count_d2;
  input spiXfer_done_to_axi_d1;
  input data_Exists_RcFIFO_int_d1;
  input almost_full;
  input p_6_in;
  input Bus_RNW_reg;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input slave_MODF_strobe_int;
  input \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2_0 ;
  input Allow_MODF_Strobe;
  input Count_trigger;
  input \OTHER_RATIO_GENERATE.Ratio_Count_reg[0] ;
  input \OTHER_RATIO_GENERATE.Count_reg[1] ;
  input SPIXfer_done_int_d1_reg;
  input [1:0]dout;
  input transfer_start_d1;
  input \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 ;
  input serial_dout_int;
  input io1_i_sync;
  input io0_i_sync;
  input modf_strobe_int;
  input SPISEL_sync;

  wire Allow_MODF_Strobe;
  wire Allow_Slave_MODF_Strobe;
  wire Allow_Slave_MODF_Strobe_reg;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  wire \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  wire Count_trigger;
  wire [0:0]D;
  wire D_0;
  wire \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg ;
  wire \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0 ;
  wire \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ;
  wire IP2Bus_WrAck_transmit_enable;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0 ;
  wire \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg_n_0 ;
  wire MODF_strobe0;
  wire \OTHER_RATIO_GENERATE.Count_reg[1] ;
  wire \OTHER_RATIO_GENERATE.Ratio_Count_reg[0] ;
  wire [0:0]\OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ;
  wire [0:0]\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_reg ;
  wire Q;
  wire R;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 ;
  wire Rst_to_spi;
  wire SPICR_0_LOOP_cdc_from_axi_d1;
  wire SPICR_1_SPE_cdc_from_axi_d1;
  wire SPICR_2_MST_N_SLV_cdc_from_axi_d1;
  wire SPICR_2_MST_N_SLV_to_spi_clk;
  wire SPICR_3_CPOL_cdc_from_axi_d1;
  wire SPICR_4_CPHA_cdc_from_axi_d1;
  wire SPICR_7_SS_cdc_from_axi_d1;
  wire SPICR_8_TR_INHIBIT_cdc_from_axi_d1;
  wire SPICR_9_LSB_cdc_from_axi_d1;
  wire SPICR_bits_7_8_cdc_from_axi_d1_0;
  wire SPICR_bits_7_8_cdc_from_axi_d1_1;
  wire SPISEL_sync;
  wire SPISSR_frm_axi_clk;
  wire SPIXfer_done_int_d1_reg;
  wire SPI_TRISTATE_CONTROL_V;
  wire SR_3_modf_cdc_from_axi_d1;
  wire \SS_O_reg[0] ;
  wire Slave_MODF_strobe0;
  wire Tx_FIFO_Empty_SPISR_cdc_from_spi_d1;
  wire Tx_FIFO_Empty_intr;
  wire Tx_FIFO_Full_i;
  wire Tx_FIFO_Full_int;
  wire almost_full;
  wire bus2ip_reset_ipif_inverted;
  wire data_Exists_RcFIFO_int_d1;
  wire [1:0]dout;
  wire drr_Overrun_int_cdc_from_spi_d1;
  wire drr_Overrun_int_cdc_from_spi_d2;
  wire drr_Overrun_int_cdc_from_spi_d3;
  wire dtr_underrun_cdc_from_spi_d1;
  wire dtr_underrun_int;
  wire dtr_underrun_to_axi_clk;
  wire empty;
  wire ext_spi_clk;
  wire \icount_out_reg[0] ;
  wire \icount_out_reg[1] ;
  wire io0_i_sync;
  wire io1_i_sync;
  wire \ip_irpt_enable_reg_reg[8] ;
  wire irpt_wrack_d1_reg;
  wire modf_reg;
  wire modf_strobe_cdc_from_spi_d1;
  wire modf_strobe_cdc_from_spi_d2;
  wire modf_strobe_cdc_from_spi_d3;
  wire modf_strobe_int;
  wire p_0_out;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in35_in;
  wire p_2_out;
  wire p_5_out;
  wire p_6_in;
  wire p_7_out;
  wire p_9_out;
  wire register_Data_slvsel_int;
  wire reset2ip_reset_int;
  wire reset_RcFIFO_ptr_cdc_from_axi_d1;
  wire reset_RcFIFO_ptr_cdc_from_axi_d2;
  wire rst;
  wire s_axi_aclk;
  wire [5:0]s_axi_wdata;
  wire serial_dout_int;
  wire slave_MODF_strobe_cdc_from_spi_d1;
  wire slave_MODF_strobe_cdc_from_spi_d2;
  wire slave_MODF_strobe_cdc_from_spi_d3;
  wire slave_MODF_strobe_int;
  wire spiXfer_done_d1;
  wire spiXfer_done_d2;
  wire spiXfer_done_d3;
  wire spiXfer_done_to_axi_1;
  wire spiXfer_done_to_axi_d1;
  wire spicr_0_loop_frm_axi_clk;
  wire spicr_0_loop_to_spi_clk;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_1_spe_to_spi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_3_cpol_to_spi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_4_cpha_to_spi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_7_ss_to_spi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_8_tr_inhibit_to_spi_clk;
  wire spicr_9_lsb_frm_axi_clk;
  wire spicr_9_lsb_to_spi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;
  wire [0:1]spicr_bits_7_8_to_spi_clk;
  wire spisel_d1_reg;
  wire spisel_d1_reg_cdc_from_spi_d1;
  wire spisel_pulse_cdc_from_spi_d1;
  wire spisel_pulse_cdc_from_spi_d2;
  wire spisel_pulse_cdc_from_spi_d3;
  wire sr_3_MODF_int;
  wire sr_3_modf_to_spi_clk;
  wire transfer_start_d1;
  wire transfer_start_i_2_n_0;
  wire transfer_start_reg;
  wire tx_FIFO_Occpncy_MSB_d1;
  wire tx_FIFO_Occpncy_MSB_d1_reg;
  wire [3:0]tx_fifo_count_d2;
  wire tx_occ_msb;
  wire tx_occ_msb_4;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    Allow_Slave_MODF_Strobe_i_1
       (.I0(SPICR_2_MST_N_SLV_to_spi_clk),
        .I1(spicr_1_spe_to_spi_clk),
        .I2(Allow_Slave_MODF_Strobe),
        .O(Allow_Slave_MODF_Strobe_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF90)) 
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_i_1 
       (.I0(spiXfer_done_d2),
        .I1(spiXfer_done_d3),
        .I2(\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0 ),
        .I3(\RESET_FLOPS[15].RST_FLOPS ),
        .I4(bus2ip_reset_ipif_inverted),
        .I5(spicr_6_rxfifo_rst_frm_axi_clk),
        .O(\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg ));
  LUT6 #(
    .INIT(64'h00090009000F0000)) 
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_i_1 
       (.I0(spiXfer_done_d2),
        .I1(spiXfer_done_d3),
        .I2(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .I3(reset2ip_reset_int),
        .I4(Tx_FIFO_Full_i),
        .I5(Tx_FIFO_Full_int),
        .O(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg ));
  LUT2 #(
    .INIT(4'h6)) 
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.spiXfer_done_to_axi_d1_i_1 
       (.I0(spiXfer_done_d2),
        .I1(spiXfer_done_d3),
        .O(spiXfer_done_to_axi_1));
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(modf_strobe_cdc_from_spi_d2),
        .I2(modf_strobe_cdc_from_spi_d3),
        .I3(s_axi_wdata[0]),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ));
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(slave_MODF_strobe_cdc_from_spi_d2),
        .I2(slave_MODF_strobe_cdc_from_spi_d3),
        .I3(s_axi_wdata[1]),
        .I4(p_1_in35_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ));
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(drr_Overrun_int_cdc_from_spi_d2),
        .I2(drr_Overrun_int_cdc_from_spi_d3),
        .I3(s_axi_wdata[2]),
        .I4(p_1_in23_in),
        .O(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ));
  LUT6 #(
    .INIT(64'hFBAAFFFFF755F300)) 
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(tx_occ_msb_4),
        .I2(tx_FIFO_Occpncy_MSB_d1_reg),
        .I3(tx_FIFO_Occpncy_MSB_d1),
        .I4(s_axi_wdata[3]),
        .I5(p_1_in20_in),
        .O(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] ));
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(spisel_pulse_cdc_from_spi_d2),
        .I2(spisel_pulse_cdc_from_spi_d3),
        .I3(s_axi_wdata[4]),
        .I4(p_1_in17_in),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ));
  LUT6 #(
    .INIT(64'hFFEFEFEFCCDCDCDC)) 
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0 ),
        .I2(s_axi_wdata[5]),
        .I3(\ip_irpt_enable_reg_reg[8] ),
        .I4(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .I5(p_1_in14_in),
        .O(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2 
       (.I0(data_Exists_RcFIFO_int_d1),
        .I1(\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0 ),
        .I2(\ip_irpt_enable_reg_reg[8] ),
        .I3(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .O(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC_0 ),
        .Q(drr_Overrun_int_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drr_Overrun_int_cdc_from_spi_d1),
        .Q(drr_Overrun_int_cdc_from_spi_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drr_Overrun_int_cdc_from_spi_d2),
        .Q(drr_Overrun_int_cdc_from_spi_d3),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.DTR_UNDERRUN_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtr_underrun_int),
        .Q(dtr_underrun_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.DTR_UNDERRUN_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtr_underrun_cdc_from_spi_d1),
        .Q(dtr_underrun_to_axi_clk),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC_0 ),
        .Q(modf_strobe_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(modf_strobe_cdc_from_spi_d1),
        .Q(modf_strobe_cdc_from_spi_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(modf_strobe_cdc_from_spi_d2),
        .Q(modf_strobe_cdc_from_spi_d3),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0 ),
        .Q(reset_RcFIFO_ptr_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(reset_RcFIFO_ptr_cdc_from_axi_d1),
        .Q(reset_RcFIFO_ptr_cdc_from_axi_d2),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg_n_0 ),
        .Q(slave_MODF_strobe_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slave_MODF_strobe_cdc_from_spi_d1),
        .Q(slave_MODF_strobe_cdc_from_spi_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slave_MODF_strobe_cdc_from_spi_d2),
        .Q(slave_MODF_strobe_cdc_from_spi_d3),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_0_loop_frm_axi_clk),
        .Q(SPICR_0_LOOP_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_0_LOOP_cdc_from_axi_d1),
        .Q(spicr_0_loop_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_1_spe_frm_axi_clk),
        .Q(SPICR_1_SPE_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_1_SPE_cdc_from_axi_d1),
        .Q(spicr_1_spe_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .Q(SPICR_2_MST_N_SLV_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_2_MST_N_SLV_cdc_from_axi_d1),
        .Q(SPICR_2_MST_N_SLV_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_3_cpol_frm_axi_clk),
        .Q(SPICR_3_CPOL_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_3_CPOL_cdc_from_axi_d1),
        .Q(spicr_3_cpol_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_4_cpha_frm_axi_clk),
        .Q(SPICR_4_CPHA_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_4_CPHA_cdc_from_axi_d1),
        .Q(spicr_4_cpha_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_7_ss_frm_axi_clk),
        .Q(SPICR_7_SS_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_7_SS_cdc_from_axi_d1),
        .Q(spicr_7_ss_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_8_tr_inhibit_frm_axi_clk),
        .Q(SPICR_8_TR_INHIBIT_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_8_TR_INHIBIT_cdc_from_axi_d1),
        .Q(spicr_8_tr_inhibit_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_9_LSB_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_9_lsb_frm_axi_clk),
        .Q(SPICR_9_LSB_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_9_LSB_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_9_LSB_cdc_from_axi_d1),
        .Q(spicr_9_lsb_to_spi_clk),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_bits_7_8_frm_axi_clk[0]),
        .Q(SPICR_bits_7_8_cdc_from_axi_d1_0),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_bits_7_8_cdc_from_axi_d1_0),
        .Q(spicr_bits_7_8_to_spi_clk[1]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_bits_7_8_frm_axi_clk[1]),
        .Q(SPICR_bits_7_8_cdc_from_axi_d1_1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_bits_7_8_cdc_from_axi_d1_1),
        .Q(spicr_bits_7_8_to_spi_clk[0]),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1 
       (.I0(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0 ),
        .I1(spicr_6_rxfifo_rst_frm_axi_clk),
        .O(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0 ));
  FDRE \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0 ),
        .Q(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0 ),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_d1_reg),
        .Q(spisel_d1_reg_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_d1_reg_cdc_from_spi_d1),
        .Q(\ip_irpt_enable_reg_reg[8] ),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC_0 ),
        .Q(spisel_pulse_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_pulse_cdc_from_spi_d1),
        .Q(spisel_pulse_cdc_from_spi_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_pulse_cdc_from_spi_d2),
        .Q(spisel_pulse_cdc_from_spi_d3),
        .R(reset2ip_reset_int));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPISSR_frm_axi_clk),
        .Q(Q),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q),
        .Q(register_Data_slvsel_int),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sr_3_MODF_int),
        .Q(SR_3_modf_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SR_3_modf_cdc_from_axi_d1),
        .Q(sr_3_modf_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC_0 ),
        .Q(spiXfer_done_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spiXfer_done_d1),
        .Q(spiXfer_done_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spiXfer_done_d2),
        .Q(spiXfer_done_d3),
        .R(reset2ip_reset_int));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg_n_0 ),
        .I1(slave_MODF_strobe_int),
        .O(p_7_out));
  FDRE \LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_7_out),
        .Q(\LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg_n_0 ),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty),
        .Q(Tx_FIFO_Empty_SPISR_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_FIFO_Empty_SPISR_cdc_from_spi_d1),
        .Q(tx_FIFO_Occpncy_MSB_d1_reg),
        .R(reset2ip_reset_int));
  FDRE \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC_0 ),
        .R(Rst_to_spi));
  FDRE \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_5_out),
        .Q(\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC_0 ),
        .R(Rst_to_spi));
  FDRE \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_2_out),
        .Q(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC_0 ),
        .R(Rst_to_spi));
  FDRE \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_9_out),
        .Q(\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC_0 ),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h8)) 
    MODF_strobe_i_1
       (.I0(SPICR_2_MST_N_SLV_to_spi_clk),
        .I1(Allow_MODF_Strobe),
        .O(MODF_strobe0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[7]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(dout[1]),
        .I3(spicr_9_lsb_to_spi_clk),
        .I4(dout[0]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s[7]_i_1 
       (.I0(serial_dout_int),
        .I1(spicr_0_loop_to_spi_clk),
        .I2(io1_i_sync),
        .I3(SPICR_2_MST_N_SLV_to_spi_clk),
        .I4(io0_i_sync),
        .O(\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ));
  LUT2 #(
    .INIT(4'h6)) 
    \OTHER_RATIO_GENERATE.sck_o_int_i_2 
       (.I0(spicr_3_cpol_to_spi_clk),
        .I1(spicr_4_cpha_to_spi_clk),
        .O(\OTHER_RATIO_GENERATE.sck_o_int_reg ));
  LUT1 #(
    .INIT(2'h1)) 
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_1 
       (.I0(SPICR_2_MST_N_SLV_to_spi_clk),
        .O(R));
  LUT6 #(
    .INIT(64'h0000000000F60000)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2 
       (.I0(spicr_3_cpol_to_spi_clk),
        .I1(spicr_4_cpha_to_spi_clk),
        .I2(Count_trigger),
        .I3(\OTHER_RATIO_GENERATE.Ratio_Count_reg[0] ),
        .I4(SPICR_2_MST_N_SLV_to_spi_clk),
        .I5(\OTHER_RATIO_GENERATE.Count_reg[1] ),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    SPI_TRISTATE_CONTROL_III_i_1
       (.I0(spicr_bits_7_8_to_spi_clk[1]),
        .I1(spicr_0_loop_to_spi_clk),
        .I2(modf_strobe_int),
        .I3(spicr_bits_7_8_to_spi_clk[0]),
        .I4(sr_3_modf_to_spi_clk),
        .O(D_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    SPI_TRISTATE_CONTROL_V_i_1
       (.I0(spicr_bits_7_8_to_spi_clk[1]),
        .I1(spicr_0_loop_to_spi_clk),
        .I2(spicr_bits_7_8_to_spi_clk[0]),
        .I3(SPISEL_sync),
        .O(SPI_TRISTATE_CONTROL_V));
  LUT5 #(
    .INIT(32'hFFFFFF15)) 
    \SS_O[0]_i_1 
       (.I0(spicr_7_ss_to_spi_clk),
        .I1(transfer_start_d1),
        .I2(\LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2_0 ),
        .I3(register_Data_slvsel_int),
        .I4(Rst_to_spi),
        .O(\SS_O_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    Slave_MODF_strobe_i_2
       (.I0(Allow_Slave_MODF_Strobe),
        .I1(spicr_1_spe_to_spi_clk),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .O(Slave_MODF_strobe0));
  LUT3 #(
    .INIT(8'hBE)) 
    \gnuram_async_fifo.xpm_fifo_base_inst_i_1__0 
       (.I0(Rst_to_spi),
        .I1(reset_RcFIFO_ptr_cdc_from_axi_d2),
        .I2(reset_RcFIFO_ptr_cdc_from_axi_d1),
        .O(rst));
  LUT6 #(
    .INIT(64'h6666606666666666)) 
    \icount_out[2]_i_2 
       (.I0(spiXfer_done_d3),
        .I1(spiXfer_done_d2),
        .I2(almost_full),
        .I3(p_6_in),
        .I4(Bus_RNW_reg),
        .I5(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .O(\icount_out_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF96)) 
    \icount_out[3]_i_1 
       (.I0(IP2Bus_WrAck_transmit_enable),
        .I1(spiXfer_done_d2),
        .I2(spiXfer_done_d3),
        .I3(\RESET_FLOPS[15].RST_FLOPS ),
        .I4(bus2ip_reset_ipif_inverted),
        .I5(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .O(\icount_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \ip_irpt_enable_reg[8]_i_2 
       (.I0(s_axi_wdata[5]),
        .I1(\ip_irpt_enable_reg_reg[8] ),
        .I2(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .O(D));
  LUT6 #(
    .INIT(64'h00000000DDDD0DD0)) 
    modf_i_1
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ),
        .I1(Bus_RNW_reg_reg),
        .I2(modf_strobe_cdc_from_spi_d2),
        .I3(modf_strobe_cdc_from_spi_d3),
        .I4(sr_3_MODF_int),
        .I5(reset2ip_reset_int),
        .O(modf_reg));
  LUT5 #(
    .INIT(32'h00002F20)) 
    transfer_start_i_1
       (.I0(\LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2_0 ),
        .I1(transfer_start_i_2_n_0),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(spicr_1_spe_to_spi_clk),
        .I4(Rst_to_spi),
        .O(transfer_start_reg));
  LUT5 #(
    .INIT(32'hFFF8FFFF)) 
    transfer_start_i_2
       (.I0(empty),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 ),
        .I2(sr_3_modf_to_spi_clk),
        .I3(spicr_8_tr_inhibit_to_spi_clk),
        .I4(spicr_1_spe_to_spi_clk),
        .O(transfer_start_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    tx_FIFO_Empty_d1_i_1
       (.I0(tx_fifo_count_d2[1]),
        .I1(tx_fifo_count_d2[2]),
        .I2(tx_fifo_count_d2[0]),
        .I3(tx_FIFO_Occpncy_MSB_d1_reg),
        .I4(tx_fifo_count_d2[3]),
        .I5(spiXfer_done_to_axi_d1),
        .O(Tx_FIFO_Empty_intr));
  LUT2 #(
    .INIT(4'h2)) 
    tx_FIFO_Occpncy_MSB_d1_i_1
       (.I0(tx_occ_msb_4),
        .I1(tx_FIFO_Occpncy_MSB_d1_reg),
        .O(tx_occ_msb));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    p_1_in14_in,
    p_2_in,
    irpt_rdack_d1,
    ipif_glbl_irpt_enable_reg,
    D,
    ip2intc_irpt,
    Q,
    IP2Bus_RdAck_1,
    reset2ip_reset_int,
    irpt_wrack,
    s_axi_aclk,
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2 ,
    \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2 ,
    tx_FIFO_Empty_d1_reg,
    dtr_underrun_d1_reg,
    rc_FIFO_Full_d1_reg,
    \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2 ,
    \FIFO_EXISTS.tx_occ_msb_4_reg ,
    \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2 ,
    \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2 ,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    Bus_RNW_reg_reg,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] ,
    \gwdc.wr_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[4] ,
    ip2Bus_RdAck_intr_reg_hole,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ,
    E,
    \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 );
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in35_in;
  output p_1_in32_in;
  output p_1_in29_in;
  output p_1_in26_in;
  output p_1_in23_in;
  output p_1_in20_in;
  output p_1_in17_in;
  output p_1_in14_in;
  output p_2_in;
  output irpt_rdack_d1;
  output ipif_glbl_irpt_enable_reg;
  output [0:0]D;
  output ip2intc_irpt;
  output [8:0]Q;
  output IP2Bus_RdAck_1;
  input reset2ip_reset_int;
  input irpt_wrack;
  input s_axi_aclk;
  input \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2 ;
  input \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2 ;
  input tx_FIFO_Empty_d1_reg;
  input dtr_underrun_d1_reg;
  input rc_FIFO_Full_d1_reg;
  input \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2 ;
  input \FIFO_EXISTS.tx_occ_msb_4_reg ;
  input \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2 ;
  input \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2 ;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input Bus_RNW_reg_reg;
  input \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  input \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] ;
  input \gwdc.wr_data_count_i_reg[3] ;
  input \grdc.rd_data_count_i_reg[4] ;
  input ip2Bus_RdAck_intr_reg_hole;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  input [0:0]E;
  input [8:0]\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 ;

  wire Bus_RNW_reg_reg;
  wire [0:0]D;
  wire [0:0]E;
  wire \FIFO_EXISTS.tx_occ_msb_4_reg ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire IP2Bus_RdAck_1;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  wire \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2 ;
  wire \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2 ;
  wire \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2 ;
  wire \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2 ;
  wire [8:0]\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 ;
  wire \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2 ;
  wire [8:0]Q;
  wire dtr_underrun_d1_reg;
  wire \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] ;
  wire \grdc.rd_data_count_i_reg[4] ;
  wire \gwdc.wr_data_count_i_reg[3] ;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2intc_irpt;
  wire ip2intc_irpt_INST_0_i_1_n_0;
  wire ip2intc_irpt_INST_0_i_2_n_0;
  wire ip2intc_irpt_INST_0_i_3_n_0;
  wire ip2intc_irpt_INST_0_i_4_n_0;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_0_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_2_in;
  wire rc_FIFO_Full_d1_reg;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire tx_FIFO_Empty_d1_reg;

  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2 ),
        .Q(p_1_in35_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_FIFO_Empty_d1_reg),
        .Q(p_1_in32_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtr_underrun_d1_reg),
        .Q(p_1_in29_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rc_FIFO_Full_d1_reg),
        .Q(p_1_in26_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2 ),
        .Q(p_1_in23_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_EXISTS.tx_occ_msb_4_reg ),
        .Q(p_1_in20_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2 ),
        .Q(p_1_in17_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2 ),
        .Q(p_1_in14_in),
        .R(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .I1(p_1_in29_in),
        .I2(\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] ),
        .I3(\gwdc.wr_data_count_i_reg[3] ),
        .I4(\grdc.rd_data_count_i_reg[4] ),
        .O(D));
  LUT3 #(
    .INIT(8'hFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_i_1 
       (.I0(p_0_in),
        .I1(ip2Bus_RdAck_intr_reg_hole),
        .I2(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ),
        .O(IP2Bus_RdAck_1));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(p_0_in),
        .R(reset2ip_reset_int));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(p_2_in),
        .R(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    ip2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(ip2intc_irpt_INST_0_i_1_n_0),
        .I2(ip2intc_irpt_INST_0_i_2_n_0),
        .I3(ip2intc_irpt_INST_0_i_3_n_0),
        .I4(ip2intc_irpt_INST_0_i_4_n_0),
        .O(ip2intc_irpt));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_1
       (.I0(Q[4]),
        .I1(p_1_in26_in),
        .I2(Q[1]),
        .I3(p_1_in35_in),
        .O(ip2intc_irpt_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_2
       (.I0(Q[8]),
        .I1(p_1_in14_in),
        .I2(Q[2]),
        .I3(p_1_in32_in),
        .O(ip2intc_irpt_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_3
       (.I0(Q[6]),
        .I1(p_1_in20_in),
        .I2(Q[7]),
        .I3(p_1_in17_in),
        .O(ip2intc_irpt_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    ip2intc_irpt_INST_0_i_4
       (.I0(Q[0]),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I2(p_1_in23_in),
        .I3(Q[5]),
        .I4(p_1_in29_in),
        .I5(Q[3]),
        .O(ip2intc_irpt_INST_0_i_4_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [0]),
        .Q(Q[0]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [1]),
        .Q(Q[1]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [2]),
        .Q(Q[2]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [3]),
        .Q(Q[3]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [4]),
        .Q(Q[4]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [5]),
        .Q(Q[5]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [6]),
        .Q(Q[6]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [7]),
        .Q(Q[7]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 [8]),
        .Q(Q[8]),
        .R(reset2ip_reset_int));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(reset2ip_reset_int));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(reset2ip_reset_int));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(reset2ip_reset_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_cntrl_reg
   (spicr_bits_7_8_frm_axi_clk,
    spicr_0_loop_frm_axi_clk,
    spicr_1_spe_frm_axi_clk,
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC ,
    spicr_3_cpol_frm_axi_clk,
    spicr_4_cpha_frm_axi_clk,
    spicr_7_ss_frm_axi_clk,
    spicr_8_tr_inhibit_frm_axi_clk,
    spicr_9_lsb_frm_axi_clk,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ,
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ,
    reset2ip_reset_int,
    bus2ip_wrce_int,
    s_axi_wdata,
    s_axi_aclk,
    SPICR_data_int_reg0,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    p_8_in,
    Bus_RNW_reg);
  output [1:0]spicr_bits_7_8_frm_axi_clk;
  output spicr_0_loop_frm_axi_clk;
  output spicr_1_spe_frm_axi_clk;
  output \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC ;
  output spicr_3_cpol_frm_axi_clk;
  output spicr_4_cpha_frm_axi_clk;
  output spicr_7_ss_frm_axi_clk;
  output spicr_8_tr_inhibit_frm_axi_clk;
  output spicr_9_lsb_frm_axi_clk;
  output \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ;
  output \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ;
  input reset2ip_reset_int;
  input [0:0]bus2ip_wrce_int;
  input [9:0]s_axi_wdata;
  input s_axi_aclk;
  input SPICR_data_int_reg0;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input p_8_in;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0 ;
  wire \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0 ;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC ;
  wire SPICR_data_int_reg0;
  wire [0:0]bus2ip_wrce_int;
  wire p_8_in;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [9:0]s_axi_wdata;
  wire spicr_0_loop_frm_axi_clk;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_9_lsb_frm_axi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;

  FDSE \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[8]),
        .Q(spicr_8_tr_inhibit_frm_axi_clk),
        .S(reset2ip_reset_int));
  FDSE \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[7]),
        .Q(spicr_7_ss_frm_axi_clk),
        .S(reset2ip_reset_int));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1 
       (.I0(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .I2(s_axi_wdata[6]),
        .I3(p_8_in),
        .I4(Bus_RNW_reg),
        .I5(reset2ip_reset_int),
        .O(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0 ));
  FDRE \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0 ),
        .Q(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1 
       (.I0(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .I2(s_axi_wdata[5]),
        .I3(p_8_in),
        .I4(Bus_RNW_reg),
        .I5(reset2ip_reset_int),
        .O(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0 ));
  FDRE \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0 ),
        .Q(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ),
        .R(1'b0));
  FDRE \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[4]),
        .Q(spicr_4_cpha_frm_axi_clk),
        .R(reset2ip_reset_int));
  FDRE \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[3]),
        .Q(spicr_3_cpol_frm_axi_clk),
        .R(reset2ip_reset_int));
  FDRE \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[2]),
        .Q(\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC ),
        .R(reset2ip_reset_int));
  FDRE \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[1]),
        .Q(spicr_1_spe_frm_axi_clk),
        .R(reset2ip_reset_int));
  FDRE \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[0]),
        .Q(spicr_0_loop_frm_axi_clk),
        .R(reset2ip_reset_int));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[2]),
        .Q(spicr_bits_7_8_frm_axi_clk[1]),
        .R(reset2ip_reset_int));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[1]),
        .Q(spicr_bits_7_8_frm_axi_clk[0]),
        .R(reset2ip_reset_int));
  FDRE \SPICR_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[9]),
        .Q(spicr_9_lsb_frm_axi_clk),
        .R(reset2ip_reset_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_core_interface
   (spisel_d1_reg_to_axi_clk,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    spicr_0_loop_frm_axi_clk,
    spicr_1_spe_frm_axi_clk,
    spicr_2_mst_n_slv_frm_axi_clk,
    spicr_3_cpol_frm_axi_clk,
    spicr_4_cpha_frm_axi_clk,
    spicr_7_ss_frm_axi_clk,
    spicr_8_tr_inhibit_frm_axi_clk,
    spicr_9_lsb_frm_axi_clk,
    sr_3_MODF_int,
    SPISSR_frm_axi_clk,
    dout,
    empty,
    wr_data_count,
    almost_full,
    sck_t,
    io0_t,
    ss_t,
    io1_t,
    sck_o,
    p_1_in,
    sw_rst_cond_d1,
    irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    p_1_in14_in,
    irpt_rdack_d1,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg_0 ,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    p_16_out,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_RdAck_core_reg,
    p_15_out,
    ip2Bus_WrAck_core_reg_1,
    spicr_5_txfifo_rst_frm_axi_clk,
    spicr_6_rxfifo_rst_frm_axi_clk,
    ipif_glbl_irpt_enable_reg,
    io1_o,
    ss_o,
    Tx_FIFO_Full_int,
    rx_fifo_empty_i,
    scndry_out,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ,
    ip2intc_irpt,
    Q,
    \s_axi_rdata_i_reg[31] ,
    s_axi_aclk,
    rd_ce_or_reduce_core_cmb,
    bus2ip_wrce_int,
    s_axi_wdata,
    ext_spi_clk,
    spisel,
    sck_i,
    IP2Bus_Error_1,
    SPICR_data_int_reg0,
    bus2ip_reset_ipif_inverted,
    sw_rst_cond,
    reset_trig0,
    irpt_wrack,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    Receive_ip2bus_error0,
    Bus_RNW_reg_reg,
    ip2Bus_WrAck_intr_reg_hole0,
    wr_ce_or_reduce_core_cmb,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ,
    intr_controller_rd_ce_or_reduce,
    ip2Bus_RdAck_intr_reg_hole0,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg,
    p_5_in,
    Bus_RNW_reg_reg_1,
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ,
    irpt_wrack_d1_reg,
    D,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    Bus_RNW_reg_reg_2,
    \gen_fwft.empty_fwft_i_reg ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    p_6_in,
    p_3_in,
    p_4_in,
    p_8_in,
    E,
    io1_i_sync,
    io0_i_sync);
  output spisel_d1_reg_to_axi_clk;
  output Tx_FIFO_Empty_SPISR_to_axi_clk;
  output spicr_0_loop_frm_axi_clk;
  output spicr_1_spe_frm_axi_clk;
  output spicr_2_mst_n_slv_frm_axi_clk;
  output spicr_3_cpol_frm_axi_clk;
  output spicr_4_cpha_frm_axi_clk;
  output spicr_7_ss_frm_axi_clk;
  output spicr_8_tr_inhibit_frm_axi_clk;
  output spicr_9_lsb_frm_axi_clk;
  output sr_3_MODF_int;
  output SPISSR_frm_axi_clk;
  output [7:0]dout;
  output empty;
  output [0:0]wr_data_count;
  output almost_full;
  output sck_t;
  output io0_t;
  output ss_t;
  output io1_t;
  output sck_o;
  output [0:0]p_1_in;
  output sw_rst_cond_d1;
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output p_1_in35_in;
  output p_1_in32_in;
  output p_1_in26_in;
  output p_1_in23_in;
  output p_1_in20_in;
  output p_1_in17_in;
  output p_1_in14_in;
  output irpt_rdack_d1;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg_0 ;
  output ip2Bus_WrAck_intr_reg_hole_d1;
  output ip2Bus_WrAck_core_reg_d1;
  output p_16_out;
  output ip2Bus_RdAck_intr_reg_hole_d1;
  output ip2Bus_RdAck_core_reg;
  output p_15_out;
  output ip2Bus_WrAck_core_reg_1;
  output spicr_5_txfifo_rst_frm_axi_clk;
  output spicr_6_rxfifo_rst_frm_axi_clk;
  output ipif_glbl_irpt_enable_reg;
  output io1_o;
  output [0:0]ss_o;
  output Tx_FIFO_Full_int;
  output rx_fifo_empty_i;
  output scndry_out;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ;
  output ip2intc_irpt;
  output [5:0]Q;
  output [10:0]\s_axi_rdata_i_reg[31] ;
  input s_axi_aclk;
  input rd_ce_or_reduce_core_cmb;
  input [0:0]bus2ip_wrce_int;
  input [9:0]s_axi_wdata;
  input ext_spi_clk;
  input spisel;
  input sck_i;
  input IP2Bus_Error_1;
  input SPICR_data_int_reg0;
  input bus2ip_reset_ipif_inverted;
  input sw_rst_cond;
  input reset_trig0;
  input irpt_wrack;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input Receive_ip2bus_error0;
  input Bus_RNW_reg_reg;
  input ip2Bus_WrAck_intr_reg_hole0;
  input wr_ce_or_reduce_core_cmb;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ;
  input intr_controller_rd_ce_or_reduce;
  input ip2Bus_RdAck_intr_reg_hole0;
  input Bus_RNW_reg_reg_0;
  input Bus_RNW_reg;
  input p_5_in;
  input Bus_RNW_reg_reg_1;
  input \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  input irpt_wrack_d1_reg;
  input [8:0]D;
  input \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  input \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] ;
  input \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  input Bus_RNW_reg_reg_2;
  input \gen_fwft.empty_fwft_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  input p_6_in;
  input p_3_in;
  input p_4_in;
  input p_8_in;
  input [0:0]E;
  input io1_i_sync;
  input io0_i_sync;

  wire Allow_MODF_Strobe;
  wire Allow_Slave_MODF_Strobe;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Count_trigger;
  wire [8:0]D;
  wire D_0;
  wire [0:0]E;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_1 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_14 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_16 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_17 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_18 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_19 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_2 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_20 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_21 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_22 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_23 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_24 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_25 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_26 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_30 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_33 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_36 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_37 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_39 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_4 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_41 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_43 ;
  wire \FIFO_EXISTS.FIFO_IF_MODULE_I_n_2 ;
  wire \FIFO_EXISTS.FIFO_IF_MODULE_I_n_3 ;
  wire \FIFO_EXISTS.FIFO_IF_MODULE_I_n_4 ;
  wire \FIFO_EXISTS.RX_FIFO_II_n_11 ;
  wire \FIFO_EXISTS.RX_FIFO_II_n_12 ;
  wire \FIFO_EXISTS.RX_FIFO_II_n_13 ;
  wire \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0 ;
  wire \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2 ;
  wire \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4 ;
  wire \FIFO_EXISTS.TX_FIFO_II_n_14 ;
  wire \FIFO_EXISTS.TX_FIFO_II_n_16 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire INTERRUPT_CONTROL_I_n_23;
  wire IP2Bus_Error_1;
  wire IP2Bus_RdAck_1;
  wire IP2Bus_WrAck_1;
  wire IP2Bus_WrAck_transmit_enable;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_20 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_27 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_28 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_9 ;
  wire MODF_strobe0;
  wire [5:0]Q;
  wire R;
  wire RESET_SYNC_AXI_SPI_CLK_INST_n_0;
  wire Receive_ip2bus_error0;
  wire Rx_FIFO_Empty_Synced_in_SPI_domain;
  wire Rx_FIFO_Full_Fifo;
  wire Rx_FIFO_Full_Fifo_d1;
  wire Rx_FIFO_Full_Fifo_d1_synced_i;
  wire Rx_FIFO_Full_Fifo_org;
  wire SOFT_RESET_I_n_1;
  wire SOFT_RESET_I_n_2;
  wire SPICR_2_MST_N_SLV_to_spi_clk;
  wire SPICR_data_int_reg0;
  wire SPISEL_sync;
  wire SPISSR_frm_axi_clk;
  wire SPIXfer_done_rd_tx_en;
  wire Slave_MODF_strobe0;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire Tx_FIFO_Empty_intr;
  wire Tx_FIFO_Full_i;
  wire Tx_FIFO_Full_int;
  wire almost_full;
  wire [23:23]bus2IP_Data_for_interrupt_core;
  wire bus2ip_reset_ipif_inverted;
  wire [0:0]bus2ip_wrce_int;
  wire data_Exists_RcFIFO_int_d1;
  wire data_Exists_RcFIFO_pulse049_in;
  wire [0:7]data_from_txfifo;
  wire data_in;
  wire [0:7]data_to_rx_fifo;
  wire [7:0]dout;
  wire dtr_underrun_int;
  wire dtr_underrun_to_axi_clk;
  wire empty;
  wire ext_spi_clk;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] ;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire io0_i_sync;
  wire io0_t;
  wire io1_i_sync;
  wire io1_o;
  wire io1_t;
  wire [28:30]ip2Bus_Data_1;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire modf_strobe_int;
  wire p_0_in;
  wire p_0_in4_in;
  wire p_0_out;
  wire p_15_out;
  wire p_16_out;
  wire [0:0]p_1_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_5_out;
  wire p_6_in;
  wire p_6_out;
  wire p_8_in;
  wire p_9_out;
  wire rd_ce_or_reduce_core_cmb;
  wire read_ack_delay_6;
  wire read_ack_delay_7;
  wire register_Data_slvsel_int;
  wire reset2ip_reset_int;
  wire reset_TxFIFO_ptr_int;
  wire reset_trig0;
  wire rst_to_spi_int;
  wire rx_fifo_empty_i;
  wire rx_fifo_reset;
  wire s_axi_aclk;
  wire [10:0]\s_axi_rdata_i_reg[31] ;
  wire [9:0]s_axi_wdata;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire scndry_out;
  wire serial_dout_int;
  wire slave_MODF_strobe_int;
  wire spiXfer_done_d2;
  wire spiXfer_done_d3;
  wire spiXfer_done_int;
  wire spiXfer_done_to_axi_1;
  wire spiXfer_done_to_axi_d1;
  wire spicr_0_loop_frm_axi_clk;
  wire spicr_0_loop_to_spi_clk;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_1_spe_to_spi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_3_cpol_to_spi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_4_cpha_to_spi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_9_lsb_frm_axi_clk;
  wire spicr_9_lsb_to_spi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;
  wire spisel;
  wire spisel_d1_reg;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire [0:0]ss_o;
  wire ss_t;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire transfer_start_d1;
  wire tx_FIFO_Occpncy_MSB_d1;
  wire [0:0]tx_fifo_count;
  wire [3:0]tx_fifo_count_d1;
  wire [3:0]tx_fifo_count_d2;
  wire tx_fifo_empty;
  wire tx_occ_msb;
  wire tx_occ_msb_1;
  wire tx_occ_msb_4;
  wire wr_ce_or_reduce_core_cmb;
  wire [0:0]wr_data_count;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_cntrl_reg CONTROL_REG_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 (spicr_6_rxfifo_rst_frm_axi_clk),
        .\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 (spicr_5_txfifo_rst_frm_axi_clk),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (ip2Bus_WrAck_core_reg_1),
        .\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC (spicr_2_mst_n_slv_frm_axi_clk),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .p_8_in(p_8_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .spicr_0_loop_frm_axi_clk(spicr_0_loop_frm_axi_clk),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spicr_9_lsb_frm_axi_clk(spicr_9_lsb_frm_axi_clk),
        .spicr_bits_7_8_frm_axi_clk(spicr_bits_7_8_frm_axi_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cross_clk_sync_fifo_1 \FIFO_EXISTS.CLK_CROSS_I 
       (.Allow_MODF_Strobe(Allow_MODF_Strobe),
        .Allow_Slave_MODF_Strobe(Allow_Slave_MODF_Strobe),
        .Allow_Slave_MODF_Strobe_reg(\FIFO_EXISTS.CLK_CROSS_I_n_17 ),
        .Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg_1),
        .\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] (spicr_5_txfifo_rst_frm_axi_clk),
        .\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] (spicr_2_mst_n_slv_frm_axi_clk),
        .Count_trigger(Count_trigger),
        .D(bus2IP_Data_for_interrupt_core),
        .D_0(D_0),
        .\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg (\FIFO_EXISTS.CLK_CROSS_I_n_18 ),
        .\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0 (rx_fifo_empty_i),
        .\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg (\FIFO_EXISTS.CLK_CROSS_I_n_19 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\FIFO_EXISTS.CLK_CROSS_I_n_26 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\FIFO_EXISTS.CLK_CROSS_I_n_25 ),
        .\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] (\FIFO_EXISTS.CLK_CROSS_I_n_24 ),
        .\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] (\FIFO_EXISTS.CLK_CROSS_I_n_23 ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\FIFO_EXISTS.CLK_CROSS_I_n_22 ),
        .\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] (\FIFO_EXISTS.CLK_CROSS_I_n_21 ),
        .IP2Bus_WrAck_transmit_enable(IP2Bus_WrAck_transmit_enable),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg (ip2Bus_RdAck_core_reg),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (ip2Bus_WrAck_core_reg_1),
        .\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC_0 (\FIFO_EXISTS.CLK_CROSS_I_n_14 ),
        .\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC_0 (\FIFO_EXISTS.CLK_CROSS_I_n_2 ),
        .\LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2_0 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_28 ),
        .\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC_0 (\FIFO_EXISTS.CLK_CROSS_I_n_1 ),
        .\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC_0 (\FIFO_EXISTS.CLK_CROSS_I_n_4 ),
        .MODF_strobe0(MODF_strobe0),
        .\OTHER_RATIO_GENERATE.Count_reg[1] (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_27 ),
        .\OTHER_RATIO_GENERATE.Ratio_Count_reg[0] (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26 ),
        .\OTHER_RATIO_GENERATE.Shift_Reg_reg[7] (\FIFO_EXISTS.CLK_CROSS_I_n_37 ),
        .\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] (data_in),
        .\OTHER_RATIO_GENERATE.sck_o_int_reg (\FIFO_EXISTS.CLK_CROSS_I_n_39 ),
        .R(R),
        .\RESET_FLOPS[15].RST_FLOPS (SOFT_RESET_I_n_1),
        .\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg (\FIFO_EXISTS.CLK_CROSS_I_n_36 ),
        .\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_9 ),
        .Rst_to_spi(rst_to_spi_int),
        .SPICR_2_MST_N_SLV_to_spi_clk(SPICR_2_MST_N_SLV_to_spi_clk),
        .SPISEL_sync(SPISEL_sync),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .SPIXfer_done_int_d1_reg(\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_20 ),
        .SPI_TRISTATE_CONTROL_V(\FIFO_EXISTS.CLK_CROSS_I_n_43 ),
        .\SS_O_reg[0] (\FIFO_EXISTS.CLK_CROSS_I_n_41 ),
        .Slave_MODF_strobe0(Slave_MODF_strobe0),
        .Tx_FIFO_Empty_intr(Tx_FIFO_Empty_intr),
        .Tx_FIFO_Full_i(Tx_FIFO_Full_i),
        .Tx_FIFO_Full_int(Tx_FIFO_Full_int),
        .almost_full(almost_full),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .data_Exists_RcFIFO_int_d1(data_Exists_RcFIFO_int_d1),
        .dout({data_from_txfifo[0],data_from_txfifo[7]}),
        .dtr_underrun_int(dtr_underrun_int),
        .dtr_underrun_to_axi_clk(dtr_underrun_to_axi_clk),
        .empty(tx_fifo_empty),
        .ext_spi_clk(ext_spi_clk),
        .\icount_out_reg[0] (\FIFO_EXISTS.CLK_CROSS_I_n_16 ),
        .\icount_out_reg[1] (\FIFO_EXISTS.CLK_CROSS_I_n_30 ),
        .io0_i_sync(io0_i_sync),
        .io1_i_sync(io1_i_sync),
        .\ip_irpt_enable_reg_reg[8] (spisel_d1_reg_to_axi_clk),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .modf_reg(\FIFO_EXISTS.CLK_CROSS_I_n_20 ),
        .modf_strobe_int(modf_strobe_int),
        .p_0_out(p_0_out),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in35_in(p_1_in35_in),
        .p_2_out(p_2_out),
        .p_5_out(p_5_out),
        .p_6_in(p_6_in),
        .p_9_out(p_9_out),
        .register_Data_slvsel_int(register_Data_slvsel_int),
        .reset2ip_reset_int(reset2ip_reset_int),
        .rst(rx_fifo_reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata({s_axi_wdata[8:5],s_axi_wdata[1:0]}),
        .serial_dout_int(serial_dout_int),
        .slave_MODF_strobe_int(slave_MODF_strobe_int),
        .spiXfer_done_d2(spiXfer_done_d2),
        .spiXfer_done_d3(spiXfer_done_d3),
        .spiXfer_done_to_axi_1(spiXfer_done_to_axi_1),
        .spiXfer_done_to_axi_d1(spiXfer_done_to_axi_d1),
        .spicr_0_loop_frm_axi_clk(spicr_0_loop_frm_axi_clk),
        .spicr_0_loop_to_spi_clk(spicr_0_loop_to_spi_clk),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_1_spe_to_spi_clk(spicr_1_spe_to_spi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_3_cpol_to_spi_clk(spicr_3_cpol_to_spi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_4_cpha_to_spi_clk(spicr_4_cpha_to_spi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spicr_9_lsb_frm_axi_clk(spicr_9_lsb_frm_axi_clk),
        .spicr_9_lsb_to_spi_clk(spicr_9_lsb_to_spi_clk),
        .spicr_bits_7_8_frm_axi_clk(spicr_bits_7_8_frm_axi_clk),
        .spisel_d1_reg(spisel_d1_reg),
        .sr_3_MODF_int(sr_3_MODF_int),
        .transfer_start_d1(transfer_start_d1),
        .transfer_start_reg(\FIFO_EXISTS.CLK_CROSS_I_n_33 ),
        .tx_FIFO_Occpncy_MSB_d1(tx_FIFO_Occpncy_MSB_d1),
        .tx_FIFO_Occpncy_MSB_d1_reg(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .tx_fifo_count_d2(tx_fifo_count_d2),
        .tx_occ_msb(tx_occ_msb),
        .tx_occ_msb_4(tx_occ_msb_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_fifo_ifmodule \FIFO_EXISTS.FIFO_IF_MODULE_I 
       (.\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\FIFO_EXISTS.FIFO_IF_MODULE_I_n_4 ),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\FIFO_EXISTS.FIFO_IF_MODULE_I_n_3 ),
        .\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] (\FIFO_EXISTS.FIFO_IF_MODULE_I_n_2 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg_0 ),
        .Receive_ip2bus_error0(Receive_ip2bus_error0),
        .Rx_FIFO_Full_Fifo_d1_synced_i(Rx_FIFO_Full_Fifo_d1_synced_i),
        .Tx_FIFO_Empty_intr(Tx_FIFO_Empty_intr),
        .dtr_underrun_to_axi_clk(dtr_underrun_to_axi_clk),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in32_in(p_1_in32_in),
        .prmry_in(empty),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[4:2]),
        .scndry_out(scndry_out),
        .tx_FIFO_Occpncy_MSB_d1(tx_FIFO_Occpncy_MSB_d1),
        .tx_occ_msb(tx_occ_msb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync \FIFO_EXISTS.RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC 
       (.ext_spi_clk(ext_spi_clk),
        .prmry_in(empty),
        .scndry_out(Rx_FIFO_Empty_Synced_in_SPI_domain));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 \FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC 
       (.Rx_FIFO_Full_Fifo_d1_synced_i(Rx_FIFO_Full_Fifo_d1_synced_i),
        .empty(empty),
        .prmry_in(Rx_FIFO_Full_Fifo_d1),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg__xdcDup__1 \FIFO_EXISTS.RX_FIFO_II 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] (\FIFO_EXISTS.RX_FIFO_II_n_12 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\FIFO_EXISTS.RX_FIFO_II_n_13 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] (\FIFO_EXISTS.RX_FIFO_II_n_11 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg (ip2Bus_RdAck_core_reg),
        .Q({data_to_rx_fifo[0],data_to_rx_fifo[1],data_to_rx_fifo[2],data_to_rx_fifo[3],data_to_rx_fifo[4],data_to_rx_fifo[5],data_to_rx_fifo[6],data_to_rx_fifo[7]}),
        .Rx_FIFO_Full_Fifo(Rx_FIFO_Full_Fifo),
        .almost_full(Rx_FIFO_Full_Fifo_org),
        .dout(dout),
        .empty(empty),
        .ext_spi_clk(ext_spi_clk),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .\ip_irpt_enable_reg_reg[3] ({p_0_in4_in,p_0_in,INTERRUPT_CONTROL_I_n_23}),
        .p_5_in(p_5_in),
        .rst(rx_fifo_reset),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(Rx_FIFO_Empty_Synced_in_SPI_domain),
        .spiXfer_done_int(spiXfer_done_int));
  FDRE \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_EXISTS.CLK_CROSS_I_n_18 ),
        .Q(rx_fifo_empty_i),
        .R(1'b0));
  FDRE \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Rx_FIFO_Full_Fifo),
        .Q(Rx_FIFO_Full_Fifo_d1),
        .R(rst_to_spi_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_f \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I 
       (.\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] (spicr_5_txfifo_rst_frm_axi_clk),
        .\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg (\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4 ),
        .\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] (\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0 ),
        .\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] (\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2 ),
        .IP2Bus_WrAck_transmit_enable(IP2Bus_WrAck_transmit_enable),
        .\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 (\FIFO_EXISTS.CLK_CROSS_I_n_16 ),
        .\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3 (\FIFO_EXISTS.CLK_CROSS_I_n_30 ),
        .\RESET_FLOPS[15].RST_FLOPS (SOFT_RESET_I_n_1),
        .Tx_FIFO_Full_i(Tx_FIFO_Full_i),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .spiXfer_done_d2(spiXfer_done_d2),
        .spiXfer_done_d3(spiXfer_done_d3),
        .tx_fifo_count(tx_fifo_count),
        .tx_occ_msb_1(tx_occ_msb_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg \FIFO_EXISTS.TX_FIFO_II 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg_2),
        .D(ip2Bus_Data_1[30]),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .IP2Bus_WrAck_transmit_enable(IP2Bus_WrAck_transmit_enable),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] (\FIFO_EXISTS.TX_FIFO_II_n_14 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (ip2Bus_WrAck_core_reg_1),
        .\OTHER_RATIO_GENERATE.Serial_Dout_reg (\FIFO_EXISTS.TX_FIFO_II_n_16 ),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .almost_full(almost_full),
        .dout({data_from_txfifo[0],data_from_txfifo[1],data_from_txfifo[2],data_from_txfifo[3],data_from_txfifo[4],data_from_txfifo[5],data_from_txfifo[6],data_from_txfifo[7]}),
        .empty(tx_fifo_empty),
        .ext_spi_clk(ext_spi_clk),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .\grdc.rd_data_count_i_reg[1] (\FIFO_EXISTS.RX_FIFO_II_n_11 ),
        .\grdc.rd_data_count_i_reg[4] (\FIFO_EXISTS.RX_FIFO_II_n_13 ),
        .p_3_in(p_3_in),
        .p_6_in(p_6_in),
        .rd_en(SPIXfer_done_rd_tx_en),
        .rst(reset_TxFIFO_ptr_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .spicr_9_lsb_to_spi_clk(spicr_9_lsb_to_spi_clk),
        .wr_data_count(wr_data_count));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SOFT_RESET_I_n_2),
        .Q(Tx_FIFO_Full_i),
        .R(1'b0));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_EXISTS.CLK_CROSS_I_n_19 ),
        .Q(Tx_FIFO_Full_int),
        .R(1'b0));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.spiXfer_done_to_axi_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spiXfer_done_to_axi_1),
        .Q(spiXfer_done_to_axi_d1),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_count),
        .Q(tx_fifo_count_d1[0]),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0 ),
        .Q(tx_fifo_count_d1[1]),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2 ),
        .Q(tx_fifo_count_d1[2]),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_occ_msb_1),
        .Q(tx_fifo_count_d1[3]),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_count_d1[0]),
        .Q(tx_fifo_count_d2[0]),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_count_d1[1]),
        .Q(tx_fifo_count_d2[1]),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_count_d1[2]),
        .Q(tx_fifo_count_d2[2]),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_count_d1[3]),
        .Q(tx_fifo_count_d2[3]),
        .R(reset2ip_reset_int));
  LUT1 #(
    .INIT(2'h1)) 
    \FIFO_EXISTS.data_Exists_RcFIFO_int_d1_i_1 
       (.I0(rx_fifo_empty_i),
        .O(data_Exists_RcFIFO_pulse049_in));
  FDRE \FIFO_EXISTS.data_Exists_RcFIFO_int_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data_Exists_RcFIFO_pulse049_in),
        .Q(data_Exists_RcFIFO_int_d1),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.tx_occ_msb_4_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_count_d2[3]),
        .Q(tx_occ_msb_4),
        .R(reset2ip_reset_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control INTERRUPT_CONTROL_I
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg_0),
        .D(ip2Bus_Data_1[28]),
        .E(E),
        .\FIFO_EXISTS.tx_occ_msb_4_reg (\FIFO_EXISTS.CLK_CROSS_I_n_23 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .IP2Bus_RdAck_1(IP2Bus_RdAck_1),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg (ip2Bus_RdAck_core_reg),
        .\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2 (\FIFO_EXISTS.CLK_CROSS_I_n_24 ),
        .\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2 (\FIFO_EXISTS.CLK_CROSS_I_n_26 ),
        .\LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2 (\FIFO_EXISTS.CLK_CROSS_I_n_25 ),
        .\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2 (\FIFO_EXISTS.CLK_CROSS_I_n_21 ),
        .\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2_0 ({bus2IP_Data_for_interrupt_core,s_axi_wdata[7:0]}),
        .\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2 (\FIFO_EXISTS.CLK_CROSS_I_n_22 ),
        .Q({Q[5:1],p_0_in4_in,Q[0],p_0_in,INTERRUPT_CONTROL_I_n_23}),
        .dtr_underrun_d1_reg(\FIFO_EXISTS.FIFO_IF_MODULE_I_n_3 ),
        .\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] (\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] ),
        .\grdc.rd_data_count_i_reg[4] (\FIFO_EXISTS.RX_FIFO_II_n_12 ),
        .\gwdc.wr_data_count_i_reg[3] (\FIFO_EXISTS.TX_FIFO_II_n_14 ),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_2_in(p_2_in),
        .rc_FIFO_Full_d1_reg(\FIFO_EXISTS.FIFO_IF_MODULE_I_n_2 ),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .tx_FIFO_Empty_d1_reg(\FIFO_EXISTS.FIFO_IF_MODULE_I_n_4 ));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\s_axi_rdata_i_reg[31] [10]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\s_axi_rdata_i_reg[31] [9]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\s_axi_rdata_i_reg[31] [8]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\s_axi_rdata_i_reg[31] [7]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\s_axi_rdata_i_reg[31] [6]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\s_axi_rdata_i_reg[31] [5]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\s_axi_rdata_i_reg[31] [4]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[28]),
        .Q(\s_axi_rdata_i_reg[31] [3]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\s_axi_rdata_i_reg[31] [2]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[30]),
        .Q(\s_axi_rdata_i_reg[31] [1]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\s_axi_rdata_i_reg[31] [0]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Error_1),
        .Q(p_1_in),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_RdAck_1),
        .Q(p_15_out),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_WrAck_1),
        .Q(p_16_out),
        .R(reset2ip_reset_int));
  LUT2 #(
    .INIT(4'h2)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1 
       (.I0(read_ack_delay_6),
        .I1(read_ack_delay_7),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0 ));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0 ),
        .Q(ip2Bus_RdAck_core_reg),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_core_reg),
        .Q(ip2Bus_WrAck_core_reg_1),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_ce_or_reduce_core_cmb),
        .Q(ip2Bus_WrAck_core_reg_d1),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ),
        .Q(ip2Bus_WrAck_core_reg),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  (* srl_name = "U0/\NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r " *) 
  SRL16E \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_axi_aclk),
        .D(rd_ce_or_reduce_core_cmb),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_6_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ),
        .Q(read_ack_delay_6),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_7_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_ack_delay_6),
        .Q(read_ack_delay_7),
        .R(reset2ip_reset_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_mode_0_module \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I 
       (.Allow_MODF_Strobe(Allow_MODF_Strobe),
        .Allow_Slave_MODF_Strobe(Allow_Slave_MODF_Strobe),
        .Count_trigger(Count_trigger),
        .D(\FIFO_EXISTS.CLK_CROSS_I_n_37 ),
        .D_0(D_0),
        .\LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_28 ),
        .\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2 (\FIFO_EXISTS.CLK_CROSS_I_n_17 ),
        .\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 (\FIFO_EXISTS.CLK_CROSS_I_n_33 ),
        .\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2 (\FIFO_EXISTS.CLK_CROSS_I_n_39 ),
        .\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_0 (\FIFO_EXISTS.CLK_CROSS_I_n_36 ),
        .\LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2 (\FIFO_EXISTS.CLK_CROSS_I_n_41 ),
        .\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2 (\FIFO_EXISTS.CLK_CROSS_I_n_43 ),
        .\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg (\FIFO_EXISTS.CLK_CROSS_I_n_14 ),
        .\LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg (\FIFO_EXISTS.CLK_CROSS_I_n_2 ),
        .\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg (\FIFO_EXISTS.CLK_CROSS_I_n_4 ),
        .\LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg (\FIFO_EXISTS.CLK_CROSS_I_n_1 ),
        .MODF_strobe0(MODF_strobe0),
        .\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_20 ),
        .\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 (data_in),
        .Q({data_to_rx_fifo[0],data_to_rx_fifo[1],data_to_rx_fifo[2],data_to_rx_fifo[3],data_to_rx_fifo[4],data_to_rx_fifo[5],data_to_rx_fifo[6],data_to_rx_fifo[7]}),
        .R(R),
        .RESET_SYNC_AX2S_2(RESET_SYNC_AXI_SPI_CLK_INST_n_0),
        .\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26 ),
        .\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_1 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_27 ),
        .Rst_to_spi(rst_to_spi_int),
        .SPICR_2_MST_N_SLV_to_spi_clk(SPICR_2_MST_N_SLV_to_spi_clk),
        .SPISEL_sync(SPISEL_sync),
        .SPIXfer_done_int_d1_reg_0(\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_9 ),
        .Slave_MODF_strobe0(Slave_MODF_strobe0),
        .almost_full(Rx_FIFO_Full_Fifo_org),
        .dout({data_from_txfifo[0],data_from_txfifo[1],data_from_txfifo[2],data_from_txfifo[3],data_from_txfifo[4],data_from_txfifo[5],data_from_txfifo[6],data_from_txfifo[7]}),
        .dtr_underrun_int(dtr_underrun_int),
        .empty(tx_fifo_empty),
        .ext_spi_clk(ext_spi_clk),
        .\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] (\FIFO_EXISTS.TX_FIFO_II_n_16 ),
        .io0_t(io0_t),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .modf_strobe_int(modf_strobe_int),
        .p_0_out(p_0_out),
        .p_2_out(p_2_out),
        .p_5_out(p_5_out),
        .p_6_out(p_6_out),
        .p_9_out(p_9_out),
        .rd_en(SPIXfer_done_rd_tx_en),
        .register_Data_slvsel_int(register_Data_slvsel_int),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .scndry_out(Rx_FIFO_Empty_Synced_in_SPI_domain),
        .serial_dout_int(serial_dout_int),
        .slave_MODF_strobe_int(slave_MODF_strobe_int),
        .spiXfer_done_int(spiXfer_done_int),
        .spicr_0_loop_to_spi_clk(spicr_0_loop_to_spi_clk),
        .spicr_1_spe_to_spi_clk(spicr_1_spe_to_spi_clk),
        .spicr_3_cpol_to_spi_clk(spicr_3_cpol_to_spi_clk),
        .spicr_4_cpha_to_spi_clk(spicr_4_cpha_to_spi_clk),
        .spicr_9_lsb_to_spi_clk(spicr_9_lsb_to_spi_clk),
        .spisel(spisel),
        .spisel_d1_reg(spisel_d1_reg),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .transfer_start_d1(transfer_start_d1),
        .transfer_start_d1_reg_0(\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_sync_module RESET_SYNC_AXI_SPI_CLK_INST
       (.Allow_MODF_Strobe_reg(RESET_SYNC_AXI_SPI_CLK_INST_n_0),
        .Rst_to_spi(rst_to_spi_int),
        .SPISEL_sync(SPISEL_sync),
        .ext_spi_clk(ext_spi_clk),
        .p_6_out(p_6_out),
        .reset2ip_reset_int(reset2ip_reset_int),
        .transfer_start_reg(\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset SOFT_RESET_I
       (.\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] (spicr_5_txfifo_rst_frm_axi_clk),
        .\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg (SOFT_RESET_I_n_1),
        .\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg_0 (SOFT_RESET_I_n_2),
        .\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] (\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .IP2Bus_WrAck_1(IP2Bus_WrAck_1),
        .Tx_FIFO_Full_int(Tx_FIFO_Full_int),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .\icount_out_reg[2] (\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4 ),
        .ip2Bus_WrAck_core_reg(ip2Bus_WrAck_core_reg),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .p_2_in(p_2_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .reset_trig0(reset_trig0),
        .rst(reset_TxFIFO_ptr_int),
        .s_axi_aclk(s_axi_aclk),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_status_slave_sel_reg \STATUS_REG_MODE_0_GEN.STATUS_SLAVE_SEL_REG_I 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg (\FIFO_EXISTS.CLK_CROSS_I_n_20 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (ip2Bus_WrAck_core_reg_1),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .p_4_in(p_4_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[0]),
        .sr_3_MODF_int(sr_3_MODF_int));
  FDRE ip2Bus_RdAck_intr_reg_hole_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_controller_rd_ce_or_reduce),
        .Q(ip2Bus_RdAck_intr_reg_hole_d1),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_RdAck_intr_reg_hole_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_RdAck_intr_reg_hole0),
        .Q(ip2Bus_RdAck_intr_reg_hole),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_WrAck_intr_reg_hole_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg),
        .Q(ip2Bus_WrAck_intr_reg_hole_d1),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_WrAck_intr_reg_hole_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_intr_reg_hole0),
        .Q(ip2Bus_WrAck_intr_reg_hole),
        .R(reset2ip_reset_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_fifo_ifmodule
   (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg ,
    tx_FIFO_Occpncy_MSB_d1,
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    reset2ip_reset_int,
    Rx_FIFO_Full_Fifo_d1_synced_i,
    s_axi_aclk,
    Tx_FIFO_Empty_intr,
    Receive_ip2bus_error0,
    tx_occ_msb,
    dtr_underrun_to_axi_clk,
    irpt_wrack_d1_reg,
    scndry_out,
    prmry_in,
    s_axi_wdata,
    p_1_in26_in,
    p_1_in29_in,
    p_1_in32_in);
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg ;
  output tx_FIFO_Occpncy_MSB_d1;
  output \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  input reset2ip_reset_int;
  input Rx_FIFO_Full_Fifo_d1_synced_i;
  input s_axi_aclk;
  input Tx_FIFO_Empty_intr;
  input Receive_ip2bus_error0;
  input tx_occ_msb;
  input dtr_underrun_to_axi_clk;
  input irpt_wrack_d1_reg;
  input scndry_out;
  input prmry_in;
  input [2:0]s_axi_wdata;
  input p_1_in26_in;
  input p_1_in29_in;
  input p_1_in32_in;

  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg ;
  wire Receive_ip2bus_error0;
  wire Rx_FIFO_Full_Fifo_d1_synced_i;
  wire Tx_FIFO_Empty_intr;
  wire dtr_underrun_d1;
  wire dtr_underrun_to_axi_clk;
  wire irpt_wrack_d1_reg;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in32_in;
  wire prmry_in;
  wire rc_FIFO_Full_d1;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [2:0]s_axi_wdata;
  wire scndry_out;
  wire tx_FIFO_Empty_d1;
  wire tx_FIFO_Occpncy_MSB_d1;
  wire tx_occ_msb;

  LUT5 #(
    .INIT(32'hBAFF7530)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(tx_FIFO_Empty_d1),
        .I2(Tx_FIFO_Empty_intr),
        .I3(s_axi_wdata[0]),
        .I4(p_1_in32_in),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ));
  LUT5 #(
    .INIT(32'hBAFF7530)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(dtr_underrun_d1),
        .I2(dtr_underrun_to_axi_clk),
        .I3(s_axi_wdata[1]),
        .I4(p_1_in29_in),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ));
  LUT6 #(
    .INIT(64'hAABAFFFF55750030)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(rc_FIFO_Full_d1),
        .I2(scndry_out),
        .I3(prmry_in),
        .I4(s_axi_wdata[2]),
        .I5(p_1_in26_in),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ));
  FDRE Receive_ip2bus_error_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Receive_ip2bus_error0),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg ),
        .R(reset2ip_reset_int));
  FDRE dtr_underrun_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtr_underrun_to_axi_clk),
        .Q(dtr_underrun_d1),
        .R(reset2ip_reset_int));
  FDRE rc_FIFO_Full_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_FIFO_Full_Fifo_d1_synced_i),
        .Q(rc_FIFO_Full_d1),
        .R(reset2ip_reset_int));
  FDSE tx_FIFO_Empty_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_FIFO_Empty_intr),
        .Q(tx_FIFO_Empty_d1),
        .S(reset2ip_reset_int));
  FDRE tx_FIFO_Occpncy_MSB_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_occ_msb),
        .Q(tx_FIFO_Occpncy_MSB_d1),
        .R(reset2ip_reset_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_mode_0_module
   (sck_t,
    io0_t,
    ss_t,
    io1_t,
    SPISEL_sync,
    sck_o,
    slave_MODF_strobe_int,
    modf_strobe_int,
    spisel_d1_reg,
    SPIXfer_done_int_d1_reg_0,
    spiXfer_done_int,
    transfer_start_d1,
    transfer_start_d1_reg_0,
    Allow_Slave_MODF_Strobe,
    Allow_MODF_Strobe,
    Count_trigger,
    io1_o,
    serial_dout_int,
    dtr_underrun_int,
    ss_o,
    \OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ,
    p_9_out,
    rd_en,
    p_5_out,
    p_2_out,
    p_0_out,
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 ,
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_1 ,
    \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0 ,
    Q,
    D_0,
    ext_spi_clk,
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2 ,
    spisel,
    sck_i,
    R,
    RESET_SYNC_AX2S_2,
    Slave_MODF_strobe0,
    MODF_strobe0,
    Rst_to_spi,
    empty,
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2 ,
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 ,
    \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2 ,
    SPICR_2_MST_N_SLV_to_spi_clk,
    \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2 ,
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] ,
    spicr_1_spe_to_spi_clk,
    \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg ,
    \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg ,
    \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg ,
    \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg ,
    p_6_out,
    \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_0 ,
    spicr_3_cpol_to_spi_clk,
    spicr_4_cpha_to_spi_clk,
    dout,
    spicr_9_lsb_to_spi_clk,
    scndry_out,
    almost_full,
    spicr_0_loop_to_spi_clk,
    register_Data_slvsel_int,
    D,
    \OTHER_RATIO_GENERATE.serial_dout_int_reg_0 );
  output sck_t;
  output io0_t;
  output ss_t;
  output io1_t;
  output SPISEL_sync;
  output sck_o;
  output slave_MODF_strobe_int;
  output modf_strobe_int;
  output spisel_d1_reg;
  output SPIXfer_done_int_d1_reg_0;
  output spiXfer_done_int;
  output transfer_start_d1;
  output transfer_start_d1_reg_0;
  output Allow_Slave_MODF_Strobe;
  output Allow_MODF_Strobe;
  output Count_trigger;
  output io1_o;
  output serial_dout_int;
  output dtr_underrun_int;
  output [0:0]ss_o;
  output \OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ;
  output p_9_out;
  output rd_en;
  output p_5_out;
  output p_2_out;
  output p_0_out;
  output \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 ;
  output \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_1 ;
  output \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0 ;
  output [7:0]Q;
  input D_0;
  input ext_spi_clk;
  input \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2 ;
  input spisel;
  input sck_i;
  input R;
  input RESET_SYNC_AX2S_2;
  input Slave_MODF_strobe0;
  input MODF_strobe0;
  input Rst_to_spi;
  input empty;
  input \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2 ;
  input \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 ;
  input \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2 ;
  input SPICR_2_MST_N_SLV_to_spi_clk;
  input \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2 ;
  input \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] ;
  input spicr_1_spe_to_spi_clk;
  input \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg ;
  input \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg ;
  input \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg ;
  input \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg ;
  input p_6_out;
  input \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_0 ;
  input spicr_3_cpol_to_spi_clk;
  input spicr_4_cpha_to_spi_clk;
  input [7:0]dout;
  input spicr_9_lsb_to_spi_clk;
  input scndry_out;
  input almost_full;
  input spicr_0_loop_to_spi_clk;
  input register_Data_slvsel_int;
  input [0:0]D;
  input [0:0]\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ;

  wire Allow_MODF_Strobe;
  wire Allow_MODF_Strobe_i_1_n_0;
  wire Allow_Slave_MODF_Strobe;
  wire [1:0]Count;
  wire Count_trigger;
  wire Count_trigger_d1;
  wire [0:0]D;
  wire \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0 ;
  wire \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2_n_0 ;
  wire D_0;
  wire \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0 ;
  wire \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0 ;
  wire \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0 ;
  wire \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0 ;
  wire \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2 ;
  wire \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2 ;
  wire \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2 ;
  wire \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2 ;
  wire \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg ;
  wire \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg ;
  wire \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg ;
  wire \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg ;
  wire MODF_strobe0;
  wire \OTHER_RATIO_GENERATE.Count[2]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count[3]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count[4]_i_3_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count[4]_i_4_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ;
  wire \OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ;
  wire \OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ;
  wire \OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ;
  wire \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0 ;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1] ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2] ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3] ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4] ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5] ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6] ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7] ;
  wire \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0 ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0 ;
  wire \OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0 ;
  wire [0:0]\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ;
  wire [7:0]Q;
  wire R;
  wire \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0 ;
  wire RESET_SYNC_AX2S_2;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_1 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0 ;
  wire [0:2]Ratio_Count;
  wire Rst_to_spi;
  wire SCK_I_sync;
  wire SPICR_2_MST_N_SLV_to_spi_clk;
  wire SPISEL_sync;
  wire SPIXfer_done_int_d1;
  wire SPIXfer_done_int_d1_reg_0;
  wire SPIXfer_done_int_pulse;
  wire SPIXfer_done_int_pulse_d1;
  wire SR_5_Tx_Empty_d1;
  wire SR_5_Tx_comeplete_Empty;
  wire SR_5_Tx_comeplete_Empty_i_1_n_0;
  wire \SS_O[0]_i_3_n_0 ;
  wire \SS_O[0]_i_4_n_0 ;
  wire Slave_MODF_strobe0;
  wire almost_full;
  wire [7:0]dout;
  wire drr_Overrun_int;
  wire dtr_underrun_int;
  wire empty;
  wire ext_spi_clk;
  wire \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] ;
  wire io0_t;
  wire io1_o;
  wire io1_t;
  wire load;
  wire modf_strobe_int;
  wire p_0_out;
  wire p_17_out;
  wire p_19_out20_out;
  wire p_2_out;
  wire p_37_out;
  wire p_3_in;
  wire p_5_out;
  wire p_6_out;
  wire p_9_out;
  wire rd_en;
  wire register_Data_slvsel_int;
  wire [0:7]rx_shft_reg_mode_0011;
  wire [0:7]rx_shft_reg_mode_0110;
  wire [0:7]rx_shft_reg_s;
  wire sck_d1;
  wire sck_d2;
  wire sck_i;
  wire sck_i_d1;
  wire sck_o;
  wire sck_o_int;
  wire sck_t;
  wire scndry_out;
  wire serial_dout_int;
  wire slave_MODF_strobe_int;
  wire spiXfer_done_int;
  (* RTL_KEEP = "yes" *) wire [1:0]spi_cntrl_ps;
  wire spicr_0_loop_to_spi_clk;
  wire spicr_1_spe_to_spi_clk;
  wire spicr_3_cpol_to_spi_clk;
  wire spicr_4_cpha_to_spi_clk;
  wire spicr_9_lsb_to_spi_clk;
  wire spisel;
  wire spisel_d1;
  wire spisel_d1_reg;
  wire spisel_once_1;
  wire spisel_once_1_i_1_n_0;
  wire [0:0]ss_o;
  wire ss_t;
  wire stop_clock;
  wire stop_clock_reg;
  wire transfer_start_d1;
  wire transfer_start_d1_reg_0;

  LUT2 #(
    .INIT(4'h2)) 
    Allow_MODF_Strobe_i_1
       (.I0(Allow_MODF_Strobe),
        .I1(SPICR_2_MST_N_SLV_to_spi_clk),
        .O(Allow_MODF_Strobe_i_1_n_0));
  FDSE Allow_MODF_Strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Allow_MODF_Strobe_i_1_n_0),
        .Q(Allow_MODF_Strobe),
        .S(RESET_SYNC_AX2S_2));
  FDSE Allow_Slave_MODF_Strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2 ),
        .Q(Allow_Slave_MODF_Strobe),
        .S(RESET_SYNC_AX2S_2));
  LUT6 #(
    .INIT(64'h00000000AA228000)) 
    \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1 
       (.I0(\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2_n_0 ),
        .I1(spicr_1_spe_to_spi_clk),
        .I2(SPIXfer_done_int_pulse),
        .I3(SR_5_Tx_comeplete_Empty),
        .I4(dtr_underrun_int),
        .I5(SPICR_2_MST_N_SLV_to_spi_clk),
        .O(\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2 
       (.I0(SPISEL_sync),
        .I1(Rst_to_spi),
        .O(\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2_n_0 ));
  FDRE \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0 ),
        .Q(dtr_underrun_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h111111110000FCCC)) 
    \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1 
       (.I0(SR_5_Tx_comeplete_Empty),
        .I1(spi_cntrl_ps[0]),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0 ),
        .I4(empty),
        .I5(spi_cntrl_ps[1]),
        .O(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2 
       (.I0(transfer_start_d1_reg_0),
        .I1(transfer_start_d1),
        .O(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1 
       (.I0(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0 ),
        .I1(spiXfer_done_int),
        .I2(register_Data_slvsel_int),
        .I3(spi_cntrl_ps[0]),
        .O(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008300838083808)) 
    \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2 
       (.I0(empty),
        .I1(spi_cntrl_ps[0]),
        .I2(spi_cntrl_ps[1]),
        .I3(SR_5_Tx_comeplete_Empty),
        .I4(spicr_0_loop_to_spi_clk),
        .I5(spiXfer_done_int),
        .O(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "transfer_okay:01,temp_transfer_okay:10,idle:00" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0 ),
        .Q(spi_cntrl_ps[0]),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "transfer_okay:01,temp_transfer_okay:10,idle:00" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0 ),
        .Q(spi_cntrl_ps[1]),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \LOCAL_TX_EMPTY_FIFO_12_GEN.DRR_Overrun_reg_int_i_1 
       (.I0(scndry_out),
        .I1(almost_full),
        .I2(spiXfer_done_int),
        .I3(drr_Overrun_int),
        .O(p_37_out));
  FDRE \LOCAL_TX_EMPTY_FIFO_12_GEN.DRR_Overrun_reg_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_37_out),
        .Q(drr_Overrun_int),
        .R(Rst_to_spi));
  LUT1 #(
    .INIT(2'h1)) 
    \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_i_1 
       (.I0(\LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0 ),
        .O(stop_clock));
  FDRE \LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(stop_clock),
        .Q(stop_clock_reg),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_i_1 
       (.I0(drr_Overrun_int),
        .I1(\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg ),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_i_1 
       (.I0(modf_strobe_int),
        .I1(\LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg ),
        .O(p_5_out));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_i_1 
       (.I0(spiXfer_done_int),
        .I1(\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg ),
        .O(p_2_out));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg ),
        .I1(spisel_d1),
        .I2(spisel_d1_reg),
        .O(p_9_out));
  FDRE MODF_strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(MODF_strobe0),
        .Q(modf_strobe_int),
        .R(RESET_SYNC_AX2S_2));
  LUT2 #(
    .INIT(4'h1)) 
    \OTHER_RATIO_GENERATE.Count[0]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I1(load),
        .O(Count[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \OTHER_RATIO_GENERATE.Count[1]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I2(load),
        .O(Count[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \OTHER_RATIO_GENERATE.Count[2]_i_1 
       (.I0(load),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .O(\OTHER_RATIO_GENERATE.Count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \OTHER_RATIO_GENERATE.Count[3]_i_1 
       (.I0(load),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .I4(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .O(\OTHER_RATIO_GENERATE.Count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDDFD)) 
    \OTHER_RATIO_GENERATE.Count[4]_i_1 
       (.I0(transfer_start_d1_reg_0),
        .I1(Rst_to_spi),
        .I2(SPISEL_sync),
        .I3(SPICR_2_MST_N_SLV_to_spi_clk),
        .I4(SPIXfer_done_int_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20202020202F2F20)) 
    \OTHER_RATIO_GENERATE.Count[4]_i_2 
       (.I0(\OTHER_RATIO_GENERATE.Count[4]_i_4_n_0 ),
        .I1(load),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(SCK_I_sync),
        .I4(sck_i_d1),
        .I5(SPISEL_sync),
        .O(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \OTHER_RATIO_GENERATE.Count[4]_i_3 
       (.I0(load),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I4(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .O(\OTHER_RATIO_GENERATE.Count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OTHER_RATIO_GENERATE.Count[4]_i_4 
       (.I0(Count_trigger_d1),
        .I1(Count_trigger),
        .O(\OTHER_RATIO_GENERATE.Count[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[0] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(Count[0]),
        .Q(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[1] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(Count[1]),
        .Q(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[2] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Count[2]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[3] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Count[3]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[4] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Count[4]_i_3_n_0 ),
        .Q(load),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1 
       (.I0(Count_trigger),
        .I1(transfer_start_d1_reg_0),
        .I2(Rst_to_spi),
        .O(\OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.Count_trigger_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0 ),
        .Q(Count_trigger_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAA90000)) 
    \OTHER_RATIO_GENERATE.Count_trigger_i_1 
       (.I0(Count_trigger),
        .I1(Ratio_Count[0]),
        .I2(Ratio_Count[1]),
        .I3(Ratio_Count[2]),
        .I4(transfer_start_d1_reg_0),
        .I5(Rst_to_spi),
        .O(\OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.Count_trigger_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0 ),
        .Q(Count_trigger),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hFFA9FFFF)) 
    \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1 
       (.I0(Ratio_Count[0]),
        .I1(Ratio_Count[1]),
        .I2(Ratio_Count[2]),
        .I3(Rst_to_spi),
        .I4(transfer_start_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1 
       (.I0(Ratio_Count[1]),
        .I1(Ratio_Count[2]),
        .I2(Rst_to_spi),
        .I3(transfer_start_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1 
       (.I0(Ratio_Count[2]),
        .I1(Rst_to_spi),
        .I2(transfer_start_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.Ratio_Count_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0 ),
        .Q(Ratio_Count[0]),
        .R(1'b0));
  FDRE \OTHER_RATIO_GENERATE.Ratio_Count_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0 ),
        .Q(Ratio_Count[1]),
        .R(1'b0));
  FDRE \OTHER_RATIO_GENERATE.Ratio_Count_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0 ),
        .Q(Ratio_Count[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OTHER_RATIO_GENERATE.Serial_Dout_i_1 
       (.I0(p_3_in),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] ),
        .I3(\OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0 ),
        .I4(io1_o),
        .O(\OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101F1010101F101F)) 
    \OTHER_RATIO_GENERATE.Serial_Dout_i_2 
       (.I0(SPIXfer_done_int_d1),
        .I1(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(empty),
        .I5(SR_5_Tx_Empty_d1),
        .O(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ));
  LUT6 #(
    .INIT(64'hF7FFF500F7FFF5FF)) 
    \OTHER_RATIO_GENERATE.Serial_Dout_i_4 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I1(transfer_start_d1),
        .I2(SPIXfer_done_int_d1),
        .I3(SPICR_2_MST_N_SLV_to_spi_clk),
        .I4(transfer_start_d1_reg_0),
        .I5(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0 ),
        .O(\OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0 ));
  FDSE \OTHER_RATIO_GENERATE.Serial_Dout_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0 ),
        .Q(io1_o),
        .S(Rst_to_spi));
  LUT5 #(
    .INIT(32'hCACFC0CF)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1 
       (.I0(transfer_start_d1_reg_0),
        .I1(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0 ),
        .I4(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0 ),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1] ),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(dout[0]),
        .I3(spicr_9_lsb_to_spi_clk),
        .I4(dout[7]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFFFF2F2F2F2F2)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3 
       (.I0(transfer_start_d1_reg_0),
        .I1(transfer_start_d1),
        .I2(SPIXfer_done_int_d1),
        .I3(Count_trigger_d1),
        .I4(Count_trigger),
        .I5(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4 
       (.I0(SPIXfer_done_int_d1_reg_0),
        .I1(empty),
        .I2(SR_5_Tx_Empty_d1),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00060900)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5 
       (.I0(spicr_3_cpol_to_spi_clk),
        .I1(spicr_4_cpha_to_spi_clk),
        .I2(SPISEL_sync),
        .I3(SCK_I_sync),
        .I4(sck_i_d1),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2] ),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(dout[1]),
        .I3(spicr_9_lsb_to_spi_clk),
        .I4(dout[6]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3] ),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(dout[2]),
        .I3(spicr_9_lsb_to_spi_clk),
        .I4(dout[5]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4] ),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(dout[3]),
        .I3(spicr_9_lsb_to_spi_clk),
        .I4(dout[4]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5] ),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(dout[4]),
        .I3(spicr_9_lsb_to_spi_clk),
        .I4(dout[3]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6] ),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(dout[5]),
        .I3(spicr_9_lsb_to_spi_clk),
        .I4(dout[2]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7] ),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(dout[6]),
        .I3(spicr_9_lsb_to_spi_clk),
        .I4(dout[1]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[0] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0 ),
        .Q(p_3_in),
        .R(Rst_to_spi));
  FDSE \OTHER_RATIO_GENERATE.Shift_Reg_reg[1] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1] ),
        .S(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[2] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2] ),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[3] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[4] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4] ),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[5] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5] ),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[6] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6] ),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(D),
        .Q(\OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7] ),
        .R(Rst_to_spi));
  LUT3 #(
    .INIT(8'h08)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011[0]_i_1 
       (.I0(sck_d1),
        .I1(transfer_start_d1_reg_0),
        .I2(sck_d2),
        .O(p_19_out20_out));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[0] 
       (.C(ext_spi_clk),
        .CE(p_19_out20_out),
        .D(rx_shft_reg_mode_0011[1]),
        .Q(rx_shft_reg_mode_0011[0]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[1] 
       (.C(ext_spi_clk),
        .CE(p_19_out20_out),
        .D(rx_shft_reg_mode_0011[2]),
        .Q(rx_shft_reg_mode_0011[1]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[2] 
       (.C(ext_spi_clk),
        .CE(p_19_out20_out),
        .D(rx_shft_reg_mode_0011[3]),
        .Q(rx_shft_reg_mode_0011[2]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[3] 
       (.C(ext_spi_clk),
        .CE(p_19_out20_out),
        .D(rx_shft_reg_mode_0011[4]),
        .Q(rx_shft_reg_mode_0011[3]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[4] 
       (.C(ext_spi_clk),
        .CE(p_19_out20_out),
        .D(rx_shft_reg_mode_0011[5]),
        .Q(rx_shft_reg_mode_0011[4]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[5] 
       (.C(ext_spi_clk),
        .CE(p_19_out20_out),
        .D(rx_shft_reg_mode_0011[6]),
        .Q(rx_shft_reg_mode_0011[5]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[6] 
       (.C(ext_spi_clk),
        .CE(p_19_out20_out),
        .D(rx_shft_reg_mode_0011[7]),
        .Q(rx_shft_reg_mode_0011[6]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[7] 
       (.C(ext_spi_clk),
        .CE(p_19_out20_out),
        .D(\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ),
        .Q(rx_shft_reg_mode_0011[7]),
        .R(Rst_to_spi));
  LUT3 #(
    .INIT(8'h08)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1 
       (.I0(sck_d2),
        .I1(transfer_start_d1_reg_0),
        .I2(sck_d1),
        .O(p_17_out));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[0] 
       (.C(ext_spi_clk),
        .CE(p_17_out),
        .D(rx_shft_reg_mode_0110[1]),
        .Q(rx_shft_reg_mode_0110[0]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[1] 
       (.C(ext_spi_clk),
        .CE(p_17_out),
        .D(rx_shft_reg_mode_0110[2]),
        .Q(rx_shft_reg_mode_0110[1]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[2] 
       (.C(ext_spi_clk),
        .CE(p_17_out),
        .D(rx_shft_reg_mode_0110[3]),
        .Q(rx_shft_reg_mode_0110[2]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[3] 
       (.C(ext_spi_clk),
        .CE(p_17_out),
        .D(rx_shft_reg_mode_0110[4]),
        .Q(rx_shft_reg_mode_0110[3]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[4] 
       (.C(ext_spi_clk),
        .CE(p_17_out),
        .D(rx_shft_reg_mode_0110[5]),
        .Q(rx_shft_reg_mode_0110[4]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[5] 
       (.C(ext_spi_clk),
        .CE(p_17_out),
        .D(rx_shft_reg_mode_0110[6]),
        .Q(rx_shft_reg_mode_0110[5]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[6] 
       (.C(ext_spi_clk),
        .CE(p_17_out),
        .D(rx_shft_reg_mode_0110[7]),
        .Q(rx_shft_reg_mode_0110[6]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[7] 
       (.C(ext_spi_clk),
        .CE(p_17_out),
        .D(\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ),
        .Q(rx_shft_reg_mode_0110[7]),
        .R(Rst_to_spi));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0 ),
        .I1(SPICR_2_MST_N_SLV_to_spi_clk),
        .I2(SR_5_Tx_Empty_d1),
        .I3(empty),
        .I4(SPIXfer_done_int_d1_reg_0),
        .I5(p_6_out),
        .O(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[0] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[1]),
        .Q(rx_shft_reg_s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[1] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[2]),
        .Q(rx_shft_reg_s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[2] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[3]),
        .Q(rx_shft_reg_s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[3] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[4]),
        .Q(rx_shft_reg_s[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[4] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[5]),
        .Q(rx_shft_reg_s[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[5] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[6]),
        .Q(rx_shft_reg_s[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[6] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[7]),
        .Q(rx_shft_reg_s[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ),
        .Q(rx_shft_reg_s[7]),
        .R(1'b0));
  FDRE \OTHER_RATIO_GENERATE.sck_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_o_int),
        .Q(sck_d1),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.sck_d2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_d1),
        .Q(sck_d2),
        .R(Rst_to_spi));
  LUT6 #(
    .INIT(64'h0000AB0000000000)) 
    \OTHER_RATIO_GENERATE.sck_o_int_i_1 
       (.I0(\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2 ),
        .I1(SPIXfer_done_int_d1_reg_0),
        .I2(\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0 ),
        .I3(SPICR_2_MST_N_SLV_to_spi_clk),
        .I4(Rst_to_spi),
        .I5(\OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0 ),
        .O(\OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FFF9F9F60FF6060)) 
    \OTHER_RATIO_GENERATE.sck_o_int_i_3 
       (.I0(Count_trigger_d1),
        .I1(Count_trigger),
        .I2(transfer_start_d1_reg_0),
        .I3(\OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0 ),
        .I4(\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2 ),
        .I5(sck_o_int),
        .O(\OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \OTHER_RATIO_GENERATE.sck_o_int_i_4 
       (.I0(SPIXfer_done_int_d1_reg_0),
        .I1(transfer_start_d1),
        .I2(transfer_start_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.sck_o_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0 ),
        .Q(sck_o_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \OTHER_RATIO_GENERATE.serial_dout_int_i_1 
       (.I0(io1_o),
        .I1(spicr_0_loop_to_spi_clk),
        .I2(Rst_to_spi),
        .O(\OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.serial_dout_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0 ),
        .Q(serial_dout_int),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0 ),
        .Q(sck_o),
        .R(R));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2 
       (.I0(spicr_3_cpol_to_spi_clk),
        .I1(transfer_start_d1),
        .I2(load),
        .I3(transfer_start_d1_reg_0),
        .I4(sck_o_int),
        .O(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DDD0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1 
       (.I0(transfer_start_d1_reg_0),
        .I1(transfer_start_d1),
        .I2(\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_0 ),
        .I3(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3_n_0 ),
        .I4(SPIXfer_done_int_d1_reg_0),
        .I5(Rst_to_spi),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0 ),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_4 
       (.I0(Ratio_Count[0]),
        .I1(Ratio_Count[1]),
        .I2(Ratio_Count[2]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_5 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_1 ));
  FDRE \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0 ),
        .Q(SPIXfer_done_int_d1_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(rx_shft_reg_s[7]),
        .I4(spicr_9_lsb_to_spi_clk),
        .I5(rx_shft_reg_s[0]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2 
       (.I0(rx_shft_reg_mode_0110[0]),
        .I1(spicr_3_cpol_to_spi_clk),
        .I2(spicr_4_cpha_to_spi_clk),
        .I3(rx_shft_reg_mode_0011[0]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3 
       (.I0(rx_shft_reg_mode_0110[7]),
        .I1(spicr_3_cpol_to_spi_clk),
        .I2(spicr_4_cpha_to_spi_clk),
        .I3(rx_shft_reg_mode_0011[7]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(rx_shft_reg_s[6]),
        .I4(spicr_9_lsb_to_spi_clk),
        .I5(rx_shft_reg_s[1]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2 
       (.I0(rx_shft_reg_mode_0110[1]),
        .I1(spicr_3_cpol_to_spi_clk),
        .I2(spicr_4_cpha_to_spi_clk),
        .I3(rx_shft_reg_mode_0011[1]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3 
       (.I0(rx_shft_reg_mode_0110[6]),
        .I1(spicr_3_cpol_to_spi_clk),
        .I2(spicr_4_cpha_to_spi_clk),
        .I3(rx_shft_reg_mode_0011[6]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(rx_shft_reg_s[5]),
        .I4(spicr_9_lsb_to_spi_clk),
        .I5(rx_shft_reg_s[2]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2 
       (.I0(rx_shft_reg_mode_0110[2]),
        .I1(spicr_3_cpol_to_spi_clk),
        .I2(spicr_4_cpha_to_spi_clk),
        .I3(rx_shft_reg_mode_0011[2]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3 
       (.I0(rx_shft_reg_mode_0110[5]),
        .I1(spicr_3_cpol_to_spi_clk),
        .I2(spicr_4_cpha_to_spi_clk),
        .I3(rx_shft_reg_mode_0011[5]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(rx_shft_reg_s[4]),
        .I4(spicr_9_lsb_to_spi_clk),
        .I5(rx_shft_reg_s[3]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2 
       (.I0(rx_shft_reg_mode_0110[3]),
        .I1(spicr_3_cpol_to_spi_clk),
        .I2(spicr_4_cpha_to_spi_clk),
        .I3(rx_shft_reg_mode_0011[3]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3 
       (.I0(rx_shft_reg_mode_0110[4]),
        .I1(spicr_3_cpol_to_spi_clk),
        .I2(spicr_4_cpha_to_spi_clk),
        .I3(rx_shft_reg_mode_0011[4]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(rx_shft_reg_s[3]),
        .I4(spicr_9_lsb_to_spi_clk),
        .I5(rx_shft_reg_s[4]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(rx_shft_reg_s[2]),
        .I4(spicr_9_lsb_to_spi_clk),
        .I5(rx_shft_reg_s[5]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(rx_shft_reg_s[1]),
        .I4(spicr_9_lsb_to_spi_clk),
        .I5(rx_shft_reg_s[6]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0 ),
        .I2(SPICR_2_MST_N_SLV_to_spi_clk),
        .I3(rx_shft_reg_s[0]),
        .I4(spicr_9_lsb_to_spi_clk),
        .I5(rx_shft_reg_s[7]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[0] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[1] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[2] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[3] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[4] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[5] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[6] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[7] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    SCK_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_i),
        .Q(SCK_I_sync),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPISEL_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spisel),
        .Q(SPISEL_sync),
        .R(1'b0));
  FDRE SPIXfer_done_int_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_d1_reg_0),
        .Q(SPIXfer_done_int_d1),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    SPIXfer_done_int_pulse_d1_i_1
       (.I0(SPIXfer_done_int_d1_reg_0),
        .I1(SPIXfer_done_int_d1),
        .O(SPIXfer_done_int_pulse));
  FDRE SPIXfer_done_int_pulse_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse),
        .Q(SPIXfer_done_int_pulse_d1),
        .R(Rst_to_spi));
  FDRE SPIXfer_done_int_pulse_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse_d1),
        .Q(spiXfer_done_int),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPI_TRISTATE_CONTROL_II
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(sck_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPI_TRISTATE_CONTROL_III
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(io0_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPI_TRISTATE_CONTROL_IV
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(ss_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPI_TRISTATE_CONTROL_V
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2 ),
        .Q(io1_t),
        .R(1'b0));
  FDRE SR_5_Tx_Empty_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(empty),
        .Q(SR_5_Tx_Empty_d1),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hAE00)) 
    SR_5_Tx_comeplete_Empty_i_1
       (.I0(SR_5_Tx_comeplete_Empty),
        .I1(SPIXfer_done_int_d1_reg_0),
        .I2(SPIXfer_done_int_d1),
        .I3(empty),
        .O(SR_5_Tx_comeplete_Empty_i_1_n_0));
  FDRE SR_5_Tx_comeplete_Empty_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SR_5_Tx_comeplete_Empty_i_1_n_0),
        .Q(SR_5_Tx_comeplete_Empty),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55FF750F00FFFF)) 
    \SS_O[0]_i_2 
       (.I0(\SS_O[0]_i_3_n_0 ),
        .I1(spicr_0_loop_to_spi_clk),
        .I2(\SS_O[0]_i_4_n_0 ),
        .I3(spi_cntrl_ps[0]),
        .I4(empty),
        .I5(spi_cntrl_ps[1]),
        .O(\LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFFC8)) 
    \SS_O[0]_i_3 
       (.I0(spiXfer_done_int),
        .I1(SR_5_Tx_comeplete_Empty),
        .I2(register_Data_slvsel_int),
        .I3(stop_clock_reg),
        .O(\SS_O[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \SS_O[0]_i_4 
       (.I0(spiXfer_done_int),
        .I1(SR_5_Tx_comeplete_Empty),
        .O(\SS_O[0]_i_4_n_0 ));
  FDRE \SS_O_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2 ),
        .Q(ss_o),
        .R(1'b0));
  FDRE Slave_MODF_strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Slave_MODF_strobe0),
        .Q(slave_MODF_strobe_int),
        .R(RESET_SYNC_AX2S_2));
  LUT6 #(
    .INIT(64'hFFFFFFFF2020FF20)) 
    \gnuram_async_fifo.xpm_fifo_base_inst_i_3 
       (.I0(spisel_d1_reg),
        .I1(spisel_d1),
        .I2(spisel_once_1),
        .I3(transfer_start_d1_reg_0),
        .I4(transfer_start_d1),
        .I5(spiXfer_done_int),
        .O(rd_en));
  FDRE sck_i_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SCK_I_sync),
        .Q(sck_i_d1),
        .R(Rst_to_spi));
  FDSE spisel_d1_reg__0
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPISEL_sync),
        .Q(spisel_d1),
        .S(Rst_to_spi));
  FDSE spisel_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spisel_d1),
        .Q(spisel_d1_reg),
        .S(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    spisel_once_1_i_1
       (.I0(spisel_once_1),
        .I1(spisel_d1),
        .I2(spisel_d1_reg),
        .O(spisel_once_1_i_1_n_0));
  FDSE spisel_once_1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spisel_once_1_i_1_n_0),
        .Q(spisel_once_1),
        .S(Rst_to_spi));
  FDRE transfer_start_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start_d1_reg_0),
        .Q(transfer_start_d1),
        .R(Rst_to_spi));
  FDRE transfer_start_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 ),
        .Q(transfer_start_d1_reg_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_status_slave_sel_reg
   (sr_3_MODF_int,
    SPISSR_frm_axi_clk,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ,
    s_axi_aclk,
    reset2ip_reset_int,
    s_axi_wdata,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    Bus_RNW_reg,
    p_4_in);
  output sr_3_MODF_int;
  output SPISSR_frm_axi_clk;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  input s_axi_aclk;
  input reset2ip_reset_int;
  input [0:0]s_axi_wdata;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input Bus_RNW_reg;
  input p_4_in;

  wire Bus_RNW_reg;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ;
  wire SPISSR_frm_axi_clk;
  wire p_4_in;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sr_3_MODF_int;

  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1 
       (.I0(s_axi_wdata),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .I2(Bus_RNW_reg),
        .I3(p_4_in),
        .I4(SPISSR_frm_axi_clk),
        .O(\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ));
  FDSE \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ),
        .Q(SPISSR_frm_axi_clk),
        .S(reset2ip_reset_int));
  FDRE modf_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ),
        .Q(sr_3_MODF_int),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_sync_module
   (Allow_MODF_Strobe_reg,
    Rst_to_spi,
    p_6_out,
    SPISEL_sync,
    transfer_start_reg,
    reset2ip_reset_int,
    ext_spi_clk);
  output Allow_MODF_Strobe_reg;
  output Rst_to_spi;
  output p_6_out;
  input SPISEL_sync;
  input transfer_start_reg;
  input reset2ip_reset_int;
  input ext_spi_clk;

  wire Allow_MODF_Strobe_reg;
  wire Rst_to_spi;
  wire SPISEL_sync;
  wire Soft_Reset_frm_axi_d1;
  wire ext_spi_clk;
  wire p_6_out;
  wire reset2ip_reset_int;
  wire transfer_start_reg;

  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2 
       (.I0(Rst_to_spi),
        .I1(transfer_start_reg),
        .O(p_6_out));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_1
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(reset2ip_reset_int),
        .Q(Soft_Reset_frm_axi_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_2
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Soft_Reset_frm_axi_d1),
        .Q(Rst_to_spi),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Slave_MODF_strobe_i_1
       (.I0(Rst_to_spi),
        .I1(SPISEL_sync),
        .O(Allow_MODF_Strobe_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (SR,
    p_3_in,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ,
    Receive_ip2bus_error_reg,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ,
    \SPICR_data_int_reg[0] ,
    s_axi_rresp,
    ipif_glbl_irpt_enable_reg_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ,
    E,
    ip2Bus_WrAck_intr_reg_hole_d1_reg,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    SPICR_data_int_reg0,
    wr_ce_or_reduce_core_cmb,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ,
    bus2ip_wrce_int,
    IP2Bus_Error_1,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    reset_trig0,
    sw_rst_cond,
    irpt_wrack,
    interrupt_wrce_strb,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    Receive_ip2bus_error0,
    modf_reg,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_controller_rd_ce_or_reduce,
    rd_ce_or_reduce_core_cmb,
    s_axi_arready,
    s_axi_wready,
    ipif_glbl_irpt_enable_reg_reg_0,
    s_axi_rdata,
    s_axi_aclk,
    p_1_in,
    s_axi_arvalid,
    s_axi_wstrb,
    empty,
    ip2Bus_WrAck_core_reg_1,
    almost_full,
    ip2Bus_WrAck_core_reg_d1,
    Receive_ip2bus_error_reg_0,
    sw_rst_cond_d1,
    s_axi_wdata,
    irpt_wrack_d1,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    Q,
    spicr_8_tr_inhibit_frm_axi_clk,
    p_1_in14_in,
    p_1_in17_in,
    p_1_in20_in,
    p_1_in23_in,
    p_1_in26_in,
    p_1_in32_in,
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ,
    p_1_in35_in,
    dout,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \grdc.rd_data_count_i_reg[0] ,
    wr_data_count,
    SPISSR_frm_axi_clk,
    spicr_0_loop_frm_axi_clk,
    rx_fifo_empty_i,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    spicr_2_mst_n_slv_frm_axi_clk,
    Tx_FIFO_Full_int,
    spicr_3_cpol_frm_axi_clk,
    sr_3_MODF_int,
    spicr_4_cpha_frm_axi_clk,
    spisel_d1_reg_to_axi_clk,
    spicr_5_txfifo_rst_frm_axi_clk,
    spicr_6_rxfifo_rst_frm_axi_clk,
    ip2Bus_RdAck_core_reg,
    spicr_7_ss_frm_axi_clk,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    scndry_out,
    spicr_1_spe_frm_axi_clk,
    spicr_9_lsb_frm_axi_clk,
    \gwdc.wr_data_count_i_reg[2] ,
    s_axi_rready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ,
    s_axi_aresetn,
    p_15_out,
    p_16_out,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output p_3_in;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  output Receive_ip2bus_error_reg;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ;
  output \SPICR_data_int_reg[0] ;
  output [0:0]s_axi_rresp;
  output ipif_glbl_irpt_enable_reg_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ;
  output [0:0]E;
  output ip2Bus_WrAck_intr_reg_hole_d1_reg;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  output SPICR_data_int_reg0;
  output wr_ce_or_reduce_core_cmb;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  output [0:0]bus2ip_wrce_int;
  output IP2Bus_Error_1;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output reset_trig0;
  output sw_rst_cond;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output [8:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  output Receive_ip2bus_error0;
  output modf_reg;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_controller_rd_ce_or_reduce;
  output rd_ce_or_reduce_core_cmb;
  output s_axi_arready;
  output s_axi_wready;
  output ipif_glbl_irpt_enable_reg_reg_0;
  output [10:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]p_1_in;
  input s_axi_arvalid;
  input [1:0]s_axi_wstrb;
  input empty;
  input ip2Bus_WrAck_core_reg_1;
  input almost_full;
  input ip2Bus_WrAck_core_reg_d1;
  input Receive_ip2bus_error_reg_0;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input irpt_wrack_d1;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input [5:0]Q;
  input spicr_8_tr_inhibit_frm_axi_clk;
  input p_1_in14_in;
  input p_1_in17_in;
  input p_1_in20_in;
  input p_1_in23_in;
  input p_1_in26_in;
  input p_1_in32_in;
  input \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ;
  input p_1_in35_in;
  input [7:0]dout;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \grdc.rd_data_count_i_reg[0] ;
  input [0:0]wr_data_count;
  input SPISSR_frm_axi_clk;
  input spicr_0_loop_frm_axi_clk;
  input rx_fifo_empty_i;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input spicr_2_mst_n_slv_frm_axi_clk;
  input Tx_FIFO_Full_int;
  input spicr_3_cpol_frm_axi_clk;
  input sr_3_MODF_int;
  input spicr_4_cpha_frm_axi_clk;
  input spisel_d1_reg_to_axi_clk;
  input spicr_5_txfifo_rst_frm_axi_clk;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input ip2Bus_RdAck_core_reg;
  input spicr_7_ss_frm_axi_clk;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input scndry_out;
  input spicr_1_spe_frm_axi_clk;
  input spicr_9_lsb_frm_axi_clk;
  input \gwdc.wr_data_count_i_reg[2] ;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [10:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ;
  input s_axi_aresetn;
  input p_15_out;
  input p_16_out;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;

  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire IP2Bus_Error_1;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0 ;
  wire [10:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  wire \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ;
  wire [5:0]Q;
  wire Receive_ip2bus_error0;
  wire Receive_ip2bus_error_reg;
  wire Receive_ip2bus_error_reg_0;
  wire SPICR_data_int_reg0;
  wire \SPICR_data_int_reg[0] ;
  wire SPISSR_frm_axi_clk;
  wire [0:0]SR;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire Tx_FIFO_Full_int;
  wire almost_full;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire \bus2ip_addr_i_reg_n_0_[6] ;
  wire bus2ip_rnw_i_reg_n_0;
  wire [0:0]bus2ip_wrce_int;
  wire clear;
  wire [7:0]dout;
  wire empty;
  wire \grdc.rd_data_count_i_reg[0] ;
  wire \gwdc.wr_data_count_i_reg[2] ;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire modf_reg;
  wire p_0_in1_in;
  wire [1:0]p_0_out;
  wire p_15_out;
  wire p_16_out;
  wire [0:0]p_1_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_3_in;
  wire p_5_in;
  wire [5:0]plusOp;
  wire rd_ce_or_reduce_core_cmb;
  wire reset_trig0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  (* RTL_KEEP = "yes" *) wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  (* RTL_KEEP = "yes" *) wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [4:0]s_axi_wdata;
  wire s_axi_wready;
  wire [1:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire scndry_out;
  wire spicr_0_loop_frm_axi_clk;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_9_lsb_frm_axi_clk;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wr_ce_or_reduce_core_cmb;
  wire [0:0]wr_data_count;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_arready),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(s_axi_wready),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(s_axi_arready),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .O(plusOp[5]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.D(D),
        .E(E),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ),
        .\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 (\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 ),
        .Q(start2),
        .Receive_ip2bus_error0(Receive_ip2bus_error0),
        .Receive_ip2bus_error_reg(Receive_ip2bus_error_reg),
        .Receive_ip2bus_error_reg_0(Receive_ip2bus_error_reg_0),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .\SPICR_data_int_reg[0] (\SPICR_data_int_reg[0] ),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .Tx_FIFO_Full_int(Tx_FIFO_Full_int),
        .almost_full(almost_full),
        .\bus2ip_addr_i_reg[6] ({\bus2ip_addr_i_reg_n_0_[6] ,\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_n_0),
        .bus2ip_rnw_i_reg_0(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0 ),
        .bus2ip_rnw_i_reg_1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0 ),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .dout(dout),
        .empty(empty),
        .\grdc.rd_data_count_i_reg[0] (\grdc.rd_data_count_i_reg[0] ),
        .\gwdc.wr_data_count_i_reg[2] (\gwdc.wr_data_count_i_reg[2] ),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1_reg(ip2Bus_WrAck_intr_reg_hole_d1_reg),
        .\ip_irpt_enable_reg_reg[8] (Q),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg_0),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .is_read_reg(is_read_reg_n_0),
        .is_write_reg(is_write_reg_n_0),
        .modf_reg(modf_reg),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_3_in(p_3_in),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(reset_trig0),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_wdata(s_axi_wdata[4]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb[1]),
        .scndry_out(scndry_out),
        .spicr_0_loop_frm_axi_clk(spicr_0_loop_frm_axi_clk),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_5_txfifo_rst_frm_axi_clk(spicr_5_txfifo_rst_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spicr_9_lsb_frm_axi_clk(spicr_9_lsb_frm_axi_clk),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wr_ce_or_reduce_core_cmb(wr_ce_or_reduce_core_cmb),
        .wr_data_count(wr_data_count));
  LUT2 #(
    .INIT(4'h1)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2 
       (.I0(bus2ip_rnw_i_reg_n_0),
        .I1(s_axi_wstrb[1]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFFFFFFF)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2 
       (.I0(bus2ip_rnw_i_reg_n_0),
        .I1(s_axi_wstrb[0]),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[1]),
        .I5(s_axi_wdata[3]),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_2 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[6]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[6] ),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in1_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(SR),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(s_axi_bresp),
        .I1(s_axi_bresp_i),
        .I2(p_1_in),
        .I3(SR),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_wready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(p_1_in),
        .Q(s_axi_rresp),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_arready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(s_axi_wready),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(s_axi_arready),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset
   (sw_rst_cond_d1,
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ,
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg_0 ,
    rst,
    reset2ip_reset_int,
    IP2Bus_WrAck_1,
    bus2ip_reset_ipif_inverted,
    sw_rst_cond,
    s_axi_aclk,
    reset_trig0,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ,
    \icount_out_reg[2] ,
    Tx_FIFO_Full_int,
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ,
    p_2_in,
    ip2Bus_WrAck_intr_reg_hole,
    ip2Bus_WrAck_core_reg);
  output sw_rst_cond_d1;
  output \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ;
  output \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg_0 ;
  output rst;
  output reset2ip_reset_int;
  output IP2Bus_WrAck_1;
  input bus2ip_reset_ipif_inverted;
  input sw_rst_cond;
  input s_axi_aclk;
  input reset_trig0;
  input \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  input \icount_out_reg[2] ;
  input Tx_FIFO_Full_int;
  input \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  input p_2_in;
  input ip2Bus_WrAck_intr_reg_hole;
  input ip2Bus_WrAck_core_reg;

  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  wire FF_WRACK_i_1_n_0;
  wire \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ;
  wire \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg_0 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  wire IP2Bus_WrAck_1;
  wire \RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ;
  wire S;
  wire Tx_FIFO_Full_int;
  wire bus2ip_reset_ipif_inverted;
  wire [1:15]flop_q_chain;
  wire \icount_out_reg[2] ;
  wire ip2Bus_WrAck_core_reg;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire p_2_in;
  wire reset2ip_reset_int;
  wire reset_trig0;
  wire rst;
  wire s_axi_aclk;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FF_WRACK
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FF_WRACK_i_1_n_0),
        .Q(wrack),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FF_WRACK_i_1
       (.I0(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ),
        .I1(flop_q_chain[15]),
        .O(FF_WRACK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_1 
       (.I0(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ),
        .I1(bus2ip_reset_ipif_inverted),
        .I2(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .I3(\icount_out_reg[2] ),
        .I4(Tx_FIFO_Full_int),
        .O(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I1(wrack),
        .I2(p_2_in),
        .I3(ip2Bus_WrAck_intr_reg_hole),
        .I4(ip2Bus_WrAck_core_reg),
        .O(IP2Bus_WrAck_1));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain[1]),
        .R(bus2ip_reset_ipif_inverted));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[10].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[11]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[10].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[10]),
        .O(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[11].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[12]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[11].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[11]),
        .O(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[12].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[13]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[12].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[12]),
        .O(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[13].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[14]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[13].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[13]),
        .O(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[14].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[15]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[14].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[14]),
        .O(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[15].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ),
        .Q(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ),
        .R(bus2ip_reset_ipif_inverted));
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[15].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[15]),
        .O(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[2]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[1]),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[3]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[2]),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[4]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[3]),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[4].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[5]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[4].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[4]),
        .O(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[5].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[6]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[5].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[5]),
        .O(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[6].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[7]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[6].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[6]),
        .O(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[7].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[8]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[7].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[7]),
        .O(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[8].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[9]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[8].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[8]),
        .O(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[9].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[10]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[9].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[9]),
        .O(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hE)) 
    RESET_SYNC_AX2S_1_i_1
       (.I0(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ),
        .I1(bus2ip_reset_ipif_inverted),
        .O(reset2ip_reset_int));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gnuram_async_fifo.xpm_fifo_base_inst_i_1 
       (.I0(\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg ),
        .I1(bus2ip_reset_ipif_inverted),
        .I2(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .O(rst));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(bus2ip_reset_ipif_inverted));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond),
        .Q(sw_rst_cond_d1),
        .R(bus2ip_reset_ipif_inverted));
endmodule

(* CHECK_LICENSE_TYPE = "system_axi_quad_spi_0_0,axi_quad_spi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_quad_spi,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    sck_i,
    sck_o,
    sck_t,
    ss_i,
    ss_o,
    ss_t,
    ip2intc_irpt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input ext_spi_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 lite_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME lite_clk, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 lite_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME lite_reset, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [6:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR" *) input [6:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_I" *) (* x_interface_parameter = "XIL_INTERFACENAME SPI_0, BOARD.ASSOCIATED_PARAM QSPI_BOARD_INTERFACE" *) input io0_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_O" *) output io0_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_T" *) output io0_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_I" *) input io1_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_O" *) output io1_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_T" *) output io1_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SCK_I" *) input sck_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SCK_O" *) output sck_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SCK_T" *) output sck_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_I" *) input [0:0]ss_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_O" *) output [0:0]ss_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_T" *) output ss_t;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *) output ip2intc_irpt;

  wire ext_spi_clk;
  wire io0_i;
  wire io0_o;
  wire io0_t;
  wire io1_i;
  wire io1_o;
  wire io1_t;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire [0:0]ss_i;
  wire [0:0]ss_o;
  wire ss_t;
  wire NLW_U0_cfgclk_UNCONNECTED;
  wire NLW_U0_cfgmclk_UNCONNECTED;
  wire NLW_U0_eos_UNCONNECTED;
  wire NLW_U0_io0_1_o_UNCONNECTED;
  wire NLW_U0_io0_1_t_UNCONNECTED;
  wire NLW_U0_io1_1_o_UNCONNECTED;
  wire NLW_U0_io1_1_t_UNCONNECTED;
  wire NLW_U0_io2_1_o_UNCONNECTED;
  wire NLW_U0_io2_1_t_UNCONNECTED;
  wire NLW_U0_io2_o_UNCONNECTED;
  wire NLW_U0_io2_t_UNCONNECTED;
  wire NLW_U0_io3_1_o_UNCONNECTED;
  wire NLW_U0_io3_1_t_UNCONNECTED;
  wire NLW_U0_io3_o_UNCONNECTED;
  wire NLW_U0_io3_t_UNCONNECTED;
  wire NLW_U0_preq_UNCONNECTED;
  wire NLW_U0_s_axi4_arready_UNCONNECTED;
  wire NLW_U0_s_axi4_awready_UNCONNECTED;
  wire NLW_U0_s_axi4_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi4_rlast_UNCONNECTED;
  wire NLW_U0_s_axi4_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi4_wready_UNCONNECTED;
  wire NLW_U0_ss_1_o_UNCONNECTED;
  wire NLW_U0_ss_1_t_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi4_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_rresp_UNCONNECTED;

  (* Async_Clk = "0" *) 
  (* C_DUAL_QUAD_MODE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FIFO_DEPTH = "16" *) 
  (* C_INSTANCE = "axi_quad_spi_inst" *) 
  (* C_LSB_STUP = "0" *) 
  (* C_NUM_SS_BITS = "1" *) 
  (* C_NUM_TRANSFER_BITS = "8" *) 
  (* C_SCK_RATIO = "16" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SHARED_STARTUP = "0" *) 
  (* C_SPI_MEMORY = "1" *) 
  (* C_SPI_MEM_ADDR_BITS = "24" *) 
  (* C_SPI_MODE = "0" *) 
  (* C_SUB_FAMILY = "zynq" *) 
  (* C_S_AXI4_ADDR_WIDTH = "24" *) 
  (* C_S_AXI4_BASEADDR = "-1" *) 
  (* C_S_AXI4_DATA_WIDTH = "32" *) 
  (* C_S_AXI4_HIGHADDR = "0" *) 
  (* C_S_AXI4_ID_WIDTH = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TYPE_OF_AXI4_INTERFACE = "0" *) 
  (* C_UC_FAMILY = "0" *) 
  (* C_USE_STARTUP = "0" *) 
  (* C_USE_STARTUP_EXT = "0" *) 
  (* C_XIP_MODE = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi U0
       (.cfgclk(NLW_U0_cfgclk_UNCONNECTED),
        .cfgmclk(NLW_U0_cfgmclk_UNCONNECTED),
        .clk(1'b0),
        .eos(NLW_U0_eos_UNCONNECTED),
        .ext_spi_clk(ext_spi_clk),
        .gsr(1'b0),
        .gts(1'b0),
        .io0_1_i(1'b0),
        .io0_1_o(NLW_U0_io0_1_o_UNCONNECTED),
        .io0_1_t(NLW_U0_io0_1_t_UNCONNECTED),
        .io0_i(io0_i),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1_1_i(1'b0),
        .io1_1_o(NLW_U0_io1_1_o_UNCONNECTED),
        .io1_1_t(NLW_U0_io1_1_t_UNCONNECTED),
        .io1_i(io1_i),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .io2_1_i(1'b0),
        .io2_1_o(NLW_U0_io2_1_o_UNCONNECTED),
        .io2_1_t(NLW_U0_io2_1_t_UNCONNECTED),
        .io2_i(1'b0),
        .io2_o(NLW_U0_io2_o_UNCONNECTED),
        .io2_t(NLW_U0_io2_t_UNCONNECTED),
        .io3_1_i(1'b0),
        .io3_1_o(NLW_U0_io3_1_o_UNCONNECTED),
        .io3_1_t(NLW_U0_io3_1_t_UNCONNECTED),
        .io3_i(1'b0),
        .io3_o(NLW_U0_io3_o_UNCONNECTED),
        .io3_t(NLW_U0_io3_t_UNCONNECTED),
        .ip2intc_irpt(ip2intc_irpt),
        .keyclearb(1'b0),
        .pack(1'b0),
        .preq(NLW_U0_preq_UNCONNECTED),
        .s_axi4_aclk(1'b0),
        .s_axi4_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_arburst({1'b0,1'b0}),
        .s_axi4_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_aresetn(1'b0),
        .s_axi4_arid(1'b0),
        .s_axi4_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_arlock(1'b0),
        .s_axi4_arprot({1'b0,1'b0,1'b0}),
        .s_axi4_arready(NLW_U0_s_axi4_arready_UNCONNECTED),
        .s_axi4_arsize({1'b0,1'b0,1'b0}),
        .s_axi4_arvalid(1'b0),
        .s_axi4_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awburst({1'b0,1'b0}),
        .s_axi4_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awid(1'b0),
        .s_axi4_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awlock(1'b0),
        .s_axi4_awprot({1'b0,1'b0,1'b0}),
        .s_axi4_awready(NLW_U0_s_axi4_awready_UNCONNECTED),
        .s_axi4_awsize({1'b0,1'b0,1'b0}),
        .s_axi4_awvalid(1'b0),
        .s_axi4_bid(NLW_U0_s_axi4_bid_UNCONNECTED[0]),
        .s_axi4_bready(1'b0),
        .s_axi4_bresp(NLW_U0_s_axi4_bresp_UNCONNECTED[1:0]),
        .s_axi4_bvalid(NLW_U0_s_axi4_bvalid_UNCONNECTED),
        .s_axi4_rdata(NLW_U0_s_axi4_rdata_UNCONNECTED[31:0]),
        .s_axi4_rid(NLW_U0_s_axi4_rid_UNCONNECTED[0]),
        .s_axi4_rlast(NLW_U0_s_axi4_rlast_UNCONNECTED),
        .s_axi4_rready(1'b0),
        .s_axi4_rresp(NLW_U0_s_axi4_rresp_UNCONNECTED[1:0]),
        .s_axi4_rvalid(NLW_U0_s_axi4_rvalid_UNCONNECTED),
        .s_axi4_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wlast(1'b0),
        .s_axi4_wready(NLW_U0_s_axi4_wready_UNCONNECTED),
        .s_axi4_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wvalid(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .spisel(1'b1),
        .ss_1_i(1'b0),
        .ss_1_o(NLW_U0_ss_1_o_UNCONNECTED),
        .ss_1_t(NLW_U0_ss_1_t_UNCONNECTED),
        .ss_i(ss_i),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .usrcclkts(1'b0),
        .usrdoneo(1'b1),
        .usrdonets(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[3] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[3] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[3] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[3] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__3
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_5
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    wrst_busy,
    E,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_16
   (Q,
    wrst_busy,
    E,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (D,
    \grdc.rd_data_count_i_reg[2] ,
    \grdc.rd_data_count_i_reg[2]_0 ,
    \count_value_i_reg[0]_0 ,
    src_in_bin,
    Q,
    \count_value_i_reg[2] ,
    out,
    rd_en,
    ram_empty_i,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    rd_clk);
  output [0:0]D;
  output \grdc.rd_data_count_i_reg[2] ;
  output \grdc.rd_data_count_i_reg[2]_0 ;
  output \count_value_i_reg[0]_0 ;
  output [0:0]src_in_bin;
  input [2:0]Q;
  input [2:0]\count_value_i_reg[2] ;
  input [1:0]out;
  input rd_en;
  input ram_empty_i;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input rd_clk;

  wire [0:0]D;
  wire [2:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [2:0]\count_value_i_reg[2] ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire \grdc.rd_data_count_i_reg[2] ;
  wire \grdc.rd_data_count_i_reg[2]_0 ;
  wire [1:0]out;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(out[0]),
        .I2(rd_en),
        .I3(out[1]),
        .I4(ram_empty_i),
        .I5(\gen_rst_ic.fifo_rd_rst_ic_reg ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(ram_empty_i),
        .I4(\gen_rst_ic.fifo_rd_rst_ic_reg ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(out[0]),
        .I2(rd_en),
        .I3(out[1]),
        .I4(ram_empty_i),
        .I5(\grdc.rd_data_count_i_reg[2]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\grdc.rd_data_count_i_reg[2]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[2] [0]),
        .I2(\grdc.rd_data_count_i_reg[2]_0 ),
        .I3(\count_value_i_reg[2] [1]),
        .O(src_in_bin));
  LUT6 #(
    .INIT(64'h9696699669966969)) 
    \grdc.rd_data_count_i[2]_i_1 
       (.I0(\grdc.rd_data_count_i_reg[2] ),
        .I1(Q[2]),
        .I2(\count_value_i_reg[2] [2]),
        .I3(\count_value_i_reg[2] [1]),
        .I4(\grdc.rd_data_count_i_reg[2]_0 ),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h69FF696969690069)) 
    \grdc.rd_data_count_i[2]_i_2 
       (.I0(\grdc.rd_data_count_i_reg[2]_0 ),
        .I1(\count_value_i_reg[2] [1]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[2] [0]),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(Q[0]),
        .O(\grdc.rd_data_count_i_reg[2] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10
   (D,
    \grdc.rd_data_count_i_reg[2] ,
    \grdc.rd_data_count_i_reg[2]_0 ,
    \count_value_i_reg[0]_0 ,
    src_in_bin,
    Q,
    \count_value_i_reg[2] ,
    out,
    rd_en,
    ram_empty_i,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    rd_clk);
  output [0:0]D;
  output \grdc.rd_data_count_i_reg[2] ;
  output \grdc.rd_data_count_i_reg[2]_0 ;
  output \count_value_i_reg[0]_0 ;
  output [0:0]src_in_bin;
  input [2:0]Q;
  input [2:0]\count_value_i_reg[2] ;
  input [1:0]out;
  input rd_en;
  input ram_empty_i;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input rd_clk;

  wire [0:0]D;
  wire [2:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [2:0]\count_value_i_reg[2] ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire \grdc.rd_data_count_i_reg[2] ;
  wire \grdc.rd_data_count_i_reg[2]_0 ;
  wire [1:0]out;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(out[0]),
        .I2(rd_en),
        .I3(out[1]),
        .I4(ram_empty_i),
        .I5(\gen_rst_ic.fifo_rd_rst_ic_reg ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(ram_empty_i),
        .I4(\gen_rst_ic.fifo_rd_rst_ic_reg ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(out[0]),
        .I2(rd_en),
        .I3(out[1]),
        .I4(ram_empty_i),
        .I5(\grdc.rd_data_count_i_reg[2]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\grdc.rd_data_count_i_reg[2]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[2] [0]),
        .I2(\grdc.rd_data_count_i_reg[2]_0 ),
        .I3(\count_value_i_reg[2] [1]),
        .O(src_in_bin));
  LUT6 #(
    .INIT(64'h9696699669966969)) 
    \grdc.rd_data_count_i[2]_i_1 
       (.I0(\grdc.rd_data_count_i_reg[2] ),
        .I1(Q[2]),
        .I2(\count_value_i_reg[2] [2]),
        .I3(\count_value_i_reg[2] [1]),
        .I4(\grdc.rd_data_count_i_reg[2]_0 ),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h69FF696969690069)) 
    \grdc.rd_data_count_i[2]_i_2 
       (.I0(\grdc.rd_data_count_i_reg[2]_0 ),
        .I1(\count_value_i_reg[2] [1]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[2] [0]),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(Q[0]),
        .O(\grdc.rd_data_count_i_reg[2] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
   (D,
    \src_gray_ff_reg[3] ,
    \count_value_i_reg[0]_0 ,
    \grdc.rd_data_count_i_reg[4] ,
    src_in_bin,
    Q,
    ram_empty_i,
    rd_en,
    out,
    \reg_out_i_reg[2] ,
    \reg_out_i_reg[4] ,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[1]_1 ,
    \count_value_i_reg[0]_1 ,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    rd_clk);
  output [1:0]D;
  output [3:0]\src_gray_ff_reg[3] ;
  output \count_value_i_reg[0]_0 ;
  output [2:0]\grdc.rd_data_count_i_reg[4] ;
  output [3:0]src_in_bin;
  input [3:0]Q;
  input ram_empty_i;
  input rd_en;
  input [1:0]out;
  input \reg_out_i_reg[2] ;
  input [4:0]\reg_out_i_reg[4] ;
  input \count_value_i_reg[1]_0 ;
  input \count_value_i_reg[1]_1 ;
  input \count_value_i_reg[0]_1 ;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[1]_1 ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire \grdc.rd_data_count_i[4]_i_3_n_0 ;
  wire [2:0]\grdc.rd_data_count_i_reg[4] ;
  wire [1:0]out;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[2] ;
  wire [4:0]\reg_out_i_reg[4] ;
  wire [3:0]\src_gray_ff_reg[3] ;
  wire [3:0]src_in_bin;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__4 
       (.I0(rd_en),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\src_gray_ff_reg[3] [0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(rd_en),
        .I3(\src_gray_ff_reg[3] [0]),
        .I4(\src_gray_ff_reg[3] [1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\src_gray_ff_reg[3] [1]),
        .I2(\src_gray_ff_reg[3] [2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(\src_gray_ff_reg[3] [1]),
        .I1(\src_gray_ff_reg[3] [0]),
        .I2(\src_gray_ff_reg[3] [2]),
        .I3(\src_gray_ff_reg[3] [3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(\src_gray_ff_reg[3] [2]),
        .I1(\src_gray_ff_reg[3] [0]),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(\src_gray_ff_reg[3] [3]),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(\src_gray_ff_reg[3] [0]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(\src_gray_ff_reg[3] [1]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(\src_gray_ff_reg[3] [2]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(\src_gray_ff_reg[3] [3]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  LUT6 #(
    .INIT(64'hFFFFEAFE00001501)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(\src_gray_ff_reg[3] [3]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(\src_gray_ff_reg[3] [2]),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hFBFBBAFB04044504)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(\src_gray_ff_reg[3] [2]),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(\count_value_i_reg[0]_1 ),
        .I4(\src_gray_ff_reg[3] [0]),
        .I5(\src_gray_ff_reg[3] [3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hB0FB4F04)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\count_value_i_reg[0]_1 ),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(\src_gray_ff_reg[3] [2]),
        .O(src_in_bin[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\count_value_i_reg[0]_1 ),
        .O(src_in_bin[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\count_value_i_reg[0]_1 ),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(Q[2]),
        .I4(\src_gray_ff_reg[3] [2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hDDDFDDDD44454444)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(out[0]),
        .I4(out[1]),
        .I5(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\src_gray_ff_reg[3] [2]),
        .I3(Q[3]),
        .I4(\src_gray_ff_reg[3] [3]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h44D4D4DD)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(\src_gray_ff_reg[3] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(\src_gray_ff_reg[3] [0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\count_value_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[0]_i_1 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\count_value_i_reg[0]_1 ),
        .I2(\reg_out_i_reg[4] [0]),
        .O(\grdc.rd_data_count_i_reg[4] [0]));
  LUT5 #(
    .INIT(32'h69699669)) 
    \grdc.rd_data_count_i[3]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_3_n_0 ),
        .I1(\reg_out_i_reg[4] [3]),
        .I2(\src_gray_ff_reg[3] [3]),
        .I3(\reg_out_i_reg[4] [2]),
        .I4(\src_gray_ff_reg[3] [2]),
        .O(\grdc.rd_data_count_i_reg[4] [1]));
  LUT6 #(
    .INIT(64'h1EE1788787781EE1)) 
    \grdc.rd_data_count_i[4]_i_2 
       (.I0(\grdc.rd_data_count_i[4]_i_3_n_0 ),
        .I1(\reg_out_i_reg[2] ),
        .I2(\reg_out_i_reg[4] [4]),
        .I3(\count_value_i_reg_n_0_[4] ),
        .I4(\reg_out_i_reg[4] [3]),
        .I5(\src_gray_ff_reg[3] [3]),
        .O(\grdc.rd_data_count_i_reg[4] [2]));
  LUT6 #(
    .INIT(64'hF999FFF990009990)) 
    \grdc.rd_data_count_i[4]_i_3 
       (.I0(\src_gray_ff_reg[3] [2]),
        .I1(\reg_out_i_reg[4] [2]),
        .I2(\reg_out_i_reg[4] [1]),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(\src_gray_ff_reg[3] [1]),
        .I5(\count_value_i_reg[1]_1 ),
        .O(\grdc.rd_data_count_i[4]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_11
   (D,
    \src_gray_ff_reg[3] ,
    \count_value_i_reg[0]_0 ,
    \grdc.rd_data_count_i_reg[4] ,
    src_in_bin,
    Q,
    ram_empty_i,
    rd_en,
    out,
    \reg_out_i_reg[2] ,
    \reg_out_i_reg[4] ,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[1]_1 ,
    \count_value_i_reg[0]_1 ,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    rd_clk);
  output [1:0]D;
  output [3:0]\src_gray_ff_reg[3] ;
  output \count_value_i_reg[0]_0 ;
  output [2:0]\grdc.rd_data_count_i_reg[4] ;
  output [3:0]src_in_bin;
  input [3:0]Q;
  input ram_empty_i;
  input rd_en;
  input [1:0]out;
  input \reg_out_i_reg[2] ;
  input [4:0]\reg_out_i_reg[4] ;
  input \count_value_i_reg[1]_0 ;
  input \count_value_i_reg[1]_1 ;
  input \count_value_i_reg[0]_1 ;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[1]_1 ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire \grdc.rd_data_count_i[4]_i_3_n_0 ;
  wire [2:0]\grdc.rd_data_count_i_reg[4] ;
  wire [1:0]out;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[2] ;
  wire [4:0]\reg_out_i_reg[4] ;
  wire [3:0]\src_gray_ff_reg[3] ;
  wire [3:0]src_in_bin;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__4 
       (.I0(rd_en),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\src_gray_ff_reg[3] [0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(rd_en),
        .I3(\src_gray_ff_reg[3] [0]),
        .I4(\src_gray_ff_reg[3] [1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\src_gray_ff_reg[3] [1]),
        .I2(\src_gray_ff_reg[3] [2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(\src_gray_ff_reg[3] [1]),
        .I1(\src_gray_ff_reg[3] [0]),
        .I2(\src_gray_ff_reg[3] [2]),
        .I3(\src_gray_ff_reg[3] [3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(\src_gray_ff_reg[3] [2]),
        .I1(\src_gray_ff_reg[3] [0]),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(\src_gray_ff_reg[3] [3]),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(\src_gray_ff_reg[3] [0]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(\src_gray_ff_reg[3] [1]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(\src_gray_ff_reg[3] [2]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(\src_gray_ff_reg[3] [3]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  LUT6 #(
    .INIT(64'hFFFFEAFE00001501)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(\src_gray_ff_reg[3] [3]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(\src_gray_ff_reg[3] [2]),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hFBFBBAFB04044504)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(\src_gray_ff_reg[3] [2]),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(\count_value_i_reg[0]_1 ),
        .I4(\src_gray_ff_reg[3] [0]),
        .I5(\src_gray_ff_reg[3] [3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB0FB4F04)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\count_value_i_reg[0]_1 ),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(\src_gray_ff_reg[3] [2]),
        .O(src_in_bin[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\count_value_i_reg[0]_1 ),
        .O(src_in_bin[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\count_value_i_reg[0]_1 ),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\src_gray_ff_reg[3] [1]),
        .I3(Q[2]),
        .I4(\src_gray_ff_reg[3] [2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hDDDFDDDD44454444)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(out[0]),
        .I4(out[1]),
        .I5(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\src_gray_ff_reg[3] [2]),
        .I3(Q[3]),
        .I4(\src_gray_ff_reg[3] [3]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h44D4D4DD)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(\src_gray_ff_reg[3] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(\src_gray_ff_reg[3] [0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\count_value_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[0]_i_1 
       (.I0(\src_gray_ff_reg[3] [0]),
        .I1(\count_value_i_reg[0]_1 ),
        .I2(\reg_out_i_reg[4] [0]),
        .O(\grdc.rd_data_count_i_reg[4] [0]));
  LUT5 #(
    .INIT(32'h69699669)) 
    \grdc.rd_data_count_i[3]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_3_n_0 ),
        .I1(\reg_out_i_reg[4] [3]),
        .I2(\src_gray_ff_reg[3] [3]),
        .I3(\reg_out_i_reg[4] [2]),
        .I4(\src_gray_ff_reg[3] [2]),
        .O(\grdc.rd_data_count_i_reg[4] [1]));
  LUT6 #(
    .INIT(64'h1EE1788787781EE1)) 
    \grdc.rd_data_count_i[4]_i_2 
       (.I0(\grdc.rd_data_count_i[4]_i_3_n_0 ),
        .I1(\reg_out_i_reg[2] ),
        .I2(\reg_out_i_reg[4] [4]),
        .I3(\count_value_i_reg_n_0_[4] ),
        .I4(\reg_out_i_reg[4] [3]),
        .I5(\src_gray_ff_reg[3] [3]),
        .O(\grdc.rd_data_count_i_reg[4] [2]));
  LUT6 #(
    .INIT(64'hF999FFF990009990)) 
    \grdc.rd_data_count_i[4]_i_3 
       (.I0(\src_gray_ff_reg[3] [2]),
        .I1(\reg_out_i_reg[4] [2]),
        .I2(\reg_out_i_reg[4] [1]),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(\src_gray_ff_reg[3] [1]),
        .I5(\count_value_i_reg[1]_1 ),
        .O(\grdc.rd_data_count_i[4]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_14
   (D,
    Q,
    \reg_out_i_reg[2] ,
    wrst_busy,
    E,
    wr_clk);
  output [1:0]D;
  output [4:0]Q;
  input [2:0]\reg_out_i_reg[2] ;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire [2:0]\reg_out_i_reg[2] ;
  wire wr_clk;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gwdc.wr_data_count_i[0]_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_i_reg[2] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \gwdc.wr_data_count_i[2]_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_i_reg[2] [0]),
        .I2(Q[1]),
        .I3(\reg_out_i_reg[2] [1]),
        .I4(\reg_out_i_reg[2] [2]),
        .I5(Q[2]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_3
   (D,
    Q,
    \reg_out_i_reg[2] ,
    wrst_busy,
    E,
    wr_clk);
  output [1:0]D;
  output [4:0]Q;
  input [2:0]\reg_out_i_reg[2] ;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire [2:0]\reg_out_i_reg[2] ;
  wire wr_clk;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gwdc.wr_data_count_i[0]_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_i_reg[2] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \gwdc.wr_data_count_i[2]_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_i_reg[2] [0]),
        .I2(Q[1]),
        .I3(\reg_out_i_reg[2] [1]),
        .I4(\reg_out_i_reg[2] [2]),
        .I5(Q[2]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3
   (Q,
    out,
    rd_en,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    E,
    rd_clk);
  output [3:0]Q;
  input [1:0]out;
  input rd_en;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire [1:0]out;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(out[0]),
        .I2(out[1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_12
   (Q,
    out,
    rd_en,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    E,
    rd_clk);
  output [3:0]Q;
  input [1:0]out;
  input rd_en;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire [1:0]out;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(out[0]),
        .I2(out[1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_15
   (Q,
    wrst_busy,
    E,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_4
   (Q,
    wrst_busy,
    E,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
   (wr_data_count,
    almost_full,
    dout,
    empty,
    IP2Bus_WrAck_transmit_enable,
    D,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    \OTHER_RATIO_GENERATE.Serial_Dout_reg ,
    rst,
    s_axi_aclk,
    s_axi_wdata,
    ext_spi_clk,
    rd_en,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    Bus_RNW_reg_reg,
    \grdc.rd_data_count_i_reg[1] ,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    Bus_RNW_reg,
    p_6_in,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    p_3_in,
    \grdc.rd_data_count_i_reg[4] ,
    \gen_fwft.empty_fwft_i_reg ,
    spicr_9_lsb_to_spi_clk);
  output [0:0]wr_data_count;
  output almost_full;
  output [7:0]dout;
  output empty;
  output IP2Bus_WrAck_transmit_enable;
  output [0:0]D;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  output \OTHER_RATIO_GENERATE.Serial_Dout_reg ;
  input rst;
  input s_axi_aclk;
  input [7:0]s_axi_wdata;
  input ext_spi_clk;
  input rd_en;
  input \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  input Bus_RNW_reg_reg;
  input \grdc.rd_data_count_i_reg[1] ;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input Bus_RNW_reg;
  input p_6_in;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input p_3_in;
  input \grdc.rd_data_count_i_reg[4] ;
  input \gen_fwft.empty_fwft_i_reg ;
  input spicr_9_lsb_to_spi_clk;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [0:0]D;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire IP2Bus_WrAck_transmit_enable;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_5_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_4_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_reg ;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire [4:1]Tx_FIFO_occ_Reversed;
  wire almost_full;
  wire [7:0]dout;
  wire empty;
  wire ext_spi_clk;
  wire full;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_11 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_2 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_21 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_22 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_23 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_24 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_25 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_26 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_27 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_28 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_29 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_30 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_31 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_32 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_8 ;
  wire \grdc.rd_data_count_i_reg[1] ;
  wire \grdc.rd_data_count_i_reg[4] ;
  wire p_3_in;
  wire p_6_in;
  wire rd_en;
  wire rst;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire spicr_9_lsb_to_spi_clk;
  wire [0:0]wr_data_count;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0064000000000000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_5_n_0 ),
        .I1(Tx_FIFO_occ_Reversed[3]),
        .I2(Tx_FIFO_occ_Reversed[4]),
        .I3(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .I4(p_3_in),
        .I5(Bus_RNW_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ));
  LUT3 #(
    .INIT(8'h01)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_5 
       (.I0(wr_data_count),
        .I1(Tx_FIFO_occ_Reversed[1]),
        .I2(Tx_FIFO_occ_Reversed[2]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_3 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_4_n_0 ),
        .I1(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .I2(p_3_in),
        .I3(Bus_RNW_reg),
        .I4(\grdc.rd_data_count_i_reg[4] ),
        .I5(\gen_fwft.empty_fwft_i_reg ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h000FFFF1)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_4 
       (.I0(Tx_FIFO_occ_Reversed[4]),
        .I1(Tx_FIFO_occ_Reversed[3]),
        .I2(Tx_FIFO_occ_Reversed[1]),
        .I3(wr_data_count),
        .I4(Tx_FIFO_occ_Reversed[2]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAE)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_1 
       (.I0(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .I1(Bus_RNW_reg_reg),
        .I2(wr_data_count),
        .I3(Tx_FIFO_occ_Reversed[1]),
        .I4(\grdc.rd_data_count_i_reg[1] ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_6 
       (.I0(Tx_FIFO_occ_Reversed[2]),
        .I1(Tx_FIFO_occ_Reversed[1]),
        .I2(wr_data_count),
        .I3(Tx_FIFO_occ_Reversed[3]),
        .I4(Tx_FIFO_occ_Reversed[4]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \OTHER_RATIO_GENERATE.Serial_Dout_i_3 
       (.I0(dout[0]),
        .I1(spicr_9_lsb_to_spi_clk),
        .I2(dout[7]),
        .O(\OTHER_RATIO_GENERATE.Serial_Dout_reg ));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "128" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(\gnuram_async_fifo.xpm_fifo_base_inst_n_29 ),
        .almost_full(almost_full),
        .data_valid(\gnuram_async_fifo.xpm_fifo_base_inst_n_30 ),
        .dbiterr(\gnuram_async_fifo.xpm_fifo_base_inst_n_32 ),
        .din(s_axi_wdata),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\gnuram_async_fifo.xpm_fifo_base_inst_n_8 ),
        .prog_empty(\gnuram_async_fifo.xpm_fifo_base_inst_n_21 ),
        .prog_full(\gnuram_async_fifo.xpm_fifo_base_inst_n_2 ),
        .rd_clk(ext_spi_clk),
        .rd_data_count({\gnuram_async_fifo.xpm_fifo_base_inst_n_22 ,\gnuram_async_fifo.xpm_fifo_base_inst_n_23 ,\gnuram_async_fifo.xpm_fifo_base_inst_n_24 ,\gnuram_async_fifo.xpm_fifo_base_inst_n_25 ,\gnuram_async_fifo.xpm_fifo_base_inst_n_26 }),
        .rd_en(rd_en),
        .rd_rst_busy(\gnuram_async_fifo.xpm_fifo_base_inst_n_28 ),
        .rst(rst),
        .sbiterr(\gnuram_async_fifo.xpm_fifo_base_inst_n_31 ),
        .sleep(1'b0),
        .underflow(\gnuram_async_fifo.xpm_fifo_base_inst_n_27 ),
        .wr_ack(\gnuram_async_fifo.xpm_fifo_base_inst_n_11 ),
        .wr_clk(s_axi_aclk),
        .wr_data_count({Tx_FIFO_occ_Reversed,wr_data_count}),
        .wr_en(IP2Bus_WrAck_transmit_enable),
        .wr_rst_busy(wr_rst_busy));
  LUT4 #(
    .INIT(16'h0020)) 
    \gnuram_async_fifo.xpm_fifo_base_inst_i_2 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .I1(Bus_RNW_reg),
        .I2(p_6_in),
        .I3(almost_full),
        .O(IP2Bus_WrAck_transmit_enable));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_async" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__xdcDup__1
   (almost_full,
    dout,
    empty,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    Rx_FIFO_Full_Fifo,
    rst,
    ext_spi_clk,
    spiXfer_done_int,
    Q,
    s_axi_aclk,
    Bus_RNW_reg,
    p_5_in,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ,
    \gen_fwft.empty_fwft_i_reg ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \ip_irpt_enable_reg_reg[3] ,
    scndry_out);
  output almost_full;
  output [7:0]dout;
  output empty;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  output Rx_FIFO_Full_Fifo;
  input rst;
  input ext_spi_clk;
  input spiXfer_done_int;
  input [7:0]Q;
  input s_axi_aclk;
  input Bus_RNW_reg;
  input p_5_in;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  input \gen_fwft.empty_fwft_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  input [2:0]\ip_irpt_enable_reg_reg[3] ;
  input scndry_out;

  wire Bus_RNW_reg;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_7_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_7_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  wire [7:0]Q;
  wire Rx_FIFO_Full_Fifo;
  wire [4:0]Rx_FIFO_occ_Reversed;
  wire almost_full;
  wire [7:0]dout;
  wire empty;
  wire ext_spi_clk;
  wire full;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_i_2__0_n_0 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_11 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_2 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_21 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_27 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_28 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_29 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_3 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_30 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_31 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_32 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_4 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_5 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_6 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_7 ;
  wire \gnuram_async_fifo.xpm_fifo_base_inst_n_8 ;
  wire [2:0]\ip_irpt_enable_reg_reg[3] ;
  wire p_5_in;
  wire rst;
  wire s_axi_aclk;
  wire scndry_out;
  wire spiXfer_done_int;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_i_1 
       (.I0(almost_full),
        .I1(scndry_out),
        .O(Rx_FIFO_Full_Fifo));
  LUT6 #(
    .INIT(64'h08A0FFFF08A008A0)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4 
       (.I0(\gen_fwft.empty_fwft_i_reg ),
        .I1(Rx_FIFO_occ_Reversed[4]),
        .I2(Rx_FIFO_occ_Reversed[3]),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_7_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .I5(\ip_irpt_enable_reg_reg[3] [2]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ));
  LUT3 #(
    .INIT(8'h01)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_7 
       (.I0(Rx_FIFO_occ_Reversed[0]),
        .I1(Rx_FIFO_occ_Reversed[1]),
        .I2(Rx_FIFO_occ_Reversed[2]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h000FFFF1)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_5 
       (.I0(Rx_FIFO_occ_Reversed[4]),
        .I1(Rx_FIFO_occ_Reversed[3]),
        .I2(Rx_FIFO_occ_Reversed[1]),
        .I3(Rx_FIFO_occ_Reversed[0]),
        .I4(Rx_FIFO_occ_Reversed[2]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ));
  LUT6 #(
    .INIT(64'h0090FFFF00900090)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_4 
       (.I0(Rx_FIFO_occ_Reversed[1]),
        .I1(Rx_FIFO_occ_Reversed[0]),
        .I2(\gen_fwft.empty_fwft_i_reg ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_7_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .I5(\ip_irpt_enable_reg_reg[3] [1]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_7 
       (.I0(Rx_FIFO_occ_Reversed[2]),
        .I1(Rx_FIFO_occ_Reversed[1]),
        .I2(Rx_FIFO_occ_Reversed[0]),
        .I3(Rx_FIFO_occ_Reversed[3]),
        .I4(Rx_FIFO_occ_Reversed[4]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 
       (.I0(Rx_FIFO_occ_Reversed[0]),
        .I1(\gen_fwft.empty_fwft_i_reg ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_7_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .I4(\ip_irpt_enable_reg_reg[3] [0]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "128" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__xdcDup__1 \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(\gnuram_async_fifo.xpm_fifo_base_inst_n_29 ),
        .almost_full(almost_full),
        .data_valid(\gnuram_async_fifo.xpm_fifo_base_inst_n_30 ),
        .dbiterr(\gnuram_async_fifo.xpm_fifo_base_inst_n_32 ),
        .din(Q),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\gnuram_async_fifo.xpm_fifo_base_inst_n_8 ),
        .prog_empty(\gnuram_async_fifo.xpm_fifo_base_inst_n_21 ),
        .prog_full(\gnuram_async_fifo.xpm_fifo_base_inst_n_2 ),
        .rd_clk(s_axi_aclk),
        .rd_data_count(Rx_FIFO_occ_Reversed),
        .rd_en(\gnuram_async_fifo.xpm_fifo_base_inst_i_2__0_n_0 ),
        .rd_rst_busy(\gnuram_async_fifo.xpm_fifo_base_inst_n_28 ),
        .rst(rst),
        .sbiterr(\gnuram_async_fifo.xpm_fifo_base_inst_n_31 ),
        .sleep(1'b0),
        .underflow(\gnuram_async_fifo.xpm_fifo_base_inst_n_27 ),
        .wr_ack(\gnuram_async_fifo.xpm_fifo_base_inst_n_11 ),
        .wr_clk(ext_spi_clk),
        .wr_data_count({\gnuram_async_fifo.xpm_fifo_base_inst_n_3 ,\gnuram_async_fifo.xpm_fifo_base_inst_n_4 ,\gnuram_async_fifo.xpm_fifo_base_inst_n_5 ,\gnuram_async_fifo.xpm_fifo_base_inst_n_6 ,\gnuram_async_fifo.xpm_fifo_base_inst_n_7 }),
        .wr_en(spiXfer_done_int),
        .wr_rst_busy(wr_rst_busy));
  LUT4 #(
    .INIT(16'h4000)) 
    \gnuram_async_fifo.xpm_fifo_base_inst_i_2__0 
       (.I0(empty),
        .I1(Bus_RNW_reg),
        .I2(p_5_in),
        .I3(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ),
        .O(\gnuram_async_fifo.xpm_fifo_base_inst_i_2__0_n_0 ));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
(* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) (* EN_DVLD = "1'b1" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "128" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "11" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "11" *) 
(* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "5" *) (* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "8" *) 
(* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "8" *) (* WR_DATA_COUNT_WIDTH = "5" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) 
(* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output full_n;
  output prog_full;
  output [4:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [4:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [3:0]count_value_i;
  wire data_valid;
  wire data_valid_fwft1;
  wire [3:0]diff_pntr_pe;
  wire [4:4]diff_pntr_pf_q0;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire full_n;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_fwft.curr_fwft_state ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire [1:0]\gen_fwft.next_fwft_state__0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire [4:1]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [4:1]\gwdc.diff_wr_rd_pntr1_out ;
  wire overflow;
  wire overflow_i0;
  wire p_0_in;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire [4:0]rd_data_count;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_6;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [1:1]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [4:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrp_inst_n_1;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [7:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.next_fwft_state__0 [0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .O(\gen_fwft.next_fwft_state__0 [1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.next_fwft_state__0 [0]),
        .Q(\gen_fwft.curr_fwft_state [0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.next_fwft_state__0 [1]),
        .Q(\gen_fwft.curr_fwft_state [1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_10,rdp_inst_n_11,rdp_inst_n_12,src_in_bin00_out,rdp_inst_n_13}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(wr_pntr_plus1_pf),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\count_value_i_reg[3] (count_value_i),
        .\count_value_i_reg[3]_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .diff_pntr_pf_q0(diff_pntr_pf_q0),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_3 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg (\gen_cdc_pntr.rpw_gray_reg_n_2 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D({\gwdc.diff_wr_rd_pntr1_out [4:3],\gwdc.diff_wr_rd_pntr1_out [1]}),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .\count_value_i_reg[4] (wr_pntr_ext),
        .\dest_graysync_ff_reg[1][4] (rd_pntr_wr_cdc_dc),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_1 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .\count_value_i_reg[3] (rd_pntr_ext),
        .\count_value_i_reg[3]_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\dest_graysync_ff_reg[1][3] (wr_pntr_rd_cdc),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_2 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .\count_value_i_reg[0] (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[1] (\gen_fwft.rdpp1_inst_n_2 ),
        .\count_value_i_reg[2] (rd_pntr_ext[2:0]),
        .\dest_graysync_ff_reg[3][4] (wr_pntr_rd_cdc_dc),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[4] (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ),
        .rd_clk(rd_clk));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__4 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [0]),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(empty),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(rd_rst_busy));
  LUT5 #(
    .INIT(32'hFDDD4000)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(ram_empty_i),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(rd_en),
        .I4(almost_empty),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(rd_rst_busy));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(empty),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .\count_value_i_reg[0]_0 (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[2] (rd_pntr_ext[2:0]),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[2] (\gen_fwft.rdpp1_inst_n_1 ),
        .\grdc.rd_data_count_i_reg[2]_0 (\gen_fwft.rdpp1_inst_n_2 ),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_3 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_2 ),
        .Q(full_n),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B8B8BBB)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0),
        .Q(p_0_in),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "8" *) 
  (* BYTE_WRITE_WIDTH_B = "8" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "128" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "8" *) 
  (* P_MIN_WIDTH_DATA_A = "8" *) 
  (* P_MIN_WIDTH_DATA_B = "8" *) 
  (* P_MIN_WIDTH_DATA_ECC = "8" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "8" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "8" *) 
  (* P_WIDTH_COL_WRITE_B = "8" *) 
  (* READ_DATA_WIDTH_A = "8" *) 
  (* READ_DATA_WIDTH_B = "8" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "8" *) 
  (* WRITE_DATA_WIDTH_B = "8" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [7:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_6),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_9),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrp_inst_n_1),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .\count_value_i_reg[0]_0 (rdp_inst_n_6),
        .\count_value_i_reg[0]_1 (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_2 ),
        .\count_value_i_reg[1]_1 (\gen_fwft.rdpp1_inst_n_1 ),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[4] ({\grdc.diff_wr_rd_pntr_rdc [4:3],rdp_inst_n_9}),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[2] (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ),
        .\reg_out_i_reg[4] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .\src_gray_ff_reg[3] (rd_pntr_ext),
        .src_in_bin({rdp_inst_n_10,rdp_inst_n_11,rdp_inst_n_12,rdp_inst_n_13}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(rdp_inst_n_6),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .out(\gen_fwft.curr_fwft_state ),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.clr_full(clr_full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (full),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (rst_d1_inst_n_1),
        .overflow_i0(overflow_i0),
        .p_0_in(p_0_in),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_3 wrp_inst
       (.D({\gwdc.diff_wr_rd_pntr1_out [2],wrp_inst_n_1}),
        .E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_ext),
        .\reg_out_i_reg[2] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_4 wrpp1_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_plus1_pf),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 wrpp2_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(wr_pntr_plus1_pf_carry),
        .SR(\grdc.rd_data_count_i0 ),
        .\gen_fwft.empty_fwft_i_reg (empty),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (full),
        .\gwack.wr_ack_i_reg (xpm_fifo_rst_inst_n_2),
        .out(\gen_fwft.curr_fwft_state ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .\syncstages_ff_reg[0] (rd_rst_busy),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
(* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) (* EN_DVLD = "1'b1" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "128" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "5" *) (* RD_DC_WIDTH_EXT = "5" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "4" *) 
(* READ_DATA_WIDTH = "8" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "8" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* WR_DC_WIDTH_EXT = "5" *) (* WR_PNTR_WIDTH = "4" *) 
(* WR_RD_RATIO = "0" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__xdcDup__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output full_n;
  output prog_full;
  output [4:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [4:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [3:0]count_value_i;
  wire data_valid;
  wire data_valid_fwft1;
  wire [3:0]diff_pntr_pe;
  wire [4:4]diff_pntr_pf_q0;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire full_n;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_fwft.curr_fwft_state ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire [1:0]\gen_fwft.next_fwft_state__0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire [4:1]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [4:1]\gwdc.diff_wr_rd_pntr1_out ;
  wire overflow;
  wire overflow_i0;
  wire p_0_in;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire [4:0]rd_data_count;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_6;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [1:1]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [4:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrp_inst_n_1;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [7:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.next_fwft_state__0 [0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .O(\gen_fwft.next_fwft_state__0 [1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.next_fwft_state__0 [0]),
        .Q(\gen_fwft.curr_fwft_state [0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.next_fwft_state__0 [1]),
        .Q(\gen_fwft.curr_fwft_state [1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_5 \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__2 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_10,rdp_inst_n_11,rdp_inst_n_12,src_in_bin00_out,rdp_inst_n_13}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3 \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6 \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(wr_pntr_plus1_pf),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\count_value_i_reg[3] (count_value_i),
        .\count_value_i_reg[3]_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .diff_pntr_pf_q0(diff_pntr_pf_q0),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_3 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg (\gen_cdc_pntr.rpw_gray_reg_n_2 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D({\gwdc.diff_wr_rd_pntr1_out [4:3],\gwdc.diff_wr_rd_pntr1_out [1]}),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .\count_value_i_reg[4] (wr_pntr_ext),
        .\dest_graysync_ff_reg[1][4] (rd_pntr_wr_cdc_dc),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_8 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .\count_value_i_reg[3] (rd_pntr_ext),
        .\count_value_i_reg[3]_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\dest_graysync_ff_reg[1][3] (wr_pntr_rd_cdc),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_9 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .\count_value_i_reg[0] (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[1] (\gen_fwft.rdpp1_inst_n_2 ),
        .\count_value_i_reg[2] (rd_pntr_ext[2:0]),
        .\dest_graysync_ff_reg[3][4] (wr_pntr_rd_cdc_dc),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[4] (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ),
        .rd_clk(rd_clk));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__2 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [0]),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(empty),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(rd_rst_busy));
  LUT5 #(
    .INIT(32'hFDDD4000)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(ram_empty_i),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(rd_en),
        .I4(almost_empty),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(rd_rst_busy));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(empty),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10 \gen_fwft.rdpp1_inst 
       (.D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .\count_value_i_reg[0]_0 (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[2] (rd_pntr_ext[2:0]),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[2] (\gen_fwft.rdpp1_inst_n_1 ),
        .\grdc.rd_data_count_i_reg[2]_0 (\gen_fwft.rdpp1_inst_n_2 ),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_3 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_2 ),
        .Q(full_n),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B8B8BBB)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0),
        .Q(p_0_in),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "8" *) 
  (* BYTE_WRITE_WIDTH_B = "8" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "128" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "8" *) 
  (* P_MIN_WIDTH_DATA_A = "8" *) 
  (* P_MIN_WIDTH_DATA_B = "8" *) 
  (* P_MIN_WIDTH_DATA_ECC = "8" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "8" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "8" *) 
  (* P_WIDTH_COL_WRITE_B = "8" *) 
  (* READ_DATA_WIDTH_A = "8" *) 
  (* READ_DATA_WIDTH_B = "8" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "8" *) 
  (* WRITE_DATA_WIDTH_B = "8" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [7:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_6),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_9),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrp_inst_n_1),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_11 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .\count_value_i_reg[0]_0 (rdp_inst_n_6),
        .\count_value_i_reg[0]_1 (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_2 ),
        .\count_value_i_reg[1]_1 (\gen_fwft.rdpp1_inst_n_1 ),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[4] ({\grdc.diff_wr_rd_pntr_rdc [4:3],rdp_inst_n_9}),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[2] (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ),
        .\reg_out_i_reg[4] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .\src_gray_ff_reg[3] (rd_pntr_ext),
        .src_in_bin({rdp_inst_n_10,rdp_inst_n_11,rdp_inst_n_12,rdp_inst_n_13}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_12 rdpp1_inst
       (.E(rdp_inst_n_6),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\gen_rst_ic.fifo_rd_rst_ic_reg (rd_rst_busy),
        .out(\gen_fwft.curr_fwft_state ),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_13 rst_d1_inst
       (.clr_full(clr_full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (full),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (rst_d1_inst_n_1),
        .overflow_i0(overflow_i0),
        .p_0_in(p_0_in),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_14 wrp_inst
       (.D({\gwdc.diff_wr_rd_pntr1_out [2],wrp_inst_n_1}),
        .E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_ext),
        .\reg_out_i_reg[2] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_15 wrpp1_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_plus1_pf),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_16 wrpp2_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1 xpm_fifo_rst_inst
       (.E(wr_pntr_plus1_pf_carry),
        .SR(\grdc.rd_data_count_i0 ),
        .\gen_fwft.empty_fwft_i_reg (empty),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (full),
        .\gwack.wr_ack_i_reg (xpm_fifo_rst_inst_n_2),
        .out(\gen_fwft.curr_fwft_state ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .\syncstages_ff_reg[0] (rd_rst_busy),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    overflow_i0,
    clr_full,
    wrst_busy,
    wr_clk,
    p_0_in,
    rst,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    prog_full,
    wr_en);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  output overflow_i0;
  output clr_full;
  input wrst_busy;
  input wr_clk;
  input p_0_in;
  input rst;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input prog_full;
  input wr_en;

  wire clr_full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire overflow_i0;
  wire p_0_in;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT5 #(
    .INIT(32'hF3A200A2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(p_0_in),
        .I1(rst_d1),
        .I2(rst),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I4(prog_full),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_13
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    overflow_i0,
    clr_full,
    wrst_busy,
    wr_clk,
    p_0_in,
    rst,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    prog_full,
    wr_en);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  output overflow_i0;
  output clr_full;
  input wrst_busy;
  input wr_clk;
  input p_0_in;
  input rst;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input prog_full;
  input wr_en;

  wire clr_full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire overflow_i0;
  wire p_0_in;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT5 #(
    .INIT(32'hF3A200A2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(p_0_in),
        .I1(rst_d1),
        .I2(rst),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I4(prog_full),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
   (\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    diff_pntr_pf_q0,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    rst,
    rst_d1,
    almost_full,
    Q,
    wr_pntr_plus1_pf_carry,
    \count_value_i_reg[3] ,
    \count_value_i_reg[3]_0 ,
    clr_full,
    wrst_busy,
    D,
    wr_clk);
  output \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  output [0:0]diff_pntr_pf_q0;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input rst;
  input rst_d1;
  input almost_full;
  input [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [3:0]\count_value_i_reg[3] ;
  input [3:0]\count_value_i_reg[3]_0 ;
  input clr_full;
  input wrst_busy;
  input [3:0]D;
  input wr_clk;

  wire [3:0]D;
  wire [3:0]Q;
  wire almost_full;
  wire clr_full;
  wire [3:0]\count_value_i_reg[3] ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [0:0]diff_pntr_pf_q0;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire leaving_afull;
  wire ram_afull_i0;
  wire [3:0]rd_pntr_wr;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hF0FE0002)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(ram_afull_i0),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I2(rst),
        .I3(rst_d1),
        .I4(almost_full),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(\count_value_i_reg[3] [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\count_value_i_reg[3]_0 [3]),
        .I5(rd_pntr_wr[3]),
        .O(ram_afull_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(rd_pntr_wr[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\count_value_i_reg[3] [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\count_value_i_reg[3] [1]),
        .I5(rd_pntr_wr[1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF909090)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(rd_pntr_wr[3]),
        .I1(Q[3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I3(leaving_afull),
        .I4(wr_pntr_plus1_pf_carry),
        .I5(clr_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(rd_pntr_wr[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[1]),
        .I5(rd_pntr_wr[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(rd_pntr_wr[3]),
        .I1(\count_value_i_reg[3]_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(rd_pntr_wr[0]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(\count_value_i_reg[3]_0 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\count_value_i_reg[3]_0 [1]),
        .I5(rd_pntr_wr[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABFBFBFBFBFAABF)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(leaving_afull),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I4(Q[3]),
        .I5(rd_pntr_wr[3]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(rd_pntr_wr[2]),
        .I3(rd_pntr_wr[3]),
        .I4(Q[3]),
        .O(diff_pntr_pf_q0));
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(rd_pntr_wr[1]),
        .I1(Q[1]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[0]),
        .I4(rd_pntr_wr[0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(rd_pntr_wr[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(rd_pntr_wr[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(rd_pntr_wr[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(rd_pntr_wr[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_1
   (D,
    Q,
    ram_empty_i0,
    \count_value_i_reg[3] ,
    out,
    rd_en,
    ram_empty_i,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[3]_0 ,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    \dest_graysync_ff_reg[1][3] ,
    rd_clk);
  output [1:0]D;
  output [3:0]Q;
  output ram_empty_i0;
  input [3:0]\count_value_i_reg[3] ;
  input [1:0]out;
  input rd_en;
  input ram_empty_i;
  input \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [3:0]\count_value_i_reg[3]_0 ;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input [3:0]\dest_graysync_ff_reg[1][3] ;
  input rd_clk;

  wire [1:0]D;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [3:0]Q;
  wire [3:0]\count_value_i_reg[3] ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [3:0]\dest_graysync_ff_reg[1][3] ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire [1:0]out;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;

  LUT6 #(
    .INIT(64'h6666666699999969)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(rd_en),
        .I5(ram_empty_i),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(\count_value_i_reg[3] [0]),
        .I3(Q[1]),
        .I4(\count_value_i_reg[3] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I1(\count_value_i_reg[3]_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(\count_value_i_reg[3] [3]),
        .I5(Q[3]),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(\count_value_i_reg[3]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\count_value_i_reg[3] [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[3] [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [0]),
        .Q(Q[0]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [1]),
        .Q(Q[1]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [2]),
        .Q(Q[2]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [3]),
        .Q(Q[3]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6
   (\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    diff_pntr_pf_q0,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    rst,
    rst_d1,
    almost_full,
    Q,
    wr_pntr_plus1_pf_carry,
    \count_value_i_reg[3] ,
    \count_value_i_reg[3]_0 ,
    clr_full,
    wrst_busy,
    D,
    wr_clk);
  output \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  output [0:0]diff_pntr_pf_q0;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input rst;
  input rst_d1;
  input almost_full;
  input [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [3:0]\count_value_i_reg[3] ;
  input [3:0]\count_value_i_reg[3]_0 ;
  input clr_full;
  input wrst_busy;
  input [3:0]D;
  input wr_clk;

  wire [3:0]D;
  wire [3:0]Q;
  wire almost_full;
  wire clr_full;
  wire [3:0]\count_value_i_reg[3] ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [0:0]diff_pntr_pf_q0;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire leaving_afull;
  wire ram_afull_i0;
  wire [3:0]rd_pntr_wr;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hF0FE0002)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(ram_afull_i0),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I2(rst),
        .I3(rst_d1),
        .I4(almost_full),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(\count_value_i_reg[3] [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\count_value_i_reg[3]_0 [3]),
        .I5(rd_pntr_wr[3]),
        .O(ram_afull_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(rd_pntr_wr[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\count_value_i_reg[3] [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\count_value_i_reg[3] [1]),
        .I5(rd_pntr_wr[1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF909090)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(rd_pntr_wr[3]),
        .I1(Q[3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I3(leaving_afull),
        .I4(wr_pntr_plus1_pf_carry),
        .I5(clr_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(rd_pntr_wr[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[1]),
        .I5(rd_pntr_wr[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(rd_pntr_wr[3]),
        .I1(\count_value_i_reg[3]_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(rd_pntr_wr[0]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(\count_value_i_reg[3]_0 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\count_value_i_reg[3]_0 [1]),
        .I5(rd_pntr_wr[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABFBFBFBFBFAABF)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(leaving_afull),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I4(Q[3]),
        .I5(rd_pntr_wr[3]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(rd_pntr_wr[2]),
        .I3(rd_pntr_wr[3]),
        .I4(Q[3]),
        .O(diff_pntr_pf_q0));
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(rd_pntr_wr[1]),
        .I1(Q[1]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[0]),
        .I4(rd_pntr_wr[0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(rd_pntr_wr[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(rd_pntr_wr[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(rd_pntr_wr[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(rd_pntr_wr[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_8
   (D,
    Q,
    ram_empty_i0,
    \count_value_i_reg[3] ,
    out,
    rd_en,
    ram_empty_i,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[3]_0 ,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    \dest_graysync_ff_reg[1][3] ,
    rd_clk);
  output [1:0]D;
  output [3:0]Q;
  output ram_empty_i0;
  input [3:0]\count_value_i_reg[3] ;
  input [1:0]out;
  input rd_en;
  input ram_empty_i;
  input \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [3:0]\count_value_i_reg[3]_0 ;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input [3:0]\dest_graysync_ff_reg[1][3] ;
  input rd_clk;

  wire [1:0]D;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [3:0]Q;
  wire [3:0]\count_value_i_reg[3] ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [3:0]\dest_graysync_ff_reg[1][3] ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire [1:0]out;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;

  LUT6 #(
    .INIT(64'h6666666699999969)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(rd_en),
        .I5(ram_empty_i),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(\count_value_i_reg[3] [0]),
        .I3(Q[1]),
        .I4(\count_value_i_reg[3] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I1(\count_value_i_reg[3]_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(\count_value_i_reg[3] [3]),
        .I5(Q[3]),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(\count_value_i_reg[3]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\count_value_i_reg[3] [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[3] [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [0]),
        .Q(Q[0]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [1]),
        .Q(Q[1]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [2]),
        .Q(Q[2]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [3]),
        .Q(Q[3]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0
   (D,
    Q,
    \count_value_i_reg[4] ,
    wrst_busy,
    \dest_graysync_ff_reg[1][4] ,
    wr_clk);
  output [2:0]D;
  output [2:0]Q;
  input [4:0]\count_value_i_reg[4] ;
  input wrst_busy;
  input [4:0]\dest_graysync_ff_reg[1][4] ;
  input wr_clk;

  wire [2:0]D;
  wire [2:0]Q;
  wire [4:0]\count_value_i_reg[4] ;
  wire [4:0]\dest_graysync_ff_reg[1][4] ;
  wire \gwdc.wr_data_count_i[4]_i_2_n_0 ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire wr_clk;
  wire wrst_busy;

  LUT4 #(
    .INIT(16'h2DD2)) 
    \gwdc.wr_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[4] [0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[4] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gwdc.wr_data_count_i[3]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(\count_value_i_reg[4] [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[4]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\count_value_i_reg[4] [3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(\count_value_i_reg[4] [4]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \gwdc.wr_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[4] [2]),
        .I2(\count_value_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\count_value_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\gwdc.wr_data_count_i[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_2
   (D,
    Q,
    \grdc.rd_data_count_i_reg[4] ,
    \count_value_i_reg[2] ,
    \count_value_i_reg[1] ,
    \count_value_i_reg[0] ,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    \dest_graysync_ff_reg[3][4] ,
    rd_clk);
  output [0:0]D;
  output [4:0]Q;
  output \grdc.rd_data_count_i_reg[4] ;
  input [2:0]\count_value_i_reg[2] ;
  input \count_value_i_reg[1] ;
  input \count_value_i_reg[0] ;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input [4:0]\dest_graysync_ff_reg[3][4] ;
  input rd_clk;

  wire [0:0]D;
  wire [4:0]Q;
  wire \count_value_i_reg[0] ;
  wire \count_value_i_reg[1] ;
  wire [2:0]\count_value_i_reg[2] ;
  wire [4:0]\dest_graysync_ff_reg[3][4] ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire \grdc.rd_data_count_i_reg[4] ;
  wire rd_clk;

  LUT6 #(
    .INIT(64'hC33C96696996C33C)) 
    \grdc.rd_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_value_i_reg[2] [1]),
        .I3(\count_value_i_reg[1] ),
        .I4(\count_value_i_reg[0] ),
        .I5(\count_value_i_reg[2] [0]),
        .O(D));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[4]_i_4 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[2] [2]),
        .O(\grdc.rd_data_count_i_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [0]),
        .Q(Q[0]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [1]),
        .Q(Q[1]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [2]),
        .Q(Q[2]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [3]),
        .Q(Q[3]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [4]),
        .Q(Q[4]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7
   (D,
    Q,
    \count_value_i_reg[4] ,
    wrst_busy,
    \dest_graysync_ff_reg[1][4] ,
    wr_clk);
  output [2:0]D;
  output [2:0]Q;
  input [4:0]\count_value_i_reg[4] ;
  input wrst_busy;
  input [4:0]\dest_graysync_ff_reg[1][4] ;
  input wr_clk;

  wire [2:0]D;
  wire [2:0]Q;
  wire [4:0]\count_value_i_reg[4] ;
  wire [4:0]\dest_graysync_ff_reg[1][4] ;
  wire \gwdc.wr_data_count_i[4]_i_2_n_0 ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire wr_clk;
  wire wrst_busy;

  LUT4 #(
    .INIT(16'h2DD2)) 
    \gwdc.wr_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[4] [0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[4] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gwdc.wr_data_count_i[3]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(\count_value_i_reg[4] [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[4]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\count_value_i_reg[4] [3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(\count_value_i_reg[4] [4]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \gwdc.wr_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[4] [2]),
        .I2(\count_value_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\count_value_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\gwdc.wr_data_count_i[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_9
   (D,
    Q,
    \grdc.rd_data_count_i_reg[4] ,
    \count_value_i_reg[2] ,
    \count_value_i_reg[1] ,
    \count_value_i_reg[0] ,
    \gen_rst_ic.fifo_rd_rst_ic_reg ,
    \dest_graysync_ff_reg[3][4] ,
    rd_clk);
  output [0:0]D;
  output [4:0]Q;
  output \grdc.rd_data_count_i_reg[4] ;
  input [2:0]\count_value_i_reg[2] ;
  input \count_value_i_reg[1] ;
  input \count_value_i_reg[0] ;
  input \gen_rst_ic.fifo_rd_rst_ic_reg ;
  input [4:0]\dest_graysync_ff_reg[3][4] ;
  input rd_clk;

  wire [0:0]D;
  wire [4:0]Q;
  wire \count_value_i_reg[0] ;
  wire \count_value_i_reg[1] ;
  wire [2:0]\count_value_i_reg[2] ;
  wire [4:0]\dest_graysync_ff_reg[3][4] ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg ;
  wire \grdc.rd_data_count_i_reg[4] ;
  wire rd_clk;

  LUT6 #(
    .INIT(64'hC33C96696996C33C)) 
    \grdc.rd_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_value_i_reg[2] [1]),
        .I3(\count_value_i_reg[1] ),
        .I4(\count_value_i_reg[0] ),
        .I5(\count_value_i_reg[2] [0]),
        .O(D));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[4]_i_4 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[2] [2]),
        .O(\grdc.rd_data_count_i_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [0]),
        .Q(Q[0]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [1]),
        .Q(Q[1]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [2]),
        .Q(Q[2]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [3]),
        .Q(Q[3]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [4]),
        .Q(Q[4]),
        .R(\gen_rst_ic.fifo_rd_rst_ic_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (\syncstages_ff_reg[0] ,
    wrst_busy,
    \gwack.wr_ack_i_reg ,
    E,
    wr_rst_busy,
    SR,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    wr_en,
    out,
    \gen_fwft.empty_fwft_i_reg ,
    rd_en);
  output \syncstages_ff_reg[0] ;
  output wrst_busy;
  output \gwack.wr_ack_i_reg ;
  output [0:0]E;
  output wr_rst_busy;
  output [0:0]SR;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input [1:0]out;
  input \gen_fwft.empty_fwft_i_reg ;
  input rd_en;

  wire [0:0]E;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  wire [0:0]SR;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  (* RTL_KEEP = "yes" *) wire \gen_rst_ic.rst_seq_reentered ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gwack.wr_ack_i_reg ;
  wire [1:0]out;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire \syncstages_ff_reg[0] ;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hF0F40044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAFFFFEEEA)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I2(rst),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__2/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\syncstages_ff_reg[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.rst_seq_reentered ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\syncstages_ff_reg[0] ));
  LUT4 #(
    .INIT(16'h000E)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I1(\gen_rst_ic.rst_seq_reentered ),
        .I2(rst),
        .I3(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFEFC)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst_i),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[4]_i_1 
       (.I0(\syncstages_ff_reg[0] ),
        .I1(out[0]),
        .I2(out[1]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg ),
        .I1(\syncstages_ff_reg[0] ),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(\gwack.wr_ack_i_reg ));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1
   (\syncstages_ff_reg[0] ,
    wrst_busy,
    \gwack.wr_ack_i_reg ,
    E,
    wr_rst_busy,
    SR,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    wr_en,
    out,
    \gen_fwft.empty_fwft_i_reg ,
    rd_en);
  output \syncstages_ff_reg[0] ;
  output wrst_busy;
  output \gwack.wr_ack_i_reg ;
  output [0:0]E;
  output wr_rst_busy;
  output [0:0]SR;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input [1:0]out;
  input \gen_fwft.empty_fwft_i_reg ;
  input rd_en;

  wire [0:0]E;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  wire [0:0]SR;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  (* RTL_KEEP = "yes" *) wire \gen_rst_ic.rst_seq_reentered ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gwack.wr_ack_i_reg ;
  wire [1:0]out;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire \syncstages_ff_reg[0] ;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hF0F40044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAFFFFEEEA)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I2(rst),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__2/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\syncstages_ff_reg[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.rst_seq_reentered ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__3 \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\syncstages_ff_reg[0] ));
  LUT4 #(
    .INIT(16'h000E)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I1(\gen_rst_ic.rst_seq_reentered ),
        .I2(rst),
        .I3(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFEFC)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst_i),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[4]_i_1 
       (.I0(\syncstages_ff_reg[0] ),
        .I1(out[0]),
        .I2(out[1]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg ),
        .I1(\syncstages_ff_reg[0] ),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(\gwack.wr_ack_i_reg ));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "8" *) (* BYTE_WRITE_WIDTH_B = "8" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "0" *) 
(* MEMORY_SIZE = "128" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) 
(* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "8" *) (* P_MIN_WIDTH_DATA_A = "8" *) 
(* P_MIN_WIDTH_DATA_B = "8" *) (* P_MIN_WIDTH_DATA_ECC = "8" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) 
(* P_MIN_WIDTH_DATA_SHFT = "8" *) (* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
(* P_WIDTH_ADDR_READ_A = "4" *) (* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) 
(* P_WIDTH_ADDR_WRITE_B = "4" *) (* P_WIDTH_COL_WRITE_A = "8" *) (* P_WIDTH_COL_WRITE_B = "8" *) 
(* READ_DATA_WIDTH_A = "8" *) (* READ_DATA_WIDTH_B = "8" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "8" *) (* WRITE_DATA_WIDTH_B = "8" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [7:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [7:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [7:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [7:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]\gen_rd_b.doutb_reg0 ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[0] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[1] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[2] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[3] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[4] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[5] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[6] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[7] ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[0] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[1] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[2] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[3] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[4] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[5] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[6] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [6]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[6] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[7] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [7]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[0] ),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[1] ),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[2] ),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[3] ),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[4] ),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[5] ),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[6] ),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[7] ),
        .Q(doutb[7]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [1:0]),
        .DOB(\gen_rd_b.doutb_reg0 [3:2]),
        .DOC(\gen_rd_b.doutb_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [7:6]),
        .DOB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOB_UNCONNECTED [1:0]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "8" *) (* BYTE_WRITE_WIDTH_B = "8" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "0" *) 
(* MEMORY_SIZE = "128" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "8" *) 
(* P_MIN_WIDTH_DATA_A = "8" *) (* P_MIN_WIDTH_DATA_B = "8" *) (* P_MIN_WIDTH_DATA_ECC = "8" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "8" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) (* P_WIDTH_ADDR_READ_B = "4" *) 
(* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) (* P_WIDTH_COL_WRITE_A = "8" *) 
(* P_WIDTH_COL_WRITE_B = "8" *) (* READ_DATA_WIDTH_A = "8" *) (* READ_DATA_WIDTH_B = "8" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "8" *) 
(* WRITE_DATA_WIDTH_B = "8" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [7:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [7:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [7:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [7:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]\gen_rd_b.doutb_reg0 ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[0] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[1] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[2] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[3] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[4] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[5] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[6] ;
  wire \gen_rd_b.doutb_reg_reg_n_0_[7] ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[0] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[1] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[2] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[3] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[4] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[5] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[6] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [6]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[6] ),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[7] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [7]),
        .Q(\gen_rd_b.doutb_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[0] ),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[1] ),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[2] ),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[3] ),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[4] ),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[5] ),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[6] ),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg_reg_n_0_[7] ),
        .Q(doutb[7]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [1:0]),
        .DOB(\gen_rd_b.doutb_reg0 [3:2]),
        .DOC(\gen_rd_b.doutb_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [7:6]),
        .DOB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOB_UNCONNECTED [1:0]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
