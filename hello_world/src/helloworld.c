#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "sleep.h"

#define ACCEL_BASE  0x00008000u
#define BRAM_BASE   0xC0000000u

#define REG_CONTROL    0x00
#define REG_LENGTH     0x04
#define REG_SUMLO      0x10
#define REG_CYCLECOUNT 0x24

int main() {
    init_platform();
    Xil_DCacheDisable();

    const uint32_t n = 1024;
    
    xil_printf("\r\n--- HW vs SW Performance Benchmark (N=%u) ---\r\n", n);

    // 1. Initialize BRAM
    for (uint32_t i = 0; i < n; i++) {
        Xil_Out32(BRAM_BASE + (i * 4), i + 100);
    }

    // ---------------------------------------------------------
    // SOFTWARE RUN
    // ---------------------------------------------------------
    uint64_t sw_sum = 0;
    for (uint32_t i = 0; i < n; i++) {
        sw_sum += Xil_In32(BRAM_BASE + (i * 4));
    }

    // ---------------------------------------------------------
    // HARDWARE RUN
    // ---------------------------------------------------------
    Xil_Out32(ACCEL_BASE + REG_LENGTH, n);
    
    Xil_Out32(ACCEL_BASE + REG_CONTROL, 0x8); 
    Xil_Out32(ACCEL_BASE + REG_CONTROL, 0x1); 
    
    // Polling for completion
    while ((Xil_In32(ACCEL_BASE + REG_CONTROL) & 0x2) == 0);
    
    uint32_t hw_sum = Xil_In32(ACCEL_BASE + REG_SUMLO);
    uint32_t hw_cycles = Xil_In32(ACCEL_BASE + REG_CYCLECOUNT);

    // ---------------------------------------------------------
    // RESULTS
    // ---------------------------------------------------------
    xil_printf("SW Sum Result: %u\r\n", (uint32_t)sw_sum);
    xil_printf("HW Sum Result: %u\r\n", hw_sum);
    xil_printf("HW RTL Cycles: %u\r\n", hw_cycles);


    if (hw_sum == sw_sum) {
        xil_printf("VERIFICATION PASSED\r\n");
    } else {
        xil_printf("VERIFICATION FAILED\r\n");
    }

    cleanup_platform();
    return 0;
}