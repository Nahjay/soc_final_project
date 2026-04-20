-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Mon Apr 20 16:41:47 2026
-- Host        : atomi-00 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/shared/syncthing/Documents/School/Spring2026/SoC/Projects/soc_final_project/soc_final/soc_final.gen/sources_1/bd/bd/ip/bd_stats_accel_axil_0_0/bd_stats_accel_axil_0_0_sim_netlist.vhdl
-- Design      : bd_stats_accel_axil_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_stats_accel_axil_0_0_stats_accel_core is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start_pulse : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clear_done_pulse : in STD_LOGIC;
    \threshold_latched_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_reg[2]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_stats_accel_axil_0_0_stats_accel_core : entity is "stats_accel_core";
end bd_stats_accel_axil_0_0_stats_accel_core;

architecture STRUCTURE of bd_stats_accel_axil_0_0_stats_accel_core is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_rep__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_rep__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_rep_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal busy_i_1_n_0 : STD_LOGIC;
  signal core_busy : STD_LOGIC;
  signal countgt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \countgt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_n_0\ : STD_LOGIC;
  signal \countgt0_carry__0_n_1\ : STD_LOGIC;
  signal \countgt0_carry__0_n_2\ : STD_LOGIC;
  signal \countgt0_carry__0_n_3\ : STD_LOGIC;
  signal \countgt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_n_0\ : STD_LOGIC;
  signal \countgt0_carry__1_n_1\ : STD_LOGIC;
  signal \countgt0_carry__1_n_2\ : STD_LOGIC;
  signal \countgt0_carry__1_n_3\ : STD_LOGIC;
  signal \countgt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_n_0\ : STD_LOGIC;
  signal \countgt0_carry__2_n_1\ : STD_LOGIC;
  signal \countgt0_carry__2_n_2\ : STD_LOGIC;
  signal \countgt0_carry__2_n_3\ : STD_LOGIC;
  signal countgt0_carry_i_1_n_0 : STD_LOGIC;
  signal countgt0_carry_i_2_n_0 : STD_LOGIC;
  signal countgt0_carry_i_3_n_0 : STD_LOGIC;
  signal countgt0_carry_i_4_n_0 : STD_LOGIC;
  signal countgt0_carry_i_5_n_0 : STD_LOGIC;
  signal countgt0_carry_i_6_n_0 : STD_LOGIC;
  signal countgt0_carry_i_7_n_0 : STD_LOGIC;
  signal countgt0_carry_i_8_n_0 : STD_LOGIC;
  signal countgt0_carry_n_0 : STD_LOGIC;
  signal countgt0_carry_n_1 : STD_LOGIC;
  signal countgt0_carry_n_2 : STD_LOGIC;
  signal countgt0_carry_n_3 : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \countgt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \countgt[0]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[10]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[11]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[12]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[13]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[14]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[15]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[16]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[17]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[18]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[19]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[1]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[20]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[21]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[22]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[23]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[24]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[25]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[26]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[27]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[28]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[29]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[2]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[30]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[31]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[31]_i_2_n_0\ : STD_LOGIC;
  signal \countgt[3]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[4]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[5]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[6]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[7]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[8]_i_1_n_0\ : STD_LOGIC;
  signal \countgt[9]_i_1_n_0\ : STD_LOGIC;
  signal cyclecount : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cyclecount0_carry__0_n_0\ : STD_LOGIC;
  signal \cyclecount0_carry__0_n_1\ : STD_LOGIC;
  signal \cyclecount0_carry__0_n_2\ : STD_LOGIC;
  signal \cyclecount0_carry__0_n_3\ : STD_LOGIC;
  signal \cyclecount0_carry__1_n_0\ : STD_LOGIC;
  signal \cyclecount0_carry__1_n_1\ : STD_LOGIC;
  signal \cyclecount0_carry__1_n_2\ : STD_LOGIC;
  signal \cyclecount0_carry__1_n_3\ : STD_LOGIC;
  signal \cyclecount0_carry__2_n_0\ : STD_LOGIC;
  signal \cyclecount0_carry__2_n_1\ : STD_LOGIC;
  signal \cyclecount0_carry__2_n_2\ : STD_LOGIC;
  signal \cyclecount0_carry__2_n_3\ : STD_LOGIC;
  signal \cyclecount0_carry__3_n_0\ : STD_LOGIC;
  signal \cyclecount0_carry__3_n_1\ : STD_LOGIC;
  signal \cyclecount0_carry__3_n_2\ : STD_LOGIC;
  signal \cyclecount0_carry__3_n_3\ : STD_LOGIC;
  signal \cyclecount0_carry__4_n_0\ : STD_LOGIC;
  signal \cyclecount0_carry__4_n_1\ : STD_LOGIC;
  signal \cyclecount0_carry__4_n_2\ : STD_LOGIC;
  signal \cyclecount0_carry__4_n_3\ : STD_LOGIC;
  signal \cyclecount0_carry__5_n_0\ : STD_LOGIC;
  signal \cyclecount0_carry__5_n_1\ : STD_LOGIC;
  signal \cyclecount0_carry__5_n_2\ : STD_LOGIC;
  signal \cyclecount0_carry__5_n_3\ : STD_LOGIC;
  signal \cyclecount0_carry__6_n_2\ : STD_LOGIC;
  signal \cyclecount0_carry__6_n_3\ : STD_LOGIC;
  signal cyclecount0_carry_n_0 : STD_LOGIC;
  signal cyclecount0_carry_n_1 : STD_LOGIC;
  signal cyclecount0_carry_n_2 : STD_LOGIC;
  signal cyclecount0_carry_n_3 : STD_LOGIC;
  signal \cyclecount[0]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[10]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[11]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[12]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[13]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[14]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[15]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[16]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[17]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[18]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[19]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[1]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[20]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[21]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[22]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[23]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[24]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[25]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[26]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[27]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[28]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[29]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[2]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[30]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[31]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[31]_i_2_n_0\ : STD_LOGIC;
  signal \cyclecount[31]_i_4_n_0\ : STD_LOGIC;
  signal \cyclecount[31]_i_5_n_0\ : STD_LOGIC;
  signal \cyclecount[3]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[4]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[5]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[6]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[7]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[8]_i_1_n_0\ : STD_LOGIC;
  signal \cyclecount[9]_i_1_n_0\ : STD_LOGIC;
  signal data4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal done : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal idx : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \idx[10]_i_1_n_0\ : STD_LOGIC;
  signal \idx[11]_i_1_n_0\ : STD_LOGIC;
  signal \idx[12]_i_1_n_0\ : STD_LOGIC;
  signal \idx[13]_i_1_n_0\ : STD_LOGIC;
  signal \idx[14]_i_1_n_0\ : STD_LOGIC;
  signal \idx[15]_i_1_n_0\ : STD_LOGIC;
  signal \idx[16]_i_1_n_0\ : STD_LOGIC;
  signal \idx[17]_i_1_n_0\ : STD_LOGIC;
  signal \idx[18]_i_1_n_0\ : STD_LOGIC;
  signal \idx[19]_i_1_n_0\ : STD_LOGIC;
  signal \idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \idx[20]_i_1_n_0\ : STD_LOGIC;
  signal \idx[21]_i_1_n_0\ : STD_LOGIC;
  signal \idx[22]_i_1_n_0\ : STD_LOGIC;
  signal \idx[23]_i_1_n_0\ : STD_LOGIC;
  signal \idx[24]_i_1_n_0\ : STD_LOGIC;
  signal \idx[25]_i_1_n_0\ : STD_LOGIC;
  signal \idx[26]_i_1_n_0\ : STD_LOGIC;
  signal \idx[27]_i_1_n_0\ : STD_LOGIC;
  signal \idx[28]_i_1_n_0\ : STD_LOGIC;
  signal \idx[29]_i_1_n_0\ : STD_LOGIC;
  signal \idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \idx[30]_i_1_n_0\ : STD_LOGIC;
  signal \idx[31]_i_1_n_0\ : STD_LOGIC;
  signal \idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \idx[4]_i_1_n_0\ : STD_LOGIC;
  signal \idx[5]_i_1_n_0\ : STD_LOGIC;
  signal \idx[6]_i_1_n_0\ : STD_LOGIC;
  signal \idx[7]_i_1_n_0\ : STD_LOGIC;
  signal \idx[8]_i_1_n_0\ : STD_LOGIC;
  signal \idx[9]_i_1_n_0\ : STD_LOGIC;
  signal \idx[9]_i_2_n_0\ : STD_LOGIC;
  signal in11 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal in16 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in19 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in4 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal length_latched : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \length_latched[31]_i_10_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_11_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_12_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_13_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_14_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_15_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_16_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_17_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_18_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_19_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_1_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_20_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_2_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_3_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_4_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_5_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_6_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_7_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_8_n_0\ : STD_LOGIC;
  signal \length_latched[31]_i_9_n_0\ : STD_LOGIC;
  signal maxval : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \maxval0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_n_0\ : STD_LOGIC;
  signal \maxval0_carry__0_n_1\ : STD_LOGIC;
  signal \maxval0_carry__0_n_2\ : STD_LOGIC;
  signal \maxval0_carry__0_n_3\ : STD_LOGIC;
  signal \maxval0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_n_0\ : STD_LOGIC;
  signal \maxval0_carry__1_n_1\ : STD_LOGIC;
  signal \maxval0_carry__1_n_2\ : STD_LOGIC;
  signal \maxval0_carry__1_n_3\ : STD_LOGIC;
  signal \maxval0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_n_0\ : STD_LOGIC;
  signal \maxval0_carry__2_n_1\ : STD_LOGIC;
  signal \maxval0_carry__2_n_2\ : STD_LOGIC;
  signal \maxval0_carry__2_n_3\ : STD_LOGIC;
  signal maxval0_carry_i_1_n_0 : STD_LOGIC;
  signal maxval0_carry_i_2_n_0 : STD_LOGIC;
  signal maxval0_carry_i_3_n_0 : STD_LOGIC;
  signal maxval0_carry_i_4_n_0 : STD_LOGIC;
  signal maxval0_carry_i_5_n_0 : STD_LOGIC;
  signal maxval0_carry_i_6_n_0 : STD_LOGIC;
  signal maxval0_carry_i_7_n_0 : STD_LOGIC;
  signal maxval0_carry_i_8_n_0 : STD_LOGIC;
  signal maxval0_carry_n_0 : STD_LOGIC;
  signal maxval0_carry_n_1 : STD_LOGIC;
  signal maxval0_carry_n_2 : STD_LOGIC;
  signal maxval0_carry_n_3 : STD_LOGIC;
  signal \maxval[0]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[10]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[11]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[12]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[13]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[14]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[15]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[16]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[17]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[18]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[19]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[1]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[20]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[21]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[22]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[23]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[24]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[25]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[26]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[27]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[28]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[29]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[2]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[30]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[31]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[31]_i_2_n_0\ : STD_LOGIC;
  signal \maxval[3]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[4]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[5]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[6]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[7]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[8]_i_1_n_0\ : STD_LOGIC;
  signal \maxval[9]_i_1_n_0\ : STD_LOGIC;
  signal minval : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \minval0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_n_0\ : STD_LOGIC;
  signal \minval0_carry__0_n_1\ : STD_LOGIC;
  signal \minval0_carry__0_n_2\ : STD_LOGIC;
  signal \minval0_carry__0_n_3\ : STD_LOGIC;
  signal \minval0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_n_0\ : STD_LOGIC;
  signal \minval0_carry__1_n_1\ : STD_LOGIC;
  signal \minval0_carry__1_n_2\ : STD_LOGIC;
  signal \minval0_carry__1_n_3\ : STD_LOGIC;
  signal \minval0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_n_0\ : STD_LOGIC;
  signal \minval0_carry__2_n_1\ : STD_LOGIC;
  signal \minval0_carry__2_n_2\ : STD_LOGIC;
  signal \minval0_carry__2_n_3\ : STD_LOGIC;
  signal minval0_carry_i_1_n_0 : STD_LOGIC;
  signal minval0_carry_i_2_n_0 : STD_LOGIC;
  signal minval0_carry_i_3_n_0 : STD_LOGIC;
  signal minval0_carry_i_4_n_0 : STD_LOGIC;
  signal minval0_carry_i_5_n_0 : STD_LOGIC;
  signal minval0_carry_i_6_n_0 : STD_LOGIC;
  signal minval0_carry_i_7_n_0 : STD_LOGIC;
  signal minval0_carry_i_8_n_0 : STD_LOGIC;
  signal minval0_carry_n_0 : STD_LOGIC;
  signal minval0_carry_n_1 : STD_LOGIC;
  signal minval0_carry_n_2 : STD_LOGIC;
  signal minval0_carry_n_3 : STD_LOGIC;
  signal \minval[0]_i_1_n_0\ : STD_LOGIC;
  signal \minval[10]_i_1_n_0\ : STD_LOGIC;
  signal \minval[11]_i_1_n_0\ : STD_LOGIC;
  signal \minval[12]_i_1_n_0\ : STD_LOGIC;
  signal \minval[13]_i_1_n_0\ : STD_LOGIC;
  signal \minval[14]_i_1_n_0\ : STD_LOGIC;
  signal \minval[15]_i_1_n_0\ : STD_LOGIC;
  signal \minval[16]_i_1_n_0\ : STD_LOGIC;
  signal \minval[17]_i_1_n_0\ : STD_LOGIC;
  signal \minval[18]_i_1_n_0\ : STD_LOGIC;
  signal \minval[19]_i_1_n_0\ : STD_LOGIC;
  signal \minval[1]_i_1_n_0\ : STD_LOGIC;
  signal \minval[20]_i_1_n_0\ : STD_LOGIC;
  signal \minval[21]_i_1_n_0\ : STD_LOGIC;
  signal \minval[22]_i_1_n_0\ : STD_LOGIC;
  signal \minval[23]_i_1_n_0\ : STD_LOGIC;
  signal \minval[24]_i_1_n_0\ : STD_LOGIC;
  signal \minval[25]_i_1_n_0\ : STD_LOGIC;
  signal \minval[26]_i_1_n_0\ : STD_LOGIC;
  signal \minval[27]_i_1_n_0\ : STD_LOGIC;
  signal \minval[28]_i_1_n_0\ : STD_LOGIC;
  signal \minval[29]_i_1_n_0\ : STD_LOGIC;
  signal \minval[2]_i_1_n_0\ : STD_LOGIC;
  signal \minval[30]_i_1_n_0\ : STD_LOGIC;
  signal \minval[31]_i_10_n_0\ : STD_LOGIC;
  signal \minval[31]_i_11_n_0\ : STD_LOGIC;
  signal \minval[31]_i_1_n_0\ : STD_LOGIC;
  signal \minval[31]_i_2_n_0\ : STD_LOGIC;
  signal \minval[31]_i_3_n_0\ : STD_LOGIC;
  signal \minval[31]_i_4_n_0\ : STD_LOGIC;
  signal \minval[31]_i_5_n_0\ : STD_LOGIC;
  signal \minval[31]_i_6_n_0\ : STD_LOGIC;
  signal \minval[31]_i_7_n_0\ : STD_LOGIC;
  signal \minval[31]_i_8_n_0\ : STD_LOGIC;
  signal \minval[31]_i_9_n_0\ : STD_LOGIC;
  signal \minval[3]_i_1_n_0\ : STD_LOGIC;
  signal \minval[4]_i_1_n_0\ : STD_LOGIC;
  signal \minval[5]_i_1_n_0\ : STD_LOGIC;
  signal \minval[6]_i_1_n_0\ : STD_LOGIC;
  signal \minval[7]_i_1_n_0\ : STD_LOGIC;
  signal \minval[8]_i_1_n_0\ : STD_LOGIC;
  signal \minval[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal pending_idx : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pending_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[10]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[11]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[12]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[13]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[14]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[15]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[16]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[17]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[18]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[19]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[20]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[21]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[22]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[23]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[24]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[25]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[26]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[27]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[28]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[29]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[30]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[31]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[31]_i_2_n_0\ : STD_LOGIC;
  signal \pending_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[4]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[5]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[6]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[7]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[8]_i_1_n_0\ : STD_LOGIC;
  signal \pending_idx[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \state1_carry__0_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_1\ : STD_LOGIC;
  signal \state1_carry__0_n_2\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal \state1_carry__1_n_0\ : STD_LOGIC;
  signal \state1_carry__1_n_1\ : STD_LOGIC;
  signal \state1_carry__1_n_2\ : STD_LOGIC;
  signal \state1_carry__1_n_3\ : STD_LOGIC;
  signal \state1_carry__2_n_0\ : STD_LOGIC;
  signal \state1_carry__2_n_1\ : STD_LOGIC;
  signal \state1_carry__2_n_2\ : STD_LOGIC;
  signal \state1_carry__2_n_3\ : STD_LOGIC;
  signal \state1_carry__3_n_0\ : STD_LOGIC;
  signal \state1_carry__3_n_1\ : STD_LOGIC;
  signal \state1_carry__3_n_2\ : STD_LOGIC;
  signal \state1_carry__3_n_3\ : STD_LOGIC;
  signal \state1_carry__4_n_0\ : STD_LOGIC;
  signal \state1_carry__4_n_1\ : STD_LOGIC;
  signal \state1_carry__4_n_2\ : STD_LOGIC;
  signal \state1_carry__4_n_3\ : STD_LOGIC;
  signal \state1_carry__5_n_0\ : STD_LOGIC;
  signal \state1_carry__5_n_1\ : STD_LOGIC;
  signal \state1_carry__5_n_2\ : STD_LOGIC;
  signal \state1_carry__5_n_3\ : STD_LOGIC;
  signal \state1_carry__6_n_2\ : STD_LOGIC;
  signal \state1_carry__6_n_3\ : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal \sum[0]_i_1_n_0\ : STD_LOGIC;
  signal \sum[10]_i_1_n_0\ : STD_LOGIC;
  signal \sum[11]_i_1_n_0\ : STD_LOGIC;
  signal \sum[11]_i_3_n_0\ : STD_LOGIC;
  signal \sum[11]_i_4_n_0\ : STD_LOGIC;
  signal \sum[11]_i_5_n_0\ : STD_LOGIC;
  signal \sum[11]_i_6_n_0\ : STD_LOGIC;
  signal \sum[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum[13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[14]_i_1_n_0\ : STD_LOGIC;
  signal \sum[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum[15]_i_6_n_0\ : STD_LOGIC;
  signal \sum[16]_i_1_n_0\ : STD_LOGIC;
  signal \sum[17]_i_1_n_0\ : STD_LOGIC;
  signal \sum[18]_i_1_n_0\ : STD_LOGIC;
  signal \sum[19]_i_1_n_0\ : STD_LOGIC;
  signal \sum[19]_i_3_n_0\ : STD_LOGIC;
  signal \sum[19]_i_4_n_0\ : STD_LOGIC;
  signal \sum[19]_i_5_n_0\ : STD_LOGIC;
  signal \sum[19]_i_6_n_0\ : STD_LOGIC;
  signal \sum[1]_i_1_n_0\ : STD_LOGIC;
  signal \sum[20]_i_1_n_0\ : STD_LOGIC;
  signal \sum[21]_i_1_n_0\ : STD_LOGIC;
  signal \sum[22]_i_1_n_0\ : STD_LOGIC;
  signal \sum[23]_i_1_n_0\ : STD_LOGIC;
  signal \sum[23]_i_3_n_0\ : STD_LOGIC;
  signal \sum[23]_i_4_n_0\ : STD_LOGIC;
  signal \sum[23]_i_5_n_0\ : STD_LOGIC;
  signal \sum[23]_i_6_n_0\ : STD_LOGIC;
  signal \sum[24]_i_1_n_0\ : STD_LOGIC;
  signal \sum[25]_i_1_n_0\ : STD_LOGIC;
  signal \sum[26]_i_1_n_0\ : STD_LOGIC;
  signal \sum[27]_i_1_n_0\ : STD_LOGIC;
  signal \sum[27]_i_3_n_0\ : STD_LOGIC;
  signal \sum[27]_i_4_n_0\ : STD_LOGIC;
  signal \sum[27]_i_5_n_0\ : STD_LOGIC;
  signal \sum[27]_i_6_n_0\ : STD_LOGIC;
  signal \sum[28]_i_1_n_0\ : STD_LOGIC;
  signal \sum[29]_i_1_n_0\ : STD_LOGIC;
  signal \sum[2]_i_1_n_0\ : STD_LOGIC;
  signal \sum[30]_i_1_n_0\ : STD_LOGIC;
  signal \sum[31]_i_1_n_0\ : STD_LOGIC;
  signal \sum[31]_i_3_n_0\ : STD_LOGIC;
  signal \sum[31]_i_4_n_0\ : STD_LOGIC;
  signal \sum[31]_i_5_n_0\ : STD_LOGIC;
  signal \sum[31]_i_6_n_0\ : STD_LOGIC;
  signal \sum[32]_i_1_n_0\ : STD_LOGIC;
  signal \sum[33]_i_1_n_0\ : STD_LOGIC;
  signal \sum[34]_i_1_n_0\ : STD_LOGIC;
  signal \sum[35]_i_1_n_0\ : STD_LOGIC;
  signal \sum[36]_i_1_n_0\ : STD_LOGIC;
  signal \sum[37]_i_1_n_0\ : STD_LOGIC;
  signal \sum[38]_i_1_n_0\ : STD_LOGIC;
  signal \sum[39]_i_1_n_0\ : STD_LOGIC;
  signal \sum[3]_i_1_n_0\ : STD_LOGIC;
  signal \sum[3]_i_3_n_0\ : STD_LOGIC;
  signal \sum[3]_i_4_n_0\ : STD_LOGIC;
  signal \sum[3]_i_5_n_0\ : STD_LOGIC;
  signal \sum[3]_i_6_n_0\ : STD_LOGIC;
  signal \sum[40]_i_1_n_0\ : STD_LOGIC;
  signal \sum[41]_i_1_n_0\ : STD_LOGIC;
  signal \sum[42]_i_1_n_0\ : STD_LOGIC;
  signal \sum[43]_i_1_n_0\ : STD_LOGIC;
  signal \sum[44]_i_1_n_0\ : STD_LOGIC;
  signal \sum[45]_i_1_n_0\ : STD_LOGIC;
  signal \sum[46]_i_1_n_0\ : STD_LOGIC;
  signal \sum[47]_i_1_n_0\ : STD_LOGIC;
  signal \sum[48]_i_1_n_0\ : STD_LOGIC;
  signal \sum[49]_i_1_n_0\ : STD_LOGIC;
  signal \sum[4]_i_1_n_0\ : STD_LOGIC;
  signal \sum[50]_i_1_n_0\ : STD_LOGIC;
  signal \sum[51]_i_1_n_0\ : STD_LOGIC;
  signal \sum[52]_i_1_n_0\ : STD_LOGIC;
  signal \sum[53]_i_1_n_0\ : STD_LOGIC;
  signal \sum[54]_i_1_n_0\ : STD_LOGIC;
  signal \sum[55]_i_1_n_0\ : STD_LOGIC;
  signal \sum[56]_i_1_n_0\ : STD_LOGIC;
  signal \sum[57]_i_1_n_0\ : STD_LOGIC;
  signal \sum[58]_i_1_n_0\ : STD_LOGIC;
  signal \sum[59]_i_1_n_0\ : STD_LOGIC;
  signal \sum[5]_i_1_n_0\ : STD_LOGIC;
  signal \sum[60]_i_1_n_0\ : STD_LOGIC;
  signal \sum[61]_i_1_n_0\ : STD_LOGIC;
  signal \sum[62]_i_1_n_0\ : STD_LOGIC;
  signal \sum[63]_i_1_n_0\ : STD_LOGIC;
  signal \sum[63]_i_2_n_0\ : STD_LOGIC;
  signal \sum[6]_i_1_n_0\ : STD_LOGIC;
  signal \sum[7]_i_1_n_0\ : STD_LOGIC;
  signal \sum[7]_i_3_n_0\ : STD_LOGIC;
  signal \sum[7]_i_4_n_0\ : STD_LOGIC;
  signal \sum[7]_i_5_n_0\ : STD_LOGIC;
  signal \sum[7]_i_6_n_0\ : STD_LOGIC;
  signal \sum[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum[9]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[27]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[35]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[35]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[35]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[35]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[39]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[39]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[39]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[39]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[43]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[43]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[43]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[43]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[47]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[47]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[47]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[47]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[51]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[51]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[51]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[51]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[55]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[55]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[55]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[55]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[59]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[59]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[59]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[59]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[63]_i_3_n_1\ : STD_LOGIC;
  signal \sum_reg[63]_i_3_n_2\ : STD_LOGIC;
  signal \sum_reg[63]_i_3_n_3\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_reg_n_0_[10]\ : STD_LOGIC;
  signal \sum_reg_n_0_[11]\ : STD_LOGIC;
  signal \sum_reg_n_0_[12]\ : STD_LOGIC;
  signal \sum_reg_n_0_[13]\ : STD_LOGIC;
  signal \sum_reg_n_0_[14]\ : STD_LOGIC;
  signal \sum_reg_n_0_[15]\ : STD_LOGIC;
  signal \sum_reg_n_0_[16]\ : STD_LOGIC;
  signal \sum_reg_n_0_[17]\ : STD_LOGIC;
  signal \sum_reg_n_0_[18]\ : STD_LOGIC;
  signal \sum_reg_n_0_[19]\ : STD_LOGIC;
  signal \sum_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_reg_n_0_[20]\ : STD_LOGIC;
  signal \sum_reg_n_0_[21]\ : STD_LOGIC;
  signal \sum_reg_n_0_[22]\ : STD_LOGIC;
  signal \sum_reg_n_0_[23]\ : STD_LOGIC;
  signal \sum_reg_n_0_[24]\ : STD_LOGIC;
  signal \sum_reg_n_0_[25]\ : STD_LOGIC;
  signal \sum_reg_n_0_[26]\ : STD_LOGIC;
  signal \sum_reg_n_0_[27]\ : STD_LOGIC;
  signal \sum_reg_n_0_[28]\ : STD_LOGIC;
  signal \sum_reg_n_0_[29]\ : STD_LOGIC;
  signal \sum_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_reg_n_0_[30]\ : STD_LOGIC;
  signal \sum_reg_n_0_[31]\ : STD_LOGIC;
  signal \sum_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_reg_n_0_[7]\ : STD_LOGIC;
  signal \sum_reg_n_0_[8]\ : STD_LOGIC;
  signal \sum_reg_n_0_[9]\ : STD_LOGIC;
  signal threshold_latched : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_countgt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countgt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countgt0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countgt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countgt0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_countgt0_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cyclecount0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cyclecount0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_maxval0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxval0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxval0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxval0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_minval0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minval0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minval0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minval0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_reg[63]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S_CONSUME:100,S_IDLE:001,S_ISSUE:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S_CONSUME:100,S_IDLE:001,S_ISSUE:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S_CONSUME:100,S_IDLE:001,S_ISSUE:010";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \FSM_onehot_state_reg[2]\ : label is "FSM_onehot_state_reg[2]";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]_rep\ : label is "S_CONSUME:100,S_IDLE:001,S_ISSUE:010";
  attribute ORIG_CELL_NAME of \FSM_onehot_state_reg[2]_rep\ : label is "FSM_onehot_state_reg[2]";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]_rep__0\ : label is "S_CONSUME:100,S_IDLE:001,S_ISSUE:010";
  attribute ORIG_CELL_NAME of \FSM_onehot_state_reg[2]_rep__0\ : label is "FSM_onehot_state_reg[2]";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]_rep__1\ : label is "S_CONSUME:100,S_IDLE:001,S_ISSUE:010";
  attribute ORIG_CELL_NAME of \FSM_onehot_state_reg[2]_rep__1\ : label is "FSM_onehot_state_reg[2]";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of countgt0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \countgt0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \countgt0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \countgt0_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \countgt0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \countgt0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \countgt0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \countgt0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \countgt0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \countgt0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \countgt0_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \countgt0_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \countgt[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \countgt[10]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \countgt[11]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \countgt[12]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \countgt[13]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \countgt[14]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \countgt[15]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \countgt[16]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \countgt[17]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \countgt[18]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \countgt[19]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \countgt[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \countgt[20]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \countgt[21]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \countgt[22]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \countgt[23]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \countgt[24]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \countgt[25]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \countgt[26]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \countgt[27]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \countgt[28]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \countgt[29]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \countgt[2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \countgt[30]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \countgt[31]_i_2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \countgt[3]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \countgt[4]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \countgt[5]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \countgt[6]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \countgt[7]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \countgt[8]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \countgt[9]_i_1\ : label is "soft_lutpair108";
  attribute ADDER_THRESHOLD of cyclecount0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cyclecount0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cyclecount0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cyclecount0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cyclecount0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cyclecount0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cyclecount0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cyclecount0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \cyclecount[31]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cyclecount[31]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of done_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of done_i_3 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \idx[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \idx[10]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \idx[11]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \idx[12]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \idx[13]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \idx[14]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \idx[15]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \idx[16]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \idx[17]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \idx[18]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \idx[19]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \idx[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \idx[20]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \idx[21]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \idx[22]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \idx[23]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \idx[24]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \idx[25]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \idx[26]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \idx[27]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \idx[28]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \idx[29]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \idx[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \idx[30]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \idx[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \idx[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \idx[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \idx[6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \idx[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \idx[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \idx[9]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \length_latched[31]_i_10\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \length_latched[31]_i_11\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \length_latched[31]_i_13\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \length_latched[31]_i_14\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \length_latched[31]_i_15\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \length_latched[31]_i_16\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \length_latched[31]_i_17\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \length_latched[31]_i_18\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \length_latched[31]_i_20\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \length_latched[31]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \length_latched[31]_i_8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \length_latched[31]_i_9\ : label is "soft_lutpair23";
  attribute COMPARATOR_THRESHOLD of maxval0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \maxval0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \maxval0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \maxval0_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \maxval[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \maxval[10]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \maxval[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \maxval[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \maxval[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \maxval[14]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \maxval[15]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \maxval[16]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \maxval[17]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \maxval[18]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \maxval[19]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \maxval[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \maxval[20]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \maxval[21]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \maxval[22]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \maxval[23]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \maxval[24]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \maxval[25]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \maxval[26]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \maxval[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \maxval[28]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \maxval[29]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \maxval[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \maxval[30]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \maxval[31]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \maxval[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \maxval[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \maxval[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \maxval[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \maxval[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \maxval[8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \maxval[9]_i_1\ : label is "soft_lutpair38";
  attribute COMPARATOR_THRESHOLD of minval0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \minval0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \minval0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \minval0_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \minval[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \minval[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \minval[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \minval[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \minval[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \minval[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \minval[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \minval[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \minval[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \minval[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \minval[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \minval[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \minval[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \minval[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \minval[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \minval[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \minval[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \minval[25]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \minval[26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \minval[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \minval[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \minval[29]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \minval[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \minval[30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \minval[31]_i_10\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \minval[31]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \minval[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \minval[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \minval[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \minval[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \minval[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \minval[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \minval[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pending_idx[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pending_idx[10]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pending_idx[11]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pending_idx[12]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pending_idx[13]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pending_idx[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pending_idx[15]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \pending_idx[16]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \pending_idx[17]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \pending_idx[18]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \pending_idx[19]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \pending_idx[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pending_idx[20]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \pending_idx[21]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \pending_idx[22]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \pending_idx[23]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pending_idx[24]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pending_idx[25]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \pending_idx[26]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \pending_idx[27]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \pending_idx[28]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \pending_idx[29]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \pending_idx[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pending_idx[30]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \pending_idx[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pending_idx[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pending_idx[5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pending_idx[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pending_idx[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pending_idx[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pending_idx[9]_i_1\ : label is "soft_lutpair62";
  attribute COMPARATOR_THRESHOLD of \state0_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_inferred__0/i__carry__2\ : label is 11;
  attribute ADDER_THRESHOLD of state1_carry : label is 35;
  attribute ADDER_THRESHOLD of \state1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \state1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \state1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \state1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \state1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \state1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \state1_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sum[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \sum[10]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sum[11]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sum[12]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sum[13]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sum[14]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sum[15]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sum[16]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sum[17]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sum[18]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sum[19]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sum[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \sum[20]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sum[21]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sum[22]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sum[23]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sum[24]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \sum[25]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \sum[26]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sum[27]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sum[28]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sum[29]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sum[2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \sum[30]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \sum[31]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \sum[32]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \sum[33]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \sum[34]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \sum[35]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \sum[36]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \sum[37]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \sum[38]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \sum[39]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \sum[3]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \sum[40]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \sum[41]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \sum[42]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \sum[43]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \sum[44]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \sum[45]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \sum[46]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \sum[47]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \sum[48]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \sum[49]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \sum[4]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \sum[50]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \sum[51]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \sum[52]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \sum[53]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \sum[54]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \sum[55]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \sum[56]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \sum[57]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \sum[58]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \sum[59]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \sum[5]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \sum[60]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \sum[61]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \sum[62]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \sum[63]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \sum[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \sum[7]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \sum[8]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \sum[9]_i_1\ : label is "soft_lutpair77";
  attribute ADDER_THRESHOLD of \sum_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[19]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[23]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[27]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[35]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[39]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[43]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[47]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[51]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[55]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[59]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[63]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[7]_i_2\ : label is 35;
begin
  \FSM_onehot_state_reg[1]_0\ <= \^fsm_onehot_state_reg[1]_0\;
  bram_addr(9 downto 0) <= \^bram_addr\(9 downto 0);
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44474444"
    )
        port map (
      I0 => \state0_inferred__0/i__carry__2_n_0\,
      I1 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I2 => \length_latched[31]_i_1_n_0\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAEAE0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \state0_inferred__0/i__carry__2_n_0\,
      I2 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I3 => \length_latched[31]_i_1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^s_axi_aresetn_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg[1]_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^s_axi_aresetn_0\,
      D => \^fsm_onehot_state_reg[1]_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[2]_rep\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^s_axi_aresetn_0\,
      D => \^fsm_onehot_state_reg[1]_0\,
      Q => \FSM_onehot_state_reg[2]_rep_n_0\
    );
\FSM_onehot_state_reg[2]_rep__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^s_axi_aresetn_0\,
      D => \^fsm_onehot_state_reg[1]_0\,
      Q => \FSM_onehot_state_reg[2]_rep__0_n_0\
    );
\FSM_onehot_state_reg[2]_rep__1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^s_axi_aresetn_0\,
      D => \^fsm_onehot_state_reg[1]_0\,
      Q => \FSM_onehot_state_reg[2]_rep__1_n_0\
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \length_latched[31]_i_1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \state0_inferred__0/i__carry__2_n_0\,
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => core_busy,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^s_axi_aresetn_0\,
      D => busy_i_1_n_0,
      Q => core_busy
    );
countgt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => countgt0_carry_n_0,
      CO(2) => countgt0_carry_n_1,
      CO(1) => countgt0_carry_n_2,
      CO(0) => countgt0_carry_n_3,
      CYINIT => '0',
      DI(3) => countgt0_carry_i_1_n_0,
      DI(2) => countgt0_carry_i_2_n_0,
      DI(1) => countgt0_carry_i_3_n_0,
      DI(0) => countgt0_carry_i_4_n_0,
      O(3 downto 0) => NLW_countgt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => countgt0_carry_i_5_n_0,
      S(2) => countgt0_carry_i_6_n_0,
      S(1) => countgt0_carry_i_7_n_0,
      S(0) => countgt0_carry_i_8_n_0
    );
\countgt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => countgt0_carry_n_0,
      CO(3) => \countgt0_carry__0_n_0\,
      CO(2) => \countgt0_carry__0_n_1\,
      CO(1) => \countgt0_carry__0_n_2\,
      CO(0) => \countgt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \countgt0_carry__0_i_1_n_0\,
      DI(2) => \countgt0_carry__0_i_2_n_0\,
      DI(1) => \countgt0_carry__0_i_3_n_0\,
      DI(0) => \countgt0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_countgt0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \countgt0_carry__0_i_5_n_0\,
      S(2) => \countgt0_carry__0_i_6_n_0\,
      S(1) => \countgt0_carry__0_i_7_n_0\,
      S(0) => \countgt0_carry__0_i_8_n_0\
    );
\countgt0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(14),
      I1 => threshold_latched(14),
      I2 => threshold_latched(15),
      I3 => bram_rdata(15),
      O => \countgt0_carry__0_i_1_n_0\
    );
\countgt0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(12),
      I1 => threshold_latched(12),
      I2 => threshold_latched(13),
      I3 => bram_rdata(13),
      O => \countgt0_carry__0_i_2_n_0\
    );
\countgt0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(10),
      I1 => threshold_latched(10),
      I2 => threshold_latched(11),
      I3 => bram_rdata(11),
      O => \countgt0_carry__0_i_3_n_0\
    );
\countgt0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(8),
      I1 => threshold_latched(8),
      I2 => threshold_latched(9),
      I3 => bram_rdata(9),
      O => \countgt0_carry__0_i_4_n_0\
    );
\countgt0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(14),
      I1 => threshold_latched(14),
      I2 => bram_rdata(15),
      I3 => threshold_latched(15),
      O => \countgt0_carry__0_i_5_n_0\
    );
\countgt0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(12),
      I1 => threshold_latched(12),
      I2 => bram_rdata(13),
      I3 => threshold_latched(13),
      O => \countgt0_carry__0_i_6_n_0\
    );
\countgt0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(10),
      I1 => threshold_latched(10),
      I2 => bram_rdata(11),
      I3 => threshold_latched(11),
      O => \countgt0_carry__0_i_7_n_0\
    );
\countgt0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(8),
      I1 => threshold_latched(8),
      I2 => bram_rdata(9),
      I3 => threshold_latched(9),
      O => \countgt0_carry__0_i_8_n_0\
    );
\countgt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_carry__0_n_0\,
      CO(3) => \countgt0_carry__1_n_0\,
      CO(2) => \countgt0_carry__1_n_1\,
      CO(1) => \countgt0_carry__1_n_2\,
      CO(0) => \countgt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \countgt0_carry__1_i_1_n_0\,
      DI(2) => \countgt0_carry__1_i_2_n_0\,
      DI(1) => \countgt0_carry__1_i_3_n_0\,
      DI(0) => \countgt0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_countgt0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \countgt0_carry__1_i_5_n_0\,
      S(2) => \countgt0_carry__1_i_6_n_0\,
      S(1) => \countgt0_carry__1_i_7_n_0\,
      S(0) => \countgt0_carry__1_i_8_n_0\
    );
\countgt0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(22),
      I1 => threshold_latched(22),
      I2 => threshold_latched(23),
      I3 => bram_rdata(23),
      O => \countgt0_carry__1_i_1_n_0\
    );
\countgt0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(20),
      I1 => threshold_latched(20),
      I2 => threshold_latched(21),
      I3 => bram_rdata(21),
      O => \countgt0_carry__1_i_2_n_0\
    );
\countgt0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(18),
      I1 => threshold_latched(18),
      I2 => threshold_latched(19),
      I3 => bram_rdata(19),
      O => \countgt0_carry__1_i_3_n_0\
    );
\countgt0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(16),
      I1 => threshold_latched(16),
      I2 => threshold_latched(17),
      I3 => bram_rdata(17),
      O => \countgt0_carry__1_i_4_n_0\
    );
\countgt0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(22),
      I1 => threshold_latched(22),
      I2 => bram_rdata(23),
      I3 => threshold_latched(23),
      O => \countgt0_carry__1_i_5_n_0\
    );
\countgt0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(20),
      I1 => threshold_latched(20),
      I2 => bram_rdata(21),
      I3 => threshold_latched(21),
      O => \countgt0_carry__1_i_6_n_0\
    );
\countgt0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(18),
      I1 => threshold_latched(18),
      I2 => bram_rdata(19),
      I3 => threshold_latched(19),
      O => \countgt0_carry__1_i_7_n_0\
    );
\countgt0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(16),
      I1 => threshold_latched(16),
      I2 => bram_rdata(17),
      I3 => threshold_latched(17),
      O => \countgt0_carry__1_i_8_n_0\
    );
\countgt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_carry__1_n_0\,
      CO(3) => \countgt0_carry__2_n_0\,
      CO(2) => \countgt0_carry__2_n_1\,
      CO(1) => \countgt0_carry__2_n_2\,
      CO(0) => \countgt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \countgt0_carry__2_i_1_n_0\,
      DI(2) => \countgt0_carry__2_i_2_n_0\,
      DI(1) => \countgt0_carry__2_i_3_n_0\,
      DI(0) => \countgt0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_countgt0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \countgt0_carry__2_i_5_n_0\,
      S(2) => \countgt0_carry__2_i_6_n_0\,
      S(1) => \countgt0_carry__2_i_7_n_0\,
      S(0) => \countgt0_carry__2_i_8_n_0\
    );
\countgt0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(30),
      I1 => threshold_latched(30),
      I2 => threshold_latched(31),
      I3 => bram_rdata(31),
      O => \countgt0_carry__2_i_1_n_0\
    );
\countgt0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(28),
      I1 => threshold_latched(28),
      I2 => threshold_latched(29),
      I3 => bram_rdata(29),
      O => \countgt0_carry__2_i_2_n_0\
    );
\countgt0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(26),
      I1 => threshold_latched(26),
      I2 => threshold_latched(27),
      I3 => bram_rdata(27),
      O => \countgt0_carry__2_i_3_n_0\
    );
\countgt0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(24),
      I1 => threshold_latched(24),
      I2 => threshold_latched(25),
      I3 => bram_rdata(25),
      O => \countgt0_carry__2_i_4_n_0\
    );
\countgt0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(30),
      I1 => threshold_latched(30),
      I2 => bram_rdata(31),
      I3 => threshold_latched(31),
      O => \countgt0_carry__2_i_5_n_0\
    );
\countgt0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(28),
      I1 => threshold_latched(28),
      I2 => bram_rdata(29),
      I3 => threshold_latched(29),
      O => \countgt0_carry__2_i_6_n_0\
    );
\countgt0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(26),
      I1 => threshold_latched(26),
      I2 => bram_rdata(27),
      I3 => threshold_latched(27),
      O => \countgt0_carry__2_i_7_n_0\
    );
\countgt0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(24),
      I1 => threshold_latched(24),
      I2 => bram_rdata(25),
      I3 => threshold_latched(25),
      O => \countgt0_carry__2_i_8_n_0\
    );
countgt0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(6),
      I1 => threshold_latched(6),
      I2 => threshold_latched(7),
      I3 => bram_rdata(7),
      O => countgt0_carry_i_1_n_0
    );
countgt0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(4),
      I1 => threshold_latched(4),
      I2 => threshold_latched(5),
      I3 => bram_rdata(5),
      O => countgt0_carry_i_2_n_0
    );
countgt0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(2),
      I1 => threshold_latched(2),
      I2 => threshold_latched(3),
      I3 => bram_rdata(3),
      O => countgt0_carry_i_3_n_0
    );
countgt0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(0),
      I1 => threshold_latched(0),
      I2 => threshold_latched(1),
      I3 => bram_rdata(1),
      O => countgt0_carry_i_4_n_0
    );
countgt0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(6),
      I1 => threshold_latched(6),
      I2 => bram_rdata(7),
      I3 => threshold_latched(7),
      O => countgt0_carry_i_5_n_0
    );
countgt0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(4),
      I1 => threshold_latched(4),
      I2 => bram_rdata(5),
      I3 => threshold_latched(5),
      O => countgt0_carry_i_6_n_0
    );
countgt0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(2),
      I1 => threshold_latched(2),
      I2 => bram_rdata(3),
      I3 => threshold_latched(3),
      O => countgt0_carry_i_7_n_0
    );
countgt0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(0),
      I1 => threshold_latched(0),
      I2 => bram_rdata(1),
      I3 => threshold_latched(1),
      O => countgt0_carry_i_8_n_0
    );
\countgt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \countgt0_inferred__0/i__carry_n_0\,
      CO(2) => \countgt0_inferred__0/i__carry_n_1\,
      CO(1) => \countgt0_inferred__0/i__carry_n_2\,
      CO(0) => \countgt0_inferred__0/i__carry_n_3\,
      CYINIT => countgt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(4 downto 1),
      S(3 downto 0) => countgt(4 downto 1)
    );
\countgt0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_inferred__0/i__carry_n_0\,
      CO(3) => \countgt0_inferred__0/i__carry__0_n_0\,
      CO(2) => \countgt0_inferred__0/i__carry__0_n_1\,
      CO(1) => \countgt0_inferred__0/i__carry__0_n_2\,
      CO(0) => \countgt0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(8 downto 5),
      S(3 downto 0) => countgt(8 downto 5)
    );
\countgt0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_inferred__0/i__carry__0_n_0\,
      CO(3) => \countgt0_inferred__0/i__carry__1_n_0\,
      CO(2) => \countgt0_inferred__0/i__carry__1_n_1\,
      CO(1) => \countgt0_inferred__0/i__carry__1_n_2\,
      CO(0) => \countgt0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(12 downto 9),
      S(3 downto 0) => countgt(12 downto 9)
    );
\countgt0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_inferred__0/i__carry__1_n_0\,
      CO(3) => \countgt0_inferred__0/i__carry__2_n_0\,
      CO(2) => \countgt0_inferred__0/i__carry__2_n_1\,
      CO(1) => \countgt0_inferred__0/i__carry__2_n_2\,
      CO(0) => \countgt0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(16 downto 13),
      S(3 downto 0) => countgt(16 downto 13)
    );
\countgt0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_inferred__0/i__carry__2_n_0\,
      CO(3) => \countgt0_inferred__0/i__carry__3_n_0\,
      CO(2) => \countgt0_inferred__0/i__carry__3_n_1\,
      CO(1) => \countgt0_inferred__0/i__carry__3_n_2\,
      CO(0) => \countgt0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(20 downto 17),
      S(3 downto 0) => countgt(20 downto 17)
    );
\countgt0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_inferred__0/i__carry__3_n_0\,
      CO(3) => \countgt0_inferred__0/i__carry__4_n_0\,
      CO(2) => \countgt0_inferred__0/i__carry__4_n_1\,
      CO(1) => \countgt0_inferred__0/i__carry__4_n_2\,
      CO(0) => \countgt0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(24 downto 21),
      S(3 downto 0) => countgt(24 downto 21)
    );
\countgt0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_inferred__0/i__carry__4_n_0\,
      CO(3) => \countgt0_inferred__0/i__carry__5_n_0\,
      CO(2) => \countgt0_inferred__0/i__carry__5_n_1\,
      CO(1) => \countgt0_inferred__0/i__carry__5_n_2\,
      CO(0) => \countgt0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(28 downto 25),
      S(3 downto 0) => countgt(28 downto 25)
    );
\countgt0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \countgt0_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_countgt0_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \countgt0_inferred__0/i__carry__6_n_2\,
      CO(0) => \countgt0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_countgt0_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in16(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => countgt(31 downto 29)
    );
\countgt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => countgt(0),
      O => \countgt[0]_i_1_n_0\
    );
\countgt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(10),
      O => \countgt[10]_i_1_n_0\
    );
\countgt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(11),
      O => \countgt[11]_i_1_n_0\
    );
\countgt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(12),
      O => \countgt[12]_i_1_n_0\
    );
\countgt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(13),
      O => \countgt[13]_i_1_n_0\
    );
\countgt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(14),
      O => \countgt[14]_i_1_n_0\
    );
\countgt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(15),
      O => \countgt[15]_i_1_n_0\
    );
\countgt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(16),
      O => \countgt[16]_i_1_n_0\
    );
\countgt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(17),
      O => \countgt[17]_i_1_n_0\
    );
\countgt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(18),
      O => \countgt[18]_i_1_n_0\
    );
\countgt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(19),
      O => \countgt[19]_i_1_n_0\
    );
\countgt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(1),
      O => \countgt[1]_i_1_n_0\
    );
\countgt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(20),
      O => \countgt[20]_i_1_n_0\
    );
\countgt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(21),
      O => \countgt[21]_i_1_n_0\
    );
\countgt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(22),
      O => \countgt[22]_i_1_n_0\
    );
\countgt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(23),
      O => \countgt[23]_i_1_n_0\
    );
\countgt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(24),
      O => \countgt[24]_i_1_n_0\
    );
\countgt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(25),
      O => \countgt[25]_i_1_n_0\
    );
\countgt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(26),
      O => \countgt[26]_i_1_n_0\
    );
\countgt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(27),
      O => \countgt[27]_i_1_n_0\
    );
\countgt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(28),
      O => \countgt[28]_i_1_n_0\
    );
\countgt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(29),
      O => \countgt[29]_i_1_n_0\
    );
\countgt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(2),
      O => \countgt[2]_i_1_n_0\
    );
\countgt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(30),
      O => \countgt[30]_i_1_n_0\
    );
\countgt[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \length_latched[31]_i_1_n_0\,
      I1 => \countgt0_carry__2_n_0\,
      I2 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      O => \countgt[31]_i_1_n_0\
    );
\countgt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(31),
      O => \countgt[31]_i_2_n_0\
    );
\countgt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(3),
      O => \countgt[3]_i_1_n_0\
    );
