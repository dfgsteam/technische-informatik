.globl _start

.text

_start:
    li      a0, 1 # z 
    li      s1, 2 # x
    li      t0, 5 # k
    li      t1, 0 # i
    blt     t1, t0, MULTI
    j END

MULTI:
    mul     a0, a0, s1
    addi    t1, t1, 1
    blt     t1, t0, MULTI
    j END

END:
    addi    a7, x0, 93
    ecall