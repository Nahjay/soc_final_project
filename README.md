# MicroBlaze PetaLinux Statistics Accelerator

Simple SoC final project for the AMD Urbana board.

This project implements a custom AXI-Lite statistics accelerator connected to a MicroBlaze-based embedded Linux system. Linux userspace writes a dataset into BRAM, programs the accelerator, starts the run, polls for completion, reads the results back, and compares hardware results against a software reference model.

## Project goal

This project is designed to satisfy the course requirements with the simplest reliable implementation path:

- Hardware acceleration
- Softcore processor usage
- Custom AXI peripheral integration
- Embedded Linux control of hardware

The accelerator scans 32-bit unsigned integer data stored in BRAM and computes:

- 64-bit sum
- Minimum value
- Maximum value
- Count of values strictly greater than a programmable threshold
- Cycle count for the hardware run

## Fixed architecture

System flow:

1. MicroBlaze boots PetaLinux.
2. Linux userspace app maps accelerator registers and BRAM.
3. App fills BRAM with test data.
4. App writes `LENGTHWORDS` and `THRESHOLD`.
5. App starts the accelerator.
6. App polls until `done == 1`.
7. App reads back all result registers.
8. App computes the same statistics in software.
9. App compares hardware and software results and prints PASS/FAIL.

Expected hardware blocks:

- MicroBlaze
- DDR memory interface for Linux
- UART for serial console
- AXI interconnect / SmartConnect
- AXI BRAM Controller
- BRAM for dataset storage
- Custom statistics accelerator IP
- Optional AXI GPIO for LED
- Standard reset / clocking infrastructure

## Data contract

- Data type: 32-bit unsigned integers
- Dataset storage: BRAM
- Dataset size target: 1024 words
- BRAM target size: 4096 bytes
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
| `0x20` | `COUNTGT` | Count of values `>` threshold |
| `0x24` | `CYCLECOUNT` | Cycle count while accelerator is busy |

## Accelerator behavior requirements

The RTL must:

- Use an FSM-based sequential scan
- Read one BRAM word at a time
- Correctly handle synchronous BRAM read latency
- Compute a 64-bit sum exposed through `SUMLO` and `SUMHI`
- Assert `busy` while running
- Assert `done` when complete
- Latch `done` until cleared or a new run begins
- Ignore a new `start` while busy
- Increment `cyclecount` only while busy
- Never read past `LENGTHWORDS - 1`

## Repository structure

```text
soc-final-project/
├── README.md
├── hw/
│   ├── ip/
│   │   └── statistics_accel/
│   │       ├── rtl/
│   │       │   ├── stats_accel_core.sv
│   │       │   └── stats_accel_axil.sv
│   │       ├── sim/
│   │       │   └── tb_stats_accel_core.sv
│   │       └── packaging/
│   ├── bd/
│   └── scripts/
├── linux/
│   ├── petalinux/
│   └── app/
│       ├── stats_accel_app.c
│       └── Makefile
├── docs/
│   ├── diagrams/
│   └── notes/
│       ├── register_map.md
│       └── bringup_checklist.md
└── demo/
    ├── screenshots/
    └── logs/
```

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
  AXI-Lite register wrapper around the core. Exposes the frozen register map and connects to the BRAM read port.

### Simulation
Directory: `hw/ip/statistics_accel/sim/`

- `tb_stats_accel_core.sv`  
  Self-checking testbench for the core. Should compare DUT outputs against a software-style reference model.

### Vivado hardware platform
Directories: `hw/bd/`, `hw/scripts/`

Use these for:

- Block design exports
- Address map notes
- Tcl scripts to recreate the block design
- IP packaging notes
- XSA export notes
- Bring-up notes

### Linux
Directories: `linux/petalinux/`, `linux/app/`

- `linux/petalinux/`  
  PetaLinux project setup notes, config steps, and any device tree notes if needed

- `linux/app/stats_accel_app.c`  
  Userspace control application that:
  1. maps registers and BRAM
  2. fills BRAM with datasets
  3. programs accelerator registers
  4. starts the accelerator
  5. polls for completion
  6. reads results
  7. compares with software reference
  8. prints PASS/FAIL

- `linux/app/Makefile`  
  Build instructions for the userspace app

### Documentation and evidence
Directories: `docs/`, `demo/`

Use `docs/` for:

- Register map documentation
- System diagrams
- Bring-up checklist
- Debug notes
- Test matrix

Use `demo/` for:

- Linux boot screenshots
- Terminal output showing PASS results
- Vivado screenshots
- Board photos
- UART logs

## Recommended implementation order

1. Finish and simulate `stats_accel_core.sv`
2. Add and simulate `stats_accel_axil.sv`
3. Package accelerator as Vivado IP
4. Build MicroBlaze + DDR + UART + AXI BRAM + custom IP block design
5. Export hardware platform / XSA
6. Bring up PetaLinux
7. Write userspace test app
8. Run end-to-end hardware/software comparison
9. Collect demo evidence
10. Final cleanup and report

## Required software test patterns

At minimum, test:

- Ascending values
- Descending values
- All equal values
- Pseudo-random values with fixed seed
- Single-element dataset

Required coverage should include:

- `LENGTHWORDS = 1`
- `LENGTHWORDS = 16`
- `LENGTHWORDS = 1024`

Threshold tests should include:

- Threshold below all values
- Threshold above all values
- Threshold in the middle of the dataset

Robustness tests should include:

- Repeated runs without power cycle
- Repeated start commands across multiple runs
- Correct `done` / `busy` behavior
- Correct `cleardone` behavior

## Acceptance criteria

Project is complete when all of the following are true:

- Bitstream builds successfully
- Hardware platform programs onto the board
- UART console is alive
- PetaLinux boots reliably
- Linux app runs from shell
- BRAM can be written/read by software
- Accelerator can be started from Linux
- Polling completes successfully
- Hardware results exactly match software reference
- Multiple datasets and thresholds pass
- Repeated runs work without reboot
- Final demo clearly shows course requirement coverage

## Simplification rules

If time gets tight, remove features in this order:

1. LED demo
2. Extra test patterns
3. Performance benchmarking detail
4. Anything not required for correctness/demo

Do not remove:

- MicroBlaze
- PetaLinux
- Custom accelerator
- AXI-Lite peripheral behavior
- BRAM data path
- Software-versus-hardware correctness checking

## Notes

Keep the implementation simple:

- Polling only
- No interrupts unless everything else already works
- No DMA
- No AXI-Stream
- No HLS
- No unnecessary extra features
- Favor reliability and fastest completion over ambition