\countgt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(4),
      O => \countgt[4]_i_1_n_0\
    );
\countgt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(5),
      O => \countgt[5]_i_1_n_0\
    );
\countgt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(6),
      O => \countgt[6]_i_1_n_0\
    );
\countgt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(7),
      O => \countgt[7]_i_1_n_0\
    );
\countgt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(8),
      O => \countgt[8]_i_1_n_0\
    );
\countgt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => in16(9),
      O => \countgt[9]_i_1_n_0\
    );
\countgt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[0]_i_1_n_0\,
      Q => countgt(0)
    );
\countgt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[10]_i_1_n_0\,
      Q => countgt(10)
    );
\countgt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[11]_i_1_n_0\,
      Q => countgt(11)
    );
\countgt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[12]_i_1_n_0\,
      Q => countgt(12)
    );
\countgt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[13]_i_1_n_0\,
      Q => countgt(13)
    );
\countgt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[14]_i_1_n_0\,
      Q => countgt(14)
    );
\countgt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[15]_i_1_n_0\,
      Q => countgt(15)
    );
\countgt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[16]_i_1_n_0\,
      Q => countgt(16)
    );
\countgt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[17]_i_1_n_0\,
      Q => countgt(17)
    );
\countgt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[18]_i_1_n_0\,
      Q => countgt(18)
    );
