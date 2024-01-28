.section .text
.global test1
.type test1, @function

test1:
	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw ra, 104(sp)        # save return address
	sw s0, 96(sp)         # save callee-saved registers
	sw s1, 88(sp)
	sw s2, 80(sp)
	sw s3, 72(sp)
	sw s4, 64(sp)
	sw s5, 56(sp)
	sw s6, 48(sp)
	sw s7, 40(sp)
	sw s8, 32(sp)
	sw s9, 24(sp)
	sw s10, 16(sp)
	sw s11, 8(sp)
	addi s0, sp, 112     # set up s0 to point to start of stack frame


    # You can write your code here 

	li s0, 0x40a7ed7a
	li s1, 0x450809bd
	li s2, 0x7bd802dc
	li s3, 0x57f0f8c4
	p.mul s4, s0, s1
    p.mul s5, s2, s3
	add s7, s4, s5
	addi s5, s2, 125
    andi s0, s0, 0xf
	srl s2, s1, 0x7
    sll s4, s3, 0x12
	sub s5, s4, s2
	slti s2, s3, 0
	slti s2, s3, 1
    slt s2, s3, s1
	ori s1, s1, 0xff
	xori s2, s2, 0xaa
	lui s0, 0xff
	div s10, s6, s7
	sw s4, 4(sp)
	sw s5, 8(sp)

	li s1, 0xffffffff
	li s2, 0xffff0000
	li s3, 1
    li s4, 0x5fb5583c
	li s5, 0x1b4afa38
	li s6, 0x3bd7584c
	li s7, 0x68629680
	p.mul s8, s4, s5
	p.mul s9, s6, s7
    add s11, s8, s9
    addi s8, s6, 125
    andi s4, s4, 0xf
    srl s4, s5, 0x7
    sll s6, s7, 0x12
    sub s8, s4, s6
	slti s6, s7, 0
	slti s8, s9, 1
	slt s5, s6, s9
	ori s4, s0, 0xff
	xori s6, s7, 0xaa
	lui s0, 0xff
	div s11, s5, s5
	nop
	sw s8, 12(sp)
	sw s9, 16(sp)

	sub s1, s1, s3

	li s0, 0xffffffff
	li s1, 0x55555555
	li s2, 0x33333333
	li s3, 0xc71c71c7
	p.mul s4, s0, s1
    p.mul s5, s2, s3
	add s7, s4, s5
	addi s5, s2, 125
    andi s0, s0, 0xf
	srl s2, s1, 0x7
    sll s4, s3, 0x12
	sub s5, s4, s2
	slti s2, s3, 0
	slti s2, s3, 1
    slt s2, s3, s1
	ori s1, s1, 0xff
	xori s2, s2, 0xaa
	lui s0, 0xff
	div s10, s6, s7
	sw s4, 28(sp)
	sw s5, 32(sp)

	li s1, 0x0f0f0f0f
	li s2, 0xc1f07c1f
    li s4, 0x3f03f03f
	li s5, 0xf01fc07f
	li s6, 0x00ff00ff
	li s7, 0xaaaaaaaa
	p.mul s8, s4, s5
	p.mul s9, s6, s7
    add s11, s8, s9
    addi s8, s6, 125
    andi s4, s4, 0xf
    srl s4, s5, 0x7
    sll s6, s7, 0x12
    sub s8, s4, s6
	slti s6, s7, 0
	slti s8, s9, 1
	slt s5, s6, s9
	ori s4, s3, 0xff
	xori s6, s7, 0xaa
	lui s0, 0xff
	div s10, s8, s6
	nop

	li s1, 0x0f0f0f0f
	li s2, 0xc1f07c1f
    li s4, 0x3f03f03f
	li s5, 0xf01fc07f
	li s6, 0x00ff00ff
	li s7, 0xaaaaaaaa
	li s0, 0xffffffff
	li s8, 0x55555555
	li s9, 0x33333333
	li s3, 0xc71c71c7
	sw s0, 40(sp)
	sw s1, 44(sp)
	sw s2, 48(sp)
	sw s3, 52(sp)
	sw s4, 56(sp)
	sw s5, 60(sp)
	sw s6, 64(sp)
	sw s7, 68(sp)
	sw s8, 72(sp)
	sw s9, 76(sp)
	p.mul s11, s0, s0
	p.mul s11, s1, s1
	p.mul s11, s2, s2
	p.mul s11, s3, s3
	p.mul s11, s4, s4
	p.mul s11, s5, s5
	p.mul s11, s6, s6
	p.mul s11, s7, s7
	p.mul s11, s8, s8
	p.mul s11, s9, s9
	add s11, s0, s0
	add s11, s1, s1
	add s11, s2, s2
	add s11, s3, s3
	add s11, s4, s4
	add s11, s5, s5
	add s11, s6, s6
	add s11, s7, s7
	add s11, s8, s8
	add s11, s9, s9
	sub s11, s0, s0
	sub s11, s1, s1
	sub s11, s2, s2
	sub s11, s3, s3
	sub s11, s4, s4
	sub s11, s5, s5
	sub s11, s6, s6
	sub s11, s7, s7
	sub s11, s8, s8
	sub s11, s9, s9

	# USE DIFFERENT INSTRUCTIONS AS MUCH AS POSSIBLE
	li s0, 0xffffffff
	li s1, 0xaaaaaaaa
	li s2, 0x55555555
	li s3, 0x33333333
    li s4, 0x0f0f0f0f
	li s5, 0xf0f0f0f0
	li s6, 0x00ff00ff
	li s7, 0xff00ff00
	li s8, 0x0000ffff
	li s9, 0xffff0000
	li s10, 0x010
	li s11, 0x0
    add s11, s8, s9
    #addi s0, s1, 125
    sub s10, s2, s6
	#p.mul s9, s1, s11
	p.mulh s11, s0, s3
	div s11, s0, s10
	#rem s10, s4, s8
	and s3, s5, s7
    andi s4, s4, 0x2ff
	or s9, s8, s6
	ori s4, s0, 0xff
	xor s11, s11, s1
	xori s6, s7, 0xaa
    srl s5, s5, s10
	srli s3, s3, 0x3
    sll s9, s7, s10
	slli s2, s2, 0xb
	sra s10, s11, s5
	srai s7, s7, 0x1f
	slti s6, s10, 0xff
	slti s8, s2, 0xff
	slt s5, s9, s6
	slt s5, s10, s9
	sltu s0, s1, s2
	sltu s1, s10, s2
	sltiu s2, s10, 1
	sltiu s2, s0, 1
	lui s0, 0xff
	nop
	sw s11, 16(sp)
	sw s10, 20(sp)

	# STORE PATTERNS IN ALL REGISTERS
	li s0, 0xffffffff
    li s1, 0xffffffff
    li s2, 0xffffffff
    li s3, 0xffffffff
	li s4, 0xffffffff
    li s5, 0xffffffff
    li s6, 0xffffffff
    li s7, 0xffffffff
	li s8, 0xffffffff
    li s9, 0xffffffff
    li s10, 0xffffffff
    li s11, 0xffffffff
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
	li s0, 0xaaaaaaaa
	li s1, 0xaaaaaaaa
	li s2, 0xaaaaaaaa
	li s3, 0xaaaaaaaa
	li s4, 0xaaaaaaaa
	li s5, 0xaaaaaaaa
	li s6, 0xaaaaaaaa
	li s7, 0xaaaaaaaa
	li s8, 0xaaaaaaaa
	li s9, 0xaaaaaaaa
	li s10, 0xaaaaaaaa
	li s11, 0xaaaaaaaa
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
	li s0, 0x55555555
	li s1, 0x55555555
	li s2, 0x55555555
	li s3, 0x55555555
	li s4, 0x55555555
	li s5, 0x55555555
	li s6, 0x55555555
	li s7, 0x55555555
	li s8, 0x55555555
	li s9, 0x55555555
	li s10, 0x55555555
	li s11, 0x55555555
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
	li s0, 0x33333333
	li s1, 0x33333333
	li s2, 0x33333333
	li s3, 0x33333333
	li s4, 0x33333333
	li s5, 0x33333333
	li s6, 0x33333333
	li s7, 0x33333333
	li s8, 0x33333333
	li s9, 0x33333333
	li s10, 0x33333333
	li s11, 0x33333333
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
    li s0, 0x0f0f0f0f
    li s1, 0x0f0f0f0f
    li s2, 0x0f0f0f0f
    li s3, 0x0f0f0f0f
    li s4, 0x0f0f0f0f
    li s5, 0x0f0f0f0f
    li s6, 0x0f0f0f0f
    li s7, 0x0f0f0f0f
    li s8, 0x0f0f0f0f
    li s9, 0x0f0f0f0f
    li s10, 0x0f0f0f0f
    li s11, 0x0f0f0f0f
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
	li s0, 0xf0f0f0f0
	li s1, 0xf0f0f0f0
	li s2, 0xf0f0f0f0
	li s3, 0xf0f0f0f0
	li s4, 0xf0f0f0f0
	li s5, 0xf0f0f0f0
	li s6, 0xf0f0f0f0
	li s7, 0xf0f0f0f0
	li s8, 0xf0f0f0f0
	li s9, 0xf0f0f0f0
	li s10, 0xf0f0f0f0
	li s11, 0xf0f0f0f0
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
	li s0, 0x00ff00ff
	li s1, 0x00ff00ff
	li s2, 0x00ff00ff
	li s3, 0x00ff00ff
	li s4, 0x00ff00ff
	li s5, 0x00ff00ff
	li s6, 0x00ff00ff
	li s7, 0x00ff00ff
	li s8, 0x00ff00ff
	li s9, 0x00ff00ff
	li s10, 0x00ff00ff
	li s11, 0x00ff00ff
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
	li s0, 0xff00ff00
	li s1, 0xff00ff00
	li s2, 0xff00ff00
	li s3, 0xff00ff00
	li s4, 0xff00ff00
	li s5, 0xff00ff00
	li s6, 0xff00ff00
	li s7, 0xff00ff00
	li s8, 0xff00ff00
	li s9, 0xff00ff00
	li s10, 0xff00ff00
	li s11, 0xff00ff00
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
	li s0, 0x0000ffff
	li s1, 0x0000ffff
	li s2, 0x0000ffff
	li s3, 0x0000ffff
	li s4, 0x0000ffff
	li s5, 0x0000ffff
	li s6, 0x0000ffff
	li s7, 0x0000ffff
	li s8, 0x0000ffff
	li s9, 0x0000ffff
	li s10, 0x0000ffff
	li s11, 0x0000ffff
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0
	li s0, 0xffff0000
	li s1, 0xffff0000
	li s2, 0xffff0000
	li s3, 0xffff0000
	li s4, 0xffff0000
	li s5, 0xffff0000
	li s6, 0xffff0000
	li s7, 0xffff0000
	li s8, 0xffff0000
	li s9, 0xffff0000
	li s10, 0xffff0000
	li s11, 0xffff0000
	addi s11, s11, 0
    addi s11, s10, 0
	addi s11, s9, 0
    addi s11, s8, 0
	addi s11, s7, 0
    addi s11, s6, 0
	addi s11, s5, 0
    addi s11, s4, 0
	addi s11, s3, 0
    addi s11, s2, 0
	addi s11, s1, 0
    addi s11, s0, 0

	li t0, 0x0
	li t1, 0xffffffff
	li t1, 0xaaaaaaaa
	li t2, 0x55555555
	li t3, 0x33333333
    li t4, 0x0f0f0f0f
	li t5, 0x1
	li t6, 0x0000ffff
	addi t4, t1, 1
	sub t3, t0, t5
	mul t2, t6, t6

	li s0, 0
	li s1, 0xf

	# JUMPS
