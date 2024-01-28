.section .text
.global test4
.type test4, @function

test4:
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

    li s0, 0x18c28303
    li s1, 0x5a1cfd7c
    li s3, 0x513d01e
    li s4, 0x513d01e
    add s2, s0, s1
    #p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x14155b2d
    li s1, 0x15fe1b9
    li s3, 0x884460ee
    li s4, 0x2ead1410
    sub s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x21076030
    li s1, 0x62f10af6
    li s3, 0x480b9b43
    li s4, 0x1611208
    add s2, s0, s1
    sub  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5c1c60b1
    li s1, 0x5c14c98e
    li s3, 0x2950b438
    li s4, 0xf6e1200
    #pv.cmpge.b  s2, s0, s1
    add  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3110e3ed
    li s1, 0x5ad7e028
    li s3, 0x8a937e58
    li s4, 0x8a937658
    sub s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2ffe766e
    li s1, 0xde827672
    li s3, 0x1017605
    li s4, 0x1017705
    or s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4108d6ba
    li s1, 0x64f6a246
    li s3, 0x3ecbf59
    li s4, 0x7c08116a
    sub s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x85ae7045
    li s1, 0xff2a462e
    li s3, 0x604073e2
    li s4, 0x5eac3a08
    sub  s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x77b727fc
    li s1, 0x3df727de
    li s3, 0x2208b0a3
    li s4, 0x22084ca3
    add s2, s0, s1
    or s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x423bef81
    li s1, 0x6a3fff61
    li s3, 0x1b13516a
    li s4, 0xfba51a60
    add s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xbb0da984
    li s1, 0xbb0d19b8
    li s3, 0x4086527a
    li s4, 0x4086727a
    #pv.cmpge.h s2, s0, s1
    #pv.cmpne.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc0133bb8
    li s1, 0x33911737
    li s3, 0xbe592f24
    li s4, 0xb6592f24
    add s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x79737160
    li s1, 0x81daf5b
    li s3, 0xdafefd9f
    li s4, 0xe61f76b1
    #p.bclrr s2, s0, s1
    #pv.cmpgt.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc59ebcc6
    li s1, 0x16444b29
    li s3, 0xa9071c61
    li s4, 0xa9f8e362
    xor s2, s0, s1
    #pv.cmpgtu.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc218c19
    li s1, 0xfc3a3a6d
    li s3, 0x7525b
    li s4, 0xffe80564
    add s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd506e495
    li s1, 0x599b9a1a
    li s3, 0x6ab1da47
    li s4, 0x6ab1da47
    sub s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6e45ae76
    li s1, 0xe08251a5
    li s3, 0xb48ef1ab
    li s4, 0x4ef7ae17
    sub s2, s0, s1
    xor s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfd06f012
    li s1, 0xd2ffbbd1
    li s3, 0xf25a053b
    li s4, 0x8a609e80
    sub s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x22f6eac7
    li s1, 0xaea25d0b
    li s3, 0x558e7ef9
    li s4, 0x558e7ef9
    #pv.cmpgt.h s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5351c3f
    li s1, 0x287f9f4f
    li s3, 0xb51fcfc0
    li s4, 0x9ce90bdd
    #pv.cmpne.b  s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1b56d016
    li s1, 0x336d8d38
    li s3, 0x6bb4f401
    li s4, 0x6a85d061
    add s2, s0, s1
    add  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xccc7a2a5
    li s1, 0x489a4295
    li s3, 0x7ac8961f
    li s4, 0x851ec662
    xor s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2fc0f969
    li s1, 0xa4781be8
    li s3, 0x61eec2d5
    li s4, 0x61eec2f5
    add s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x97e07cb4
    li s1, 0xd23c1df2
    li s3, 0x627ee9f1
    li s4, 0x627ee9f0
    add s2, s0, s1
    or s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x53f852ce
    li s1, 0xd227d87e
    li s3, 0xae9d7774
    li s4, 0xae9d3774
    sub s2, s0, s1
    #p.bclrr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x24bf0d93
    li s1, 0xd9d9fc42
    li s3, 0x3332fb78
    li s4, 0x1889d8c5
    xor s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x804b0a2a
    li s1, 0x7d436389
    li s3, 0xa34cf0b8
    li s4, 0xa24cd6b8
    #pv.cmpgtu.h s2, s0, s1
    #pv.cmpgeu.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc02f84f8
    li s1, 0x40802c0b
    li s3, 0x30861e1
    li s4, 0xecff0e02
    add s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xcb0953ab
    li s1, 0x20ed4dc4
    li s3, 0xd5447b99
    li s4, 0xd5907899
    sub s2, s0, s1
    #pv.cmpgt.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6584f9d7
    li s1, 0x9876a4fa
    li s3, 0xf4f10261
    li s4, 0xf4f10061
    sub s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1bd209db
    li s1, 0x8f0fcee3
    li s3, 0xf4fe57f
    li s4, 0x2eae12e6
    sub s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li a0, 0x44444444 

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
