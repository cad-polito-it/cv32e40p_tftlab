.section .text
.global test5
.type test5, @function

test5:
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

    li s0, 0x800bf7e0
    li s1, 0x9c8d2007
    li s3, 0x7808002a
    li s4, 0x70067826
    p.msu  s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu  s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x481d1211
    li s1, 0xc882585b
    li s3, 0x85380b07
    li s4, 0xb0c8be54
    pv.dotup.b s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9800083d
    li s1, 0x6001059a
    li s3, 0xaf007f1f
    li s4, 0x7717ac6e
    p.msu s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x77e9cd0b
    li s1, 0xd26470f9
    li s3, 0x3c5162d9
    li s4, 0x39c5fdad
    pv.dotusp.b s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.b s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x41e0fc1
    li s1, 0x93bf0ac8
    li s3, 0xfe5fde86
    li s4, 0xfae47fe
    p.msu  s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu  s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x24acf77e
    li s1, 0x2e37dd13
    li s3, 0xd338b91f
    li s4, 0xd93019a5
    p.muls s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9008028e
    li s1, 0x51c12103
    li s3, 0xa244cfe7
    li s4, 0xac963e84
    pv.dotup.h s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf3dc1f20
    li s1, 0x6801b0ee
    li s3, 0x87965115
    li s4, 0xceb4d310
    p.mac s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa808800f
    li s1, 0x53e85888
    li s3, 0xcf2fe9d0
    li s4, 0x6477fe87
    p.mac  s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac  s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x71f1c09f
    li s1, 0xea2b05a8
    li s3, 0xe1e59445
    li s4, 0x7bad34c4
    p.msu s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1eddc90
    li s1, 0x972d31a3
    li s3, 0x109a8797
    li s4, 0xab396650
    pv.dotsp.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3f1ff4bf
    li s1, 0xa1c1f85f
    li s3, 0x68250e7e
    li s4, 0xc7734f1a
    p.msu s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9f88734e
    li s1, 0x10d5f8dd
    li s3, 0xb412873f
    li s4, 0x63b9a78d
    p.msu s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x7022319d
    li s1, 0x6257950b
    li s3, 0x3a610e2a
    li s4, 0xa3332ff4
    pv.dotsp.b s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.b s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa3e1f0e8
    li s1, 0x3fc783c3
    li s3, 0x1d308715
    li s4, 0x519997fa
    p.msu s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x63ee9030
    li s1, 0x32a8bef6
    li s3, 0xeef00e3f
    li s4, 0xba2337cf
    p.msu s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x708a51c
    li s1, 0xf9b497ba
    li s3, 0xcb882555
    li s4, 0x67ff33ea
    p.mulu s2, s0, s1
    pv.sdotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulu s2, s0, s1
    pv.dotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1915800f
    li s1, 0xf1c7370d
    li s3, 0xb31e5c55
    li s4, 0xbfe12860
    p.msu s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa39b5523
    li s1, 0xa1326706
    li s3, 0x7806dd0f
    li s4, 0x4bf30441
    p.msu  s2, s0, s1
    p.mac  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4c5db84
    li s1, 0x60481ce0
    li s3, 0x556fc33c
    li s4, 0x2c0c65f9
    p.msu s2, s0, s1
    p.mac s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1cc83c2f
    li s1, 0x85a90fac
    li s3, 0xc5011085
    li s4, 0x7a56e1b1
    p.msu  s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9570b41f
    li s1, 0xb81101c1
    li s3, 0x12241141
    li s4, 0x11cd418e
    p.msu  s2, s0, s1
    p.mac s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe7f0ac9d
    li s1, 0x364a55d2
    li s3, 0xef685897
    li s4, 0x8abc01e8
    pv.dotup.h s2, s0, s1
    pv.sdotsp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotsp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x73f8564e
    li s1, 0x9b252ae9
    li s3, 0xf7b42c4b
    li s4, 0xc55e00f4
    p.muls s2, s0, s1
    pv.sdotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.muls s2, s0, s1
    pv.dotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x88fe2342
    li s1, 0x9e86e83f
    li s3, 0x842162ff
    li s4, 0x84804cb
    p.msu  s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe5b0d116
    li s1, 0xa2522817
    li s3, 0x37016081
    li s4, 0xbf4300ee
    p.msu s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa80c085f
    li s1, 0xa84401e0
    li s3, 0xfd04f009
    li s4, 0xca5ca02b
    p.msu  s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x7dc5b10d
    li s1, 0xac8dc27d
    li s3, 0xb495e654
    li s4, 0x57cbdc4
    p.mulhhs s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1cf924d
    li s1, 0x64a7c4df
    li s3, 0xe99b3cb4
    li s4, 0xdaf57b78
    pv.dotsp.h s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.h s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x80e7c926
    li s1, 0xb253e26f
    li s3, 0xf4cd9e5a
    li s4, 0x6d7abdbc
    pv.dotusp.h s2, s0, s1
    pv.sdotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.h s2, s0, s1
    pv.dotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc1bc76de
    li s1, 0x3d8e35e8
    li s3, 0x13fdf399
    li s4, 0xec4825a6
    pv.dotusp.h s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.h s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe111a922
    li s1, 0x7a60de2b
    li s3, 0x6065c578
    li s4, 0x2cd169ab
    pv.dotsp.h s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.h s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc87f3068
    li s1, 0x1921cebe
    li s3, 0xe1e4152c
    li s4, 0xc28f07d5
    p.msu  s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x78a3a36e
    li s1, 0x2ccbd5e5
    li s3, 0x6cd4ef04
    li s4, 0x664ee7d6
    p.muls s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.muls s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xbd9e43fa
    li s1, 0x72c22e2d
    li s3, 0x5ff14b36
    li s4, 0xe9d20893
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xaea802b3
    li s1, 0xf8174f54
    li s3, 0xfe676e79
    li s4, 0x6081f95c
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x57540159
    li s1, 0xfc0ba7aa
    li s3, 0x7f33b73c
    li s4, 0xb040fcae
    pv.dotup.b s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2baa00ac
    li s1, 0xfe05d3d5
    li s3, 0xbf99db9e
    li s4, 0x58207e57
    p.muls s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.muls s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x65e16da0
    li s1, 0x74baa922
    li s3, 0x99586a04
    li s4, 0x90c3eca8
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x333f249d
    li s1, 0x5efa904e
    li s3, 0xa53709b6
    li s4, 0x92948d2c
    pv.dotup.h s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x199f924e
    li s1, 0xaf7d4827
    li s3, 0xd29b84db
    li s4, 0x494a4696
    pv.dotup.b s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd005b6a
    li s1, 0x331960cc
    li s3, 0xd6fed9
    li s4, 0x7e505833
    p.mac s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x874fbff8
    li s1, 0x7d2b74b9
    li s3, 0xe9f043d8
    li s4, 0x65dd5761
    pv.dotup.h s2, s0, s1
    pv.sdotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x43a7dffc
    li s1, 0x3e95ba5c
    li s3, 0xf4f821ec
    li s4, 0x32eeabb0
    p.msu s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xa1d3effe
    li s1, 0x1f4add2e
    li s3, 0x7a7c10f6
    li s4, 0x197755d8
    pv.dotup.b s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6017da02
    li s1, 0x8d8c80bf
    li s3, 0x4820c224
    li s4, 0x83fde29a
    p.msu s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x854c000c
    li s1, 0xa34bbfc1
    li s3, 0x132f2c45
    li s4, 0x13c57171
    p.msu  s2, s0, s1
    p.mac  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x11e5d174
    li s1, 0x66eb802e
    li s3, 0xcccc0438
    li s4, 0x184c6151
    p.muls s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xaa54f140
    li s1, 0x37c43805
    li s3, 0x8f398ff0
    li s4, 0x5411d579
    p.msu s2, s0, s1
    p.mac  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3a0e8a2c
    li s1, 0x5da00250
    li s3, 0xbb137c56
    li s4, 0x68081c6b
    pv.dotup.b s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1cf924d6
    li s1, 0x4a7c4dfe
    li s3, 0x99b3cb4d
    li s4, 0xaf57b78d
    pv.dotup.b s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe7c926b
    li s1, 0x253e26ff
    li s3, 0x4cd9e5a6
    li s4, 0xd7abdbc6
    p.mulhhu s2, s0, s1
    pv.sdotsp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulhhu s2, s0, s1
    pv.dotsp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x43d0584
    li s1, 0x12dfb2f7
    li s3, 0xa24b2168
    li s4, 0x6adf27f0
    p.mulu s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x39f202c
    li s1, 0x49038b7b
    li s3, 0xd170f24f
    li s4, 0xb5e5204c
    pv.dotup.h s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb3018035
    li s1, 0x300071dd
    li s3, 0xe0bd380e
    li s4, 0x7a701cfa
    p.msu  s2, s0, s1
    p.mac s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x7c035876
    li s1, 0x52e6708a
    li s3, 0xd8c115a0
    li s4, 0xf6f6d48f
    pv.dotusp.b s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.b s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x46071cd7
    li s1, 0x8cbfd950
    li s3, 0x5de2a191
    li s4, 0x9696c358
    pv.dotup.h s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xdb053e87
    li s1, 0x63930dbd
    li s3, 0x1f737b89
    li s4, 0x26a6c8b3
    pv.dotup.h s2, s0, s1
    pv.sdotsp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotsp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x95842faf
    li s1, 0x140567cb
    li s3, 0x3e3b9685
    li s4, 0x7ebecd46
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x4ac217d7
    li s1, 0x8a02b3e5
    li s3, 0x1f1dcb42
    li s4, 0xbf5f66a3
    pv.dotsp.b s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.b s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5d67bb07
    li s1, 0x60cdb8e7
    li s3, 0xbe0ccee0
    li s4, 0xb2421a4e
    pv.dotsp.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xaeb3dd83
    li s1, 0xb066dc73
    li s3, 0x5f066770
    li s4, 0x59210d27
    pv.dotsp.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2f5f5e2d
    li s1, 0x7dff8f2c
    li s3, 0x9e1ca0e7
    li s4, 0xc1f3881c
    p.mac s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x97afaf16
    li s1, 0xbeffc796
    li s3, 0x4f008c7d
    li s4, 0x60be97c6
    p.msu s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xcbd7d78b
    li s1, 0x5f7fe3cb
    li s3, 0xa780463e
    li s4, 0x705f4be3
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9ded5b29
    li s1, 0xa7310f0
    li s3, 0xe242085e
    li s4, 0xd5c20cee
    pv.dotsp.b s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.b s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x36f01d78
    li s1, 0x20f5696d
    li s3, 0xc0a32f6e
    li s4, 0x870caf68
    pv.dotsp.h s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.h s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9b780ebc
    li s1, 0x107ab4b6
    li s3, 0xe05197b7
    li s4, 0x438657b4
    pv.dotsp.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9add5bd9
    li s1, 0x56f8dda7
    li s3, 0xe0d5704d
    li s4, 0x26174162
    p.msu s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x35681d00
    li s1, 0xeb08fc6
    li s3, 0x41e89367
    li s4, 0x7ee609ae
    p.muls s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.muls s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x3039f406
    li s1, 0x50c0ff39
    li s3, 0x48bb3179
    li s4, 0x294f56e4
    p.mac s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x98af7c0f
    li s1, 0xa8ad4231
    li s3, 0x245d98bc
    li s4, 0x94a7ab72
    p.msu s2, s0, s1
    pv.sdotsp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotsp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xcc5657cd
    li s1, 0x945294de
    li s3, 0x922ecc5e
    li s4, 0x4a53d5b9
    pv.dotusp.h s2, s0, s1
    pv.sdotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.h s2, s0, s1
    pv.dotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe63ecc1e
    li s1, 0xc388c161
    li s3, 0xc9b17c0b
    li s4, 0xa5aad838
    p.msu  s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8f17acdf
    li s1, 0xece88483
    li s3, 0xd33ac6cd
    li s4, 0x7e811b82
    p.msu s2, s0, s1
    p.mac  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x67c0a052
    li s1, 0x71cc98f
    li s3, 0x5fa2c6c8
    li s4, 0x855e21d6
    p.mulhhu s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe1b6f89b
    li s1, 0xe40bc130
    li s3, 0xa6827d7c
    li s4, 0xccdce3bc
    pv.dotusp.h s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.h s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf0db7c4d
    li s1, 0xf205e098
    li s3, 0x53413ebe
    li s4, 0x666e71de
    pv.dotup.h s2, s0, s1
    pv.sdotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc00059ef
    li s1, 0xae65b215
    li s3, 0x8c95683c
    li s4, 0x6630f90a
    p.msu s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe11dfcde
    li s1, 0x177c021c
    li s3, 0xc5f3b194
    li s4, 0xbf05a533
    p.msu s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf00d6e33
    li s1, 0xcb984278
    li s3, 0x6342e0e3
    li s4, 0x5b0a202d
    p.msu s2, s0, s1
    p.mac s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb0b073f0
    li s1, 0xa1013808
    li s3, 0xe5bd0e0
    li s4, 0x6fab6488
    p.msu  s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x586ae363
    li s1, 0xd0b73036
    li s3, 0x87c7243e
    li s4, 0x375bd32b
    p.mac  s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac  s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x9ccf8047
    li s1, 0xc91e105b
    li s3, 0x4c50355c
    li s4, 0x7501fb87
    pv.dotusp.b s2, s0, s1
    p.mac s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.b s2, s0, s1
    p.mac s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8f06482c
    li s1, 0x63942c63
    li s3, 0xdbd7cdd1
    li s4, 0x4aadc5e
    p.msu s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x533404d9
    li s1, 0xd98b6bfd
    li s3, 0x795aceca
    li s4, 0xcf9d1ff5
    p.mac  s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac  s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x299a026c
    li s1, 0xecc5b5fe
    li s3, 0xbcad6765
    li s4, 0x67ce8ffa
    p.mac s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2418c7f1
    li s1, 0xd70cba93
    li s3, 0xd1d8fbce
    li s4, 0xdd50e1ab
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x120c63f8
    li s1, 0xeb865d49
    li s3, 0x68ec7de7
    li s4, 0x6ea870d5
    p.mulu s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulu s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x90631fc
    li s1, 0x75c32ea4
    li s3, 0x34763ef3
    li s4, 0xb754386a
    pv.dotusp.h s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.h s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xaafea9db
    li s1, 0x6ca99bf3
    li s3, 0xc554e3fe
    li s4, 0xb4397b67
    p.mulhhs s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulhhs s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd578d4e8
    li s1, 0xb657cdff
    li s3, 0x40004000
    li s4, 0x5a1dbdb3
    p.mulhhs s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulhhs s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5a6a6cb1
    li s1, 0x7a440690
    li s3, 0xbedb7083
    li s4, 0xc3b9f88f
    p.mulu s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulu s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x2d353658
    li s1, 0xbd220348
    li s3, 0x5f6db841
    li s4, 0xe1dcfc47
    p.msu s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x264f5deb
    li s1, 0xffff61c8
    li s3, 0x2038945c
    li s4, 0x9e59d875
    pv.dotup.h s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd1f93419
    li s1, 0x2f48e844
    li s3, 0xcfc90129
    li s4, 0x10cda536
    pv.dotsp.h s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.h s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xe8fc4b18
    li s1, 0x97a47422
    li s3, 0x67f009b2
    li s4, 0x881be9be
    p.msu s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf470e474
    li s1, 0xcbc008a4
    li s3, 0x33036951
    li s4, 0x440412cb
    p.msu s2, s0, s1
    p.msu  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfa3f4a50
    li s1, 0xa5e94cc5
    li s3, 0x19e5b720
    li s4, 0xa258991d
    p.msu  s2, s0, s1
    p.mac  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x5630ec04
    li s1, 0xb8a31718
    li s3, 0x8e37244b
    li s4, 0x116a1854
    p.mulhhs s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulhhs s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1bcdb0c5
    li s1, 0xfd3febe0
    li s3, 0x4895da59
    li s4, 0xe602aa7c
    p.muls s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.muls s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8def3400
    li s1, 0x7e9fc1e7
    li s3, 0xa48f3c3b
    li s4, 0x73079010
    pv.dotup.b s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd5c6c7a
    li s1, 0x16e606c9
    li s3, 0xf8e487c6
    li s4, 0xeb7a6564
    p.muls s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.muls s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x86ae363d
    li s1, 0xb730364
    li s3, 0x7c7243e3
    li s4, 0x75bd32b2
    p.msu s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc3571b1e
    li s1, 0x85b981b2
    li s3, 0x3e3921f1
    li s4, 0xbade9959
    pv.dotup.b s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x61ab8d8f
    li s1, 0x42dcc0d9
    li s3, 0x1f1c90f8
    li s4, 0xdd6f4cac
    p.muls s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.muls s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8924a6ea
    li s1, 0x90bf1e25
    li s3, 0xb05535e6
    li s4, 0xc460ee72
    pv.dotusp.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc48257e3
    li s1, 0xc85f8f18
    li s3, 0x58cd5408
    li s4, 0xe0203e8a
    p.msu  s2, s0, s1
    p.mac  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xfc926142
    li s1, 0x8af772f3
    li s3, 0xfe7509a9
    li s4, 0x7edc8485
    pv.dotusp.b s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotusp.b s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xbbb6cb25
    li s1, 0xeae253ae
    li s3, 0xe7b7d899
    li s4, 0x3d875618
    p.msu  s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu  s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd4ffc378
    li s1, 0x65ce37f2
    li s3, 0x438ed9aa
    li s4, 0x5aa3457e
    p.msu  s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu  s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6a7fe1bc
    li s1, 0x32e71bf9
    li s3, 0xa1c76cd5
    li s4, 0x2d51a2bf
    pv.dotsp.b s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotsp.b s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x1e0dab1a
    li s1, 0x44e649ec
    li s3, 0x705b41c6
    li s4, 0x29641f96
    p.msu  s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu  s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xf06d58d
    li s1, 0x227324f6
    li s3, 0xb82da0e3
    li s4, 0x14b20fcb
    p.mac s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xea7cc2c
    li s1, 0x1868c5e
    li s3, 0xec43e597
    li s4, 0x4e39e997
    p.msu  s2, s0, s1
    pv.sdotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu  s2, s0, s1
    pv.dotusp.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x8e7740fc
    li s1, 0x907c580a
    li s3, 0x4674c72d
    li s4, 0x637c1ab9
    p.msu s2, s0, s1
    pv.sdotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu s2, s0, s1
    pv.dotup.b s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc73ba768
    li s1, 0x483e2c1f
    li s3, 0x233b471a
    li s4, 0x31b40070
    p.mulhhs s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x355cbb6a
    li s1, 0xda500413
    li s3, 0x10e40216
    li s4, 0xce5ff46e
    p.msu  s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu  s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x938afb5f
    li s1, 0xfd971c2c
    li s3, 0x382734ed
    li s4, 0xa34f1445
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xb0387655
    li s1, 0x5b9d240e
    li s3, 0xab110bd8
    li s4, 0x5708105
    p.msu s2, s0, s1
    p.mac  s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd81c3b4a
    li s1, 0x2dce920e
    li s3, 0x55ee9afb
    li s4, 0x232c1ce
    p.msu s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x7f23a830
    li s1, 0xbbccbaa4
    li s3, 0xe537009a
    li s4, 0x44ced550
    p.mac s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x36b572f2
    li s1, 0xcd594377
    li s3, 0x42ceb5ab
    li s4, 0xe60784da
    p.msu  s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.msu  s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xc93f0fc9
    li s1, 0xfb09dfcf
    li s3, 0xc8993799
    li s4, 0x9bb1960f
    p.mac s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mac s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6dbb210e
    li s1, 0x6d3bf1c2
    li s3, 0xd419ae2a
    li s4, 0x9b82575
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x36dd9087
    li s1, 0x369df8e1
    li s3, 0x6a0cd715
    li s4, 0x4dc12ba
    p.mulhhu s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulhhu s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x924a6ea9
    li s1, 0xbf1e255
    li s3, 0x5535e6c
    li s4, 0x460ee72f
    p.mulhhu s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulhhu s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x24929baa
    li s1, 0x42fc7895
    li s3, 0xc154d79b
    li s4, 0x1183b9cb
    pv.dotup.h s2, s0, s1
    pv.sdotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.h s2, s0, s1
    pv.dotup.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x12494dd5
    li s1, 0x217e3c4a
    li s3, 0x60aa6bcd
    li s4, 0x88c1dce5
    p.muls s2, s0, s1
    pv.sdotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.muls s2, s0, s1
    pv.dotusp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0xd7132aad
    li s1, 0xb60e28a9
    li s3, 0x4dd40b08
    li s4, 0x7f0cebe6
    pv.dotup.b s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    pv.sdotup.b s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x6b899556
    li s1, 0xdb071454
    li s3, 0xa6ea0584
    li s4, 0x3f8675f3
    p.mulhhs s2, s0, s1
    pv.sdotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    p.mulhhs s2, s0, s1
    pv.dotsp.h s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li s0, 0x242f47f9
    li s1, 0xdbea545d
    li s3, 0xcc964cf8
    li s4, 0xd8b96a52
    p.msu  s2, s0, s1
    p.msu s5, s3, s4
    //sw s2, 4(sp)
    //sw s5, 4(sp)
    li a0, 0x55555555 

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
