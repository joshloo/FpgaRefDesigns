#include <stdio.h>

#include "hal.h"
#include "uart.h"

#include "config.h"
#include "FreeRTOS.h"
#include "task.h"
#include "sys_platform.h"


extern void os_init();
extern void task_delay(uint32_t tick);
extern void task_resume(TaskHandle_t task);
extern void task_suspend(TaskHandle_t task);
extern BaseType_t task_create(TaskFunction_t pvTaskCode, const char *name, uint32_t pri, TaskHandle_t *handle);
extern uint32_t secured_write(uint32_t addr, uint32_t val);
extern uint32_t secured_read(uint32_t addr, uint32_t *val);


TaskHandle_t h_led_task;
TaskHandle_t h_uart_task;

#define LED_BASE (S0_APB_GPIO_INST_BASE_ADDR + 0x04)
// #define LED_BASE (GPIO0_INST_BASE_ADDR + 0x04)
#define LED_COUNT 8

volatile uint32_t secured_region[4] = { 0 };

static struct uart_instance s_uart_core;

static int lscc_uart_putc(char c, FILE *file)
{
#ifdef LSCC_STDIO_UART_APB
		return uart_putc(&s_uart_core, c);
#else
		return EOF;
#endif
}


static int lscc_uart_getc(FILE *file)
{
	(void) file;
	return EOF;
}


static int lscc_uart_flush(FILE *file)
{
	(void) file;
	return 0;
}


static void bsp_init() 
{
    led_init((uint32_t *)LED_BASE, LED_COUNT);
    led_set(LED_ALL_OFF);

    uart_init(&s_uart_core, S1_APB_UART_INST_BASE_ADDR, configCPU_CLOCK_HZ, S1_APB_UART_INST_BAUD_RATE, 1, 8);
    iob_init(lscc_uart_putc, lscc_uart_getc, lscc_uart_flush);

    trap_init();
    plic_init();
    clint_init();
    pmp_init();
}


static void pmp_test()
{
    uint32_t temp = 0;
    printf("#############################################################################\r\n");
    printf("@ pmp test begin: \r\n");
    printf("@ sstatus=0x%08x: \r\n", r_sstatus());
    printf("@ mstatus=0x%08x: \r\n", r_mstatus());

    printf("\r\n");
    printf("@ write/read secured region in task:\r\n"); 

    printf("\r\n");
    printf("  @ expectation(locked): write/read 0x%08x will fail\r\n", &secured_region[0]);
    printf("  @ write/read 0x%08x begin, in=0x%08x\r\n", &secured_region[0], 0x1234);
    secured_region[0] = 0x1234;
    temp = secured_region[0];
    printf("  @ write/read 0x%08x done, out=0x%08x\r\n", &secured_region[0], temp);

    printf("\r\n");
#if (TASK_MODE == TASK_MODE_M)
    printf("  @ expectation(m-mode): write/read 0x%08x will succeed\r\n", &secured_region[1]);
#else
    printf("  @ expectation(u-mode): write/read 0x%08x will fail\r\n", &secured_region[1]);
#endif
    printf("  @ write/read 0x%08x begin, in=0x%08x\r\n", &secured_region[1], 0x5678);
    secured_region[1] = 0x5678;
    temp = secured_region[1];
    printf("  @ write/read 0x%08x done, out=0x%08x\r\n", &secured_region[1], temp);

    printf("\r\n");
    printf("@ write/read secured region with sys-call:\r\n");

    // enable the following code will make cpu hung, due to nested trap
#if 0 
    printf("\r\n");
    printf("  @ expectation: write/read 0x%08x will fail\r\n", &secured_region[0]);
    printf("  @ write/read 0x%08x begin, in=0x%08x\r\n", &secured_region[0], 0x9abc);
    secured_write(&secured_region[0], 0x9abc);
    secured_read(&secured_region[0], &temp);
    printf("  @ write/read 0x%08x done, out=0x%08x\r\n", &secured_region[0], temp);
#endif

    printf("\r\n");
    printf("  @ expectation: write/read 0x%08x will succeed\r\n", &secured_region[1]);
    printf("  @ write/read 0x%08x begin, in=0x%08x\r\n", &secured_region[1], 0xdef0);
    secured_write((uint32_t)&secured_region[1], 0xdef0);
    secured_read((uint32_t)&secured_region[1], &temp);
    printf("  @ write/read 0x%08x done, out=0x%08x\r\n", &secured_region[1], temp);
   
    printf("\r\n");
    printf("@ pmp test end \r\n");
    printf("#############################################################################\r\n");
}


