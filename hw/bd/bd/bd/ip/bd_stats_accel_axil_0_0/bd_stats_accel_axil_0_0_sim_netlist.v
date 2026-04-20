// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Apr 20 16:41:47 2026
// Host        : atomi-00 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /mnt/shared/syncthing/Documents/School/Spring2026/SoC/Projects/soc_final_project/soc_final/soc_final.gen/sources_1/bd/bd/ip/bd_stats_accel_axil_0_0/bd_stats_accel_axil_0_0_sim_netlist.v
// Design      : bd_stats_accel_axil_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_stats_accel_axil_0_0,stats_accel_axil,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "stats_accel_axil,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module bd_stats_accel_axil_0_0
   (s_axi_aclk,
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
    bram_addr,
    bram_clk,
    bram_wdata,
    bram_rdata,
    bram_en,
    bram_rst,
    bram_we);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 166666667, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 166666667, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN bd_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  output [31:0]bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 bram_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_stats_accel_axil_0_0_bram_clk, INSERT_VIP 0" *) output bram_clk;
  output [31:0]bram_wdata;
  input [31:0]bram_rdata;
  output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bram_rst RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output bram_rst;
  output [3:0]bram_we;

  wire \<const0> ;
  wire [9:0]\^bram_addr ;
  wire bram_en;
  wire [31:0]bram_rdata;
  wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr[31] = \<const0> ;
  assign bram_addr[30] = \<const0> ;
  assign bram_addr[29] = \<const0> ;
  assign bram_addr[28] = \<const0> ;
  assign bram_addr[27] = \<const0> ;
  assign bram_addr[26] = \<const0> ;
  assign bram_addr[25] = \<const0> ;
  assign bram_addr[24] = \<const0> ;
  assign bram_addr[23] = \<const0> ;
  assign bram_addr[22] = \<const0> ;
  assign bram_addr[21] = \<const0> ;
  assign bram_addr[20] = \<const0> ;
  assign bram_addr[19] = \<const0> ;
  assign bram_addr[18] = \<const0> ;
  assign bram_addr[17] = \<const0> ;
  assign bram_addr[16] = \<const0> ;
  assign bram_addr[15] = \<const0> ;
  assign bram_addr[14] = \<const0> ;
  assign bram_addr[13] = \<const0> ;
  assign bram_addr[12] = \<const0> ;
  assign bram_addr[11] = \<const0> ;
  assign bram_addr[10] = \<const0> ;
  assign bram_addr[9:0] = \^bram_addr [9:0];
  assign bram_clk = s_axi_aclk;
  assign bram_rst = \<const0> ;
  assign bram_wdata[31] = \<const0> ;
  assign bram_wdata[30] = \<const0> ;
  assign bram_wdata[29] = \<const0> ;
  assign bram_wdata[28] = \<const0> ;
  assign bram_wdata[27] = \<const0> ;
  assign bram_wdata[26] = \<const0> ;
  assign bram_wdata[25] = \<const0> ;
  assign bram_wdata[24] = \<const0> ;
  assign bram_wdata[23] = \<const0> ;
  assign bram_wdata[22] = \<const0> ;
  assign bram_wdata[21] = \<const0> ;
  assign bram_wdata[20] = \<const0> ;
  assign bram_wdata[19] = \<const0> ;
  assign bram_wdata[18] = \<const0> ;
  assign bram_wdata[17] = \<const0> ;
  assign bram_wdata[16] = \<const0> ;
  assign bram_wdata[15] = \<const0> ;
  assign bram_wdata[14] = \<const0> ;
  assign bram_wdata[13] = \<const0> ;
  assign bram_wdata[12] = \<const0> ;
  assign bram_wdata[11] = \<const0> ;
  assign bram_wdata[10] = \<const0> ;
  assign bram_wdata[9] = \<const0> ;
  assign bram_wdata[8] = \<const0> ;
  assign bram_wdata[7] = \<const0> ;
  assign bram_wdata[6] = \<const0> ;
  assign bram_wdata[5] = \<const0> ;
  assign bram_wdata[4] = \<const0> ;
  assign bram_wdata[3] = \<const0> ;
  assign bram_wdata[2] = \<const0> ;
  assign bram_wdata[1] = \<const0> ;
  assign bram_wdata[0] = \<const0> ;
  assign bram_we[3] = \<const0> ;
  assign bram_we[2] = \<const0> ;
  assign bram_we[1] = \<const0> ;
  assign bram_we[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_stats_accel_axil_0_0_stats_accel_axil inst
       (.\FSM_onehot_state_reg[1] (bram_en),
        .bram_addr(\^bram_addr ),
        .bram_rdata(bram_rdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_reg_0(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "stats_accel_axil" *) 
module bd_stats_accel_axil_0_0_stats_accel_axil
   (s_axi_awready,
    s_axi_bvalid_reg_0,
    s_axi_wready,
    s_axi_rvalid_reg_0,
    \FSM_onehot_state_reg[1] ,
    bram_addr,
    s_axi_rdata,
    s_axi_arready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wstrb,
    s_axi_wdata,
    bram_rdata,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_aresetn);
  output s_axi_awready;
  output s_axi_bvalid_reg_0;
  output s_axi_wready;
  output s_axi_rvalid_reg_0;
  output \FSM_onehot_state_reg[1] ;
  output [9:0]bram_addr;
  output [31:0]s_axi_rdata;
  output s_axi_arready;
  input [3:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_aclk;
  input [3:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [31:0]bram_rdata;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_aresetn;

  wire \FSM_onehot_state_reg[1] ;
  wire aw_hold_valid0;
  wire aw_hold_valid1__1;
  wire aw_hold_valid_i_1_n_0;
  wire aw_hold_valid_reg_n_0;
  wire \awaddr_q_reg_n_0_[5] ;
  wire [9:0]bram_addr;
  wire [31:0]bram_rdata;
  wire clear_done_pulse;
  wire clear_done_pulse3_out;
  wire [31:0]length_reg;
  wire [31:7]p_0_in;
  wire p_0_in0;
  wire [1:0]p_0_in_0;
  wire p_1_in0;
  wire [31:0]reg_read;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_1_n_0;
  wire s_axi_bvalid_reg_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[2]_i_2_n_0 ;
  wire \s_axi_rdata[2]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start_pulse;
  wire start_pulse1_out;
  wire [31:0]threshold_reg;
  wire \threshold_reg[15]_i_1_n_0 ;
  wire \threshold_reg[23]_i_1_n_0 ;
  wire \threshold_reg[31]_i_1_n_0 ;
  wire \threshold_reg[7]_i_1_n_0 ;
  wire u_core_n_0;
  wire w_hold_valid0;
  wire w_hold_valid_i_1_n_0;
  wire w_hold_valid_reg_n_0;
  wire [3:0]wdata_q;
  wire \wdata_q_reg_n_0_[10] ;
  wire \wdata_q_reg_n_0_[11] ;
  wire \wdata_q_reg_n_0_[12] ;
  wire \wdata_q_reg_n_0_[13] ;
  wire \wdata_q_reg_n_0_[14] ;
  wire \wdata_q_reg_n_0_[15] ;
  wire \wdata_q_reg_n_0_[16] ;
  wire \wdata_q_reg_n_0_[17] ;
  wire \wdata_q_reg_n_0_[18] ;
  wire \wdata_q_reg_n_0_[19] ;
  wire \wdata_q_reg_n_0_[1] ;
  wire \wdata_q_reg_n_0_[20] ;
  wire \wdata_q_reg_n_0_[21] ;
  wire \wdata_q_reg_n_0_[22] ;
  wire \wdata_q_reg_n_0_[23] ;
  wire \wdata_q_reg_n_0_[24] ;
  wire \wdata_q_reg_n_0_[25] ;
  wire \wdata_q_reg_n_0_[26] ;
  wire \wdata_q_reg_n_0_[27] ;
  wire \wdata_q_reg_n_0_[28] ;
  wire \wdata_q_reg_n_0_[29] ;
  wire \wdata_q_reg_n_0_[2] ;
  wire \wdata_q_reg_n_0_[30] ;
  wire \wdata_q_reg_n_0_[31] ;
  wire \wdata_q_reg_n_0_[4] ;
  wire \wdata_q_reg_n_0_[5] ;
  wire \wdata_q_reg_n_0_[6] ;
  wire \wdata_q_reg_n_0_[7] ;
  wire \wdata_q_reg_n_0_[8] ;
  wire \wdata_q_reg_n_0_[9] ;
  wire \wstrb_q_reg_n_0_[0] ;
  wire \wstrb_q_reg_n_0_[2] ;
  wire \wstrb_q_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hF05C)) 
    aw_hold_valid_i_1
       (.I0(w_hold_valid_reg_n_0),
        .I1(s_axi_awvalid),
        .I2(aw_hold_valid_reg_n_0),
        .I3(s_axi_bvalid_reg_0),
        .O(aw_hold_valid_i_1_n_0));
  FDCE aw_hold_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(u_core_n_0),
        .D(aw_hold_valid_i_1_n_0),
        .Q(aw_hold_valid_reg_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    \awaddr_q[5]_i_1 
       (.I0(s_axi_bvalid_reg_0),
        .I1(aw_hold_valid_reg_n_0),
        .I2(s_axi_awvalid),
        .O(aw_hold_valid0));
  FDCE \awaddr_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_awaddr[0]),
        .Q(p_0_in_0[0]));
  FDCE \awaddr_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(aw_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_awaddr[1]),
        .Q(p_0_in_0[1]));
  FDCE \awaddr_q_reg[4] 
       (.C(s_axi_aclk),
        .CE(aw_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_awaddr[2]),
        .Q(p_0_in0));
  FDCE \awaddr_q_reg[5] 
       (.C(s_axi_aclk),
        .CE(aw_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_awaddr[3]),
        .Q(\awaddr_q_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    clear_done_pulse_i_1
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(wdata_q[3]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(clear_done_pulse3_out));
  FDCE clear_done_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(u_core_n_0),
        .D(clear_done_pulse3_out),
        .Q(clear_done_pulse));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \length_reg[15]_i_1 
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_1_in0),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \length_reg[23]_i_1 
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(\wstrb_q_reg_n_0_[2] ),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \length_reg[31]_i_1 
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(\wstrb_q_reg_n_0_[3] ),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \length_reg[31]_i_2 
       (.I0(aw_hold_valid_reg_n_0),
        .I1(s_axi_bvalid_reg_0),
        .I2(w_hold_valid_reg_n_0),
        .O(aw_hold_valid1__1));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \length_reg[7]_i_1 
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(\wstrb_q_reg_n_0_[0] ),
        .O(p_0_in[7]));
  FDPE \length_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_0_in[7]),
        .D(wdata_q[0]),
        .PRE(u_core_n_0),
        .Q(length_reg[0]));
  FDCE \length_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_0_in[15]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[10] ),
        .Q(length_reg[10]));
  FDCE \length_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_0_in[15]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[11] ),
        .Q(length_reg[11]));
  FDCE \length_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_0_in[15]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[12] ),
        .Q(length_reg[12]));
  FDCE \length_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_0_in[15]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[13] ),
        .Q(length_reg[13]));
  FDCE \length_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_0_in[15]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[14] ),
        .Q(length_reg[14]));
  FDCE \length_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_0_in[15]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[15] ),
        .Q(length_reg[15]));
  FDCE \length_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_0_in[23]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[16] ),
        .Q(length_reg[16]));
  FDCE \length_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_0_in[23]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[17] ),
        .Q(length_reg[17]));
  FDCE \length_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_0_in[23]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[18] ),
        .Q(length_reg[18]));
  FDCE \length_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_0_in[23]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[19] ),
        .Q(length_reg[19]));
  FDCE \length_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_0_in[7]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[1] ),
        .Q(length_reg[1]));
  FDCE \length_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_0_in[23]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[20] ),
        .Q(length_reg[20]));
  FDCE \length_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_0_in[23]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[21] ),
        .Q(length_reg[21]));
  FDCE \length_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_0_in[23]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[22] ),
        .Q(length_reg[22]));
  FDCE \length_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_0_in[23]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[23] ),
        .Q(length_reg[23]));
  FDCE \length_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_0_in[31]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[24] ),
        .Q(length_reg[24]));
  FDCE \length_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_0_in[31]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[25] ),
        .Q(length_reg[25]));
  FDCE \length_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_0_in[31]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[26] ),
        .Q(length_reg[26]));
  FDCE \length_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_0_in[31]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[27] ),
        .Q(length_reg[27]));
  FDCE \length_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_0_in[31]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[28] ),
        .Q(length_reg[28]));
  FDCE \length_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_0_in[31]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[29] ),
        .Q(length_reg[29]));
  FDCE \length_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_0_in[7]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[2] ),
        .Q(length_reg[2]));
  FDCE \length_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_0_in[31]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[30] ),
        .Q(length_reg[30]));
  FDCE \length_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_0_in[31]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[31] ),
        .Q(length_reg[31]));
  FDCE \length_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_0_in[7]),
        .CLR(u_core_n_0),
        .D(wdata_q[3]),
        .Q(length_reg[3]));
  FDCE \length_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_0_in[7]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[4] ),
        .Q(length_reg[4]));
  FDCE \length_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_0_in[7]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[5] ),
        .Q(length_reg[5]));
  FDCE \length_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_0_in[7]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[6] ),
        .Q(length_reg[6]));
  FDCE \length_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_0_in[7]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[7] ),
        .Q(length_reg[7]));
  FDCE \length_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_0_in[15]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[8] ),
        .Q(length_reg[8]));
  FDCE \length_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_0_in[15]),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[9] ),
        .Q(length_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(s_axi_rvalid_reg_0),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_awready_INST_0
       (.I0(aw_hold_valid_reg_n_0),
        .I1(s_axi_bvalid_reg_0),
        .O(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h5C50)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(w_hold_valid_reg_n_0),
        .I2(s_axi_bvalid_reg_0),
        .I3(aw_hold_valid_reg_n_0),
        .O(s_axi_bvalid_i_1_n_0));
  FDCE s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(u_core_n_0),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata[2]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .O(\s_axi_rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[2]_i_3 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[2]),
        .O(\s_axi_rdata[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid_reg_0),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  FDCE \s_axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[0]),
        .Q(s_axi_rdata[0]));
  FDCE \s_axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[10]),
        .Q(s_axi_rdata[10]));
  FDCE \s_axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[11]),
        .Q(s_axi_rdata[11]));
  FDCE \s_axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[12]),
        .Q(s_axi_rdata[12]));
  FDCE \s_axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[13]),
        .Q(s_axi_rdata[13]));
  FDCE \s_axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[14]),
        .Q(s_axi_rdata[14]));
  FDCE \s_axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[15]),
        .Q(s_axi_rdata[15]));
  FDCE \s_axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[16]),
        .Q(s_axi_rdata[16]));
  FDCE \s_axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[17]),
        .Q(s_axi_rdata[17]));
  FDCE \s_axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[18]),
        .Q(s_axi_rdata[18]));
  FDCE \s_axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[19]),
        .Q(s_axi_rdata[19]));
  FDCE \s_axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[1]),
        .Q(s_axi_rdata[1]));
  FDCE \s_axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[20]),
        .Q(s_axi_rdata[20]));
  FDCE \s_axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[21]),
        .Q(s_axi_rdata[21]));
  FDCE \s_axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[22]),
        .Q(s_axi_rdata[22]));
  FDCE \s_axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[23]),
        .Q(s_axi_rdata[23]));
  FDCE \s_axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[24]),
        .Q(s_axi_rdata[24]));
  FDCE \s_axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[25]),
        .Q(s_axi_rdata[25]));
  FDCE \s_axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[26]),
        .Q(s_axi_rdata[26]));
  FDCE \s_axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[27]),
        .Q(s_axi_rdata[27]));
  FDCE \s_axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[28]),
        .Q(s_axi_rdata[28]));
  FDCE \s_axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[29]),
        .Q(s_axi_rdata[29]));
  FDCE \s_axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[2]),
        .Q(s_axi_rdata[2]));
  FDCE \s_axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[30]),
        .Q(s_axi_rdata[30]));
  FDCE \s_axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[31]),
        .Q(s_axi_rdata[31]));
  FDCE \s_axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[3]),
        .Q(s_axi_rdata[3]));
  FDCE \s_axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[4]),
        .Q(s_axi_rdata[4]));
  FDCE \s_axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[5]),
        .Q(s_axi_rdata[5]));
  FDCE \s_axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[6]),
        .Q(s_axi_rdata[6]));
  FDCE \s_axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[7]),
        .Q(s_axi_rdata[7]));
  FDCE \s_axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[8]),
        .Q(s_axi_rdata[8]));
  FDCE \s_axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(reg_read[9]),
        .Q(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid_reg_0),
        .O(s_axi_rvalid_i_1_n_0));
  FDCE s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(u_core_n_0),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_wready_INST_0
       (.I0(w_hold_valid_reg_n_0),
        .I1(s_axi_bvalid_reg_0),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    start_pulse_i_1
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(wdata_q[0]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(start_pulse1_out));
  FDCE start_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(u_core_n_0),
        .D(start_pulse1_out),
        .Q(start_pulse));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \threshold_reg[15]_i_1 
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(p_0_in_0[0]),
        .I4(p_1_in0),
        .I5(p_0_in_0[1]),
        .O(\threshold_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \threshold_reg[23]_i_1 
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(p_0_in_0[0]),
        .I4(\wstrb_q_reg_n_0_[2] ),
        .I5(p_0_in_0[1]),
        .O(\threshold_reg[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \threshold_reg[31]_i_1 
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(p_0_in_0[0]),
        .I4(\wstrb_q_reg_n_0_[3] ),
        .I5(p_0_in_0[1]),
        .O(\threshold_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \threshold_reg[7]_i_1 
       (.I0(aw_hold_valid1__1),
        .I1(\awaddr_q_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(p_0_in_0[0]),
        .I4(\wstrb_q_reg_n_0_[0] ),
        .I5(p_0_in_0[1]),
        .O(\threshold_reg[7]_i_1_n_0 ));
  FDCE \threshold_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[7]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(wdata_q[0]),
        .Q(threshold_reg[0]));
  FDCE \threshold_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[15]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[10] ),
        .Q(threshold_reg[10]));
  FDCE \threshold_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[15]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[11] ),
        .Q(threshold_reg[11]));
  FDCE \threshold_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[15]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[12] ),
        .Q(threshold_reg[12]));
  FDCE \threshold_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[15]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[13] ),
        .Q(threshold_reg[13]));
  FDCE \threshold_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[15]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[14] ),
        .Q(threshold_reg[14]));
  FDCE \threshold_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[15]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[15] ),
        .Q(threshold_reg[15]));
  FDCE \threshold_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[23]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[16] ),
        .Q(threshold_reg[16]));
  FDCE \threshold_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[23]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[17] ),
        .Q(threshold_reg[17]));
  FDCE \threshold_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[23]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[18] ),
        .Q(threshold_reg[18]));
  FDCE \threshold_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[23]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[19] ),
        .Q(threshold_reg[19]));
  FDCE \threshold_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[7]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[1] ),
        .Q(threshold_reg[1]));
  FDCE \threshold_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[23]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[20] ),
        .Q(threshold_reg[20]));
  FDCE \threshold_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[23]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[21] ),
        .Q(threshold_reg[21]));
  FDCE \threshold_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[23]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[22] ),
        .Q(threshold_reg[22]));
  FDCE \threshold_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[23]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[23] ),
        .Q(threshold_reg[23]));
  FDCE \threshold_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[24] ),
        .Q(threshold_reg[24]));
  FDCE \threshold_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[25] ),
        .Q(threshold_reg[25]));
  FDCE \threshold_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[26] ),
        .Q(threshold_reg[26]));
  FDCE \threshold_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[27] ),
        .Q(threshold_reg[27]));
  FDCE \threshold_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[28] ),
        .Q(threshold_reg[28]));
  FDCE \threshold_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[29] ),
        .Q(threshold_reg[29]));
  FDCE \threshold_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[7]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[2] ),
        .Q(threshold_reg[2]));
  FDCE \threshold_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[30] ),
        .Q(threshold_reg[30]));
  FDCE \threshold_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[31]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[31] ),
        .Q(threshold_reg[31]));
  FDCE \threshold_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[7]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(wdata_q[3]),
        .Q(threshold_reg[3]));
  FDCE \threshold_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[7]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[4] ),
        .Q(threshold_reg[4]));
  FDCE \threshold_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[7]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[5] ),
        .Q(threshold_reg[5]));
  FDCE \threshold_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[7]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[6] ),
        .Q(threshold_reg[6]));
  FDCE \threshold_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[7]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[7] ),
        .Q(threshold_reg[7]));
  FDCE \threshold_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[15]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[8] ),
        .Q(threshold_reg[8]));
  FDCE \threshold_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\threshold_reg[15]_i_1_n_0 ),
        .CLR(u_core_n_0),
        .D(\wdata_q_reg_n_0_[9] ),
        .Q(threshold_reg[9]));
  bd_stats_accel_axil_0_0_stats_accel_core u_core
       (.D(reg_read),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .Q(length_reg),
        .bram_addr(bram_addr),
        .bram_rdata(bram_rdata),
        .clear_done_pulse(clear_done_pulse),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(u_core_n_0),
        .\s_axi_rdata_reg[2] (\s_axi_rdata[2]_i_2_n_0 ),
        .\s_axi_rdata_reg[2]_0 (\s_axi_rdata[2]_i_3_n_0 ),
        .start_pulse(start_pulse),
        .\threshold_latched_reg[31]_0 (threshold_reg));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hF05C)) 
    w_hold_valid_i_1
       (.I0(aw_hold_valid_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(w_hold_valid_reg_n_0),
        .I3(s_axi_bvalid_reg_0),
        .O(w_hold_valid_i_1_n_0));
  FDCE w_hold_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(u_core_n_0),
        .D(w_hold_valid_i_1_n_0),
        .Q(w_hold_valid_reg_n_0));
  FDCE \wdata_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[0]),
        .Q(wdata_q[0]));
  FDCE \wdata_q_reg[10] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[10]),
        .Q(\wdata_q_reg_n_0_[10] ));
  FDCE \wdata_q_reg[11] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[11]),
        .Q(\wdata_q_reg_n_0_[11] ));
  FDCE \wdata_q_reg[12] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[12]),
        .Q(\wdata_q_reg_n_0_[12] ));
  FDCE \wdata_q_reg[13] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[13]),
        .Q(\wdata_q_reg_n_0_[13] ));
  FDCE \wdata_q_reg[14] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[14]),
        .Q(\wdata_q_reg_n_0_[14] ));
  FDCE \wdata_q_reg[15] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[15]),
        .Q(\wdata_q_reg_n_0_[15] ));
  FDCE \wdata_q_reg[16] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[16]),
        .Q(\wdata_q_reg_n_0_[16] ));
  FDCE \wdata_q_reg[17] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[17]),
        .Q(\wdata_q_reg_n_0_[17] ));
  FDCE \wdata_q_reg[18] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[18]),
        .Q(\wdata_q_reg_n_0_[18] ));
  FDCE \wdata_q_reg[19] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[19]),
        .Q(\wdata_q_reg_n_0_[19] ));
  FDCE \wdata_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[1]),
        .Q(\wdata_q_reg_n_0_[1] ));
  FDCE \wdata_q_reg[20] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[20]),
        .Q(\wdata_q_reg_n_0_[20] ));
  FDCE \wdata_q_reg[21] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[21]),
        .Q(\wdata_q_reg_n_0_[21] ));
  FDCE \wdata_q_reg[22] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[22]),
        .Q(\wdata_q_reg_n_0_[22] ));
  FDCE \wdata_q_reg[23] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[23]),
        .Q(\wdata_q_reg_n_0_[23] ));
  FDCE \wdata_q_reg[24] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[24]),
        .Q(\wdata_q_reg_n_0_[24] ));
  FDCE \wdata_q_reg[25] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[25]),
        .Q(\wdata_q_reg_n_0_[25] ));
  FDCE \wdata_q_reg[26] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[26]),
        .Q(\wdata_q_reg_n_0_[26] ));
  FDCE \wdata_q_reg[27] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[27]),
        .Q(\wdata_q_reg_n_0_[27] ));
  FDCE \wdata_q_reg[28] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[28]),
        .Q(\wdata_q_reg_n_0_[28] ));
  FDCE \wdata_q_reg[29] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[29]),
        .Q(\wdata_q_reg_n_0_[29] ));
  FDCE \wdata_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[2]),
        .Q(\wdata_q_reg_n_0_[2] ));
  FDCE \wdata_q_reg[30] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[30]),
        .Q(\wdata_q_reg_n_0_[30] ));
  FDCE \wdata_q_reg[31] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[31]),
        .Q(\wdata_q_reg_n_0_[31] ));
  FDCE \wdata_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[3]),
        .Q(wdata_q[3]));
  FDCE \wdata_q_reg[4] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[4]),
        .Q(\wdata_q_reg_n_0_[4] ));
  FDCE \wdata_q_reg[5] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[5]),
        .Q(\wdata_q_reg_n_0_[5] ));
  FDCE \wdata_q_reg[6] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[6]),
        .Q(\wdata_q_reg_n_0_[6] ));
  FDCE \wdata_q_reg[7] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[7]),
        .Q(\wdata_q_reg_n_0_[7] ));
  FDCE \wdata_q_reg[8] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[8]),
        .Q(\wdata_q_reg_n_0_[8] ));
  FDCE \wdata_q_reg[9] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wdata[9]),
        .Q(\wdata_q_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h10)) 
    \wstrb_q[3]_i_1 
       (.I0(s_axi_bvalid_reg_0),
        .I1(w_hold_valid_reg_n_0),
        .I2(s_axi_wvalid),
        .O(w_hold_valid0));
  FDCE \wstrb_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wstrb[0]),
        .Q(\wstrb_q_reg_n_0_[0] ));
  FDCE \wstrb_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wstrb[1]),
        .Q(p_1_in0));
  FDCE \wstrb_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wstrb[2]),
        .Q(\wstrb_q_reg_n_0_[2] ));
  FDCE \wstrb_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(w_hold_valid0),
        .CLR(u_core_n_0),
        .D(s_axi_wstrb[3]),
        .Q(\wstrb_q_reg_n_0_[3] ));
