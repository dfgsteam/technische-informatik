.globl _start

.data
str:        .ascii  "'\x24' '\xc2\xa2' '\xe2\x82\xac'\n"

.text
_start:     addi    a0, x0, 1
            la      a1, str
            addi    a2, x0, 15
            #j       PRINT
            #j       END

PRINT:      addi    a7, x0, 64          # 64 is the code for print a1
            ecall

END:        addi    a7, x0, 93
            ecall