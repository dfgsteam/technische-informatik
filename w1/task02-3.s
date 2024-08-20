.globl _start

.text

_start:
    li      a0, 0 # k
    li      t0, 0 # x
    blt     zero, t0, LOG
    j END

LOG:
    srli    t0, t0, 1
    addi    a0, a0, 1
    blt     zero, t0, LOG
    j END

END:
    addi    a7, x0, 93
    ecall