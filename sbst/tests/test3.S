.section .text
.global test3
.type test3, @function

test3:
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

    li s0, 0x6121035b
    li s1, 0x473003e4
    li s3, 0xb8a10da2
    li s4, 0xb8a10da2
    #pv.cmpge.b  s2, s0, s1
    #p.abs s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x24134350
    li s1, 0x63fc3e0a
    li s3, 0xa9580cf8
    li s4, 0x5c24ed4
    sub s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5778a4f0
    li s1, 0x1ca78e3
    li s3, 0x3b02af
    li s4, 0x7fbc6869
    #pv.cmpltu.h s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xdc9fa
    li s1, 0x1d0dc9b5
    li s3, 0x3979a068
    li s4, 0x39791f68
    #pv.cmpne.h s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x276c0df6
    li s1, 0x1113e54a
    li s3, 0x12ab0885
    li s4, 0xd290256a
    #p.abs s2, s0
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xbde8ff8d
    li s1, 0x204acc73
    li s3, 0xb519371
    li s4, 0x779532d8
    sltu s2, s0, s1
    #p.abs s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x200e6e41
    li s1, 0x2d116e3c
    li s3, 0x1406518f
    li s4, 0x293f9c70
    p.subuRNr s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x48b45203
    li s1, 0xdad10bd4
    li s3, 0x480468f4
    li s4, 0xa3ec2c0a
    add s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x91820004
    li s1, 0xe83ccfdb
    li s3, 0x8c0001df
    li s4, 0xf6169869
    p.subRNr s2, s0, s1
    p.subuNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x391407c6
    li s1, 0xd049b001
    li s3, 0x6702e98c
    li s4, 0x670322a0
    p.subRNr s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xacb7262a
    li s1, 0xc71a90ac
    li s3, 0x6686163d
    li s4, 0x5fe4e83
    sub s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xffffffff
    li s1, 0xff3dffff
    li s3, 0x0
    li s4, 0xefffffbd
    pv.max.b  s2, s0, s1
    p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe7f0f890
    li s1, 0x1a21fbe5
    li s3, 0xabcf9f76
    li s4, 0xabcfdf08
    sub s2, s0, s1
    pv.abs.h s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5bdfff03
    li s1, 0x5b4800f2
    li s3, 0x884e13f4
    li s4, 0x884e1360
    p.abs s2, s0
    pv.cmpgtu.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfa30f432
    li s1, 0xa64c4f
    li s3, 0x1a9003ff
    li s4, 0xceefe866
    p.min s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x7d877f28
    li s1, 0xf8a1d767
    li s3, 0xafe9a015
    li s4, 0x32dffbeb
    p.clipur s2, s0, s1
    pv.abs.b s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xabfdaa8c
    li s1, 0x20700852
    li s3, 0xd5ec571
    li s4, 0xa5b0210c
    pv.cmpleu.b  s2, s0, s1
    add s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x23a35a20
    li s1, 0x7592720a
    li s3, 0xa6209700
    li s4, 0x828496ff
    p.adduNr s2, s0, s1
    p.subuRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x63e75427
    li s1, 0xb2a5e313
    li s3, 0x10845375
    li s4, 0x4d178790
    pv.cmpgeu.h s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6ecfc0ac
    li s1, 0x42543eff
    li s3, 0x130b37ff
    li s4, 0x144637b7
    and s2, s0, s1
    pv.cmpleu.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb663b576
    li s1, 0x7b2eb531
    li s3, 0x445bffdb
    li s4, 0xc453a928
    pv.sub.h s2, s0, s1
    pv.cmpeq.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x226f35bb
    li s1, 0x20de7ff1
    li s3, 0x544bdf83
    li s4, 0x3eb012ba
    pv.abs.h s2, s0
    p.addRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc4003e8c
    li s1, 0x23ff1803
    li s3, 0x441e00cd
    li s4, 0xf3e15729
    p.addRNr s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x993ad5fc
    li s1, 0xfbf4eb68
    li s3, 0x23662f62
    li s4, 0x674540a6
    pv.and.h s2, s0, s1
    pv.add.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xecbdf800
    li s1, 0xdff05fe
    li s3, 0x828f03f
    li s4, 0x8908fe62
    p.subRNr s2, s0, s1
    p.addRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x35eef241
    li s1, 0xdb98102d
    li s3, 0x805b6
    li s4, 0x408a0ea
    p.subRNr s2, s0, s1
    pv.add.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x80000030
    li s1, 0x3ef301cd
    li s3, 0x100
    li s4, 0x1bd300dd
    pv.abs.h s2, s0
    p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6ce84a8d
    li s1, 0x65a85af4
    li s3, 0x828e7490
    li s4, 0x3fb320bf
    p.adduRNr s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x77a1904b
    li s1, 0x9906597c
    li s3, 0xe87a8fa8
    li s4, 0x97087890
    pv.sub.b  s2, s0, s1
    pv.abs.b s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xba679c25
    li s1, 0xc8e36e2a
    li s3, 0x286d1f40
    li s4, 0x7a04643f
    pv.cmplt.b  s2, s0, s1
    p.addRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x16a29e1a
    li s1, 0xd7acf3a2
    li s3, 0x5853c338
    li s4, 0xeb949fcd
    slt s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc51531ed
    li s1, 0xd5f049d9
    li s3, 0x6374005
    li s4, 0x8a04404d
    sub s2, s0, s1
    pv.add.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6fa603f6
    li s1, 0x5ef03ce2
    li s3, 0xa58544f6
    li s4, 0xa5a544f6
    pv.abs.h s2, s0
    p.subuRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x481bffd0
    li s1, 0x5843fff7
    li s3, 0xb34478a0
    li s4, 0x840b25c5
    p.addRNr s2, s0, s1
    p.subuNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8a1afdc9
    li s1, 0x482a7c1c
    li s3, 0x1535000b
    li s4, 0xdc027ffc
    p.subRNr s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x441f428c
    li s1, 0xfde53dad
    li s3, 0x917ecb90
    li s4, 0x6e80346f
    pv.abs.b s2, s0
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1c578041
    li s1, 0x876825eb
    li s3, 0xf7182632
    li s4, 0xbcb5894f
    pv.cmpne.h s2, s0, s1
    p.abs s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5755a010
    li s1, 0x2158c832
    li s3, 0xeba6776a
    li s4, 0xeba6376a
    pv.cmpne.b  s2, s0, s1
    and s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb28116f2
    li s1, 0xefe60a48
    li s3, 0x44433298
    li s4, 0x442684a6
    pv.cmplt.h s2, s0, s1
    pv.cmpgeu.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4fc11882
    li s1, 0x4f883fc7
    li s3, 0xe3efad11
    li s4, 0xe3ed5109
    sub s2, s0, s1
    pv.abs.h s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc03a6f6f
    li s1, 0xe0e8d832
    li s3, 0xff738007
    li s4, 0x7f5c8008
    p.min s2, s0, s1
    pv.abs.b s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x43f9a7f8
    li s1, 0xe1681955
    li s3, 0x200954bf
    li s4, 0xbdffdeb2
    sub s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3a0393a3
    li s1, 0x3a0393a3
    li s3, 0xb0a47d4d
    li s4, 0xb0a01c5d
    and s2, s0, s1
    pv.cmpne.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8f1ef645
    li s1, 0xe587f616
    li s3, 0x8a77fafc
    li s4, 0x632bfb0d
    p.clipr s2, s0, s1
    pv.cmpleu.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2eefec0b
    li s1, 0xa58990a7
    li s3, 0x7d713a78
    li s4, 0x242d0165
    and s2, s0, s1
    pv.sub.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x591fd731
    li s1, 0x52d7e59b
    li s3, 0x6ec4f61c
    li s4, 0x813b09e3
    and s2, s0, s1
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x57bc511d
    li s1, 0xeb4ab297
    li s3, 0xa930c42f
    li s4, 0xa9380fc4
    pv.cmpgt.b  s2, s0, s1
    pv.maxu.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x42f57ff9
    li s1, 0xa3db5829
    li s3, 0x8e000457
    li s4, 0x8e0004d7
    pv.sub.b  s2, s0, s1
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc97abfbc
    li s1, 0xefee7f6f
    li s3, 0xffffbfff
    li s4, 0x10118090
    p.subRNr s2, s0, s1
    pv.and.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe4bd5fde
    li s1, 0x58e6b592
    li s3, 0xf116999d
    li s4, 0xf1144d2e
    pv.and.h s2, s0, s1
    pv.and.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x13ce44f2
    li s1, 0xccd12ad6
    li s3, 0x3bd1b6e8
    li s4, 0x3bcfb643
    pv.cmpgt.b  s2, s0, s1
    pv.cmple.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x29e93a01
    li s1, 0xa66d51ff
    li s3, 0xf9a7d054
    li s4, 0xd0267c52
    p.clipur s2, s0, s1
    pv.max.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x63ed3a39
    li s1, 0xb7862a4e
    li s3, 0xc369786
    li s4, 0xc369586
    pv.cmpleu.b  s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3f0d04f
    li s1, 0xfc7c42d3
    li s3, 0x3880c338
    li s4, 0x3403d303
    p.clipur s2, s0, s1
    pv.cmple.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd97825d4
    li s1, 0x54ee520c
    li s3, 0x205f1321
    li s4, 0x7ca42801
    sltu s2, s0, s1
    pv.sub.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x80803aea
    li s1, 0x6ad7210a
    li s3, 0x162fe984
    li s4, 0xc052410e
    sub s2, s0, s1
    p.adduRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x571b5686
    li s1, 0x626fe7bf
    li s3, 0x4335cec2
    li s4, 0xbcca3139
    pv.abs.b s2, s0
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xec2e7b06
    li s1, 0x66770108
    li s3, 0xa025af1c
    li s4, 0xa025b04b
    sub s2, s0, s1
    p.sletu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc0991283
    li s1, 0x6861fb66
    li s3, 0x72ecfddb
    li s4, 0x72ecfcdb
    p.subuNr s2, s0, s1
    p.slet s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb67dbfaf
    li s1, 0x1864bf0d
    li s3, 0x84850931
    li s4, 0x48bf0432
    pv.cmpgtu.h s2, s0, s1
    pv.abs.b s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xae3f
    li s1, 0xfff52350
    li s3, 0x42a00000
    li s4, 0x43600000
    p.subRNr s2, s0, s1
    p.addRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa2a654
    li s1, 0xa00452c2
    li s3, 0x1008bed
    li s4, 0xaffee839
    pv.add.b  s2, s0, s1
    pv.sub.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xdcb59b16
    li s1, 0x43306dd7
    li s3, 0x8efdd33f
    li s4, 0x8efdd33e
    sub s2, s0, s1
    pv.cmpne.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb4a45447
    li s1, 0xffafe213
    li s3, 0xa3930cae
    li s4, 0xa2910cae
    pv.minu.b  s2, s0, s1
    pv.cmpleu.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc8437a56
    li s1, 0x68c051a5
    li s3, 0x2138e6a4
    li s4, 0xdec7095b
    p.clipr s2, s0, s1
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4c9841b
    li s1, 0x430fdb33
    li s3, 0x13b2d091
    li s4, 0x13b2cc67
    p.adduRNr s2, s0, s1
    p.slet s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9bb1f635
    li s1, 0x1e21f9be
    li s3, 0x7a012170
    li s4, 0x7a0124eb
    pv.cmple.h s2, s0, s1
    p.sletu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb93ee7c0
    li s1, 0x875ba497
    li s3, 0x17cc489d
    li s4, 0x1800429c
    pv.minu.h s2, s0, s1
    pv.abs.b s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf5fe09c5
    li s1, 0x7ff7629d
    li s3, 0x1d221814
    li s4, 0x70542be5
    pv.abs.b s2, s0
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li a0, 0x33333333 

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