salta1:
	addi s0, s0, 1
	bne s0, s1, salta1

	li s0, 0
	li s1, 0xf

salta2:
	addi s0, s0, 1
	blt s0, s1, salta2

	j absolute
	nop
	nop
	nop
	nop
absolute:

	li s0, 0xf
	li s1, 0
	li t1, 1

salta3:
	sub s0, s0, t1
	bge s0, s1, salta3

	li a0, 0xffffffff
	li a1, 0xaaaaaaaa
	li a2, 0x55555555
	li a3, 0x33333333
    li a4, 0x0f0f0f0f
	li a5, 0xffffffff
	li a6, 0xaaaaaaaa
	li a7, 0x55555555
	p.mul t4, a0, s1
    p.mul t5, a2, s3
	add t6, a4, s5
	addi t5, a2, 125
    andi t0, a0, 0xf
	srl t2, a7, 0x7
    sll t4, a3, 0x12
	sub t5, a4, s2
	slti t2, a3, 0
	slti t2, a3, 1
    slt t2, a5, s1
	ori t1, a6, 0xff
	xori t2, a2, 0xaa
	lui t0, 0xff
	div t5, s6, a0

	
	li t0, 0x856532d2
	li t1, 0xc2df3fc0
	add t2, t0, t1
	sw t2, 4(sp)
	li t0, 0xf61a67ea
	li t1, 0x7b09ef8
	sub t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x6ec7e5cc
	li t1, 0x550a738e
	xor t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x811dc9ba
	li t1, 0xd1ca3fa
	or t2, t0, t1
	sw t2, 4(sp)
	li t0, 0xd2069c19
	li t1, 0xdd382e9c
	and t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x587e6b14
	li t1, 0x56046f06
	sra t2, t0, t1
	sw t2, 4(sp)
	li t0, 0xccb423d0
	li t1, 0xf5b95676
	srl t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x6c5c6867
	li t1, 0xbc1b8b6a
	sll t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x246fba3d
	li t1, 0xf1993d15
	slt t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x86d9bc28
	li t1, 0x31cb9706
	sltu t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x7798c530
	li t1, 0x61c7516b
	divu t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x4e75b991
	li t1, 0x4fb53551
	div t2, t0, t1
	sw t2, 4(sp)
	li t0, 0x756a079e
	li t1, 0x5da3d78f
	remu t2, t0, t1
	sw t2, 4(sp)
	li t0, 0xf1639665
	li t1, 0xfa8a19c3
	rem t2, t0, t1
	sw t2, 4(sp)
	li t0, 2419786450

	# OTHERS
	li t0, 0x55bf5747
	li t1, 0x7dfe525a
	xori t2, t1, 0xffffffff
	xori t3, t0, 0xffffffff
	add t4, t1, t0
	add t5, t2, t3
	sw t4, 4(sp)
	sw t5, 4(sp)
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x680b81b3
	li t1, 0x92e0f53f
	xori t2, t1, 0xffffffff
	xori t3, t0, 0xffffffff
	sub t4, t1, t0
	sub t5, t2, t3
	sw t4, 4(sp)
	sw t5, 4(sp)
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0xe05242f9
	li t1, 0xcf821987
	xori t2, t1, 0xffffffff
	xori t3, t0, 0xffffffff
	xor t4, t1, t0
	xor t5, t2, t3
	sw t4, 4(sp)
	sw t5, 4(sp)
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0xd5701491
	li t1, 0xb2e4369c
	xori t2, t1, 0xffffffff
	xori t3, t0, 0xffffffff
	srl t4, t1, t0
	srl t5, t2, t3
	sw t4, 4(sp)
	sw t5, 4(sp)
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x2f761fc5
	li t1, 0xa4302cf0
	xori t2, t1, 0xffffffff
	xori t3, t0, 0xffffffff
	sra t4, t1, t0
	sra t5, t2, t3
	sw t4, 4(sp)
	sw t5, 4(sp)
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x380262bf
	li t1, 0x42dc39d0
	xori t2, t1, 0xffffffff
	xori t3, t0, 0xffffffff
	or t4, t1, t0
	or t5, t2, t3
	sw t4, 4(sp)
	sw t5, 4(sp)
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0xb2a9a97f
	li t1, 0x02990ecf
	xori t2, t1, 0xffffffff
	xori t3, t0, 0xffffffff
	and t4, t1, t0
	and t5, t2, t3
	sw t4, 4(sp)
	sw t5, 4(sp)
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x860036e1
	li t1, 0xbf17b11b
	xori t2, t1, 0xffffffff
	xori t3, t0, 0xffffffff

	li t0, 0xcb771165
	li t1, 0xcb771165
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x34881165
	li t1, 0xcb77ee9a
	mul t2, t1, t0
	sw t2, 4(sp)
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0xdf4ac73d
	li t1, 0xdf4ac73d
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulh t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x20b5c73d
	li t1, 0xdf4a38c2
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0xf251c711
	li t1, 0xf251c711
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhsu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x0daec711
	li t1, 0xf25138ee
	mulhu t2, t1, t0
	sw t2, 4(sp)
	mulhu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0x14312c99
	li t1, 0x14312c99
	mulhu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0xebce2c99
	li t1, 0x1431d366
	mulhu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0xebce2c99
	li t1, 0x1431d366
	mulhu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0xebce2c99
	li t1, 0x1431d366
	mulhu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0xebce2c99
	li t1, 0x1431d366
	mulhu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0xebce2c99
	li t1, 0x1431d366
	mulhu t2, t1, t0
	sw t2, 4(sp)
	li t0, 0xebce2c99
	li t1, 0x1431d366
	mulhu t2, t1, t0
	sw t2, 4(sp)

	li t0, 0x00000000
	li t1, 0x00000ff0
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t2, t0, t1
	remu t3, t0, t1
	sw t2, 4(sp)
	sw t3, 4(sp)
	li t0, 0x00000000
	li t1, 0x00000000
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t2, t0, t1
	remu t3, t0, t1
	sw t2, 4(sp)
	sw t3, 4(sp)
	li t0, 0x0f000f00
	li t1, 0x00000000
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t2, t0, t1
	remu t3, t0, t1
	sw t2, 4(sp)
	sw t3, 4(sp)
	li t0, 0xffffffff
	li t1, 0xffffffff
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000001
	li t1, 0x00000001
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000001
	li t1, 0xffffffff
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000001
	li t1, 0x00000010
	li t0, 0x00000001
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000001
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000002
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000004
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000006
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x0000000a
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x0000000b
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000013
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x0000001e
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000020
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x0000003c
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000067
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x0000006f
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000075
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000085
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x000000f9
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x000001ba
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000344
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x000003e5
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000001
	li t1, 0x0000ffff
	li t0, 0x00014631
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00027d90
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00047f03
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x0005b827
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x000acdd8
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x000be42f
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x0017194d
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000001
	li t1, 0xf0f0f0f0
	li t0, 0x00000001
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000001
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000002
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)
	li t0, 0x00000002
	div t4, t1, t0
	divu t5, t1, t0
	sw t4, 4(sp)
	sw t5, 4(sp)
	rem t4, t0, t1
	remu t5, t0, t1
	sw t4, 4(sp)
	sw t5, 4(sp)


    li a0, 0xCAFECAFE    # return value


    # ABI epilogue
	lw s11, 8(sp)        # restore callee-saved registers
	lw s10, 16(sp)
	lw s9, 24(sp)
	lw s8, 32(sp)
	lw s7, 40(sp)
	lw s6, 48(sp)
	lw s5, 56(sp)
	lw s4, 64(sp)
	lw s3, 72(sp)
	lw s2, 80(sp)
	lw s1, 88(sp)
	lw s0, 96(sp)
	lw ra, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller



# READ/WRITE VARIABLES

.section .data

# READ-ONLY VARIABLES

.section .rodata
