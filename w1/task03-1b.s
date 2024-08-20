.globl _start

.text

_start:
    li      a0, 0

    la      t0, list
    la      t1, list_end

    la      s0, last
    lw      t6, 0(s0)

    sub     t2, t1, t0

    li      t3, 0

LOOP:
    blt     t2, t3, NOTFOUND # if index > len(list): END
    lw      t4, 0(t0) # load value from list
    beq     t4, t6, END # if value == last: END
    addi    a0, a0, 1
    addi    t0, t0, 4
    j       LOOP

NOTFOUND:
    addi      a0, 0, -1
    j       END

END:
    addi    a7, x0, 93
    ecall


.data

list:   .word   2, -5, 3, -90, 300, -54, -23, -35, 120,
list_end:
last:   .word   -54
last_end: