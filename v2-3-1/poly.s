.globl _start
 
.text
 
_start:
    la s0, POLY
    la s1, RES
    mv a0, zero

LOOP:
    beq s0, s1, END
    lw t0, 0(s0)
    add a0, a0, t0
    addi s0, s0, 4
    j LOOP:

END:
    sw a0, 0(s0)

    li a7, 93
    ecall
 
.data
POLY:   .word   5, 11, 3, 13, 7, 17
RES:   .word   0