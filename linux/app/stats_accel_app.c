#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

#define ACCEL_BASE 0x80000000u
#define BRAM_BASE  0xC0000000u
#define ACCEL_MAP_SIZE 0x1000u
#define BRAM_MAP_SIZE  0x2000u

#define REG_CONTROL    0x00
#define REG_LENGTH     0x04
#define REG_THRESHOLD  0x08
#define REG_VERSION    0x0C
#define REG_SUMLO      0x10
#define REG_SUMHI      0x14
#define REG_MINVAL     0x18
#define REG_MAXVAL     0x1C
#define REG_COUNTGT    0x20
#define REG_CYCLECOUNT 0x24

static inline void reg_write(volatile uint32_t *base, uint32_t off, uint32_t v) {
    base[off >> 2] = v;
}

static inline uint32_t reg_read(volatile uint32_t *base, uint32_t off) {
    return base[off >> 2];
}

int main(void) {
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) { perror("open"); return 1; }

    volatile uint32_t *accel = mmap(NULL, ACCEL_MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, ACCEL_BASE);
    volatile uint32_t *bram  = mmap(NULL, BRAM_MAP_SIZE,  PROT_READ | PROT_WRITE, MAP_SHARED, fd, BRAM_BASE);

    if (accel == MAP_FAILED || bram == MAP_FAILED) {
        perror("mmap");
        return 1;
    }

    const uint32_t n = 16;
    const uint32_t threshold = 50;

    uint64_t sw_sum = 0;
    uint32_t sw_min = 0xffffffffu, sw_max = 0, sw_count = 0;

    for (uint32_t i = 0; i < n; i++) {
        uint32_t v = i * 10;
        bram[i] = v;
        sw_sum += v;
        if (v < sw_min) sw_min = v;
        if (v > sw_max) sw_max = v;
        if (v > threshold) sw_count++;
    }

    reg_write(accel, REG_LENGTH, n);
    reg_write(accel, REG_THRESHOLD, threshold);
    reg_write(accel, REG_CONTROL, 0x8);  // clear_done
    reg_write(accel, REG_CONTROL, 0x1);  // start

    while ((reg_read(accel, REG_CONTROL) & 0x2u) == 0u) {
    }

    uint32_t sumlo = reg_read(accel, REG_SUMLO);
    uint32_t sumhi = reg_read(accel, REG_SUMHI);
    uint64_t hw_sum = ((uint64_t)sumhi << 32) | sumlo;
    uint32_t hw_min = reg_read(accel, REG_MINVAL);
    uint32_t hw_max = reg_read(accel, REG_MAXVAL);
    uint32_t hw_cnt = reg_read(accel, REG_COUNTGT);
    uint32_t hw_cyc = reg_read(accel, REG_CYCLECOUNT);

    printf("VERSION    = 0x%08x\n", reg_read(accel, REG_VERSION));
    printf("HW SUM     = %llu\n", (unsigned long long)hw_sum);
    printf("HW MIN     = %u\n", hw_min);
    printf("HW MAX     = %u\n", hw_max);
    printf("HW COUNTGT = %u\n", hw_cnt);
    printf("HW CYCLES  = %u\n", hw_cyc);

    printf("SW SUM     = %llu\n", (unsigned long long)sw_sum);
    printf("SW MIN     = %u\n", sw_min);
    printf("SW MAX     = %u\n", sw_max);
    printf("SW COUNTGT = %u\n", sw_count);

    if (hw_sum == sw_sum && hw_min == sw_min && hw_max == sw_max && hw_cnt == sw_count) {
        printf("PASS\n");
    } else {
        printf("FAIL\n");
    }

    munmap((void *)accel, ACCEL_MAP_SIZE);
    munmap((void *)bram, BRAM_MAP_SIZE);
    close(fd);
    return 0;
}