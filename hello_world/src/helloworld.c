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
#define REG_THRESHOLD  0x08
#define REG_SUMLO      0x10
#define REG_SUMHI      0x14
#define REG_MINVAL     0x18
#define REG_MAXVAL     0x1C
#define REG_COUNTGT    0x20
#define REG_CYCLECOUNT 0x24

int main() {
    init_platform();
    Xil_DCacheDisable();

    const uint32_t n = 1024;
    const uint32_t threshold = 500;
    
    uint64_t sw_sum = 0;
    uint32_t sw_min = 0xFFFFFFFF;
    uint32_t sw_max = 0;
    uint32_t sw_count = 0;

    xil_printf("\r\n--- HW vs SW Performance Benchmark (N=%u) ---\r\n", n);

    // 1. Initialize BRAM
    for (uint32_t i = 0; i < n; i++) {
        uint32_t v = i + 100;
        Xil_Out32(BRAM_BASE + (i * 4), v);
        
        // Software tracking
        sw_sum += v;
        if (v < sw_min) sw_min = v;
        if (v > sw_max) sw_max = v;
        if (v > threshold) sw_count++;
    }

    // ---------------------------------------------------------
    // HARDWARE RUN
    // ---------------------------------------------------------
    Xil_Out32(ACCEL_BASE + REG_LENGTH, n);
    Xil_Out32(ACCEL_BASE + REG_THRESHOLD, threshold);
    
    Xil_Out32(ACCEL_BASE + REG_CONTROL, 0x8); // Clear Done bit
    Xil_Out32(ACCEL_BASE + REG_CONTROL, 0x1); // Start
    
    // Polling for completion
    while ((Xil_In32(ACCEL_BASE + REG_CONTROL) & 0x2) == 0);
    
    uint32_t hw_sum_lo = Xil_In32(ACCEL_BASE + REG_SUMLO);
    uint32_t hw_sum_hi = Xil_In32(ACCEL_BASE + REG_SUMHI);
    uint64_t hw_sum = ((uint64_t)hw_sum_hi << 32) | hw_sum_lo;
    
    uint32_t hw_min = Xil_In32(ACCEL_BASE + REG_MINVAL);
    uint32_t hw_max = Xil_In32(ACCEL_BASE + REG_MAXVAL);
    uint32_t hw_count = Xil_In32(ACCEL_BASE + REG_COUNTGT);
    uint32_t hw_cycles = Xil_In32(ACCEL_BASE + REG_CYCLECOUNT);

    // ---------------------------------------------------------
    // RESULTS
    // ---------------------------------------------------------
    xil_printf("Metric      | Software Result | Hardware Result\r\n");
    xil_printf("----------------------------------------------\r\n");
    xil_printf("Sum         | %15u | %15u\r\n", (uint32_t)sw_sum, (uint32_t)hw_sum);
    xil_printf("Min         | %15u | %15u\r\n", sw_min, hw_min);
    xil_printf("Max         | %15u | %15u\r\n", sw_max, hw_max);
    xil_printf("Count > T   | %15u | %15u\r\n", sw_count, hw_count);
    xil_printf("HW RTL Cycles: %u\r\n", hw_cycles);

    if (hw_sum == sw_sum && hw_min == sw_min && hw_max == sw_max && hw_count == sw_count) {
        xil_printf("VERIFICATION PASSED\r\n");
    } else {
        xil_printf("VERIFICATION FAILED\r\n");
    }

    cleanup_platform();
    return 0;
}