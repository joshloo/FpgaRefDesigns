/*
 * FreeRTOS Kernel V10.0.1
 * Copyright (C) 2017 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */

#include <stdio.h>
#include "hal.h"
#include "riscv.h"
#include "config.h"
#include "FreeRTOS.h"
#include "task.h"
#include "portmacro.h"


#define portBIT_MTIP    0x80
#define portGPR_NUM     20

#if( configUSE_TICKLESS_IDLE == 1 )
extern uint32_t vPortTimerElapse(void);
#endif

#define INIT_STACK_SIZE 1024
uint32_t s_stack[INIT_STACK_SIZE];




extern void *this_context();
extern void start_umode_task(void *);
extern void start_smode_task(void *);
extern void start_mmode_task(void *);
void task_entry(void *param) 
{
#if (TASK_MODE == TASK_MODE_U)
    start_umode_task((context_t *)this_context());
#elif (TASK_MODE == TASK_MODE_S)
    start_smode_task((context_t *)this_context());
#elif (TASK_MODE == TASK_MODE_M)
    start_mmode_task((context_t *)this_context());
#endif
}


extern void prepare_smode();
extern void prepare_umode();
extern void switch_to(void *);

static void switch_task()
{
    vTaskSwitchContext();

// TODO: IdleTask should run in M-Mode
    context_t *ctx = (context_t *)this_context();
    if (ctx->pc == (reg_t)task_entry)
    {
        task_entry(NULL);
    }
    else
    {
#if (TASK_MODE == TASK_MODE_U)
        prepare_umode();
#elif (TASK_MODE == TASK_MODE_S)
        prepare_smode();
#endif
        switch_to(ctx);
    }
}


void vPortMtipHandler(void *ctx)
{
    clint_reload_timer(portTICK_PERIOD_MS * 1000);

    if(xTaskIncrementTick() != pdFALSE)
    {
        switch_task();
    }
}


void soft_irq_handler(void *ctx)
{
    switch_task();
}


BaseType_t xPortStartScheduler( void )
{
    global_context()->sp = (reg_t)&s_stack[INIT_STACK_SIZE - 1];
    w_mscratch((reg_t)global_context());
	clint_start_timer(portTICK_PERIOD_MS * 1000,
			    ePRIV_M,
				vPortMtipHandler,
				NULL);
    clint_install_soft_isr(soft_irq_handler, NULL);

    /* enable interrupt */
    __asm volatile( "csrs mstatus,8" );

    /* switch to tasks created */
	task_entry(NULL);

    for(;;);

    return 0;
}


void portYIELD_FROM_ISR(BaseType_t xHigherPriorityTaskWoken)
{
    if (xHigherPriorityTaskWoken)
    {
        switch_task();
    }
}


void vPortYield()
{
#if (TASK_MODE == TASK_MODE_M)
    clint_raise_soft_irq(THIS_HART);
#else
    switch_task();
#endif
}


StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters )
{
    pxTopOfStack = (pxTopOfStack + 1) - sizeof(context_t);

    /* keep stack 8 bytes aligned */
    pxTopOfStack = (StackType_t *)(((UBaseType_t)pxTopOfStack) & 0xFFFFFFF8);

    for (int i = 0; i < sizeof(context_t); i++) {
        pxTopOfStack[i] = 0xDEADBEEF;
    }

    context_t *ctx = (context_t *)&pxTopOfStack[0];
    ctx->pc = (StackType_t) pxCode;
    ctx->a0 = (StackType_t) pvParameters;
    ctx->sp = (StackType_t) &pxTopOfStack[0] - 8;
    ctx->tp = (StackType_t) THIS_HART;

    return pxTopOfStack;
}

#if( configUSE_TICKLESS_IDLE == 1 )

__attribute__((weak)) void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime )
{
    portDISABLE_INTERRUPTS();

    if (eTaskConfirmSleepModeStatus() != eAbortSleep)
    {
        UBaseType_t mip;
        uint32_t uxCompleteTickPeriods, uxMilSeconds;

        /* set tick int */
        vPortReloadTimer(xExpectedIdleTime * portTICK_PERIOD_MS);

        /* user defined sleep actions */
        configPRE_SLEEP_PROCESSING(xExpectedIdleTime);

        /* enter sleep */
        __asm volatile("fence.i");
        __asm volatile("wfi");
        __asm volatile("fence");

        /* user defined recovery from sleep */
        configPOST_SLEEP_PROCESSING( xExpectedIdleTime );

        /*
         * if no timeout but other interrupt wake the system up,
         * calculate time elapse
         */
        __asm volatile("csrr %0, mip"  : "=r"(mip));

        if ((mip & portBIT_MTIP) == 0)
        {
            /* calculate ticks passed */
            uxMilSeconds = vPortTimerElapse();
            uxCompleteTickPeriods = uxMilSeconds / portTICK_PERIOD_MS;
        }
        else
        {
            uxCompleteTickPeriods = xExpectedIdleTime - 1;
        }

        /* update systick count */
        vTaskStepTick(uxCompleteTickPeriods);

        /* enable next tick scheduling */
        vPortReloadTimer(portTICK_PERIOD_MS);
    }

    portENABLE_INTERRUPTS();
}

#endif

