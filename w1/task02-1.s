.globl _start

.text

_start:
    li      a0, 30
    blt     a0, zero, negBetrag
    addi    a7, x0, 93
    ecall

negBetrag:
    not     a0, a0
    addi    a0, a0, 1
    addi    a7, x0, 93
    ecall