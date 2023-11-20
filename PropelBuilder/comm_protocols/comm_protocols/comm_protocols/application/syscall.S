#include "syscall.h"

# void sc_task_delay(uint32_t tick)
.global sc_task_delay
sc_task_delay:
    li a7, SYS_task_delay
    ecall
    ret

# void sc_task_suspend(uint32_t task)
.global sc_task_suspend
sc_task_suspend:
    li a7, SYS_task_suspend
    ecall
    ret

# void sc_task_resume(uint32_t task)
.global sc_task_resume
sc_task_resume:
    li a7, SYS_task_resume
    ecall
    ret

# uint32_t sc_secured_write(uint32_t offset, uint32_t val)
.global sc_secured_write
sc_secured_write:
    li a7, SYS_secured_write
    ecall
    ret

# uint32_t sc_secured_read(uint32_t offset, uint32_t *val)
.global sc_secured_read
sc_secured_read:
    li a7, SYS_secured_read
    ecall
    ret