\countgt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[19]_i_1_n_0\,
      Q => countgt(19)
    );
\countgt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[1]_i_1_n_0\,
      Q => countgt(1)
    );
\countgt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[20]_i_1_n_0\,
      Q => countgt(20)
    );
\countgt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[21]_i_1_n_0\,
      Q => countgt(21)
    );
\countgt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[22]_i_1_n_0\,
      Q => countgt(22)
    );
\countgt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[23]_i_1_n_0\,
      Q => countgt(23)
    );
\countgt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[24]_i_1_n_0\,
      Q => countgt(24)
    );
\countgt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[25]_i_1_n_0\,
      Q => countgt(25)
    );
\countgt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[26]_i_1_n_0\,
      Q => countgt(26)
    );
\countgt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[27]_i_1_n_0\,
      Q => countgt(27)
    );
\countgt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[28]_i_1_n_0\,
      Q => countgt(28)
    );
\countgt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[29]_i_1_n_0\,
      Q => countgt(29)
    );
\countgt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[2]_i_1_n_0\,
      Q => countgt(2)
    );
\countgt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[30]_i_1_n_0\,
      Q => countgt(30)
    );
\countgt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[31]_i_2_n_0\,
      Q => countgt(31)
    );
\countgt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[3]_i_1_n_0\,
      Q => countgt(3)
    );
\countgt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[4]_i_1_n_0\,
      Q => countgt(4)
    );
\countgt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[5]_i_1_n_0\,
      Q => countgt(5)
    );
\countgt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[6]_i_1_n_0\,
      Q => countgt(6)
    );
\countgt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[7]_i_1_n_0\,
      Q => countgt(7)
    );
\countgt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[8]_i_1_n_0\,
      Q => countgt(8)
    );
\countgt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \countgt[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \countgt[9]_i_1_n_0\,
      Q => countgt(9)
    );
cyclecount0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cyclecount0_carry_n_0,
      CO(2) => cyclecount0_carry_n_1,
      CO(1) => cyclecount0_carry_n_2,
      CO(0) => cyclecount0_carry_n_3,
      CYINIT => cyclecount(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in19(4 downto 1),
      S(3 downto 0) => cyclecount(4 downto 1)
    );
\cyclecount0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cyclecount0_carry_n_0,
      CO(3) => \cyclecount0_carry__0_n_0\,
      CO(2) => \cyclecount0_carry__0_n_1\,
      CO(1) => \cyclecount0_carry__0_n_2\,
      CO(0) => \cyclecount0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in19(8 downto 5),
      S(3 downto 0) => cyclecount(8 downto 5)
    );
\cyclecount0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cyclecount0_carry__0_n_0\,
      CO(3) => \cyclecount0_carry__1_n_0\,
      CO(2) => \cyclecount0_carry__1_n_1\,
      CO(1) => \cyclecount0_carry__1_n_2\,
      CO(0) => \cyclecount0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in19(12 downto 9),
      S(3 downto 0) => cyclecount(12 downto 9)
    );
\cyclecount0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cyclecount0_carry__1_n_0\,
      CO(3) => \cyclecount0_carry__2_n_0\,
      CO(2) => \cyclecount0_carry__2_n_1\,
      CO(1) => \cyclecount0_carry__2_n_2\,
      CO(0) => \cyclecount0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in19(16 downto 13),
      S(3 downto 0) => cyclecount(16 downto 13)
    );
\cyclecount0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cyclecount0_carry__2_n_0\,
      CO(3) => \cyclecount0_carry__3_n_0\,
      CO(2) => \cyclecount0_carry__3_n_1\,
      CO(1) => \cyclecount0_carry__3_n_2\,
      CO(0) => \cyclecount0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in19(20 downto 17),
      S(3 downto 0) => cyclecount(20 downto 17)
    );
\cyclecount0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cyclecount0_carry__3_n_0\,
      CO(3) => \cyclecount0_carry__4_n_0\,
      CO(2) => \cyclecount0_carry__4_n_1\,
      CO(1) => \cyclecount0_carry__4_n_2\,
      CO(0) => \cyclecount0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in19(24 downto 21),
      S(3 downto 0) => cyclecount(24 downto 21)
    );
\cyclecount0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cyclecount0_carry__4_n_0\,
      CO(3) => \cyclecount0_carry__5_n_0\,
      CO(2) => \cyclecount0_carry__5_n_1\,
      CO(1) => \cyclecount0_carry__5_n_2\,
      CO(0) => \cyclecount0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in19(28 downto 25),
      S(3 downto 0) => cyclecount(28 downto 25)
    );
\cyclecount0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cyclecount0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cyclecount0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cyclecount0_carry__6_n_2\,
      CO(0) => \cyclecount0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cyclecount0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in19(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cyclecount(31 downto 29)
    );
\cyclecount[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00F2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I3 => cyclecount(0),
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[0]_i_1_n_0\
    );
\cyclecount[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(10),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[10]_i_1_n_0\
    );
\cyclecount[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(11),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[11]_i_1_n_0\
    );
\cyclecount[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(12),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[12]_i_1_n_0\
    );
\cyclecount[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(13),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[13]_i_1_n_0\
    );
\cyclecount[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(14),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[14]_i_1_n_0\
    );
\cyclecount[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(15),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[15]_i_1_n_0\
    );
\cyclecount[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(16),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[16]_i_1_n_0\
    );
\cyclecount[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(17),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[17]_i_1_n_0\
    );
\cyclecount[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(18),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[18]_i_1_n_0\
    );
\cyclecount[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(19),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[19]_i_1_n_0\
    );
\cyclecount[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(1),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[1]_i_1_n_0\
    );
\cyclecount[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(20),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[20]_i_1_n_0\
    );
\cyclecount[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(21),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[21]_i_1_n_0\
    );
\cyclecount[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(22),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[22]_i_1_n_0\
    );
\cyclecount[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(23),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[23]_i_1_n_0\
    );
\cyclecount[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(24),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[24]_i_1_n_0\
    );
\cyclecount[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(25),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[25]_i_1_n_0\
    );
\cyclecount[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(26),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[26]_i_1_n_0\
    );
\cyclecount[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(27),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[27]_i_1_n_0\
    );
\cyclecount[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(28),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[28]_i_1_n_0\
    );
\cyclecount[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(29),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[29]_i_1_n_0\
    );
\cyclecount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(2),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[2]_i_1_n_0\
    );
\cyclecount[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(30),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[30]_i_1_n_0\
    );
\cyclecount[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F8A8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => core_busy,
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[31]_i_1_n_0\
    );
\cyclecount[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(31),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[31]_i_2_n_0\
    );
\cyclecount[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA80000"
    )
        port map (
      I0 => start_pulse,
      I1 => \cyclecount[31]_i_4_n_0\,
      I2 => \cyclecount[31]_i_5_n_0\,
      I3 => \length_latched[31]_i_4_n_0\,
      I4 => \length_latched[31]_i_3_n_0\,
      I5 => \length_latched[31]_i_2_n_0\,
      O => p_0_in
    );
\cyclecount[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(9),
      I3 => Q(10),
      I4 => \length_latched[31]_i_19_n_0\,
      O => \cyclecount[31]_i_4_n_0\
    );
\cyclecount[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \length_latched[31]_i_17_n_0\,
      O => \cyclecount[31]_i_5_n_0\
    );
\cyclecount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(3),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[3]_i_1_n_0\
    );
\cyclecount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(4),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[4]_i_1_n_0\
    );
\cyclecount[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(5),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[5]_i_1_n_0\
    );
\cyclecount[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(6),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[6]_i_1_n_0\
    );
\cyclecount[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(7),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[7]_i_1_n_0\
    );
\cyclecount[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(8),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[8]_i_1_n_0\
    );
\cyclecount[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => in19(9),
      I3 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => \cyclecount[9]_i_1_n_0\
    );
\cyclecount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[0]_i_1_n_0\,
      Q => cyclecount(0)
    );
\cyclecount_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[10]_i_1_n_0\,
      Q => cyclecount(10)
    );
\cyclecount_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[11]_i_1_n_0\,
      Q => cyclecount(11)
    );
\cyclecount_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[12]_i_1_n_0\,
      Q => cyclecount(12)
    );
\cyclecount_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[13]_i_1_n_0\,
      Q => cyclecount(13)
    );
\cyclecount_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[14]_i_1_n_0\,
      Q => cyclecount(14)
    );
\cyclecount_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[15]_i_1_n_0\,
      Q => cyclecount(15)
    );
\cyclecount_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[16]_i_1_n_0\,
      Q => cyclecount(16)
    );
\cyclecount_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[17]_i_1_n_0\,
      Q => cyclecount(17)
    );
\cyclecount_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[18]_i_1_n_0\,
      Q => cyclecount(18)
    );
\cyclecount_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[19]_i_1_n_0\,
      Q => cyclecount(19)
    );
\cyclecount_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[1]_i_1_n_0\,
      Q => cyclecount(1)
    );
\cyclecount_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[20]_i_1_n_0\,
      Q => cyclecount(20)
    );
\cyclecount_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[21]_i_1_n_0\,
      Q => cyclecount(21)
    );
\cyclecount_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[22]_i_1_n_0\,
      Q => cyclecount(22)
    );
\cyclecount_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[23]_i_1_n_0\,
      Q => cyclecount(23)
    );
\cyclecount_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[24]_i_1_n_0\,
      Q => cyclecount(24)
    );
\cyclecount_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[25]_i_1_n_0\,
      Q => cyclecount(25)
    );
\cyclecount_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[26]_i_1_n_0\,
      Q => cyclecount(26)
    );
\cyclecount_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[27]_i_1_n_0\,
      Q => cyclecount(27)
    );
\cyclecount_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[28]_i_1_n_0\,
      Q => cyclecount(28)
    );
\cyclecount_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[29]_i_1_n_0\,
      Q => cyclecount(29)
    );
\cyclecount_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[2]_i_1_n_0\,
      Q => cyclecount(2)
    );
\cyclecount_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[30]_i_1_n_0\,
      Q => cyclecount(30)
    );
\cyclecount_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[31]_i_2_n_0\,
      Q => cyclecount(31)
    );
\cyclecount_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[3]_i_1_n_0\,
      Q => cyclecount(3)
    );
\cyclecount_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[4]_i_1_n_0\,
      Q => cyclecount(4)
    );
\cyclecount_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[5]_i_1_n_0\,
      Q => cyclecount(5)
    );
\cyclecount_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[6]_i_1_n_0\,
      Q => cyclecount(6)
    );
\cyclecount_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[7]_i_1_n_0\,
      Q => cyclecount(7)
    );
\cyclecount_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[8]_i_1_n_0\,
      Q => cyclecount(8)
    );
\cyclecount_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \cyclecount[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \cyclecount[9]_i_1_n_0\,
      Q => cyclecount(9)
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBBFAAAA8880"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => clear_done_pulse,
      I4 => done_i_3_n_0,
      I5 => done,
      O => done_i_1_n_0
    );
done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I1 => \state0_inferred__0/i__carry__2_n_0\,
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EC"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg[2]_rep__1_n_0\,
      I2 => clear_done_pulse,
      I3 => \state0_inferred__0/i__carry__2_n_0\,
      O => done_i_3_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^s_axi_aresetn_0\,
      D => done_i_1_n_0,
      Q => done
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(14),
      I1 => in4(14),
      I2 => in4(15),
      I3 => length_latched(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(12),
      I1 => in4(12),
      I2 => in4(13),
      I3 => length_latched(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(10),
      I1 => in4(10),
      I2 => in4(11),
      I3 => length_latched(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(8),
      I1 => in4(8),
      I2 => in4(9),
      I3 => length_latched(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(14),
      I1 => in4(14),
      I2 => length_latched(15),
      I3 => in4(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(12),
      I1 => in4(12),
      I2 => length_latched(13),
      I3 => in4(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(10),
      I1 => in4(10),
      I2 => length_latched(11),
      I3 => in4(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(8),
      I1 => in4(8),
      I2 => length_latched(9),
      I3 => in4(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(22),
      I1 => in4(22),
      I2 => in4(23),
      I3 => length_latched(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(20),
      I1 => in4(20),
      I2 => in4(21),
      I3 => length_latched(21),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(18),
      I1 => in4(18),
      I2 => in4(19),
      I3 => length_latched(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(16),
      I1 => in4(16),
      I2 => in4(17),
      I3 => length_latched(17),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(22),
      I1 => in4(22),
      I2 => length_latched(23),
      I3 => in4(23),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(20),
      I1 => in4(20),
      I2 => length_latched(21),
      I3 => in4(21),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(18),
      I1 => in4(18),
      I2 => length_latched(19),
      I3 => in4(19),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(16),
      I1 => in4(16),
      I2 => length_latched(17),
      I3 => in4(17),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(30),
      I1 => in4(30),
      I2 => in4(31),
      I3 => length_latched(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(28),
      I1 => in4(28),
      I2 => in4(29),
      I3 => length_latched(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(26),
      I1 => in4(26),
      I2 => in4(27),
      I3 => length_latched(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(24),
      I1 => in4(24),
      I2 => in4(25),
      I3 => length_latched(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(30),
      I1 => in4(30),
      I2 => length_latched(31),
      I3 => in4(31),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(28),
      I1 => in4(28),
      I2 => length_latched(29),
      I3 => in4(29),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(26),
      I1 => in4(26),
      I2 => length_latched(27),
      I3 => in4(27),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(24),
      I1 => in4(24),
      I2 => length_latched(25),
      I3 => in4(25),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(6),
      I1 => in4(6),
      I2 => in4(7),
      I3 => length_latched(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(4),
      I1 => in4(4),
      I2 => in4(5),
      I3 => length_latched(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => length_latched(2),
      I1 => in4(2),
      I2 => in4(3),
      I3 => length_latched(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F08"
    )
        port map (
      I0 => pending_idx(0),
      I1 => length_latched(0),
      I2 => in4(1),
      I3 => length_latched(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(6),
      I1 => in4(6),
      I2 => length_latched(7),
      I3 => in4(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(4),
      I1 => in4(4),
      I2 => length_latched(5),
      I3 => in4(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => length_latched(2),
      I1 => in4(2),
      I2 => length_latched(3),
      I3 => in4(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => length_latched(0),
      I1 => pending_idx(0),
      I2 => length_latched(1),
      I3 => in4(1),
      O => \i__carry_i_8_n_0\
    );
\idx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => pending_idx(0),
      O => \idx[0]_i_1_n_0\
    );
\idx[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(10),
      O => \idx[10]_i_1_n_0\
    );
\idx[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(11),
      O => \idx[11]_i_1_n_0\
    );
\idx[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(12),
      O => \idx[12]_i_1_n_0\
    );
\idx[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(13),
      O => \idx[13]_i_1_n_0\
    );
\idx[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(14),
      O => \idx[14]_i_1_n_0\
    );
\idx[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(15),
      O => \idx[15]_i_1_n_0\
    );
\idx[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(16),
      O => \idx[16]_i_1_n_0\
    );
\idx[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(17),
      O => \idx[17]_i_1_n_0\
    );
\idx[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(18),
      O => \idx[18]_i_1_n_0\
    );
\idx[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(19),
      O => \idx[19]_i_1_n_0\
    );
\idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(1),
      O => \idx[1]_i_1_n_0\
    );
\idx[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(20),
      O => \idx[20]_i_1_n_0\
    );
\idx[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(21),
      O => \idx[21]_i_1_n_0\
    );
\idx[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(22),
      O => \idx[22]_i_1_n_0\
    );
\idx[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(23),
      O => \idx[23]_i_1_n_0\
    );
\idx[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(24),
      O => \idx[24]_i_1_n_0\
    );
\idx[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(25),
      O => \idx[25]_i_1_n_0\
    );
\idx[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(26),
      O => \idx[26]_i_1_n_0\
    );
\idx[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(27),
      O => \idx[27]_i_1_n_0\
    );
\idx[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(28),
      O => \idx[28]_i_1_n_0\
    );
\idx[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(29),
      O => \idx[29]_i_1_n_0\
    );
\idx[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(2),
      O => \idx[2]_i_1_n_0\
    );
\idx[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(30),
      O => \idx[30]_i_1_n_0\
    );
\idx[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(31),
      O => \idx[31]_i_1_n_0\
    );
\idx[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(3),
      O => \idx[3]_i_1_n_0\
    );
\idx[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(4),
      O => \idx[4]_i_1_n_0\
    );
\idx[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(5),
      O => \idx[5]_i_1_n_0\
    );
\idx[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(6),
      O => \idx[6]_i_1_n_0\
    );
\idx[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(7),
      O => \idx[7]_i_1_n_0\
    );
\idx[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(8),
      O => \idx[8]_i_1_n_0\
    );
\idx[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \length_latched[31]_i_1_n_0\,
      I1 => \state0_inferred__0/i__carry__2_n_0\,
      I2 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      O => \idx[9]_i_1_n_0\
    );
\idx[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep__0_n_0\,
      I1 => in4(9),
      O => \idx[9]_i_2_n_0\
    );
\idx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[0]_i_1_n_0\,
      Q => \^bram_addr\(0)
    );
\idx_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[10]_i_1_n_0\,
      Q => idx(10)
    );
\idx_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[11]_i_1_n_0\,
      Q => idx(11)
    );
\idx_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[12]_i_1_n_0\,
      Q => idx(12)
    );
\idx_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[13]_i_1_n_0\,
      Q => idx(13)
    );
\idx_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[14]_i_1_n_0\,
      Q => idx(14)
    );
\idx_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[15]_i_1_n_0\,
      Q => idx(15)
    );
\idx_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[16]_i_1_n_0\,
      Q => idx(16)
    );
\idx_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[17]_i_1_n_0\,
      Q => idx(17)
    );
\idx_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[18]_i_1_n_0\,
      Q => idx(18)
    );
\idx_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[19]_i_1_n_0\,
      Q => idx(19)
    );
\idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[1]_i_1_n_0\,
      Q => \^bram_addr\(1)
    );
\idx_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[20]_i_1_n_0\,
      Q => idx(20)
    );
\idx_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[21]_i_1_n_0\,
      Q => idx(21)
    );
\idx_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[22]_i_1_n_0\,
      Q => idx(22)
    );
\idx_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[23]_i_1_n_0\,
      Q => idx(23)
    );
\idx_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[24]_i_1_n_0\,
      Q => idx(24)
    );
\idx_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[25]_i_1_n_0\,
      Q => idx(25)
    );
