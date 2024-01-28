.section .text
.global test2
.type test2, @function

test2:
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

    li s0, 0x20330809
    li s1, 0x20df7a0b
    li s3, 0x5ba7ffd6
    li s4, 0xdba7ffd6
    sra  s2, s0, s1
    #ror s5, s3, s4
    ////sw s2, 4(sp)
    ////sw s5, 4(sp)
    li s0, 0x92f6fe72
    li s1, 0xf208c0c3
    li s3, 0x88460cbe
    li s4, 0x7f1f22eb
    sub  s2, s0, s1
    #abs s5, s3
    ////sw s2, 4(sp)
    ////sw s5, 4(sp)
    li s0, 0x27ca613
    li s1, 0x4697472d
    li s3, 0x3c5b86a4
    li s4, 0x78f0609
    #p.abs s2, s0
    add s5, s3, s4
    ////sw s2, 4(sp)
    ////sw s5, 4(sp)
    li s0, 0xf94d3c82
    li s1, 0x294f078a
    li s3, 0x8682f37d
    li s4, 0x8682c7f3
    #p.insertr s2, s0, s1
    #p.abs s5, s3
    ////sw s2, 4(sp)
    ////sw s5, 4(sp)
    li s0, 0x3a4cb314
    li s1, 0x3a4cb314
    li s3, 0x81208000
    li s4, 0xf0b26b8
    or s2, s0, s1
    #p.bsetr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x73
    li s1, 0xde7fffd2
    li s3, 0x609fffbc
    li s4, 0x618dadab
    #p.subRNr s2, s0, s1
    sll s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x946aa628
    li s1, 0x55e9e05e
    li s3, 0x5f1b6543
    li s4, 0x4af17492
    sra s2, s0, s1
    sll s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4d66fa7b
    li s1, 0x4d2a9031
    li s3, 0xb1f50a4e
    li s4, 0xb0f50a4e
    #pv.maxu.h s2, s0, s1
    #p.extractur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x44221730
    li s1, 0x2ac733c
    li s3, 0xc66d7bfd
    li s4, 0x3706dc2b
    add s2, s0, s1
    sll  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xad53bf63
    li s1, 0xad53b6f7
    li s3, 0x4c6a4931
    li s4, 0xcc6e4921
    #p.bsetr s2, s0, s1
    #pv.cmpne.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6e76c013
    li s1, 0x80013fc0
    li s3, 0x49087f90
    li s4, 0x25b60130
    add s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x29fdff7f
    li s1, 0xfbb7af00
    li s3, 0xe7e32ffc
    li s4, 0xbc4050fd
    #p.extractr s2, s0, s1
    #pv.max.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc5c6fcea
    li s1, 0xbe3c8139
    li s3, 0x439d0f5d
    li s4, 0x55fb2f09
    #pv.xor.b  s2, s0, s1
    #pv.abs.h s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5c5e91b5
    li s1, 0x64a1eb01
    li s3, 0xf0dcc6a
    li s4, 0xf0dcc6a
    #pv.cmple.h s2, s0, s1
    xor s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x232f3bdd
    li s1, 0xe354b2eb
    li s3, 0xb115f0d9
    li s4, 0x3ff87c0e
    sll  s2, s0, s1
    #p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd7dda7e3
    li s1, 0xf12a5976
    li s3, 0x4a567a14
    li s4, 0x4a563a14
    rem s2, s0, s1
    #p.insertr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xdb2da98e
    li s1, 0x3a269a2f
    li s3, 0x74c18b11
    li s4, 0x46c90f03
    sll s2, s0, s1
    add  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x209b
    li s1, 0x4a20
    li s3, 0x81
    li s4, 0x3b1f004a
    #p.bsetr s2, s0, s1
    #p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xffff7efd
    li s1, 0xffd1f9ec
    li s3, 0x52d392ec
    li s4, 0xa92c6d13
    #p.bclrr s2, s0, s1
    #p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe0000000
    li s1, 0x3d025cbd
    li s3, 0xc0000081
    li s4, 0xee30215e
    #p.extractur s2, s0, s1
    #p.cnt s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfdf4dc8
    li s1, 0xb242cb8c
    li s3, 0x68100a8b
    li s4, 0x55bc2912
    sll s2, s0, s1
    #p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8989c3e9
    li s1, 0x8989c38d
    li s3, 0xefbb
    li s4, 0xef3b
    #p.abs s2, s0
    #p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x30408bc9
    li s1, 0x3a499147
    li s3, 0x8435c0c7
    li s4, 0xc61816a1
    add s2, s0, s1
    sra s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfc08c51b
    li s1, 0x5df426c7
    li s3, 0x401aed52
    li s4, 0xff5e80bf
    #p.abs s2, s0
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x850d499f
    li s1, 0xd3f84fc6
    li s3, 0xf88df440
    li s4, 0xf80df440
    #p.ff1 s2, s0
    #p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xae5e1173
    li s1, 0xa8fb3c85
    li s3, 0x416adb91
    li s4, 0x456adb91
    sll  s2, s0, s1
    #p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x350b049a
    li s1, 0x459b0078
    li s3, 0xf9c00f
    li s4, 0xdf84acd3
    remu s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x293c8c5f
    li s1, 0x17cdbf7d
    li s3, 0xb35a4c6f
    li s4, 0xa35a4c6f
    divu s2, s0, s1
    srl s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x921f1ef6
    li s1, 0x3de0c410
    li s3, 0xfa8f2ae8
    li s4, 0x2b7c4939
    add s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xff7d66ae
    li s1, 0x1038a05a
    li s3, 0x304c400d
    li s4, 0x5a4b8d1c
    sub s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x800000fd
    li s1, 0xd000007a
    li s3, 0x40000
    li s4, 0x220000
    #p.abs s2, s0
    #p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6e652108
    li s1, 0x40097897
    li s3, 0xdd8e5b83
    li s4, 0xdd8e5b58
    #pv.cmpge.h s2, s0, s1
    #pv.cmpleu.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x21000175
    li s1, 0xcb43ca0c
    li s3, 0x100a0404
    li s4, 0x13c2c32a
    #p.insertr s2, s0, s1
    #p.cnt s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8d3adaeb
    li s1, 0xe5a1e526
    li s3, 0x800000
    li s4, 0x800000
    and s2, s0, s1
    #p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x98001a99
    li s1, 0x39933887
    li s3, 0x0
    li s4, 0x8
    div s2, s0, s1
    #p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xffff005c
    li s1, 0xd78a564b
    li s3, 0x40000000
    li s4, 0x40000100
    #p.fl1 s2, s0
    #p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x981dbfa4
    li s1, 0xd058701a
    li s3, 0x78018d3
    li s4, 0xf2bfa8d0
    #pv.abs.h s2, s0
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe3dfa4ff
    li s1, 0xd1b074ab
    li s3, 0x1fefdf
    li s4, 0x7fe80900
    #p.ror s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf75c6600
    li s1, 0x41cd89fe
    li s3, 0x34f381e9
    li s4, 0x3420f6e6
    #p.extractr s2, s0, s1
    #pv.max.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf92f7e01
    li s1, 0x65ac8a05
    li s3, 0x56e31f1b
    li s4, 0x56e31f0b
    rem s2, s0, s1
    #p.insertr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4083bfc1
    li s1, 0xbff6c54c
    li s3, 0xeffb0f3f
    li s4, 0xee832043
    and  s2, s0, s1
    #pv.cmpleu.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x0
    li s1, 0xd8210614
    li s3, 0x38993ea5
    li s4, 0xc766d15a
    xor  s2, s0, s1
    #p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4a15ccab
    li s1, 0x4a15ccab
    li s3, 0x7fae6df2
    li s4, 0x8eae992d
    #p.bclrr s2, s0, s1
    #pv.cmpeq.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x80064fc
    li s1, 0xb394f43e
    li s3, 0xffffffff
    li s4, 0xfffffffe
    divu s2, s0, s1
    #p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfffff265
    li s1, 0x531f604a
    li s3, 0xb9c19b71
    li s4, 0xb9c09b71
    div s2, s0, s1
    #p.extractur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8dca374f
    li s1, 0x41f161da
    li s3, 0x309bc1a9
    li s4, 0x309bc1ad
    #p.extractr s2, s0, s1
    #p.ror s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x454a802
    li s1, 0x478140bd
    li s3, 0x99531fef
    li s4, 0x99531f42
    #p.cnt s2, s0
    and s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x20
    li s1, 0x102f0bbf
    li s3, 0xffffffff
    li s4, 0x11bd2c78
    #p.extractr s2, s0, s1
    #p.cnt s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xca3de0b
    li s1, 0xb47ade2e
    li s3, 0xca166000
    li s4, 0xca166001
    rem s2, s0, s1
    #p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc9679e29
    li s1, 0x3fafa5f6
    li s3, 0x4b0c7d83
    li s4, 0x7b7268b5
    sub s2, s0, s1
    sub s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x31aa433a
    li s1, 0xd9f33f42
    li s3, 0xffffffff
    li s4, 0x260cc0bd
    or  s2, s0, s1
    and s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x98d5299d
    li s1, 0x365ed765
    li s3, 0xfefde168
    li s4, 0xd0f12eb9
    p.extractr s2, s0, s1
    pv.and.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe44ce5fe
    li s1, 0x2f8cd423
    li s3, 0xc6c3e68e
    li s4, 0xc6c3e6ae
    pv.sll.b  s2, s0, s1
    p.extractur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf0d231f2
    li s1, 0x4a0e505c
    li s3, 0x54599bfd
    li s4, 0xaba66602
    p.abs s2, s0
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5a001e13
    li s1, 0xfffc8856
    li s3, 0x25fff755
    li s4, 0x98b8a1fe
    p.subuNr s2, s0, s1
    pv.sll.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9198cb79
    li s1, 0x2482c0b7
    li s3, 0xe63ec8c3
    li s4, 0x3668f188
    p.adduRNr s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3f43514d
    li s1, 0x4b8dc760
    li s3, 0xe0b4fd66
    li s4, 0xe0b42aae
    pv.cmpgtu.h s2, s0, s1
    pv.abs.h s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x974a325e
    li s1, 0x96e02c1d
    li s3, 0xbabd63c9
    li s4, 0x1837e553
    sll s2, s0, s1
    p.ror s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4acd07e8
    li s1, 0x1a149f5f
    li s3, 0x1b0fc1f7
    li s4, 0x11a0535f
    p.addRNr s2, s0, s1
    pv.sll.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa4ae9d33
    li s1, 0xc6ec6f7
    li s3, 0x72dc17af
    li s4, 0x92e90ed2
    xor s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1c81ec73
    li s1, 0x164895ae
    li s3, 0x22082df9
    li s4, 0x22082de7
    div s2, s0, s1
    or s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x39cba49d
    li s1, 0xe7732817
    li s3, 0xb6000000
    li s4, 0x1583df59
    remu s2, s0, s1
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x48000000
    li s1, 0x7eae079
    li s3, 0xb7261af5
    li s4, 0xce280456
    p.ff1 s2, s0
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb068430
    li s1, 0x723455fe
    li s3, 0xa402ba04
    li s4, 0xe5f276d
    p.subRNr s2, s0, s1
    p.subuRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2edf2661
    li s1, 0xa2d0055e
    li s3, 0xee6aafdb
    li s4, 0xee6cafd9
    pv.cmpne.h s2, s0, s1
    pv.cmple.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd87756ea
    li s1, 0x15bd9719
    li s3, 0x2d811d55
    li s4, 0x50666a56
    pv.abs.b s2, s0
    pv.maxu.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x143a60b7
    li s1, 0xe4d1942d
    li s3, 0x89f32d29
    li s4, 0x2173b5df
    pv.sll.b  s2, s0, s1
    pv.add.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc50af87d
    li s1, 0x79703409
    li s3, 0x3b0c6b85
    li s4, 0x4d8ced1c
    p.subRNr s2, s0, s1
    p.ror s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x91df6c1f
    li s1, 0x7fb4198c
    li s3, 0x1f1811ba
    li s4, 0x3ec342c7
    p.abs s2, s0
    xor s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa006449c
    li s1, 0x6862e61e
    li s3, 0x3f61e3d
    li s4, 0x4c13c459
    p.maxu s2, s0, s1
    p.abs s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x46019127
    li s1, 0x46013987
    li s3, 0xdabc5386
    li s4, 0xd214f116
    div s2, s0, s1
    p.abs s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xda201cf0
    li s1, 0x6ee9bce8
    li s3, 0xd9868e00
    li s4, 0x1be772f5
    p.exthz s2, s0
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6d300e7b
    li s1, 0x3774de74
    li s3, 0xdff1458f
    li s4, 0x8df3b97a
    p.ff1 s2, s0
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc0e178a1
    li s1, 0xd8560b66
    li s3, 0xacd5a470
    li s4, 0x7ef3e2b2
    pv.min.h s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x98dd8500
    li s1, 0x45774967
    li s3, 0x3f3636ba
    li s4, 0x3f36364c
    pv.cmple.b  s2, s0, s1
    pv.maxu.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x83a8080f
    li s1, 0x8fa8fea3
    li s3, 0xb07b4f4
    li s4, 0x7b246d73
    pv.abs.b s2, s0
    p.abs s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x41d40437
    li s1, 0xc7c47f41
    li s3, 0xfa0f1bee
    li s4, 0xfa1317f1
    p.ff1 s2, s0
    pv.abs.b s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xdec52ea1
    li s1, 0x40a3e6f1
    li s3, 0x2c968d00
    li s4, 0xdb6972ff
    pv.or.h s2, s0, s1
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6ee5e9ff
    li s1, 0x562cf3e4
    li s3, 0x80f5004e
    li s4, 0x763c33c4
    pv.sub.b  s2, s0, s1
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3f180f87
    li s1, 0xff4a3586
    li s3, 0x4a69f16d
    li s4, 0x34907e9
    p.subRNr s2, s0, s1
    p.cnt s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3ca37e7a
    li s1, 0x80c9017c
    li s3, 0xf221e652
    li s4, 0x920b5599
    pv.cmpleu.h s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4152cc4b
    li s1, 0xed3336e5
    li s3, 0xafafffff
    li s4, 0x4a231d94
    pv.minu.b  s2, s0, s1
    p.bclrr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xbfb1f996
    li s1, 0x9d3aef0
    li s3, 0x5f2e0443
    li s4, 0x647d0146
    p.clb s2, s0
    pv.abs.b s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x58f4f9d3
    li s1, 0x7b3ed63b
    li s3, 0x2da24538
    li s4, 0x3edf25a1
    pv.sll.b  s2, s0, s1
    p.addRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfd62fd5e
    li s1, 0x41d55a9b
    li s3, 0xd8d9
    li s4, 0x46269539
    div s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe898b9d6
    li s1, 0x907556a6
    li s3, 0xa1ae3656
    li s4, 0x5189a55f
    rem s2, s0, s1
    p.ror s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6bee6c6b
    li s1, 0xc83aab53
    li s3, 0x43171849
    li s4, 0x28c4d2ba
    rem s2, s0, s1
    p.ror s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd1362ef5
    li s1, 0xe41d5589
    li s3, 0xb0876bb5
    li s4, 0xb0876bb5
    sltu s2, s0, s1
    pv.cmpeq.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf58588cd
    li s1, 0xd449f52
    li s3, 0x7efc3c33
    li s4, 0xc978335c
    rem s2, s0, s1
    p.ror s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xbdb
    li s1, 0x79e87a2f
    li s3, 0xe157e505
    li s4, 0xe7f51e40
    remu s2, s0, s1
    sll s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa1ff9857
    li s1, 0x6bc0d53b
    li s3, 0xa
    li s4, 0x37c544c6
    pv.abs.b s2, s0
    p.cnt s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x92638928
    li s1, 0x35e06a9d
    li s3, 0xfffdffff
    li s4, 0x1be2a263
    div s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x99f6d6c4
    li s1, 0x7130e075
    li s3, 0xfef4aad6
    li s4, 0xba3415f7
    p.extractur s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x16f15de2
    li s1, 0x3b5bf4d0
    li s3, 0x3c122e99
    li s4, 0x176ffc2b
    pv.cmpgtu.h s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe89da214
    li s1, 0x62841417
    li s3, 0x3f05fe5a
    li s4, 0x290f5deb
    p.abs s2, s0
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3c3ff10a
    li s1, 0x390daa03
    li s3, 0x9f950a0d
    li s4, 0x14150452
    p.bsetr s2, s0, s1
    p.adduRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2ae87add
    li s1, 0x77631032
    li s3, 0xf0155786
    li s4, 0xf014578d
    pv.cmpne.b  s2, s0, s1
    pv.cmple.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd0d9979d
    li s1, 0x6838ee93
    li s3, 0x783239a8
    li s4, 0x3683028c
    p.addRNr s2, s0, s1
    p.adduRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xdc83d9be
    li s1, 0xffdca252
    li s3, 0xeffb768e
    li s4, 0xdcf675a0
    add s2, s0, s1
    pv.abs.b s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf531e04b
    li s1, 0x85db2be8
    li s3, 0xfc5701e3
    li s4, 0xe9977e50
    pv.cmpne.b  s2, s0, s1
    p.extractur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1e223c09
    li s1, 0xf0ff657d
    li s3, 0xec8ae03c
    li s4, 0x7d36efcb
    sub s2, s0, s1
    pv.srl.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xdf531e00
    li s1, 0xb85db2be
    li s3, 0x20
    li s4, 0x3e9977c5
    p.cnt s2, s0
    p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa6389283
    li s1, 0x5e06a9df
    li s3, 0x883bb891
    li s4, 0xbe2a2630
    srl s2, s0, s1
    p.exthz s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfd7dc049
    li s1, 0x5bb29d3f
    li s3, 0xd9f80b52
    li s4, 0x4bb019a0
    p.slet s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x743a6ee
    li s1, 0x93fa0dc9
    li s3, 0xcb1923ba
    li s4, 0x7ba22450
    p.subuRNr s2, s0, s1
    p.subuRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xacfc0ac
    li s1, 0x7acc9d10
    li s3, 0xffbfffff
    li s4, 0xde9e907e
    divu s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5a154ba1
    li s1, 0xa6a6f66d
    li s3, 0x80000000
    li s4, 0x2ec49ec1
    p.extractr s2, s0, s1
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc877d046
    li s1, 0xc6cbf4c
    li s3, 0x0
    li s4, 0x61f77ffa
    p.ff1 s2, s0
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc6376352
    li s1, 0xce56c319
    li s3, 0x3fab6e4f
    li s4, 0x45f4e275
    divu s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x649e7eb5
    li s1, 0xb296e758
    li s3, 0xf216dde1
    li s4, 0xf219dde1
    p.bclrr s2, s0, s1
    pv.cmpleu.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x742268d2
    li s1, 0x97b8a4f5
    li s3, 0x2b4d0928
    li s4, 0x2ba824fa
    pv.xor.b  s2, s0, s1
    p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2a113469
    li s1, 0x4bdc527a
    li s3, 0xc6268494
    li s4, 0x3e54127f
    pv.cmplt.b  s2, s0, s1
    pv.sra.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5a8eda59
    li s1, 0x1f9af844
    li s3, 0x5eada059
    li s4, 0xa1725fa6
    pv.and.h s2, s0, s1
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe0d04614
    li s1, 0x5e520b84
    li s3, 0x0
    li s4, 0x871d25b1
    p.cnt s2, s0
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1d44dba9
    li s1, 0xf5629e6d
    li s3, 0x10
    li s4, 0x68e027be
    p.ff1 s2, s0
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4d02e1f4
    li s1, 0x4615583e
    li s3, 0x8
    li s4, 0xba4a58bc
    p.abs s2, s0
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb2603455
    li s1, 0xad214306
    li s3, 0xab13b565
    li s4, 0x60a8dd5c
    pv.cmpgtu.b  s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x568c409e
    li s1, 0xebf623b0
    li s3, 0x9834eb7b
    li s4, 0x2b083e0f
    p.fl1 s2, s0
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xcba1420f
    li s1, 0x3f8cdaf8
    li s3, 0xe5433d37
    li s4, 0xe5403c19
    p.max s2, s0, s1
    pv.max.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x65d0a117
    li s1, 0x9fc46c7d
    li s3, 0xea7e9d8b
    li s4, 0xf6233495
    p.ror s2, s0, s1
    p.insertr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9d72bb00
    li s1, 0x60759f45
    li s3, 0xfbe9a6f5
    li s4, 0xb370bf38
    sra s2, s0, s1
    p.ror s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8d19d1a8
    li s1, 0x8c9ed8aa
    li s3, 0x92725e87
    li s4, 0x6f8da178
    p.ff1 s2, s0
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xeea13a8d
    li s1, 0xdb959e37
    li s3, 0x477f
    li s4, 0xb67bf56b
    rem s2, s0, s1
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x68230a2
    li s1, 0xf2905c21
    li s3, 0xfffdffff
    li s4, 0x38e92d8e
    p.ror s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x165e7de3
    li s1, 0x801dda99
    li s3, 0x2f77a87e
    li s4, 0x252f0092
    p.ror s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1cd8f8e0
    li s1, 0x193784bb
    li s3, 0x1ddb43cd
    li s4, 0x1dda40cc
    xor s2, s0, s1
    pv.min.b  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x7987b787
    li s1, 0xe6d23ccd
    li s3, 0x400000
    li s4, 0x3f096164
    p.adduNr s2, s0, s1
    p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5e423da2
    li s1, 0xa39f7805
    li s3, 0xb46f4540
    li s4, 0xceae07c9
    div s2, s0, s1
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x366c794d
    li s1, 0xa8ff4e1b
    li s3, 0x20000
    li s4, 0xdfa681c1
    pv.cmple.h s2, s0, s1
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x94d679ef
    li s1, 0x930f219f
    li s3, 0xd0c2cb4a
    li s4, 0x8f182255
    pv.cmpgtu.b  s2, s0, s1
    p.cnt s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x7b815790
    li s1, 0xcbcc9626
    li s3, 0x800
    li s4, 0x97eda018
    p.maxu s2, s0, s1
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa5610074
    li s1, 0xf93fb3af
    li s3, 0x8ac
    li s4, 0xb216c81e
    or s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x97109250
    li s1, 0xa238e0b2
    li s3, 0xffe4243c
    li s4, 0x8d1f243f
    pv.sll.b  s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xcc28f96d
    li s1, 0xa7f9433e
    li s3, 0xfda9f9b
    li s4, 0xf4ca83a1
    pv.sll.h s2, s0, s1
    p.subRNr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x19b287a2
    li s1, 0x237d27dc
    li s3, 0xeecbc144
    li s4, 0xed5ac13b
    p.extractur s2, s0, s1
    pv.cmple.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd74f1784
    li s1, 0x5f6d1cb7
    li s3, 0x4000
    li s4, 0x4ccc9932
    pv.cmpltu.b  s2, s0, s1
    p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb811f90c
    li s1, 0xbcc96264
    li s3, 0xfc740000
    li s4, 0x7eda018d
    sll s2, s0, s1
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf722bb21
    li s1, 0x97992c4c
    li s3, 0x400
    li s4, 0x2fdb4031
    pv.xor.b  s2, s0, s1
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1ce8ba8c
    li s1, 0x7af81d03
    li s3, 0xffffe81d
    li s4, 0xba124f7b
    divu s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x48908b83
    li s1, 0x3d2b2a2f
    li s3, 0x2eebc62b
    li s4, 0xa47dbfd3
    p.slet s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x246865d1
    li s1, 0x9e95950f
    li s3, 0x1735e315
    li s4, 0xd2351fe1
    p.ror s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x55f293fe
    li s1, 0x1d5d7840
    li s3, 0x22b208c8
    li s4, 0xce9df88d
    pv.sll.b  s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x55a00e8c
    li s1, 0xbc7ca70c
    li s3, 0x83a0017
    li s4, 0x5b22b159
    p.cnt s2, s0
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf32ec491
    li s1, 0xb72e0614
    li s3, 0xefbfff7a
    li s4, 0x6fc15493
    p.ff1 s2, s0
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1940fbb4
    li s1, 0x1a0064fa
    li s3, 0x88cf2fe
    li s4, 0x642f3eb3
    p.addRNr s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6738bd07
    li s1, 0x4da2c0ef
    li s3, 0xdb3c72e5
    li s4, 0x8931ed3f
    pv.add.h s2, s0, s1
    p.ror s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x68a9b0cf
    li s1, 0xb39da36d
    li s3, 0xbffffffd
    li s4, 0x6995dbc1
    div s2, s0, s1
    p.clb s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe849e535
    li s1, 0x402f36e2
    li s3, 0x40
    li s4, 0x41224415
    pv.cmpgeu.b  s2, s0, s1
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x83851b15
    li s1, 0x8b9cceb2
    li s3, 0x23c80000
    li s4, 0x27a83b4c
    p.subuNr s2, s0, s1
    p.ff1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xec51411c
    li s1, 0xd99cf9f7
    li s3, 0xc38dd5ff
    li s4, 0x3f415760
    p.extractr s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x928290f7
    li s1, 0x75b2fd1a
    li s3, 0x2164459e
    li s4, 0x2e0d3504
    sub s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x25100967
    li s1, 0x6345877a
    li s3, 0x793ff730
    li s4, 0x48474df3
    p.ror s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x908804b3
    li s1, 0xb1abc3bd
    li s3, 0xbd9ffb98
    li s4, 0x2423a6f9
    pv.sll.h s2, s0, s1
    p.extractr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x0
    li s1, 0x90464d
    li s3, 0xa5a9999d
    li s4, 0x79b759c2
    rem s2, s0, s1
    pv.sll.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x85cb99c2
    li s1, 0x168afbd
    li s3, 0xce3c8ad5
    li s4, 0xb1c3752a
    p.bsetr s2, s0, s1
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xec000469
    li s1, 0xd0f5708c
    li s3, 0x5c54891f
    li s4, 0xa3ab76f0
    p.extractur s2, s0, s1
    p.clipr s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6e02e653
    li s1, 0x6edd806b
    li s3, 0x100000
    li s4, 0x79a9956b
    p.min s2, s0, s1
    p.clipur s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xba289aad
    li s1, 0xffa27309
    li s3, 0x200000
    li s4, 0xf808f028
    pv.sra.b  s2, s0, s1
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2e8a26ab
    li s1, 0x7fe89cc2
    li s3, 0x20
    li s4, 0x3e023c0a
    p.bsetr s2, s0, s1
    p.fl1 s5, s3
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li a0, 0x22222222

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
