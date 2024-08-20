.globl _start

.text

_start:
    la      t0, LIST        # list
    lw      t4, LEN         # pointer
    li      t2, 0

    li      a0, 200000      # lowest
    li      a1, -200000     # highest

LOOP:
    blt     t4, t2, END     # if index > len(list): END
    lw      t3, 0(t0)       # value from list

    blt     t3, a0, MIN     # if value less than minimum
    blt     a1, t3, MAX     # if value bigger than maximum
    j LOOPEND               # go to LOOPEND

MIN:
    mv      a0, t3
    j       LOOPEND         # go to LOOPEND

MAX:
    mv      t3, a1
    j       LOOPEND         # go to LOOPEND

LOOPEND:
    addi    t0, t0, 4       # set start from List to next value
    addi    t2, t2, 1       # increase index
    j       LOOP            # restart LOOP

END:
    addi    a7, x0, 93      # set exitcode to success
    ecall                   # finish program


.data

LIST:   .word   2, -5, 3, -90, 300, -54, -23, -35, 120, -54
LEN:    .word   10