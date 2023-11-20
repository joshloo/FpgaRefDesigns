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

/* Set per XLEN */
#define LREG  lw
#define SREG  sw
#define XBYTE 4

/* Interrupt enabled by default */
#define MSTATUS_PRV1 0x1880


# save all General-Purpose(GP) registers to context
# struct context *base = &ctx_task;
# base->ra = ra;
# ......
.macro reg_save base
	sw ra, 0(\base)
	sw sp, 4(\base)
	sw gp, 8(\base)
	sw tp, 12(\base)
	sw t0, 16(\base)
	sw t1, 20(\base)
	sw t2, 24(\base)
	sw s0, 28(\base)
	sw s1, 32(\base)
	sw a0, 36(\base)
	sw a1, 40(\base)
	sw a2, 44(\base)
	sw a3, 48(\base)
	sw a4, 52(\base)
	sw a5, 56(\base)
	sw a6, 60(\base)
	sw a7, 64(\base)
	sw s2, 68(\base)
	sw s3, 72(\base)
	sw s4, 76(\base)
	sw s5, 80(\base)
	sw s6, 84(\base)
	sw s7, 88(\base)
	sw s8, 92(\base)
	sw s9, 96(\base)
	sw s10, 100(\base)
	sw s11, 104(\base)
	sw t3, 108(\base)
	sw t4, 112(\base)
	sw t5, 116(\base)
	# we don't save t6 here, due to we have used
	# it as base, we have to save t6 in an extra step
	# outside of reg_save
.endm

# restore all General-Purpose(GP) registers from the context
# struct context *base = &ctx_task;
# ra = base->ra;
# ......
.macro reg_restore base
	lw ra, 0(\base)
	lw sp, 4(\base)
	lw gp, 8(\base)
	lw tp, 12(\base)
	lw t0, 16(\base)
	lw t1, 20(\base)
	lw t2, 24(\base)
	lw s0, 28(\base)
	lw s1, 32(\base)
	lw a0, 36(\base)
	lw a1, 40(\base)
	lw a2, 44(\base)
	lw a3, 48(\base)
	lw a4, 52(\base)
	lw a5, 56(\base)
	lw a6, 60(\base)
	lw a7, 64(\base)
	lw s2, 68(\base)
	lw s3, 72(\base)
	lw s4, 76(\base)
	lw s5, 80(\base)
	lw s6, 84(\base)
	lw s7, 88(\base)
	lw s8, 92(\base)
	lw s9, 96(\base)
	lw s10, 100(\base)
	lw s11, 104(\base)
	lw t3, 108(\base)
	lw t4, 112(\base)
	lw t5, 116(\base)
	lw t6, 120(\base)
.endm



.text

/*
 *  UBaseType_t vPortSetInterruptMask(void);
 */
    .globl vPortSetInterruptMask
vPortSetInterruptMask:
    csrrci a0, mstatus, 7
    ret

/*
 *  void vPortClearInterruptMask(UBaseType_t Level);
 */
    .globl vPortClearInterruptMask
vPortClearInterruptMask:
    csrw mstatus, a0
    ret

/*
 *  void vPortEndScheduler(void);
 */
    .globl vPortEndScheduler
vPortEndScheduler:
    ret


/*
 *  void *this_context();
 */
    .globl this_context
this_context: 
    la     t0, pxCurrentTCB
    lw     t0, (t0)
    lw     a0, (t0)
    ret


# void start_umode_task(struct context *next);
.globl start_umode_task
.align 4
start_umode_task:

    # write mscratch with the point to the context of the next task,
    # thus, after mret, mscratch will hold the poniter of context being used
    csrw    mscratch, a0

    # set mepc to the pc of the next task
    # lw  a1, 124(a0)
    # csrw    mepc, a1

    # Restore all GP registers
    # Use t6 to point to the context of the new task
    mv  t6, a0
    reg_restore t6

    # Do actual context switching.
    # Notice this will enable global interrupt
    call enter_umode


# void start_smode_task(struct context *next);
.globl start_smode_task
.align 4
start_smode_task:

    # write mscratch with the point to the context of the next task,
    # thus, after mret, mscratch will hold the poniter of context being used
    csrw    mscratch, a0

    # set mepc to the pc of the next task
    # lw  a1, 124(a0)
    # csrw    mepc, a1

    # Restore all GP registers
    # Use t6 to point to the context of the new task
    mv  t6, a0
    reg_restore t6

    # Do actual context switching.
    # Notice this will enable global interrupt
    call enter_smode


# void start_mmode_task(struct context *next);
.globl start_mmode_task
.align 4
start_mmode_task:

    # write mscratch with the point to the context of the next task,
    # thus, after mret, mscratch will hold the poniter of context being used
    csrw    mscratch, a0

    # set mepc to the pc of the next task
    # lw  a1, 124(a0)
    # csrw    mepc, a1

    # Restore all GP registers
    # Use t6 to point to the context of the new task
    mv  t6, a0
    reg_restore t6

    # Do actual context switching.
    # Notice this will enable global interrupt
    call enter_mmode


.end
