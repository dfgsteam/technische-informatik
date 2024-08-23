.globl main

.data
format:     .string "%d\n"

.text
main:
    li      a0, 5           // init value a0 with 5
    jal     foobar          // jump to foobar, after last line from foobar it will return to the next line
    mv      a1, a0          // save value of a0 in a1
    la      a0, format      // the adress (pointer) from the label data save in var a0
    call    printf          // this function is not availible in riscv but will do in x86 the same as jal
    li      a0, 0           // store in a0 the int 0
    li      a7, 93          // store in a7 (exit code of the programm) the code 93 = finish with no errors
    ecall

foobar:
    addi    sp, sp, -8      // add/or store in sp the value -8
    sw      x8, 8(sp)       // load the register x0 on the storage with the 3. adress 
    sw      s0, 4(sp)       // load the register s0 on the storage with the 2. adress 
    addi    x8, sp, 8       // add to the reg x0 the value of sp plus 8
    li      s0, 0           // init s0 with 0
foo:
    beqz    a0, bar
    add     s0, s0, a0      // add to s0 the value of a0
    addi    a0, a0, -1      // add to a0 the value -1 (subtract)
    j       foo             // jump to the label foo (in this case it is a loop)
bar:
    mv      a0, s0          // store the calue of s0 in a0
    lw      s0, 4(sp)       // the value of the storage (2. adress) is loading to the storage s0  
    lw      x8, 8(sp)       // the value of the storage (2. adress) is loading to the storage x8
    addi    sp, sp, 8       // add to sp the value 8 (subtract)
    ret