endmodule

(* ORIG_REF_NAME = "stats_accel_core" *) 
module bd_stats_accel_axil_0_0_stats_accel_core
   (s_axi_aresetn_0,
    \FSM_onehot_state_reg[1]_0 ,
    bram_addr,
    D,
    s_axi_aclk,
    s_axi_araddr,
    bram_rdata,
    start_pulse,
    Q,
    clear_done_pulse,
    \threshold_latched_reg[31]_0 ,
    \s_axi_rdata_reg[2] ,
    \s_axi_rdata_reg[2]_0 ,
    s_axi_aresetn);
  output s_axi_aresetn_0;
  output \FSM_onehot_state_reg[1]_0 ;
  output [9:0]bram_addr;
  output [31:0]D;
  input s_axi_aclk;
  input [3:0]s_axi_araddr;
  input [31:0]bram_rdata;
  input start_pulse;
  input [31:0]Q;
  input clear_done_pulse;
  input [31:0]\threshold_latched_reg[31]_0 ;
  input \s_axi_rdata_reg[2] ;
  input \s_axi_rdata_reg[2]_0 ;
  input s_axi_aresetn;

  wire [31:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2]_rep__0_n_0 ;
  wire \FSM_onehot_state_reg[2]_rep__1_n_0 ;
  wire \FSM_onehot_state_reg[2]_rep_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [31:0]Q;
  wire [9:0]bram_addr;
  wire [31:0]bram_rdata;
  wire busy_i_1_n_0;
  wire clear_done_pulse;
  wire core_busy;
  wire [31:0]countgt;
  wire countgt0_carry__0_i_1_n_0;
  wire countgt0_carry__0_i_2_n_0;
  wire countgt0_carry__0_i_3_n_0;
  wire countgt0_carry__0_i_4_n_0;
  wire countgt0_carry__0_i_5_n_0;
  wire countgt0_carry__0_i_6_n_0;
  wire countgt0_carry__0_i_7_n_0;
  wire countgt0_carry__0_i_8_n_0;
  wire countgt0_carry__0_n_0;
  wire countgt0_carry__0_n_1;
  wire countgt0_carry__0_n_2;
  wire countgt0_carry__0_n_3;
  wire countgt0_carry__1_i_1_n_0;
  wire countgt0_carry__1_i_2_n_0;
  wire countgt0_carry__1_i_3_n_0;
  wire countgt0_carry__1_i_4_n_0;
  wire countgt0_carry__1_i_5_n_0;
  wire countgt0_carry__1_i_6_n_0;
  wire countgt0_carry__1_i_7_n_0;
  wire countgt0_carry__1_i_8_n_0;
  wire countgt0_carry__1_n_0;
  wire countgt0_carry__1_n_1;
  wire countgt0_carry__1_n_2;
  wire countgt0_carry__1_n_3;
  wire countgt0_carry__2_i_1_n_0;
  wire countgt0_carry__2_i_2_n_0;
  wire countgt0_carry__2_i_3_n_0;
  wire countgt0_carry__2_i_4_n_0;
  wire countgt0_carry__2_i_5_n_0;
  wire countgt0_carry__2_i_6_n_0;
  wire countgt0_carry__2_i_7_n_0;
  wire countgt0_carry__2_i_8_n_0;
  wire countgt0_carry__2_n_0;
  wire countgt0_carry__2_n_1;
  wire countgt0_carry__2_n_2;
  wire countgt0_carry__2_n_3;
  wire countgt0_carry_i_1_n_0;
  wire countgt0_carry_i_2_n_0;
  wire countgt0_carry_i_3_n_0;
  wire countgt0_carry_i_4_n_0;
  wire countgt0_carry_i_5_n_0;
  wire countgt0_carry_i_6_n_0;
  wire countgt0_carry_i_7_n_0;
  wire countgt0_carry_i_8_n_0;
  wire countgt0_carry_n_0;
  wire countgt0_carry_n_1;
  wire countgt0_carry_n_2;
  wire countgt0_carry_n_3;
  wire \countgt0_inferred__0/i__carry__0_n_0 ;
  wire \countgt0_inferred__0/i__carry__0_n_1 ;
  wire \countgt0_inferred__0/i__carry__0_n_2 ;
  wire \countgt0_inferred__0/i__carry__0_n_3 ;
  wire \countgt0_inferred__0/i__carry__1_n_0 ;
  wire \countgt0_inferred__0/i__carry__1_n_1 ;
  wire \countgt0_inferred__0/i__carry__1_n_2 ;
  wire \countgt0_inferred__0/i__carry__1_n_3 ;
  wire \countgt0_inferred__0/i__carry__2_n_0 ;
  wire \countgt0_inferred__0/i__carry__2_n_1 ;
  wire \countgt0_inferred__0/i__carry__2_n_2 ;
  wire \countgt0_inferred__0/i__carry__2_n_3 ;
  wire \countgt0_inferred__0/i__carry__3_n_0 ;
  wire \countgt0_inferred__0/i__carry__3_n_1 ;
  wire \countgt0_inferred__0/i__carry__3_n_2 ;
  wire \countgt0_inferred__0/i__carry__3_n_3 ;
  wire \countgt0_inferred__0/i__carry__4_n_0 ;
  wire \countgt0_inferred__0/i__carry__4_n_1 ;
  wire \countgt0_inferred__0/i__carry__4_n_2 ;
  wire \countgt0_inferred__0/i__carry__4_n_3 ;
  wire \countgt0_inferred__0/i__carry__5_n_0 ;
  wire \countgt0_inferred__0/i__carry__5_n_1 ;
  wire \countgt0_inferred__0/i__carry__5_n_2 ;
  wire \countgt0_inferred__0/i__carry__5_n_3 ;
  wire \countgt0_inferred__0/i__carry__6_n_2 ;
  wire \countgt0_inferred__0/i__carry__6_n_3 ;
  wire \countgt0_inferred__0/i__carry_n_0 ;
  wire \countgt0_inferred__0/i__carry_n_1 ;
  wire \countgt0_inferred__0/i__carry_n_2 ;
  wire \countgt0_inferred__0/i__carry_n_3 ;
  wire \countgt[0]_i_1_n_0 ;
  wire \countgt[10]_i_1_n_0 ;
  wire \countgt[11]_i_1_n_0 ;
  wire \countgt[12]_i_1_n_0 ;
  wire \countgt[13]_i_1_n_0 ;
  wire \countgt[14]_i_1_n_0 ;
  wire \countgt[15]_i_1_n_0 ;
  wire \countgt[16]_i_1_n_0 ;
  wire \countgt[17]_i_1_n_0 ;
  wire \countgt[18]_i_1_n_0 ;
  wire \countgt[19]_i_1_n_0 ;
  wire \countgt[1]_i_1_n_0 ;
  wire \countgt[20]_i_1_n_0 ;
  wire \countgt[21]_i_1_n_0 ;
  wire \countgt[22]_i_1_n_0 ;
  wire \countgt[23]_i_1_n_0 ;
  wire \countgt[24]_i_1_n_0 ;
  wire \countgt[25]_i_1_n_0 ;
  wire \countgt[26]_i_1_n_0 ;
  wire \countgt[27]_i_1_n_0 ;
  wire \countgt[28]_i_1_n_0 ;
  wire \countgt[29]_i_1_n_0 ;
  wire \countgt[2]_i_1_n_0 ;
  wire \countgt[30]_i_1_n_0 ;
  wire \countgt[31]_i_1_n_0 ;
  wire \countgt[31]_i_2_n_0 ;
  wire \countgt[3]_i_1_n_0 ;
  wire \countgt[4]_i_1_n_0 ;
  wire \countgt[5]_i_1_n_0 ;
  wire \countgt[6]_i_1_n_0 ;
  wire \countgt[7]_i_1_n_0 ;
  wire \countgt[8]_i_1_n_0 ;
  wire \countgt[9]_i_1_n_0 ;
  wire [31:0]cyclecount;
  wire cyclecount0_carry__0_n_0;
  wire cyclecount0_carry__0_n_1;
  wire cyclecount0_carry__0_n_2;
  wire cyclecount0_carry__0_n_3;
  wire cyclecount0_carry__1_n_0;
  wire cyclecount0_carry__1_n_1;
  wire cyclecount0_carry__1_n_2;
  wire cyclecount0_carry__1_n_3;
  wire cyclecount0_carry__2_n_0;
  wire cyclecount0_carry__2_n_1;
  wire cyclecount0_carry__2_n_2;
  wire cyclecount0_carry__2_n_3;
  wire cyclecount0_carry__3_n_0;
  wire cyclecount0_carry__3_n_1;
  wire cyclecount0_carry__3_n_2;
  wire cyclecount0_carry__3_n_3;
  wire cyclecount0_carry__4_n_0;
  wire cyclecount0_carry__4_n_1;
  wire cyclecount0_carry__4_n_2;
  wire cyclecount0_carry__4_n_3;
  wire cyclecount0_carry__5_n_0;
  wire cyclecount0_carry__5_n_1;
  wire cyclecount0_carry__5_n_2;
  wire cyclecount0_carry__5_n_3;
  wire cyclecount0_carry__6_n_2;
  wire cyclecount0_carry__6_n_3;
  wire cyclecount0_carry_n_0;
  wire cyclecount0_carry_n_1;
  wire cyclecount0_carry_n_2;
  wire cyclecount0_carry_n_3;
  wire \cyclecount[0]_i_1_n_0 ;
  wire \cyclecount[10]_i_1_n_0 ;
  wire \cyclecount[11]_i_1_n_0 ;
  wire \cyclecount[12]_i_1_n_0 ;
  wire \cyclecount[13]_i_1_n_0 ;
  wire \cyclecount[14]_i_1_n_0 ;
  wire \cyclecount[15]_i_1_n_0 ;
  wire \cyclecount[16]_i_1_n_0 ;
  wire \cyclecount[17]_i_1_n_0 ;
  wire \cyclecount[18]_i_1_n_0 ;
  wire \cyclecount[19]_i_1_n_0 ;
  wire \cyclecount[1]_i_1_n_0 ;
  wire \cyclecount[20]_i_1_n_0 ;
  wire \cyclecount[21]_i_1_n_0 ;
  wire \cyclecount[22]_i_1_n_0 ;
  wire \cyclecount[23]_i_1_n_0 ;
  wire \cyclecount[24]_i_1_n_0 ;
  wire \cyclecount[25]_i_1_n_0 ;
  wire \cyclecount[26]_i_1_n_0 ;
  wire \cyclecount[27]_i_1_n_0 ;
  wire \cyclecount[28]_i_1_n_0 ;
  wire \cyclecount[29]_i_1_n_0 ;
  wire \cyclecount[2]_i_1_n_0 ;
  wire \cyclecount[30]_i_1_n_0 ;
  wire \cyclecount[31]_i_1_n_0 ;
  wire \cyclecount[31]_i_2_n_0 ;
  wire \cyclecount[31]_i_4_n_0 ;
  wire \cyclecount[31]_i_5_n_0 ;
  wire \cyclecount[3]_i_1_n_0 ;
  wire \cyclecount[4]_i_1_n_0 ;
  wire \cyclecount[5]_i_1_n_0 ;
  wire \cyclecount[6]_i_1_n_0 ;
  wire \cyclecount[7]_i_1_n_0 ;
  wire \cyclecount[8]_i_1_n_0 ;
  wire \cyclecount[9]_i_1_n_0 ;
  wire [31:0]data4;
  wire done;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [31:10]idx;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[10]_i_1_n_0 ;
  wire \idx[11]_i_1_n_0 ;
  wire \idx[12]_i_1_n_0 ;
  wire \idx[13]_i_1_n_0 ;
  wire \idx[14]_i_1_n_0 ;
  wire \idx[15]_i_1_n_0 ;
  wire \idx[16]_i_1_n_0 ;
  wire \idx[17]_i_1_n_0 ;
  wire \idx[18]_i_1_n_0 ;
  wire \idx[19]_i_1_n_0 ;
  wire \idx[1]_i_1_n_0 ;
  wire \idx[20]_i_1_n_0 ;
  wire \idx[21]_i_1_n_0 ;
  wire \idx[22]_i_1_n_0 ;
  wire \idx[23]_i_1_n_0 ;
  wire \idx[24]_i_1_n_0 ;
  wire \idx[25]_i_1_n_0 ;
  wire \idx[26]_i_1_n_0 ;
  wire \idx[27]_i_1_n_0 ;
  wire \idx[28]_i_1_n_0 ;
  wire \idx[29]_i_1_n_0 ;
  wire \idx[2]_i_1_n_0 ;
  wire \idx[30]_i_1_n_0 ;
  wire \idx[31]_i_1_n_0 ;
  wire \idx[3]_i_1_n_0 ;
  wire \idx[4]_i_1_n_0 ;
  wire \idx[5]_i_1_n_0 ;
  wire \idx[6]_i_1_n_0 ;
  wire \idx[7]_i_1_n_0 ;
  wire \idx[8]_i_1_n_0 ;
  wire \idx[9]_i_1_n_0 ;
  wire \idx[9]_i_2_n_0 ;
  wire [63:0]in11;
  wire [31:1]in16;
  wire [31:1]in19;
  wire [31:1]in4;
  wire [31:0]length_latched;
  wire \length_latched[31]_i_10_n_0 ;
  wire \length_latched[31]_i_11_n_0 ;
  wire \length_latched[31]_i_12_n_0 ;
  wire \length_latched[31]_i_13_n_0 ;
  wire \length_latched[31]_i_14_n_0 ;
  wire \length_latched[31]_i_15_n_0 ;
  wire \length_latched[31]_i_16_n_0 ;
  wire \length_latched[31]_i_17_n_0 ;
  wire \length_latched[31]_i_18_n_0 ;
  wire \length_latched[31]_i_19_n_0 ;
  wire \length_latched[31]_i_1_n_0 ;
  wire \length_latched[31]_i_20_n_0 ;
  wire \length_latched[31]_i_2_n_0 ;
  wire \length_latched[31]_i_3_n_0 ;
  wire \length_latched[31]_i_4_n_0 ;
  wire \length_latched[31]_i_5_n_0 ;
  wire \length_latched[31]_i_6_n_0 ;
  wire \length_latched[31]_i_7_n_0 ;
  wire \length_latched[31]_i_8_n_0 ;
  wire \length_latched[31]_i_9_n_0 ;
  wire [31:0]maxval;
  wire maxval0_carry__0_i_1_n_0;
  wire maxval0_carry__0_i_2_n_0;
  wire maxval0_carry__0_i_3_n_0;
  wire maxval0_carry__0_i_4_n_0;
  wire maxval0_carry__0_i_5_n_0;
  wire maxval0_carry__0_i_6_n_0;
  wire maxval0_carry__0_i_7_n_0;
  wire maxval0_carry__0_i_8_n_0;
  wire maxval0_carry__0_n_0;
  wire maxval0_carry__0_n_1;
  wire maxval0_carry__0_n_2;
  wire maxval0_carry__0_n_3;
  wire maxval0_carry__1_i_1_n_0;
  wire maxval0_carry__1_i_2_n_0;
  wire maxval0_carry__1_i_3_n_0;
  wire maxval0_carry__1_i_4_n_0;
  wire maxval0_carry__1_i_5_n_0;
  wire maxval0_carry__1_i_6_n_0;
  wire maxval0_carry__1_i_7_n_0;
  wire maxval0_carry__1_i_8_n_0;
  wire maxval0_carry__1_n_0;
  wire maxval0_carry__1_n_1;
  wire maxval0_carry__1_n_2;
  wire maxval0_carry__1_n_3;
  wire maxval0_carry__2_i_1_n_0;
  wire maxval0_carry__2_i_2_n_0;
  wire maxval0_carry__2_i_3_n_0;
  wire maxval0_carry__2_i_4_n_0;
  wire maxval0_carry__2_i_5_n_0;
  wire maxval0_carry__2_i_6_n_0;
  wire maxval0_carry__2_i_7_n_0;
  wire maxval0_carry__2_i_8_n_0;
  wire maxval0_carry__2_n_0;
  wire maxval0_carry__2_n_1;
  wire maxval0_carry__2_n_2;
  wire maxval0_carry__2_n_3;
  wire maxval0_carry_i_1_n_0;
  wire maxval0_carry_i_2_n_0;
  wire maxval0_carry_i_3_n_0;
  wire maxval0_carry_i_4_n_0;
  wire maxval0_carry_i_5_n_0;
  wire maxval0_carry_i_6_n_0;
  wire maxval0_carry_i_7_n_0;
  wire maxval0_carry_i_8_n_0;
  wire maxval0_carry_n_0;
  wire maxval0_carry_n_1;
  wire maxval0_carry_n_2;
  wire maxval0_carry_n_3;
  wire \maxval[0]_i_1_n_0 ;
  wire \maxval[10]_i_1_n_0 ;
  wire \maxval[11]_i_1_n_0 ;
  wire \maxval[12]_i_1_n_0 ;
  wire \maxval[13]_i_1_n_0 ;
  wire \maxval[14]_i_1_n_0 ;
  wire \maxval[15]_i_1_n_0 ;
  wire \maxval[16]_i_1_n_0 ;
  wire \maxval[17]_i_1_n_0 ;
  wire \maxval[18]_i_1_n_0 ;
  wire \maxval[19]_i_1_n_0 ;
  wire \maxval[1]_i_1_n_0 ;
  wire \maxval[20]_i_1_n_0 ;
  wire \maxval[21]_i_1_n_0 ;
  wire \maxval[22]_i_1_n_0 ;
  wire \maxval[23]_i_1_n_0 ;
  wire \maxval[24]_i_1_n_0 ;
  wire \maxval[25]_i_1_n_0 ;
  wire \maxval[26]_i_1_n_0 ;
  wire \maxval[27]_i_1_n_0 ;
  wire \maxval[28]_i_1_n_0 ;
  wire \maxval[29]_i_1_n_0 ;
  wire \maxval[2]_i_1_n_0 ;
  wire \maxval[30]_i_1_n_0 ;
  wire \maxval[31]_i_1_n_0 ;
  wire \maxval[31]_i_2_n_0 ;
  wire \maxval[3]_i_1_n_0 ;
  wire \maxval[4]_i_1_n_0 ;
  wire \maxval[5]_i_1_n_0 ;
  wire \maxval[6]_i_1_n_0 ;
  wire \maxval[7]_i_1_n_0 ;
  wire \maxval[8]_i_1_n_0 ;
  wire \maxval[9]_i_1_n_0 ;
  wire [31:0]minval;
  wire minval0_carry__0_i_1_n_0;
  wire minval0_carry__0_i_2_n_0;
  wire minval0_carry__0_i_3_n_0;
  wire minval0_carry__0_i_4_n_0;
  wire minval0_carry__0_i_5_n_0;
  wire minval0_carry__0_i_6_n_0;
  wire minval0_carry__0_i_7_n_0;
  wire minval0_carry__0_i_8_n_0;
  wire minval0_carry__0_n_0;
  wire minval0_carry__0_n_1;
  wire minval0_carry__0_n_2;
  wire minval0_carry__0_n_3;
  wire minval0_carry__1_i_1_n_0;
  wire minval0_carry__1_i_2_n_0;
  wire minval0_carry__1_i_3_n_0;
  wire minval0_carry__1_i_4_n_0;
  wire minval0_carry__1_i_5_n_0;
  wire minval0_carry__1_i_6_n_0;
  wire minval0_carry__1_i_7_n_0;
  wire minval0_carry__1_i_8_n_0;
  wire minval0_carry__1_n_0;
  wire minval0_carry__1_n_1;
  wire minval0_carry__1_n_2;
  wire minval0_carry__1_n_3;
  wire minval0_carry__2_i_1_n_0;
  wire minval0_carry__2_i_2_n_0;
  wire minval0_carry__2_i_3_n_0;
  wire minval0_carry__2_i_4_n_0;
  wire minval0_carry__2_i_5_n_0;
  wire minval0_carry__2_i_6_n_0;
  wire minval0_carry__2_i_7_n_0;
  wire minval0_carry__2_i_8_n_0;
  wire minval0_carry__2_n_0;
  wire minval0_carry__2_n_1;
  wire minval0_carry__2_n_2;
  wire minval0_carry__2_n_3;
  wire minval0_carry_i_1_n_0;
  wire minval0_carry_i_2_n_0;
  wire minval0_carry_i_3_n_0;
  wire minval0_carry_i_4_n_0;
  wire minval0_carry_i_5_n_0;
  wire minval0_carry_i_6_n_0;
  wire minval0_carry_i_7_n_0;
  wire minval0_carry_i_8_n_0;
  wire minval0_carry_n_0;
  wire minval0_carry_n_1;
  wire minval0_carry_n_2;
  wire minval0_carry_n_3;
  wire \minval[0]_i_1_n_0 ;
  wire \minval[10]_i_1_n_0 ;
  wire \minval[11]_i_1_n_0 ;
  wire \minval[12]_i_1_n_0 ;
  wire \minval[13]_i_1_n_0 ;
  wire \minval[14]_i_1_n_0 ;
  wire \minval[15]_i_1_n_0 ;
  wire \minval[16]_i_1_n_0 ;
  wire \minval[17]_i_1_n_0 ;
  wire \minval[18]_i_1_n_0 ;
  wire \minval[19]_i_1_n_0 ;
  wire \minval[1]_i_1_n_0 ;
  wire \minval[20]_i_1_n_0 ;
  wire \minval[21]_i_1_n_0 ;
  wire \minval[22]_i_1_n_0 ;
  wire \minval[23]_i_1_n_0 ;
  wire \minval[24]_i_1_n_0 ;
  wire \minval[25]_i_1_n_0 ;
  wire \minval[26]_i_1_n_0 ;
  wire \minval[27]_i_1_n_0 ;
  wire \minval[28]_i_1_n_0 ;
  wire \minval[29]_i_1_n_0 ;
  wire \minval[2]_i_1_n_0 ;
  wire \minval[30]_i_1_n_0 ;
  wire \minval[31]_i_10_n_0 ;
  wire \minval[31]_i_11_n_0 ;
  wire \minval[31]_i_1_n_0 ;
  wire \minval[31]_i_2_n_0 ;
  wire \minval[31]_i_3_n_0 ;
  wire \minval[31]_i_4_n_0 ;
  wire \minval[31]_i_5_n_0 ;
  wire \minval[31]_i_6_n_0 ;
  wire \minval[31]_i_7_n_0 ;
  wire \minval[31]_i_8_n_0 ;
  wire \minval[31]_i_9_n_0 ;
  wire \minval[3]_i_1_n_0 ;
  wire \minval[4]_i_1_n_0 ;
  wire \minval[5]_i_1_n_0 ;
  wire \minval[6]_i_1_n_0 ;
  wire \minval[7]_i_1_n_0 ;
  wire \minval[8]_i_1_n_0 ;
  wire \minval[9]_i_1_n_0 ;
  wire p_0_in;
  wire [31:0]pending_idx;
  wire \pending_idx[0]_i_1_n_0 ;
  wire \pending_idx[10]_i_1_n_0 ;
  wire \pending_idx[11]_i_1_n_0 ;
  wire \pending_idx[12]_i_1_n_0 ;
  wire \pending_idx[13]_i_1_n_0 ;
  wire \pending_idx[14]_i_1_n_0 ;
  wire \pending_idx[15]_i_1_n_0 ;
  wire \pending_idx[16]_i_1_n_0 ;
  wire \pending_idx[17]_i_1_n_0 ;
  wire \pending_idx[18]_i_1_n_0 ;
  wire \pending_idx[19]_i_1_n_0 ;
  wire \pending_idx[1]_i_1_n_0 ;
  wire \pending_idx[20]_i_1_n_0 ;
  wire \pending_idx[21]_i_1_n_0 ;
  wire \pending_idx[22]_i_1_n_0 ;
  wire \pending_idx[23]_i_1_n_0 ;
  wire \pending_idx[24]_i_1_n_0 ;
  wire \pending_idx[25]_i_1_n_0 ;
  wire \pending_idx[26]_i_1_n_0 ;
  wire \pending_idx[27]_i_1_n_0 ;
  wire \pending_idx[28]_i_1_n_0 ;
  wire \pending_idx[29]_i_1_n_0 ;
  wire \pending_idx[2]_i_1_n_0 ;
  wire \pending_idx[30]_i_1_n_0 ;
  wire \pending_idx[31]_i_1_n_0 ;
  wire \pending_idx[31]_i_2_n_0 ;
  wire \pending_idx[3]_i_1_n_0 ;
  wire \pending_idx[4]_i_1_n_0 ;
  wire \pending_idx[5]_i_1_n_0 ;
  wire \pending_idx[6]_i_1_n_0 ;
  wire \pending_idx[7]_i_1_n_0 ;
  wire \pending_idx[8]_i_1_n_0 ;
  wire \pending_idx[9]_i_1_n_0 ;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[0]_i_3_n_0 ;
  wire \s_axi_rdata[0]_i_4_n_0 ;
  wire \s_axi_rdata[10]_i_2_n_0 ;
  wire \s_axi_rdata[10]_i_3_n_0 ;
  wire \s_axi_rdata[10]_i_4_n_0 ;
  wire \s_axi_rdata[11]_i_2_n_0 ;
  wire \s_axi_rdata[11]_i_3_n_0 ;
  wire \s_axi_rdata[11]_i_4_n_0 ;
  wire \s_axi_rdata[12]_i_2_n_0 ;
  wire \s_axi_rdata[12]_i_3_n_0 ;
  wire \s_axi_rdata[12]_i_4_n_0 ;
  wire \s_axi_rdata[13]_i_2_n_0 ;
  wire \s_axi_rdata[13]_i_3_n_0 ;
  wire \s_axi_rdata[13]_i_4_n_0 ;
  wire \s_axi_rdata[14]_i_2_n_0 ;
  wire \s_axi_rdata[14]_i_3_n_0 ;
  wire \s_axi_rdata[14]_i_4_n_0 ;
  wire \s_axi_rdata[15]_i_2_n_0 ;
  wire \s_axi_rdata[15]_i_3_n_0 ;
  wire \s_axi_rdata[15]_i_4_n_0 ;
  wire \s_axi_rdata[16]_i_2_n_0 ;
  wire \s_axi_rdata[16]_i_3_n_0 ;
  wire \s_axi_rdata[16]_i_4_n_0 ;
  wire \s_axi_rdata[17]_i_2_n_0 ;
  wire \s_axi_rdata[17]_i_3_n_0 ;
  wire \s_axi_rdata[17]_i_4_n_0 ;
  wire \s_axi_rdata[18]_i_2_n_0 ;
  wire \s_axi_rdata[18]_i_3_n_0 ;
  wire \s_axi_rdata[18]_i_4_n_0 ;
  wire \s_axi_rdata[19]_i_2_n_0 ;
  wire \s_axi_rdata[19]_i_3_n_0 ;
  wire \s_axi_rdata[19]_i_4_n_0 ;
  wire \s_axi_rdata[1]_i_3_n_0 ;
  wire \s_axi_rdata[1]_i_4_n_0 ;
  wire \s_axi_rdata[20]_i_2_n_0 ;
  wire \s_axi_rdata[20]_i_3_n_0 ;
  wire \s_axi_rdata[20]_i_4_n_0 ;
  wire \s_axi_rdata[21]_i_2_n_0 ;
  wire \s_axi_rdata[21]_i_3_n_0 ;
  wire \s_axi_rdata[21]_i_4_n_0 ;
  wire \s_axi_rdata[22]_i_2_n_0 ;
  wire \s_axi_rdata[22]_i_3_n_0 ;
  wire \s_axi_rdata[22]_i_4_n_0 ;
  wire \s_axi_rdata[23]_i_2_n_0 ;
  wire \s_axi_rdata[23]_i_3_n_0 ;
  wire \s_axi_rdata[23]_i_4_n_0 ;
  wire \s_axi_rdata[24]_i_2_n_0 ;
  wire \s_axi_rdata[24]_i_3_n_0 ;
  wire \s_axi_rdata[24]_i_4_n_0 ;
  wire \s_axi_rdata[25]_i_2_n_0 ;
  wire \s_axi_rdata[25]_i_3_n_0 ;
  wire \s_axi_rdata[25]_i_4_n_0 ;
  wire \s_axi_rdata[26]_i_2_n_0 ;
  wire \s_axi_rdata[26]_i_3_n_0 ;
  wire \s_axi_rdata[26]_i_4_n_0 ;
  wire \s_axi_rdata[27]_i_2_n_0 ;
  wire \s_axi_rdata[27]_i_3_n_0 ;
  wire \s_axi_rdata[27]_i_4_n_0 ;
  wire \s_axi_rdata[28]_i_2_n_0 ;
  wire \s_axi_rdata[28]_i_3_n_0 ;
  wire \s_axi_rdata[28]_i_4_n_0 ;
  wire \s_axi_rdata[29]_i_2_n_0 ;
  wire \s_axi_rdata[29]_i_3_n_0 ;
  wire \s_axi_rdata[29]_i_4_n_0 ;
  wire \s_axi_rdata[2]_i_5_n_0 ;
  wire \s_axi_rdata[2]_i_6_n_0 ;
  wire \s_axi_rdata[30]_i_2_n_0 ;
  wire \s_axi_rdata[30]_i_3_n_0 ;
  wire \s_axi_rdata[30]_i_4_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_4_n_0 ;
  wire \s_axi_rdata[31]_i_5_n_0 ;
  wire \s_axi_rdata[3]_i_2_n_0 ;
  wire \s_axi_rdata[3]_i_3_n_0 ;
  wire \s_axi_rdata[3]_i_4_n_0 ;
  wire \s_axi_rdata[4]_i_2_n_0 ;
  wire \s_axi_rdata[4]_i_3_n_0 ;
  wire \s_axi_rdata[4]_i_4_n_0 ;
  wire \s_axi_rdata[5]_i_2_n_0 ;
  wire \s_axi_rdata[5]_i_3_n_0 ;
  wire \s_axi_rdata[5]_i_4_n_0 ;
  wire \s_axi_rdata[6]_i_2_n_0 ;
  wire \s_axi_rdata[6]_i_3_n_0 ;
  wire \s_axi_rdata[6]_i_4_n_0 ;
  wire \s_axi_rdata[7]_i_2_n_0 ;
  wire \s_axi_rdata[7]_i_3_n_0 ;
  wire \s_axi_rdata[7]_i_4_n_0 ;
  wire \s_axi_rdata[8]_i_2_n_0 ;
  wire \s_axi_rdata[8]_i_3_n_0 ;
  wire \s_axi_rdata[8]_i_4_n_0 ;
  wire \s_axi_rdata[9]_i_2_n_0 ;
  wire \s_axi_rdata[9]_i_3_n_0 ;
  wire \s_axi_rdata[9]_i_4_n_0 ;
  wire \s_axi_rdata_reg[1]_i_2_n_0 ;
  wire \s_axi_rdata_reg[2] ;
  wire \s_axi_rdata_reg[2]_0 ;
  wire \s_axi_rdata_reg[2]_i_4_n_0 ;
  wire start_pulse;
  wire \state0_inferred__0/i__carry__0_n_0 ;
  wire \state0_inferred__0/i__carry__0_n_1 ;
  wire \state0_inferred__0/i__carry__0_n_2 ;
  wire \state0_inferred__0/i__carry__0_n_3 ;
  wire \state0_inferred__0/i__carry__1_n_0 ;
  wire \state0_inferred__0/i__carry__1_n_1 ;
  wire \state0_inferred__0/i__carry__1_n_2 ;
  wire \state0_inferred__0/i__carry__1_n_3 ;
  wire \state0_inferred__0/i__carry__2_n_0 ;
  wire \state0_inferred__0/i__carry__2_n_1 ;
  wire \state0_inferred__0/i__carry__2_n_2 ;
  wire \state0_inferred__0/i__carry__2_n_3 ;
  wire \state0_inferred__0/i__carry_n_0 ;
  wire \state0_inferred__0/i__carry_n_1 ;
  wire \state0_inferred__0/i__carry_n_2 ;
  wire \state0_inferred__0/i__carry_n_3 ;
  wire state1_carry__0_n_0;
  wire state1_carry__0_n_1;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry__1_n_0;
  wire state1_carry__1_n_1;
  wire state1_carry__1_n_2;
  wire state1_carry__1_n_3;
  wire state1_carry__2_n_0;
  wire state1_carry__2_n_1;
  wire state1_carry__2_n_2;
  wire state1_carry__2_n_3;
  wire state1_carry__3_n_0;
  wire state1_carry__3_n_1;
  wire state1_carry__3_n_2;
  wire state1_carry__3_n_3;
  wire state1_carry__4_n_0;
  wire state1_carry__4_n_1;
  wire state1_carry__4_n_2;
  wire state1_carry__4_n_3;
  wire state1_carry__5_n_0;
  wire state1_carry__5_n_1;
  wire state1_carry__5_n_2;
  wire state1_carry__5_n_3;
  wire state1_carry__6_n_2;
  wire state1_carry__6_n_3;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire \sum[0]_i_1_n_0 ;
  wire \sum[10]_i_1_n_0 ;
  wire \sum[11]_i_1_n_0 ;
  wire \sum[11]_i_3_n_0 ;
  wire \sum[11]_i_4_n_0 ;
  wire \sum[11]_i_5_n_0 ;
  wire \sum[11]_i_6_n_0 ;
  wire \sum[12]_i_1_n_0 ;
  wire \sum[13]_i_1_n_0 ;
  wire \sum[14]_i_1_n_0 ;
  wire \sum[15]_i_1_n_0 ;
  wire \sum[15]_i_3_n_0 ;
  wire \sum[15]_i_4_n_0 ;
  wire \sum[15]_i_5_n_0 ;
  wire \sum[15]_i_6_n_0 ;
  wire \sum[16]_i_1_n_0 ;
  wire \sum[17]_i_1_n_0 ;
  wire \sum[18]_i_1_n_0 ;
  wire \sum[19]_i_1_n_0 ;
  wire \sum[19]_i_3_n_0 ;
  wire \sum[19]_i_4_n_0 ;
  wire \sum[19]_i_5_n_0 ;
  wire \sum[19]_i_6_n_0 ;
  wire \sum[1]_i_1_n_0 ;
  wire \sum[20]_i_1_n_0 ;
  wire \sum[21]_i_1_n_0 ;
  wire \sum[22]_i_1_n_0 ;
  wire \sum[23]_i_1_n_0 ;
  wire \sum[23]_i_3_n_0 ;
  wire \sum[23]_i_4_n_0 ;
  wire \sum[23]_i_5_n_0 ;
  wire \sum[23]_i_6_n_0 ;
  wire \sum[24]_i_1_n_0 ;
  wire \sum[25]_i_1_n_0 ;
  wire \sum[26]_i_1_n_0 ;
  wire \sum[27]_i_1_n_0 ;
  wire \sum[27]_i_3_n_0 ;
  wire \sum[27]_i_4_n_0 ;
  wire \sum[27]_i_5_n_0 ;
  wire \sum[27]_i_6_n_0 ;
  wire \sum[28]_i_1_n_0 ;
  wire \sum[29]_i_1_n_0 ;
  wire \sum[2]_i_1_n_0 ;
  wire \sum[30]_i_1_n_0 ;
  wire \sum[31]_i_1_n_0 ;
  wire \sum[31]_i_3_n_0 ;
  wire \sum[31]_i_4_n_0 ;
  wire \sum[31]_i_5_n_0 ;
  wire \sum[31]_i_6_n_0 ;
  wire \sum[32]_i_1_n_0 ;
  wire \sum[33]_i_1_n_0 ;
  wire \sum[34]_i_1_n_0 ;
  wire \sum[35]_i_1_n_0 ;
  wire \sum[36]_i_1_n_0 ;
  wire \sum[37]_i_1_n_0 ;
  wire \sum[38]_i_1_n_0 ;
  wire \sum[39]_i_1_n_0 ;
  wire \sum[3]_i_1_n_0 ;
  wire \sum[3]_i_3_n_0 ;
  wire \sum[3]_i_4_n_0 ;
  wire \sum[3]_i_5_n_0 ;
  wire \sum[3]_i_6_n_0 ;
  wire \sum[40]_i_1_n_0 ;
  wire \sum[41]_i_1_n_0 ;
  wire \sum[42]_i_1_n_0 ;
  wire \sum[43]_i_1_n_0 ;
  wire \sum[44]_i_1_n_0 ;
  wire \sum[45]_i_1_n_0 ;
  wire \sum[46]_i_1_n_0 ;
  wire \sum[47]_i_1_n_0 ;
  wire \sum[48]_i_1_n_0 ;
  wire \sum[49]_i_1_n_0 ;
  wire \sum[4]_i_1_n_0 ;
  wire \sum[50]_i_1_n_0 ;
  wire \sum[51]_i_1_n_0 ;
  wire \sum[52]_i_1_n_0 ;
  wire \sum[53]_i_1_n_0 ;
  wire \sum[54]_i_1_n_0 ;
  wire \sum[55]_i_1_n_0 ;
  wire \sum[56]_i_1_n_0 ;
  wire \sum[57]_i_1_n_0 ;
  wire \sum[58]_i_1_n_0 ;
  wire \sum[59]_i_1_n_0 ;
  wire \sum[5]_i_1_n_0 ;
  wire \sum[60]_i_1_n_0 ;
  wire \sum[61]_i_1_n_0 ;
  wire \sum[62]_i_1_n_0 ;
  wire \sum[63]_i_1_n_0 ;
  wire \sum[63]_i_2_n_0 ;
  wire \sum[6]_i_1_n_0 ;
  wire \sum[7]_i_1_n_0 ;
  wire \sum[7]_i_3_n_0 ;
  wire \sum[7]_i_4_n_0 ;
  wire \sum[7]_i_5_n_0 ;
  wire \sum[7]_i_6_n_0 ;
  wire \sum[8]_i_1_n_0 ;
  wire \sum[9]_i_1_n_0 ;
  wire \sum_reg[11]_i_2_n_0 ;
  wire \sum_reg[11]_i_2_n_1 ;
  wire \sum_reg[11]_i_2_n_2 ;
  wire \sum_reg[11]_i_2_n_3 ;
  wire \sum_reg[15]_i_2_n_0 ;
  wire \sum_reg[15]_i_2_n_1 ;
  wire \sum_reg[15]_i_2_n_2 ;
  wire \sum_reg[15]_i_2_n_3 ;
  wire \sum_reg[19]_i_2_n_0 ;
  wire \sum_reg[19]_i_2_n_1 ;
  wire \sum_reg[19]_i_2_n_2 ;
  wire \sum_reg[19]_i_2_n_3 ;
  wire \sum_reg[23]_i_2_n_0 ;
  wire \sum_reg[23]_i_2_n_1 ;
  wire \sum_reg[23]_i_2_n_2 ;
  wire \sum_reg[23]_i_2_n_3 ;
  wire \sum_reg[27]_i_2_n_0 ;
  wire \sum_reg[27]_i_2_n_1 ;
  wire \sum_reg[27]_i_2_n_2 ;
  wire \sum_reg[27]_i_2_n_3 ;
  wire \sum_reg[31]_i_2_n_0 ;
  wire \sum_reg[31]_i_2_n_1 ;
  wire \sum_reg[31]_i_2_n_2 ;
  wire \sum_reg[31]_i_2_n_3 ;
  wire \sum_reg[35]_i_2_n_0 ;
  wire \sum_reg[35]_i_2_n_1 ;
  wire \sum_reg[35]_i_2_n_2 ;
  wire \sum_reg[35]_i_2_n_3 ;
  wire \sum_reg[39]_i_2_n_0 ;
  wire \sum_reg[39]_i_2_n_1 ;
  wire \sum_reg[39]_i_2_n_2 ;
  wire \sum_reg[39]_i_2_n_3 ;
  wire \sum_reg[3]_i_2_n_0 ;
  wire \sum_reg[3]_i_2_n_1 ;
  wire \sum_reg[3]_i_2_n_2 ;
  wire \sum_reg[3]_i_2_n_3 ;
  wire \sum_reg[43]_i_2_n_0 ;
  wire \sum_reg[43]_i_2_n_1 ;
  wire \sum_reg[43]_i_2_n_2 ;
  wire \sum_reg[43]_i_2_n_3 ;
  wire \sum_reg[47]_i_2_n_0 ;
  wire \sum_reg[47]_i_2_n_1 ;
  wire \sum_reg[47]_i_2_n_2 ;
  wire \sum_reg[47]_i_2_n_3 ;
  wire \sum_reg[51]_i_2_n_0 ;
  wire \sum_reg[51]_i_2_n_1 ;
  wire \sum_reg[51]_i_2_n_2 ;
  wire \sum_reg[51]_i_2_n_3 ;
  wire \sum_reg[55]_i_2_n_0 ;
  wire \sum_reg[55]_i_2_n_1 ;
  wire \sum_reg[55]_i_2_n_2 ;
  wire \sum_reg[55]_i_2_n_3 ;
  wire \sum_reg[59]_i_2_n_0 ;
  wire \sum_reg[59]_i_2_n_1 ;
  wire \sum_reg[59]_i_2_n_2 ;
  wire \sum_reg[59]_i_2_n_3 ;
  wire \sum_reg[63]_i_3_n_1 ;
  wire \sum_reg[63]_i_3_n_2 ;
  wire \sum_reg[63]_i_3_n_3 ;
  wire \sum_reg[7]_i_2_n_0 ;
  wire \sum_reg[7]_i_2_n_1 ;
  wire \sum_reg[7]_i_2_n_2 ;
  wire \sum_reg[7]_i_2_n_3 ;
  wire \sum_reg_n_0_[0] ;
  wire \sum_reg_n_0_[10] ;
  wire \sum_reg_n_0_[11] ;
  wire \sum_reg_n_0_[12] ;
  wire \sum_reg_n_0_[13] ;
  wire \sum_reg_n_0_[14] ;
  wire \sum_reg_n_0_[15] ;
  wire \sum_reg_n_0_[16] ;
  wire \sum_reg_n_0_[17] ;
  wire \sum_reg_n_0_[18] ;
  wire \sum_reg_n_0_[19] ;
  wire \sum_reg_n_0_[1] ;
  wire \sum_reg_n_0_[20] ;
  wire \sum_reg_n_0_[21] ;
  wire \sum_reg_n_0_[22] ;
  wire \sum_reg_n_0_[23] ;
  wire \sum_reg_n_0_[24] ;
  wire \sum_reg_n_0_[25] ;
  wire \sum_reg_n_0_[26] ;
  wire \sum_reg_n_0_[27] ;
  wire \sum_reg_n_0_[28] ;
  wire \sum_reg_n_0_[29] ;
  wire \sum_reg_n_0_[2] ;
  wire \sum_reg_n_0_[30] ;
  wire \sum_reg_n_0_[31] ;
  wire \sum_reg_n_0_[3] ;
  wire \sum_reg_n_0_[4] ;
  wire \sum_reg_n_0_[5] ;
  wire \sum_reg_n_0_[6] ;
  wire \sum_reg_n_0_[7] ;
  wire \sum_reg_n_0_[8] ;
  wire \sum_reg_n_0_[9] ;
  wire [31:0]threshold_latched;
  wire [31:0]\threshold_latched_reg[31]_0 ;
  wire [3:0]NLW_countgt0_carry_O_UNCONNECTED;
  wire [3:0]NLW_countgt0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_countgt0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_countgt0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_countgt0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_countgt0_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:2]NLW_cyclecount0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cyclecount0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_maxval0_carry_O_UNCONNECTED;
  wire [3:0]NLW_maxval0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_maxval0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_maxval0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_minval0_carry_O_UNCONNECTED;
  wire [3:0]NLW_minval0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_minval0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_minval0_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_state0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_state0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_state0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_state1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_state1_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_sum_reg[63]_i_3_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h44474444)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\state0_inferred__0/i__carry__2_n_0 ),
        .I1(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I2(\length_latched[31]_i_1_n_0 ),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEAE0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\state0_inferred__0/i__carry__2_n_0 ),
        .I2(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I3(\length_latched[31]_i_1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_CONSUME:100,S_IDLE:001,S_ISSUE:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S_CONSUME:100,S_IDLE:001,S_ISSUE:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "S_CONSUME:100,S_IDLE:001,S_ISSUE:010" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_state_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\FSM_onehot_state_reg[1]_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S_CONSUME:100,S_IDLE:001,S_ISSUE:010" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_state_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\FSM_onehot_state_reg[1]_0 ),
        .Q(\FSM_onehot_state_reg[2]_rep_n_0 ));
  (* FSM_ENCODED_STATES = "S_CONSUME:100,S_IDLE:001,S_ISSUE:010" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_state_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2]_rep__0 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\FSM_onehot_state_reg[1]_0 ),
        .Q(\FSM_onehot_state_reg[2]_rep__0_n_0 ));
  (* FSM_ENCODED_STATES = "S_CONSUME:100,S_IDLE:001,S_ISSUE:010" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_state_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2]_rep__1 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(\FSM_onehot_state_reg[1]_0 ),
        .Q(\FSM_onehot_state_reg[2]_rep__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    busy_i_1
       (.I0(\length_latched[31]_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\state0_inferred__0/i__carry__2_n_0 ),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(core_busy),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(busy_i_1_n_0),
        .Q(core_busy));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 countgt0_carry
       (.CI(1'b0),
        .CO({countgt0_carry_n_0,countgt0_carry_n_1,countgt0_carry_n_2,countgt0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({countgt0_carry_i_1_n_0,countgt0_carry_i_2_n_0,countgt0_carry_i_3_n_0,countgt0_carry_i_4_n_0}),
        .O(NLW_countgt0_carry_O_UNCONNECTED[3:0]),
        .S({countgt0_carry_i_5_n_0,countgt0_carry_i_6_n_0,countgt0_carry_i_7_n_0,countgt0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 countgt0_carry__0
       (.CI(countgt0_carry_n_0),
        .CO({countgt0_carry__0_n_0,countgt0_carry__0_n_1,countgt0_carry__0_n_2,countgt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({countgt0_carry__0_i_1_n_0,countgt0_carry__0_i_2_n_0,countgt0_carry__0_i_3_n_0,countgt0_carry__0_i_4_n_0}),
        .O(NLW_countgt0_carry__0_O_UNCONNECTED[3:0]),
        .S({countgt0_carry__0_i_5_n_0,countgt0_carry__0_i_6_n_0,countgt0_carry__0_i_7_n_0,countgt0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__0_i_1
       (.I0(bram_rdata[14]),
        .I1(threshold_latched[14]),
        .I2(threshold_latched[15]),
        .I3(bram_rdata[15]),
        .O(countgt0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__0_i_2
       (.I0(bram_rdata[12]),
        .I1(threshold_latched[12]),
        .I2(threshold_latched[13]),
        .I3(bram_rdata[13]),
        .O(countgt0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__0_i_3
       (.I0(bram_rdata[10]),
        .I1(threshold_latched[10]),
        .I2(threshold_latched[11]),
        .I3(bram_rdata[11]),
        .O(countgt0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__0_i_4
       (.I0(bram_rdata[8]),
        .I1(threshold_latched[8]),
        .I2(threshold_latched[9]),
        .I3(bram_rdata[9]),
        .O(countgt0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__0_i_5
       (.I0(bram_rdata[14]),
        .I1(threshold_latched[14]),
        .I2(bram_rdata[15]),
        .I3(threshold_latched[15]),
        .O(countgt0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__0_i_6
       (.I0(bram_rdata[12]),
        .I1(threshold_latched[12]),
        .I2(bram_rdata[13]),
        .I3(threshold_latched[13]),
        .O(countgt0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__0_i_7
       (.I0(bram_rdata[10]),
        .I1(threshold_latched[10]),
        .I2(bram_rdata[11]),
        .I3(threshold_latched[11]),
        .O(countgt0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__0_i_8
       (.I0(bram_rdata[8]),
        .I1(threshold_latched[8]),
        .I2(bram_rdata[9]),
        .I3(threshold_latched[9]),
        .O(countgt0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 countgt0_carry__1
       (.CI(countgt0_carry__0_n_0),
        .CO({countgt0_carry__1_n_0,countgt0_carry__1_n_1,countgt0_carry__1_n_2,countgt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({countgt0_carry__1_i_1_n_0,countgt0_carry__1_i_2_n_0,countgt0_carry__1_i_3_n_0,countgt0_carry__1_i_4_n_0}),
        .O(NLW_countgt0_carry__1_O_UNCONNECTED[3:0]),
        .S({countgt0_carry__1_i_5_n_0,countgt0_carry__1_i_6_n_0,countgt0_carry__1_i_7_n_0,countgt0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__1_i_1
       (.I0(bram_rdata[22]),
        .I1(threshold_latched[22]),
        .I2(threshold_latched[23]),
        .I3(bram_rdata[23]),
        .O(countgt0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__1_i_2
       (.I0(bram_rdata[20]),
        .I1(threshold_latched[20]),
        .I2(threshold_latched[21]),
        .I3(bram_rdata[21]),
        .O(countgt0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__1_i_3
       (.I0(bram_rdata[18]),
        .I1(threshold_latched[18]),
        .I2(threshold_latched[19]),
        .I3(bram_rdata[19]),
        .O(countgt0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__1_i_4
       (.I0(bram_rdata[16]),
        .I1(threshold_latched[16]),
        .I2(threshold_latched[17]),
        .I3(bram_rdata[17]),
        .O(countgt0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__1_i_5
       (.I0(bram_rdata[22]),
        .I1(threshold_latched[22]),
        .I2(bram_rdata[23]),
        .I3(threshold_latched[23]),
        .O(countgt0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__1_i_6
       (.I0(bram_rdata[20]),
        .I1(threshold_latched[20]),
        .I2(bram_rdata[21]),
        .I3(threshold_latched[21]),
        .O(countgt0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__1_i_7
       (.I0(bram_rdata[18]),
        .I1(threshold_latched[18]),
        .I2(bram_rdata[19]),
        .I3(threshold_latched[19]),
        .O(countgt0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__1_i_8
       (.I0(bram_rdata[16]),
        .I1(threshold_latched[16]),
        .I2(bram_rdata[17]),
        .I3(threshold_latched[17]),
        .O(countgt0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 countgt0_carry__2
       (.CI(countgt0_carry__1_n_0),
        .CO({countgt0_carry__2_n_0,countgt0_carry__2_n_1,countgt0_carry__2_n_2,countgt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({countgt0_carry__2_i_1_n_0,countgt0_carry__2_i_2_n_0,countgt0_carry__2_i_3_n_0,countgt0_carry__2_i_4_n_0}),
        .O(NLW_countgt0_carry__2_O_UNCONNECTED[3:0]),
        .S({countgt0_carry__2_i_5_n_0,countgt0_carry__2_i_6_n_0,countgt0_carry__2_i_7_n_0,countgt0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__2_i_1
       (.I0(bram_rdata[30]),
        .I1(threshold_latched[30]),
        .I2(threshold_latched[31]),
        .I3(bram_rdata[31]),
        .O(countgt0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__2_i_2
       (.I0(bram_rdata[28]),
        .I1(threshold_latched[28]),
        .I2(threshold_latched[29]),
        .I3(bram_rdata[29]),
        .O(countgt0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__2_i_3
       (.I0(bram_rdata[26]),
        .I1(threshold_latched[26]),
        .I2(threshold_latched[27]),
        .I3(bram_rdata[27]),
        .O(countgt0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry__2_i_4
       (.I0(bram_rdata[24]),
        .I1(threshold_latched[24]),
        .I2(threshold_latched[25]),
        .I3(bram_rdata[25]),
        .O(countgt0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__2_i_5
       (.I0(bram_rdata[30]),
        .I1(threshold_latched[30]),
        .I2(bram_rdata[31]),
        .I3(threshold_latched[31]),
        .O(countgt0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__2_i_6
       (.I0(bram_rdata[28]),
        .I1(threshold_latched[28]),
        .I2(bram_rdata[29]),
        .I3(threshold_latched[29]),
        .O(countgt0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__2_i_7
       (.I0(bram_rdata[26]),
        .I1(threshold_latched[26]),
        .I2(bram_rdata[27]),
        .I3(threshold_latched[27]),
        .O(countgt0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry__2_i_8
       (.I0(bram_rdata[24]),
        .I1(threshold_latched[24]),
        .I2(bram_rdata[25]),
        .I3(threshold_latched[25]),
        .O(countgt0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry_i_1
       (.I0(bram_rdata[6]),
        .I1(threshold_latched[6]),
        .I2(threshold_latched[7]),
        .I3(bram_rdata[7]),
        .O(countgt0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry_i_2
       (.I0(bram_rdata[4]),
        .I1(threshold_latched[4]),
        .I2(threshold_latched[5]),
        .I3(bram_rdata[5]),
        .O(countgt0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry_i_3
       (.I0(bram_rdata[2]),
        .I1(threshold_latched[2]),
        .I2(threshold_latched[3]),
        .I3(bram_rdata[3]),
        .O(countgt0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    countgt0_carry_i_4
       (.I0(bram_rdata[0]),
        .I1(threshold_latched[0]),
        .I2(threshold_latched[1]),
        .I3(bram_rdata[1]),
        .O(countgt0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry_i_5
       (.I0(bram_rdata[6]),
        .I1(threshold_latched[6]),
        .I2(bram_rdata[7]),
        .I3(threshold_latched[7]),
        .O(countgt0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry_i_6
       (.I0(bram_rdata[4]),
        .I1(threshold_latched[4]),
        .I2(bram_rdata[5]),
        .I3(threshold_latched[5]),
        .O(countgt0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry_i_7
       (.I0(bram_rdata[2]),
        .I1(threshold_latched[2]),
        .I2(bram_rdata[3]),
        .I3(threshold_latched[3]),
        .O(countgt0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    countgt0_carry_i_8
       (.I0(bram_rdata[0]),
        .I1(threshold_latched[0]),
        .I2(bram_rdata[1]),
        .I3(threshold_latched[1]),
        .O(countgt0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \countgt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\countgt0_inferred__0/i__carry_n_0 ,\countgt0_inferred__0/i__carry_n_1 ,\countgt0_inferred__0/i__carry_n_2 ,\countgt0_inferred__0/i__carry_n_3 }),
        .CYINIT(countgt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[4:1]),
        .S(countgt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \countgt0_inferred__0/i__carry__0 
       (.CI(\countgt0_inferred__0/i__carry_n_0 ),
        .CO({\countgt0_inferred__0/i__carry__0_n_0 ,\countgt0_inferred__0/i__carry__0_n_1 ,\countgt0_inferred__0/i__carry__0_n_2 ,\countgt0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[8:5]),
        .S(countgt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \countgt0_inferred__0/i__carry__1 
       (.CI(\countgt0_inferred__0/i__carry__0_n_0 ),
        .CO({\countgt0_inferred__0/i__carry__1_n_0 ,\countgt0_inferred__0/i__carry__1_n_1 ,\countgt0_inferred__0/i__carry__1_n_2 ,\countgt0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[12:9]),
        .S(countgt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \countgt0_inferred__0/i__carry__2 
       (.CI(\countgt0_inferred__0/i__carry__1_n_0 ),
        .CO({\countgt0_inferred__0/i__carry__2_n_0 ,\countgt0_inferred__0/i__carry__2_n_1 ,\countgt0_inferred__0/i__carry__2_n_2 ,\countgt0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[16:13]),
        .S(countgt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \countgt0_inferred__0/i__carry__3 
       (.CI(\countgt0_inferred__0/i__carry__2_n_0 ),
        .CO({\countgt0_inferred__0/i__carry__3_n_0 ,\countgt0_inferred__0/i__carry__3_n_1 ,\countgt0_inferred__0/i__carry__3_n_2 ,\countgt0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[20:17]),
        .S(countgt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \countgt0_inferred__0/i__carry__4 
       (.CI(\countgt0_inferred__0/i__carry__3_n_0 ),
        .CO({\countgt0_inferred__0/i__carry__4_n_0 ,\countgt0_inferred__0/i__carry__4_n_1 ,\countgt0_inferred__0/i__carry__4_n_2 ,\countgt0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[24:21]),
        .S(countgt[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \countgt0_inferred__0/i__carry__5 
       (.CI(\countgt0_inferred__0/i__carry__4_n_0 ),
        .CO({\countgt0_inferred__0/i__carry__5_n_0 ,\countgt0_inferred__0/i__carry__5_n_1 ,\countgt0_inferred__0/i__carry__5_n_2 ,\countgt0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[28:25]),
        .S(countgt[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \countgt0_inferred__0/i__carry__6 
       (.CI(\countgt0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_countgt0_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\countgt0_inferred__0/i__carry__6_n_2 ,\countgt0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_countgt0_inferred__0/i__carry__6_O_UNCONNECTED [3],in16[31:29]}),
        .S({1'b0,countgt[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \countgt[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(countgt[0]),
        .O(\countgt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[10]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[10]),
        .O(\countgt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[11]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[11]),
        .O(\countgt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[12]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[12]),
        .O(\countgt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[13]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[13]),
        .O(\countgt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[14]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[14]),
        .O(\countgt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[15]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[15]),
        .O(\countgt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[16]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[16]),
        .O(\countgt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[17]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[17]),
        .O(\countgt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[18]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[18]),
        .O(\countgt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[19]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[19]),
        .O(\countgt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[1]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[1]),
        .O(\countgt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[20]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[20]),
        .O(\countgt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[21]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[21]),
        .O(\countgt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[22]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[22]),
        .O(\countgt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[23]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[23]),
        .O(\countgt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[24]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[24]),
        .O(\countgt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[25]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[25]),
        .O(\countgt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[26]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[26]),
        .O(\countgt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[27]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[27]),
        .O(\countgt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[28]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[28]),
        .O(\countgt[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[29]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[29]),
        .O(\countgt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[2]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[2]),
        .O(\countgt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[30]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[30]),
        .O(\countgt[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \countgt[31]_i_1 
       (.I0(\length_latched[31]_i_1_n_0 ),
        .I1(countgt0_carry__2_n_0),
        .I2(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .O(\countgt[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[31]_i_2 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[31]),
        .O(\countgt[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[3]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[3]),
        .O(\countgt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[4]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[4]),
        .O(\countgt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[5]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[5]),
        .O(\countgt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[6]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[6]),
        .O(\countgt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[7]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[7]),
        .O(\countgt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[8]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[8]),
        .O(\countgt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \countgt[9]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(in16[9]),
        .O(\countgt[9]_i_1_n_0 ));
  FDCE \countgt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[0]_i_1_n_0 ),
        .Q(countgt[0]));
  FDCE \countgt_reg[10] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[10]_i_1_n_0 ),
        .Q(countgt[10]));
  FDCE \countgt_reg[11] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[11]_i_1_n_0 ),
        .Q(countgt[11]));
  FDCE \countgt_reg[12] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[12]_i_1_n_0 ),
        .Q(countgt[12]));
  FDCE \countgt_reg[13] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[13]_i_1_n_0 ),
        .Q(countgt[13]));
  FDCE \countgt_reg[14] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[14]_i_1_n_0 ),
        .Q(countgt[14]));
  FDCE \countgt_reg[15] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[15]_i_1_n_0 ),
        .Q(countgt[15]));
  FDCE \countgt_reg[16] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[16]_i_1_n_0 ),
        .Q(countgt[16]));
  FDCE \countgt_reg[17] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[17]_i_1_n_0 ),
        .Q(countgt[17]));
  FDCE \countgt_reg[18] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[18]_i_1_n_0 ),
        .Q(countgt[18]));
  FDCE \countgt_reg[19] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[19]_i_1_n_0 ),
        .Q(countgt[19]));
  FDCE \countgt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[1]_i_1_n_0 ),
        .Q(countgt[1]));
  FDCE \countgt_reg[20] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[20]_i_1_n_0 ),
        .Q(countgt[20]));
  FDCE \countgt_reg[21] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[21]_i_1_n_0 ),
        .Q(countgt[21]));
  FDCE \countgt_reg[22] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[22]_i_1_n_0 ),
        .Q(countgt[22]));
  FDCE \countgt_reg[23] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[23]_i_1_n_0 ),
        .Q(countgt[23]));
  FDCE \countgt_reg[24] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[24]_i_1_n_0 ),
        .Q(countgt[24]));
  FDCE \countgt_reg[25] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[25]_i_1_n_0 ),
        .Q(countgt[25]));
  FDCE \countgt_reg[26] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[26]_i_1_n_0 ),
        .Q(countgt[26]));
  FDCE \countgt_reg[27] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[27]_i_1_n_0 ),
        .Q(countgt[27]));
  FDCE \countgt_reg[28] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[28]_i_1_n_0 ),
        .Q(countgt[28]));
  FDCE \countgt_reg[29] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[29]_i_1_n_0 ),
        .Q(countgt[29]));
  FDCE \countgt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[2]_i_1_n_0 ),
        .Q(countgt[2]));
  FDCE \countgt_reg[30] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[30]_i_1_n_0 ),
        .Q(countgt[30]));
  FDCE \countgt_reg[31] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[31]_i_2_n_0 ),
        .Q(countgt[31]));
  FDCE \countgt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[3]_i_1_n_0 ),
        .Q(countgt[3]));
  FDCE \countgt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[4]_i_1_n_0 ),
        .Q(countgt[4]));
  FDCE \countgt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[5]_i_1_n_0 ),
        .Q(countgt[5]));
  FDCE \countgt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[6]_i_1_n_0 ),
        .Q(countgt[6]));
  FDCE \countgt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[7]_i_1_n_0 ),
        .Q(countgt[7]));
  FDCE \countgt_reg[8] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[8]_i_1_n_0 ),
        .Q(countgt[8]));
  FDCE \countgt_reg[9] 
       (.C(s_axi_aclk),
        .CE(\countgt[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\countgt[9]_i_1_n_0 ),
        .Q(countgt[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cyclecount0_carry
       (.CI(1'b0),
        .CO({cyclecount0_carry_n_0,cyclecount0_carry_n_1,cyclecount0_carry_n_2,cyclecount0_carry_n_3}),
        .CYINIT(cyclecount[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[4:1]),
        .S(cyclecount[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cyclecount0_carry__0
       (.CI(cyclecount0_carry_n_0),
        .CO({cyclecount0_carry__0_n_0,cyclecount0_carry__0_n_1,cyclecount0_carry__0_n_2,cyclecount0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[8:5]),
        .S(cyclecount[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cyclecount0_carry__1
       (.CI(cyclecount0_carry__0_n_0),
        .CO({cyclecount0_carry__1_n_0,cyclecount0_carry__1_n_1,cyclecount0_carry__1_n_2,cyclecount0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[12:9]),
        .S(cyclecount[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cyclecount0_carry__2
       (.CI(cyclecount0_carry__1_n_0),
        .CO({cyclecount0_carry__2_n_0,cyclecount0_carry__2_n_1,cyclecount0_carry__2_n_2,cyclecount0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[16:13]),
        .S(cyclecount[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cyclecount0_carry__3
       (.CI(cyclecount0_carry__2_n_0),
        .CO({cyclecount0_carry__3_n_0,cyclecount0_carry__3_n_1,cyclecount0_carry__3_n_2,cyclecount0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[20:17]),
        .S(cyclecount[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cyclecount0_carry__4
       (.CI(cyclecount0_carry__3_n_0),
        .CO({cyclecount0_carry__4_n_0,cyclecount0_carry__4_n_1,cyclecount0_carry__4_n_2,cyclecount0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[24:21]),
        .S(cyclecount[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cyclecount0_carry__5
       (.CI(cyclecount0_carry__4_n_0),
        .CO({cyclecount0_carry__5_n_0,cyclecount0_carry__5_n_1,cyclecount0_carry__5_n_2,cyclecount0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[28:25]),
        .S(cyclecount[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cyclecount0_carry__6
       (.CI(cyclecount0_carry__5_n_0),
        .CO({NLW_cyclecount0_carry__6_CO_UNCONNECTED[3:2],cyclecount0_carry__6_n_2,cyclecount0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cyclecount0_carry__6_O_UNCONNECTED[3],in19[31:29]}),
        .S({1'b0,cyclecount[31:29]}));
  LUT5 #(
    .INIT(32'h00FF00F2)) 
    \cyclecount[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I3(cyclecount[0]),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[10]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[11]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[12]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[13]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[14]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[15]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[16]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[17]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[18]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[19]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[1]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[20]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[21]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[22]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[23]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[24]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[25]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[26]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[27]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[28]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[29]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[2]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[30]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F8A8)) 
    \cyclecount[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(core_busy),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[31]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA80000)) 
    \cyclecount[31]_i_3 
       (.I0(start_pulse),
        .I1(\cyclecount[31]_i_4_n_0 ),
        .I2(\cyclecount[31]_i_5_n_0 ),
        .I3(\length_latched[31]_i_4_n_0 ),
        .I4(\length_latched[31]_i_3_n_0 ),
        .I5(\length_latched[31]_i_2_n_0 ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cyclecount[31]_i_4 
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(\length_latched[31]_i_19_n_0 ),
        .O(\cyclecount[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cyclecount[31]_i_5 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\length_latched[31]_i_17_n_0 ),
        .O(\cyclecount[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[3]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[4]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[5]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[6]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[7]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[8]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F020)) 
    \cyclecount[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(in19[9]),
        .I3(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\cyclecount[9]_i_1_n_0 ));
  FDCE \cyclecount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[0]_i_1_n_0 ),
        .Q(cyclecount[0]));
  FDCE \cyclecount_reg[10] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[10]_i_1_n_0 ),
        .Q(cyclecount[10]));
  FDCE \cyclecount_reg[11] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[11]_i_1_n_0 ),
        .Q(cyclecount[11]));
  FDCE \cyclecount_reg[12] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[12]_i_1_n_0 ),
        .Q(cyclecount[12]));
  FDCE \cyclecount_reg[13] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[13]_i_1_n_0 ),
        .Q(cyclecount[13]));
  FDCE \cyclecount_reg[14] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[14]_i_1_n_0 ),
        .Q(cyclecount[14]));
  FDCE \cyclecount_reg[15] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[15]_i_1_n_0 ),
        .Q(cyclecount[15]));
  FDCE \cyclecount_reg[16] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[16]_i_1_n_0 ),
        .Q(cyclecount[16]));
  FDCE \cyclecount_reg[17] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[17]_i_1_n_0 ),
        .Q(cyclecount[17]));
  FDCE \cyclecount_reg[18] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[18]_i_1_n_0 ),
        .Q(cyclecount[18]));
  FDCE \cyclecount_reg[19] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[19]_i_1_n_0 ),
        .Q(cyclecount[19]));
  FDCE \cyclecount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[1]_i_1_n_0 ),
        .Q(cyclecount[1]));
  FDCE \cyclecount_reg[20] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[20]_i_1_n_0 ),
        .Q(cyclecount[20]));
  FDCE \cyclecount_reg[21] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[21]_i_1_n_0 ),
        .Q(cyclecount[21]));
  FDCE \cyclecount_reg[22] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[22]_i_1_n_0 ),
        .Q(cyclecount[22]));
  FDCE \cyclecount_reg[23] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[23]_i_1_n_0 ),
        .Q(cyclecount[23]));
  FDCE \cyclecount_reg[24] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[24]_i_1_n_0 ),
        .Q(cyclecount[24]));
  FDCE \cyclecount_reg[25] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[25]_i_1_n_0 ),
        .Q(cyclecount[25]));
  FDCE \cyclecount_reg[26] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[26]_i_1_n_0 ),
        .Q(cyclecount[26]));
  FDCE \cyclecount_reg[27] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[27]_i_1_n_0 ),
        .Q(cyclecount[27]));
  FDCE \cyclecount_reg[28] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[28]_i_1_n_0 ),
        .Q(cyclecount[28]));
  FDCE \cyclecount_reg[29] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[29]_i_1_n_0 ),
        .Q(cyclecount[29]));
  FDCE \cyclecount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[2]_i_1_n_0 ),
        .Q(cyclecount[2]));
  FDCE \cyclecount_reg[30] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[30]_i_1_n_0 ),
        .Q(cyclecount[30]));
  FDCE \cyclecount_reg[31] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[31]_i_2_n_0 ),
        .Q(cyclecount[31]));
  FDCE \cyclecount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[3]_i_1_n_0 ),
        .Q(cyclecount[3]));
  FDCE \cyclecount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[4]_i_1_n_0 ),
        .Q(cyclecount[4]));
  FDCE \cyclecount_reg[5] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[5]_i_1_n_0 ),
        .Q(cyclecount[5]));
  FDCE \cyclecount_reg[6] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[6]_i_1_n_0 ),
        .Q(cyclecount[6]));
  FDCE \cyclecount_reg[7] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[7]_i_1_n_0 ),
        .Q(cyclecount[7]));
  FDCE \cyclecount_reg[8] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[8]_i_1_n_0 ),
        .Q(cyclecount[8]));
  FDCE \cyclecount_reg[9] 
       (.C(s_axi_aclk),
        .CE(\cyclecount[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\cyclecount[9]_i_1_n_0 ),
        .Q(cyclecount[9]));
  LUT6 #(
    .INIT(64'hAAAABBBFAAAA8880)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(clear_done_pulse),
        .I4(done_i_3_n_0),
        .I5(done),
        .O(done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    done_i_2
       (.I0(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I1(\state0_inferred__0/i__carry__2_n_0 ),
        .O(done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE0EC)) 
    done_i_3
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg[2]_rep__1_n_0 ),
        .I2(clear_done_pulse),
        .I3(\state0_inferred__0/i__carry__2_n_0 ),
        .O(done_i_3_n_0));
  FDCE done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(s_axi_aresetn_0),
        .D(done_i_1_n_0),
        .Q(done));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(length_latched[14]),
        .I1(in4[14]),
        .I2(in4[15]),
        .I3(length_latched[15]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(length_latched[12]),
        .I1(in4[12]),
        .I2(in4[13]),
        .I3(length_latched[13]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(length_latched[10]),
        .I1(in4[10]),
        .I2(in4[11]),
        .I3(length_latched[11]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(length_latched[8]),
        .I1(in4[8]),
        .I2(in4[9]),
        .I3(length_latched[9]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(length_latched[14]),
        .I1(in4[14]),
        .I2(length_latched[15]),
        .I3(in4[15]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(length_latched[12]),
        .I1(in4[12]),
        .I2(length_latched[13]),
        .I3(in4[13]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(length_latched[10]),
        .I1(in4[10]),
        .I2(length_latched[11]),
        .I3(in4[11]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(length_latched[8]),
        .I1(in4[8]),
        .I2(length_latched[9]),
        .I3(in4[9]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(length_latched[22]),
        .I1(in4[22]),
        .I2(in4[23]),
        .I3(length_latched[23]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(length_latched[20]),
        .I1(in4[20]),
        .I2(in4[21]),
        .I3(length_latched[21]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(length_latched[18]),
        .I1(in4[18]),
        .I2(in4[19]),
        .I3(length_latched[19]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(length_latched[16]),
        .I1(in4[16]),
        .I2(in4[17]),
        .I3(length_latched[17]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(length_latched[22]),
        .I1(in4[22]),
        .I2(length_latched[23]),
        .I3(in4[23]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(length_latched[20]),
        .I1(in4[20]),
        .I2(length_latched[21]),
        .I3(in4[21]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(length_latched[18]),
        .I1(in4[18]),
        .I2(length_latched[19]),
        .I3(in4[19]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(length_latched[16]),
        .I1(in4[16]),
        .I2(length_latched[17]),
        .I3(in4[17]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1
       (.I0(length_latched[30]),
        .I1(in4[30]),
        .I2(in4[31]),
        .I3(length_latched[31]),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(length_latched[28]),
        .I1(in4[28]),
        .I2(in4[29]),
        .I3(length_latched[29]),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(length_latched[26]),
        .I1(in4[26]),
        .I2(in4[27]),
        .I3(length_latched[27]),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(length_latched[24]),
        .I1(in4[24]),
        .I2(in4[25]),
        .I3(length_latched[25]),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(length_latched[30]),
        .I1(in4[30]),
        .I2(length_latched[31]),
        .I3(in4[31]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(length_latched[28]),
        .I1(in4[28]),
        .I2(length_latched[29]),
        .I3(in4[29]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(length_latched[26]),
        .I1(in4[26]),
        .I2(length_latched[27]),
        .I3(in4[27]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(length_latched[24]),
        .I1(in4[24]),
        .I2(length_latched[25]),
        .I3(in4[25]),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(length_latched[6]),
        .I1(in4[6]),
        .I2(in4[7]),
        .I3(length_latched[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(length_latched[4]),
        .I1(in4[4]),
        .I2(in4[5]),
        .I3(length_latched[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(length_latched[2]),
        .I1(in4[2]),
        .I2(in4[3]),
        .I3(length_latched[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h8F08)) 
    i__carry_i_4
       (.I0(pending_idx[0]),
        .I1(length_latched[0]),
        .I2(in4[1]),
        .I3(length_latched[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(length_latched[6]),
        .I1(in4[6]),
        .I2(length_latched[7]),
        .I3(in4[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(length_latched[4]),
        .I1(in4[4]),
        .I2(length_latched[5]),
        .I3(in4[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(length_latched[2]),
        .I1(in4[2]),
        .I2(length_latched[3]),
        .I3(in4[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_8
       (.I0(length_latched[0]),
        .I1(pending_idx[0]),
        .I2(length_latched[1]),
        .I3(in4[1]),
        .O(i__carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \idx[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(pending_idx[0]),
        .O(\idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[10]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[10]),
        .O(\idx[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[11]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[11]),
        .O(\idx[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[12]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[12]),
        .O(\idx[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[13]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[13]),
        .O(\idx[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[14]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[14]),
        .O(\idx[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[15]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[15]),
        .O(\idx[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[16]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[16]),
        .O(\idx[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[17]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[17]),
        .O(\idx[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[18]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[18]),
        .O(\idx[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[19]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[19]),
        .O(\idx[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[1]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[1]),
        .O(\idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[20]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[20]),
        .O(\idx[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[21]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[21]),
        .O(\idx[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[22]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[22]),
        .O(\idx[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[23]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[23]),
        .O(\idx[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[24]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[24]),
        .O(\idx[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[25]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[25]),
        .O(\idx[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[26]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[26]),
        .O(\idx[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[27]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[27]),
        .O(\idx[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[28]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[28]),
        .O(\idx[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[29]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[29]),
        .O(\idx[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[2]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[2]),
        .O(\idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[30]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[30]),
        .O(\idx[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \idx[31]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[31]),
        .O(\idx[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[3]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[3]),
        .O(\idx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[4]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[4]),
        .O(\idx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[5]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[5]),
        .O(\idx[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[6]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[6]),
        .O(\idx[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[7]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[7]),
        .O(\idx[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[8]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[8]),
        .O(\idx[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \idx[9]_i_1 
       (.I0(\length_latched[31]_i_1_n_0 ),
        .I1(\state0_inferred__0/i__carry__2_n_0 ),
        .I2(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .O(\idx[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \idx[9]_i_2 
       (.I0(\FSM_onehot_state_reg[2]_rep__0_n_0 ),
        .I1(in4[9]),
        .O(\idx[9]_i_2_n_0 ));
  FDCE \idx_reg[0] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[0]_i_1_n_0 ),
        .Q(bram_addr[0]));
  FDCE \idx_reg[10] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[10]_i_1_n_0 ),
        .Q(idx[10]));
  FDCE \idx_reg[11] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[11]_i_1_n_0 ),
        .Q(idx[11]));
  FDCE \idx_reg[12] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[12]_i_1_n_0 ),
        .Q(idx[12]));
  FDCE \idx_reg[13] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[13]_i_1_n_0 ),
        .Q(idx[13]));
  FDCE \idx_reg[14] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[14]_i_1_n_0 ),
        .Q(idx[14]));
  FDCE \idx_reg[15] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[15]_i_1_n_0 ),
        .Q(idx[15]));
  FDCE \idx_reg[16] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[16]_i_1_n_0 ),
        .Q(idx[16]));
  FDCE \idx_reg[17] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[17]_i_1_n_0 ),
        .Q(idx[17]));
  FDCE \idx_reg[18] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[18]_i_1_n_0 ),
        .Q(idx[18]));
  FDCE \idx_reg[19] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[19]_i_1_n_0 ),
        .Q(idx[19]));
  FDCE \idx_reg[1] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[1]_i_1_n_0 ),
        .Q(bram_addr[1]));
  FDCE \idx_reg[20] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[20]_i_1_n_0 ),
        .Q(idx[20]));
  FDCE \idx_reg[21] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[21]_i_1_n_0 ),
        .Q(idx[21]));
  FDCE \idx_reg[22] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[22]_i_1_n_0 ),
        .Q(idx[22]));
  FDCE \idx_reg[23] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[23]_i_1_n_0 ),
        .Q(idx[23]));
  FDCE \idx_reg[24] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[24]_i_1_n_0 ),
        .Q(idx[24]));
  FDCE \idx_reg[25] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[25]_i_1_n_0 ),
        .Q(idx[25]));
  FDCE \idx_reg[26] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[26]_i_1_n_0 ),
        .Q(idx[26]));
  FDCE \idx_reg[27] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[27]_i_1_n_0 ),
        .Q(idx[27]));
  FDCE \idx_reg[28] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[28]_i_1_n_0 ),
        .Q(idx[28]));
  FDCE \idx_reg[29] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[29]_i_1_n_0 ),
        .Q(idx[29]));
  FDCE \idx_reg[2] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[2]_i_1_n_0 ),
        .Q(bram_addr[2]));
  FDCE \idx_reg[30] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[30]_i_1_n_0 ),
        .Q(idx[30]));
  FDCE \idx_reg[31] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[31]_i_1_n_0 ),
        .Q(idx[31]));
  FDCE \idx_reg[3] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[3]_i_1_n_0 ),
        .Q(bram_addr[3]));
  FDCE \idx_reg[4] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[4]_i_1_n_0 ),
        .Q(bram_addr[4]));
  FDCE \idx_reg[5] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[5]_i_1_n_0 ),
        .Q(bram_addr[5]));
  FDCE \idx_reg[6] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[6]_i_1_n_0 ),
        .Q(bram_addr[6]));
  FDCE \idx_reg[7] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[7]_i_1_n_0 ),
        .Q(bram_addr[7]));
  FDCE \idx_reg[8] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[8]_i_1_n_0 ),
        .Q(bram_addr[8]));
  FDCE \idx_reg[9] 
       (.C(s_axi_aclk),
        .CE(\idx[9]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\idx[9]_i_2_n_0 ),
        .Q(bram_addr[9]));
  LUT6 #(
    .INIT(64'h2020200000000000)) 
    \length_latched[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\length_latched[31]_i_2_n_0 ),
        .I2(\length_latched[31]_i_3_n_0 ),
        .I3(\length_latched[31]_i_4_n_0 ),
        .I4(\length_latched[31]_i_5_n_0 ),
        .I5(start_pulse),
        .O(\length_latched[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_10 
       (.I0(Q[21]),
        .I1(Q[20]),
        .I2(Q[23]),
        .I3(Q[22]),
        .O(\length_latched[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_11 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(\length_latched[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_12 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\length_latched[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_13 
       (.I0(Q[22]),
        .I1(Q[21]),
        .I2(Q[24]),
        .I3(Q[23]),
        .O(\length_latched[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_14 
       (.I0(Q[18]),
        .I1(Q[17]),
        .I2(Q[20]),
        .I3(Q[19]),
        .O(\length_latched[31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_15 
       (.I0(Q[30]),
        .I1(Q[29]),
        .I2(Q[0]),
        .I3(Q[31]),
        .O(\length_latched[31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_16 
       (.I0(Q[26]),
        .I1(Q[25]),
        .I2(Q[28]),
        .I3(Q[27]),
        .O(\length_latched[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_17 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[8]),
        .I3(Q[7]),
        .O(\length_latched[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_18 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\length_latched[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_19 
       (.I0(Q[14]),
        .I1(Q[13]),
        .I2(Q[16]),
        .I3(Q[15]),
        .O(\length_latched[31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \length_latched[31]_i_2 
       (.I0(\length_latched[31]_i_6_n_0 ),
        .I1(\length_latched[31]_i_7_n_0 ),
        .I2(\length_latched[31]_i_8_n_0 ),
        .I3(\length_latched[31]_i_9_n_0 ),
        .I4(\length_latched[31]_i_10_n_0 ),
        .O(\length_latched[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_20 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[12]),
        .I3(Q[11]),
        .O(\length_latched[31]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \length_latched[31]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\length_latched[31]_i_11_n_0 ),
        .I3(\length_latched[31]_i_12_n_0 ),
        .I4(Q[10]),
        .O(\length_latched[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_4 
       (.I0(\length_latched[31]_i_13_n_0 ),
        .I1(\length_latched[31]_i_14_n_0 ),
        .I2(\length_latched[31]_i_15_n_0 ),
        .I3(\length_latched[31]_i_16_n_0 ),
        .O(\length_latched[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_5 
       (.I0(\length_latched[31]_i_17_n_0 ),
        .I1(\length_latched[31]_i_18_n_0 ),
        .I2(\length_latched[31]_i_19_n_0 ),
        .I3(\length_latched[31]_i_20_n_0 ),
        .O(\length_latched[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \length_latched[31]_i_6 
       (.I0(Q[11]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\length_latched[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_7 
       (.I0(Q[25]),
        .I1(Q[24]),
        .I2(Q[27]),
        .I3(Q[26]),
        .O(\length_latched[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_8 
       (.I0(Q[29]),
        .I1(Q[28]),
        .I2(Q[31]),
        .I3(Q[30]),
        .O(\length_latched[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \length_latched[31]_i_9 
       (.I0(Q[17]),
        .I1(Q[16]),
        .I2(Q[19]),
        .I3(Q[18]),
        .O(\length_latched[31]_i_9_n_0 ));
  FDCE \length_latched_reg[0] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[0]),
        .Q(length_latched[0]));
  FDCE \length_latched_reg[10] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[10]),
        .Q(length_latched[10]));
  FDCE \length_latched_reg[11] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[11]),
        .Q(length_latched[11]));
  FDCE \length_latched_reg[12] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[12]),
        .Q(length_latched[12]));
  FDCE \length_latched_reg[13] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[13]),
        .Q(length_latched[13]));
  FDCE \length_latched_reg[14] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[14]),
        .Q(length_latched[14]));
  FDCE \length_latched_reg[15] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[15]),
        .Q(length_latched[15]));
  FDCE \length_latched_reg[16] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[16]),
        .Q(length_latched[16]));
  FDCE \length_latched_reg[17] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[17]),
        .Q(length_latched[17]));
  FDCE \length_latched_reg[18] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[18]),
        .Q(length_latched[18]));
  FDCE \length_latched_reg[19] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[19]),
        .Q(length_latched[19]));
  FDCE \length_latched_reg[1] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[1]),
        .Q(length_latched[1]));
  FDCE \length_latched_reg[20] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[20]),
        .Q(length_latched[20]));
  FDCE \length_latched_reg[21] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[21]),
        .Q(length_latched[21]));
  FDCE \length_latched_reg[22] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[22]),
        .Q(length_latched[22]));
  FDCE \length_latched_reg[23] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[23]),
        .Q(length_latched[23]));
  FDCE \length_latched_reg[24] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[24]),
        .Q(length_latched[24]));
  FDCE \length_latched_reg[25] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[25]),
        .Q(length_latched[25]));
  FDCE \length_latched_reg[26] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[26]),
        .Q(length_latched[26]));
  FDCE \length_latched_reg[27] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[27]),
        .Q(length_latched[27]));
  FDCE \length_latched_reg[28] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[28]),
        .Q(length_latched[28]));
  FDCE \length_latched_reg[29] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[29]),
        .Q(length_latched[29]));
  FDCE \length_latched_reg[2] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[2]),
        .Q(length_latched[2]));
  FDCE \length_latched_reg[30] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[30]),
        .Q(length_latched[30]));
  FDCE \length_latched_reg[31] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[31]),
        .Q(length_latched[31]));
  FDCE \length_latched_reg[3] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[3]),
        .Q(length_latched[3]));
  FDCE \length_latched_reg[4] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[4]),
        .Q(length_latched[4]));
  FDCE \length_latched_reg[5] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[5]),
        .Q(length_latched[5]));
  FDCE \length_latched_reg[6] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[6]),
        .Q(length_latched[6]));
  FDCE \length_latched_reg[7] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[7]),
        .Q(length_latched[7]));
  FDCE \length_latched_reg[8] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[8]),
        .Q(length_latched[8]));
  FDCE \length_latched_reg[9] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(Q[9]),
        .Q(length_latched[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 maxval0_carry
       (.CI(1'b0),
        .CO({maxval0_carry_n_0,maxval0_carry_n_1,maxval0_carry_n_2,maxval0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({maxval0_carry_i_1_n_0,maxval0_carry_i_2_n_0,maxval0_carry_i_3_n_0,maxval0_carry_i_4_n_0}),
        .O(NLW_maxval0_carry_O_UNCONNECTED[3:0]),
        .S({maxval0_carry_i_5_n_0,maxval0_carry_i_6_n_0,maxval0_carry_i_7_n_0,maxval0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 maxval0_carry__0
       (.CI(maxval0_carry_n_0),
        .CO({maxval0_carry__0_n_0,maxval0_carry__0_n_1,maxval0_carry__0_n_2,maxval0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({maxval0_carry__0_i_1_n_0,maxval0_carry__0_i_2_n_0,maxval0_carry__0_i_3_n_0,maxval0_carry__0_i_4_n_0}),
        .O(NLW_maxval0_carry__0_O_UNCONNECTED[3:0]),
        .S({maxval0_carry__0_i_5_n_0,maxval0_carry__0_i_6_n_0,maxval0_carry__0_i_7_n_0,maxval0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__0_i_1
       (.I0(bram_rdata[14]),
        .I1(maxval[14]),
        .I2(maxval[15]),
        .I3(bram_rdata[15]),
        .O(maxval0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__0_i_2
       (.I0(bram_rdata[12]),
        .I1(maxval[12]),
        .I2(maxval[13]),
        .I3(bram_rdata[13]),
        .O(maxval0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__0_i_3
       (.I0(bram_rdata[10]),
        .I1(maxval[10]),
        .I2(maxval[11]),
        .I3(bram_rdata[11]),
        .O(maxval0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__0_i_4
       (.I0(bram_rdata[8]),
        .I1(maxval[8]),
        .I2(maxval[9]),
        .I3(bram_rdata[9]),
        .O(maxval0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__0_i_5
       (.I0(bram_rdata[14]),
        .I1(maxval[14]),
        .I2(bram_rdata[15]),
        .I3(maxval[15]),
        .O(maxval0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__0_i_6
       (.I0(bram_rdata[12]),
        .I1(maxval[12]),
        .I2(bram_rdata[13]),
        .I3(maxval[13]),
        .O(maxval0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__0_i_7
       (.I0(bram_rdata[10]),
        .I1(maxval[10]),
        .I2(bram_rdata[11]),
        .I3(maxval[11]),
        .O(maxval0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__0_i_8
       (.I0(bram_rdata[8]),
        .I1(maxval[8]),
        .I2(bram_rdata[9]),
        .I3(maxval[9]),
        .O(maxval0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 maxval0_carry__1
       (.CI(maxval0_carry__0_n_0),
        .CO({maxval0_carry__1_n_0,maxval0_carry__1_n_1,maxval0_carry__1_n_2,maxval0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({maxval0_carry__1_i_1_n_0,maxval0_carry__1_i_2_n_0,maxval0_carry__1_i_3_n_0,maxval0_carry__1_i_4_n_0}),
        .O(NLW_maxval0_carry__1_O_UNCONNECTED[3:0]),
        .S({maxval0_carry__1_i_5_n_0,maxval0_carry__1_i_6_n_0,maxval0_carry__1_i_7_n_0,maxval0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__1_i_1
       (.I0(bram_rdata[22]),
        .I1(maxval[22]),
        .I2(maxval[23]),
        .I3(bram_rdata[23]),
        .O(maxval0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__1_i_2
       (.I0(bram_rdata[20]),
        .I1(maxval[20]),
        .I2(maxval[21]),
        .I3(bram_rdata[21]),
        .O(maxval0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__1_i_3
       (.I0(bram_rdata[18]),
        .I1(maxval[18]),
        .I2(maxval[19]),
        .I3(bram_rdata[19]),
        .O(maxval0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__1_i_4
       (.I0(bram_rdata[16]),
        .I1(maxval[16]),
        .I2(maxval[17]),
        .I3(bram_rdata[17]),
        .O(maxval0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__1_i_5
       (.I0(bram_rdata[22]),
        .I1(maxval[22]),
        .I2(bram_rdata[23]),
        .I3(maxval[23]),
        .O(maxval0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__1_i_6
       (.I0(bram_rdata[20]),
        .I1(maxval[20]),
        .I2(bram_rdata[21]),
        .I3(maxval[21]),
        .O(maxval0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__1_i_7
       (.I0(bram_rdata[18]),
        .I1(maxval[18]),
        .I2(bram_rdata[19]),
        .I3(maxval[19]),
        .O(maxval0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__1_i_8
       (.I0(bram_rdata[16]),
        .I1(maxval[16]),
        .I2(bram_rdata[17]),
        .I3(maxval[17]),
        .O(maxval0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 maxval0_carry__2
       (.CI(maxval0_carry__1_n_0),
        .CO({maxval0_carry__2_n_0,maxval0_carry__2_n_1,maxval0_carry__2_n_2,maxval0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({maxval0_carry__2_i_1_n_0,maxval0_carry__2_i_2_n_0,maxval0_carry__2_i_3_n_0,maxval0_carry__2_i_4_n_0}),
        .O(NLW_maxval0_carry__2_O_UNCONNECTED[3:0]),
        .S({maxval0_carry__2_i_5_n_0,maxval0_carry__2_i_6_n_0,maxval0_carry__2_i_7_n_0,maxval0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__2_i_1
       (.I0(bram_rdata[30]),
        .I1(maxval[30]),
        .I2(maxval[31]),
        .I3(bram_rdata[31]),
        .O(maxval0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__2_i_2
       (.I0(bram_rdata[28]),
        .I1(maxval[28]),
        .I2(maxval[29]),
        .I3(bram_rdata[29]),
        .O(maxval0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__2_i_3
       (.I0(bram_rdata[26]),
        .I1(maxval[26]),
        .I2(maxval[27]),
        .I3(bram_rdata[27]),
        .O(maxval0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry__2_i_4
       (.I0(bram_rdata[24]),
        .I1(maxval[24]),
        .I2(maxval[25]),
        .I3(bram_rdata[25]),
        .O(maxval0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__2_i_5
       (.I0(bram_rdata[30]),
        .I1(maxval[30]),
        .I2(bram_rdata[31]),
        .I3(maxval[31]),
        .O(maxval0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__2_i_6
       (.I0(bram_rdata[28]),
        .I1(maxval[28]),
        .I2(bram_rdata[29]),
        .I3(maxval[29]),
        .O(maxval0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__2_i_7
       (.I0(bram_rdata[26]),
        .I1(maxval[26]),
        .I2(bram_rdata[27]),
        .I3(maxval[27]),
        .O(maxval0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry__2_i_8
       (.I0(bram_rdata[24]),
        .I1(maxval[24]),
        .I2(bram_rdata[25]),
        .I3(maxval[25]),
        .O(maxval0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry_i_1
       (.I0(bram_rdata[6]),
        .I1(maxval[6]),
        .I2(maxval[7]),
        .I3(bram_rdata[7]),
        .O(maxval0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry_i_2
       (.I0(bram_rdata[4]),
        .I1(maxval[4]),
        .I2(maxval[5]),
        .I3(bram_rdata[5]),
        .O(maxval0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry_i_3
       (.I0(bram_rdata[2]),
        .I1(maxval[2]),
        .I2(maxval[3]),
        .I3(bram_rdata[3]),
        .O(maxval0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    maxval0_carry_i_4
       (.I0(bram_rdata[0]),
        .I1(maxval[0]),
        .I2(maxval[1]),
        .I3(bram_rdata[1]),
        .O(maxval0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry_i_5
       (.I0(bram_rdata[6]),
        .I1(maxval[6]),
        .I2(bram_rdata[7]),
        .I3(maxval[7]),
        .O(maxval0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry_i_6
       (.I0(bram_rdata[4]),
        .I1(maxval[4]),
        .I2(bram_rdata[5]),
        .I3(maxval[5]),
        .O(maxval0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry_i_7
       (.I0(bram_rdata[2]),
        .I1(maxval[2]),
        .I2(bram_rdata[3]),
        .I3(maxval[3]),
        .O(maxval0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    maxval0_carry_i_8
       (.I0(bram_rdata[0]),
        .I1(maxval[0]),
        .I2(bram_rdata[1]),
        .I3(maxval[1]),
        .O(maxval0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[0]),
        .O(\maxval[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[10]),
        .O(\maxval[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[11]),
        .O(\maxval[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[12]),
        .O(\maxval[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[13]),
        .O(\maxval[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[14]),
        .O(\maxval[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[15]),
        .O(\maxval[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[16]),
        .O(\maxval[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[17]),
        .O(\maxval[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[18]),
        .O(\maxval[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[19]),
        .O(\maxval[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[1]),
        .O(\maxval[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[20]),
        .O(\maxval[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[21]),
        .O(\maxval[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[22]),
        .O(\maxval[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[23]),
        .O(\maxval[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[24]),
        .O(\maxval[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[25]),
        .O(\maxval[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[26]),
        .O(\maxval[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[27]),
        .O(\maxval[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[28]),
        .O(\maxval[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[29]),
        .O(\maxval[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[2]),
        .O(\maxval[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[30]),
        .O(\maxval[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \maxval[31]_i_1 
       (.I0(\length_latched[31]_i_1_n_0 ),
        .I1(maxval0_carry__2_n_0),
        .I2(\minval[31]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\maxval[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[31]),
        .O(\maxval[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[3]),
        .O(\maxval[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[4]),
        .O(\maxval[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[5]),
        .O(\maxval[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[6]),
        .O(\maxval[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[7]),
        .O(\maxval[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[8]),
        .O(\maxval[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \maxval[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bram_rdata[9]),
        .O(\maxval[9]_i_1_n_0 ));
  FDCE \maxval_reg[0] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[0]_i_1_n_0 ),
        .Q(maxval[0]));
  FDCE \maxval_reg[10] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[10]_i_1_n_0 ),
        .Q(maxval[10]));
  FDCE \maxval_reg[11] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[11]_i_1_n_0 ),
        .Q(maxval[11]));
  FDCE \maxval_reg[12] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[12]_i_1_n_0 ),
        .Q(maxval[12]));
  FDCE \maxval_reg[13] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[13]_i_1_n_0 ),
        .Q(maxval[13]));
  FDCE \maxval_reg[14] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[14]_i_1_n_0 ),
        .Q(maxval[14]));
  FDCE \maxval_reg[15] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[15]_i_1_n_0 ),
        .Q(maxval[15]));
  FDCE \maxval_reg[16] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[16]_i_1_n_0 ),
        .Q(maxval[16]));
  FDCE \maxval_reg[17] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[17]_i_1_n_0 ),
        .Q(maxval[17]));
  FDCE \maxval_reg[18] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[18]_i_1_n_0 ),
        .Q(maxval[18]));
  FDCE \maxval_reg[19] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[19]_i_1_n_0 ),
        .Q(maxval[19]));
  FDCE \maxval_reg[1] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[1]_i_1_n_0 ),
        .Q(maxval[1]));
  FDCE \maxval_reg[20] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[20]_i_1_n_0 ),
        .Q(maxval[20]));
  FDCE \maxval_reg[21] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[21]_i_1_n_0 ),
        .Q(maxval[21]));
  FDCE \maxval_reg[22] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[22]_i_1_n_0 ),
        .Q(maxval[22]));
  FDCE \maxval_reg[23] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[23]_i_1_n_0 ),
        .Q(maxval[23]));
  FDCE \maxval_reg[24] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[24]_i_1_n_0 ),
        .Q(maxval[24]));
  FDCE \maxval_reg[25] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[25]_i_1_n_0 ),
        .Q(maxval[25]));
  FDCE \maxval_reg[26] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[26]_i_1_n_0 ),
        .Q(maxval[26]));
  FDCE \maxval_reg[27] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[27]_i_1_n_0 ),
        .Q(maxval[27]));
  FDCE \maxval_reg[28] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[28]_i_1_n_0 ),
        .Q(maxval[28]));
  FDCE \maxval_reg[29] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[29]_i_1_n_0 ),
        .Q(maxval[29]));
  FDCE \maxval_reg[2] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[2]_i_1_n_0 ),
        .Q(maxval[2]));
  FDCE \maxval_reg[30] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[30]_i_1_n_0 ),
        .Q(maxval[30]));
  FDCE \maxval_reg[31] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[31]_i_2_n_0 ),
        .Q(maxval[31]));
  FDCE \maxval_reg[3] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[3]_i_1_n_0 ),
        .Q(maxval[3]));
  FDCE \maxval_reg[4] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[4]_i_1_n_0 ),
        .Q(maxval[4]));
  FDCE \maxval_reg[5] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[5]_i_1_n_0 ),
        .Q(maxval[5]));
  FDCE \maxval_reg[6] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[6]_i_1_n_0 ),
        .Q(maxval[6]));
  FDCE \maxval_reg[7] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[7]_i_1_n_0 ),
        .Q(maxval[7]));
  FDCE \maxval_reg[8] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[8]_i_1_n_0 ),
        .Q(maxval[8]));
  FDCE \maxval_reg[9] 
       (.C(s_axi_aclk),
        .CE(\maxval[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\maxval[9]_i_1_n_0 ),
        .Q(maxval[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 minval0_carry
       (.CI(1'b0),
        .CO({minval0_carry_n_0,minval0_carry_n_1,minval0_carry_n_2,minval0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({minval0_carry_i_1_n_0,minval0_carry_i_2_n_0,minval0_carry_i_3_n_0,minval0_carry_i_4_n_0}),
        .O(NLW_minval0_carry_O_UNCONNECTED[3:0]),
        .S({minval0_carry_i_5_n_0,minval0_carry_i_6_n_0,minval0_carry_i_7_n_0,minval0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 minval0_carry__0
       (.CI(minval0_carry_n_0),
        .CO({minval0_carry__0_n_0,minval0_carry__0_n_1,minval0_carry__0_n_2,minval0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({minval0_carry__0_i_1_n_0,minval0_carry__0_i_2_n_0,minval0_carry__0_i_3_n_0,minval0_carry__0_i_4_n_0}),
        .O(NLW_minval0_carry__0_O_UNCONNECTED[3:0]),
        .S({minval0_carry__0_i_5_n_0,minval0_carry__0_i_6_n_0,minval0_carry__0_i_7_n_0,minval0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__0_i_1
       (.I0(minval[14]),
        .I1(bram_rdata[14]),
        .I2(bram_rdata[15]),
        .I3(minval[15]),
        .O(minval0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__0_i_2
       (.I0(minval[12]),
        .I1(bram_rdata[12]),
        .I2(bram_rdata[13]),
        .I3(minval[13]),
        .O(minval0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__0_i_3
       (.I0(minval[10]),
        .I1(bram_rdata[10]),
        .I2(bram_rdata[11]),
        .I3(minval[11]),
        .O(minval0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__0_i_4
       (.I0(minval[8]),
        .I1(bram_rdata[8]),
        .I2(bram_rdata[9]),
        .I3(minval[9]),
        .O(minval0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__0_i_5
       (.I0(minval[14]),
        .I1(bram_rdata[14]),
        .I2(minval[15]),
        .I3(bram_rdata[15]),
        .O(minval0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__0_i_6
       (.I0(minval[12]),
        .I1(bram_rdata[12]),
        .I2(minval[13]),
        .I3(bram_rdata[13]),
        .O(minval0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__0_i_7
       (.I0(minval[10]),
        .I1(bram_rdata[10]),
        .I2(minval[11]),
        .I3(bram_rdata[11]),
        .O(minval0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__0_i_8
       (.I0(minval[8]),
        .I1(bram_rdata[8]),
        .I2(minval[9]),
        .I3(bram_rdata[9]),
        .O(minval0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 minval0_carry__1
       (.CI(minval0_carry__0_n_0),
        .CO({minval0_carry__1_n_0,minval0_carry__1_n_1,minval0_carry__1_n_2,minval0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({minval0_carry__1_i_1_n_0,minval0_carry__1_i_2_n_0,minval0_carry__1_i_3_n_0,minval0_carry__1_i_4_n_0}),
        .O(NLW_minval0_carry__1_O_UNCONNECTED[3:0]),
        .S({minval0_carry__1_i_5_n_0,minval0_carry__1_i_6_n_0,minval0_carry__1_i_7_n_0,minval0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__1_i_1
       (.I0(minval[22]),
        .I1(bram_rdata[22]),
        .I2(bram_rdata[23]),
        .I3(minval[23]),
        .O(minval0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__1_i_2
       (.I0(minval[20]),
        .I1(bram_rdata[20]),
        .I2(bram_rdata[21]),
        .I3(minval[21]),
        .O(minval0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__1_i_3
       (.I0(minval[18]),
        .I1(bram_rdata[18]),
        .I2(bram_rdata[19]),
        .I3(minval[19]),
        .O(minval0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__1_i_4
       (.I0(minval[16]),
        .I1(bram_rdata[16]),
        .I2(bram_rdata[17]),
        .I3(minval[17]),
        .O(minval0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__1_i_5
       (.I0(minval[22]),
        .I1(bram_rdata[22]),
        .I2(minval[23]),
        .I3(bram_rdata[23]),
        .O(minval0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__1_i_6
       (.I0(minval[20]),
        .I1(bram_rdata[20]),
        .I2(minval[21]),
        .I3(bram_rdata[21]),
        .O(minval0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__1_i_7
       (.I0(minval[18]),
        .I1(bram_rdata[18]),
        .I2(minval[19]),
        .I3(bram_rdata[19]),
        .O(minval0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__1_i_8
       (.I0(minval[16]),
        .I1(bram_rdata[16]),
        .I2(minval[17]),
        .I3(bram_rdata[17]),
        .O(minval0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 minval0_carry__2
       (.CI(minval0_carry__1_n_0),
        .CO({minval0_carry__2_n_0,minval0_carry__2_n_1,minval0_carry__2_n_2,minval0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({minval0_carry__2_i_1_n_0,minval0_carry__2_i_2_n_0,minval0_carry__2_i_3_n_0,minval0_carry__2_i_4_n_0}),
        .O(NLW_minval0_carry__2_O_UNCONNECTED[3:0]),
        .S({minval0_carry__2_i_5_n_0,minval0_carry__2_i_6_n_0,minval0_carry__2_i_7_n_0,minval0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__2_i_1
       (.I0(minval[30]),
        .I1(bram_rdata[30]),
        .I2(bram_rdata[31]),
        .I3(minval[31]),
        .O(minval0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__2_i_2
       (.I0(minval[28]),
        .I1(bram_rdata[28]),
        .I2(bram_rdata[29]),
        .I3(minval[29]),
        .O(minval0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__2_i_3
       (.I0(minval[26]),
        .I1(bram_rdata[26]),
        .I2(bram_rdata[27]),
        .I3(minval[27]),
        .O(minval0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry__2_i_4
       (.I0(minval[24]),
        .I1(bram_rdata[24]),
        .I2(bram_rdata[25]),
        .I3(minval[25]),
        .O(minval0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__2_i_5
       (.I0(minval[30]),
        .I1(bram_rdata[30]),
        .I2(minval[31]),
        .I3(bram_rdata[31]),
        .O(minval0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__2_i_6
       (.I0(minval[28]),
        .I1(bram_rdata[28]),
        .I2(minval[29]),
        .I3(bram_rdata[29]),
        .O(minval0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__2_i_7
       (.I0(minval[26]),
        .I1(bram_rdata[26]),
        .I2(minval[27]),
        .I3(bram_rdata[27]),
        .O(minval0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry__2_i_8
       (.I0(minval[24]),
        .I1(bram_rdata[24]),
        .I2(minval[25]),
        .I3(bram_rdata[25]),
        .O(minval0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry_i_1
       (.I0(minval[6]),
        .I1(bram_rdata[6]),
        .I2(bram_rdata[7]),
        .I3(minval[7]),
        .O(minval0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry_i_2
       (.I0(minval[4]),
        .I1(bram_rdata[4]),
        .I2(bram_rdata[5]),
        .I3(minval[5]),
        .O(minval0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry_i_3
       (.I0(minval[2]),
        .I1(bram_rdata[2]),
        .I2(bram_rdata[3]),
        .I3(minval[3]),
        .O(minval0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    minval0_carry_i_4
       (.I0(minval[0]),
        .I1(bram_rdata[0]),
        .I2(bram_rdata[1]),
        .I3(minval[1]),
        .O(minval0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry_i_5
       (.I0(minval[6]),
        .I1(bram_rdata[6]),
        .I2(minval[7]),
        .I3(bram_rdata[7]),
        .O(minval0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry_i_6
       (.I0(minval[4]),
        .I1(bram_rdata[4]),
        .I2(minval[5]),
        .I3(bram_rdata[5]),
        .O(minval0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry_i_7
       (.I0(minval[2]),
        .I1(bram_rdata[2]),
        .I2(minval[3]),
        .I3(bram_rdata[3]),
        .O(minval0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    minval0_carry_i_8
       (.I0(minval[0]),
        .I1(bram_rdata[0]),
        .I2(minval[1]),
        .I3(bram_rdata[1]),
        .O(minval0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[0]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[0]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[10]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[10]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[11]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[11]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[12]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[12]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[13]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[13]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[14]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[14]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[15]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[15]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[16]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[16]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[17]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[17]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[18]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[18]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[19]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[19]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[1]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[1]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[20]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[20]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[21]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[21]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[22]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[22]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[23]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[23]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[24]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[24]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[25]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[25]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[26]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[26]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[27]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[27]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[28]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[28]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[29]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[29]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[2]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[2]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[30]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[30]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \minval[31]_i_1 
       (.I0(\length_latched[31]_i_1_n_0 ),
        .I1(minval0_carry__2_n_0),
        .I2(\minval[31]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\minval[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \minval[31]_i_10 
       (.I0(pending_idx[2]),
        .I1(pending_idx[3]),
        .I2(pending_idx[0]),
        .I3(pending_idx[1]),
        .O(\minval[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \minval[31]_i_11 
       (.I0(pending_idx[10]),
        .I1(pending_idx[11]),
        .I2(pending_idx[8]),
        .I3(pending_idx[9]),
        .O(\minval[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[31]_i_2 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[31]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \minval[31]_i_3 
       (.I0(\minval[31]_i_4_n_0 ),
        .I1(\minval[31]_i_5_n_0 ),
        .I2(\minval[31]_i_6_n_0 ),
        .I3(\minval[31]_i_7_n_0 ),
        .O(\minval[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \minval[31]_i_4 
       (.I0(pending_idx[21]),
        .I1(pending_idx[20]),
        .I2(pending_idx[23]),
        .I3(pending_idx[22]),
        .I4(\minval[31]_i_8_n_0 ),
        .O(\minval[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \minval[31]_i_5 
       (.I0(pending_idx[29]),
        .I1(pending_idx[28]),
        .I2(pending_idx[30]),
        .I3(pending_idx[31]),
        .I4(\minval[31]_i_9_n_0 ),
        .O(\minval[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \minval[31]_i_6 
       (.I0(pending_idx[5]),
        .I1(pending_idx[4]),
        .I2(pending_idx[7]),
        .I3(pending_idx[6]),
        .I4(\minval[31]_i_10_n_0 ),
        .O(\minval[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \minval[31]_i_7 
       (.I0(pending_idx[13]),
        .I1(pending_idx[12]),
        .I2(pending_idx[15]),
        .I3(pending_idx[14]),
        .I4(\minval[31]_i_11_n_0 ),
        .O(\minval[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \minval[31]_i_8 
       (.I0(pending_idx[18]),
        .I1(pending_idx[19]),
        .I2(pending_idx[16]),
        .I3(pending_idx[17]),
        .O(\minval[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \minval[31]_i_9 
       (.I0(pending_idx[26]),
        .I1(pending_idx[27]),
        .I2(pending_idx[24]),
        .I3(pending_idx[25]),
        .O(\minval[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[3]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[3]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[4]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[4]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[5]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[5]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[6]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[6]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[7]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[7]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[8]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[8]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \minval[9]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bram_rdata[9]),
        .I3(\length_latched[31]_i_1_n_0 ),
        .O(\minval[9]_i_1_n_0 ));
  FDPE \minval_reg[0] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[0]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[0]));
  FDPE \minval_reg[10] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[10]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[10]));
  FDPE \minval_reg[11] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[11]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[11]));
  FDPE \minval_reg[12] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[12]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[12]));
  FDPE \minval_reg[13] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[13]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[13]));
  FDPE \minval_reg[14] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[14]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[14]));
  FDPE \minval_reg[15] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[15]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[15]));
  FDPE \minval_reg[16] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[16]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[16]));
  FDPE \minval_reg[17] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[17]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[17]));
  FDPE \minval_reg[18] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[18]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[18]));
  FDPE \minval_reg[19] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[19]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[19]));
  FDPE \minval_reg[1] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[1]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[1]));
  FDPE \minval_reg[20] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[20]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[20]));
  FDPE \minval_reg[21] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[21]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[21]));
  FDPE \minval_reg[22] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[22]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[22]));
  FDPE \minval_reg[23] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[23]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[23]));
  FDPE \minval_reg[24] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[24]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[24]));
  FDPE \minval_reg[25] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[25]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[25]));
  FDPE \minval_reg[26] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[26]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[26]));
  FDPE \minval_reg[27] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[27]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[27]));
  FDPE \minval_reg[28] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[28]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[28]));
  FDPE \minval_reg[29] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[29]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[29]));
  FDPE \minval_reg[2] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[2]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[2]));
  FDPE \minval_reg[30] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[30]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[30]));
  FDPE \minval_reg[31] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[31]_i_2_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[31]));
  FDPE \minval_reg[3] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[3]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[3]));
  FDPE \minval_reg[4] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[4]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[4]));
  FDPE \minval_reg[5] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[5]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[5]));
  FDPE \minval_reg[6] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[6]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[6]));
  FDPE \minval_reg[7] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[7]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[7]));
  FDPE \minval_reg[8] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[8]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[8]));
  FDPE \minval_reg[9] 
       (.C(s_axi_aclk),
        .CE(\minval[31]_i_1_n_0 ),
        .D(\minval[9]_i_1_n_0 ),
        .PRE(s_axi_aresetn_0),
        .Q(minval[9]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[0]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[0]),
        .O(\pending_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[10]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[10]),
        .O(\pending_idx[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[11]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[11]),
        .O(\pending_idx[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[12]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[12]),
        .O(\pending_idx[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[13]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[13]),
        .O(\pending_idx[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[14]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[14]),
        .O(\pending_idx[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[15]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[15]),
        .O(\pending_idx[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[16]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[16]),
        .O(\pending_idx[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[17]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[17]),
        .O(\pending_idx[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[18]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[18]),
        .O(\pending_idx[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[19]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[19]),
        .O(\pending_idx[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[1]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[1]),
        .O(\pending_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[20]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[20]),
        .O(\pending_idx[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[21]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[21]),
        .O(\pending_idx[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[22]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[22]),
        .O(\pending_idx[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[23]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[23]),
        .O(\pending_idx[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[24]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[24]),
        .O(\pending_idx[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[25]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[25]),
        .O(\pending_idx[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[26]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[26]),
        .O(\pending_idx[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[27]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[27]),
        .O(\pending_idx[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[28]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[28]),
        .O(\pending_idx[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[29]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[29]),
        .O(\pending_idx[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[2]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[2]),
        .O(\pending_idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[30]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[30]),
        .O(\pending_idx[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pending_idx[31]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\length_latched[31]_i_1_n_0 ),
        .O(\pending_idx[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[31]_i_2 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(idx[31]),
        .O(\pending_idx[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[3]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[3]),
        .O(\pending_idx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[4]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[4]),
        .O(\pending_idx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[5]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[5]),
        .O(\pending_idx[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[6]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[6]),
        .O(\pending_idx[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[7]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[7]),
        .O(\pending_idx[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[8]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[8]),
        .O(\pending_idx[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pending_idx[9]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(bram_addr[9]),
        .O(\pending_idx[9]_i_1_n_0 ));
  FDCE \pending_idx_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[0]_i_1_n_0 ),
        .Q(pending_idx[0]));
  FDCE \pending_idx_reg[10] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[10]_i_1_n_0 ),
        .Q(pending_idx[10]));
  FDCE \pending_idx_reg[11] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[11]_i_1_n_0 ),
        .Q(pending_idx[11]));
  FDCE \pending_idx_reg[12] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[12]_i_1_n_0 ),
        .Q(pending_idx[12]));
  FDCE \pending_idx_reg[13] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[13]_i_1_n_0 ),
        .Q(pending_idx[13]));
  FDCE \pending_idx_reg[14] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[14]_i_1_n_0 ),
        .Q(pending_idx[14]));
  FDCE \pending_idx_reg[15] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[15]_i_1_n_0 ),
        .Q(pending_idx[15]));
  FDCE \pending_idx_reg[16] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[16]_i_1_n_0 ),
        .Q(pending_idx[16]));
  FDCE \pending_idx_reg[17] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[17]_i_1_n_0 ),
        .Q(pending_idx[17]));
  FDCE \pending_idx_reg[18] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[18]_i_1_n_0 ),
        .Q(pending_idx[18]));
  FDCE \pending_idx_reg[19] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[19]_i_1_n_0 ),
        .Q(pending_idx[19]));
  FDCE \pending_idx_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[1]_i_1_n_0 ),
        .Q(pending_idx[1]));
  FDCE \pending_idx_reg[20] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[20]_i_1_n_0 ),
        .Q(pending_idx[20]));
  FDCE \pending_idx_reg[21] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[21]_i_1_n_0 ),
        .Q(pending_idx[21]));
  FDCE \pending_idx_reg[22] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[22]_i_1_n_0 ),
        .Q(pending_idx[22]));
  FDCE \pending_idx_reg[23] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[23]_i_1_n_0 ),
        .Q(pending_idx[23]));
  FDCE \pending_idx_reg[24] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[24]_i_1_n_0 ),
        .Q(pending_idx[24]));
  FDCE \pending_idx_reg[25] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[25]_i_1_n_0 ),
        .Q(pending_idx[25]));
  FDCE \pending_idx_reg[26] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[26]_i_1_n_0 ),
        .Q(pending_idx[26]));
  FDCE \pending_idx_reg[27] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[27]_i_1_n_0 ),
        .Q(pending_idx[27]));
  FDCE \pending_idx_reg[28] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[28]_i_1_n_0 ),
        .Q(pending_idx[28]));
  FDCE \pending_idx_reg[29] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[29]_i_1_n_0 ),
        .Q(pending_idx[29]));
  FDCE \pending_idx_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[2]_i_1_n_0 ),
        .Q(pending_idx[2]));
  FDCE \pending_idx_reg[30] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[30]_i_1_n_0 ),
        .Q(pending_idx[30]));
  FDCE \pending_idx_reg[31] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[31]_i_2_n_0 ),
        .Q(pending_idx[31]));
  FDCE \pending_idx_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[3]_i_1_n_0 ),
        .Q(pending_idx[3]));
  FDCE \pending_idx_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[4]_i_1_n_0 ),
        .Q(pending_idx[4]));
  FDCE \pending_idx_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[5]_i_1_n_0 ),
        .Q(pending_idx[5]));
  FDCE \pending_idx_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[6]_i_1_n_0 ),
        .Q(pending_idx[6]));
  FDCE \pending_idx_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[7]_i_1_n_0 ),
        .Q(pending_idx[7]));
  FDCE \pending_idx_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[8]_i_1_n_0 ),
        .Q(pending_idx[8]));
  FDCE \pending_idx_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pending_idx[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\pending_idx[9]_i_1_n_0 ),
        .Q(pending_idx[9]));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_bvalid_i_2
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[0]_i_2 
       (.I0(\s_axi_rdata[0]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[0]),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[0]_i_3 
       (.I0(countgt[0]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[0]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[0]_i_4 
       (.I0(maxval[0]),
        .I1(minval[0]),
        .I2(s_axi_araddr[1]),
        .I3(data4[0]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[0] ),
        .O(\s_axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[10]_i_2 
       (.I0(\s_axi_rdata[10]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [10]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[10]),
        .O(\s_axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[10]_i_3 
       (.I0(countgt[10]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[10]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[10]_i_4 
       (.I0(maxval[10]),
        .I1(minval[10]),
        .I2(s_axi_araddr[1]),
        .I3(data4[10]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[10] ),
        .O(\s_axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[11]_i_2 
       (.I0(\s_axi_rdata[11]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [11]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[11]),
        .O(\s_axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[11]_i_3 
       (.I0(countgt[11]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[11]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[11]_i_4 
       (.I0(maxval[11]),
        .I1(minval[11]),
        .I2(s_axi_araddr[1]),
        .I3(data4[11]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[11] ),
        .O(\s_axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[12]_i_2 
       (.I0(\s_axi_rdata[12]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [12]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[12]),
        .O(\s_axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[12]_i_3 
       (.I0(countgt[12]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[12]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[12]_i_4 
       (.I0(maxval[12]),
        .I1(minval[12]),
        .I2(s_axi_araddr[1]),
        .I3(data4[12]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[12] ),
        .O(\s_axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[13]_i_2 
       (.I0(\s_axi_rdata[13]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [13]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[13]),
        .O(\s_axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[13]_i_3 
       (.I0(countgt[13]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[13]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[13]_i_4 
       (.I0(maxval[13]),
        .I1(minval[13]),
        .I2(s_axi_araddr[1]),
        .I3(data4[13]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[13] ),
        .O(\s_axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[14]_i_2 
       (.I0(\s_axi_rdata[14]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [14]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[14]),
        .O(\s_axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[14]_i_3 
       (.I0(countgt[14]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[14]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[14]_i_4 
       (.I0(maxval[14]),
        .I1(minval[14]),
        .I2(s_axi_araddr[1]),
        .I3(data4[14]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[14] ),
        .O(\s_axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[15]_i_2 
       (.I0(\s_axi_rdata[15]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [15]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[15]),
        .O(\s_axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[15]_i_3 
       (.I0(countgt[15]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[15]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[15]_i_4 
       (.I0(maxval[15]),
        .I1(minval[15]),
        .I2(s_axi_araddr[1]),
        .I3(data4[15]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[15] ),
        .O(\s_axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB888BB88B888)) 
    \s_axi_rdata[16]_i_2 
       (.I0(\s_axi_rdata[16]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [16]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[16]),
        .O(\s_axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[16]_i_3 
       (.I0(countgt[16]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[16]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_i_4 
       (.I0(maxval[16]),
        .I1(minval[16]),
        .I2(s_axi_araddr[1]),
        .I3(data4[16]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[16] ),
        .O(\s_axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[17]_i_2 
       (.I0(\s_axi_rdata[17]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [17]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[17]),
        .O(\s_axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[17]_i_3 
       (.I0(countgt[17]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[17]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_i_4 
       (.I0(maxval[17]),
        .I1(minval[17]),
        .I2(s_axi_araddr[1]),
        .I3(data4[17]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[17] ),
        .O(\s_axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[18]_i_2 
       (.I0(\s_axi_rdata[18]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [18]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[18]),
        .O(\s_axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[18]_i_3 
       (.I0(countgt[18]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[18]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_i_4 
       (.I0(maxval[18]),
        .I1(minval[18]),
        .I2(s_axi_araddr[1]),
        .I3(data4[18]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[18] ),
        .O(\s_axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[19]_i_2 
       (.I0(\s_axi_rdata[19]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [19]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[19]),
        .O(\s_axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[19]_i_3 
       (.I0(countgt[19]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[19]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_i_4 
       (.I0(maxval[19]),
        .I1(minval[19]),
        .I2(s_axi_araddr[1]),
        .I3(data4[19]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[19] ),
        .O(\s_axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata[1]_i_1 
       (.I0(countgt[1]),
        .I1(\s_axi_rdata_reg[2] ),
        .I2(cyclecount[1]),
        .I3(\s_axi_rdata_reg[2]_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[1]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[1]_i_3 
       (.I0(\threshold_latched_reg[31]_0 [1]),
        .I1(s_axi_araddr[1]),
        .I2(Q[1]),
        .I3(s_axi_araddr[0]),
        .I4(done),
        .O(\s_axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[1]_i_4 
       (.I0(maxval[1]),
        .I1(minval[1]),
        .I2(s_axi_araddr[1]),
        .I3(data4[1]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[1] ),
        .O(\s_axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[20]_i_2 
       (.I0(\s_axi_rdata[20]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [20]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[20]),
        .O(\s_axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[20]_i_3 
       (.I0(countgt[20]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[20]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_i_4 
       (.I0(maxval[20]),
        .I1(minval[20]),
        .I2(s_axi_araddr[1]),
        .I3(data4[20]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[20] ),
        .O(\s_axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[21]_i_2 
       (.I0(\s_axi_rdata[21]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [21]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[21]),
        .O(\s_axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[21]_i_3 
       (.I0(countgt[21]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[21]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_i_4 
       (.I0(maxval[21]),
        .I1(minval[21]),
        .I2(s_axi_araddr[1]),
        .I3(data4[21]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[21] ),
        .O(\s_axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[22]_i_2 
       (.I0(\s_axi_rdata[22]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [22]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[22]),
        .O(\s_axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[22]_i_3 
       (.I0(countgt[22]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[22]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[22]_i_4 
       (.I0(maxval[22]),
        .I1(minval[22]),
        .I2(s_axi_araddr[1]),
        .I3(data4[22]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[22] ),
        .O(\s_axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[23]_i_2 
       (.I0(\s_axi_rdata[23]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [23]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[23]),
        .O(\s_axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[23]_i_3 
       (.I0(countgt[23]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[23]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[23]_i_4 
       (.I0(maxval[23]),
        .I1(minval[23]),
        .I2(s_axi_araddr[1]),
        .I3(data4[23]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[23] ),
        .O(\s_axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[24]_i_2 
       (.I0(\s_axi_rdata[24]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [24]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[24]),
        .O(\s_axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[24]_i_3 
       (.I0(countgt[24]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[24]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[24]_i_4 
       (.I0(maxval[24]),
        .I1(minval[24]),
        .I2(s_axi_araddr[1]),
        .I3(data4[24]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[24] ),
        .O(\s_axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[25]_i_2 
       (.I0(\s_axi_rdata[25]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [25]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[25]),
        .O(\s_axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[25]_i_3 
       (.I0(countgt[25]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[25]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[25]_i_4 
       (.I0(maxval[25]),
        .I1(minval[25]),
        .I2(s_axi_araddr[1]),
        .I3(data4[25]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[25] ),
        .O(\s_axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[26]_i_2 
       (.I0(\s_axi_rdata[26]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [26]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[26]),
        .O(\s_axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[26]_i_3 
       (.I0(countgt[26]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[26]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[26]_i_4 
       (.I0(maxval[26]),
        .I1(minval[26]),
        .I2(s_axi_araddr[1]),
        .I3(data4[26]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[26] ),
        .O(\s_axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[27]_i_2 
       (.I0(\s_axi_rdata[27]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [27]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[27]),
        .O(\s_axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[27]_i_3 
       (.I0(countgt[27]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[27]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[27]_i_4 
       (.I0(maxval[27]),
        .I1(minval[27]),
        .I2(s_axi_araddr[1]),
        .I3(data4[27]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[27] ),
        .O(\s_axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[28]_i_2 
       (.I0(\s_axi_rdata[28]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [28]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[28]),
        .O(\s_axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[28]_i_3 
       (.I0(countgt[28]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[28]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[28]_i_4 
       (.I0(maxval[28]),
        .I1(minval[28]),
        .I2(s_axi_araddr[1]),
        .I3(data4[28]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[28] ),
        .O(\s_axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[29]_i_2 
       (.I0(\s_axi_rdata[29]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [29]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[29]),
        .O(\s_axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[29]_i_3 
       (.I0(countgt[29]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[29]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[29]_i_4 
       (.I0(maxval[29]),
        .I1(minval[29]),
        .I2(s_axi_araddr[1]),
        .I3(data4[29]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[29] ),
        .O(\s_axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata[2]_i_1 
       (.I0(countgt[2]),
        .I1(\s_axi_rdata_reg[2] ),
        .I2(cyclecount[2]),
        .I3(\s_axi_rdata_reg[2]_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[2]_i_4_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata[2]_i_5 
       (.I0(\threshold_latched_reg[31]_0 [2]),
        .I1(s_axi_araddr[1]),
        .I2(Q[2]),
        .I3(s_axi_araddr[0]),
        .I4(core_busy),
        .O(\s_axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[2]_i_6 
       (.I0(maxval[2]),
        .I1(minval[2]),
        .I2(s_axi_araddr[1]),
        .I3(data4[2]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[2] ),
        .O(\s_axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[30]_i_2 
       (.I0(\s_axi_rdata[30]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [30]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[30]),
        .O(\s_axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[30]_i_3 
       (.I0(countgt[30]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[30]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[30]_i_4 
       (.I0(maxval[30]),
        .I1(minval[30]),
        .I2(s_axi_araddr[1]),
        .I3(data4[30]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[30] ),
        .O(\s_axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[31]_i_3 
       (.I0(\s_axi_rdata[31]_i_5_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [31]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[31]),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[31]_i_4 
       (.I0(countgt[31]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[31]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_i_5 
       (.I0(maxval[31]),
        .I1(minval[31]),
        .I2(s_axi_araddr[1]),
        .I3(data4[31]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[31] ),
        .O(\s_axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[3]_i_2 
       (.I0(\s_axi_rdata[3]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [3]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[3]),
        .O(\s_axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[3]_i_3 
       (.I0(countgt[3]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[3]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[3]_i_4 
       (.I0(maxval[3]),
        .I1(minval[3]),
        .I2(s_axi_araddr[1]),
        .I3(data4[3]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[3] ),
        .O(\s_axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[4]_i_2 
       (.I0(\s_axi_rdata[4]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [4]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[4]),
        .O(\s_axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[4]_i_3 
       (.I0(countgt[4]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[4]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_i_4 
       (.I0(maxval[4]),
        .I1(minval[4]),
        .I2(s_axi_araddr[1]),
        .I3(data4[4]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[4] ),
        .O(\s_axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[5]_i_2 
       (.I0(\s_axi_rdata[5]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [5]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[5]),
        .O(\s_axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[5]_i_3 
       (.I0(countgt[5]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[5]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[5]_i_4 
       (.I0(maxval[5]),
        .I1(minval[5]),
        .I2(s_axi_araddr[1]),
        .I3(data4[5]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[5] ),
        .O(\s_axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[6]_i_2 
       (.I0(\s_axi_rdata[6]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [6]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[6]),
        .O(\s_axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[6]_i_3 
       (.I0(countgt[6]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[6]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[6]_i_4 
       (.I0(maxval[6]),
        .I1(minval[6]),
        .I2(s_axi_araddr[1]),
        .I3(data4[6]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[6] ),
        .O(\s_axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[7]_i_2 
       (.I0(\s_axi_rdata[7]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [7]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[7]),
        .O(\s_axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[7]_i_3 
       (.I0(countgt[7]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[7]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[7]_i_4 
       (.I0(maxval[7]),
        .I1(minval[7]),
        .I2(s_axi_araddr[1]),
        .I3(data4[7]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[7] ),
        .O(\s_axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[8]_i_2 
       (.I0(\s_axi_rdata[8]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [8]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[8]),
        .O(\s_axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[8]_i_3 
       (.I0(countgt[8]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[8]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_i_4 
       (.I0(maxval[8]),
        .I1(minval[8]),
        .I2(s_axi_araddr[1]),
        .I3(data4[8]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[8] ),
        .O(\s_axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \s_axi_rdata[9]_i_2 
       (.I0(\s_axi_rdata[9]_i_4_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\threshold_latched_reg[31]_0 [9]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(Q[9]),
        .O(\s_axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \s_axi_rdata[9]_i_3 
       (.I0(countgt[9]),
        .I1(s_axi_araddr[0]),
        .I2(cyclecount[9]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[9]_i_4 
       (.I0(maxval[9]),
        .I1(minval[9]),
        .I2(s_axi_araddr[1]),
        .I3(data4[9]),
        .I4(s_axi_araddr[0]),
        .I5(\sum_reg_n_0_[9] ),
        .O(\s_axi_rdata[9]_i_4_n_0 ));
  MUXF7 \s_axi_rdata_reg[0]_i_1 
       (.I0(\s_axi_rdata[0]_i_2_n_0 ),
        .I1(\s_axi_rdata[0]_i_3_n_0 ),
        .O(D[0]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[10]_i_1 
       (.I0(\s_axi_rdata[10]_i_2_n_0 ),
        .I1(\s_axi_rdata[10]_i_3_n_0 ),
        .O(D[10]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[11]_i_1 
       (.I0(\s_axi_rdata[11]_i_2_n_0 ),
        .I1(\s_axi_rdata[11]_i_3_n_0 ),
        .O(D[11]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[12]_i_1 
       (.I0(\s_axi_rdata[12]_i_2_n_0 ),
        .I1(\s_axi_rdata[12]_i_3_n_0 ),
        .O(D[12]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[13]_i_1 
       (.I0(\s_axi_rdata[13]_i_2_n_0 ),
        .I1(\s_axi_rdata[13]_i_3_n_0 ),
        .O(D[13]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[14]_i_1 
       (.I0(\s_axi_rdata[14]_i_2_n_0 ),
        .I1(\s_axi_rdata[14]_i_3_n_0 ),
        .O(D[14]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[15]_i_1 
       (.I0(\s_axi_rdata[15]_i_2_n_0 ),
        .I1(\s_axi_rdata[15]_i_3_n_0 ),
        .O(D[15]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[16]_i_1 
       (.I0(\s_axi_rdata[16]_i_2_n_0 ),
        .I1(\s_axi_rdata[16]_i_3_n_0 ),
        .O(D[16]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[17]_i_1 
       (.I0(\s_axi_rdata[17]_i_2_n_0 ),
        .I1(\s_axi_rdata[17]_i_3_n_0 ),
        .O(D[17]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[18]_i_1 
       (.I0(\s_axi_rdata[18]_i_2_n_0 ),
        .I1(\s_axi_rdata[18]_i_3_n_0 ),
        .O(D[18]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[19]_i_1 
       (.I0(\s_axi_rdata[19]_i_2_n_0 ),
        .I1(\s_axi_rdata[19]_i_3_n_0 ),
        .O(D[19]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[1]_i_2 
       (.I0(\s_axi_rdata[1]_i_3_n_0 ),
        .I1(\s_axi_rdata[1]_i_4_n_0 ),
        .O(\s_axi_rdata_reg[1]_i_2_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[20]_i_1 
       (.I0(\s_axi_rdata[20]_i_2_n_0 ),
        .I1(\s_axi_rdata[20]_i_3_n_0 ),
        .O(D[20]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[21]_i_1 
       (.I0(\s_axi_rdata[21]_i_2_n_0 ),
        .I1(\s_axi_rdata[21]_i_3_n_0 ),
        .O(D[21]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[22]_i_1 
       (.I0(\s_axi_rdata[22]_i_2_n_0 ),
        .I1(\s_axi_rdata[22]_i_3_n_0 ),
        .O(D[22]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[23]_i_1 
       (.I0(\s_axi_rdata[23]_i_2_n_0 ),
        .I1(\s_axi_rdata[23]_i_3_n_0 ),
        .O(D[23]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[24]_i_1 
       (.I0(\s_axi_rdata[24]_i_2_n_0 ),
        .I1(\s_axi_rdata[24]_i_3_n_0 ),
        .O(D[24]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[25]_i_1 
       (.I0(\s_axi_rdata[25]_i_2_n_0 ),
        .I1(\s_axi_rdata[25]_i_3_n_0 ),
        .O(D[25]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[26]_i_1 
       (.I0(\s_axi_rdata[26]_i_2_n_0 ),
        .I1(\s_axi_rdata[26]_i_3_n_0 ),
        .O(D[26]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[27]_i_1 
       (.I0(\s_axi_rdata[27]_i_2_n_0 ),
        .I1(\s_axi_rdata[27]_i_3_n_0 ),
        .O(D[27]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[28]_i_1 
       (.I0(\s_axi_rdata[28]_i_2_n_0 ),
        .I1(\s_axi_rdata[28]_i_3_n_0 ),
        .O(D[28]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[29]_i_1 
       (.I0(\s_axi_rdata[29]_i_2_n_0 ),
        .I1(\s_axi_rdata[29]_i_3_n_0 ),
        .O(D[29]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[2]_i_4 
       (.I0(\s_axi_rdata[2]_i_5_n_0 ),
        .I1(\s_axi_rdata[2]_i_6_n_0 ),
        .O(\s_axi_rdata_reg[2]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[30]_i_1 
       (.I0(\s_axi_rdata[30]_i_2_n_0 ),
        .I1(\s_axi_rdata[30]_i_3_n_0 ),
        .O(D[30]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[31]_i_2 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(\s_axi_rdata[31]_i_4_n_0 ),
        .O(D[31]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[3]_i_1 
       (.I0(\s_axi_rdata[3]_i_2_n_0 ),
        .I1(\s_axi_rdata[3]_i_3_n_0 ),
        .O(D[3]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[4]_i_1 
       (.I0(\s_axi_rdata[4]_i_2_n_0 ),
        .I1(\s_axi_rdata[4]_i_3_n_0 ),
        .O(D[4]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[5]_i_1 
       (.I0(\s_axi_rdata[5]_i_2_n_0 ),
        .I1(\s_axi_rdata[5]_i_3_n_0 ),
        .O(D[5]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[6]_i_1 
       (.I0(\s_axi_rdata[6]_i_2_n_0 ),
        .I1(\s_axi_rdata[6]_i_3_n_0 ),
        .O(D[6]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[7]_i_1 
       (.I0(\s_axi_rdata[7]_i_2_n_0 ),
        .I1(\s_axi_rdata[7]_i_3_n_0 ),
        .O(D[7]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[8]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(\s_axi_rdata[8]_i_3_n_0 ),
        .O(D[8]),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[9]_i_1 
       (.I0(\s_axi_rdata[9]_i_2_n_0 ),
        .I1(\s_axi_rdata[9]_i_3_n_0 ),
        .O(D[9]),
        .S(s_axi_araddr[3]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state0_inferred__0/i__carry_n_0 ,\state0_inferred__0/i__carry_n_1 ,\state0_inferred__0/i__carry_n_2 ,\state0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_state0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state0_inferred__0/i__carry__0 
       (.CI(\state0_inferred__0/i__carry_n_0 ),
        .CO({\state0_inferred__0/i__carry__0_n_0 ,\state0_inferred__0/i__carry__0_n_1 ,\state0_inferred__0/i__carry__0_n_2 ,\state0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state0_inferred__0/i__carry__1 
       (.CI(\state0_inferred__0/i__carry__0_n_0 ),
        .CO({\state0_inferred__0/i__carry__1_n_0 ,\state0_inferred__0/i__carry__1_n_1 ,\state0_inferred__0/i__carry__1_n_2 ,\state0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_state0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state0_inferred__0/i__carry__2 
       (.CI(\state0_inferred__0/i__carry__1_n_0 ),
        .CO({\state0_inferred__0/i__carry__2_n_0 ,\state0_inferred__0/i__carry__2_n_1 ,\state0_inferred__0/i__carry__2_n_2 ,\state0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_state0_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(pending_idx[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[4:1]),
        .S(pending_idx[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({state1_carry__0_n_0,state1_carry__0_n_1,state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:5]),
        .S(pending_idx[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 state1_carry__1
       (.CI(state1_carry__0_n_0),
        .CO({state1_carry__1_n_0,state1_carry__1_n_1,state1_carry__1_n_2,state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[12:9]),
        .S(pending_idx[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 state1_carry__2
       (.CI(state1_carry__1_n_0),
        .CO({state1_carry__2_n_0,state1_carry__2_n_1,state1_carry__2_n_2,state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[16:13]),
        .S(pending_idx[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 state1_carry__3
       (.CI(state1_carry__2_n_0),
        .CO({state1_carry__3_n_0,state1_carry__3_n_1,state1_carry__3_n_2,state1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[20:17]),
        .S(pending_idx[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 state1_carry__4
       (.CI(state1_carry__3_n_0),
        .CO({state1_carry__4_n_0,state1_carry__4_n_1,state1_carry__4_n_2,state1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[24:21]),
        .S(pending_idx[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 state1_carry__5
       (.CI(state1_carry__4_n_0),
        .CO({state1_carry__5_n_0,state1_carry__5_n_1,state1_carry__5_n_2,state1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[28:25]),
        .S(pending_idx[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 state1_carry__6
       (.CI(state1_carry__5_n_0),
        .CO({NLW_state1_carry__6_CO_UNCONNECTED[3:2],state1_carry__6_n_2,state1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_state1_carry__6_O_UNCONNECTED[3],in4[31:29]}),
        .S({1'b0,pending_idx[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[0]),
        .O(\sum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[10]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[10]),
        .O(\sum[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[11]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[11]),
        .O(\sum[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_3 
       (.I0(\sum_reg_n_0_[11] ),
        .I1(bram_rdata[11]),
        .O(\sum[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_4 
       (.I0(\sum_reg_n_0_[10] ),
        .I1(bram_rdata[10]),
        .O(\sum[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_5 
       (.I0(\sum_reg_n_0_[9] ),
        .I1(bram_rdata[9]),
        .O(\sum[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_6 
       (.I0(\sum_reg_n_0_[8] ),
        .I1(bram_rdata[8]),
        .O(\sum[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[12]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[12]),
        .O(\sum[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[13]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[13]),
        .O(\sum[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[14]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[14]),
        .O(\sum[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[15]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[15]),
        .O(\sum[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_3 
       (.I0(\sum_reg_n_0_[15] ),
        .I1(bram_rdata[15]),
        .O(\sum[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_4 
       (.I0(\sum_reg_n_0_[14] ),
        .I1(bram_rdata[14]),
        .O(\sum[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_5 
       (.I0(\sum_reg_n_0_[13] ),
        .I1(bram_rdata[13]),
        .O(\sum[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_6 
       (.I0(\sum_reg_n_0_[12] ),
        .I1(bram_rdata[12]),
        .O(\sum[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[16]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[16]),
        .O(\sum[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[17]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[17]),
        .O(\sum[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[18]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[18]),
        .O(\sum[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[19]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[19]),
        .O(\sum[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_3 
       (.I0(\sum_reg_n_0_[19] ),
        .I1(bram_rdata[19]),
        .O(\sum[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_4 
       (.I0(\sum_reg_n_0_[18] ),
        .I1(bram_rdata[18]),
        .O(\sum[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_5 
       (.I0(\sum_reg_n_0_[17] ),
        .I1(bram_rdata[17]),
        .O(\sum[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_6 
       (.I0(\sum_reg_n_0_[16] ),
        .I1(bram_rdata[16]),
        .O(\sum[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[1]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[1]),
        .O(\sum[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[20]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[20]),
        .O(\sum[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[21]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[21]),
        .O(\sum[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[22]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[22]),
        .O(\sum[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[23]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[23]),
        .O(\sum[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_3 
       (.I0(\sum_reg_n_0_[23] ),
        .I1(bram_rdata[23]),
        .O(\sum[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_4 
       (.I0(\sum_reg_n_0_[22] ),
        .I1(bram_rdata[22]),
        .O(\sum[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_5 
       (.I0(\sum_reg_n_0_[21] ),
        .I1(bram_rdata[21]),
        .O(\sum[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_6 
       (.I0(\sum_reg_n_0_[20] ),
        .I1(bram_rdata[20]),
        .O(\sum[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[24]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[24]),
        .O(\sum[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[25]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[25]),
        .O(\sum[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[26]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[26]),
        .O(\sum[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[27]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[27]),
        .O(\sum[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_3 
       (.I0(\sum_reg_n_0_[27] ),
        .I1(bram_rdata[27]),
        .O(\sum[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_4 
       (.I0(\sum_reg_n_0_[26] ),
        .I1(bram_rdata[26]),
        .O(\sum[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_5 
       (.I0(\sum_reg_n_0_[25] ),
        .I1(bram_rdata[25]),
        .O(\sum[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_6 
       (.I0(\sum_reg_n_0_[24] ),
        .I1(bram_rdata[24]),
        .O(\sum[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[28]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[28]),
        .O(\sum[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[29]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[29]),
        .O(\sum[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[2]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[2]),
        .O(\sum[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[30]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[30]),
        .O(\sum[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[31]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[31]),
        .O(\sum[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_3 
       (.I0(\sum_reg_n_0_[31] ),
        .I1(bram_rdata[31]),
        .O(\sum[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_4 
       (.I0(\sum_reg_n_0_[30] ),
        .I1(bram_rdata[30]),
        .O(\sum[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_5 
       (.I0(\sum_reg_n_0_[29] ),
        .I1(bram_rdata[29]),
        .O(\sum[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_6 
       (.I0(\sum_reg_n_0_[28] ),
        .I1(bram_rdata[28]),
        .O(\sum[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[32]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[32]),
        .O(\sum[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[33]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[33]),
        .O(\sum[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[34]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[34]),
        .O(\sum[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[35]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[35]),
        .O(\sum[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[36]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[36]),
        .O(\sum[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[37]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[37]),
        .O(\sum[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[38]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[38]),
        .O(\sum[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[39]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[39]),
        .O(\sum[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[3]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[3]),
        .O(\sum[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_3 
       (.I0(\sum_reg_n_0_[3] ),
        .I1(bram_rdata[3]),
        .O(\sum[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_4 
       (.I0(\sum_reg_n_0_[2] ),
        .I1(bram_rdata[2]),
        .O(\sum[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_5 
       (.I0(\sum_reg_n_0_[1] ),
        .I1(bram_rdata[1]),
        .O(\sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_6 
       (.I0(\sum_reg_n_0_[0] ),
        .I1(bram_rdata[0]),
        .O(\sum[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[40]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[40]),
        .O(\sum[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[41]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[41]),
        .O(\sum[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[42]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[42]),
        .O(\sum[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[43]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[43]),
        .O(\sum[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[44]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[44]),
        .O(\sum[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[45]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[45]),
        .O(\sum[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[46]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[46]),
        .O(\sum[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[47]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[47]),
        .O(\sum[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[48]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[48]),
        .O(\sum[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[49]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[49]),
        .O(\sum[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[4]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[4]),
        .O(\sum[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[50]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[50]),
        .O(\sum[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[51]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[51]),
        .O(\sum[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[52]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[52]),
        .O(\sum[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[53]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[53]),
        .O(\sum[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[54]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[54]),
        .O(\sum[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[55]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[55]),
        .O(\sum[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[56]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[56]),
        .O(\sum[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[57]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[57]),
        .O(\sum[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[58]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[58]),
        .O(\sum[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[59]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[59]),
        .O(\sum[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[5]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[5]),
        .O(\sum[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[60]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[60]),
        .O(\sum[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[61]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[61]),
        .O(\sum[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[62]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[62]),
        .O(\sum[62]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sum[63]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(\length_latched[31]_i_1_n_0 ),
        .O(\sum[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[63]_i_2 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[63]),
        .O(\sum[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[6]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[6]),
        .O(\sum[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[7]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[7]),
        .O(\sum[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_3 
       (.I0(\sum_reg_n_0_[7] ),
        .I1(bram_rdata[7]),
        .O(\sum[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_4 
       (.I0(\sum_reg_n_0_[6] ),
        .I1(bram_rdata[6]),
        .O(\sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_5 
       (.I0(\sum_reg_n_0_[5] ),
        .I1(bram_rdata[5]),
        .O(\sum[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_6 
       (.I0(\sum_reg_n_0_[4] ),
        .I1(bram_rdata[4]),
        .O(\sum[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[8]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[8]),
        .O(\sum[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[9]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_rep_n_0 ),
        .I1(in11[9]),
        .O(\sum[9]_i_1_n_0 ));
  FDCE \sum_reg[0] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[0]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[0] ));
  FDCE \sum_reg[10] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[10]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[10] ));
  FDCE \sum_reg[11] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[11]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[11]_i_2 
       (.CI(\sum_reg[7]_i_2_n_0 ),
        .CO({\sum_reg[11]_i_2_n_0 ,\sum_reg[11]_i_2_n_1 ,\sum_reg[11]_i_2_n_2 ,\sum_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[11] ,\sum_reg_n_0_[10] ,\sum_reg_n_0_[9] ,\sum_reg_n_0_[8] }),
        .O(in11[11:8]),
        .S({\sum[11]_i_3_n_0 ,\sum[11]_i_4_n_0 ,\sum[11]_i_5_n_0 ,\sum[11]_i_6_n_0 }));
  FDCE \sum_reg[12] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[12]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[12] ));
  FDCE \sum_reg[13] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[13]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[13] ));
  FDCE \sum_reg[14] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[14]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[14] ));
  FDCE \sum_reg[15] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[15]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[15]_i_2 
       (.CI(\sum_reg[11]_i_2_n_0 ),
        .CO({\sum_reg[15]_i_2_n_0 ,\sum_reg[15]_i_2_n_1 ,\sum_reg[15]_i_2_n_2 ,\sum_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[15] ,\sum_reg_n_0_[14] ,\sum_reg_n_0_[13] ,\sum_reg_n_0_[12] }),
        .O(in11[15:12]),
        .S({\sum[15]_i_3_n_0 ,\sum[15]_i_4_n_0 ,\sum[15]_i_5_n_0 ,\sum[15]_i_6_n_0 }));
  FDCE \sum_reg[16] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[16]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[16] ));
  FDCE \sum_reg[17] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[17]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[17] ));
  FDCE \sum_reg[18] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[18]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[18] ));
  FDCE \sum_reg[19] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[19]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[19]_i_2 
       (.CI(\sum_reg[15]_i_2_n_0 ),
        .CO({\sum_reg[19]_i_2_n_0 ,\sum_reg[19]_i_2_n_1 ,\sum_reg[19]_i_2_n_2 ,\sum_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[19] ,\sum_reg_n_0_[18] ,\sum_reg_n_0_[17] ,\sum_reg_n_0_[16] }),
        .O(in11[19:16]),
        .S({\sum[19]_i_3_n_0 ,\sum[19]_i_4_n_0 ,\sum[19]_i_5_n_0 ,\sum[19]_i_6_n_0 }));
  FDCE \sum_reg[1] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[1]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[1] ));
  FDCE \sum_reg[20] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[20]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[20] ));
  FDCE \sum_reg[21] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[21]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[21] ));
  FDCE \sum_reg[22] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[22]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[22] ));
  FDCE \sum_reg[23] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[23]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[23]_i_2 
       (.CI(\sum_reg[19]_i_2_n_0 ),
        .CO({\sum_reg[23]_i_2_n_0 ,\sum_reg[23]_i_2_n_1 ,\sum_reg[23]_i_2_n_2 ,\sum_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[23] ,\sum_reg_n_0_[22] ,\sum_reg_n_0_[21] ,\sum_reg_n_0_[20] }),
        .O(in11[23:20]),
        .S({\sum[23]_i_3_n_0 ,\sum[23]_i_4_n_0 ,\sum[23]_i_5_n_0 ,\sum[23]_i_6_n_0 }));
  FDCE \sum_reg[24] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[24]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[24] ));
  FDCE \sum_reg[25] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[25]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[25] ));
  FDCE \sum_reg[26] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[26]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[26] ));
  FDCE \sum_reg[27] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[27]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[27]_i_2 
       (.CI(\sum_reg[23]_i_2_n_0 ),
        .CO({\sum_reg[27]_i_2_n_0 ,\sum_reg[27]_i_2_n_1 ,\sum_reg[27]_i_2_n_2 ,\sum_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[27] ,\sum_reg_n_0_[26] ,\sum_reg_n_0_[25] ,\sum_reg_n_0_[24] }),
        .O(in11[27:24]),
        .S({\sum[27]_i_3_n_0 ,\sum[27]_i_4_n_0 ,\sum[27]_i_5_n_0 ,\sum[27]_i_6_n_0 }));
  FDCE \sum_reg[28] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[28]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[28] ));
  FDCE \sum_reg[29] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[29]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[29] ));
  FDCE \sum_reg[2] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[2]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[2] ));
  FDCE \sum_reg[30] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[30]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[30] ));
  FDCE \sum_reg[31] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[31]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[31]_i_2 
       (.CI(\sum_reg[27]_i_2_n_0 ),
        .CO({\sum_reg[31]_i_2_n_0 ,\sum_reg[31]_i_2_n_1 ,\sum_reg[31]_i_2_n_2 ,\sum_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[31] ,\sum_reg_n_0_[30] ,\sum_reg_n_0_[29] ,\sum_reg_n_0_[28] }),
        .O(in11[31:28]),
        .S({\sum[31]_i_3_n_0 ,\sum[31]_i_4_n_0 ,\sum[31]_i_5_n_0 ,\sum[31]_i_6_n_0 }));
  FDCE \sum_reg[32] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[32]_i_1_n_0 ),
        .Q(data4[0]));
  FDCE \sum_reg[33] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[33]_i_1_n_0 ),
        .Q(data4[1]));
  FDCE \sum_reg[34] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[34]_i_1_n_0 ),
        .Q(data4[2]));
  FDCE \sum_reg[35] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[35]_i_1_n_0 ),
        .Q(data4[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[35]_i_2 
       (.CI(\sum_reg[31]_i_2_n_0 ),
        .CO({\sum_reg[35]_i_2_n_0 ,\sum_reg[35]_i_2_n_1 ,\sum_reg[35]_i_2_n_2 ,\sum_reg[35]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[35:32]),
        .S(data4[3:0]));
  FDCE \sum_reg[36] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[36]_i_1_n_0 ),
        .Q(data4[4]));
  FDCE \sum_reg[37] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[37]_i_1_n_0 ),
        .Q(data4[5]));
  FDCE \sum_reg[38] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[38]_i_1_n_0 ),
        .Q(data4[6]));
  FDCE \sum_reg[39] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[39]_i_1_n_0 ),
        .Q(data4[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[39]_i_2 
       (.CI(\sum_reg[35]_i_2_n_0 ),
        .CO({\sum_reg[39]_i_2_n_0 ,\sum_reg[39]_i_2_n_1 ,\sum_reg[39]_i_2_n_2 ,\sum_reg[39]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[39:36]),
        .S(data4[7:4]));
  FDCE \sum_reg[3] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[3]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\sum_reg[3]_i_2_n_0 ,\sum_reg[3]_i_2_n_1 ,\sum_reg[3]_i_2_n_2 ,\sum_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[3] ,\sum_reg_n_0_[2] ,\sum_reg_n_0_[1] ,\sum_reg_n_0_[0] }),
        .O(in11[3:0]),
        .S({\sum[3]_i_3_n_0 ,\sum[3]_i_4_n_0 ,\sum[3]_i_5_n_0 ,\sum[3]_i_6_n_0 }));
  FDCE \sum_reg[40] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[40]_i_1_n_0 ),
        .Q(data4[8]));
  FDCE \sum_reg[41] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[41]_i_1_n_0 ),
        .Q(data4[9]));
  FDCE \sum_reg[42] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[42]_i_1_n_0 ),
        .Q(data4[10]));
  FDCE \sum_reg[43] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[43]_i_1_n_0 ),
        .Q(data4[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[43]_i_2 
       (.CI(\sum_reg[39]_i_2_n_0 ),
        .CO({\sum_reg[43]_i_2_n_0 ,\sum_reg[43]_i_2_n_1 ,\sum_reg[43]_i_2_n_2 ,\sum_reg[43]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[43:40]),
        .S(data4[11:8]));
  FDCE \sum_reg[44] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[44]_i_1_n_0 ),
        .Q(data4[12]));
  FDCE \sum_reg[45] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[45]_i_1_n_0 ),
        .Q(data4[13]));
  FDCE \sum_reg[46] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[46]_i_1_n_0 ),
        .Q(data4[14]));
  FDCE \sum_reg[47] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[47]_i_1_n_0 ),
        .Q(data4[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[47]_i_2 
       (.CI(\sum_reg[43]_i_2_n_0 ),
        .CO({\sum_reg[47]_i_2_n_0 ,\sum_reg[47]_i_2_n_1 ,\sum_reg[47]_i_2_n_2 ,\sum_reg[47]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[47:44]),
        .S(data4[15:12]));
  FDCE \sum_reg[48] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[48]_i_1_n_0 ),
        .Q(data4[16]));
  FDCE \sum_reg[49] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[49]_i_1_n_0 ),
        .Q(data4[17]));
  FDCE \sum_reg[4] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[4]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[4] ));
  FDCE \sum_reg[50] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[50]_i_1_n_0 ),
        .Q(data4[18]));
  FDCE \sum_reg[51] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[51]_i_1_n_0 ),
        .Q(data4[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[51]_i_2 
       (.CI(\sum_reg[47]_i_2_n_0 ),
        .CO({\sum_reg[51]_i_2_n_0 ,\sum_reg[51]_i_2_n_1 ,\sum_reg[51]_i_2_n_2 ,\sum_reg[51]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[51:48]),
        .S(data4[19:16]));
  FDCE \sum_reg[52] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[52]_i_1_n_0 ),
        .Q(data4[20]));
  FDCE \sum_reg[53] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[53]_i_1_n_0 ),
        .Q(data4[21]));
  FDCE \sum_reg[54] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[54]_i_1_n_0 ),
        .Q(data4[22]));
  FDCE \sum_reg[55] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[55]_i_1_n_0 ),
        .Q(data4[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[55]_i_2 
       (.CI(\sum_reg[51]_i_2_n_0 ),
        .CO({\sum_reg[55]_i_2_n_0 ,\sum_reg[55]_i_2_n_1 ,\sum_reg[55]_i_2_n_2 ,\sum_reg[55]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[55:52]),
        .S(data4[23:20]));
  FDCE \sum_reg[56] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[56]_i_1_n_0 ),
        .Q(data4[24]));
  FDCE \sum_reg[57] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[57]_i_1_n_0 ),
        .Q(data4[25]));
  FDCE \sum_reg[58] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[58]_i_1_n_0 ),
        .Q(data4[26]));
  FDCE \sum_reg[59] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[59]_i_1_n_0 ),
        .Q(data4[27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[59]_i_2 
       (.CI(\sum_reg[55]_i_2_n_0 ),
        .CO({\sum_reg[59]_i_2_n_0 ,\sum_reg[59]_i_2_n_1 ,\sum_reg[59]_i_2_n_2 ,\sum_reg[59]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[59:56]),
        .S(data4[27:24]));
  FDCE \sum_reg[5] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[5]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[5] ));
  FDCE \sum_reg[60] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[60]_i_1_n_0 ),
        .Q(data4[28]));
  FDCE \sum_reg[61] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[61]_i_1_n_0 ),
        .Q(data4[29]));
  FDCE \sum_reg[62] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[62]_i_1_n_0 ),
        .Q(data4[30]));
  FDCE \sum_reg[63] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[63]_i_2_n_0 ),
        .Q(data4[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[63]_i_3 
       (.CI(\sum_reg[59]_i_2_n_0 ),
        .CO({\NLW_sum_reg[63]_i_3_CO_UNCONNECTED [3],\sum_reg[63]_i_3_n_1 ,\sum_reg[63]_i_3_n_2 ,\sum_reg[63]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[63:60]),
        .S(data4[31:28]));
  FDCE \sum_reg[6] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[6]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[6] ));
  FDCE \sum_reg[7] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[7]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[7]_i_2 
       (.CI(\sum_reg[3]_i_2_n_0 ),
        .CO({\sum_reg[7]_i_2_n_0 ,\sum_reg[7]_i_2_n_1 ,\sum_reg[7]_i_2_n_2 ,\sum_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[7] ,\sum_reg_n_0_[6] ,\sum_reg_n_0_[5] ,\sum_reg_n_0_[4] }),
        .O(in11[7:4]),
        .S({\sum[7]_i_3_n_0 ,\sum[7]_i_4_n_0 ,\sum[7]_i_5_n_0 ,\sum[7]_i_6_n_0 }));
  FDCE \sum_reg[8] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[8]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[8] ));
  FDCE \sum_reg[9] 
       (.C(s_axi_aclk),
        .CE(\sum[63]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\sum[9]_i_1_n_0 ),
        .Q(\sum_reg_n_0_[9] ));
  FDCE \threshold_latched_reg[0] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [0]),
        .Q(threshold_latched[0]));
  FDCE \threshold_latched_reg[10] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [10]),
        .Q(threshold_latched[10]));
  FDCE \threshold_latched_reg[11] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [11]),
        .Q(threshold_latched[11]));
  FDCE \threshold_latched_reg[12] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [12]),
        .Q(threshold_latched[12]));
  FDCE \threshold_latched_reg[13] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [13]),
        .Q(threshold_latched[13]));
  FDCE \threshold_latched_reg[14] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [14]),
        .Q(threshold_latched[14]));
  FDCE \threshold_latched_reg[15] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [15]),
        .Q(threshold_latched[15]));
  FDCE \threshold_latched_reg[16] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [16]),
        .Q(threshold_latched[16]));
  FDCE \threshold_latched_reg[17] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [17]),
        .Q(threshold_latched[17]));
  FDCE \threshold_latched_reg[18] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [18]),
        .Q(threshold_latched[18]));
  FDCE \threshold_latched_reg[19] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [19]),
        .Q(threshold_latched[19]));
  FDCE \threshold_latched_reg[1] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [1]),
        .Q(threshold_latched[1]));
  FDCE \threshold_latched_reg[20] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [20]),
        .Q(threshold_latched[20]));
  FDCE \threshold_latched_reg[21] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [21]),
        .Q(threshold_latched[21]));
  FDCE \threshold_latched_reg[22] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [22]),
        .Q(threshold_latched[22]));
  FDCE \threshold_latched_reg[23] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [23]),
        .Q(threshold_latched[23]));
  FDCE \threshold_latched_reg[24] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [24]),
        .Q(threshold_latched[24]));
  FDCE \threshold_latched_reg[25] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [25]),
        .Q(threshold_latched[25]));
  FDCE \threshold_latched_reg[26] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [26]),
        .Q(threshold_latched[26]));
  FDCE \threshold_latched_reg[27] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [27]),
        .Q(threshold_latched[27]));
  FDCE \threshold_latched_reg[28] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [28]),
        .Q(threshold_latched[28]));
  FDCE \threshold_latched_reg[29] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [29]),
        .Q(threshold_latched[29]));
  FDCE \threshold_latched_reg[2] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [2]),
        .Q(threshold_latched[2]));
  FDCE \threshold_latched_reg[30] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [30]),
        .Q(threshold_latched[30]));
  FDCE \threshold_latched_reg[31] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [31]),
        .Q(threshold_latched[31]));
  FDCE \threshold_latched_reg[3] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [3]),
        .Q(threshold_latched[3]));
  FDCE \threshold_latched_reg[4] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [4]),
        .Q(threshold_latched[4]));
  FDCE \threshold_latched_reg[5] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [5]),
        .Q(threshold_latched[5]));
  FDCE \threshold_latched_reg[6] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [6]),
        .Q(threshold_latched[6]));
  FDCE \threshold_latched_reg[7] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [7]),
        .Q(threshold_latched[7]));
  FDCE \threshold_latched_reg[8] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [8]),
        .Q(threshold_latched[8]));
  FDCE \threshold_latched_reg[9] 
       (.C(s_axi_aclk),
        .CE(\length_latched[31]_i_1_n_0 ),
        .CLR(s_axi_aresetn_0),
        .D(\threshold_latched_reg[31]_0 [9]),
        .Q(threshold_latched[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
