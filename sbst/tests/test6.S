.section .text
.global test6
.type test6, @function

test6:
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

    li t0, 0x6488fd1d
    li t1, 0x75b7006e
    li t2, 0xf5af53dd
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xaab641ff
    li t1, 0x83800684
    li t2, 0x1c810838
    li t3, 0xa3b33b13
    sub t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x230040
    li t1, 0x4ffbf79b
    li t2, 0x509820e2
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x97eed79b
    li t1, 0x97eed79b
    li t2, 0x7f1d050c
    li t3, 0x486da8a3
    p.max t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x1b7801db
    li t2, 0x41e15ece
    li t3, 0x40e153e6
    pv.abs.b t4, t0
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9c089c1c
    li t1, 0x846f05a1
    li t2, 0x60bee396
    li t3, 0xd7ccee5
    p.clipr t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x47173951
    li t2, 0xb5669113
    li t3, 0x448042bd
    pv.abs.b t4, t0
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe0bdbc42
    li t1, 0x12955863
    li t2, 0xc08cf64d
    li t3, 0x93e00672
    add t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd3cbaeb
    li t1, 0x70050a90
    li t2, 0x877a4da0
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x68310249
    li t1, 0x2f4251f0
    li t2, 0x54a62fa
    li t3, 0x40f14833
    p.subuRNr t4, t0, t1
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x460bf8b6
    li t1, 0x18400a57
    li t2, 0x5069507b
    li t3, 0x444c8299
    sub t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc88d59f3
    li t2, 0x8b7bff1a
    li t3, 0x8b7bff1a
    pv.abs.b t4, t0
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf4060d87
    li t2, 0x8b59aa79
    pv.abs.b t4, t0
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe4d0700b
    li t2, 0x9a3f8ddc
    pv.abs.b t4, t0
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb73f741
    li t1, 0xb735950
    li t2, 0x123c04f6
    li t3, 0x123c24f6
    p.clipr t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd6aba2c1
    li t1, 0x21f5dcea
    li t2, 0xcbf029af
    li t3, 0xcbf029af
    p.maxu t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x87eafa0c
    li t2, 0x6519b928
    li t3, 0x6519b828
    pv.abs.b t4, t0
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x77549c46
    li t1, 0x88ab63b9
    li t2, 0x1dd11d77
    li t3, 0x3339b5b6
    and t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x5a75cd26
    li t1, 0x3c800e8f
    li t2, 0x74f5922b
    li t3, 0x8fd36f
    p.minu t4, t0, t1
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xfbe7e493
    li t1, 0x5fd00b70
    li t2, 0x2a61802d
    li t3, 0xd663fdfd
    and t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x3c1bce79
    li t2, 0x64a0a2c8
    li t3, 0x786e7126
    pv.abs.b t4, t0
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb005e100
    li t1, 0x6200059
    li t2, 0xbc6b6f39
    li t3, 0x439492c6
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc6e54fe
    li t1, 0xc6e54fe
    li t2, 0x1a697ca7
    li t3, 0x4f828a41
    and t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xcb486f7a
    li t1, 0x662e9f26
    li t2, 0xac09bb0f
    p.adduRNr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x43ca98a7
    li t1, 0xc2325f27
    li t2, 0xf3eee552
    li t3, 0xf3eee552
    p.clipr t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x90ad4631
    li t2, 0x9a364714
    li t3, 0x9a360714
    pv.abs.b t4, t0
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd304826
    li t1, 0xe2f0843c
    li t2, 0xbfbfe799
    li t3, 0xbfbf2fb3
    p.subuRNr t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xa6982473
    li t1, 0x577c4256
    li t2, 0x423b73ce
    li t3, 0xef88aeda
    add t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x563ebde7
    li t1, 0xd2d1760b
    li t2, 0xd441bb82
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xcad68401
    li t1, 0x35297bfe
    li t2, 0x422c1df0
    li t3, 0x43eccd40
    p.clipr t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x958bbf79
    li t1, 0x75b44c82
    li t2, 0xfd160e90
    li t3, 0x857666b0
    p.minu t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xac5dfbc
    li t1, 0xf2da2645
    li t2, 0xab7b4af8
    li t3, 0xab7b4ab8
    p.clipur t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xcb49312
    li t1, 0x7d8f3f8b
    li t2, 0xb60eb13e
    li t3, 0x270407c
    p.clipur t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x86584009
    li t1, 0xae71e9c
    li t2, 0x653392ad
    li t3, 0xdc61fb6
    sub t4, t0, t1
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x6ffedffe
    li t1, 0x1805b397
    li t2, 0x98a52201
    li t3, 0x98a8e084
    add t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x83be9289
    li t2, 0xec72225
    li t3, 0xec72219
    pv.abs.b t4, t0
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x59e7a86d
    li t1, 0x7efea86d
    li t2, 0x8524dcdf
    li t3, 0x8524dc1f
    and t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf3c25995
    li t1, 0xc3da66a
    li t2, 0x7b7cbc27
    li t3, 0xc343861d
    p.clipr t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x5b4dba09
    li t1, 0x5b4d2879
    li t2, 0xdb96fbe8
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x738bcec4
    li t1, 0x738bce39
    li t2, 0x1f1c15c4
    li t3, 0x6a0c0f4c
    p.clipur t4, t0, t1
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x30a25d72
    li t1, 0xfc0d53b7
    li t2, 0x3f3ad4d
    li t3, 0x3f3ad4d
    p.adduRNr t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe5e044a1
    li t1, 0x1a1fbb5e
    li t2, 0x8395e6b3
    li t3, 0x8395c6b3
    p.clipr t4, t0, t1
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x2cfc814c
    li t1, 0x56ce724d
    li t2, 0xb35dd935
    p.min t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xfffffffe
    li t2, 0x0
    li t3, 0xffdffffd
    pv.abs.b t4, t0
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x99230744
    li t1, 0x2083af02
    li t2, 0x8e4699a1
    li t3, 0x71f9665e
    p.max t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x200002
    li t1, 0x26d42186
    li t2, 0x2ed421c5
    li t3, 0xd12bde3a
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x800000c1
    li t1, 0x80f0c35d
    li t2, 0x2000
    li t3, 0x790011ca
    p.clipr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb3381c60
    li t1, 0x9ffffdff
    li t2, 0x7fffffff
    li t3, 0x60004200
    and t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x75ac8d22
    li t1, 0xf3b14e6e
    li t2, 0xfd117f0b
    li t3, 0x16d83d40
    add t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xa1ca4183
    li t1, 0xa184788e
    li t2, 0x19ce467b
    p.clipr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xdbb76ac1
    li t1, 0xef4bdd4e
    li t2, 0x96a88466
    li t3, 0x56a88483
    and t4, t0, t1
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x4db9b160
    li t1, 0xf7a5aea3
    li t2, 0xea7f87de
    li t3, 0xfdffe3e9
    and t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x6dcd8b0
    li t1, 0x7ad2d751
    li t2, 0xa30ec2cf
    li t3, 0xfafff1a4
    p.clipr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x576e0c58
    li t1, 0xbce9eba8
    li t2, 0xfa737ce3
    add t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x5cf8e3e
    li t1, 0x83288e6d
    li t2, 0xfe137159
    and t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9ef3498d
    li t1, 0xa173781f
    li t2, 0x4a587018
    li t3, 0x4a5869ab
    p.maxu t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc3492fd4
    li t1, 0x45e780be
    li t2, 0xc304d872
    li t3, 0xc304e297
    add t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe1a487ea
    li t1, 0x22f3e85f
    li t2, 0x65c79e0c
    li t3, 0x65c7960c
    sub t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x3ce2cdf5
    li t1, 0xa4b7d8b4
    li t2, 0xa331bf19
    li t3, 0xa331bf59
    p.clipur t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9e716073
    li t1, 0xd25bee4b
    li t2, 0xa9579d31
    li t3, 0xa9579bd7
    p.minu t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc308352b
    li t1, 0x5ce3cb1c
    li t2, 0x591a1339
    li t3, 0x591a13b9
    p.min t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x61841895
    li t1, 0xae71e7ce
    li t2, 0x87c5d7ca
    li t3, 0x87c5d5ca
    add t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x30d3634a
    li t1, 0xd63863e7
    li t2, 0x3908f4e1
    and t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x18610e25
    li t1, 0x6b9c7973
    li t2, 0x633d97fc
    li t3, 0x633d9c14
    p.max t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xad86790e
    li t1, 0x1a7a2249
    li t2, 0x7966b62
    li t3, 0x7966f62
    sub t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x56833c87
    li t1, 0x8dfd1124
    li t2, 0x2a919430
    li t3, 0x2a88258a
    and t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x86e7e7ff
    li t2, 0xd935c44d
    pv.abs.b t4, t0
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xcef58ea8
    li t2, 0xd64e39e0
    li t3, 0x30a8a45b
    pv.abs.b t4, t0
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x8afcbc5a
    li t1, 0x707e99db
    li t2, 0xc71264cf
    p.maxu t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x6f087e2d
    li t1, 0x6f080cea
    li t2, 0x52b69705
    li t3, 0xd2b69705
    p.minu t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xcf395218
    li t1, 0x8665a438
    li t2, 0x7349458d
    li t3, 0x7349418d
    p.minu t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x79cab0c
    li t2, 0x35285ca9
    li t3, 0x28a7aa2d
    pv.abs.b t4, t0
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x47482c88
    li t1, 0x7ae3cb46
    li t2, 0xd8efce35
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xff241644
    li t1, 0x1df1a5a3
    li t2, 0x4a2258ea
    li t3, 0xb5ddaf15
    and t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x59900323
    li t1, 0xdbda50
    li t2, 0x26df0844
    li t3, 0xd920f7bb
    p.adduRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x92787c9f
    li t2, 0x10000
    li t3, 0x980000
    pv.abs.b t4, t0
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe4a1c741
    li t1, 0xd0b98799
    li t2, 0xaf566372
    li t3, 0x2f566372
    p.maxu t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf250e3a0
    li t1, 0xca7c97ec
    li t2, 0x367a6ad4
    li t3, 0x367a68d4
    and t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x54ae18de
    li t1, 0x7f4463bf
    li t2, 0xc9dc6b6d
    li t3, 0xc9dc77af
    p.subuRNr t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xaa57066f
    li t1, 0x3fa231df
    li t2, 0x20fd65b6
    li t3, 0x20fd66d7
    and t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x78adfa39
    li t1, 0x85ab3ba6
    li t2, 0x5117253a
    li t3, 0x511724ff
    p.subuRNr t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x11d08492
    li t1, 0xd8afbf1a
    li t2, 0x9f70b73c
    li t3, 0x9f70b6eb
    add t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x8e80249
    li t1, 0x6c57df8d
    li t2, 0xafff531e
    li t3, 0xafff36f5
    p.adduRNr t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x2c742124
    li t1, 0x3c2befc6
    li t2, 0x83bb0ad0
    li t3, 0x8bbb0ad0
    p.subuRNr t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x823a1092
    li t1, 0x5a15f7e2
    li t2, 0x9c76f29d
    li t3, 0x9d76f29d
    p.subuRNr t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc51d0849
    li t1, 0x2d8afbe3
    li t2, 0x32f61851
    li t3, 0x36f61851
    p.clipur t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x6d08fd2a
    li t1, 0xadbf5fb3
    li t2, 0x8449c74c
    li t3, 0x8549c74c
    p.max t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xab02079b
    li t1, 0x7c258d91
    li t2, 0xac7ba362
    p.clipr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe8077ac3
    li t1, 0xb468e495
    li t2, 0x8ddb58d5
    li t3, 0x8fdb58d5
    p.minu t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd403bd61
    li t1, 0xfa347240
    li t2, 0xdc138709
    add t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd787a7be
    li t1, 0xf7601b6e
    li t2, 0x2e47fdcb
    li t3, 0x6e47fdcb
    and t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xa3c3d3df
    li t1, 0x77b00db4
    li t2, 0x7beb2283
    p.clipr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd86790e1
    li t2, 0x7c340211
    li t3, 0x2c08a00d
    pv.abs.b t4, t0
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x6c33c870
    li t1, 0xd3d11249
    li t2, 0x9d994308
    li t3, 0x9da250a6
    sub t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb619e438
    li t1, 0x69e88924
    li t2, 0x2088a104
    li t3, 0x204d28d3
    p.clipr t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x5bccf21c
    li t1, 0x34344492
    li t2, 0x2fae5042
    li t3, 0x2fc094a9
    p.maxu t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x1c56ecbf
    li t1, 0xc511518b
    li t2, 0xf57a1b9e
    p.subuRNr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe0b765f
    li t1, 0xe288a8c5
    li t2, 0x3add23b5
    li t3, 0x3add23b6
    sub t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9b135790
    li t2, 0xef4e76c2
    li t3, 0xef4e56c2
    pv.abs.b t4, t0
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x519f4757
    li t1, 0xdf3bd357
    li t2, 0x51ae722f
    li t3, 0x51ae720f
    p.min t4, t0, t1
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x34d94f04
    li t1, 0x288cb834
    li t2, 0xdf8872e7
    li t3, 0x22778d18
    p.clipr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x1a6ca702
    li t1, 0x15461c1a
    li t2, 0x2404a6
    li t3, 0xffdbfbd9
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9100bf7e
    li t1, 0xcfb27f86
    li t2, 0xc029c2dd
    li t3, 0xc0155fa0
    p.clipur t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc8905fbf
    li t1, 0x67d93fc3
    li t2, 0xb6ce16e
    li t3, 0xb32afd0
    p.maxu t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf85ee360
    li t1, 0x76edc06a
    li t2, 0xa88f2b29
    p.subuRNr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xfc2761b0
    li t1, 0x3b7ee735
    li t2, 0xb94b1594
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xfe01b0d8
    li t2, 0xf95d8aca
    pv.abs.b t4, t0
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x631d34d3
    li t1, 0xcbcee846
    li t2, 0xde93e745
    li t3, 0xde91e745
    add t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x2d9c76d6
    li t1, 0x20f225a8
    li t2, 0xf9394e3
    p.clipr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x16c83b6b
    li t1, 0x107b12d4
    li t2, 0xb49f8804
    li t3, 0xb49e8804
    p.maxu t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9772f10a
    li t1, 0x4d2cd8e1
    li t2, 0x7059bea6
    li t3, 0x705ae14b
    p.maxu t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xcb987885
    li t1, 0x26966c70
    li t2, 0xcde1f890
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf94ed0fd
    li t1, 0x560e67b3
    li t2, 0x98ca4d19
    li t3, 0x98c24d19
    p.clipr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x60f384c1
    li t1, 0x6e386252
    li t2, 0xb69220f1
    li t3, 0xb69620f1
    sub t4, t0, t1
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb069c268
    li t2, 0xc5cede66
    li t3, 0xc5dede66
    pv.abs.b t4, t0
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x587ce130
    li t1, 0x5b0f1894
    li t2, 0x4dab0b5e
    li t3, 0x4d6b0b5e
    p.clipr t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x2c1f7098
    li t1, 0x2dc68c4a
    li t2, 0x633c0179
    li t3, 0x633d0179
    p.maxu t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x962f384c
    li t1, 0x16e3c625
    li t2, 0x16ecf4a0
    li t3, 0x16ccf4a0
    p.minu t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd7117099
    li t1, 0xce60b299
    li t2, 0x54c26e43
    li t3, 0x54826e43
    p.adduRNr t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x779e54f3
    li t1, 0x22210847
    li t2, 0x71fa5857
    li t3, 0x71fa588a
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xa7d9c6c2
    li t1, 0x5401d5fc
    li t2, 0x80a25dff
    li t3, 0x80a25dfb
    and t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd3ece373
    li t1, 0x2a00eae4
    li t2, 0xdf91a62e
    li t3, 0xdf91a632
    p.adduRNr t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x75e08d0e
    li t1, 0x501124fd
    li t2, 0xa2c91607
    p.subuRNr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xbaf04e8f
    li t1, 0x28089270
    li t2, 0xb4c0f6a5
    li t3, 0xb4c0f6a8
    p.clipur t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc16ecbf4
    li t1, 0x511518bf
    li t2, 0xad2229ac
    li t3, 0xad2229a7
    p.minu t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe0b765fe
    li t1, 0x288a8c5b
    li t2, 0x4fcfa9a3
    li t3, 0x4fcfa9a4
    p.min t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x705bb2fc
    li t1, 0x1445462f
    li t2, 0xee91b6d3
    li t3, 0xee91b6d2
    add t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x382dd979
    li t2, 0x903e2b76
    li t3, 0x903e2b74
    pv.abs.b t4, t0
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x7336fe0f
    li t2, 0x2fba17d2
    pv.abs.b t4, t0
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x399b6f47
    li t1, 0x1dd29e17
    li t2, 0x49c959b
    li t3, 0x49c859b
    p.max t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x6ffb412d
    li t1, 0xb54c7324
    li t2, 0xe51293ff
    li t3, 0xe671e12d
    and t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc4cb5e18
    li t1, 0xe10305bd
    li t2, 0x3d97a945
    li t3, 0xc26857ba
    p.clipr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x11534182
    li t1, 0x4b24aef1
    li t2, 0x16b011b6
    li t3, 0xe94ffe49
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x88a9a8c1
    li t1, 0x25925f7b
    li t2, 0xc70de9d
    li t3, 0xc70de9c
    p.clipur t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb7622aee
    li t1, 0xa96c1393
    li t2, 0x9ffb1d33
    li t3, 0x9ffb1d29
    p.subuRNr t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xdbb11537
    li t1, 0x54b609c9
    li t2, 0x10886341
    li t3, 0x1088630c
    p.clipur t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9eee7435
    li t1, 0x91fe38cb
    li t2, 0xa3b0e615
    p.clipur t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe7bb9d8d
    li t1, 0x647f8eb2
    li t2, 0x8be33939
    p.minu t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x80eb3008
    li t1, 0x899afb36
    li t2, 0x1607495
    li t3, 0xca884727
    add t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb343668a
    li t2, 0x9a8dd3d3
    li t3, 0xb05a2e2
    pv.abs.b t4, t0
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x19a1b345
    li t1, 0x3fb420da
    li t2, 0xd46e9e9
    li t3, 0xc582d171
    and t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x7fe6272c
    li t1, 0xa47f2c4a
    li t2, 0xfffceb25
    li t3, 0xfffceb2d
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x7ff71396
    li t1, 0x523f9621
    li t2, 0x6d199b5b
    li t3, 0x6d1d9b5b
    p.clipur t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x8ccf7745
    li t1, 0x52baf73f
    li t2, 0xd4f0b312
    p.clipur t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9551452c
    li t1, 0xb2f847b0
    li t2, 0xa7c779ec
    p.subuRNr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xcaa8a296
    li t1, 0x597c23cb
    li t2, 0x6731653c
    li t3, 0x2791ac38
    p.clipur t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe454514b
    li t1, 0x3fbe11ec
    li t2, 0x29f676a7
    li t3, 0x28f676a7
    p.maxu t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf2aa28a5
    li t1, 0x965f08f6
    li t2, 0xb868423f
    li t3, 0xf868423f
    sub t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf9551452
    li t2, 0xc3c24002
    li t3, 0xd3c24002
    pv.abs.b t4, t0
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf9c74a7
    li t1, 0x5e32fe12
    li t2, 0x7b5cb8e5
    li t3, 0x6b5cb8e5
    p.adduRNr t4, t0, t1
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x70f8c4dd
    li t1, 0x9ebc4326
    li t2, 0x360fe84a
    li t3, 0x340fe84a
    p.maxu t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xcb4a9ce0
    li t1, 0xf1fb1dbc
    li t2, 0xa4dd30e7
    li t3, 0xa6dd30e7
    and t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe4a54e70
    li t1, 0x58fd8ede
    li t2, 0xc31a3d8c
    li t3, 0xe31a3d8c
    p.max t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x16459b6
    li t1, 0x7dbfb40
    li t2, 0x603758fd
    li t3, 0x403758fd
    sub t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x80b22cdb
    li t1, 0xbedfda0
    li t2, 0x3cb9376e
    p.clipr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x336fe8e3
    li t1, 0xbe53c2ff
    li t2, 0x5ea58058
    li t3, 0x5aa58058
    p.clipur t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x99b7f471
    li t1, 0xd929e17f
    li t2, 0x125db6c
    li t3, 0x525db6c
    p.maxu t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xccdbfa38
    li t1, 0xee94f0bf
    li t2, 0x8b5ca5cf
    li t3, 0x8b5ea5cf
    p.minu t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe66dfd1c
    li t1, 0x774a785f
    li t2, 0x3ad4a038
    li t3, 0x3af4a038
    add t4, t0, t1
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe14decb7
    li t1, 0xd3146446
    li t2, 0xff02565
    li t3, 0xfd02565
    add t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x70b6f65b
    li t1, 0xe98a3233
    li t2, 0x4a037095
    li t3, 0x4a037085
    p.adduRNr t4, t0, t1
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd936979a
    li t1, 0xa7d17d57
    li t2, 0x83ae5744
    li t3, 0x628c7bbb
    p.clipr t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xdf6a702
    li t1, 0xc0fcdaed
    li t2, 0x40
    li t3, 0xd6b0bab
    p.subuRNr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x6396bf0a
    li t1, 0xb24a0930
    li t2, 0x87e9ead3
    li t3, 0x7916152c
    add t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x33cb5f85
    li t2, 0xa5dddedf
    li t3, 0x5a222128
    pv.abs.b t4, t0
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe0084375
    li t1, 0x3fcee60a
    li t2, 0x1000000
    li t3, 0x40201ac6
    p.adduRNr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x7c4421ba
    li t1, 0xbfe77305
    li t2, 0x9a0c884d
    li t3, 0x65f377f2
    p.clipur t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x5f5ffc6a
    li t1, 0x8ce7ddc4
    li t2, 0xe50b2f75
    li t3, 0xe51b2f75
    p.clipur t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xafa7fe35
    li t1, 0x4673eee2
    li t2, 0xb91ff8fa
    li t3, 0xb90ff8fa
    p.subuRNr t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd7d3ff1a
    li t1, 0xa33df771
    li t2, 0x68c41a04
    li t3, 0x68c01a04
    sub t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xa84133a
    li t1, 0x82889ffe
    li t2, 0x3d012f72
    li t3, 0x3d812f72
    p.adduRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe42fe52a
    li t1, 0x92d02bb9
    li t2, 0xa7ac2311
    li t3, 0xa72c2311
    p.minu t4, t0, t1
    and t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf217f295
    li t1, 0x492815dc
    li t2, 0x964bc99b
    li t3, 0x9643c99b
    add t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x986e15fd
    li t1, 0x77806ea8
    li t2, 0x43b69f32
    li t3, 0x43be9f32
    add t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x4c330afe
    li t2, 0xc670f228
    li t3, 0xc670fa28
    pv.abs.b t4, t0
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc77469c8
    li t1, 0x8ef46fec
    li t2, 0x12836483
    li t3, 0x12837483
    p.adduRNr t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x82d75853
    li t1, 0x946e1bb0
    li t2, 0x66209e5f
    li t3, 0x66201e5f
    p.subuRNr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc16bec29
    li t1, 0xca372cd8
    li t2, 0xcabef049
    li t3, 0xcabef149
    and t4, t0, t1
    p.maxu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe0b5f614
    li t1, 0xe51b94ec
    li t2, 0xf869ec44
    li t3, 0xf869ee44
    p.adduRNr t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x705afb0a
    li t1, 0x728d4b76
    li t2, 0x26fb3eb4
    li t3, 0x26fb9403
    and t4, t0, t1
    p.min t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb82d7d85
    li t1, 0x3946e5bb
    li t2, 0xa887c9b2
    li t3, 0xa88749b2
    p.adduRNr t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xbd7b5275
    li t1, 0x4fb7169b
    li t2, 0xa7ecaed7
    sub t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x3fd0558d
    li t1, 0x74cfef0b
    li t2, 0xec1e0ea4
    li t3, 0xec1e1ea4
    p.min t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xfe85ce71
    li t1, 0x697393c1
    li t2, 0x93518c7a
    li t3, 0x93518c78
    add t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x7f42e73c
    li t1, 0xb4b9c9e1
    li t2, 0x4867b830
    p.adduRNr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xdecc9f2b
    li t1, 0x894880b6
    li t2, 0xf1621b77
    p.subuRNr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xef664f95
    li t1, 0xc4a4405b
    li t2, 0x75313c3b
    li t3, 0x75313c33
    and t4, t0, t1
    p.max t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x16decb6d
    li t1, 0x3146446b
    li t2, 0xd5888418
    li t3, 0xd5888408
    p.adduRNr t4, t0, t1
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb6f65be
    li t1, 0x98a32225
    li t2, 0xab6896ad
    li t3, 0xab6896bd
    p.clipur t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x85b7b2ff
    li t1, 0x4c51911a
    li t2, 0x81d1c351
    li t3, 0x81d1c371
    p.maxu t4, t0, t1
    p.subuRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc2dbd96f
    li t1, 0xa628c88d
    li t2, 0xa7c3863d
    li t3, 0xa7c3863d
    sub t4, t0, t1
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x462ebf4a
    li t1, 0xe0b81fba
    li t2, 0xcac927b3
    li t3, 0xcac92793
    p.maxu t4, t0, t1
    add t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xa3174da5
    li t1, 0x70789fd9
    li t2, 0x7cf0b34b
    li t3, 0x830f4cb4
    sub t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x97a51088
    li t1, 0x58961854
    li t2, 0x7d9233d0
    li t3, 0x826dcc2f
    p.clipur t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xdffcf706
    li t1, 0xedf33bf8
    li t2, 0x8101046
    li t3, 0x12080809
    p.maxu t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd0a0c9
    li t1, 0x86c19672
    li t2, 0x100
    li t3, 0x74dc0036
    p.maxu t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x80685264
    li t1, 0xc360cb39
    li t2, 0x7f17e99e
    li t3, 0x7e6c001b
    p.minu t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x861a9678
    li t1, 0x81087a26
    li t2, 0xabac7b15
    p.subuRNr t4, t0, t1
    pv.abs.b t5, t2
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc30d4b3c
    li t1, 0x40843d13
    li t2, 0x28d63d8a
    li t3, 0x94f8469e
    and t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x27a81ad4
    li t1, 0xc0fa0133
    li t2, 0x894c911f
    li t3, 0x6ebaae7e
    sub t4, t0, t1
    p.minu t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd3d40d6a
    li t2, 0x948a688f
    li t3, 0x976d573f
    pv.abs.b t4, t0
    sub t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x69ea06b5
    li t1, 0x303e8042
    li t2, 0xca532445
    li t3, 0xcbaeab95
    p.max t4, t0, t1
    p.adduRNr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x72dbbc13
    li t1, 0x78a75f9c
    li t2, 0x450be8ca
    li t3, 0xbaf41737
    p.adduRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x7f436143
    li t2, 0x2453745f
    li t3, 0xdbac8ba1
    pv.abs.b t4, t0
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x3fa1b021
    li t1, 0x6e75d83a
    li t2, 0x80
    li t3, 0x5e273127
    p.adduRNr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x59fe671a
    li t1, 0x5782f3a7
    li t2, 0x1
    li t3, 0x5bd51562
    p.clipr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x2cff338d
    li t1, 0x2bc179d3
    li t2, 0x0
    li t3, 0xedea8ab1
    p.subuRNr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xd0512680
    li t1, 0x7558a353
    li t2, 0x20
    li t3, 0x233c849
    p.clipr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x2e062c0c
    li t1, 0xda144e13
    li t2, 0x10
    li t3, 0x35df6925
    p.min t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x17031606
    li t1, 0x6d0a2709
    li t2, 0x8
    li t3, 0x1befb482
    add t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb818b03
    li t1, 0x36851384
    li t2, 0x4
    li t3, 0x4d77da41
    add t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x5c0c581
    li t1, 0x934289c2
    li t2, 0x9cf902a4
    li t3, 0x6b06fd5b
    p.clipr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x2e062c0
    li t1, 0xcda144e1
    li t2, 0x595d8cc8
    li t3, 0xb6a27337
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc75e0e2a
    li t1, 0x86683dca
    li t2, 0xeb6fa700
    li t3, 0x1490d8ff
    p.clipr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x2581f85f
    li t1, 0x838c455f
    li t2, 0x4a9a9e5c
    li t3, 0xb56561a3
    add t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x54ee4365
    li t1, 0x317e3b15
    li t2, 0xa542868b
    li t3, 0x5abd7d74
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xaa7721b2
    li t1, 0x98bf1f8a
    li t2, 0x7d3b7424
    li t3, 0x82c48bdf
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x93152f93
    li t1, 0xa8e7907f
    li t2, 0xfd153281
    li t3, 0x6eacd7e
    add t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x498a97c9
    li t1, 0xd653c83f
    li t2, 0xc82e7500
    li t3, 0x37f18aff
    p.adduRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x62eaf4ae
    li t2, 0xc31703e1
    li t3, 0x3ce9fc1e
    pv.abs.b t4, t0
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x1175fa57
    li t1, 0x5c0fdd2
    li t2, 0xb36773b0
    li t3, 0x6c988c4f
    p.adduRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x18b2fd2b
    li t1, 0x82e07ee9
    li t2, 0x9d5fda25
    li t3, 0x62a825da
    sub t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x8c597e95
    li t1, 0xc1703f64
    li t2, 0x42a7d532
    li t3, 0xbd5c2acd
    p.clipr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc23eb762
    li t1, 0x8a9cd7ae
    li t2, 0xa2856b58
    li t3, 0x5d7a94b7
    p.minu t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe11f5bb1
    li t1, 0x454e4bd7
    li t2, 0xe9d37416
    li t3, 0x162cabe9
    add t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xb2b11aba
    li t1, 0x283ba245
    li t2, 0x380bca6c
    li t3, 0xc7f47593
    and t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x1b663a3f
    li t1, 0x9e81268c
    li t2, 0xe1d397a4
    li t3, 0x5e2c685b
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x4f8daa5d
    li t1, 0x45dc44e8
    li t2, 0x222f6eb3
    li t3, 0xddd2914c
    add t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x27c6953e
    li t1, 0xa26e6274
    li t2, 0x654c7ac3
    li t3, 0x9ab3853c
    p.adduRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xdbddddfd
    li t1, 0xfbebd7d4
    li t2, 0x320dc90a
    li t3, 0x4df236f5
    p.clipr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x68eeeede
    li t1, 0xedf5e36a
    li t2, 0x5afb9967
    li t3, 0xa5046698
    p.subuRNr t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x7649c01d
    li t1, 0xfc66260b
    li t2, 0x8000000
    li t3, 0x37a64fa6
    add t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x3b24e00e
    li t1, 0xfe331305
    li t2, 0x4000000
    li t3, 0x4bd327d3
    p.clipr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x1d827007
    li t1, 0x7f198982
    li t2, 0x80000
    li t3, 0x27e193e9
    p.subuRNr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x4cf70f61
    li t2, 0x8000
    li t3, 0x71722adc
    pv.abs.b t4, t0
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xe44570d2
    li t1, 0x1014de19
    li t2, 0x200
    li t3, 0x1a27f446
    p.maxu t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xf222b869
    li t1, 0x80a6f0c
    li t2, 0x5bcf010f
    li t3, 0xa4b0fef0
    p.minu t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x3b2feb56
    li t1, 0xe89e028
    li t2, 0xa5f8a4e0
    li t3, 0x5a175b1f
    p.minu t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x9d97f58b
    li t1, 0x74cf014
    li t2, 0xf8885932
    li t3, 0x777a6ed
    add t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x8cf54db7
    li t1, 0x93aafa4
    li t2, 0x20000000
    li t3, 0x4b912486
    and t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x44411b9
    li t1, 0xe01807c
    li t2, 0x40000000
    li t3, 0x975e716b
    p.maxu t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x822208dc
    li t1, 0x8700c03e
    li t2, 0x10000000
    li t3, 0x2baf38b5
    p.minu t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc111046e
    li t1, 0x4380601f
    li t2, 0x800000
    li t3, 0x5d579c5a
    add t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x60888237
    li t2, 0x2000000
    li t3, 0x68ebce2d
    pv.abs.b t4, t0
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x3044011b
    li t1, 0x90e01807
    li t2, 0x4000
    li t3, 0x7575a716
    p.max t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xda1c87ef
    li t1, 0x42ecdbad
    li t2, 0x1000
    li t3, 0x192c00a3
    p.min t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xaf30f495
    li t1, 0x2beaba78
    li t2, 0x800
    li t3, 0x2e82e379
    p.minu t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x15a6c928
    li t1, 0x1f698a92
    li t2, 0x100000
    li t3, 0x3dc69694
    sub t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x8ad36494
    li t1, 0xfb4c549
    li t2, 0x200000
    li t3, 0x1acb4b4a
    add t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x87170528
    li t1, 0x8d46b50a
    li t2, 0x400000
    li t3, 0x2fa3468d
    p.clipur t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0xc3a98294
    li t1, 0x46a35a85
    li t2, 0x20000
    li t3, 0x17f1a346
    p.subuRNr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x23eb7628
    li t1, 0xa9cd7aec
    li t2, 0x40000
    li t3, 0x2b6a328b
    add t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x11f5bb14
    li t1, 0x54e6bd76
    li t2, 0x400
    li t3, 0x14b71945
    p.adduRNr t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x8fadd88
    li t1, 0x2a735ebb
    li t2, 0x2
    li t3, 0xa5b8ea2
    p.clipur t4, t0, t1
    p.clipur t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)
    li t0, 0x847d6ec5
    li t1, 0x1539af1d
    li t2, 0x6dec1ca5
    li t3, 0x9213e35a
    p.maxu t4, t0, t1
    p.clipr t5, t2, t3
    //sw t4, 4(sp)
    //sw t5, 4(sp)

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
