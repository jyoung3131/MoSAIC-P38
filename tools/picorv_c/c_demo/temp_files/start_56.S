.section .text
.global _ftext
.global _pvstart
_pvstart:
lui x30, %hi(0xe0014)
addi x30, x30, %lo(0xe0014)
jalr x30
nop
nop
nop
addi x0, zero, 0
addi x1, zero, 0
addi x2, zero, 0
addi x3, zero, 0
addi x4, zero, 0
addi x5, zero, 0
addi x6, zero, 0
addi x7, zero, 0
addi x8, zero, 0
addi x9, zero, 0
addi x10, zero, 0
addi x11, zero, 0
addi x12, zero, 0
addi x13, zero, 0
addi x14, zero, 0
addi x15, zero, 0
addi x16, zero, 0
addi x17, zero, 0
addi x18, zero, 0
addi x19, zero, 0
addi x20, zero, 0
addi x21, zero, 0
addi x22, zero, 0
addi x23, zero, 0
addi x24, zero, 0
addi x25, zero, 0
addi x26, zero, 0
addi x27, zero, 0
addi x28, zero, 0
addi x29, zero, 0
la x30, programName
la x31, tileId
lui sp, %hi(0xe3ffc)
addi sp, sp, %lo(0xe3ffc)
addi sp,sp,-16
sw zero,0(sp)
sw zero,-4(sp)
sw zero,-8(sp)
sw zero,-12(sp)
sw x30,4(sp)
sw x31,8(sp)
addi x30, zero, 0
addi x31, zero, 0
j _ftext
.data
tileId: .ascii "56"
programName: .ascii "./async_trisolve.c"
