.globl _start
 
.text
 
_start:
    la s0, quad
    lw t0, 0(s0)
    lw t1, 4(s0)
    lw t2, 8(s0)
    lw t3, 12(s0)
    
    add a0, t0, t1
    add a0, a0, t2
    add a0, a0, t3

    li a7, 93
    ecall
 
.data
quad:   .word   5, 11, 3, 7