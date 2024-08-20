.globl _start

.text

_start:
    li      a0, 0
    blt     a0, zero, log
    addi    a7, x0, 93
    ecall

log:
    srli    
    addi    a0, a0, 1
    addi    a7, x0, 93
    ecall