\idx_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[26]_i_1_n_0\,
      Q => idx(26)
    );
\idx_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[27]_i_1_n_0\,
      Q => idx(27)
    );
\idx_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[28]_i_1_n_0\,
      Q => idx(28)
    );
\idx_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[29]_i_1_n_0\,
      Q => idx(29)
    );
\idx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[2]_i_1_n_0\,
      Q => \^bram_addr\(2)
    );
\idx_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[30]_i_1_n_0\,
      Q => idx(30)
    );
\idx_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[31]_i_1_n_0\,
      Q => idx(31)
    );
\idx_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[3]_i_1_n_0\,
      Q => \^bram_addr\(3)
    );
\idx_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[4]_i_1_n_0\,
      Q => \^bram_addr\(4)
    );
\idx_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[5]_i_1_n_0\,
      Q => \^bram_addr\(5)
    );
\idx_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[6]_i_1_n_0\,
      Q => \^bram_addr\(6)
    );
\idx_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[7]_i_1_n_0\,
      Q => \^bram_addr\(7)
    );
\idx_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[8]_i_1_n_0\,
      Q => \^bram_addr\(8)
    );
\idx_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \idx[9]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \idx[9]_i_2_n_0\,
      Q => \^bram_addr\(9)
    );
\length_latched[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \length_latched[31]_i_2_n_0\,
      I2 => \length_latched[31]_i_3_n_0\,
      I3 => \length_latched[31]_i_4_n_0\,
      I4 => \length_latched[31]_i_5_n_0\,
      I5 => start_pulse,
      O => \length_latched[31]_i_1_n_0\
    );
\length_latched[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(21),
      I1 => Q(20),
      I2 => Q(23),
      I3 => Q(22),
      O => \length_latched[31]_i_10_n_0\
    );
\length_latched[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(9),
      I3 => Q(8),
      O => \length_latched[31]_i_11_n_0\
    );
\length_latched[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(5),
      I3 => Q(4),
      O => \length_latched[31]_i_12_n_0\
    );
\length_latched[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(22),
      I1 => Q(21),
      I2 => Q(24),
      I3 => Q(23),
      O => \length_latched[31]_i_13_n_0\
    );
\length_latched[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(18),
      I1 => Q(17),
      I2 => Q(20),
      I3 => Q(19),
      O => \length_latched[31]_i_14_n_0\
    );
\length_latched[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(30),
      I1 => Q(29),
      I2 => Q(0),
      I3 => Q(31),
      O => \length_latched[31]_i_15_n_0\
    );
\length_latched[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(26),
      I1 => Q(25),
      I2 => Q(28),
      I3 => Q(27),
      O => \length_latched[31]_i_16_n_0\
    );
\length_latched[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(8),
      I3 => Q(7),
      O => \length_latched[31]_i_17_n_0\
    );
\length_latched[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(4),
      I3 => Q(3),
      O => \length_latched[31]_i_18_n_0\
    );
\length_latched[31]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(14),
      I1 => Q(13),
      I2 => Q(16),
      I3 => Q(15),
      O => \length_latched[31]_i_19_n_0\
    );
\length_latched[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \length_latched[31]_i_6_n_0\,
      I1 => \length_latched[31]_i_7_n_0\,
      I2 => \length_latched[31]_i_8_n_0\,
      I3 => \length_latched[31]_i_9_n_0\,
      I4 => \length_latched[31]_i_10_n_0\,
      O => \length_latched[31]_i_2_n_0\
    );
\length_latched[31]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      I2 => Q(12),
      I3 => Q(11),
      O => \length_latched[31]_i_20_n_0\
    );
\length_latched[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \length_latched[31]_i_11_n_0\,
      I3 => \length_latched[31]_i_12_n_0\,
      I4 => Q(10),
      O => \length_latched[31]_i_3_n_0\
    );
\length_latched[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \length_latched[31]_i_13_n_0\,
      I1 => \length_latched[31]_i_14_n_0\,
      I2 => \length_latched[31]_i_15_n_0\,
      I3 => \length_latched[31]_i_16_n_0\,
      O => \length_latched[31]_i_4_n_0\
    );
\length_latched[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \length_latched[31]_i_17_n_0\,
      I1 => \length_latched[31]_i_18_n_0\,
      I2 => \length_latched[31]_i_19_n_0\,
      I3 => \length_latched[31]_i_20_n_0\,
      O => \length_latched[31]_i_5_n_0\
    );
\length_latched[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(11),
      I1 => Q(14),
      I2 => Q(15),
      I3 => Q(12),
      I4 => Q(13),
      O => \length_latched[31]_i_6_n_0\
    );
\length_latched[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(25),
      I1 => Q(24),
      I2 => Q(27),
      I3 => Q(26),
      O => \length_latched[31]_i_7_n_0\
    );
\length_latched[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(29),
      I1 => Q(28),
      I2 => Q(31),
      I3 => Q(30),
      O => \length_latched[31]_i_8_n_0\
    );
\length_latched[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(17),
      I1 => Q(16),
      I2 => Q(19),
      I3 => Q(18),
      O => \length_latched[31]_i_9_n_0\
    );
\length_latched_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(0),
      Q => length_latched(0)
    );
\length_latched_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(10),
      Q => length_latched(10)
    );
\length_latched_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(11),
      Q => length_latched(11)
    );
\length_latched_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(12),
      Q => length_latched(12)
    );
\length_latched_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(13),
      Q => length_latched(13)
    );
\length_latched_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(14),
      Q => length_latched(14)
    );
\length_latched_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(15),
      Q => length_latched(15)
    );
\length_latched_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(16),
      Q => length_latched(16)
    );
\length_latched_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(17),
      Q => length_latched(17)
    );
\length_latched_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(18),
      Q => length_latched(18)
    );
\length_latched_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(19),
      Q => length_latched(19)
    );
\length_latched_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(1),
      Q => length_latched(1)
    );
\length_latched_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(20),
      Q => length_latched(20)
    );
\length_latched_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(21),
      Q => length_latched(21)
    );
\length_latched_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(22),
      Q => length_latched(22)
    );
\length_latched_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(23),
      Q => length_latched(23)
    );
\length_latched_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(24),
      Q => length_latched(24)
    );
\length_latched_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(25),
      Q => length_latched(25)
    );
\length_latched_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(26),
      Q => length_latched(26)
    );
\length_latched_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(27),
      Q => length_latched(27)
    );
\length_latched_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(28),
      Q => length_latched(28)
    );
\length_latched_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(29),
      Q => length_latched(29)
    );
\length_latched_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(2),
      Q => length_latched(2)
    );
\length_latched_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(30),
      Q => length_latched(30)
    );
\length_latched_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(31),
      Q => length_latched(31)
    );
\length_latched_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(3),
      Q => length_latched(3)
    );
\length_latched_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(4),
      Q => length_latched(4)
    );
\length_latched_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(5),
      Q => length_latched(5)
    );
\length_latched_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(6),
      Q => length_latched(6)
    );
\length_latched_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(7),
      Q => length_latched(7)
    );
\length_latched_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(8),
      Q => length_latched(8)
    );
\length_latched_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => Q(9),
      Q => length_latched(9)
    );
maxval0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => maxval0_carry_n_0,
      CO(2) => maxval0_carry_n_1,
      CO(1) => maxval0_carry_n_2,
      CO(0) => maxval0_carry_n_3,
      CYINIT => '0',
      DI(3) => maxval0_carry_i_1_n_0,
      DI(2) => maxval0_carry_i_2_n_0,
      DI(1) => maxval0_carry_i_3_n_0,
      DI(0) => maxval0_carry_i_4_n_0,
      O(3 downto 0) => NLW_maxval0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => maxval0_carry_i_5_n_0,
      S(2) => maxval0_carry_i_6_n_0,
      S(1) => maxval0_carry_i_7_n_0,
      S(0) => maxval0_carry_i_8_n_0
    );
\maxval0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => maxval0_carry_n_0,
      CO(3) => \maxval0_carry__0_n_0\,
      CO(2) => \maxval0_carry__0_n_1\,
      CO(1) => \maxval0_carry__0_n_2\,
      CO(0) => \maxval0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \maxval0_carry__0_i_1_n_0\,
      DI(2) => \maxval0_carry__0_i_2_n_0\,
      DI(1) => \maxval0_carry__0_i_3_n_0\,
      DI(0) => \maxval0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_maxval0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxval0_carry__0_i_5_n_0\,
      S(2) => \maxval0_carry__0_i_6_n_0\,
      S(1) => \maxval0_carry__0_i_7_n_0\,
      S(0) => \maxval0_carry__0_i_8_n_0\
    );
\maxval0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(14),
      I1 => maxval(14),
      I2 => maxval(15),
      I3 => bram_rdata(15),
      O => \maxval0_carry__0_i_1_n_0\
    );
\maxval0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(12),
      I1 => maxval(12),
      I2 => maxval(13),
      I3 => bram_rdata(13),
      O => \maxval0_carry__0_i_2_n_0\
    );
\maxval0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(10),
      I1 => maxval(10),
      I2 => maxval(11),
      I3 => bram_rdata(11),
      O => \maxval0_carry__0_i_3_n_0\
    );
\maxval0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(8),
      I1 => maxval(8),
      I2 => maxval(9),
      I3 => bram_rdata(9),
      O => \maxval0_carry__0_i_4_n_0\
    );
\maxval0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(14),
      I1 => maxval(14),
      I2 => bram_rdata(15),
      I3 => maxval(15),
      O => \maxval0_carry__0_i_5_n_0\
    );
\maxval0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(12),
      I1 => maxval(12),
      I2 => bram_rdata(13),
      I3 => maxval(13),
      O => \maxval0_carry__0_i_6_n_0\
    );
\maxval0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(10),
      I1 => maxval(10),
      I2 => bram_rdata(11),
      I3 => maxval(11),
      O => \maxval0_carry__0_i_7_n_0\
    );
\maxval0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(8),
      I1 => maxval(8),
      I2 => bram_rdata(9),
      I3 => maxval(9),
      O => \maxval0_carry__0_i_8_n_0\
    );
\maxval0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \maxval0_carry__0_n_0\,
      CO(3) => \maxval0_carry__1_n_0\,
      CO(2) => \maxval0_carry__1_n_1\,
      CO(1) => \maxval0_carry__1_n_2\,
      CO(0) => \maxval0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \maxval0_carry__1_i_1_n_0\,
      DI(2) => \maxval0_carry__1_i_2_n_0\,
      DI(1) => \maxval0_carry__1_i_3_n_0\,
      DI(0) => \maxval0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_maxval0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxval0_carry__1_i_5_n_0\,
      S(2) => \maxval0_carry__1_i_6_n_0\,
      S(1) => \maxval0_carry__1_i_7_n_0\,
      S(0) => \maxval0_carry__1_i_8_n_0\
    );
\maxval0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(22),
      I1 => maxval(22),
      I2 => maxval(23),
      I3 => bram_rdata(23),
      O => \maxval0_carry__1_i_1_n_0\
    );
\maxval0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(20),
      I1 => maxval(20),
      I2 => maxval(21),
      I3 => bram_rdata(21),
      O => \maxval0_carry__1_i_2_n_0\
    );
\maxval0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(18),
      I1 => maxval(18),
      I2 => maxval(19),
      I3 => bram_rdata(19),
      O => \maxval0_carry__1_i_3_n_0\
    );
\maxval0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(16),
      I1 => maxval(16),
      I2 => maxval(17),
      I3 => bram_rdata(17),
      O => \maxval0_carry__1_i_4_n_0\
    );
\maxval0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(22),
      I1 => maxval(22),
      I2 => bram_rdata(23),
      I3 => maxval(23),
      O => \maxval0_carry__1_i_5_n_0\
    );
\maxval0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(20),
      I1 => maxval(20),
      I2 => bram_rdata(21),
      I3 => maxval(21),
      O => \maxval0_carry__1_i_6_n_0\
    );
\maxval0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(18),
      I1 => maxval(18),
      I2 => bram_rdata(19),
      I3 => maxval(19),
      O => \maxval0_carry__1_i_7_n_0\
    );
\maxval0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(16),
      I1 => maxval(16),
      I2 => bram_rdata(17),
      I3 => maxval(17),
      O => \maxval0_carry__1_i_8_n_0\
    );
\maxval0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \maxval0_carry__1_n_0\,
      CO(3) => \maxval0_carry__2_n_0\,
      CO(2) => \maxval0_carry__2_n_1\,
      CO(1) => \maxval0_carry__2_n_2\,
      CO(0) => \maxval0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \maxval0_carry__2_i_1_n_0\,
      DI(2) => \maxval0_carry__2_i_2_n_0\,
      DI(1) => \maxval0_carry__2_i_3_n_0\,
      DI(0) => \maxval0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_maxval0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxval0_carry__2_i_5_n_0\,
      S(2) => \maxval0_carry__2_i_6_n_0\,
      S(1) => \maxval0_carry__2_i_7_n_0\,
      S(0) => \maxval0_carry__2_i_8_n_0\
    );
\maxval0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(30),
      I1 => maxval(30),
      I2 => maxval(31),
      I3 => bram_rdata(31),
      O => \maxval0_carry__2_i_1_n_0\
    );
\maxval0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(28),
      I1 => maxval(28),
      I2 => maxval(29),
      I3 => bram_rdata(29),
      O => \maxval0_carry__2_i_2_n_0\
    );
\maxval0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(26),
      I1 => maxval(26),
      I2 => maxval(27),
      I3 => bram_rdata(27),
      O => \maxval0_carry__2_i_3_n_0\
    );
\maxval0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(24),
      I1 => maxval(24),
      I2 => maxval(25),
      I3 => bram_rdata(25),
      O => \maxval0_carry__2_i_4_n_0\
    );
\maxval0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(30),
      I1 => maxval(30),
      I2 => bram_rdata(31),
      I3 => maxval(31),
      O => \maxval0_carry__2_i_5_n_0\
    );
\maxval0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(28),
      I1 => maxval(28),
      I2 => bram_rdata(29),
      I3 => maxval(29),
      O => \maxval0_carry__2_i_6_n_0\
    );
\maxval0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(26),
      I1 => maxval(26),
      I2 => bram_rdata(27),
      I3 => maxval(27),
      O => \maxval0_carry__2_i_7_n_0\
    );
\maxval0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(24),
      I1 => maxval(24),
      I2 => bram_rdata(25),
      I3 => maxval(25),
      O => \maxval0_carry__2_i_8_n_0\
    );
maxval0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(6),
      I1 => maxval(6),
      I2 => maxval(7),
      I3 => bram_rdata(7),
      O => maxval0_carry_i_1_n_0
    );
maxval0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(4),
      I1 => maxval(4),
      I2 => maxval(5),
      I3 => bram_rdata(5),
      O => maxval0_carry_i_2_n_0
    );
maxval0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(2),
      I1 => maxval(2),
      I2 => maxval(3),
      I3 => bram_rdata(3),
      O => maxval0_carry_i_3_n_0
    );
maxval0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => bram_rdata(0),
      I1 => maxval(0),
      I2 => maxval(1),
      I3 => bram_rdata(1),
      O => maxval0_carry_i_4_n_0
    );
maxval0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(6),
      I1 => maxval(6),
      I2 => bram_rdata(7),
      I3 => maxval(7),
      O => maxval0_carry_i_5_n_0
    );
maxval0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(4),
      I1 => maxval(4),
      I2 => bram_rdata(5),
      I3 => maxval(5),
      O => maxval0_carry_i_6_n_0
    );
maxval0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(2),
      I1 => maxval(2),
      I2 => bram_rdata(3),
      I3 => maxval(3),
      O => maxval0_carry_i_7_n_0
    );
maxval0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_rdata(0),
      I1 => maxval(0),
      I2 => bram_rdata(1),
      I3 => maxval(1),
      O => maxval0_carry_i_8_n_0
    );
\maxval[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(0),
      O => \maxval[0]_i_1_n_0\
    );
\maxval[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(10),
      O => \maxval[10]_i_1_n_0\
    );
\maxval[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(11),
      O => \maxval[11]_i_1_n_0\
    );
\maxval[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(12),
      O => \maxval[12]_i_1_n_0\
    );
\maxval[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(13),
      O => \maxval[13]_i_1_n_0\
    );
\maxval[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(14),
      O => \maxval[14]_i_1_n_0\
    );
\maxval[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(15),
      O => \maxval[15]_i_1_n_0\
    );
\maxval[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(16),
      O => \maxval[16]_i_1_n_0\
    );
\maxval[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(17),
      O => \maxval[17]_i_1_n_0\
    );
\maxval[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(18),
      O => \maxval[18]_i_1_n_0\
    );
\maxval[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(19),
      O => \maxval[19]_i_1_n_0\
    );
\maxval[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(1),
      O => \maxval[1]_i_1_n_0\
    );
\maxval[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(20),
      O => \maxval[20]_i_1_n_0\
    );
\maxval[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(21),
      O => \maxval[21]_i_1_n_0\
    );
\maxval[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(22),
      O => \maxval[22]_i_1_n_0\
    );
\maxval[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(23),
      O => \maxval[23]_i_1_n_0\
    );
\maxval[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(24),
      O => \maxval[24]_i_1_n_0\
    );
\maxval[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(25),
      O => \maxval[25]_i_1_n_0\
    );
\maxval[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(26),
      O => \maxval[26]_i_1_n_0\
    );
\maxval[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(27),
      O => \maxval[27]_i_1_n_0\
    );
\maxval[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(28),
      O => \maxval[28]_i_1_n_0\
    );
\maxval[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(29),
      O => \maxval[29]_i_1_n_0\
    );
\maxval[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(2),
      O => \maxval[2]_i_1_n_0\
    );
\maxval[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(30),
      O => \maxval[30]_i_1_n_0\
    );
\maxval[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \length_latched[31]_i_1_n_0\,
      I1 => \maxval0_carry__2_n_0\,
      I2 => \minval[31]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \maxval[31]_i_1_n_0\
    );
\maxval[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(31),
      O => \maxval[31]_i_2_n_0\
    );
\maxval[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(3),
      O => \maxval[3]_i_1_n_0\
    );
\maxval[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(4),
      O => \maxval[4]_i_1_n_0\
    );
\maxval[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(5),
      O => \maxval[5]_i_1_n_0\
    );
\maxval[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(6),
      O => \maxval[6]_i_1_n_0\
    );
\maxval[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(7),
      O => \maxval[7]_i_1_n_0\
    );
\maxval[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(8),
      O => \maxval[8]_i_1_n_0\
    );
\maxval[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bram_rdata(9),
      O => \maxval[9]_i_1_n_0\
    );
\maxval_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[0]_i_1_n_0\,
      Q => maxval(0)
    );
\maxval_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[10]_i_1_n_0\,
      Q => maxval(10)
    );
\maxval_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[11]_i_1_n_0\,
      Q => maxval(11)
    );
\maxval_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[12]_i_1_n_0\,
      Q => maxval(12)
    );
\maxval_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[13]_i_1_n_0\,
      Q => maxval(13)
    );
\maxval_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[14]_i_1_n_0\,
      Q => maxval(14)
    );
\maxval_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[15]_i_1_n_0\,
      Q => maxval(15)
    );
\maxval_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[16]_i_1_n_0\,
      Q => maxval(16)
    );
\maxval_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[17]_i_1_n_0\,
      Q => maxval(17)
    );
\maxval_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[18]_i_1_n_0\,
      Q => maxval(18)
    );
\maxval_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[19]_i_1_n_0\,
      Q => maxval(19)
    );
\maxval_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[1]_i_1_n_0\,
      Q => maxval(1)
    );
\maxval_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[20]_i_1_n_0\,
      Q => maxval(20)
    );
\maxval_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[21]_i_1_n_0\,
      Q => maxval(21)
    );
\maxval_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[22]_i_1_n_0\,
      Q => maxval(22)
    );
\maxval_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[23]_i_1_n_0\,
      Q => maxval(23)
    );
\maxval_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[24]_i_1_n_0\,
      Q => maxval(24)
    );
\maxval_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[25]_i_1_n_0\,
      Q => maxval(25)
    );
\maxval_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[26]_i_1_n_0\,
      Q => maxval(26)
    );
\maxval_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[27]_i_1_n_0\,
      Q => maxval(27)
    );
