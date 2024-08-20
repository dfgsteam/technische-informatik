.globl _start

.text

_start:
    li      a0, 0
    li      t0, 30
    li      t1, 35
    blt     t0, t1, Bigger

    sub    a0, t0, t1

    addi    a7, x0, 93
    ecall

Bigger:
    sub    a0, t1, t0
    addi    a7, x0, 93
    ecall