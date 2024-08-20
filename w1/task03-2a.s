.globl _start

.text

_start:
    li      a0, 0           # counter
    la      t0, LIST        # list
    lw      t1, LEN         # pointer
    li      t2, 0

LOOP:
    blt     t1, t2, END     # if index > len(list): END
    lw      t3, 0(t0)       # value from list

    blt     t3, zero, COUNT # if value less than zero
    j LOOPEND               # go to LOOPEND

COUNT:
    addi    a0, a0, 1       # counter++
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