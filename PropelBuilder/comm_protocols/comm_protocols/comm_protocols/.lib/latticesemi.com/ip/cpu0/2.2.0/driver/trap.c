/*   ==================================================================

     >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
     ------------------------------------------------------------------
     Copyright (c) 2019-2020 by Lattice Semiconductor Corporation
     ALL RIGHTS RESERVED
     ------------------------------------------------------------------

       IMPORTANT: THIS FILE IS USED BY OR GENERATED BY the LATTICE PROPEL™
       DEVELOPMENT SUITE, WHICH INCLUDES PROPEL BUILDER AND PROPEL SDK.

       Lattice grants permission to use this code pursuant to the
       terms of the Lattice Propel License Agreement.

     DISCLAIMER:

    LATTICE MAKES NO WARRANTIES ON THIS FILE OR ITS CONTENTS,
    WHETHER EXPRESSED, IMPLIED, STATUTORY,
    OR IN ANY PROVISION OF THE LATTICE PROPEL LICENSE AGREEMENT OR
    COMMUNICATION WITH LICENSEE,
    AND LATTICE SPECIFICALLY DISCLAIMS ANY IMPLIED WARRANTY OF
    MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
    LATTICE DOES NOT WARRANT THAT THE FUNCTIONS CONTAINED HEREIN WILL MEET
    LICENSEE 'S REQUIREMENTS, OR THAT LICENSEE' S OPERATION OF ANY DEVICE,
    SOFTWARE OR SYSTEM USING THIS FILE OR ITS CONTENTS WILL BE
    UNINTERRUPTED OR ERROR FREE,
    OR THAT DEFECTS HEREIN WILL BE CORRECTED.
    LICENSEE ASSUMES RESPONSIBILITY FOR SELECTION OF MATERIALS TO ACHIEVE
    ITS INTENDED RESULTS, AND FOR THE PROPER INSTALLATION, USE,
    AND RESULTS OBTAINED THEREFROM.
    LICENSEE ASSUMES THE ENTIRE RISK OF THE FILE AND ITS CONTENTS PROVING
    DEFECTIVE OR FAILING TO PERFORM PROPERLY AND IN SUCH EVENT,
    LICENSEE SHALL ASSUME THE ENTIRE COST AND RISK OF ANY REPAIR, SERVICE,
    CORRECTION,
    OR ANY OTHER LIABILITIES OR DAMAGES CAUSED BY OR ASSOCIATED WITH THE
    SOFTWARE.IN NO EVENT SHALL LATTICE BE LIABLE TO ANY PARTY FOR DIRECT,
    INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES,
    INCLUDING LOST PROFITS,
    ARISING OUT OF THE USE OF THIS FILE OR ITS CONTENTS,
    EVEN IF LATTICE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
    LATTICE 'S SOLE LIABILITY, AND LICENSEE' S SOLE REMEDY,
    IS SET FORTH ABOVE.
    LATTICE DOES NOT WARRANT OR REPRESENT THAT THIS FILE,
    ITS CONTENTS OR USE THEREOF DOES NOT INFRINGE ON THIRD PARTIES'
    INTELLECTUAL PROPERTY RIGHTS, INCLUDING ANY PATENT. IT IS THE USER' S
    RESPONSIBILITY TO VERIFY THE USER SOFTWARE DESIGN FOR CONSISTENCY AND
    FUNCTIONALITY THROUGH THE USE OF FORMAL SOFTWARE VALIDATION METHODS.
     ------------------------------------------------------------------

     ================================================================== */

#include "cpu.h"
#include "riscv.h"
#include "debug.h"


extern void trap_entry(void);
extern void nmi_entry(void);
extern void trap_vector(void);
extern void isr_callback(uint32_t mcause);
extern void nmi_callback(uint32_t mcause);
extern uint32_t esr_callback(uint32_t mcause, uint32_t mepc, void *cxt);
extern void exception_init();



context_t g_ctx = { 0 };
context_t *global_context()
{
    return &g_ctx;
}


void trap_init()
{
    w_mscratch((reg_t)global_context());

    exception_init();

    if (MTVEC_MODE_SEL == MTVEC_MODE_DIRECT)
    {
        w_mtvec((reg_t)trap_entry);
    }
    else
    {
        w_mtvec((reg_t)trap_vector | MTVEC_MODE_VECTORED);
    }

    csr_write(CSR_MNVEC, (reg_t)nmi_entry);
}


reg_t trap_handler(reg_t epc, reg_t cause, context_t *cxt)
{
    reg_t return_pc = epc;
    reg_t cause_code = cause & 0xfff;

    if (cause & 0x80000000) {
        /* Asynchronous trap - interrupt */
        // DEBUG("interrupt!, cause=%d\r\n", cause_code);
        isr_callback(cause_code);
    } else {
        /* Synchronous trap - exception */
        // DEBUG("exception!, cause=%d, epc=0x%08x\r\n", cause_code, epc);
        return_pc = esr_callback(cause_code, epc, cxt);
    }

    return return_pc;
}


uint32_t g_trap_depth = 0;
uint32_t trap_depth()
{
    return g_trap_depth;
}


void nmi_handler(reg_t epc, reg_t cause, context_t *cxt)
{
    ERROR("nmi interrupt, epc=0x%08x, cause=%d\r\n", epc, cause);
    reg_t cause_code = cause & 0xfff;
    nmi_callback(cause_code);
}