\maxval_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[28]_i_1_n_0\,
      Q => maxval(28)
    );
\maxval_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[29]_i_1_n_0\,
      Q => maxval(29)
    );
\maxval_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[2]_i_1_n_0\,
      Q => maxval(2)
    );
\maxval_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[30]_i_1_n_0\,
      Q => maxval(30)
    );
\maxval_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[31]_i_2_n_0\,
      Q => maxval(31)
    );
\maxval_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[3]_i_1_n_0\,
      Q => maxval(3)
    );
\maxval_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[4]_i_1_n_0\,
      Q => maxval(4)
    );
\maxval_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[5]_i_1_n_0\,
      Q => maxval(5)
    );
\maxval_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[6]_i_1_n_0\,
      Q => maxval(6)
    );
\maxval_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[7]_i_1_n_0\,
      Q => maxval(7)
    );
\maxval_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[8]_i_1_n_0\,
      Q => maxval(8)
    );
\maxval_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \maxval[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \maxval[9]_i_1_n_0\,
      Q => maxval(9)
    );
minval0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minval0_carry_n_0,
      CO(2) => minval0_carry_n_1,
      CO(1) => minval0_carry_n_2,
      CO(0) => minval0_carry_n_3,
      CYINIT => '0',
      DI(3) => minval0_carry_i_1_n_0,
      DI(2) => minval0_carry_i_2_n_0,
      DI(1) => minval0_carry_i_3_n_0,
      DI(0) => minval0_carry_i_4_n_0,
      O(3 downto 0) => NLW_minval0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => minval0_carry_i_5_n_0,
      S(2) => minval0_carry_i_6_n_0,
      S(1) => minval0_carry_i_7_n_0,
      S(0) => minval0_carry_i_8_n_0
    );
\minval0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minval0_carry_n_0,
      CO(3) => \minval0_carry__0_n_0\,
      CO(2) => \minval0_carry__0_n_1\,
      CO(1) => \minval0_carry__0_n_2\,
      CO(0) => \minval0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \minval0_carry__0_i_1_n_0\,
      DI(2) => \minval0_carry__0_i_2_n_0\,
      DI(1) => \minval0_carry__0_i_3_n_0\,
      DI(0) => \minval0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_minval0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \minval0_carry__0_i_5_n_0\,
      S(2) => \minval0_carry__0_i_6_n_0\,
      S(1) => \minval0_carry__0_i_7_n_0\,
      S(0) => \minval0_carry__0_i_8_n_0\
    );
\minval0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(14),
      I1 => bram_rdata(14),
      I2 => bram_rdata(15),
      I3 => minval(15),
      O => \minval0_carry__0_i_1_n_0\
    );
\minval0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(12),
      I1 => bram_rdata(12),
      I2 => bram_rdata(13),
      I3 => minval(13),
      O => \minval0_carry__0_i_2_n_0\
    );
\minval0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(10),
      I1 => bram_rdata(10),
      I2 => bram_rdata(11),
      I3 => minval(11),
      O => \minval0_carry__0_i_3_n_0\
    );
\minval0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(8),
      I1 => bram_rdata(8),
      I2 => bram_rdata(9),
      I3 => minval(9),
      O => \minval0_carry__0_i_4_n_0\
    );
\minval0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(14),
      I1 => bram_rdata(14),
      I2 => minval(15),
      I3 => bram_rdata(15),
      O => \minval0_carry__0_i_5_n_0\
    );
\minval0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(12),
      I1 => bram_rdata(12),
      I2 => minval(13),
      I3 => bram_rdata(13),
      O => \minval0_carry__0_i_6_n_0\
    );
\minval0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(10),
      I1 => bram_rdata(10),
      I2 => minval(11),
      I3 => bram_rdata(11),
      O => \minval0_carry__0_i_7_n_0\
    );
\minval0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(8),
      I1 => bram_rdata(8),
      I2 => minval(9),
      I3 => bram_rdata(9),
      O => \minval0_carry__0_i_8_n_0\
    );
\minval0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minval0_carry__0_n_0\,
      CO(3) => \minval0_carry__1_n_0\,
      CO(2) => \minval0_carry__1_n_1\,
      CO(1) => \minval0_carry__1_n_2\,
      CO(0) => \minval0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \minval0_carry__1_i_1_n_0\,
      DI(2) => \minval0_carry__1_i_2_n_0\,
      DI(1) => \minval0_carry__1_i_3_n_0\,
      DI(0) => \minval0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_minval0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \minval0_carry__1_i_5_n_0\,
      S(2) => \minval0_carry__1_i_6_n_0\,
      S(1) => \minval0_carry__1_i_7_n_0\,
      S(0) => \minval0_carry__1_i_8_n_0\
    );
\minval0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(22),
      I1 => bram_rdata(22),
      I2 => bram_rdata(23),
      I3 => minval(23),
      O => \minval0_carry__1_i_1_n_0\
    );
\minval0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(20),
      I1 => bram_rdata(20),
      I2 => bram_rdata(21),
      I3 => minval(21),
      O => \minval0_carry__1_i_2_n_0\
    );
\minval0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(18),
      I1 => bram_rdata(18),
      I2 => bram_rdata(19),
      I3 => minval(19),
      O => \minval0_carry__1_i_3_n_0\
    );
\minval0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(16),
      I1 => bram_rdata(16),
      I2 => bram_rdata(17),
      I3 => minval(17),
      O => \minval0_carry__1_i_4_n_0\
    );
\minval0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(22),
      I1 => bram_rdata(22),
      I2 => minval(23),
      I3 => bram_rdata(23),
      O => \minval0_carry__1_i_5_n_0\
    );
\minval0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(20),
      I1 => bram_rdata(20),
      I2 => minval(21),
      I3 => bram_rdata(21),
      O => \minval0_carry__1_i_6_n_0\
    );
\minval0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(18),
      I1 => bram_rdata(18),
      I2 => minval(19),
      I3 => bram_rdata(19),
      O => \minval0_carry__1_i_7_n_0\
    );
\minval0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(16),
      I1 => bram_rdata(16),
      I2 => minval(17),
      I3 => bram_rdata(17),
      O => \minval0_carry__1_i_8_n_0\
    );
\minval0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minval0_carry__1_n_0\,
      CO(3) => \minval0_carry__2_n_0\,
      CO(2) => \minval0_carry__2_n_1\,
      CO(1) => \minval0_carry__2_n_2\,
      CO(0) => \minval0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \minval0_carry__2_i_1_n_0\,
      DI(2) => \minval0_carry__2_i_2_n_0\,
      DI(1) => \minval0_carry__2_i_3_n_0\,
      DI(0) => \minval0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_minval0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \minval0_carry__2_i_5_n_0\,
      S(2) => \minval0_carry__2_i_6_n_0\,
      S(1) => \minval0_carry__2_i_7_n_0\,
      S(0) => \minval0_carry__2_i_8_n_0\
    );
\minval0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(30),
      I1 => bram_rdata(30),
      I2 => bram_rdata(31),
      I3 => minval(31),
      O => \minval0_carry__2_i_1_n_0\
    );
\minval0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(28),
      I1 => bram_rdata(28),
      I2 => bram_rdata(29),
      I3 => minval(29),
      O => \minval0_carry__2_i_2_n_0\
    );
\minval0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(26),
      I1 => bram_rdata(26),
      I2 => bram_rdata(27),
      I3 => minval(27),
      O => \minval0_carry__2_i_3_n_0\
    );
\minval0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(24),
      I1 => bram_rdata(24),
      I2 => bram_rdata(25),
      I3 => minval(25),
      O => \minval0_carry__2_i_4_n_0\
    );
\minval0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(30),
      I1 => bram_rdata(30),
      I2 => minval(31),
      I3 => bram_rdata(31),
      O => \minval0_carry__2_i_5_n_0\
    );
\minval0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(28),
      I1 => bram_rdata(28),
      I2 => minval(29),
      I3 => bram_rdata(29),
      O => \minval0_carry__2_i_6_n_0\
    );
\minval0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(26),
      I1 => bram_rdata(26),
      I2 => minval(27),
      I3 => bram_rdata(27),
      O => \minval0_carry__2_i_7_n_0\
    );
\minval0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(24),
      I1 => bram_rdata(24),
      I2 => minval(25),
      I3 => bram_rdata(25),
      O => \minval0_carry__2_i_8_n_0\
    );
minval0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(6),
      I1 => bram_rdata(6),
      I2 => bram_rdata(7),
      I3 => minval(7),
      O => minval0_carry_i_1_n_0
    );
minval0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(4),
      I1 => bram_rdata(4),
      I2 => bram_rdata(5),
      I3 => minval(5),
      O => minval0_carry_i_2_n_0
    );
minval0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(2),
      I1 => bram_rdata(2),
      I2 => bram_rdata(3),
      I3 => minval(3),
      O => minval0_carry_i_3_n_0
    );
minval0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => minval(0),
      I1 => bram_rdata(0),
      I2 => bram_rdata(1),
      I3 => minval(1),
      O => minval0_carry_i_4_n_0
    );
minval0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(6),
      I1 => bram_rdata(6),
      I2 => minval(7),
      I3 => bram_rdata(7),
      O => minval0_carry_i_5_n_0
    );
minval0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(4),
      I1 => bram_rdata(4),
      I2 => minval(5),
      I3 => bram_rdata(5),
      O => minval0_carry_i_6_n_0
    );
minval0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(2),
      I1 => bram_rdata(2),
      I2 => minval(3),
      I3 => bram_rdata(3),
      O => minval0_carry_i_7_n_0
    );
minval0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => minval(0),
      I1 => bram_rdata(0),
      I2 => minval(1),
      I3 => bram_rdata(1),
      O => minval0_carry_i_8_n_0
    );
\minval[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(0),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[0]_i_1_n_0\
    );
\minval[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(10),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[10]_i_1_n_0\
    );
\minval[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(11),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[11]_i_1_n_0\
    );
\minval[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(12),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[12]_i_1_n_0\
    );
\minval[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(13),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[13]_i_1_n_0\
    );
\minval[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(14),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[14]_i_1_n_0\
    );
\minval[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(15),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[15]_i_1_n_0\
    );
\minval[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(16),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[16]_i_1_n_0\
    );
\minval[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(17),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[17]_i_1_n_0\
    );
\minval[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(18),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[18]_i_1_n_0\
    );
\minval[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(19),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[19]_i_1_n_0\
    );
\minval[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(1),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[1]_i_1_n_0\
    );
\minval[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(20),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[20]_i_1_n_0\
    );
\minval[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(21),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[21]_i_1_n_0\
    );
\minval[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(22),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[22]_i_1_n_0\
    );
\minval[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(23),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[23]_i_1_n_0\
    );
\minval[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(24),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[24]_i_1_n_0\
    );
\minval[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(25),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[25]_i_1_n_0\
    );
\minval[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(26),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[26]_i_1_n_0\
    );
\minval[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(27),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[27]_i_1_n_0\
    );
\minval[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(28),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[28]_i_1_n_0\
    );
\minval[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(29),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[29]_i_1_n_0\
    );
\minval[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(2),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[2]_i_1_n_0\
    );
\minval[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(30),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[30]_i_1_n_0\
    );
\minval[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \length_latched[31]_i_1_n_0\,
      I1 => \minval0_carry__2_n_0\,
      I2 => \minval[31]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \minval[31]_i_1_n_0\
    );
\minval[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pending_idx(2),
      I1 => pending_idx(3),
      I2 => pending_idx(0),
      I3 => pending_idx(1),
      O => \minval[31]_i_10_n_0\
    );
\minval[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pending_idx(10),
      I1 => pending_idx(11),
      I2 => pending_idx(8),
      I3 => pending_idx(9),
      O => \minval[31]_i_11_n_0\
    );
\minval[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(31),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[31]_i_2_n_0\
    );
\minval[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \minval[31]_i_4_n_0\,
      I1 => \minval[31]_i_5_n_0\,
      I2 => \minval[31]_i_6_n_0\,
      I3 => \minval[31]_i_7_n_0\,
      O => \minval[31]_i_3_n_0\
    );
\minval[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pending_idx(21),
      I1 => pending_idx(20),
      I2 => pending_idx(23),
      I3 => pending_idx(22),
      I4 => \minval[31]_i_8_n_0\,
      O => \minval[31]_i_4_n_0\
    );
\minval[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pending_idx(29),
      I1 => pending_idx(28),
      I2 => pending_idx(30),
      I3 => pending_idx(31),
      I4 => \minval[31]_i_9_n_0\,
      O => \minval[31]_i_5_n_0\
    );
\minval[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pending_idx(5),
      I1 => pending_idx(4),
      I2 => pending_idx(7),
      I3 => pending_idx(6),
      I4 => \minval[31]_i_10_n_0\,
      O => \minval[31]_i_6_n_0\
    );
\minval[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pending_idx(13),
      I1 => pending_idx(12),
      I2 => pending_idx(15),
      I3 => pending_idx(14),
      I4 => \minval[31]_i_11_n_0\,
      O => \minval[31]_i_7_n_0\
    );
\minval[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pending_idx(18),
      I1 => pending_idx(19),
      I2 => pending_idx(16),
      I3 => pending_idx(17),
      O => \minval[31]_i_8_n_0\
    );
\minval[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pending_idx(26),
      I1 => pending_idx(27),
      I2 => pending_idx(24),
      I3 => pending_idx(25),
      O => \minval[31]_i_9_n_0\
    );
\minval[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(3),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[3]_i_1_n_0\
    );
\minval[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(4),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[4]_i_1_n_0\
    );
\minval[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(5),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[5]_i_1_n_0\
    );
\minval[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(6),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[6]_i_1_n_0\
    );
\minval[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(7),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[7]_i_1_n_0\
    );
\minval[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(8),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[8]_i_1_n_0\
    );
\minval[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bram_rdata(9),
      I3 => \length_latched[31]_i_1_n_0\,
      O => \minval[9]_i_1_n_0\
    );
\minval_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[0]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(0)
    );
\minval_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[10]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(10)
    );
\minval_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[11]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(11)
    );
\minval_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[12]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(12)
    );
\minval_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[13]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(13)
    );
\minval_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[14]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(14)
    );
\minval_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[15]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(15)
    );
\minval_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[16]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(16)
    );
\minval_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[17]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(17)
    );
\minval_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[18]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(18)
    );
\minval_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[19]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(19)
    );
\minval_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[1]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(1)
    );
\minval_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[20]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(20)
    );
\minval_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[21]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(21)
    );
\minval_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[22]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(22)
    );
\minval_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[23]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(23)
    );
\minval_reg[24]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[24]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(24)
    );
\minval_reg[25]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[25]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(25)
    );
\minval_reg[26]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[26]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(26)
    );
\minval_reg[27]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[27]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(27)
    );
\minval_reg[28]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[28]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(28)
    );
\minval_reg[29]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[29]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(29)
    );
\minval_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[2]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(2)
    );
\minval_reg[30]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[30]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(30)
    );
\minval_reg[31]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[31]_i_2_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(31)
    );
\minval_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[3]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(3)
    );
\minval_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[4]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(4)
    );
\minval_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[5]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(5)
    );
\minval_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[6]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(6)
    );
\minval_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[7]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(7)
    );
\minval_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[8]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(8)
    );
\minval_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \minval[31]_i_1_n_0\,
      D => \minval[9]_i_1_n_0\,
      PRE => \^s_axi_aresetn_0\,
      Q => minval(9)
    );
\pending_idx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(0),
      O => \pending_idx[0]_i_1_n_0\
    );
\pending_idx[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(10),
      O => \pending_idx[10]_i_1_n_0\
    );
\pending_idx[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(11),
      O => \pending_idx[11]_i_1_n_0\
    );
\pending_idx[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(12),
      O => \pending_idx[12]_i_1_n_0\
    );
\pending_idx[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(13),
      O => \pending_idx[13]_i_1_n_0\
    );
\pending_idx[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(14),
      O => \pending_idx[14]_i_1_n_0\
    );
\pending_idx[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(15),
      O => \pending_idx[15]_i_1_n_0\
    );
\pending_idx[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(16),
      O => \pending_idx[16]_i_1_n_0\
    );
\pending_idx[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(17),
      O => \pending_idx[17]_i_1_n_0\
    );
\pending_idx[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(18),
      O => \pending_idx[18]_i_1_n_0\
    );
\pending_idx[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(19),
      O => \pending_idx[19]_i_1_n_0\
    );
\pending_idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(1),
      O => \pending_idx[1]_i_1_n_0\
    );
\pending_idx[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(20),
      O => \pending_idx[20]_i_1_n_0\
    );
\pending_idx[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(21),
      O => \pending_idx[21]_i_1_n_0\
    );
\pending_idx[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(22),
      O => \pending_idx[22]_i_1_n_0\
    );
\pending_idx[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(23),
      O => \pending_idx[23]_i_1_n_0\
    );
\pending_idx[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(24),
      O => \pending_idx[24]_i_1_n_0\
    );
\pending_idx[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(25),
      O => \pending_idx[25]_i_1_n_0\
    );
\pending_idx[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(26),
      O => \pending_idx[26]_i_1_n_0\
    );
\pending_idx[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(27),
      O => \pending_idx[27]_i_1_n_0\
    );
\pending_idx[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(28),
      O => \pending_idx[28]_i_1_n_0\
    );
\pending_idx[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(29),
      O => \pending_idx[29]_i_1_n_0\
    );
\pending_idx[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(2),
      O => \pending_idx[2]_i_1_n_0\
    );
\pending_idx[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(30),
      O => \pending_idx[30]_i_1_n_0\
    );
\pending_idx[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \length_latched[31]_i_1_n_0\,
      O => \pending_idx[31]_i_1_n_0\
    );
\pending_idx[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => idx(31),
      O => \pending_idx[31]_i_2_n_0\
    );
\pending_idx[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(3),
      O => \pending_idx[3]_i_1_n_0\
    );
\pending_idx[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(4),
      O => \pending_idx[4]_i_1_n_0\
    );
\pending_idx[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(5),
      O => \pending_idx[5]_i_1_n_0\
    );
\pending_idx[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(6),
      O => \pending_idx[6]_i_1_n_0\
    );
\pending_idx[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(7),
      O => \pending_idx[7]_i_1_n_0\
    );
\pending_idx[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(8),
      O => \pending_idx[8]_i_1_n_0\
    );
\pending_idx[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \^bram_addr\(9),
      O => \pending_idx[9]_i_1_n_0\
    );
\pending_idx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[0]_i_1_n_0\,
      Q => pending_idx(0)
    );
\pending_idx_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[10]_i_1_n_0\,
      Q => pending_idx(10)
    );
\pending_idx_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[11]_i_1_n_0\,
      Q => pending_idx(11)
    );
\pending_idx_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[12]_i_1_n_0\,
      Q => pending_idx(12)
    );
\pending_idx_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[13]_i_1_n_0\,
      Q => pending_idx(13)
    );
\pending_idx_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[14]_i_1_n_0\,
      Q => pending_idx(14)
    );
\pending_idx_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[15]_i_1_n_0\,
      Q => pending_idx(15)
    );
\pending_idx_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[16]_i_1_n_0\,
      Q => pending_idx(16)
    );
\pending_idx_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[17]_i_1_n_0\,
      Q => pending_idx(17)
    );
\pending_idx_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[18]_i_1_n_0\,
      Q => pending_idx(18)
    );
\pending_idx_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[19]_i_1_n_0\,
      Q => pending_idx(19)
    );
\pending_idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[1]_i_1_n_0\,
      Q => pending_idx(1)
    );
\pending_idx_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[20]_i_1_n_0\,
      Q => pending_idx(20)
    );
\pending_idx_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[21]_i_1_n_0\,
      Q => pending_idx(21)
    );
\pending_idx_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[22]_i_1_n_0\,
      Q => pending_idx(22)
    );
\pending_idx_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[23]_i_1_n_0\,
      Q => pending_idx(23)
    );
\pending_idx_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[24]_i_1_n_0\,
      Q => pending_idx(24)
    );
\pending_idx_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[25]_i_1_n_0\,
      Q => pending_idx(25)
    );
\pending_idx_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[26]_i_1_n_0\,
      Q => pending_idx(26)
    );
\pending_idx_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[27]_i_1_n_0\,
      Q => pending_idx(27)
    );
\pending_idx_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[28]_i_1_n_0\,
      Q => pending_idx(28)
    );
\pending_idx_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[29]_i_1_n_0\,
      Q => pending_idx(29)
    );
\pending_idx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[2]_i_1_n_0\,
      Q => pending_idx(2)
    );
\pending_idx_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[30]_i_1_n_0\,
      Q => pending_idx(30)
    );
\pending_idx_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[31]_i_2_n_0\,
      Q => pending_idx(31)
    );
\pending_idx_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[3]_i_1_n_0\,
      Q => pending_idx(3)
    );
\pending_idx_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[4]_i_1_n_0\,
      Q => pending_idx(4)
    );
\pending_idx_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[5]_i_1_n_0\,
      Q => pending_idx(5)
    );
\pending_idx_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[6]_i_1_n_0\,
      Q => pending_idx(6)
    );
\pending_idx_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[7]_i_1_n_0\,
      Q => pending_idx(7)
    );
\pending_idx_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[8]_i_1_n_0\,
      Q => pending_idx(8)
    );
\pending_idx_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \pending_idx[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \pending_idx[9]_i_1_n_0\,
      Q => pending_idx(9)
    );
s_axi_bvalid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^s_axi_aresetn_0\
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(0),
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(0),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(0),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[0]_i_3_n_0\
    );
\s_axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(0),
      I1 => minval(0),
      I2 => s_axi_araddr(1),
      I3 => data4(0),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[0]\,
      O => \s_axi_rdata[0]_i_4_n_0\
    );
\s_axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[10]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(10),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(10),
      O => \s_axi_rdata[10]_i_2_n_0\
    );
\s_axi_rdata[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(10),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(10),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[10]_i_3_n_0\
    );
\s_axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(10),
      I1 => minval(10),
      I2 => s_axi_araddr(1),
      I3 => data4(10),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[10]\,
      O => \s_axi_rdata[10]_i_4_n_0\
    );
\s_axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[11]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(11),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(11),
      O => \s_axi_rdata[11]_i_2_n_0\
    );
\s_axi_rdata[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(11),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(11),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[11]_i_3_n_0\
    );
