// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Apr 20 16:41:50 2026
// Host        : atomi-00 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /mnt/shared/syncthing/Documents/School/Spring2026/SoC/Projects/soc_final_project/soc_final/soc_final.gen/sources_1/bd/bd/ip/bd_blk_mem_gen_0_0/bd_blk_mem_gen_0_0_sim_netlist.v
// Design      : bd_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_blk_mem_gen_0_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module bd_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bd_blk_mem_gen_0_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_blk_mem_gen_0_0_blk_mem_gen_v8_4_11 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61200)
`pragma protect data_block
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
`pragma protect end_protected
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
