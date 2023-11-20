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
#include "local_uart.h"


unsigned char local_uart_init(struct local_uart_instance *this_uart,
            unsigned int base_addr,
            unsigned int sys_clk,
            unsigned int baud_rate,
            unsigned char stop_bits, unsigned char data_width)
{
    volatile struct local_uart_dev *dev;
    if (NULL == this_uart) {
        return 1;
    }
    this_uart->base = base_addr;
    dev = (volatile struct local_uart_dev *) (this_uart->base);

    /*initialize the instance data */
    this_uart->base = base_addr;
    this_uart->sys_clk = sys_clk;
    this_uart->baudrate = baud_rate;
    this_uart->databits = data_width;
    this_uart->stopbits = stop_bits;

    local_uart_config(this_uart, 8, 0, 0, 1);
    local_uart_set_rate(this_uart, baud_rate);

#ifdef QEMU_SIM
    this_uart->ier = LOCAL_UART_IER_RX_INT_MASK;
    dev->ier = this_uart->ier;
#endif

    this_uart->blockingTx = 1;

    return 0;
}

/*
 ***************************************************************
 * Retrieves a character from the internal-UART
 * Returns 0 if no error.
 * If interrupts are enabled, go through the buffer.
 * Else, interact directly with the uart.
 ***************************************************************
*/
unsigned char local_uart_getc(struct local_uart_instance *this_uart,
            unsigned char *pucChar)
{
    volatile unsigned char uiValue;
    volatile struct local_uart_dev *dev;
    if (NULL == this_uart) {
        return 1;
    }
    if (pucChar == 0)
        return (LOCAL_UART_ERR_INVALID_ARGUMENT);

    dev = (volatile struct local_uart_dev *) (this_uart->base);

    do {
        uiValue = dev->lsr;
        if (uiValue & LOCAL_UART_LSR_RX_RDY_MASK) {
            *pucChar = dev->rxtx;
            return 0;
        }

        /* if rx is non-blocking, return immediately */
        if (this_uart->blockingRx == 0)
            return (LOCAL_UART_ERR_WOULD_BLOCK);

    } while (1);

    return (255);
}

/*
 ***************************************************************
 * Sends a character over the internal-UART
 * Returns 0 if no error
 ***************************************************************
*/
unsigned char local_uart_putc(struct local_uart_instance *this_uart,
            unsigned char ucChar)
{
    volatile unsigned char uiValue;
    volatile struct local_uart_dev *dev;
    if (NULL == this_uart) {
        return 1;
    }
    dev = (volatile struct local_uart_dev *) (this_uart->base);

    do {
        /* if uart's ready to accept character, send immediately */
        uiValue = dev->lsr;
        if (uiValue & LOCAL_UART_LSR_TX_RDY_MASK) {
            dev->rxtx = ucChar;
            return (0);
        }

        /* if non-blocking tx, return immediately */
        if (this_uart->blockingTx == 0)
            return (LOCAL_UART_ERR_WOULD_BLOCK);
    } while (1);

    /* all done */
    return 0;
}

/*
 ***************************************************************
 * Changes datawidth, parity-selection and stop-bit selection
 *
 * Argument:
 *
 * local_uart_instance *ctx: context to uart
 * unsigned int dwidth: data width in bits(5, 6, 7, 8)
 * unsigned int parity_en: 0 => no pareity, 1 => parity enabled
 * unsigned int even_odd (parity): - 1 => even, 0 => odd
 * unsigned int stopbits: stop bits (1,2)
 *
 ***************************************************************
 */
unsigned char local_uart_config(struct local_uart_instance *this_uart,
              unsigned int dwidth,
              unsigned char parity_en,
              unsigned char even_odd, unsigned int stopbits)
{
    volatile struct local_uart_dev *dev;
    unsigned char lcr;
    if (NULL == this_uart) {
        return 1;
    }
    dev = (volatile struct local_uart_dev *) (this_uart->base);

    /* check data-width value */
    if (dwidth > 8)
        return (LOCAL_UART_ERR_INVALID_ARGUMENT);
    else if (dwidth < 5)
        return (LOCAL_UART_ERR_INVALID_ARGUMENT);

    /* check stopbit value */
    if ((stopbits != 1) && (stopbits != 2))
        return (LOCAL_UART_ERR_INVALID_ARGUMENT);

    /* update context */
    this_uart->databits = dwidth;
    this_uart->stopbits = stopbits;

    /* configure LOCAL_UART */
    switch (dwidth) {
    case 5:{
            lcr = (stopbits == 2) ? 0x4 : 0x0;
            break;
        }
    case 6:{
            lcr = (stopbits == 2) ? 0x5 : 0x1;
            break;
        }
    case 7:{
            lcr = (stopbits == 2) ? 0x6 : 0x2;
            break;
        }
    default:{        /* 8 databits */
            lcr = (stopbits == 2) ? 0x7 : 0x3;
            this_uart->databits = 8;
            break;
        }
    }

    /* parity control */
    if (parity_en == 1) {
        if (even_odd == 1)
            lcr |= 0x18;
        else
            lcr |= 0x8;
    }
    dev->lcr = lcr;

    /* all done */
    return 0;
}

/*
 ***************************************************************
 * Changes baudrate.
 * NOTE: User must make sure the baudrate passed is correct.
 ***************************************************************
*/
unsigned char local_uart_set_rate(struct local_uart_instance *this_uart,
                unsigned int baudrate)
{
    unsigned int divisor;
    if (NULL == this_uart) {
        return 1;
    }
    volatile struct local_uart_dev *dev;
    dev = (volatile struct local_uart_dev *) (this_uart->base);

    /* it would be nice to have uart stop-receiver/stop-transmitter functionality! */
    /* the only check we do is for zero (to avoid divide-by-zero) */
    if (baudrate == 0)
        return (LOCAL_UART_ERR_INVALID_ARGUMENT);

    /* set to new baudrate */
    this_uart->baudrate = baudrate;

    /* Calculate clock-divisor */
    divisor = (this_uart->sys_clk) / baudrate;
    /*
     * Setup uart:
     * - divisor
     */
#ifdef QEMU_SIM
    unsigned int lcr = dev->lcr;
    lcr |= (1 << 7);
    dev->lcr = lcr;
    unsigned int *address = (unsigned int *) &(dev->rxtx);
#else
    unsigned int *address = (unsigned int *) &(dev->dlr_lsb);
#endif
    *address = (unsigned char) (divisor);
    // *address = 4; // 115200 for qemu
    address++;
    *address = (unsigned char) (divisor >> 8);

#ifdef QEMU_SIM
    lcr = dev->lcr;
    lcr &= ~(1 << 7);
    dev->lcr = lcr;
#endif

    return 0;
}

