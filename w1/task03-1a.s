.globl _start

.text

_start:
    li      a0, 0
    li      s0, 4

    la      t0, list
    la      t1, list_end

    sub     t2, t1, t0
    div     a0, t2, s0

    la      t3, last
    la      t4, last_end

    sub     t5, t4, t3
    div     t6, t5, s0
    add     a0, a0, t6

    j END

END:
    addi    a7, x0, 93
    ecall


.data

list:   .word   2, -5, 3, -90, 300, -54, -23, -35, 120,
list_end:
last:   .word   -54
last_end: