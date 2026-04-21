# MicroBlaze Statistics Accelerator

Custom AXI-Lite statistics accelerator for the AMD Urbana board.

This project integrates a custom statistics accelerator into a MicroBlaze-based system. A Vitis application running directly on the board writes a dataset into BRAM, programs the accelerator, starts the run, polls for completion, reads the results back, and compares the hardware results against a software reference model.

## Project goal

This project implements:

- Hardware acceleration
- Softcore processor usage
- Custom AXI peripheral integration
- Software control of hardware from a MicroBlaze system

The accelerator scans 32-bit unsigned integer data stored in BRAM and computes:

- 64-bit sum
- Minimum value
- Maximum value
- Count of values strictly greater than a programmable threshold
- Cycle count for the hardware run

## System architecture

System flow:

1. The hardware platform is programmed onto the board.
2. A Vitis application runs on MicroBlaze.
3. The application fills BRAM with test data.
4. The application writes `LENGTHWORDS` and `THRESHOLD`.
5. The application starts the accelerator.
6. The application polls until `done == 1`.
7. The application reads back all result registers.
8. The application computes the same statistics in software.
9. The application compares hardware and software results and prints PASS/FAIL.

Expected hardware blocks:

- MicroBlaze
- UART for serial console output
- AXI interconnect / SmartConnect
- AXI BRAM Controller
- BRAM for dataset storage
- Custom statistics accelerator IP
- Standard interrupt infrastructure
- Standard reset / clocking infrastructure

## Data contract

- Data type: 32-bit unsigned integers
- Dataset storage: BRAM
- Dataset size target: 1024 words
- BRAM target size: 8192 bytes
- Valid `LENGTHWORDS`: 1 to 1024
- Accelerator processes words `0` through `LENGTHWORDS - 1`

## Register map

| Offset | Name | Description |
|---|---|---|
| `0x00` | `CONTROL` | bit 0 = `start`, bit 1 = `done` (RO), bit 2 = `busy` (RO), bit 3 = `cleardone` |
| `0x04` | `LENGTHWORDS` | Number of 32-bit words to process |
| `0x08` | `THRESHOLD` | Count values strictly greater than this threshold |
| `0x0C` | `VERSION` | `0x00010000` |
| `0x10` | `SUMLO` | Sum bits `[31:0]` |
| `0x14` | `SUMHI` | Sum bits `[63:32]` |
| `0x18` | `MINVAL` | Minimum value in dataset |
| `0x1C` | `MAXVAL` | Maximum value in dataset |
| `0x20` | `COUNTGT` | Count of values `> threshold` |
| `0x24` | `CYCLECOUNT` | Cycle count while accelerator is busy |

## Repository structure

```text
.
├── _ide
│   └── logs
├── hello_world
│   ├── _ide
│   │   └── bitstream
│   ├── build
│   │   └── CMakeFiles
│   │       ├── 3.24.2
│   │       ├── CMakeTmp
│   │       ├── hello_world.elf.dir
│   │       └── pkgRedirects
│   └── src
├── hw
│   ├── bd
│   │   ├── constraints
│   │   └── exported
│   ├── ip
│   │   └── statistics_accel
│   │       ├── rtl
│   │       └── sim
│   └── scripts
└── platform
    ├── export
    │   └── platform
    │       ├── hw
    │       └── sw
    ├── hw
    │   └── sdt
    │       ├── extracted
    │       └── include
    ├── logs
    ├── microblaze_0
    │   └── standalone_microblaze_0
    │       └── bsp
    └── resources
        ├── qemu
        └── standalone_microblaze_0
            └── qemu
```

## Component overview

- `hello_world/` is the Vitis application component.
- `platform/` is the Vitis platform component.
- `hw/ip/statistics_accel/rtl/` contains the accelerator RTL.
- `hw/ip/statistics_accel/sim/` contains simulation files for the accelerator.
- `hw/bd/` contains block design exports and related hardware design files.
- `hw/scripts/` contains scripts used for hardware generation and recreation.

## What goes where

### RTL
Directory: `hw/ip/statistics_accel/rtl/`

- `stats_accel_core.sv`  
  Core FSM/datapath that scans BRAM and computes:
  - sum
  - min
  - max
  - count greater than threshold
  - cycle count

- `stats_accel_axil.sv`  
  AXI-Lite register wrapper around the core. Exposes the register map and connects to the BRAM read port.

### Simulation
Directory: `hw/ip/statistics_accel/sim/`

- `tb_stats_accel_core.sv`  
  Self-checking testbench for