\s_axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(11),
      I1 => minval(11),
      I2 => s_axi_araddr(1),
      I3 => data4(11),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[11]\,
      O => \s_axi_rdata[11]_i_4_n_0\
    );
\s_axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[12]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(12),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(12),
      O => \s_axi_rdata[12]_i_2_n_0\
    );
\s_axi_rdata[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(12),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(12),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[12]_i_3_n_0\
    );
\s_axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(12),
      I1 => minval(12),
      I2 => s_axi_araddr(1),
      I3 => data4(12),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[12]\,
      O => \s_axi_rdata[12]_i_4_n_0\
    );
\s_axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[13]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(13),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(13),
      O => \s_axi_rdata[13]_i_2_n_0\
    );
\s_axi_rdata[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(13),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(13),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[13]_i_3_n_0\
    );
\s_axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(13),
      I1 => minval(13),
      I2 => s_axi_araddr(1),
      I3 => data4(13),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[13]\,
      O => \s_axi_rdata[13]_i_4_n_0\
    );
\s_axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[14]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(14),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(14),
      O => \s_axi_rdata[14]_i_2_n_0\
    );
\s_axi_rdata[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(14),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(14),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[14]_i_3_n_0\
    );
\s_axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(14),
      I1 => minval(14),
      I2 => s_axi_araddr(1),
      I3 => data4(14),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[14]\,
      O => \s_axi_rdata[14]_i_4_n_0\
    );
\s_axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[15]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(15),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(15),
      O => \s_axi_rdata[15]_i_2_n_0\
    );
\s_axi_rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(15),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(15),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[15]_i_3_n_0\
    );
\s_axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(15),
      I1 => minval(15),
      I2 => s_axi_araddr(1),
      I3 => data4(15),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[15]\,
      O => \s_axi_rdata[15]_i_4_n_0\
    );
\s_axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888BB88B888"
    )
        port map (
      I0 => \s_axi_rdata[16]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(16),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(16),
      O => \s_axi_rdata[16]_i_2_n_0\
    );
\s_axi_rdata[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(16),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(16),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[16]_i_3_n_0\
    );
\s_axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(16),
      I1 => minval(16),
      I2 => s_axi_araddr(1),
      I3 => data4(16),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[16]\,
      O => \s_axi_rdata[16]_i_4_n_0\
    );
\s_axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[17]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(17),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(17),
      O => \s_axi_rdata[17]_i_2_n_0\
    );
\s_axi_rdata[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(17),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(17),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[17]_i_3_n_0\
    );
\s_axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(17),
      I1 => minval(17),
      I2 => s_axi_araddr(1),
      I3 => data4(17),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[17]\,
      O => \s_axi_rdata[17]_i_4_n_0\
    );
\s_axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[18]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(18),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(18),
      O => \s_axi_rdata[18]_i_2_n_0\
    );
\s_axi_rdata[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(18),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(18),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[18]_i_3_n_0\
    );
\s_axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(18),
      I1 => minval(18),
      I2 => s_axi_araddr(1),
      I3 => data4(18),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[18]\,
      O => \s_axi_rdata[18]_i_4_n_0\
    );
\s_axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[19]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(19),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(19),
      O => \s_axi_rdata[19]_i_2_n_0\
    );
\s_axi_rdata[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(19),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(19),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[19]_i_3_n_0\
    );
\s_axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(19),
      I1 => minval(19),
      I2 => s_axi_araddr(1),
      I3 => data4(19),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[19]\,
      O => \s_axi_rdata[19]_i_4_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => countgt(1),
      I1 => \s_axi_rdata_reg[2]\,
      I2 => cyclecount(1),
      I3 => \s_axi_rdata_reg[2]_0\,
      I4 => s_axi_araddr(3),
      I5 => \s_axi_rdata_reg[1]_i_2_n_0\,
      O => D(1)
    );
\s_axi_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \threshold_latched_reg[31]_0\(1),
      I1 => s_axi_araddr(1),
      I2 => Q(1),
      I3 => s_axi_araddr(0),
      I4 => done,
      O => \s_axi_rdata[1]_i_3_n_0\
    );
\s_axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(1),
      I1 => minval(1),
      I2 => s_axi_araddr(1),
      I3 => data4(1),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[1]\,
      O => \s_axi_rdata[1]_i_4_n_0\
    );
\s_axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[20]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(20),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(20),
      O => \s_axi_rdata[20]_i_2_n_0\
    );
\s_axi_rdata[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(20),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(20),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[20]_i_3_n_0\
    );
\s_axi_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(20),
      I1 => minval(20),
      I2 => s_axi_araddr(1),
      I3 => data4(20),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[20]\,
      O => \s_axi_rdata[20]_i_4_n_0\
    );
\s_axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[21]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(21),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(21),
      O => \s_axi_rdata[21]_i_2_n_0\
    );
\s_axi_rdata[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(21),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(21),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[21]_i_3_n_0\
    );
\s_axi_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(21),
      I1 => minval(21),
      I2 => s_axi_araddr(1),
      I3 => data4(21),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[21]\,
      O => \s_axi_rdata[21]_i_4_n_0\
    );
\s_axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[22]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(22),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(22),
      O => \s_axi_rdata[22]_i_2_n_0\
    );
\s_axi_rdata[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(22),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(22),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[22]_i_3_n_0\
    );
\s_axi_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(22),
      I1 => minval(22),
      I2 => s_axi_araddr(1),
      I3 => data4(22),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[22]\,
      O => \s_axi_rdata[22]_i_4_n_0\
    );
\s_axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[23]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(23),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(23),
      O => \s_axi_rdata[23]_i_2_n_0\
    );
\s_axi_rdata[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(23),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(23),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[23]_i_3_n_0\
    );
\s_axi_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(23),
      I1 => minval(23),
      I2 => s_axi_araddr(1),
      I3 => data4(23),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[23]\,
      O => \s_axi_rdata[23]_i_4_n_0\
    );
\s_axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[24]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(24),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(24),
      O => \s_axi_rdata[24]_i_2_n_0\
    );
\s_axi_rdata[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(24),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(24),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[24]_i_3_n_0\
    );
\s_axi_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(24),
      I1 => minval(24),
      I2 => s_axi_araddr(1),
      I3 => data4(24),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[24]\,
      O => \s_axi_rdata[24]_i_4_n_0\
    );
\s_axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[25]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(25),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(25),
      O => \s_axi_rdata[25]_i_2_n_0\
    );
\s_axi_rdata[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(25),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(25),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[25]_i_3_n_0\
    );
\s_axi_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(25),
      I1 => minval(25),
      I2 => s_axi_araddr(1),
      I3 => data4(25),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[25]\,
      O => \s_axi_rdata[25]_i_4_n_0\
    );
\s_axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[26]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(26),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(26),
      O => \s_axi_rdata[26]_i_2_n_0\
    );
\s_axi_rdata[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(26),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(26),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[26]_i_3_n_0\
    );
\s_axi_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(26),
      I1 => minval(26),
      I2 => s_axi_araddr(1),
      I3 => data4(26),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[26]\,
      O => \s_axi_rdata[26]_i_4_n_0\
    );
\s_axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[27]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(27),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(27),
      O => \s_axi_rdata[27]_i_2_n_0\
    );
\s_axi_rdata[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(27),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(27),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[27]_i_3_n_0\
    );
\s_axi_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(27),
      I1 => minval(27),
      I2 => s_axi_araddr(1),
      I3 => data4(27),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[27]\,
      O => \s_axi_rdata[27]_i_4_n_0\
    );
\s_axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[28]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(28),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(28),
      O => \s_axi_rdata[28]_i_2_n_0\
    );
\s_axi_rdata[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(28),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(28),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[28]_i_3_n_0\
    );
\s_axi_rdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(28),
      I1 => minval(28),
      I2 => s_axi_araddr(1),
      I3 => data4(28),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[28]\,
      O => \s_axi_rdata[28]_i_4_n_0\
    );
\s_axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[29]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(29),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(29),
      O => \s_axi_rdata[29]_i_2_n_0\
    );
\s_axi_rdata[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(29),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(29),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[29]_i_3_n_0\
    );
\s_axi_rdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(29),
      I1 => minval(29),
      I2 => s_axi_araddr(1),
      I3 => data4(29),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[29]\,
      O => \s_axi_rdata[29]_i_4_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => countgt(2),
      I1 => \s_axi_rdata_reg[2]\,
      I2 => cyclecount(2),
      I3 => \s_axi_rdata_reg[2]_0\,
      I4 => s_axi_araddr(3),
      I5 => \s_axi_rdata_reg[2]_i_4_n_0\,
      O => D(2)
    );
\s_axi_rdata[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \threshold_latched_reg[31]_0\(2),
      I1 => s_axi_araddr(1),
      I2 => Q(2),
      I3 => s_axi_araddr(0),
      I4 => core_busy,
      O => \s_axi_rdata[2]_i_5_n_0\
    );
\s_axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(2),
      I1 => minval(2),
      I2 => s_axi_araddr(1),
      I3 => data4(2),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[2]\,
      O => \s_axi_rdata[2]_i_6_n_0\
    );
\s_axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(30),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(30),
      O => \s_axi_rdata[30]_i_2_n_0\
    );
\s_axi_rdata[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(30),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(30),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[30]_i_3_n_0\
    );
\s_axi_rdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(30),
      I1 => minval(30),
      I2 => s_axi_araddr(1),
      I3 => data4(30),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[30]\,
      O => \s_axi_rdata[30]_i_4_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_5_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(31),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(31),
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(31),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(31),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[31]_i_4_n_0\
    );
\s_axi_rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(31),
      I1 => minval(31),
      I2 => s_axi_araddr(1),
      I3 => data4(31),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[31]\,
      O => \s_axi_rdata[31]_i_5_n_0\
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(3),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(3),
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(3),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[3]_i_3_n_0\
    );
\s_axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(3),
      I1 => minval(3),
      I2 => s_axi_araddr(1),
      I3 => data4(3),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[3]\,
      O => \s_axi_rdata[3]_i_4_n_0\
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[4]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(4),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(4),
      O => \s_axi_rdata[4]_i_2_n_0\
    );
\s_axi_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(4),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[4]_i_3_n_0\
    );
\s_axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(4),
      I1 => minval(4),
      I2 => s_axi_araddr(1),
      I3 => data4(4),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[4]\,
      O => \s_axi_rdata[4]_i_4_n_0\
    );
\s_axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[5]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(5),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(5),
      O => \s_axi_rdata[5]_i_2_n_0\
    );
\s_axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(5),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(5),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[5]_i_3_n_0\
    );
\s_axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(5),
      I1 => minval(5),
      I2 => s_axi_araddr(1),
      I3 => data4(5),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[5]\,
      O => \s_axi_rdata[5]_i_4_n_0\
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[6]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(6),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(6),
      O => \s_axi_rdata[6]_i_2_n_0\
    );
\s_axi_rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(6),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(6),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[6]_i_3_n_0\
    );
\s_axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(6),
      I1 => minval(6),
      I2 => s_axi_araddr(1),
      I3 => data4(6),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[6]\,
      O => \s_axi_rdata[6]_i_4_n_0\
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[7]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(7),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(7),
      O => \s_axi_rdata[7]_i_2_n_0\
    );
\s_axi_rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(7),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(7),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[7]_i_3_n_0\
    );
\s_axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(7),
      I1 => minval(7),
      I2 => s_axi_araddr(1),
      I3 => data4(7),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[7]\,
      O => \s_axi_rdata[7]_i_4_n_0\
    );
\s_axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(8),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(8),
      O => \s_axi_rdata[8]_i_2_n_0\
    );
\s_axi_rdata[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(8),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(8),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[8]_i_3_n_0\
    );
\s_axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(8),
      I1 => minval(8),
      I2 => s_axi_araddr(1),
      I3 => data4(8),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[8]\,
      O => \s_axi_rdata[8]_i_4_n_0\
    );
\s_axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_rdata[9]_i_4_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \threshold_latched_reg[31]_0\(9),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => Q(9),
      O => \s_axi_rdata[9]_i_2_n_0\
    );
\s_axi_rdata[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => countgt(9),
      I1 => s_axi_araddr(0),
      I2 => cyclecount(9),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[9]_i_3_n_0\
    );
\s_axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => maxval(9),
      I1 => minval(9),
      I2 => s_axi_araddr(1),
      I3 => data4(9),
      I4 => s_axi_araddr(0),
      I5 => \sum_reg_n_0_[9]\,
      O => \s_axi_rdata[9]_i_4_n_0\
    );
\s_axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[0]_i_2_n_0\,
      I1 => \s_axi_rdata[0]_i_3_n_0\,
      O => D(0),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[10]_i_2_n_0\,
      I1 => \s_axi_rdata[10]_i_3_n_0\,
      O => D(10),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[11]_i_2_n_0\,
      I1 => \s_axi_rdata[11]_i_3_n_0\,
      O => D(11),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[12]_i_2_n_0\,
      I1 => \s_axi_rdata[12]_i_3_n_0\,
      O => D(12),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[13]_i_2_n_0\,
      I1 => \s_axi_rdata[13]_i_3_n_0\,
      O => D(13),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[14]_i_2_n_0\,
      I1 => \s_axi_rdata[14]_i_3_n_0\,
      O => D(14),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[15]_i_2_n_0\,
      I1 => \s_axi_rdata[15]_i_3_n_0\,
      O => D(15),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[16]_i_2_n_0\,
      I1 => \s_axi_rdata[16]_i_3_n_0\,
      O => D(16),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[17]_i_2_n_0\,
      I1 => \s_axi_rdata[17]_i_3_n_0\,
      O => D(17),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[18]_i_2_n_0\,
      I1 => \s_axi_rdata[18]_i_3_n_0\,
      O => D(18),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[19]_i_2_n_0\,
      I1 => \s_axi_rdata[19]_i_3_n_0\,
      O => D(19),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[1]_i_3_n_0\,
      I1 => \s_axi_rdata[1]_i_4_n_0\,
      O => \s_axi_rdata_reg[1]_i_2_n_0\,
      S => s_axi_araddr(2)
    );
\s_axi_rdata_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[20]_i_2_n_0\,
      I1 => \s_axi_rdata[20]_i_3_n_0\,
      O => D(20),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[21]_i_2_n_0\,
      I1 => \s_axi_rdata[21]_i_3_n_0\,
      O => D(21),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[22]_i_2_n_0\,
      I1 => \s_axi_rdata[22]_i_3_n_0\,
      O => D(22),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[23]_i_2_n_0\,
      I1 => \s_axi_rdata[23]_i_3_n_0\,
      O => D(23),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[24]_i_2_n_0\,
      I1 => \s_axi_rdata[24]_i_3_n_0\,
      O => D(24),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[25]_i_2_n_0\,
      I1 => \s_axi_rdata[25]_i_3_n_0\,
      O => D(25),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[26]_i_2_n_0\,
      I1 => \s_axi_rdata[26]_i_3_n_0\,
      O => D(26),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[27]_i_2_n_0\,
      I1 => \s_axi_rdata[27]_i_3_n_0\,
      O => D(27),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[28]_i_2_n_0\,
      I1 => \s_axi_rdata[28]_i_3_n_0\,
      O => D(28),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[29]_i_2_n_0\,
      I1 => \s_axi_rdata[29]_i_3_n_0\,
      O => D(29),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[2]_i_5_n_0\,
      I1 => \s_axi_rdata[2]_i_6_n_0\,
      O => \s_axi_rdata_reg[2]_i_4_n_0\,
      S => s_axi_araddr(2)
    );
\s_axi_rdata_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[30]_i_2_n_0\,
      I1 => \s_axi_rdata[30]_i_3_n_0\,
      O => D(30),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      O => D(31),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[3]_i_2_n_0\,
      I1 => \s_axi_rdata[3]_i_3_n_0\,
      O => D(3),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[4]_i_2_n_0\,
      I1 => \s_axi_rdata[4]_i_3_n_0\,
      O => D(4),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[5]_i_2_n_0\,
      I1 => \s_axi_rdata[5]_i_3_n_0\,
      O => D(5),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[6]_i_2_n_0\,
      I1 => \s_axi_rdata[6]_i_3_n_0\,
      O => D(6),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[7]_i_2_n_0\,
      I1 => \s_axi_rdata[7]_i_3_n_0\,
      O => D(7),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => \s_axi_rdata[8]_i_3_n_0\,
      O => D(8),
      S => s_axi_araddr(3)
    );
\s_axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[9]_i_2_n_0\,
      I1 => \s_axi_rdata[9]_i_3_n_0\,
      O => D(9),
      S => s_axi_araddr(3)
    );
\state0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state0_inferred__0/i__carry_n_0\,
      CO(2) => \state0_inferred__0/i__carry_n_1\,
      CO(1) => \state0_inferred__0/i__carry_n_2\,
      CO(0) => \state0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_state0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\state0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state0_inferred__0/i__carry_n_0\,
      CO(3) => \state0_inferred__0/i__carry__0_n_0\,
      CO(2) => \state0_inferred__0/i__carry__0_n_1\,
      CO(1) => \state0_inferred__0/i__carry__0_n_2\,
      CO(0) => \state0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\state0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state0_inferred__0/i__carry__0_n_0\,
      CO(3) => \state0_inferred__0/i__carry__1_n_0\,
      CO(2) => \state0_inferred__0/i__carry__1_n_1\,
      CO(1) => \state0_inferred__0/i__carry__1_n_2\,
      CO(0) => \state0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_state0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\state0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state0_inferred__0/i__carry__1_n_0\,
      CO(3) => \state0_inferred__0/i__carry__2_n_0\,
      CO(2) => \state0_inferred__0/i__carry__2_n_1\,
      CO(1) => \state0_inferred__0/i__carry__2_n_2\,
      CO(0) => \state0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_state0_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => pending_idx(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(4 downto 1),
      S(3 downto 0) => pending_idx(4 downto 1)
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3) => \state1_carry__0_n_0\,
      CO(2) => \state1_carry__0_n_1\,
      CO(1) => \state1_carry__0_n_2\,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(8 downto 5),
      S(3 downto 0) => pending_idx(8 downto 5)
    );
\state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__0_n_0\,
      CO(3) => \state1_carry__1_n_0\,
      CO(2) => \state1_carry__1_n_1\,
      CO(1) => \state1_carry__1_n_2\,
      CO(0) => \state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(12 downto 9),
      S(3 downto 0) => pending_idx(12 downto 9)
    );
\state1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__1_n_0\,
      CO(3) => \state1_carry__2_n_0\,
      CO(2) => \state1_carry__2_n_1\,
      CO(1) => \state1_carry__2_n_2\,
      CO(0) => \state1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(16 downto 13),
      S(3 downto 0) => pending_idx(16 downto 13)
    );
\state1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__2_n_0\,
      CO(3) => \state1_carry__3_n_0\,
      CO(2) => \state1_carry__3_n_1\,
      CO(1) => \state1_carry__3_n_2\,
      CO(0) => \state1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(20 downto 17),
      S(3 downto 0) => pending_idx(20 downto 17)
    );
\state1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__3_n_0\,
      CO(3) => \state1_carry__4_n_0\,
      CO(2) => \state1_carry__4_n_1\,
      CO(1) => \state1_carry__4_n_2\,
      CO(0) => \state1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(24 downto 21),
      S(3 downto 0) => pending_idx(24 downto 21)
    );
\state1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__4_n_0\,
      CO(3) => \state1_carry__5_n_0\,
      CO(2) => \state1_carry__5_n_1\,
      CO(1) => \state1_carry__5_n_2\,
      CO(0) => \state1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(28 downto 25),
      S(3 downto 0) => pending_idx(28 downto 25)
    );
\state1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_state1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \state1_carry__6_n_2\,
      CO(0) => \state1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_state1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in4(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => pending_idx(31 downto 29)
    );
\sum[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(0),
      O => \sum[0]_i_1_n_0\
    );
\sum[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(10),
      O => \sum[10]_i_1_n_0\
    );
\sum[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(11),
      O => \sum[11]_i_1_n_0\
    );
\sum[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[11]\,
      I1 => bram_rdata(11),
      O => \sum[11]_i_3_n_0\
    );
\sum[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[10]\,
      I1 => bram_rdata(10),
      O => \sum[11]_i_4_n_0\
    );
\sum[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[9]\,
      I1 => bram_rdata(9),
      O => \sum[11]_i_5_n_0\
    );
\sum[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[8]\,
      I1 => bram_rdata(8),
      O => \sum[11]_i_6_n_0\
    );
\sum[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(12),
      O => \sum[12]_i_1_n_0\
    );
\sum[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(13),
      O => \sum[13]_i_1_n_0\
    );
\sum[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(14),
      O => \sum[14]_i_1_n_0\
    );
\sum[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(15),
      O => \sum[15]_i_1_n_0\
    );
\sum[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[15]\,
      I1 => bram_rdata(15),
      O => \sum[15]_i_3_n_0\
    );
\sum[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[14]\,
      I1 => bram_rdata(14),
      O => \sum[15]_i_4_n_0\
    );
\sum[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[13]\,
      I1 => bram_rdata(13),
      O => \sum[15]_i_5_n_0\
    );
\sum[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[12]\,
      I1 => bram_rdata(12),
      O => \sum[15]_i_6_n_0\
    );
\sum[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(16),
      O => \sum[16]_i_1_n_0\
    );
\sum[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(17),
      O => \sum[17]_i_1_n_0\
    );
\sum[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(18),
      O => \sum[18]_i_1_n_0\
    );
\sum[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(19),
      O => \sum[19]_i_1_n_0\
    );
\sum[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[19]\,
      I1 => bram_rdata(19),
      O => \sum[19]_i_3_n_0\
    );
\sum[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[18]\,
      I1 => bram_rdata(18),
      O => \sum[19]_i_4_n_0\
    );
\sum[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[17]\,
      I1 => bram_rdata(17),
      O => \sum[19]_i_5_n_0\
    );
\sum[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[16]\,
      I1 => bram_rdata(16),
      O => \sum[19]_i_6_n_0\
    );
\sum[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(1),
      O => \sum[1]_i_1_n_0\
    );
\sum[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(20),
      O => \sum[20]_i_1_n_0\
    );
\sum[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(21),
      O => \sum[21]_i_1_n_0\
    );
