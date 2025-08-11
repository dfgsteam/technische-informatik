.globl _start

.text
_start:     li      a1, 20
            li      a2, 22
            jal     MAX
            j       END

MAX:        beq     a1, a2, LOADA1

            sub     t0, a2, a1
            li      t1, 2
            div     t0, t0, t1           # mid

            mv      s0, a1              # first
            mv      s1, a2              # last
            
            # calc left
            add     a2, s0, t0
            mv      a1, s0
            jal     MAX
            mv      s2, a0

            # calc right
            add     a1, s0, t0
            addi    a1, a1, 1
            mv      a2, s1
            jal     MAX
            mv      s3, a0

            blt     s2, s3, RETA2
            j       RETA1

RETA1:      mv      a0, s2
            ret

RETA2:      mv      a0, s3
            ret

LOADA1:     mv      a0, a1
            j       END

END:        li      a7, 93
            ecall
