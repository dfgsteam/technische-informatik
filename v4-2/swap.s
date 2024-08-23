.globl _start

.data
v:      .ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.text
_start:     # first print
            li      a0, 1
            la      a1, v
            li      a2, 27
            li      a7, 64          # 64 is the code for print a1
            ecall

            # edit
            la      a0, v
            li      a1, 2
            li      a2, 23
            jal     ra, SWAP

            # second print
            li      a0, 1
            la      a1, v
            li      a2, 27
            li      a7, 64          # 64 is the code for print a1
            ecall

            # end file
            j END

SWAP:       add     sp, sp, -12     # allocate storage (space) for 3 register (adresses)
            sw      s0, 12(sp)
            sw      s1, 8(sp)
            sw      x8, 4(sp)

            add     a1, a0, a1
            lb      s0, 0(a1)
            add     a2, a0, a2
            lb      s1, 0(a2)

            sb      s1, 0(a1)
            sb      s0, 0(a2)

            lw      s0, 12(sp)
            lw      s1, 8(sp)
            lw      x8, 4(sp)
            add     sp, sp, 12

            jr      ra

END:        li      a0, 0
            li      a7, 93
            ecall
