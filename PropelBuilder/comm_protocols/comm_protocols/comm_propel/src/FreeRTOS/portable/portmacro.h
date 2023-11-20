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


#ifndef PORTMACRO_H
#define PORTMACRO_H

#include "config.h"

#ifdef __cplusplus
extern "C" {
#endif

#define portINLINE      inline
#define portCHAR        char
#define portFLOAT       float
#define portDOUBLE      double
#define portLONG        long
#define portSHORT       short
#define portSTACK_TYPE  uint32_t
#define portBASE_TYPE   long

typedef long BaseType_t;
typedef unsigned long UBaseType_t;
typedef portSTACK_TYPE StackType_t;

#if( configUSE_16_BIT_TICKS == 1 )
	typedef uint16_t TickType_t;
	#define portMAX_DELAY ( TickType_t ) 0xffff
#else
	typedef uint32_t TickType_t;
	#define portMAX_DELAY ( TickType_t ) 0xffffffffUL
#endif

/* Architecture specifics. */
#define portSTACK_GROWTH                 (-1)
#ifdef QEMU_SIM
#define portTICK_PERIOD_MS              ((TickType_t)10000)
#else
#define portTICK_PERIOD_MS              ((TickType_t)32)		// 32768 / 32 = 1024
#endif
#define portBYTE_ALIGNMENT               4
#define portCRITICAL_NESTING_IN_TCB      1

/* Scheduler utilities. */
extern void vPortYield(void);
extern void vPortStartTask(void);
extern int vPortSetInterruptMask(void);
extern void vPortClearInterruptMask(int);
extern void vTaskEnterCritical(void);
extern void vTaskExitCritical(void);
extern void portYIELD_FROM_ISR(BaseType_t xHigherPriorityTaskWoken);

#define portNOP()                                             __asm volatile("nop")
#define portYIELD()                                           vPortYield()
#if (TASK_MODE == TASK_MODE_M)
  #define portDISABLE_INTERRUPTS()                            __asm volatile( "csrc mstatus,8" )
  #define portENABLE_INTERRUPTS()                             __asm volatile( "csrs mstatus,8" )
#else
  #define portDISABLE_INTERRUPTS()                            // only allow to enable/disable the interrupt in U/S mode
  #define portENABLE_INTERRUPTS()                             // only allow to enable/disable the interrupt in U/S mode
#endif
#define portENTER_CRITICAL()                                  vTaskEnterCritical()
#define portEXIT_CRITICAL()                                   vTaskExitCritical()
#define portSET_INTERRUPT_MASK_FROM_ISR()                     vPortSetInterruptMask()
#define portCLEAR_INTERRUPT_MASK_FROM_ISR(uxSavedStatusValue) vPortClearInterruptMask(uxSavedStatusValue)
#define portTASK_FUNCTION_PROTO( vFunction, pvParameters )    void vFunction( void *pvParameters )
#define portTASK_FUNCTION( vFunction, pvParameters )          void vFunction( void *pvParameters )

#ifndef portSUPPRESS_TICKS_AND_SLEEP
    extern void vPortSuppressTicksAndSleep(TickType_t xExpectedIdleTime);
    #define portSUPPRESS_TICKS_AND_SLEEP( xExpectedIdleTime ) vPortSuppressTicksAndSleep(xExpectedIdleTime)
#endif

#ifdef __cplusplus
}
#endif

#endif /* PORTMACRO_H */

