## ==========================================================
## Urbana Board Constraints — Minimal for MicroBlaze + DDR + UART
## Matches top-level ports: clk_100mhz, sys_rst, uart_rxd, uart_txd, init_calib_complete
## ==========================================================

## 100 MHz system clock (on-board oscillator)
create_clock -period 10.000 -name sys_clk_100 [get_ports clk_100mhz]
set_property -dict { PACKAGE_PIN N15 IOSTANDARD LVCMOS33 } [get_ports { clk_100mhz }]

## Board voltage / config
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

## System reset (SW0 button)
# Active-high/low is handled in logic; board pin is G1
set_property -dict { PACKAGE_PIN G1 IOSTANDARD LVCMOS25 } [get_ports { sys_rst }]

## UART to USB bridge (console)
# RXD into FPGA from USB-UART
set_property -dict { PACKAGE_PIN B16 IOSTANDARD LVCMOS33 } [get_ports { uart_rxd }]
# TXD from FPGA to USB-UART
set_property -dict { PACKAGE_PIN A16 IOSTANDARD LVCMOS33 } [get_ports { uart_txd }]

## MIG init_calib_complete status — map to a spare LED so you can see DDR lock
# Here we put it on one of the user LEDs (GPO1_0[0] pad C13) assuming that LED is unused.
# If GPO1_0[0] is already used in your design, pick a different free LED pad.
set_property -dict { PACKAGE_PIN C13 IOSTANDARD LVCMOS33 } [get_ports { init_calib_complete }]

## DDR3 reference clock and memory interface pins
## (these match the earlier Urbana XDC defaults for the MIG instance)

# DDR3 REFCLK differential pair
#set_property IOSTANDARD LVDS_25 [get_ports sys_clk_p]
#set_property -dict { PACKAGE_PIN C1 IOSTANDARD LVDS_25 } [get_ports sys_clk_p]
#set_property -dict { PACKAGE_PIN B1 IOSTANDARD LVDS_25 } [get_ports sys_clk_n]

# DDR3 CK pair
set_property SLEW FAST [get_ports { ddr3_ck_p[0] }]
set_property IOSTANDARD DIFF_SSTL135 [get_ports { ddr3_ck_p[0] }]
set_property SLEW FAST [get_ports { ddr3_ck_n[0] }]
set_property IOSTANDARD DIFF_SSTL135 [get_ports { ddr3_ck_n[0] }]
set_property PACKAGE_PIN R5 [get_ports { ddr3_ck_p[0] }]
set_property PACKAGE_PIN T4 [get_ports { ddr3_ck_n[0] }]

# DDR3 RESET
set_property SLEW FAST [get_ports ddr3_reset_n]
set_property IOSTANDARD SSTL135 [get_ports ddr3_reset_n]
set_property PACKAGE_PIN M5 [get_ports ddr3_reset_n]

# DDR3 CKE / ODT / BA / ADDR / DQ / DM / DQS
# (reuse from your older working project if needed; these come from the vendor MIG/Urbana XDC)
# If you already have a known-good DDR3 section from class that worked on Urbana,
# you can paste that whole DDR block here unchanged.

## Internal Vref and unused pins behavior
set_property INTERNAL_VREF 0.675 [get_iobanks 34]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]