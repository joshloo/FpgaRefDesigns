#include "riscv.h"
#include "hal.h"
#include "config.h"
#include "FreeRTOS.h"
#include "task.h"
#include "syscall.h"


extern void *this_context();

static uint32_t esr_envcall(uint32_t mcause, uint32_t mepc, void *param)
{
    // printf("enter syscall handler, mepc=0x%08x\r\n");
    context_t *ctx = (context_t *)this_context();
    uint32_t syscall_num = ctx->a7;

    switch (syscall_num) {
    case SYS_task_delay:
        {
            ctx->pc += 4;
    
            vTaskDelay((TickType_t)ctx->a0);
            break;
        }
    case SYS_task_suspend:
        {
            vTaskSuspend((TaskHandle_t)(ctx->a0));
            break;
        }
    case SYS_task_resume:
        {
            vTaskResume((TaskHandle_t)(ctx->a0));
            break;
        }
    case SYS_secured_write:
        {
            *(uint32_t *)(ctx->a0) = (uint32_t)(ctx->a1);    
            break;
        }
    case SYS_secured_read:
        {
            *(uint32_t *)(ctx->a1) = *(uint32_t *)(ctx->a0);    
            break;
        }
    default:
        {
            printf("enter syscall handler, mepc=0x%08x\r\n");
            ctx->a0 = -1;
            break;
        }
    }

    return mepc + 4;
}


static void panic()
{
    while (1)
    {
        __asm volatile("wfi");
    }    
}


static void handle_software_error()
{
    if (trap_depth() >= 2)
    {
        printf("* hanging cpu due to nested trap, depth=%d\r\n", trap_depth());
        panic();
    }
    else
    {
        printf("* exception ignored\r\n");
    }
}


static uint32_t esr_inst_addr_misaligned(uint32_t mcause, uint32_t mepc, void *ctx)
{
    printf("* enter instruction address misaligned handler, mepc=0x%08x\r\n", mepc);
    handle_software_error();
    return mepc + 4;
}

static uint32_t esr_load_addr_misaligned(uint32_t mcause, uint32_t mepc, void *ctx)
{
    printf("* enter load address misaligned handler, mepc=0x%08x\r\n", mepc);
    handle_software_error();
    return mepc + 4;
}

static uint32_t esr_store_addr_misaligned(uint32_t mcause, uint32_t mepc, void *ctx)
{
    printf("* enter store address misaligned handler, mepc=0x%08x\r\n", mepc);
    handle_software_error();
    return mepc + 4;
}


static uint32_t esr_illegal_inst(uint32_t mcause, uint32_t mepc, void *ctx)
{
    printf("* enter illegal instruction exception handler, mepc=0x%08x\r\n", mepc);
    handle_software_error();
    return mepc + 4;
}


static uint32_t esr_inst_access_fault(uint32_t mcause, uint32_t mepc, void *ctx)
{
    printf("* load access fault exception, mepc=0x%08x\r\n", mepc);
    handle_software_error();
    return mepc + 4;
}


static uint32_t esr_load_access_fault(uint32_t mcause, uint32_t mepc, void *ctx)
{
    printf("* enter load access fault exception handler, mepc=0x%08x\r\n", mepc);
    handle_software_error();
    return mepc + 4;
}


static uint32_t esr_store_access_fault(uint32_t mcause, uint32_t mepc, void *ctx)
{
    printf("* enter store access fault exception handler, mepc=0x%08x\r\n", mepc);
    handle_software_error();
    return mepc + 4;
}


void os_init()
{
/*
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
*/

    exception_install(MCAUSE_EXC_INST_ADDR_MISALIGNED, esr_inst_addr_misaligned);
    exception_install(MCAUSE_EXC_LOAD_ADDR_MISALIGNED, esr_load_addr_misaligned);
    exception_install(MCAUSE_EXC_STORE_ADDR_MISALIGNED, esr_store_addr_misaligned);
    exception_install(MCAUSE_EXC_ILLEGAL_INST, esr_illegal_inst);
    exception_install(MCAUSE_EXC_UMODE_ENV_CALL, esr_envcall);
    exception_install(MCAUSE_EXC_SMODE_ENV_CALL, esr_envcall);
    exception_install(MCAUSE_EXC_MMODE_ENV_CALL, esr_envcall);
    exception_install(MCAUSE_EXC_INST_ACCESS_FAULT, esr_inst_access_fault);
    exception_install(MCAUSE_EXC_LOAD_ACCESS_FAULT, esr_load_access_fault);
    exception_install(MCAUSE_EXC_STORE_ACCESS_FAULT, esr_store_access_fault);
}


extern void task_entry(void *param);
BaseType_t task_create(TaskFunction_t pvTaskCode, const char *name, uint32_t pri, TaskHandle_t *handle)
{
    return xTaskCreate(task_entry,
                       name, 
                       configMINIMAL_STACK_SIZE,
                       pvTaskCode,
                       pri,
                       handle);
}


extern void sc_task_delay(uint32_t tick);
void task_delay(uint32_t tick)
{
#if (TASK_MODE == TASK_MODE_M)
    vTaskDelay(tick);
#else
    sc_task_delay(tick);
#endif
}


extern void sc_task_suspend(TaskHandle_t task);
void task_suspend(TaskHandle_t task)
{
#if (TASK_MODE == TASK_MODE_M)
    vTaskSuspend(task);
#else
    sc_task_suspend(task);
#endif
}


extern void sc_task_resume(TaskHandle_t task);
void task_resume(TaskHandle_t task)
{
#if (TASK_MODE == TASK_MODE_M)
    vTaskResume(task);
#else
    sc_task_resume(task);
#endif
}


extern uint32_t sc_secured_write(uint32_t addr, uint32_t val);
uint32_t secured_write(uint32_t addr, uint32_t val)
{
    sc_secured_write(addr, val);
    return 0;
}


extern uint32_t sc_secured_read(uint32_t addr, uint32_t *val);
uint32_t secured_read(uint32_t addr, uint32_t *val)
{
    sc_secured_read(addr, val);
    return 0;
}