\sum[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(22),
      O => \sum[22]_i_1_n_0\
    );
\sum[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(23),
      O => \sum[23]_i_1_n_0\
    );
\sum[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[23]\,
      I1 => bram_rdata(23),
      O => \sum[23]_i_3_n_0\
    );
\sum[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[22]\,
      I1 => bram_rdata(22),
      O => \sum[23]_i_4_n_0\
    );
\sum[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[21]\,
      I1 => bram_rdata(21),
      O => \sum[23]_i_5_n_0\
    );
\sum[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[20]\,
      I1 => bram_rdata(20),
      O => \sum[23]_i_6_n_0\
    );
\sum[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(24),
      O => \sum[24]_i_1_n_0\
    );
\sum[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(25),
      O => \sum[25]_i_1_n_0\
    );
\sum[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(26),
      O => \sum[26]_i_1_n_0\
    );
\sum[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(27),
      O => \sum[27]_i_1_n_0\
    );
\sum[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[27]\,
      I1 => bram_rdata(27),
      O => \sum[27]_i_3_n_0\
    );
\sum[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[26]\,
      I1 => bram_rdata(26),
      O => \sum[27]_i_4_n_0\
    );
\sum[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[25]\,
      I1 => bram_rdata(25),
      O => \sum[27]_i_5_n_0\
    );
\sum[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[24]\,
      I1 => bram_rdata(24),
      O => \sum[27]_i_6_n_0\
    );
\sum[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(28),
      O => \sum[28]_i_1_n_0\
    );
\sum[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(29),
      O => \sum[29]_i_1_n_0\
    );
\sum[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(2),
      O => \sum[2]_i_1_n_0\
    );
\sum[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(30),
      O => \sum[30]_i_1_n_0\
    );
\sum[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(31),
      O => \sum[31]_i_1_n_0\
    );
\sum[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[31]\,
      I1 => bram_rdata(31),
      O => \sum[31]_i_3_n_0\
    );
\sum[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[30]\,
      I1 => bram_rdata(30),
      O => \sum[31]_i_4_n_0\
    );
\sum[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[29]\,
      I1 => bram_rdata(29),
      O => \sum[31]_i_5_n_0\
    );
\sum[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[28]\,
      I1 => bram_rdata(28),
      O => \sum[31]_i_6_n_0\
    );
\sum[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(32),
      O => \sum[32]_i_1_n_0\
    );
\sum[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(33),
      O => \sum[33]_i_1_n_0\
    );
\sum[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(34),
      O => \sum[34]_i_1_n_0\
    );
\sum[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(35),
      O => \sum[35]_i_1_n_0\
    );
\sum[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(36),
      O => \sum[36]_i_1_n_0\
    );
\sum[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(37),
      O => \sum[37]_i_1_n_0\
    );
\sum[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(38),
      O => \sum[38]_i_1_n_0\
    );
\sum[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(39),
      O => \sum[39]_i_1_n_0\
    );
\sum[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(3),
      O => \sum[3]_i_1_n_0\
    );
\sum[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[3]\,
      I1 => bram_rdata(3),
      O => \sum[3]_i_3_n_0\
    );
\sum[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[2]\,
      I1 => bram_rdata(2),
      O => \sum[3]_i_4_n_0\
    );
\sum[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[1]\,
      I1 => bram_rdata(1),
      O => \sum[3]_i_5_n_0\
    );
\sum[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[0]\,
      I1 => bram_rdata(0),
      O => \sum[3]_i_6_n_0\
    );
\sum[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(40),
      O => \sum[40]_i_1_n_0\
    );
\sum[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(41),
      O => \sum[41]_i_1_n_0\
    );
\sum[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(42),
      O => \sum[42]_i_1_n_0\
    );
\sum[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(43),
      O => \sum[43]_i_1_n_0\
    );
\sum[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(44),
      O => \sum[44]_i_1_n_0\
    );
\sum[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(45),
      O => \sum[45]_i_1_n_0\
    );
\sum[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(46),
      O => \sum[46]_i_1_n_0\
    );
\sum[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(47),
      O => \sum[47]_i_1_n_0\
    );
\sum[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(48),
      O => \sum[48]_i_1_n_0\
    );
\sum[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(49),
      O => \sum[49]_i_1_n_0\
    );
\sum[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(4),
      O => \sum[4]_i_1_n_0\
    );
\sum[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(50),
      O => \sum[50]_i_1_n_0\
    );
\sum[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(51),
      O => \sum[51]_i_1_n_0\
    );
\sum[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(52),
      O => \sum[52]_i_1_n_0\
    );
\sum[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(53),
      O => \sum[53]_i_1_n_0\
    );
\sum[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(54),
      O => \sum[54]_i_1_n_0\
    );
\sum[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(55),
      O => \sum[55]_i_1_n_0\
    );
\sum[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(56),
      O => \sum[56]_i_1_n_0\
    );
\sum[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(57),
      O => \sum[57]_i_1_n_0\
    );
\sum[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(58),
      O => \sum[58]_i_1_n_0\
    );
\sum[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(59),
      O => \sum[59]_i_1_n_0\
    );
\sum[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(5),
      O => \sum[5]_i_1_n_0\
    );
\sum[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(60),
      O => \sum[60]_i_1_n_0\
    );
\sum[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(61),
      O => \sum[61]_i_1_n_0\
    );
\sum[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(62),
      O => \sum[62]_i_1_n_0\
    );
\sum[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => \length_latched[31]_i_1_n_0\,
      O => \sum[63]_i_1_n_0\
    );
\sum[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(63),
      O => \sum[63]_i_2_n_0\
    );
\sum[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(6),
      O => \sum[6]_i_1_n_0\
    );
\sum[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(7),
      O => \sum[7]_i_1_n_0\
    );
\sum[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[7]\,
      I1 => bram_rdata(7),
      O => \sum[7]_i_3_n_0\
    );
\sum[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[6]\,
      I1 => bram_rdata(6),
      O => \sum[7]_i_4_n_0\
    );
\sum[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[5]\,
      I1 => bram_rdata(5),
      O => \sum[7]_i_5_n_0\
    );
\sum[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[4]\,
      I1 => bram_rdata(4),
      O => \sum[7]_i_6_n_0\
    );
\sum[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(8),
      O => \sum[8]_i_1_n_0\
    );
\sum[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_rep_n_0\,
      I1 => in11(9),
      O => \sum[9]_i_1_n_0\
    );
\sum_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[0]_i_1_n_0\,
      Q => \sum_reg_n_0_[0]\
    );
\sum_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[10]_i_1_n_0\,
      Q => \sum_reg_n_0_[10]\
    );
\sum_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[11]_i_1_n_0\,
      Q => \sum_reg_n_0_[11]\
    );
\sum_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[7]_i_2_n_0\,
      CO(3) => \sum_reg[11]_i_2_n_0\,
      CO(2) => \sum_reg[11]_i_2_n_1\,
      CO(1) => \sum_reg[11]_i_2_n_2\,
      CO(0) => \sum_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[11]\,
      DI(2) => \sum_reg_n_0_[10]\,
      DI(1) => \sum_reg_n_0_[9]\,
      DI(0) => \sum_reg_n_0_[8]\,
      O(3 downto 0) => in11(11 downto 8),
      S(3) => \sum[11]_i_3_n_0\,
      S(2) => \sum[11]_i_4_n_0\,
      S(1) => \sum[11]_i_5_n_0\,
      S(0) => \sum[11]_i_6_n_0\
    );
\sum_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[12]_i_1_n_0\,
      Q => \sum_reg_n_0_[12]\
    );
\sum_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[13]_i_1_n_0\,
      Q => \sum_reg_n_0_[13]\
    );
\sum_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[14]_i_1_n_0\,
      Q => \sum_reg_n_0_[14]\
    );
\sum_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[15]_i_1_n_0\,
      Q => \sum_reg_n_0_[15]\
    );
\sum_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[11]_i_2_n_0\,
      CO(3) => \sum_reg[15]_i_2_n_0\,
      CO(2) => \sum_reg[15]_i_2_n_1\,
      CO(1) => \sum_reg[15]_i_2_n_2\,
      CO(0) => \sum_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[15]\,
      DI(2) => \sum_reg_n_0_[14]\,
      DI(1) => \sum_reg_n_0_[13]\,
      DI(0) => \sum_reg_n_0_[12]\,
      O(3 downto 0) => in11(15 downto 12),
      S(3) => \sum[15]_i_3_n_0\,
      S(2) => \sum[15]_i_4_n_0\,
      S(1) => \sum[15]_i_5_n_0\,
      S(0) => \sum[15]_i_6_n_0\
    );
\sum_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[16]_i_1_n_0\,
      Q => \sum_reg_n_0_[16]\
    );
\sum_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[17]_i_1_n_0\,
      Q => \sum_reg_n_0_[17]\
    );
\sum_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[18]_i_1_n_0\,
      Q => \sum_reg_n_0_[18]\
    );
\sum_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[19]_i_1_n_0\,
      Q => \sum_reg_n_0_[19]\
    );
\sum_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[15]_i_2_n_0\,
      CO(3) => \sum_reg[19]_i_2_n_0\,
      CO(2) => \sum_reg[19]_i_2_n_1\,
      CO(1) => \sum_reg[19]_i_2_n_2\,
      CO(0) => \sum_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[19]\,
      DI(2) => \sum_reg_n_0_[18]\,
      DI(1) => \sum_reg_n_0_[17]\,
      DI(0) => \sum_reg_n_0_[16]\,
      O(3 downto 0) => in11(19 downto 16),
      S(3) => \sum[19]_i_3_n_0\,
      S(2) => \sum[19]_i_4_n_0\,
      S(1) => \sum[19]_i_5_n_0\,
      S(0) => \sum[19]_i_6_n_0\
    );
\sum_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[1]_i_1_n_0\,
      Q => \sum_reg_n_0_[1]\
    );
\sum_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[20]_i_1_n_0\,
      Q => \sum_reg_n_0_[20]\
    );
\sum_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[21]_i_1_n_0\,
      Q => \sum_reg_n_0_[21]\
    );
\sum_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[22]_i_1_n_0\,
      Q => \sum_reg_n_0_[22]\
    );
\sum_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[23]_i_1_n_0\,
      Q => \sum_reg_n_0_[23]\
    );
\sum_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[19]_i_2_n_0\,
      CO(3) => \sum_reg[23]_i_2_n_0\,
      CO(2) => \sum_reg[23]_i_2_n_1\,
      CO(1) => \sum_reg[23]_i_2_n_2\,
      CO(0) => \sum_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[23]\,
      DI(2) => \sum_reg_n_0_[22]\,
      DI(1) => \sum_reg_n_0_[21]\,
      DI(0) => \sum_reg_n_0_[20]\,
      O(3 downto 0) => in11(23 downto 20),
      S(3) => \sum[23]_i_3_n_0\,
      S(2) => \sum[23]_i_4_n_0\,
      S(1) => \sum[23]_i_5_n_0\,
      S(0) => \sum[23]_i_6_n_0\
    );
\sum_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[24]_i_1_n_0\,
      Q => \sum_reg_n_0_[24]\
    );
\sum_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[25]_i_1_n_0\,
      Q => \sum_reg_n_0_[25]\
    );
\sum_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[26]_i_1_n_0\,
      Q => \sum_reg_n_0_[26]\
    );
\sum_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[27]_i_1_n_0\,
      Q => \sum_reg_n_0_[27]\
    );
\sum_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[23]_i_2_n_0\,
      CO(3) => \sum_reg[27]_i_2_n_0\,
      CO(2) => \sum_reg[27]_i_2_n_1\,
      CO(1) => \sum_reg[27]_i_2_n_2\,
      CO(0) => \sum_reg[27]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[27]\,
      DI(2) => \sum_reg_n_0_[26]\,
      DI(1) => \sum_reg_n_0_[25]\,
      DI(0) => \sum_reg_n_0_[24]\,
      O(3 downto 0) => in11(27 downto 24),
      S(3) => \sum[27]_i_3_n_0\,
      S(2) => \sum[27]_i_4_n_0\,
      S(1) => \sum[27]_i_5_n_0\,
      S(0) => \sum[27]_i_6_n_0\
    );
\sum_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[28]_i_1_n_0\,
      Q => \sum_reg_n_0_[28]\
    );
\sum_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[29]_i_1_n_0\,
      Q => \sum_reg_n_0_[29]\
    );
\sum_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[2]_i_1_n_0\,
      Q => \sum_reg_n_0_[2]\
    );
\sum_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[30]_i_1_n_0\,
      Q => \sum_reg_n_0_[30]\
    );
\sum_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[31]_i_1_n_0\,
      Q => \sum_reg_n_0_[31]\
    );
\sum_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[27]_i_2_n_0\,
      CO(3) => \sum_reg[31]_i_2_n_0\,
      CO(2) => \sum_reg[31]_i_2_n_1\,
      CO(1) => \sum_reg[31]_i_2_n_2\,
      CO(0) => \sum_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[31]\,
      DI(2) => \sum_reg_n_0_[30]\,
      DI(1) => \sum_reg_n_0_[29]\,
      DI(0) => \sum_reg_n_0_[28]\,
      O(3 downto 0) => in11(31 downto 28),
      S(3) => \sum[31]_i_3_n_0\,
      S(2) => \sum[31]_i_4_n_0\,
      S(1) => \sum[31]_i_5_n_0\,
      S(0) => \sum[31]_i_6_n_0\
    );
\sum_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[32]_i_1_n_0\,
      Q => data4(0)
    );
\sum_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[33]_i_1_n_0\,
      Q => data4(1)
    );
\sum_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[34]_i_1_n_0\,
      Q => data4(2)
    );
\sum_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[35]_i_1_n_0\,
      Q => data4(3)
    );
\sum_reg[35]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[31]_i_2_n_0\,
      CO(3) => \sum_reg[35]_i_2_n_0\,
      CO(2) => \sum_reg[35]_i_2_n_1\,
      CO(1) => \sum_reg[35]_i_2_n_2\,
      CO(0) => \sum_reg[35]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(35 downto 32),
      S(3 downto 0) => data4(3 downto 0)
    );
\sum_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[36]_i_1_n_0\,
      Q => data4(4)
    );
\sum_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[37]_i_1_n_0\,
      Q => data4(5)
    );
\sum_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[38]_i_1_n_0\,
      Q => data4(6)
    );
\sum_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[39]_i_1_n_0\,
      Q => data4(7)
    );
\sum_reg[39]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[35]_i_2_n_0\,
      CO(3) => \sum_reg[39]_i_2_n_0\,
      CO(2) => \sum_reg[39]_i_2_n_1\,
      CO(1) => \sum_reg[39]_i_2_n_2\,
      CO(0) => \sum_reg[39]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(39 downto 36),
      S(3 downto 0) => data4(7 downto 4)
    );
\sum_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[3]_i_1_n_0\,
      Q => \sum_reg_n_0_[3]\
    );
\sum_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_reg[3]_i_2_n_0\,
      CO(2) => \sum_reg[3]_i_2_n_1\,
      CO(1) => \sum_reg[3]_i_2_n_2\,
      CO(0) => \sum_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[3]\,
      DI(2) => \sum_reg_n_0_[2]\,
      DI(1) => \sum_reg_n_0_[1]\,
      DI(0) => \sum_reg_n_0_[0]\,
      O(3 downto 0) => in11(3 downto 0),
      S(3) => \sum[3]_i_3_n_0\,
      S(2) => \sum[3]_i_4_n_0\,
      S(1) => \sum[3]_i_5_n_0\,
      S(0) => \sum[3]_i_6_n_0\
    );
\sum_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[40]_i_1_n_0\,
      Q => data4(8)
    );
\sum_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[41]_i_1_n_0\,
      Q => data4(9)
    );
\sum_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[42]_i_1_n_0\,
      Q => data4(10)
    );
\sum_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[43]_i_1_n_0\,
      Q => data4(11)
    );
\sum_reg[43]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[39]_i_2_n_0\,
      CO(3) => \sum_reg[43]_i_2_n_0\,
      CO(2) => \sum_reg[43]_i_2_n_1\,
      CO(1) => \sum_reg[43]_i_2_n_2\,
      CO(0) => \sum_reg[43]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(43 downto 40),
      S(3 downto 0) => data4(11 downto 8)
    );
\sum_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[44]_i_1_n_0\,
      Q => data4(12)
    );
\sum_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[45]_i_1_n_0\,
      Q => data4(13)
    );
\sum_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[46]_i_1_n_0\,
      Q => data4(14)
    );
\sum_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[47]_i_1_n_0\,
      Q => data4(15)
    );
\sum_reg[47]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[43]_i_2_n_0\,
      CO(3) => \sum_reg[47]_i_2_n_0\,
      CO(2) => \sum_reg[47]_i_2_n_1\,
      CO(1) => \sum_reg[47]_i_2_n_2\,
      CO(0) => \sum_reg[47]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(47 downto 44),
      S(3 downto 0) => data4(15 downto 12)
    );
\sum_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[48]_i_1_n_0\,
      Q => data4(16)
    );
\sum_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[49]_i_1_n_0\,
      Q => data4(17)
    );
\sum_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[4]_i_1_n_0\,
      Q => \sum_reg_n_0_[4]\
    );
\sum_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[50]_i_1_n_0\,
      Q => data4(18)
    );
\sum_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[51]_i_1_n_0\,
      Q => data4(19)
    );
\sum_reg[51]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[47]_i_2_n_0\,
      CO(3) => \sum_reg[51]_i_2_n_0\,
      CO(2) => \sum_reg[51]_i_2_n_1\,
      CO(1) => \sum_reg[51]_i_2_n_2\,
      CO(0) => \sum_reg[51]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(51 downto 48),
      S(3 downto 0) => data4(19 downto 16)
    );
\sum_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[52]_i_1_n_0\,
      Q => data4(20)
    );
\sum_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[53]_i_1_n_0\,
      Q => data4(21)
    );
\sum_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[54]_i_1_n_0\,
      Q => data4(22)
    );
\sum_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[55]_i_1_n_0\,
      Q => data4(23)
    );
\sum_reg[55]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[51]_i_2_n_0\,
      CO(3) => \sum_reg[55]_i_2_n_0\,
      CO(2) => \sum_reg[55]_i_2_n_1\,
      CO(1) => \sum_reg[55]_i_2_n_2\,
      CO(0) => \sum_reg[55]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(55 downto 52),
      S(3 downto 0) => data4(23 downto 20)
    );
\sum_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[56]_i_1_n_0\,
      Q => data4(24)
    );
\sum_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[57]_i_1_n_0\,
      Q => data4(25)
    );
\sum_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[58]_i_1_n_0\,
      Q => data4(26)
    );
\sum_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[59]_i_1_n_0\,
      Q => data4(27)
    );
\sum_reg[59]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[55]_i_2_n_0\,
      CO(3) => \sum_reg[59]_i_2_n_0\,
      CO(2) => \sum_reg[59]_i_2_n_1\,
      CO(1) => \sum_reg[59]_i_2_n_2\,
      CO(0) => \sum_reg[59]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(59 downto 56),
      S(3 downto 0) => data4(27 downto 24)
    );
\sum_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[5]_i_1_n_0\,
      Q => \sum_reg_n_0_[5]\
    );
\sum_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[60]_i_1_n_0\,
      Q => data4(28)
    );
\sum_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[61]_i_1_n_0\,
      Q => data4(29)
    );
\sum_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[62]_i_1_n_0\,
      Q => data4(30)
    );
\sum_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[63]_i_2_n_0\,
      Q => data4(31)
    );
\sum_reg[63]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[59]_i_2_n_0\,
      CO(3) => \NLW_sum_reg[63]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \sum_reg[63]_i_3_n_1\,
      CO(1) => \sum_reg[63]_i_3_n_2\,
      CO(0) => \sum_reg[63]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(63 downto 60),
      S(3 downto 0) => data4(31 downto 28)
    );
\sum_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[6]_i_1_n_0\,
      Q => \sum_reg_n_0_[6]\
    );
\sum_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[7]_i_1_n_0\,
      Q => \sum_reg_n_0_[7]\
    );
\sum_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[3]_i_2_n_0\,
      CO(3) => \sum_reg[7]_i_2_n_0\,
      CO(2) => \sum_reg[7]_i_2_n_1\,
      CO(1) => \sum_reg[7]_i_2_n_2\,
      CO(0) => \sum_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[7]\,
      DI(2) => \sum_reg_n_0_[6]\,
      DI(1) => \sum_reg_n_0_[5]\,
      DI(0) => \sum_reg_n_0_[4]\,
      O(3 downto 0) => in11(7 downto 4),
      S(3) => \sum[7]_i_3_n_0\,
      S(2) => \sum[7]_i_4_n_0\,
      S(1) => \sum[7]_i_5_n_0\,
      S(0) => \sum[7]_i_6_n_0\
    );
\sum_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[8]_i_1_n_0\,
      Q => \sum_reg_n_0_[8]\
    );
\sum_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \sum[63]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \sum[9]_i_1_n_0\,
      Q => \sum_reg_n_0_[9]\
    );
\threshold_latched_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(0),
      Q => threshold_latched(0)
    );
\threshold_latched_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(10),
      Q => threshold_latched(10)
    );
\threshold_latched_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(11),
      Q => threshold_latched(11)
    );
\threshold_latched_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(12),
      Q => threshold_latched(12)
    );
\threshold_latched_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(13),
      Q => threshold_latched(13)
    );
\threshold_latched_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(14),
      Q => threshold_latched(14)
    );
\threshold_latched_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(15),
      Q => threshold_latched(15)
    );
\threshold_latched_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(16),
      Q => threshold_latched(16)
    );
\threshold_latched_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(17),
      Q => threshold_latched(17)
    );
\threshold_latched_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(18),
      Q => threshold_latched(18)
    );
\threshold_latched_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(19),
      Q => threshold_latched(19)
    );
\threshold_latched_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(1),
      Q => threshold_latched(1)
    );
\threshold_latched_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(20),
      Q => threshold_latched(20)
    );
\threshold_latched_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(21),
      Q => threshold_latched(21)
    );
\threshold_latched_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(22),
      Q => threshold_latched(22)
    );
\threshold_latched_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(23),
      Q => threshold_latched(23)
    );
\threshold_latched_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(24),
      Q => threshold_latched(24)
    );
\threshold_latched_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(25),
      Q => threshold_latched(25)
    );
