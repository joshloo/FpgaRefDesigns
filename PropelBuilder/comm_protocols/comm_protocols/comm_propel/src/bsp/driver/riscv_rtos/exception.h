/*   ==================================================================

     >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
     ------------------------------------------------------------------
     Copyright (c) 2019-2023 by Lattice Semiconductor Corporation
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
    UNEXCEPTIONED OR ERROR FREE,
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
#ifndef EXCEPTION_H_
#define EXCEPTION_H_

#include "riscv.h"


typedef enum exception_mcause {
    MCAUSE_EXC_MIN                     = 0,
    MCAUSE_EXC_INST_ADDR_MISALIGNED    = MCAUSE_EXC_MIN,
    MCAUSE_EXC_INST_ACCESS_FAULT       = 1,
    MCAUSE_EXC_ILLEGAL_INST            = 2,
    MCAUSE_EXC_BREAKPOINT              = 3,
    MCAUSE_EXC_LOAD_ADDR_MISALIGNED    = 4,
    MCAUSE_EXC_LOAD_ACCESS_FAULT       = 5,
    MCAUSE_EXC_STORE_ADDR_MISALIGNED   = 6,
    MCAUSE_EXC_STORE_ACCESS_FAULT      = 7,
    MCAUSE_EXC_UMODE_ENV_CALL          = 8,
    MCAUSE_EXC_SMODE_ENV_CALL          = 9,
    MCAUSE_EXC_RESERVED_10             = 10,
    MCAUSE_EXC_MMODE_ENV_CALL          = 11,
    MCAUSE_EXC_INST_PAGE_FAULT         = 12,
    MCAUSE_EXC_LOAD_PAGE_FAULT         = 13,
    MCAUSE_EXC_RESERVED_14             = 14,
    MCAUSE_EXC_STORE_PAGE_FAULT        = 15,
    MCAUSE_EXC_RESERVED_16             = 16,
    MCAUSE_EXC_RESERVED_17             = 17,
    MCAUSE_EXC_RESERVED_18             = 18,
    MCAUSE_EXC_RESERVED_19             = 19,
    MCAUSE_EXC_RESERVED_20             = 20,
    MCAUSE_EXC_RESERVED_21             = 21,
    MCAUSE_EXC_RESERVED_22             = 22,
    MCAUSE_EXC_RESERVED_23             = 23,
    MCAUSE_EXC_CUSTOM_24               = 24,
    MCAUSE_EXC_CUSTOM_25               = 25,
    MCAUSE_EXC_CUSTOM_26               = 26,
    MCAUSE_EXC_CUSTOM_27               = 27,
    MCAUSE_EXC_CUSTOM_28               = 28,
    MCAUSE_EXC_CUSTOM_29               = 29,
    MCAUSE_EXC_CUSTOM_30               = 30,
    MCAUSE_EXC_CUSTOM_31               = 31,
    MCAUSE_EXC_RESERVED_32             = 32,
    MCAUSE_EXC_RESERVED_33             = 33,
    MCAUSE_EXC_RESERVED_34             = 34,
    MCAUSE_EXC_RESERVED_35             = 35,
    MCAUSE_EXC_RESERVED_36             = 36,
    MCAUSE_EXC_RESERVED_37             = 37,
    MCAUSE_EXC_RESERVED_38             = 38,
    MCAUSE_EXC_RESERVED_39             = 39,
    MCAUSE_EXC_RESERVED_40             = 40,
    MCAUSE_EXC_RESERVED_41             = 41,
    MCAUSE_EXC_RESERVED_42             = 42,
    MCAUSE_EXC_RESERVED_43             = 43,
    MCAUSE_EXC_RESERVED_44             = 44,
    MCAUSE_EXC_RESERVED_45             = 45,
    MCAUSE_EXC_RESERVED_46             = 46,
    MCAUSE_EXC_RESERVED_47             = 47,
    MCAUSE_EXC_CUSTOM_48               = 48,
    MCAUSE_EXC_CUSTOM_49               = 49,
    MCAUSE_EXC_CUSTOM_50               = 50,
    MCAUSE_EXC_CUSTOM_51               = 51,
    MCAUSE_EXC_CUSTOM_52               = 52,
    MCAUSE_EXC_CUSTOM_53               = 53,
    MCAUSE_EXC_CUSTOM_54               = 54,
    MCAUSE_EXC_CUSTOM_55               = 55,
    MCAUSE_EXC_CUSTOM_56               = 56,
    MCAUSE_EXC_CUSTOM_57               = 57,
    MCAUSE_EXC_CUSTOM_58               = 58,
    MCAUSE_EXC_CUSTOM_59               = 59,
    MCAUSE_EXC_CUSTOM_60               = 60,
    MCAUSE_EXC_CUSTOM_61               = 61,
    MCAUSE_EXC_CUSTOM_62               = 62,
    MCAUSE_EXC_CUSTOM_63               = 63,
    MCAUSE_EXC_MAX                     = MCAUSE_EXC_CUSTOM_63,
    MCAUSE_EXC_NUM                     = MCAUSE_EXC_MAX + 1
} exception_mcause_e;



typedef uint32_t (*exc_handler)(uint32_t cause, uint32_t mepc, void *);

typedef struct exception_entry {
	exc_handler esr;
} exception_entry_t;

uint32_t exception_install(uint32_t mcause, exc_handler handler);



#endif				/* EXCEPTION_H_ */
