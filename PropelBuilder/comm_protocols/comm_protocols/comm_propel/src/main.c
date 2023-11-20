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

const int alphabet[16] = { 0x88, 0x83, 0xC6, 0xA1, 0x86, 0x8E,      0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x98 };
//A -> F, 0 -> 9

TaskHandle_t h_led_task;
TaskHandle_t h_seg_task;
TaskHandle_t h_uart_read_task;
TaskHandle_t h_uart_write_task;


#define GPIO_BASE (S0_APB_GPIO_INST_BASE_ADDR)

#define LED_BASE (S0_APB_GPIO_INST_BASE_ADDR + 0x04)
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

static void led_task()
{
   // pmp_test();

    unsigned int i = 0;
    unsigned int set_value = 0;
    while (true)
    {
        //printf(".");
        /*printf("Read: 0x%x\n", *((volatile uint32_t *)(GPIO_BASE)));
        printf("Mask: 0x%x\n",  0xFF - (1 << (i % 8)));
        printf("Write: 0x%x\n",(*((volatile uint32_t *)(GPIO_BASE))) & (0xFFFF - (1 << (i % 8))));
    	*/

    	set_value = (int)*((volatile uint32_t *)(GPIO_BASE)) & (0xFFFF - (1 << i));
    	if (i > 8) {
    		set_value = (int)*((volatile uint32_t *)(GPIO_BASE)) | 0xFF;
    		i = 0;
    	}
    	//printf("%x ", set_value);
    	led_set(set_value);
    	i++;
        /*
        printf("Read: 0x%x\n", *((volatile uint32_t *)(GPIO_BASE)));
        for (int j = 31; j>=0;j--)
            printf("%d", ((LED_PATTER_ON(i % LED_COUNT))>>j) &1);
        printf("\n");*/
        //led_set(LED_PATTER_ON(i % LED_COUNT));

        task_delay(1);
    }
}

static void seven_seg_task()
{
    unsigned int i = 0;
    unsigned int pos = 0;
    unsigned int status = 0;
    unsigned int num_to_send = 100;
    while (true)
    {
    	pos = (alphabet[i % 16] << 8) | (int)(*((volatile uint32_t *)(GPIO_BASE)) & 0xFF);
    	//printf(": %x ", pos);
        led_set(pos);
    	i++;
        //printf("Read: 0x%x\n", *((volatile uint32_t *)(GPIO_BASE)));
        //printf("x");

    	status = uart_putc(&s_uart_core, num_to_send);
    	num_to_send++;
        task_delay(1);
    }
}



static void uart_read_task()
{
    unsigned char read_char;
    unsigned int status = 0;
    while (true)
    {
    	status = uart_getc(&s_uart_core, &read_char);
    	printf("%d\n", read_char);
    	//task_delay(1);
    }

}

int main(int argc, char **argv) 
{
    BaseType_t retv;

    bsp_init();
    os_init();

    retv = task_create(led_task, "LED Task", tskIDLE_PRIORITY + 1, &h_led_task);
    if (retv != pdPASS) {
        printf("Failed to create LED task.\r\n");
        return 1;
    }
    retv = task_create(seven_seg_task, "Seven Segment Task", tskIDLE_PRIORITY + 1, &h_seg_task);
    if (retv != pdPASS) {
        printf("Failed to create seven segment task.\r\n");
        return 1;
    }
    retv = task_create(uart_read_task, "UART read Task", tskIDLE_PRIORITY + 1, &h_uart_read_task);
    if (retv != pdPASS) {
        printf("Failed to create UART read task.\r\n");
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