\threshold_latched_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(26),
      Q => threshold_latched(26)
    );
\threshold_latched_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(27),
      Q => threshold_latched(27)
    );
\threshold_latched_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(28),
      Q => threshold_latched(28)
    );
\threshold_latched_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(29),
      Q => threshold_latched(29)
    );
\threshold_latched_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(2),
      Q => threshold_latched(2)
    );
\threshold_latched_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(30),
      Q => threshold_latched(30)
    );
\threshold_latched_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(31),
      Q => threshold_latched(31)
    );
\threshold_latched_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(3),
      Q => threshold_latched(3)
    );
\threshold_latched_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(4),
      Q => threshold_latched(4)
    );
\threshold_latched_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(5),
      Q => threshold_latched(5)
    );
\threshold_latched_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(6),
      Q => threshold_latched(6)
    );
\threshold_latched_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(7),
      Q => threshold_latched(7)
    );
\threshold_latched_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(8),
      Q => threshold_latched(8)
    );
\threshold_latched_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \length_latched[31]_i_1_n_0\,
      CLR => \^s_axi_aresetn_0\,
      D => \threshold_latched_reg[31]_0\(9),
      Q => threshold_latched(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_stats_accel_axil_0_0_stats_accel_axil is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_stats_accel_axil_0_0_stats_accel_axil : entity is "stats_accel_axil";
end bd_stats_accel_axil_0_0_stats_accel_axil;

architecture STRUCTURE of bd_stats_accel_axil_0_0_stats_accel_axil is
  signal aw_hold_valid0 : STD_LOGIC;
  signal \aw_hold_valid1__1\ : STD_LOGIC;
  signal aw_hold_valid_i_1_n_0 : STD_LOGIC;
  signal aw_hold_valid_reg_n_0 : STD_LOGIC;
  signal \awaddr_q_reg_n_0_[5]\ : STD_LOGIC;
  signal clear_done_pulse : STD_LOGIC;
  signal clear_done_pulse3_out : STD_LOGIC;
  signal length_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in0 : STD_LOGIC;
  signal reg_read : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal start_pulse : STD_LOGIC;
  signal start_pulse1_out : STD_LOGIC;
  signal threshold_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \threshold_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \threshold_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \threshold_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \threshold_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal u_core_n_0 : STD_LOGIC;
  signal w_hold_valid0 : STD_LOGIC;
  signal w_hold_valid_i_1_n_0 : STD_LOGIC;
  signal w_hold_valid_reg_n_0 : STD_LOGIC;
  signal wdata_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wdata_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[12]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[13]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[14]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[15]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[16]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[17]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[18]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[19]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[20]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[21]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[22]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[23]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[24]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[25]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[26]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[27]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[28]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[29]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[30]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[31]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \wdata_q_reg_n_0_[9]\ : STD_LOGIC;
  signal \wstrb_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \wstrb_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \wstrb_q_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aw_hold_valid_i_1 : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \length_reg[31]_i_2\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of s_axi_awready_INST_0 : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of s_axi_bvalid_i_1 : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_i_2\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_i_3\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of w_hold_valid_i_1 : label is "soft_lutpair121";
begin
  s_axi_bvalid_reg_0 <= \^s_axi_bvalid_reg_0\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
aw_hold_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F05C"
    )
        port map (
      I0 => w_hold_valid_reg_n_0,
      I1 => s_axi_awvalid,
      I2 => aw_hold_valid_reg_n_0,
      I3 => \^s_axi_bvalid_reg_0\,
      O => aw_hold_valid_i_1_n_0
    );
aw_hold_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => u_core_n_0,
      D => aw_hold_valid_i_1_n_0,
      Q => aw_hold_valid_reg_n_0
    );
\awaddr_q[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^s_axi_bvalid_reg_0\,
      I1 => aw_hold_valid_reg_n_0,
      I2 => s_axi_awvalid,
      O => aw_hold_valid0
    );
\awaddr_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => aw_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_awaddr(0),
      Q => p_0_in_0(0)
    );
\awaddr_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => aw_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_awaddr(1),
      Q => p_0_in_0(1)
    );
\awaddr_q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => aw_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_awaddr(2),
      Q => p_0_in0
    );
\awaddr_q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => aw_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_awaddr(3),
      Q => \awaddr_q_reg_n_0_[5]\
    );
clear_done_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => wdata_q(3),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => clear_done_pulse3_out
    );
clear_done_pulse_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => u_core_n_0,
      D => clear_done_pulse3_out,
      Q => clear_done_pulse
    );
\length_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_1_in0,
      O => p_0_in(15)
    );
\length_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => \wstrb_q_reg_n_0_[2]\,
      O => p_0_in(23)
    );
\length_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => \wstrb_q_reg_n_0_[3]\,
      O => p_0_in(31)
    );
\length_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => aw_hold_valid_reg_n_0,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => w_hold_valid_reg_n_0,
      O => \aw_hold_valid1__1\
    );
\length_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => \wstrb_q_reg_n_0_[0]\,
      O => p_0_in(7)
    );
\length_reg_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(7),
      D => wdata_q(0),
      PRE => u_core_n_0,
      Q => length_reg(0)
    );
\length_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(15),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[10]\,
      Q => length_reg(10)
    );
\length_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(15),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[11]\,
      Q => length_reg(11)
    );
\length_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(15),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[12]\,
      Q => length_reg(12)
    );
\length_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(15),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[13]\,
      Q => length_reg(13)
    );
\length_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(15),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[14]\,
      Q => length_reg(14)
    );
\length_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(15),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[15]\,
      Q => length_reg(15)
    );
\length_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(23),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[16]\,
      Q => length_reg(16)
    );
\length_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(23),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[17]\,
      Q => length_reg(17)
    );
\length_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(23),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[18]\,
      Q => length_reg(18)
    );
\length_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(23),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[19]\,
      Q => length_reg(19)
    );
\length_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(7),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[1]\,
      Q => length_reg(1)
    );
\length_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(23),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[20]\,
      Q => length_reg(20)
    );
\length_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(23),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[21]\,
      Q => length_reg(21)
    );
\length_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(23),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[22]\,
      Q => length_reg(22)
    );
\length_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(23),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[23]\,
      Q => length_reg(23)
    );
\length_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(31),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[24]\,
      Q => length_reg(24)
    );
\length_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(31),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[25]\,
      Q => length_reg(25)
    );
\length_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(31),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[26]\,
      Q => length_reg(26)
    );
\length_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(31),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[27]\,
      Q => length_reg(27)
    );
\length_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(31),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[28]\,
      Q => length_reg(28)
    );
\length_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(31),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[29]\,
      Q => length_reg(29)
    );
\length_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(7),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[2]\,
      Q => length_reg(2)
    );
\length_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(31),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[30]\,
      Q => length_reg(30)
    );
\length_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(31),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[31]\,
      Q => length_reg(31)
    );
\length_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(7),
      CLR => u_core_n_0,
      D => wdata_q(3),
      Q => length_reg(3)
    );
\length_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(7),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[4]\,
      Q => length_reg(4)
    );
\length_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(7),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[5]\,
      Q => length_reg(5)
    );
\length_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(7),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[6]\,
      Q => length_reg(6)
    );
\length_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(7),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[7]\,
      Q => length_reg(7)
    );
\length_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(15),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[8]\,
      Q => length_reg(8)
    );
\length_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => p_0_in(15),
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[9]\,
      Q => length_reg(9)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_hold_valid_reg_n_0,
      I1 => \^s_axi_bvalid_reg_0\,
      O => s_axi_awready
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C50"
    )
        port map (
      I0 => s_axi_bready,
      I1 => w_hold_valid_reg_n_0,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => aw_hold_valid_reg_n_0,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => u_core_n_0,
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid_reg_0\
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      O => \s_axi_rdata[2]_i_2_n_0\
    );
\s_axi_rdata[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(2),
      O => \s_axi_rdata[2]_i_3_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(0),
      Q => s_axi_rdata(0)
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(10),
      Q => s_axi_rdata(10)
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(11),
      Q => s_axi_rdata(11)
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(12),
      Q => s_axi_rdata(12)
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(13),
      Q => s_axi_rdata(13)
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(14),
      Q => s_axi_rdata(14)
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(15),
      Q => s_axi_rdata(15)
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(16),
      Q => s_axi_rdata(16)
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(17),
      Q => s_axi_rdata(17)
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(18),
      Q => s_axi_rdata(18)
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(19),
      Q => s_axi_rdata(19)
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(1),
      Q => s_axi_rdata(1)
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(20),
      Q => s_axi_rdata(20)
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(21),
      Q => s_axi_rdata(21)
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(22),
      Q => s_axi_rdata(22)
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(23),
      Q => s_axi_rdata(23)
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(24),
      Q => s_axi_rdata(24)
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(25),
      Q => s_axi_rdata(25)
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(26),
      Q => s_axi_rdata(26)
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(27),
      Q => s_axi_rdata(27)
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(28),
      Q => s_axi_rdata(28)
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(29),
      Q => s_axi_rdata(29)
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(2),
      Q => s_axi_rdata(2)
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(30),
      Q => s_axi_rdata(30)
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(31),
      Q => s_axi_rdata(31)
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(3),
      Q => s_axi_rdata(3)
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(4),
      Q => s_axi_rdata(4)
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(5),
      Q => s_axi_rdata(5)
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(6),
      Q => s_axi_rdata(6)
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(7),
      Q => s_axi_rdata(7)
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(8),
      Q => s_axi_rdata(8)
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => reg_read(9),
      Q => s_axi_rdata(9)
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid_reg_0\,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => u_core_n_0,
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_hold_valid_reg_n_0,
      I1 => \^s_axi_bvalid_reg_0\,
      O => s_axi_wready
    );
start_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => wdata_q(0),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => start_pulse1_out
    );
start_pulse_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => u_core_n_0,
      D => start_pulse1_out,
      Q => start_pulse
    );
\threshold_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => p_0_in_0(0),
      I4 => p_1_in0,
      I5 => p_0_in_0(1),
      O => \threshold_reg[15]_i_1_n_0\
    );
\threshold_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => p_0_in_0(0),
      I4 => \wstrb_q_reg_n_0_[2]\,
      I5 => p_0_in_0(1),
      O => \threshold_reg[23]_i_1_n_0\
    );
\threshold_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => p_0_in_0(0),
      I4 => \wstrb_q_reg_n_0_[3]\,
      I5 => p_0_in_0(1),
      O => \threshold_reg[31]_i_1_n_0\
    );
\threshold_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \aw_hold_valid1__1\,
      I1 => \awaddr_q_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => p_0_in_0(0),
      I4 => \wstrb_q_reg_n_0_[0]\,
      I5 => p_0_in_0(1),
      O => \threshold_reg[7]_i_1_n_0\
    );
\threshold_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[7]_i_1_n_0\,
      CLR => u_core_n_0,
      D => wdata_q(0),
      Q => threshold_reg(0)
    );
\threshold_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[15]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[10]\,
      Q => threshold_reg(10)
    );
\threshold_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[15]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[11]\,
      Q => threshold_reg(11)
    );
\threshold_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[15]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[12]\,
      Q => threshold_reg(12)
    );
\threshold_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[15]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[13]\,
      Q => threshold_reg(13)
    );
\threshold_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[15]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[14]\,
      Q => threshold_reg(14)
    );
\threshold_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[15]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[15]\,
      Q => threshold_reg(15)
    );
\threshold_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[23]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[16]\,
      Q => threshold_reg(16)
    );
\threshold_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[23]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[17]\,
      Q => threshold_reg(17)
    );
\threshold_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[23]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[18]\,
      Q => threshold_reg(18)
    );
\threshold_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[23]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[19]\,
      Q => threshold_reg(19)
    );
\threshold_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[7]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[1]\,
      Q => threshold_reg(1)
    );
\threshold_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[23]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[20]\,
      Q => threshold_reg(20)
    );
\threshold_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[23]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[21]\,
      Q => threshold_reg(21)
    );
\threshold_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[23]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[22]\,
      Q => threshold_reg(22)
    );
\threshold_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[23]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[23]\,
      Q => threshold_reg(23)
    );
\threshold_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[24]\,
      Q => threshold_reg(24)
    );
\threshold_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[25]\,
      Q => threshold_reg(25)
    );
\threshold_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[26]\,
      Q => threshold_reg(26)
    );
\threshold_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[27]\,
      Q => threshold_reg(27)
    );
\threshold_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[28]\,
      Q => threshold_reg(28)
    );
\threshold_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[29]\,
      Q => threshold_reg(29)
    );
\threshold_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[7]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[2]\,
      Q => threshold_reg(2)
    );
\threshold_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[30]\,
      Q => threshold_reg(30)
    );
\threshold_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[31]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[31]\,
      Q => threshold_reg(31)
    );
\threshold_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[7]_i_1_n_0\,
      CLR => u_core_n_0,
      D => wdata_q(3),
      Q => threshold_reg(3)
    );
\threshold_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[7]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[4]\,
      Q => threshold_reg(4)
    );
\threshold_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[7]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[5]\,
      Q => threshold_reg(5)
    );
\threshold_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[7]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[6]\,
      Q => threshold_reg(6)
    );
\threshold_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[7]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[7]\,
      Q => threshold_reg(7)
    );
\threshold_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[15]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[8]\,
      Q => threshold_reg(8)
    );
\threshold_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \threshold_reg[15]_i_1_n_0\,
      CLR => u_core_n_0,
      D => \wdata_q_reg_n_0_[9]\,
      Q => threshold_reg(9)
    );
u_core: entity work.bd_stats_accel_axil_0_0_stats_accel_core
     port map (
      D(31 downto 0) => reg_read(31 downto 0),
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]\,
      Q(31 downto 0) => length_reg(31 downto 0),
      bram_addr(9 downto 0) => bram_addr(9 downto 0),
      bram_rdata(31 downto 0) => bram_rdata(31 downto 0),
      clear_done_pulse => clear_done_pulse,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => u_core_n_0,
      \s_axi_rdata_reg[2]\ => \s_axi_rdata[2]_i_2_n_0\,
      \s_axi_rdata_reg[2]_0\ => \s_axi_rdata[2]_i_3_n_0\,
      start_pulse => start_pulse,
      \threshold_latched_reg[31]_0\(31 downto 0) => threshold_reg(31 downto 0)
    );
w_hold_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F05C"
    )
        port map (
      I0 => aw_hold_valid_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => w_hold_valid_reg_n_0,
      I3 => \^s_axi_bvalid_reg_0\,
      O => w_hold_valid_i_1_n_0
    );
w_hold_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => u_core_n_0,
      D => w_hold_valid_i_1_n_0,
      Q => w_hold_valid_reg_n_0
    );
\wdata_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(0),
      Q => wdata_q(0)
    );
\wdata_q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(10),
      Q => \wdata_q_reg_n_0_[10]\
    );
\wdata_q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(11),
      Q => \wdata_q_reg_n_0_[11]\
    );
\wdata_q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(12),
      Q => \wdata_q_reg_n_0_[12]\
    );
\wdata_q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(13),
      Q => \wdata_q_reg_n_0_[13]\
    );
\wdata_q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(14),
      Q => \wdata_q_reg_n_0_[14]\
    );
\wdata_q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(15),
      Q => \wdata_q_reg_n_0_[15]\
    );
\wdata_q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(16),
      Q => \wdata_q_reg_n_0_[16]\
    );
\wdata_q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(17),
      Q => \wdata_q_reg_n_0_[17]\
    );
\wdata_q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(18),
      Q => \wdata_q_reg_n_0_[18]\
    );
\wdata_q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(19),
      Q => \wdata_q_reg_n_0_[19]\
    );
\wdata_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(1),
      Q => \wdata_q_reg_n_0_[1]\
    );
\wdata_q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(20),
      Q => \wdata_q_reg_n_0_[20]\
    );
\wdata_q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(21),
      Q => \wdata_q_reg_n_0_[21]\
    );
\wdata_q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(22),
      Q => \wdata_q_reg_n_0_[22]\
    );
\wdata_q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(23),
      Q => \wdata_q_reg_n_0_[23]\
    );
\wdata_q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(24),
      Q => \wdata_q_reg_n_0_[24]\
    );
\wdata_q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(25),
      Q => \wdata_q_reg_n_0_[25]\
    );
\wdata_q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(26),
      Q => \wdata_q_reg_n_0_[26]\
    );
\wdata_q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(27),
      Q => \wdata_q_reg_n_0_[27]\
    );
\wdata_q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(28),
      Q => \wdata_q_reg_n_0_[28]\
    );
\wdata_q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(29),
      Q => \wdata_q_reg_n_0_[29]\
    );
\wdata_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(2),
      Q => \wdata_q_reg_n_0_[2]\
    );
\wdata_q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(30),
      Q => \wdata_q_reg_n_0_[30]\
    );
\wdata_q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(31),
      Q => \wdata_q_reg_n_0_[31]\
    );
\wdata_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(3),
      Q => wdata_q(3)
    );
\wdata_q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(4),
      Q => \wdata_q_reg_n_0_[4]\
    );
\wdata_q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(5),
      Q => \wdata_q_reg_n_0_[5]\
    );
\wdata_q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(6),
      Q => \wdata_q_reg_n_0_[6]\
    );
\wdata_q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(7),
      Q => \wdata_q_reg_n_0_[7]\
    );
\wdata_q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(8),
      Q => \wdata_q_reg_n_0_[8]\
    );
\wdata_q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wdata(9),
      Q => \wdata_q_reg_n_0_[9]\
    );
\wstrb_q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^s_axi_bvalid_reg_0\,
      I1 => w_hold_valid_reg_n_0,
      I2 => s_axi_wvalid,
      O => w_hold_valid0
    );
\wstrb_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wstrb(0),
      Q => \wstrb_q_reg_n_0_[0]\
    );
\wstrb_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wstrb(1),
      Q => p_1_in0
    );
\wstrb_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wstrb(2),
      Q => \wstrb_q_reg_n_0_[2]\
    );
\wstrb_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => w_hold_valid0,
      CLR => u_core_n_0,
      D => s_axi_wstrb(3),
      Q => \wstrb_q_reg_n_0_[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_stats_accel_axil_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_clk : out STD_LOGIC;
    bram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC;
    bram_rst : out STD_LOGIC;
    bram_we : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_stats_accel_axil_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_stats_accel_axil_0_0 : entity is "bd_stats_accel_axil_0_0,stats_accel_axil,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_stats_accel_axil_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_stats_accel_axil_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_stats_accel_axil_0_0 : entity is "stats_accel_axil,Vivado 2025.1";
end bd_stats_accel_axil_0_0;

architecture STRUCTURE of bd_stats_accel_axil_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^s_axi_aclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of bram_clk : signal is "xilinx.com:signal:clock:1.0 bram_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of bram_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of bram_clk : signal is "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_stats_accel_axil_0_0_bram_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of bram_rst : signal is "xilinx.com:signal:reset:1.0 bram_rst RST";
  attribute X_INTERFACE_MODE of bram_rst : signal is "master";
  attribute X_INTERFACE_PARAMETER of bram_rst : signal is "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 166666667, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 166666667, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN bd_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr(31) <= \<const0>\;
  bram_addr(30) <= \<const0>\;
  bram_addr(29) <= \<const0>\;
  bram_addr(28) <= \<const0>\;
  bram_addr(27) <= \<const0>\;
  bram_addr(26) <= \<const0>\;
  bram_addr(25) <= \<const0>\;
  bram_addr(24) <= \<const0>\;
  bram_addr(23) <= \<const0>\;
  bram_addr(22) <= \<const0>\;
  bram_addr(21) <= \<const0>\;
  bram_addr(20) <= \<const0>\;
  bram_addr(19) <= \<const0>\;
  bram_addr(18) <= \<const0>\;
  bram_addr(17) <= \<const0>\;
  bram_addr(16) <= \<const0>\;
  bram_addr(15) <= \<const0>\;
  bram_addr(14) <= \<const0>\;
  bram_addr(13) <= \<const0>\;
  bram_addr(12) <= \<const0>\;
  bram_addr(11) <= \<const0>\;
  bram_addr(10) <= \<const0>\;
  bram_addr(9 downto 0) <= \^bram_addr\(9 downto 0);
  bram_clk <= \^s_axi_aclk\;
  bram_rst <= \<const0>\;
  bram_wdata(31) <= \<const0>\;
  bram_wdata(30) <= \<const0>\;
  bram_wdata(29) <= \<const0>\;
  bram_wdata(28) <= \<const0>\;
  bram_wdata(27) <= \<const0>\;
  bram_wdata(26) <= \<const0>\;
  bram_wdata(25) <= \<const0>\;
  bram_wdata(24) <= \<const0>\;
  bram_wdata(23) <= \<const0>\;
  bram_wdata(22) <= \<const0>\;
  bram_wdata(21) <= \<const0>\;
  bram_wdata(20) <= \<const0>\;
  bram_wdata(19) <= \<const0>\;
  bram_wdata(18) <= \<const0>\;
  bram_wdata(17) <= \<const0>\;
  bram_wdata(16) <= \<const0>\;
  bram_wdata(15) <= \<const0>\;
  bram_wdata(14) <= \<const0>\;
  bram_wdata(13) <= \<const0>\;
  bram_wdata(12) <= \<const0>\;
  bram_wdata(11) <= \<const0>\;
  bram_wdata(10) <= \<const0>\;
  bram_wdata(9) <= \<const0>\;
  bram_wdata(8) <= \<const0>\;
  bram_wdata(7) <= \<const0>\;
  bram_wdata(6) <= \<const0>\;
  bram_wdata(5) <= \<const0>\;
  bram_wdata(4) <= \<const0>\;
  bram_wdata(3) <= \<const0>\;
  bram_wdata(2) <= \<const0>\;
  bram_wdata(1) <= \<const0>\;
  bram_wdata(0) <= \<const0>\;
  bram_we(3) <= \<const0>\;
  bram_we(2) <= \<const0>\;
  bram_we(1) <= \<const0>\;
  bram_we(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.bd_stats_accel_axil_0_0_stats_accel_axil
     port map (
      \FSM_onehot_state_reg[1]\ => bram_en,
      bram_addr(9 downto 0) => \^bram_addr\(9 downto 0),
      bram_rdata(31 downto 0) => bram_rdata(31 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_reg_0 => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