static void led_task() 
{
    pmp_test();

    unsigned int i = 0;
    while (true) 
    {
        printf("task %d is running, %d\r\n", h_led_task, i++);
        led_set(LED_PATTER_ON(i % LED_COUNT));

        task_delay(2);
    }
}


static void uart_task() 
{
    unsigned int i = 0;

    task_delay(1);
    while (true) 
    {
        printf("task %d is running, %d\r\n", h_uart_task, i++);
        task_delay(2);
        if ((i % 10) == 3)
        {
            printf("suspend task %d\r\n", h_led_task);
            task_suspend(h_led_task);
        }
        else if ((i % 10) == 7)
        {
            printf("resume task %d\r\n", h_led_task);
            task_resume(h_led_task);
        }
    }
}


int main(int argc, char **argv) 
{
    BaseType_t retv;

    bsp_init();
    os_init();
    printf("\r\nFreeRTOS v10.0.1 on RISC-V.\r\n");

    printf("the granularity of pmp is %d.\r\n", pmp_granularity());

#if 1
    pmp_entry_t entries[] = {
        { PMP_CFG_MODE_TOR, PMP_CFG_PER_R | PMP_CFG_PER_W | PMP_CFG_PER_X, (uint32_t)(secured_region) >> 2 },
        { PMP_CFG_MODE_TOR, 0, (uint32_t)(secured_region + 1) >> 2 },
        { PMP_CFG_MODE_TOR, 0, (uint32_t)(secured_region + 4) >> 2 },
        { PMP_CFG_MODE_TOR, PMP_CFG_PER_R | PMP_CFG_PER_W | PMP_CFG_PER_X, 0xffffffff >> 2 },
    };
#else
    pmp_entry_t entries[] = {
        // { PMP_CFG_MODE_TOR, PMP_CFG_PER_R | PMP_CFG_PER_W | PMP_CFG_PER_X, 0x0001ffff },
        { PMP_CFG_MODE_TOR, PMP_CFG_PER_R | PMP_CFG_PER_W | PMP_CFG_PER_X, 0x7fffffff >> 2 },
        { PMP_CFG_MODE_TOR, 0, 0xffffffff >> 2 }
    };
#endif

    for (uint32_t i = 0; i < sizeof(entries)/sizeof(entries[0]); ++i)
    {
        if (pmp_entry_write(i, &entries[i]) != 0)
        {
            printf("failed to write pmp entry %d.\r\n", i);
            return 1;
        }
    }
    pmp_entry_lock_write(1, 1);

    printf("#############################################################################\r\n");
    for (uint32_t i = 0; i < sizeof(entries)/sizeof(entries[0]); ++i)
    {
        pmp_entry_t entry = { 0 };
        if (pmp_entry_read(i, &entry) != 0)
        {
            printf("failed to read pmp entry %d.\r\n", i);
            return 1;
        }

        uint32_t locked = 0;
        if (pmp_entry_lock_read(i, &locked) != 0)
        {
            printf("failed to read pmp entry lock %d.\r\n", i);
            return 1;
        }
        
        printf("pmp entry%d: mode=0x%02x, perm=0x%02x, addr=0x%08x(*4)=0x%08x, locked=%d\r\n", 
            i, entry.mode, entry.permission, entry.addr, entry.addr<<2, locked);
    }
    printf("#############################################################################\r\n");

    retv = task_create(uart_task, "UART Task", tskIDLE_PRIORITY + 1, &h_uart_task);
    if (retv != pdPASS) {
        printf("Failed to create UART task.\r\n");
        return 1;
    }

    retv = task_create(led_task, "LED Task", tskIDLE_PRIORITY + 1, &h_led_task);
    if (retv != pdPASS) {
        printf("Failed to create LED task.\r\n");
        return 1;
    }

    // RTOS running
    vTaskStartScheduler();
    while (1)
    {
        printf("never arrive here\r\n");
    }

    return 0;
}

