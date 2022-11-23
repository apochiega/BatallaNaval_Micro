	.file	"init.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.board_init,"ax",@progbits
.global	board_init
	.type	board_init, @function
board_init:
.LFB65:
	.file 1 "../src/ASF/mega/boards/atmega328p_xplained_mini/init.c"
	.loc 1 45 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB32:
.LBB33:
.LBB34:
	.file 2 "../src/ASF/common/services/ioport/mega/ioport.h"
	.loc 2 515 0
	in r25,0x5
.LVL1:
.LBE34:
.LBE33:
.LBE32:
.LBB35:
.LBB36:
.LBB37:
	.loc 2 522 0
	in r24,0x4
	ori r24,lo8(32)
	andi r24,lo8(127)
	out 0x4,r24
	.loc 2 524 0
	mov r24,r25
	ori r24,lo8(-96)
	out 0x5,r24
.LVL2:
	ret
.LBE37:
.LBE36:
.LBE35:
	.cfi_endproc
.LFE65:
	.size	board_init, .-board_init
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../src/ASF/common/services/ioport/ioport.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x27e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF2117
	.byte	0xc
	.long	.LASF2118
	.long	.LASF2119
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2089
	.uleb128 0x3
	.long	.LASF2091
	.byte	0x3
	.byte	0x7e
	.long	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2090
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF2092
	.byte	0x3
	.byte	0x80
	.long	0x58
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2093
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF2094
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2095
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2096
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2097
	.uleb128 0x3
	.long	.LASF2098
	.byte	0x3
	.byte	0x97
	.long	0x4d
	.uleb128 0x5
	.long	.LASF2120
	.byte	0x1
	.long	0x3f
	.byte	0x4
	.byte	0x4c
	.long	0xa3
	.uleb128 0x6
	.long	.LASF2099
	.byte	0
	.uleb128 0x6
	.long	.LASF2100
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF2101
	.byte	0x2
	.byte	0x5f
	.long	0x4d
	.uleb128 0x3
	.long	.LASF2102
	.byte	0x2
	.byte	0x61
	.long	0x34
	.uleb128 0x7
	.long	.LASF2121
	.byte	0x3
	.byte	0x2
	.byte	0x64
	.long	0xf0
	.uleb128 0x8
	.long	.LASF2103
	.byte	0x2
	.byte	0x65
	.long	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DIR"
	.byte	0x2
	.byte	0x66
	.long	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF2104
	.byte	0x2
	.byte	0x67
	.long	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x34
	.uleb128 0x3
	.long	.LASF2105
	.byte	0x2
	.byte	0x68
	.long	0xb9
	.uleb128 0x3
	.long	.LASF2106
	.byte	0x2
	.byte	0x6f
	.long	0x34
	.uleb128 0x3
	.long	.LASF2107
	.byte	0x2
	.byte	0x76
	.long	0x34
	.uleb128 0x3
	.long	.LASF2108
	.byte	0x2
	.byte	0x7e
	.long	0x4d
	.uleb128 0xb
	.long	.LASF2112
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.long	0x13e
	.byte	0x3
	.long	0x13e
	.uleb128 0xc
	.long	.LASF2109
	.byte	0x2
	.byte	0xa6
	.long	0x34
	.byte	0
	.uleb128 0xd
	.byte	0x2
	.long	0xf5
	.uleb128 0xe
	.long	.LASF2115
	.byte	0x2
	.word	0x1fc
	.byte	0x1
	.byte	0x3
	.long	0x177
	.uleb128 0xf
	.long	.LASF2109
	.byte	0x2
	.word	0x1fc
	.long	0x177
	.uleb128 0xf
	.long	.LASF2110
	.byte	0x2
	.word	0x1fd
	.long	0x100
	.uleb128 0xf
	.long	.LASF2111
	.byte	0x2
	.word	0x1fe
	.long	0x116
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.uleb128 0xb
	.long	.LASF2113
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.long	0x13e
	.byte	0x3
	.long	0x196
	.uleb128 0x11
	.string	"pin"
	.byte	0x2
	.byte	0xb6
	.long	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF2114
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.long	0xae
	.byte	0x3
	.long	0x1b3
	.uleb128 0x11
	.string	"pin"
	.byte	0x2
	.byte	0xc0
	.long	0xa3
	.byte	0
	.uleb128 0xe
	.long	.LASF2116
	.byte	0x2
	.word	0x219
	.byte	0x1
	.byte	0x3
	.long	0x1da
	.uleb128 0x12
	.string	"pin"
	.byte	0x2
	.word	0x219
	.long	0x10b
	.uleb128 0xf
	.long	.LASF2111
	.byte	0x2
	.word	0x21a
	.long	0x116
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF2122
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x14
	.long	0x1b3
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0x2f
	.long	0x23a
	.uleb128 0x15
	.long	0x1cd
	.long	.LLST0
	.uleb128 0x15
	.long	0x1c1
	.long	.LLST1
	.uleb128 0x16
	.long	0x144
	.long	.LBB33
	.long	.LBE33
	.byte	0x2
	.word	0x21c
	.uleb128 0x15
	.long	0x16a
	.long	.LLST0
	.uleb128 0x17
	.long	0x15e
	.uleb128 0x17
	.long	0x152
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x1b3
	.long	.LBB35
	.long	.LBE35
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.long	0x1cd
	.long	.LLST3
	.uleb128 0x15
	.long	0x1c1
	.long	.LLST4
	.uleb128 0x16
	.long	0x144
	.long	.LBB36
	.long	.LBE36
	.byte	0x2
	.word	0x21c
	.uleb128 0x15
	.long	0x16a
	.long	.LLST3
	.uleb128 0x17
	.long	0x15e
	.uleb128 0x17
	.long	0x152
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x2119
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x3d
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x3f
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB65
	.long	.LFE65
	.long	0
	.long	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.long	.LASF0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1
	.byte	0x5
	.uleb128 0x3
	.long	.LASF2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF3
	.byte	0x5
	.uleb128 0x5
	.long	.LASF4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF5
	.byte	0x5
	.uleb128 0x7
	.long	.LASF6
	.byte	0x5
	.uleb128 0x8
	.long	.LASF7
	.byte	0x5
	.uleb128 0x9
	.long	.LASF8
	.byte	0x5
	.uleb128 0xa
	.long	.LASF9
	.byte	0x5
	.uleb128 0xb
	.long	.LASF10
	.byte	0x5
	.uleb128 0xc
	.long	.LASF11
	.byte	0x5
	.uleb128 0xd
	.long	.LASF12
	.byte	0x5
	.uleb128 0xe
	.long	.LASF13
	.byte	0x5
	.uleb128 0xf
	.long	.LASF14
	.byte	0x5
	.uleb128 0x10
	.long	.LASF15
	.byte	0x5
	.uleb128 0x11
	.long	.LASF16
	.byte	0x5
	.uleb128 0x12
	.long	.LASF17
	.byte	0x5
	.uleb128 0x13
	.long	.LASF18
	.byte	0x5
	.uleb128 0x14
	.long	.LASF19
	.byte	0x5
	.uleb128 0x15
	.long	.LASF20
	.byte	0x5
	.uleb128 0x16
	.long	.LASF21
	.byte	0x5
	.uleb128 0x17
	.long	.LASF22
	.byte	0x5
	.uleb128 0x18
	.long	.LASF23
	.byte	0x5
	.uleb128 0x19
	.long	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x5
	.uleb128 0x20
	.long	.LASF31
	.byte	0x5
	.uleb128 0x21
	.long	.LASF32
	.byte	0x5
	.uleb128 0x22
	.long	.LASF33
	.byte	0x5
	.uleb128 0x23
	.long	.LASF34
	.byte	0x5
	.uleb128 0x24
	.long	.LASF35
	.byte	0x5
	.uleb128 0x25
	.long	.LASF36
	.byte	0x5
	.uleb128 0x26
	.long	.LASF37
	.byte	0x5
	.uleb128 0x27
	.long	.LASF38
	.byte	0x5
	.uleb128 0x28
	.long	.LASF39
	.byte	0x5
	.uleb128 0x29
	.long	.LASF40
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF41
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF42
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF43
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF44
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF45
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF46
	.byte	0x5
	.uleb128 0x30
	.long	.LASF47
	.byte	0x5
	.uleb128 0x31
	.long	.LASF48
	.byte	0x5
	.uleb128 0x32
	.long	.LASF49
	.byte	0x5
	.uleb128 0x33
	.long	.LASF50
	.byte	0x5
	.uleb128 0x34
	.long	.LASF51
	.byte	0x5
	.uleb128 0x35
	.long	.LASF52
	.byte	0x5
	.uleb128 0x36
	.long	.LASF53
	.byte	0x5
	.uleb128 0x37
	.long	.LASF54
	.byte	0x5
	.uleb128 0x38
	.long	.LASF55
	.byte	0x5
	.uleb128 0x39
	.long	.LASF56
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF57
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF59
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF60
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF61
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF62
	.byte	0x5
	.uleb128 0x40
	.long	.LASF63
	.byte	0x5
	.uleb128 0x41
	.long	.LASF64
	.byte	0x5
	.uleb128 0x42
	.long	.LASF65
	.byte	0x5
	.uleb128 0x43
	.long	.LASF66
	.byte	0x5
	.uleb128 0x44
	.long	.LASF67
	.byte	0x5
	.uleb128 0x45
	.long	.LASF68
	.byte	0x5
	.uleb128 0x46
	.long	.LASF69
	.byte	0x5
	.uleb128 0x47
	.long	.LASF70
	.byte	0x5
	.uleb128 0x48
	.long	.LASF71
	.byte	0x5
	.uleb128 0x49
	.long	.LASF72
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF73
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF74
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF75
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF76
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF77
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF78
	.byte	0x5
	.uleb128 0x50
	.long	.LASF79
	.byte	0x5
	.uleb128 0x51
	.long	.LASF80
	.byte	0x5
	.uleb128 0x52
	.long	.LASF81
	.byte	0x5
	.uleb128 0x53
	.long	.LASF82
	.byte	0x5
	.uleb128 0x54
	.long	.LASF83
	.byte	0x5
	.uleb128 0x55
	.long	.LASF84
	.byte	0x5
	.uleb128 0x56
	.long	.LASF85
	.byte	0x5
	.uleb128 0x57
	.long	.LASF86
	.byte	0x5
	.uleb128 0x58
	.long	.LASF87
	.byte	0x5
	.uleb128 0x59
	.long	.LASF88
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF89
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF90
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF91
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF92
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF93
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF94
	.byte	0x5
	.uleb128 0x60
	.long	.LASF95
	.byte	0x5
	.uleb128 0x61
	.long	.LASF96
	.byte	0x5
	.uleb128 0x62
	.long	.LASF97
	.byte	0x5
	.uleb128 0x63
	.long	.LASF98
	.byte	0x5
	.uleb128 0x64
	.long	.LASF99
	.byte	0x5
	.uleb128 0x65
	.long	.LASF100
	.byte	0x5
	.uleb128 0x66
	.long	.LASF101
	.byte	0x5
	.uleb128 0x67
	.long	.LASF102
	.byte	0x5
	.uleb128 0x68
	.long	.LASF103
	.byte	0x5
	.uleb128 0x69
	.long	.LASF104
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF105
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF106
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF107
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF108
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF109
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF110
	.byte	0x5
	.uleb128 0x70
	.long	.LASF111
	.byte	0x5
	.uleb128 0x71
	.long	.LASF112
	.byte	0x5
	.uleb128 0x72
	.long	.LASF113
	.byte	0x5
	.uleb128 0x73
	.long	.LASF114
	.byte	0x5
	.uleb128 0x74
	.long	.LASF115
	.byte	0x5
	.uleb128 0x75
	.long	.LASF116
	.byte	0x5
	.uleb128 0x76
	.long	.LASF117
	.byte	0x5
	.uleb128 0x77
	.long	.LASF118
	.byte	0x5
	.uleb128 0x78
	.long	.LASF119
	.byte	0x5
	.uleb128 0x79
	.long	.LASF120
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF121
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF122
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF123
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF124
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF125
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF126
	.byte	0x5
	.uleb128 0x80
	.long	.LASF127
	.byte	0x5
	.uleb128 0x81
	.long	.LASF128
	.byte	0x5
	.uleb128 0x82
	.long	.LASF129
	.byte	0x5
	.uleb128 0x83
	.long	.LASF130
	.byte	0x5
	.uleb128 0x84
	.long	.LASF131
	.byte	0x5
	.uleb128 0x85
	.long	.LASF132
	.byte	0x5
	.uleb128 0x86
	.long	.LASF133
	.byte	0x5
	.uleb128 0x87
	.long	.LASF134
	.byte	0x5
	.uleb128 0x88
	.long	.LASF135
	.byte	0x5
	.uleb128 0x89
	.long	.LASF136
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF137
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF138
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF139
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF140
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF141
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF142
	.byte	0x5
	.uleb128 0x90
	.long	.LASF143
	.byte	0x5
	.uleb128 0x91
	.long	.LASF144
	.byte	0x5
	.uleb128 0x92
	.long	.LASF145
	.byte	0x5
	.uleb128 0x93
	.long	.LASF146
	.byte	0x5
	.uleb128 0x94
	.long	.LASF147
	.byte	0x5
	.uleb128 0x95
	.long	.LASF148
	.byte	0x5
	.uleb128 0x96
	.long	.LASF149
	.byte	0x5
	.uleb128 0x97
	.long	.LASF150
	.byte	0x5
	.uleb128 0x98
	.long	.LASF151
	.byte	0x5
	.uleb128 0x99
	.long	.LASF152
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF153
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF154
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF155
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF156
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF157
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF158
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF159
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF160
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF161
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF162
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF163
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF164
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF165
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF166
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF167
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF168
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF169
	.byte	0x5
	.uleb128 0xab
	.long	.LASF170
	.byte	0x5
	.uleb128 0xac
	.long	.LASF171
	.byte	0x5
	.uleb128 0xad
	.long	.LASF172
	.byte	0x5
	.uleb128 0xae
	.long	.LASF173
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF174
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF175
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF176
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF177
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF178
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF179
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF180
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF181
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF182
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF183
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF184
	.byte	0x5
	.uleb128 0xba
	.long	.LASF185
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF186
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF187
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF188
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF189
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF190
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF191
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF192
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF193
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF194
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF195
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF196
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF197
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF198
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF199
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF200
	.byte	0x5
	.uleb128 0xca
	.long	.LASF201
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF202
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF203
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF204
	.byte	0x5
	.uleb128 0xce
	.long	.LASF205
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF206
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF207
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF208
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF209
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF210
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF211
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF212
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF213
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF214
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF215
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF216
	.byte	0x5
	.uleb128 0xda
	.long	.LASF217
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF218
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF219
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF220
	.byte	0x5
	.uleb128 0xde
	.long	.LASF221
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF222
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF223
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF224
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF225
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF226
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF227
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF228
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF229
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF230
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF231
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF232
	.byte	0x5
	.uleb128 0xea
	.long	.LASF233
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF234
	.byte	0x5
	.uleb128 0xec
	.long	.LASF235
	.byte	0x5
	.uleb128 0xed
	.long	.LASF236
	.byte	0x5
	.uleb128 0xee
	.long	.LASF237
	.byte	0x5
	.uleb128 0xef
	.long	.LASF238
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF239
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF240
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF241
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF242
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF243
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF244
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF245
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF246
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF247
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF248
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF249
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF250
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF251
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF252
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF253
	.byte	0x5
	.uleb128 0xff
	.long	.LASF254
	.byte	0x5
	.uleb128 0x100
	.long	.LASF255
	.byte	0x5
	.uleb128 0x101
	.long	.LASF256
	.byte	0x5
	.uleb128 0x102
	.long	.LASF257
	.byte	0x5
	.uleb128 0x103
	.long	.LASF258
	.byte	0x5
	.uleb128 0x104
	.long	.LASF259
	.byte	0x5
	.uleb128 0x105
	.long	.LASF260
	.byte	0x5
	.uleb128 0x106
	.long	.LASF261
	.byte	0x5
	.uleb128 0x107
	.long	.LASF262
	.byte	0x5
	.uleb128 0x108
	.long	.LASF263
	.byte	0x5
	.uleb128 0x109
	.long	.LASF264
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF265
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF266
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF267
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF268
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF269
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF270
	.byte	0x5
	.uleb128 0x110
	.long	.LASF271
	.byte	0x5
	.uleb128 0x111
	.long	.LASF272
	.byte	0x5
	.uleb128 0x112
	.long	.LASF273
	.byte	0x5
	.uleb128 0x113
	.long	.LASF274
	.byte	0x5
	.uleb128 0x114
	.long	.LASF275
	.byte	0x5
	.uleb128 0x115
	.long	.LASF276
	.byte	0x5
	.uleb128 0x116
	.long	.LASF277
	.byte	0x5
	.uleb128 0x117
	.long	.LASF278
	.byte	0x5
	.uleb128 0x118
	.long	.LASF279
	.byte	0x5
	.uleb128 0x119
	.long	.LASF280
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF281
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF282
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF283
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF284
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF285
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF286
	.byte	0x5
	.uleb128 0x120
	.long	.LASF287
	.byte	0x5
	.uleb128 0x121
	.long	.LASF288
	.byte	0x5
	.uleb128 0x122
	.long	.LASF289
	.byte	0x5
	.uleb128 0x123
	.long	.LASF290
	.byte	0x5
	.uleb128 0x124
	.long	.LASF291
	.byte	0x5
	.uleb128 0x125
	.long	.LASF292
	.byte	0x5
	.uleb128 0x126
	.long	.LASF293
	.byte	0x5
	.uleb128 0x127
	.long	.LASF294
	.byte	0x5
	.uleb128 0x128
	.long	.LASF295
	.byte	0x5
	.uleb128 0x129
	.long	.LASF296
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF297
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF298
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF299
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF300
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF301
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF302
	.byte	0x5
	.uleb128 0x130
	.long	.LASF303
	.byte	0x5
	.uleb128 0x131
	.long	.LASF304
	.byte	0x5
	.uleb128 0x132
	.long	.LASF305
	.byte	0x5
	.uleb128 0x133
	.long	.LASF306
	.byte	0x5
	.uleb128 0x134
	.long	.LASF307
	.byte	0x5
	.uleb128 0x135
	.long	.LASF308
	.byte	0x5
	.uleb128 0x136
	.long	.LASF309
	.byte	0x5
	.uleb128 0x137
	.long	.LASF310
	.byte	0x5
	.uleb128 0x138
	.long	.LASF311
	.byte	0x5
	.uleb128 0x139
	.long	.LASF312
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF313
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF314
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF315
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF316
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF317
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF318
	.byte	0x5
	.uleb128 0x140
	.long	.LASF319
	.byte	0x5
	.uleb128 0x141
	.long	.LASF320
	.byte	0x5
	.uleb128 0x142
	.long	.LASF321
	.byte	0x5
	.uleb128 0x143
	.long	.LASF322
	.byte	0x5
	.uleb128 0x144
	.long	.LASF323
	.byte	0x5
	.uleb128 0x145
	.long	.LASF324
	.byte	0x5
	.uleb128 0x146
	.long	.LASF325
	.byte	0x5
	.uleb128 0x147
	.long	.LASF326
	.byte	0x5
	.uleb128 0x148
	.long	.LASF327
	.byte	0x5
	.uleb128 0x149
	.long	.LASF328
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF329
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF330
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF331
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF332
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF333
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF334
	.byte	0x5
	.uleb128 0x150
	.long	.LASF335
	.byte	0x5
	.uleb128 0x151
	.long	.LASF336
	.byte	0x5
	.uleb128 0x152
	.long	.LASF337
	.byte	0x5
	.uleb128 0x153
	.long	.LASF338
	.byte	0x5
	.uleb128 0x154
	.long	.LASF339
	.byte	0x5
	.uleb128 0x155
	.long	.LASF340
	.byte	0x5
	.uleb128 0x156
	.long	.LASF341
	.byte	0x5
	.uleb128 0x157
	.long	.LASF342
	.byte	0x5
	.uleb128 0x158
	.long	.LASF343
	.byte	0x5
	.uleb128 0x159
	.long	.LASF344
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF345
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF346
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF347
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF348
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF349
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF350
	.byte	0x5
	.uleb128 0x160
	.long	.LASF351
	.byte	0x5
	.uleb128 0x161
	.long	.LASF352
	.byte	0x5
	.uleb128 0x162
	.long	.LASF353
	.byte	0x5
	.uleb128 0x163
	.long	.LASF354
	.byte	0x5
	.uleb128 0x164
	.long	.LASF355
	.byte	0x5
	.uleb128 0x165
	.long	.LASF356
	.byte	0x5
	.uleb128 0x166
	.long	.LASF357
	.byte	0x5
	.uleb128 0x167
	.long	.LASF358
	.byte	0x5
	.uleb128 0x168
	.long	.LASF359
	.byte	0x5
	.uleb128 0x169
	.long	.LASF360
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF361
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF362
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF363
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF364
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF365
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF366
	.byte	0x5
	.uleb128 0x170
	.long	.LASF367
	.byte	0x5
	.uleb128 0x171
	.long	.LASF368
	.byte	0x5
	.uleb128 0x172
	.long	.LASF369
	.byte	0x5
	.uleb128 0x173
	.long	.LASF370
	.byte	0x5
	.uleb128 0x174
	.long	.LASF371
	.byte	0x5
	.uleb128 0x175
	.long	.LASF372
	.byte	0x5
	.uleb128 0x176
	.long	.LASF373
	.byte	0x5
	.uleb128 0x177
	.long	.LASF374
	.byte	0x5
	.uleb128 0x178
	.long	.LASF375
	.byte	0x5
	.uleb128 0x179
	.long	.LASF376
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF377
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF378
	.byte	0x5
	.uleb128 0x17c
	.long	.LASF379
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF380
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF381
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF382
	.byte	0x5
	.uleb128 0x180
	.long	.LASF383
	.byte	0x5
	.uleb128 0x181
	.long	.LASF384
	.byte	0x5
	.uleb128 0x182
	.long	.LASF385
	.byte	0x5
	.uleb128 0x183
	.long	.LASF386
	.byte	0x5
	.uleb128 0x184
	.long	.LASF387
	.byte	0x5
	.uleb128 0x185
	.long	.LASF388
	.byte	0x5
	.uleb128 0x186
	.long	.LASF389
	.byte	0x5
	.uleb128 0x187
	.long	.LASF390
	.byte	0x5
	.uleb128 0x188
	.long	.LASF391
	.byte	0x5
	.uleb128 0x189
	.long	.LASF392
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF393
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF394
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF395
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF396
	.byte	0x5
	.uleb128 0x18e
	.long	.LASF397
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF398
	.byte	0x5
	.uleb128 0x190
	.long	.LASF399
	.byte	0x5
	.uleb128 0x191
	.long	.LASF400
	.byte	0x5
	.uleb128 0x192
	.long	.LASF401
	.byte	0x5
	.uleb128 0x193
	.long	.LASF402
	.byte	0x5
	.uleb128 0x194
	.long	.LASF403
	.byte	0x5
	.uleb128 0x195
	.long	.LASF404
	.byte	0x5
	.uleb128 0x196
	.long	.LASF405
	.byte	0x5
	.uleb128 0x197
	.long	.LASF406
	.byte	0x5
	.uleb128 0x198
	.long	.LASF407
	.byte	0x5
	.uleb128 0x199
	.long	.LASF408
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF409
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF410
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF411
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF412
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF413
	.byte	0x5
	.uleb128 0x19f
	.long	.LASF414
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF415
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF416
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF417
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF418
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF419
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF420
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF421
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF422
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF423
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF424
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF425
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF426
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF427
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF428
	.byte	0x5
	.uleb128 0x1ae
	.long	.LASF429
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF430
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF431
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF432
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF433
	.byte	0x5
	.uleb128 0x1
	.long	.LASF434
	.byte	0x5
	.uleb128 0x2
	.long	.LASF435
	.byte	0x5
	.uleb128 0x3
	.long	.LASF436
	.byte	0x5
	.uleb128 0x4
	.long	.LASF437
	.byte	0x5
	.uleb128 0x5
	.long	.LASF438
	.file 5 "../src/ASF/common/boards/board.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x29
	.long	.LASF439
	.file 6 "../src/ASF/mega/utils/compiler.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x25
	.long	.LASF440
	.file 7 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x61
	.long	.LASF441
	.file 8 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h"
	.byte	0x3
	.uleb128 0x63
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro1
	.file 9 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x23
	.long	.LASF444
	.file 10 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF510
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 11 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.7.374\\include/avr/iom328p.h"
	.byte	0x3
	.uleb128 0x110
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 12 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h"
	.byte	0x3
	.uleb128 0x273
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 13 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h"
	.byte	0x3
	.uleb128 0x275
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 14 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h"
	.byte	0x3
	.uleb128 0x277
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 15 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h"
	.byte	0x3
	.uleb128 0x27e
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 16 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h"
	.byte	0x3
	.uleb128 0x281
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x4
	.file 17 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdbool.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.file 18 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h"
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.file 19 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.file 20 "../src/ASF/common/utils/parts.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.file 21 "../src/ASF/common/utils/interrupt.h"
	.byte	0x3
	.uleb128 0x9e
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x25
	.long	.LASF1827
	.file 22 "../src/ASF/common/utils/interrupt/interrupt_avr8.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x25
	.long	.LASF1828
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x6
	.byte	0x4
	.file 23 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x4
	.file 24 "../src/ASF/mega/utils/progmem.h"
	.byte	0x3
	.uleb128 0x9f
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1850
	.file 25 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x59
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro24
	.file 26 "../src/ASF/mega/boards/atmega328p_xplained_mini/atmega328p_xplained_mini.h"
	.byte	0x3
	.uleb128 0x16b
	.uleb128 0x1a
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF2043
	.file 27 "../src/ASF/mega/boards/atmega328p_xplained_mini/led.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0x26
	.long	.LASF2044
	.file 28 "../src/ASF/common/services/gpio/gpio.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0x25
	.long	.LASF2045
	.file 29 "../src/ASF/common/services/gpio/mega_gpio/mega_gpio.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0x26
	.long	.LASF2046
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x26
	.long	.LASF2047
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro26
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro27
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x4
	.byte	0x4
	.file 30 "../src/config/conf_board.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x26
	.long	.LASF2088
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.36.473802ecbcb5d4d38de6c7efbfcd3c60,comdat
.Ldebug_macro1:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF442
	.byte	0x5
	.uleb128 0x79
	.long	.LASF443
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.41.052d062c327f27e210bb72c3d087afe5,comdat
.Ldebug_macro2:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.long	.LASF445
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF446
	.byte	0x5
	.uleb128 0x122
	.long	.LASF447
	.byte	0x5
	.uleb128 0x123
	.long	.LASF448
	.byte	0x5
	.uleb128 0x133
	.long	.LASF449
	.byte	0x5
	.uleb128 0x138
	.long	.LASF450
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF451
	.byte	0x5
	.uleb128 0x150
	.long	.LASF452
	.byte	0x5
	.uleb128 0x155
	.long	.LASF453
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF454
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF455
	.byte	0x5
	.uleb128 0x164
	.long	.LASF456
	.byte	0x5
	.uleb128 0x169
	.long	.LASF457
	.byte	0x5
	.uleb128 0x170
	.long	.LASF458
	.byte	0x5
	.uleb128 0x175
	.long	.LASF459
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF460
	.byte	0x5
	.uleb128 0x184
	.long	.LASF461
	.byte	0x5
	.uleb128 0x189
	.long	.LASF462
	.byte	0x5
	.uleb128 0x18e
	.long	.LASF463
	.byte	0x5
	.uleb128 0x193
	.long	.LASF464
	.byte	0x5
	.uleb128 0x198
	.long	.LASF465
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF466
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF467
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF468
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF469
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF470
	.byte	0x5
	.uleb128 0x1b6
	.long	.LASF471
	.byte	0x5
	.uleb128 0x1bb
	.long	.LASF472
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1cb
	.long	.LASF474
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF475
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF476
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF477
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF478
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF479
	.byte	0x5
	.uleb128 0x1e9
	.long	.LASF480
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF481
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF482
	.byte	0x5
	.uleb128 0x1f8
	.long	.LASF483
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF484
	.byte	0x5
	.uleb128 0x208
	.long	.LASF485
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF486
	.byte	0x5
	.uleb128 0x212
	.long	.LASF487
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF488
	.byte	0x5
	.uleb128 0x222
	.long	.LASF489
	.byte	0x5
	.uleb128 0x227
	.long	.LASF490
	.byte	0x5
	.uleb128 0x234
	.long	.LASF491
	.byte	0x5
	.uleb128 0x239
	.long	.LASF492
	.byte	0x5
	.uleb128 0x242
	.long	.LASF493
	.byte	0x5
	.uleb128 0x247
	.long	.LASF494
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF495
	.byte	0x5
	.uleb128 0x259
	.long	.LASF496
	.byte	0x5
	.uleb128 0x25a
	.long	.LASF497
	.byte	0x5
	.uleb128 0x25d
	.long	.LASF498
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF499
	.byte	0x5
	.uleb128 0x271
	.long	.LASF500
	.byte	0x5
	.uleb128 0x272
	.long	.LASF501
	.byte	0x5
	.uleb128 0x273
	.long	.LASF502
	.byte	0x5
	.uleb128 0x274
	.long	.LASF503
	.byte	0x5
	.uleb128 0x275
	.long	.LASF504
	.byte	0x5
	.uleb128 0x276
	.long	.LASF505
	.byte	0x5
	.uleb128 0x277
	.long	.LASF506
	.byte	0x5
	.uleb128 0x278
	.long	.LASF507
	.byte	0x5
	.uleb128 0x279
	.long	.LASF508
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF509
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.inttypes.h.96.afb9c4be73a069861f8689c997efc518,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x60
	.long	.LASF511
	.byte	0x5
	.uleb128 0x63
	.long	.LASF512
	.byte	0x5
	.uleb128 0x66
	.long	.LASF513
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF514
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF515
	.byte	0x5
	.uleb128 0x70
	.long	.LASF516
	.byte	0x5
	.uleb128 0x75
	.long	.LASF517
	.byte	0x5
	.uleb128 0x78
	.long	.LASF518
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF519
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF520
	.byte	0x5
	.uleb128 0x82
	.long	.LASF521
	.byte	0x5
	.uleb128 0x85
	.long	.LASF522
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF523
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF524
	.byte	0x5
	.uleb128 0x90
	.long	.LASF525
	.byte	0x5
	.uleb128 0x94
	.long	.LASF526
	.byte	0x5
	.uleb128 0x97
	.long	.LASF527
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF528
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF529
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF530
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF531
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF532
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF533
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF534
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF535
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF536
	.byte	0x5
	.uleb128 0xca
	.long	.LASF537
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF538
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF539
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF540
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF541
	.byte	0x5
	.uleb128 0xda
	.long	.LASF542
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF543
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF544
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF545
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF546
	.byte	0x5
	.uleb128 0xec
	.long	.LASF547
	.byte	0x5
	.uleb128 0xef
	.long	.LASF548
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF549
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF550
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF551
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF552
	.byte	0x5
	.uleb128 0x100
	.long	.LASF553
	.byte	0x5
	.uleb128 0x103
	.long	.LASF554
	.byte	0x5
	.uleb128 0x108
	.long	.LASF555
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF556
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF557
	.byte	0x5
	.uleb128 0x112
	.long	.LASF558
	.byte	0x5
	.uleb128 0x115
	.long	.LASF559
	.byte	0x5
	.uleb128 0x118
	.long	.LASF560
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF561
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF562
	.byte	0x5
	.uleb128 0x122
	.long	.LASF563
	.byte	0x5
	.uleb128 0x126
	.long	.LASF564
	.byte	0x5
	.uleb128 0x129
	.long	.LASF565
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF566
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF567
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF568
	.byte	0x5
	.uleb128 0x150
	.long	.LASF569
	.byte	0x5
	.uleb128 0x153
	.long	.LASF570
	.byte	0x5
	.uleb128 0x158
	.long	.LASF571
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF572
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF573
	.byte	0x5
	.uleb128 0x162
	.long	.LASF574
	.byte	0x5
	.uleb128 0x165
	.long	.LASF575
	.byte	0x5
	.uleb128 0x168
	.long	.LASF576
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF577
	.byte	0x5
	.uleb128 0x170
	.long	.LASF578
	.byte	0x5
	.uleb128 0x173
	.long	.LASF579
	.byte	0x5
	.uleb128 0x177
	.long	.LASF580
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF581
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF582
	.byte	0x5
	.uleb128 0x182
	.long	.LASF583
	.byte	0x5
	.uleb128 0x185
	.long	.LASF584
	.byte	0x5
	.uleb128 0x188
	.long	.LASF585
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF586
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF587
	.byte	0x5
	.uleb128 0x192
	.long	.LASF588
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF589
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF590
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF591
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF592
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF593
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF594
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF595
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF596
	.byte	0x5
	.uleb128 0x1c1
	.long	.LASF597
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF598
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF599
	.byte	0x5
	.uleb128 0x1cb
	.long	.LASF600
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF601
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF602
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF603
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF604
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF605
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF606
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF607
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF608
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF609
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF610
	.byte	0x5
	.uleb128 0x1f0
	.long	.LASF611
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF612
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF613
	.byte	0x5
	.uleb128 0x1fa
	.long	.LASF614
	.byte	0x5
	.uleb128 0x1fe
	.long	.LASF615
	.byte	0x5
	.uleb128 0x201
	.long	.LASF616
	.byte	0x5
	.uleb128 0x204
	.long	.LASF617
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF618
	.byte	0x5
	.uleb128 0x220
	.long	.LASF619
	.byte	0x5
	.uleb128 0x223
	.long	.LASF620
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.128.38ceebe2fb099c106e85a566519e0f1a,comdat
.Ldebug_macro4:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x80
	.long	.LASF621
	.byte	0x5
	.uleb128 0x81
	.long	.LASF622
	.byte	0x5
	.uleb128 0x82
	.long	.LASF623
	.byte	0x5
	.uleb128 0xac
	.long	.LASF624
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF625
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF626
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF627
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF628
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF629
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF630
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF631
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF632
	.byte	0x5
	.uleb128 0xba
	.long	.LASF633
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF634
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF635
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF636
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF637
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF638
	.byte	0x5
	.uleb128 0xea
	.long	.LASF639
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF640
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF641
	.byte	0x5
	.uleb128 0x107
	.long	.LASF642
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.iom328p.h.44.29c929f46483155923fc58520c74ebf7,comdat
.Ldebug_macro5:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF643
	.byte	0x5
	.uleb128 0x33
	.long	.LASF644
	.byte	0x5
	.uleb128 0x37
	.long	.LASF645
	.byte	0x5
	.uleb128 0x38
	.long	.LASF646
	.byte	0x5
	.uleb128 0x39
	.long	.LASF647
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF648
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF649
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF650
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF651
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF652
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF653
	.byte	0x5
	.uleb128 0x41
	.long	.LASF654
	.byte	0x5
	.uleb128 0x42
	.long	.LASF655
	.byte	0x5
	.uleb128 0x43
	.long	.LASF656
	.byte	0x5
	.uleb128 0x44
	.long	.LASF657
	.byte	0x5
	.uleb128 0x45
	.long	.LASF658
	.byte	0x5
	.uleb128 0x46
	.long	.LASF659
	.byte	0x5
	.uleb128 0x47
	.long	.LASF660
	.byte	0x5
	.uleb128 0x48
	.long	.LASF661
	.byte	0x5
	.uleb128 0x49
	.long	.LASF662
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF663
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF664
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF665
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF666
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF667
	.byte	0x5
	.uleb128 0x50
	.long	.LASF668
	.byte	0x5
	.uleb128 0x51
	.long	.LASF669
	.byte	0x5
	.uleb128 0x52
	.long	.LASF670
	.byte	0x5
	.uleb128 0x53
	.long	.LASF671
	.byte	0x5
	.uleb128 0x55
	.long	.LASF672
	.byte	0x5
	.uleb128 0x56
	.long	.LASF673
	.byte	0x5
	.uleb128 0x57
	.long	.LASF674
	.byte	0x5
	.uleb128 0x58
	.long	.LASF675
	.byte	0x5
	.uleb128 0x59
	.long	.LASF676
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF677
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF678
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF679
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF680
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF681
	.byte	0x5
	.uleb128 0x60
	.long	.LASF682
	.byte	0x5
	.uleb128 0x61
	.long	.LASF683
	.byte	0x5
	.uleb128 0x62
	.long	.LASF684
	.byte	0x5
	.uleb128 0x63
	.long	.LASF685
	.byte	0x5
	.uleb128 0x64
	.long	.LASF686
	.byte	0x5
	.uleb128 0x65
	.long	.LASF687
	.byte	0x5
	.uleb128 0x67
	.long	.LASF688
	.byte	0x5
	.uleb128 0x68
	.long	.LASF689
	.byte	0x5
	.uleb128 0x69
	.long	.LASF690
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF691
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF692
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF693
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF694
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF695
	.byte	0x5
	.uleb128 0x70
	.long	.LASF696
	.byte	0x5
	.uleb128 0x71
	.long	.LASF697
	.byte	0x5
	.uleb128 0x72
	.long	.LASF698
	.byte	0x5
	.uleb128 0x73
	.long	.LASF699
	.byte	0x5
	.uleb128 0x74
	.long	.LASF700
	.byte	0x5
	.uleb128 0x75
	.long	.LASF701
	.byte	0x5
	.uleb128 0x76
	.long	.LASF702
	.byte	0x5
	.uleb128 0x77
	.long	.LASF703
	.byte	0x5
	.uleb128 0x78
	.long	.LASF704
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF705
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF706
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF707
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF708
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF709
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF710
	.byte	0x5
	.uleb128 0x80
	.long	.LASF711
	.byte	0x5
	.uleb128 0x81
	.long	.LASF712
	.byte	0x5
	.uleb128 0x82
	.long	.LASF713
	.byte	0x5
	.uleb128 0x84
	.long	.LASF714
	.byte	0x5
	.uleb128 0x85
	.long	.LASF715
	.byte	0x5
	.uleb128 0x86
	.long	.LASF716
	.byte	0x5
	.uleb128 0x87
	.long	.LASF717
	.byte	0x5
	.uleb128 0x88
	.long	.LASF718
	.byte	0x5
	.uleb128 0x89
	.long	.LASF719
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF720
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF721
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF722
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF723
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF724
	.byte	0x5
	.uleb128 0x90
	.long	.LASF725
	.byte	0x5
	.uleb128 0x91
	.long	.LASF726
	.byte	0x5
	.uleb128 0x93
	.long	.LASF727
	.byte	0x5
	.uleb128 0x94
	.long	.LASF728
	.byte	0x5
	.uleb128 0x95
	.long	.LASF729
	.byte	0x5
	.uleb128 0x96
	.long	.LASF730
	.byte	0x5
	.uleb128 0x97
	.long	.LASF731
	.byte	0x5
	.uleb128 0x99
	.long	.LASF732
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF733
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF734
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF735
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF736
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF737
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF738
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF739
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF740
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF741
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF742
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF743
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF744
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF745
	.byte	0x5
	.uleb128 0xab
	.long	.LASF746
	.byte	0x5
	.uleb128 0xac
	.long	.LASF747
	.byte	0x5
	.uleb128 0xad
	.long	.LASF748
	.byte	0x5
	.uleb128 0xae
	.long	.LASF749
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF750
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF751
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF752
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF753
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF754
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF755
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF756
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF757
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF758
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF759
	.byte	0x5
	.uleb128 0xba
	.long	.LASF760
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF761
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF762
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF763
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF764
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF765
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF766
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF767
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF768
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF769
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF770
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF771
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF772
	.byte	0x5
	.uleb128 0xca
	.long	.LASF773
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF774
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF775
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF776
	.byte	0x5
	.uleb128 0xce
	.long	.LASF777
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF778
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF779
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF780
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF781
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF782
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF783
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF784
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF785
	.byte	0x5
	.uleb128 0xda
	.long	.LASF786
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF787
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF788
	.byte	0x5
	.uleb128 0xde
	.long	.LASF789
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF790
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF791
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF792
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF793
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF794
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF795
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF796
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF797
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF798
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF799
	.byte	0x5
	.uleb128 0xea
	.long	.LASF800
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF801
	.byte	0x5
	.uleb128 0xec
	.long	.LASF802
	.byte	0x5
	.uleb128 0xee
	.long	.LASF803
	.byte	0x5
	.uleb128 0xef
	.long	.LASF804
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF805
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF806
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF807
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF808
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF809
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF810
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF811
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF812
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF813
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF814
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF815
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF816
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF817
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF818
	.byte	0x5
	.uleb128 0xff
	.long	.LASF819
	.byte	0x5
	.uleb128 0x100
	.long	.LASF820
	.byte	0x5
	.uleb128 0x102
	.long	.LASF821
	.byte	0x5
	.uleb128 0x103
	.long	.LASF822
	.byte	0x5
	.uleb128 0x104
	.long	.LASF823
	.byte	0x5
	.uleb128 0x105
	.long	.LASF824
	.byte	0x5
	.uleb128 0x106
	.long	.LASF825
	.byte	0x5
	.uleb128 0x107
	.long	.LASF826
	.byte	0x5
	.uleb128 0x108
	.long	.LASF827
	.byte	0x5
	.uleb128 0x109
	.long	.LASF828
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF829
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF830
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF831
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF832
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF833
	.byte	0x5
	.uleb128 0x110
	.long	.LASF834
	.byte	0x5
	.uleb128 0x111
	.long	.LASF835
	.byte	0x5
	.uleb128 0x112
	.long	.LASF836
	.byte	0x5
	.uleb128 0x113
	.long	.LASF837
	.byte	0x5
	.uleb128 0x114
	.long	.LASF838
	.byte	0x5
	.uleb128 0x116
	.long	.LASF839
	.byte	0x5
	.uleb128 0x117
	.long	.LASF840
	.byte	0x5
	.uleb128 0x118
	.long	.LASF841
	.byte	0x5
	.uleb128 0x119
	.long	.LASF842
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF843
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF844
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF845
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF846
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF847
	.byte	0x5
	.uleb128 0x120
	.long	.LASF848
	.byte	0x5
	.uleb128 0x121
	.long	.LASF849
	.byte	0x5
	.uleb128 0x122
	.long	.LASF850
	.byte	0x5
	.uleb128 0x123
	.long	.LASF851
	.byte	0x5
	.uleb128 0x124
	.long	.LASF852
	.byte	0x5
	.uleb128 0x125
	.long	.LASF853
	.byte	0x5
	.uleb128 0x126
	.long	.LASF854
	.byte	0x5
	.uleb128 0x127
	.long	.LASF855
	.byte	0x5
	.uleb128 0x128
	.long	.LASF856
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF857
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF858
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF859
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF860
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF861
	.byte	0x5
	.uleb128 0x130
	.long	.LASF862
	.byte	0x5
	.uleb128 0x131
	.long	.LASF863
	.byte	0x5
	.uleb128 0x132
	.long	.LASF864
	.byte	0x5
	.uleb128 0x133
	.long	.LASF865
	.byte	0x5
	.uleb128 0x134
	.long	.LASF866
	.byte	0x5
	.uleb128 0x135
	.long	.LASF867
	.byte	0x5
	.uleb128 0x136
	.long	.LASF868
	.byte	0x5
	.uleb128 0x137
	.long	.LASF869
	.byte	0x5
	.uleb128 0x139
	.long	.LASF870
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF871
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF872
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF873
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF874
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF875
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF876
	.byte	0x5
	.uleb128 0x140
	.long	.LASF877
	.byte	0x5
	.uleb128 0x141
	.long	.LASF878
	.byte	0x5
	.uleb128 0x143
	.long	.LASF879
	.byte	0x5
	.uleb128 0x144
	.long	.LASF880
	.byte	0x5
	.uleb128 0x145
	.long	.LASF881
	.byte	0x5
	.uleb128 0x146
	.long	.LASF882
	.byte	0x5
	.uleb128 0x147
	.long	.LASF883
	.byte	0x5
	.uleb128 0x149
	.long	.LASF884
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF885
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF886
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF887
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF888
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF889
	.byte	0x5
	.uleb128 0x150
	.long	.LASF890
	.byte	0x5
	.uleb128 0x151
	.long	.LASF891
	.byte	0x5
	.uleb128 0x152
	.long	.LASF892
	.byte	0x5
	.uleb128 0x153
	.long	.LASF893
	.byte	0x5
	.uleb128 0x154
	.long	.LASF894
	.byte	0x5
	.uleb128 0x156
	.long	.LASF895
	.byte	0x5
	.uleb128 0x157
	.long	.LASF896
	.byte	0x5
	.uleb128 0x159
	.long	.LASF897
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF898
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF899
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF900
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF901
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF902
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF903
	.byte	0x5
	.uleb128 0x160
	.long	.LASF904
	.byte	0x5
	.uleb128 0x162
	.long	.LASF905
	.byte	0x5
	.uleb128 0x163
	.long	.LASF906
	.byte	0x5
	.uleb128 0x164
	.long	.LASF907
	.byte	0x5
	.uleb128 0x165
	.long	.LASF908
	.byte	0x5
	.uleb128 0x166
	.long	.LASF909
	.byte	0x5
	.uleb128 0x167
	.long	.LASF910
	.byte	0x5
	.uleb128 0x168
	.long	.LASF911
	.byte	0x5
	.uleb128 0x169
	.long	.LASF912
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF913
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF914
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF915
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF916
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF917
	.byte	0x5
	.uleb128 0x170
	.long	.LASF918
	.byte	0x5
	.uleb128 0x171
	.long	.LASF919
	.byte	0x5
	.uleb128 0x173
	.long	.LASF920
	.byte	0x5
	.uleb128 0x174
	.long	.LASF921
	.byte	0x5
	.uleb128 0x175
	.long	.LASF922
	.byte	0x5
	.uleb128 0x176
	.long	.LASF923
	.byte	0x5
	.uleb128 0x177
	.long	.LASF924
	.byte	0x5
	.uleb128 0x178
	.long	.LASF925
	.byte	0x5
	.uleb128 0x179
	.long	.LASF926
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF927
	.byte	0x5
	.uleb128 0x17c
	.long	.LASF928
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF929
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF930
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF931
	.byte	0x5
	.uleb128 0x180
	.long	.LASF932
	.byte	0x5
	.uleb128 0x181
	.long	.LASF933
	.byte	0x5
	.uleb128 0x182
	.long	.LASF934
	.byte	0x5
	.uleb128 0x183
	.long	.LASF935
	.byte	0x5
	.uleb128 0x185
	.long	.LASF936
	.byte	0x5
	.uleb128 0x186
	.long	.LASF937
	.byte	0x5
	.uleb128 0x187
	.long	.LASF938
	.byte	0x5
	.uleb128 0x188
	.long	.LASF939
	.byte	0x5
	.uleb128 0x189
	.long	.LASF940
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF941
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF942
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF943
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF944
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF945
	.byte	0x5
	.uleb128 0x190
	.long	.LASF946
	.byte	0x5
	.uleb128 0x191
	.long	.LASF947
	.byte	0x5
	.uleb128 0x192
	.long	.LASF948
	.byte	0x5
	.uleb128 0x194
	.long	.LASF949
	.byte	0x5
	.uleb128 0x195
	.long	.LASF950
	.byte	0x5
	.uleb128 0x196
	.long	.LASF951
	.byte	0x5
	.uleb128 0x197
	.long	.LASF952
	.byte	0x5
	.uleb128 0x198
	.long	.LASF953
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF954
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF955
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF956
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF957
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF958
	.byte	0x5
	.uleb128 0x19f
	.long	.LASF959
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF960
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF961
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF962
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF963
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF964
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF965
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF966
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF967
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF968
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF969
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF970
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF971
	.byte	0x5
	.uleb128 0x1ae
	.long	.LASF972
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF973
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF974
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF975
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF976
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF977
	.byte	0x5
	.uleb128 0x1b4
	.long	.LASF978
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF979
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF980
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF981
	.byte	0x5
	.uleb128 0x1b9
	.long	.LASF982
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF983
	.byte	0x5
	.uleb128 0x1bc
	.long	.LASF984
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF985
	.byte	0x5
	.uleb128 0x1be
	.long	.LASF986
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF987
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF988
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF989
	.byte	0x5
	.uleb128 0x1c3
	.long	.LASF990
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF991
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF992
	.byte	0x5
	.uleb128 0x1c8
	.long	.LASF993
	.byte	0x5
	.uleb128 0x1ca
	.long	.LASF994
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF995
	.byte	0x5
	.uleb128 0x1cd
	.long	.LASF996
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF997
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF998
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF999
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF1000
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF1001
	.byte	0x5
	.uleb128 0x1d3
	.long	.LASF1002
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF1003
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF1004
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF1005
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF1006
	.byte	0x5
	.uleb128 0x1d9
	.long	.LASF1007
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF1008
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF1009
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1010
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF1011
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1012
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1013
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF1014
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF1015
	.byte	0x5
	.uleb128 0x1e3
	.long	.LASF1016
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF1017
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF1018
	.byte	0x5
	.uleb128 0x1e6
	.long	.LASF1019
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF1020
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF1021
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF1022
	.byte	0x5
	.uleb128 0x1eb
	.long	.LASF1023
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF1024
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF1025
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF1026
	.byte	0x5
	.uleb128 0x1f0
	.long	.LASF1027
	.byte	0x5
	.uleb128 0x1f1
	.long	.LASF1028
	.byte	0x5
	.uleb128 0x1f2
	.long	.LASF1029
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF1030
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF1031
	.byte	0x5
	.uleb128 0x1f5
	.long	.LASF1032
	.byte	0x5
	.uleb128 0x1f6
	.long	.LASF1033
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF1034
	.byte	0x5
	.uleb128 0x1f9
	.long	.LASF1035
	.byte	0x5
	.uleb128 0x1fa
	.long	.LASF1036
	.byte	0x5
	.uleb128 0x1fb
	.long	.LASF1037
	.byte	0x5
	.uleb128 0x1fc
	.long	.LASF1038
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF1039
	.byte	0x5
	.uleb128 0x1fe
	.long	.LASF1040
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF1041
	.byte	0x5
	.uleb128 0x201
	.long	.LASF1042
	.byte	0x5
	.uleb128 0x202
	.long	.LASF1043
	.byte	0x5
	.uleb128 0x203
	.long	.LASF1044
	.byte	0x5
	.uleb128 0x205
	.long	.LASF1045
	.byte	0x5
	.uleb128 0x206
	.long	.LASF1046
	.byte	0x5
	.uleb128 0x207
	.long	.LASF1047
	.byte	0x5
	.uleb128 0x208
	.long	.LASF1048
	.byte	0x5
	.uleb128 0x209
	.long	.LASF1049
	.byte	0x5
	.uleb128 0x20a
	.long	.LASF1050
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF1051
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF1052
	.byte	0x5
	.uleb128 0x20e
	.long	.LASF1053
	.byte	0x5
	.uleb128 0x20f
	.long	.LASF1054
	.byte	0x5
	.uleb128 0x210
	.long	.LASF1055
	.byte	0x5
	.uleb128 0x211
	.long	.LASF1056
	.byte	0x5
	.uleb128 0x212
	.long	.LASF1057
	.byte	0x5
	.uleb128 0x213
	.long	.LASF1058
	.byte	0x5
	.uleb128 0x214
	.long	.LASF1059
	.byte	0x5
	.uleb128 0x216
	.long	.LASF1060
	.byte	0x5
	.uleb128 0x217
	.long	.LASF1061
	.byte	0x5
	.uleb128 0x218
	.long	.LASF1062
	.byte	0x5
	.uleb128 0x21a
	.long	.LASF1063
	.byte	0x5
	.uleb128 0x21c
	.long	.LASF1064
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF1065
	.byte	0x5
	.uleb128 0x21e
	.long	.LASF1066
	.byte	0x5
	.uleb128 0x21f
	.long	.LASF1067
	.byte	0x5
	.uleb128 0x220
	.long	.LASF1068
	.byte	0x5
	.uleb128 0x221
	.long	.LASF1069
	.byte	0x5
	.uleb128 0x222
	.long	.LASF1070
	.byte	0x5
	.uleb128 0x223
	.long	.LASF1071
	.byte	0x5
	.uleb128 0x224
	.long	.LASF1072
	.byte	0x5
	.uleb128 0x226
	.long	.LASF1073
	.byte	0x5
	.uleb128 0x227
	.long	.LASF1074
	.byte	0x5
	.uleb128 0x228
	.long	.LASF1075
	.byte	0x5
	.uleb128 0x229
	.long	.LASF1076
	.byte	0x5
	.uleb128 0x22a
	.long	.LASF1077
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF1078
	.byte	0x5
	.uleb128 0x22c
	.long	.LASF1079
	.byte	0x5
	.uleb128 0x22d
	.long	.LASF1080
	.byte	0x5
	.uleb128 0x22e
	.long	.LASF1081
	.byte	0x5
	.uleb128 0x230
	.long	.LASF1082
	.byte	0x5
	.uleb128 0x232
	.long	.LASF1083
	.byte	0x5
	.uleb128 0x233
	.long	.LASF1084
	.byte	0x5
	.uleb128 0x234
	.long	.LASF1085
	.byte	0x5
	.uleb128 0x235
	.long	.LASF1086
	.byte	0x5
	.uleb128 0x236
	.long	.LASF1087
	.byte	0x5
	.uleb128 0x237
	.long	.LASF1088
	.byte	0x5
	.uleb128 0x238
	.long	.LASF1089
	.byte	0x5
	.uleb128 0x239
	.long	.LASF1090
	.byte	0x5
	.uleb128 0x23a
	.long	.LASF1091
	.byte	0x5
	.uleb128 0x23c
	.long	.LASF1092
	.byte	0x5
	.uleb128 0x23d
	.long	.LASF1093
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF1094
	.byte	0x5
	.uleb128 0x23f
	.long	.LASF1095
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1096
	.byte	0x5
	.uleb128 0x241
	.long	.LASF1097
	.byte	0x5
	.uleb128 0x242
	.long	.LASF1098
	.byte	0x5
	.uleb128 0x243
	.long	.LASF1099
	.byte	0x5
	.uleb128 0x244
	.long	.LASF1100
	.byte	0x5
	.uleb128 0x246
	.long	.LASF1101
	.byte	0x5
	.uleb128 0x248
	.long	.LASF1102
	.byte	0x5
	.uleb128 0x249
	.long	.LASF1103
	.byte	0x5
	.uleb128 0x24a
	.long	.LASF1104
	.byte	0x5
	.uleb128 0x24b
	.long	.LASF1105
	.byte	0x5
	.uleb128 0x24c
	.long	.LASF1106
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF1107
	.byte	0x5
	.uleb128 0x24e
	.long	.LASF1108
	.byte	0x5
	.uleb128 0x24f
	.long	.LASF1109
	.byte	0x5
	.uleb128 0x250
	.long	.LASF1110
	.byte	0x5
	.uleb128 0x252
	.long	.LASF1111
	.byte	0x5
	.uleb128 0x253
	.long	.LASF1112
	.byte	0x5
	.uleb128 0x254
	.long	.LASF1113
	.byte	0x5
	.uleb128 0x255
	.long	.LASF1114
	.byte	0x5
	.uleb128 0x256
	.long	.LASF1115
	.byte	0x5
	.uleb128 0x257
	.long	.LASF1116
	.byte	0x5
	.uleb128 0x258
	.long	.LASF1117
	.byte	0x5
	.uleb128 0x259
	.long	.LASF1118
	.byte	0x5
	.uleb128 0x25a
	.long	.LASF1119
	.byte	0x5
	.uleb128 0x25c
	.long	.LASF1120
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF1121
	.byte	0x5
	.uleb128 0x25f
	.long	.LASF1122
	.byte	0x5
	.uleb128 0x260
	.long	.LASF1123
	.byte	0x5
	.uleb128 0x261
	.long	.LASF1124
	.byte	0x5
	.uleb128 0x262
	.long	.LASF1125
	.byte	0x5
	.uleb128 0x263
	.long	.LASF1126
	.byte	0x5
	.uleb128 0x264
	.long	.LASF1127
	.byte	0x5
	.uleb128 0x265
	.long	.LASF1128
	.byte	0x5
	.uleb128 0x266
	.long	.LASF1129
	.byte	0x5
	.uleb128 0x268
	.long	.LASF1130
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1131
	.byte	0x5
	.uleb128 0x26a
	.long	.LASF1132
	.byte	0x5
	.uleb128 0x26b
	.long	.LASF1133
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1134
	.byte	0x5
	.uleb128 0x26d
	.long	.LASF1135
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF1136
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1137
	.byte	0x5
	.uleb128 0x270
	.long	.LASF1138
	.byte	0x5
	.uleb128 0x272
	.long	.LASF1139
	.byte	0x5
	.uleb128 0x273
	.long	.LASF1140
	.byte	0x5
	.uleb128 0x274
	.long	.LASF1141
	.byte	0x5
	.uleb128 0x275
	.long	.LASF1142
	.byte	0x5
	.uleb128 0x276
	.long	.LASF1143
	.byte	0x5
	.uleb128 0x277
	.long	.LASF1144
	.byte	0x5
	.uleb128 0x278
	.long	.LASF1145
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF1146
	.byte	0x5
	.uleb128 0x27b
	.long	.LASF1147
	.byte	0x5
	.uleb128 0x27c
	.long	.LASF1148
	.byte	0x5
	.uleb128 0x27d
	.long	.LASF1149
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF1150
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF1151
	.byte	0x5
	.uleb128 0x280
	.long	.LASF1152
	.byte	0x5
	.uleb128 0x282
	.long	.LASF1153
	.byte	0x5
	.uleb128 0x283
	.long	.LASF1154
	.byte	0x5
	.uleb128 0x284
	.long	.LASF1155
	.byte	0x5
	.uleb128 0x285
	.long	.LASF1156
	.byte	0x5
	.uleb128 0x286
	.long	.LASF1157
	.byte	0x5
	.uleb128 0x287
	.long	.LASF1158
	.byte	0x5
	.uleb128 0x288
	.long	.LASF1159
	.byte	0x5
	.uleb128 0x289
	.long	.LASF1160
	.byte	0x5
	.uleb128 0x28a
	.long	.LASF1161
	.byte	0x5
	.uleb128 0x28c
	.long	.LASF1162
	.byte	0x5
	.uleb128 0x28d
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x28f
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x290
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x291
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x292
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x293
	.long	.LASF1169
	.byte	0x5
	.uleb128 0x294
	.long	.LASF1170
	.byte	0x5
	.uleb128 0x296
	.long	.LASF1171
	.byte	0x5
	.uleb128 0x297
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x298
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x299
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x29a
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x29b
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x29c
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x29d
	.long	.LASF1169
	.byte	0x5
	.uleb128 0x29e
	.long	.LASF1170
	.byte	0x5
	.uleb128 0x2a0
	.long	.LASF1172
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1173
	.byte	0x5
	.uleb128 0x2a2
	.long	.LASF1174
	.byte	0x5
	.uleb128 0x2a3
	.long	.LASF1175
	.byte	0x5
	.uleb128 0x2a4
	.long	.LASF1176
	.byte	0x5
	.uleb128 0x2a5
	.long	.LASF1177
	.byte	0x5
	.uleb128 0x2a6
	.long	.LASF1178
	.byte	0x5
	.uleb128 0x2a7
	.long	.LASF1179
	.byte	0x5
	.uleb128 0x2a9
	.long	.LASF1180
	.byte	0x5
	.uleb128 0x2aa
	.long	.LASF1181
	.byte	0x5
	.uleb128 0x2ab
	.long	.LASF1182
	.byte	0x5
	.uleb128 0x2ac
	.long	.LASF1183
	.byte	0x5
	.uleb128 0x2ad
	.long	.LASF1184
	.byte	0x5
	.uleb128 0x2ae
	.long	.LASF1185
	.byte	0x5
	.uleb128 0x2af
	.long	.LASF1186
	.byte	0x5
	.uleb128 0x2b0
	.long	.LASF1187
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF1188
	.byte	0x5
	.uleb128 0x2b3
	.long	.LASF1189
	.byte	0x5
	.uleb128 0x2b4
	.long	.LASF1190
	.byte	0x5
	.uleb128 0x2b5
	.long	.LASF1191
	.byte	0x5
	.uleb128 0x2b6
	.long	.LASF1192
	.byte	0x5
	.uleb128 0x2b7
	.long	.LASF1193
	.byte	0x5
	.uleb128 0x2b8
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x2b9
	.long	.LASF1195
	.byte	0x5
	.uleb128 0x2ba
	.long	.LASF1196
	.byte	0x5
	.uleb128 0x2bc
	.long	.LASF1197
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF1198
	.byte	0x5
	.uleb128 0x2be
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x2bf
	.long	.LASF1200
	.byte	0x5
	.uleb128 0x2c0
	.long	.LASF1201
	.byte	0x5
	.uleb128 0x2c1
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x2c2
	.long	.LASF1203
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x2c4
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x2c6
	.long	.LASF1206
	.byte	0x5
	.uleb128 0x2c7
	.long	.LASF1207
	.byte	0x5
	.uleb128 0x2c8
	.long	.LASF1208
	.byte	0x5
	.uleb128 0x2c9
	.long	.LASF1209
	.byte	0x5
	.uleb128 0x2ca
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x2cb
	.long	.LASF1211
	.byte	0x5
	.uleb128 0x2cc
	.long	.LASF1212
	.byte	0x5
	.uleb128 0x2cd
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x2ce
	.long	.LASF1214
	.byte	0x5
	.uleb128 0x2d0
	.long	.LASF1215
	.byte	0x5
	.uleb128 0x2d1
	.long	.LASF1216
	.byte	0x5
	.uleb128 0x2d2
	.long	.LASF1217
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF1218
	.byte	0x5
	.uleb128 0x2d4
	.long	.LASF1219
	.byte	0x5
	.uleb128 0x2d5
	.long	.LASF1220
	.byte	0x5
	.uleb128 0x2d6
	.long	.LASF1221
	.byte	0x5
	.uleb128 0x2d7
	.long	.LASF1222
	.byte	0x5
	.uleb128 0x2d9
	.long	.LASF1223
	.byte	0x5
	.uleb128 0x2da
	.long	.LASF1224
	.byte	0x5
	.uleb128 0x2db
	.long	.LASF1225
	.byte	0x5
	.uleb128 0x2dc
	.long	.LASF1226
	.byte	0x5
	.uleb128 0x2dd
	.long	.LASF1227
	.byte	0x5
	.uleb128 0x2de
	.long	.LASF1228
	.byte	0x5
	.uleb128 0x2df
	.long	.LASF1229
	.byte	0x5
	.uleb128 0x2e0
	.long	.LASF1230
	.byte	0x5
	.uleb128 0x2e2
	.long	.LASF1231
	.byte	0x5
	.uleb128 0x2e3
	.long	.LASF1232
	.byte	0x5
	.uleb128 0x2e4
	.long	.LASF1233
	.byte	0x5
	.uleb128 0x2e5
	.long	.LASF1234
	.byte	0x5
	.uleb128 0x2e6
	.long	.LASF1235
	.byte	0x5
	.uleb128 0x2e7
	.long	.LASF1236
	.byte	0x5
	.uleb128 0x2e8
	.long	.LASF1237
	.byte	0x5
	.uleb128 0x2e9
	.long	.LASF1238
	.byte	0x5
	.uleb128 0x2ea
	.long	.LASF1239
	.byte	0x5
	.uleb128 0x2ec
	.long	.LASF1240
	.byte	0x5
	.uleb128 0x2ed
	.long	.LASF1241
	.byte	0x5
	.uleb128 0x2ee
	.long	.LASF1242
	.byte	0x5
	.uleb128 0x2ef
	.long	.LASF1243
	.byte	0x5
	.uleb128 0x2f0
	.long	.LASF1244
	.byte	0x5
	.uleb128 0x2f1
	.long	.LASF1245
	.byte	0x5
	.uleb128 0x2f2
	.long	.LASF1246
	.byte	0x5
	.uleb128 0x2f3
	.long	.LASF1247
	.byte	0x5
	.uleb128 0x2f4
	.long	.LASF1248
	.byte	0x5
	.uleb128 0x2f6
	.long	.LASF1249
	.byte	0x5
	.uleb128 0x2f7
	.long	.LASF1250
	.byte	0x5
	.uleb128 0x2f8
	.long	.LASF1251
	.byte	0x5
	.uleb128 0x2f9
	.long	.LASF1252
	.byte	0x5
	.uleb128 0x2fa
	.long	.LASF1253
	.byte	0x5
	.uleb128 0x2fb
	.long	.LASF1254
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF1255
	.byte	0x5
	.uleb128 0x2fd
	.long	.LASF1256
	.byte	0x5
	.uleb128 0x2fe
	.long	.LASF1257
	.byte	0x5
	.uleb128 0x2ff
	.long	.LASF1258
	.byte	0x5
	.uleb128 0x300
	.long	.LASF1259
	.byte	0x5
	.uleb128 0x302
	.long	.LASF1260
	.byte	0x5
	.uleb128 0x304
	.long	.LASF1261
	.byte	0x5
	.uleb128 0x305
	.long	.LASF1262
	.byte	0x5
	.uleb128 0x306
	.long	.LASF1263
	.byte	0x5
	.uleb128 0x307
	.long	.LASF1264
	.byte	0x5
	.uleb128 0x308
	.long	.LASF1265
	.byte	0x5
	.uleb128 0x309
	.long	.LASF1266
	.byte	0x5
	.uleb128 0x30a
	.long	.LASF1267
	.byte	0x5
	.uleb128 0x30b
	.long	.LASF1268
	.byte	0x5
	.uleb128 0x30c
	.long	.LASF1269
	.byte	0x5
	.uleb128 0x30e
	.long	.LASF1270
	.byte	0x5
	.uleb128 0x30f
	.long	.LASF1271
	.byte	0x5
	.uleb128 0x310
	.long	.LASF1272
	.byte	0x5
	.uleb128 0x311
	.long	.LASF1273
	.byte	0x5
	.uleb128 0x312
	.long	.LASF1274
	.byte	0x5
	.uleb128 0x314
	.long	.LASF1275
	.byte	0x5
	.uleb128 0x315
	.long	.LASF1276
	.byte	0x5
	.uleb128 0x316
	.long	.LASF1277
	.byte	0x5
	.uleb128 0x317
	.long	.LASF1278
	.byte	0x5
	.uleb128 0x318
	.long	.LASF1279
	.byte	0x5
	.uleb128 0x319
	.long	.LASF1280
	.byte	0x5
	.uleb128 0x31a
	.long	.LASF1281
	.byte	0x5
	.uleb128 0x31b
	.long	.LASF1282
	.byte	0x5
	.uleb128 0x31c
	.long	.LASF1283
	.byte	0x5
	.uleb128 0x323
	.long	.LASF1284
	.byte	0x5
	.uleb128 0x324
	.long	.LASF1285
	.byte	0x5
	.uleb128 0x326
	.long	.LASF1286
	.byte	0x5
	.uleb128 0x327
	.long	.LASF1287
	.byte	0x5
	.uleb128 0x329
	.long	.LASF1288
	.byte	0x5
	.uleb128 0x32a
	.long	.LASF1289
	.byte	0x5
	.uleb128 0x32c
	.long	.LASF1290
	.byte	0x5
	.uleb128 0x32d
	.long	.LASF1291
	.byte	0x5
	.uleb128 0x32f
	.long	.LASF1292
	.byte	0x5
	.uleb128 0x330
	.long	.LASF1293
	.byte	0x5
	.uleb128 0x332
	.long	.LASF1294
	.byte	0x5
	.uleb128 0x333
	.long	.LASF1295
	.byte	0x5
	.uleb128 0x335
	.long	.LASF1296
	.byte	0x5
	.uleb128 0x336
	.long	.LASF1297
	.byte	0x5
	.uleb128 0x338
	.long	.LASF1298
	.byte	0x5
	.uleb128 0x339
	.long	.LASF1299
	.byte	0x5
	.uleb128 0x33b
	.long	.LASF1300
	.byte	0x5
	.uleb128 0x33c
	.long	.LASF1301
	.byte	0x5
	.uleb128 0x33e
	.long	.LASF1302
	.byte	0x5
	.uleb128 0x33f
	.long	.LASF1303
	.byte	0x5
	.uleb128 0x341
	.long	.LASF1304
	.byte	0x5
	.uleb128 0x342
	.long	.LASF1305
	.byte	0x5
	.uleb128 0x344
	.long	.LASF1306
	.byte	0x5
	.uleb128 0x345
	.long	.LASF1307
	.byte	0x5
	.uleb128 0x347
	.long	.LASF1308
	.byte	0x5
	.uleb128 0x348
	.long	.LASF1309
	.byte	0x5
	.uleb128 0x34a
	.long	.LASF1310
	.byte	0x5
	.uleb128 0x34b
	.long	.LASF1311
	.byte	0x5
	.uleb128 0x34d
	.long	.LASF1312
	.byte	0x5
	.uleb128 0x34e
	.long	.LASF1313
	.byte	0x5
	.uleb128 0x350
	.long	.LASF1314
	.byte	0x5
	.uleb128 0x351
	.long	.LASF1315
	.byte	0x5
	.uleb128 0x353
	.long	.LASF1316
	.byte	0x5
	.uleb128 0x354
	.long	.LASF1317
	.byte	0x5
	.uleb128 0x356
	.long	.LASF1318
	.byte	0x5
	.uleb128 0x357
	.long	.LASF1319
	.byte	0x5
	.uleb128 0x359
	.long	.LASF1320
	.byte	0x5
	.uleb128 0x35a
	.long	.LASF1321
	.byte	0x5
	.uleb128 0x35c
	.long	.LASF1322
	.byte	0x5
	.uleb128 0x35d
	.long	.LASF1323
	.byte	0x5
	.uleb128 0x35f
	.long	.LASF1324
	.byte	0x5
	.uleb128 0x360
	.long	.LASF1325
	.byte	0x5
	.uleb128 0x362
	.long	.LASF1326
	.byte	0x5
	.uleb128 0x363
	.long	.LASF1327
	.byte	0x5
	.uleb128 0x365
	.long	.LASF1328
	.byte	0x5
	.uleb128 0x366
	.long	.LASF1329
	.byte	0x5
	.uleb128 0x368
	.long	.LASF1330
	.byte	0x5
	.uleb128 0x369
	.long	.LASF1331
	.byte	0x5
	.uleb128 0x36b
	.long	.LASF1332
	.byte	0x5
	.uleb128 0x36c
	.long	.LASF1333
	.byte	0x5
	.uleb128 0x36e
	.long	.LASF1334
	.byte	0x5
	.uleb128 0x373
	.long	.LASF1335
	.byte	0x5
	.uleb128 0x374
	.long	.LASF1336
	.byte	0x5
	.uleb128 0x375
	.long	.LASF1337
	.byte	0x5
	.uleb128 0x376
	.long	.LASF1338
	.byte	0x5
	.uleb128 0x377
	.long	.LASF1339
	.byte	0x5
	.uleb128 0x378
	.long	.LASF1340
	.byte	0x5
	.uleb128 0x379
	.long	.LASF1341
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF1342
	.byte	0x5
	.uleb128 0x37f
	.long	.LASF1343
	.byte	0x5
	.uleb128 0x382
	.long	.LASF1344
	.byte	0x5
	.uleb128 0x383
	.long	.LASF1345
	.byte	0x5
	.uleb128 0x384
	.long	.LASF1346
	.byte	0x5
	.uleb128 0x385
	.long	.LASF1347
	.byte	0x5
	.uleb128 0x386
	.long	.LASF1348
	.byte	0x5
	.uleb128 0x387
	.long	.LASF1349
	.byte	0x5
	.uleb128 0x388
	.long	.LASF1350
	.byte	0x5
	.uleb128 0x389
	.long	.LASF1351
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF1352
	.byte	0x5
	.uleb128 0x38d
	.long	.LASF1353
	.byte	0x5
	.uleb128 0x38e
	.long	.LASF1354
	.byte	0x5
	.uleb128 0x38f
	.long	.LASF1355
	.byte	0x5
	.uleb128 0x390
	.long	.LASF1356
	.byte	0x5
	.uleb128 0x391
	.long	.LASF1357
	.byte	0x5
	.uleb128 0x392
	.long	.LASF1358
	.byte	0x5
	.uleb128 0x393
	.long	.LASF1359
	.byte	0x5
	.uleb128 0x394
	.long	.LASF1360
	.byte	0x5
	.uleb128 0x395
	.long	.LASF1361
	.byte	0x5
	.uleb128 0x398
	.long	.LASF1362
	.byte	0x5
	.uleb128 0x399
	.long	.LASF1363
	.byte	0x5
	.uleb128 0x39a
	.long	.LASF1364
	.byte	0x5
	.uleb128 0x39b
	.long	.LASF1365
	.byte	0x5
	.uleb128 0x3a0
	.long	.LASF1366
	.byte	0x5
	.uleb128 0x3a1
	.long	.LASF1367
	.byte	0x5
	.uleb128 0x3a2
	.long	.LASF1368
	.byte	0x5
	.uleb128 0x3a6
	.long	.LASF1369
	.byte	0x5
	.uleb128 0x3a7
	.long	.LASF1370
	.byte	0x5
	.uleb128 0x3ab
	.long	.LASF1371
	.byte	0x5
	.uleb128 0x3ae
	.long	.LASF1372
	.byte	0x5
	.uleb128 0x3af
	.long	.LASF1373
	.byte	0x5
	.uleb128 0x3b0
	.long	.LASF1374
	.byte	0x5
	.uleb128 0x3b1
	.long	.LASF1375
	.byte	0x5
	.uleb128 0x3b2
	.long	.LASF1376
	.byte	0x5
	.uleb128 0x3b3
	.long	.LASF1377
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.portpins.h.34.21289185946cbf62723ecc8db6cdc3ff,comdat
.Ldebug_macro6:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1378
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1379
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1380
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1381
	.byte	0x5
	.uleb128 0x30
	.long	.LASF1382
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1383
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1384
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1385
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1386
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1387
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1388
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1389
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1390
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1391
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1392
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1393
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1394
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1395
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1396
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1397
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1398
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1399
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1400
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1401
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1402
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1403
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1404
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1405
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1406
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1407
	.byte	0x5
	.uleb128 0x95
	.long	.LASF1408
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1409
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1410
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF1411
	.byte	0x5
	.uleb128 0xac
	.long	.LASF1412
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1413
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1414
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1415
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1416
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1417
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1418
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1419
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1420
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1421
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1422
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1423
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1424
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1425
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.common.h.35.c7e66042b2128622b9d3bddccc9a39f4,comdat
.Ldebug_macro7:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1426
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1427
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1428
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1429
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1430
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1431
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1432
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1433
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1434
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1435
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1436
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1437
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1438
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1439
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1440
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1441
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1442
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1443
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF1444
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1445
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1446
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1447
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1448
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1449
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF1450
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1451
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1452
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1453
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.version.h.54.85699b1a50c61c991a37d67b69e79e95,comdat
.Ldebug_macro8:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1454
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1455
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1456
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1457
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1458
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1459
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1460
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1461
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fuse.h.36.5c373c650020c0efef2cbaa98ea802c3,comdat
.Ldebug_macro9:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1462
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1463
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1464
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.36.51f311078904691e8f8c3d70111251d8,comdat
.Ldebug_macro10:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1465
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1466
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1467
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1468
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1469
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1470
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1471
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1472
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1473
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1474
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1475
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1476
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF1477
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1478
	.byte	0x5
	.uleb128 0xea
	.long	.LASF1479
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdbool.h.29.07dce69c3b78884144b7f7bd19483461,comdat
.Ldebug_macro11:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1480
	.byte	0x5
	.uleb128 0x21
	.long	.LASF1481
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1482
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1483
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1484
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.99b5021e28f91cdb161c889e07266673,comdat
.Ldebug_macro12:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.long	.LASF1485
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1486
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1487
	.byte	0x5
	.uleb128 0x89
	.long	.LASF1488
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF1489
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1490
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1491
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1492
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF1493
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF1494
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1495
	.byte	0x5
	.uleb128 0x91
	.long	.LASF1496
	.byte	0x6
	.uleb128 0xa1
	.long	.LASF1497
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1498
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1499
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1500
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1501
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF1502
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1503
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF1504
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1505
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1506
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1507
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1508
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1509
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1510
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1511
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1512
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1513
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1514
	.byte	0x6
	.uleb128 0xee
	.long	.LASF1515
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1516
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF1517
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF1518
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF1519
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF1520
	.byte	0x5
	.uleb128 0x110
	.long	.LASF1521
	.byte	0x5
	.uleb128 0x111
	.long	.LASF1522
	.byte	0x5
	.uleb128 0x112
	.long	.LASF1523
	.byte	0x5
	.uleb128 0x113
	.long	.LASF1524
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1525
	.byte	0x5
	.uleb128 0x115
	.long	.LASF1526
	.byte	0x5
	.uleb128 0x116
	.long	.LASF1527
	.byte	0x5
	.uleb128 0x117
	.long	.LASF1528
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1529
	.byte	0x5
	.uleb128 0x119
	.long	.LASF1530
	.byte	0x6
	.uleb128 0x126
	.long	.LASF1531
	.byte	0x6
	.uleb128 0x15b
	.long	.LASF1532
	.byte	0x6
	.uleb128 0x191
	.long	.LASF1533
	.byte	0x5
	.uleb128 0x196
	.long	.LASF1534
	.byte	0x6
	.uleb128 0x19c
	.long	.LASF1535
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF1536
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.40.248a6087ef49adb4f4328833c0282d4b,comdat
.Ldebug_macro13:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1537
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1538
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1539
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1540
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.161.19e15733342b50ead2919490b095303e,comdat
.Ldebug_macro14:
	.word	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xa1
	.long	.LASF1497
	.byte	0x6
	.uleb128 0xee
	.long	.LASF1515
	.byte	0x6
	.uleb128 0x15b
	.long	.LASF1532
	.byte	0x6
	.uleb128 0x191
	.long	.LASF1533
	.byte	0x5
	.uleb128 0x196
	.long	.LASF1534
	.byte	0x6
	.uleb128 0x19c
	.long	.LASF1535
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF1536
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.51.3a36e1d757b19eb9d8852fbf8bb7cd30,comdat
.Ldebug_macro15:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1541
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1542
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1543
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1544
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1545
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1546
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1547
	.byte	0x5
	.uleb128 0x84
	.long	.LASF1548
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF1549
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1550
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1551
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1552
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1553
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1554
	.byte	0x5
	.uleb128 0x2a7
	.long	.LASF1555
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.parts.h.38.424177e1c4c7502bdf2cd6eac0e66f1e,comdat
.Ldebug_macro16:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1556
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1557
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1558
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF1559
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1560
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1561
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1562
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1563
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1564
	.byte	0x5
	.uleb128 0x75
	.long	.LASF1565
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1566
	.byte	0x5
	.uleb128 0x88
	.long	.LASF1567
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF1568
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF1569
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF1570
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF1571
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF1572
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF1573
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF1574
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1575
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1576
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1577
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1578
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1579
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1580
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1581
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1582
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF1583
	.byte	0x5
	.uleb128 0xee
	.long	.LASF1584
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1585
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF1586
	.byte	0x5
	.uleb128 0x103
	.long	.LASF1587
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1588
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF1589
	.byte	0x5
	.uleb128 0x113
	.long	.LASF1590
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF1591
	.byte	0x5
	.uleb128 0x124
	.long	.LASF1592
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF1593
	.byte	0x5
	.uleb128 0x137
	.long	.LASF1594
	.byte	0x5
	.uleb128 0x141
	.long	.LASF1595
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF1596
	.byte	0x5
	.uleb128 0x156
	.long	.LASF1597
	.byte	0x5
	.uleb128 0x163
	.long	.LASF1598
	.byte	0x5
	.uleb128 0x166
	.long	.LASF1599
	.byte	0x5
	.uleb128 0x169
	.long	.LASF1600
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF1601
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF1602
	.byte	0x5
	.uleb128 0x172
	.long	.LASF1603
	.byte	0x5
	.uleb128 0x177
	.long	.LASF1604
	.byte	0x5
	.uleb128 0x189
	.long	.LASF1605
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF1606
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF1607
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF1608
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF1609
	.byte	0x5
	.uleb128 0x1b6
	.long	.LASF1610
	.byte	0x5
	.uleb128 0x1c9
	.long	.LASF1611
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF1612
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1613
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF1614
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF1615
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF1616
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF1617
	.byte	0x5
	.uleb128 0x207
	.long	.LASF1618
	.byte	0x5
	.uleb128 0x211
	.long	.LASF1619
	.byte	0x5
	.uleb128 0x21c
	.long	.LASF1620
	.byte	0x5
	.uleb128 0x263
	.long	.LASF1621
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1622
	.byte	0x5
	.uleb128 0x277
	.long	.LASF1623
	.byte	0x5
	.uleb128 0x27d
	.long	.LASF1624
	.byte	0x5
	.uleb128 0x283
	.long	.LASF1625
	.byte	0x5
	.uleb128 0x289
	.long	.LASF1626
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF1627
	.byte	0x5
	.uleb128 0x298
	.long	.LASF1628
	.byte	0x5
	.uleb128 0x29d
	.long	.LASF1629
	.byte	0x5
	.uleb128 0x2a2
	.long	.LASF1630
	.byte	0x5
	.uleb128 0x2ac
	.long	.LASF1631
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF1632
	.byte	0x5
	.uleb128 0x2b7
	.long	.LASF1633
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF1634
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF1635
	.byte	0x5
	.uleb128 0x2ce
	.long	.LASF1636
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF1637
	.byte	0x5
	.uleb128 0x2de
	.long	.LASF1638
	.byte	0x5
	.uleb128 0x2e2
	.long	.LASF1639
	.byte	0x5
	.uleb128 0x2eb
	.long	.LASF1640
	.byte	0x5
	.uleb128 0x2f1
	.long	.LASF1641
	.byte	0x5
	.uleb128 0x2f7
	.long	.LASF1642
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF1643
	.byte	0x5
	.uleb128 0x301
	.long	.LASF1644
	.byte	0x5
	.uleb128 0x306
	.long	.LASF1645
	.byte	0x5
	.uleb128 0x30b
	.long	.LASF1646
	.byte	0x5
	.uleb128 0x315
	.long	.LASF1647
	.byte	0x5
	.uleb128 0x321
	.long	.LASF1648
	.byte	0x5
	.uleb128 0x332
	.long	.LASF1649
	.byte	0x5
	.uleb128 0x33d
	.long	.LASF1650
	.byte	0x5
	.uleb128 0x34a
	.long	.LASF1651
	.byte	0x5
	.uleb128 0x35b
	.long	.LASF1652
	.byte	0x5
	.uleb128 0x365
	.long	.LASF1653
	.byte	0x5
	.uleb128 0x374
	.long	.LASF1654
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF1655
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF1656
	.byte	0x5
	.uleb128 0x396
	.long	.LASF1657
	.byte	0x5
	.uleb128 0x39c
	.long	.LASF1658
	.byte	0x5
	.uleb128 0x3a8
	.long	.LASF1659
	.byte	0x5
	.uleb128 0x3ac
	.long	.LASF1660
	.byte	0x5
	.uleb128 0x3b5
	.long	.LASF1661
	.byte	0x5
	.uleb128 0x3bf
	.long	.LASF1662
	.byte	0x5
	.uleb128 0x3c5
	.long	.LASF1663
	.byte	0x5
	.uleb128 0x3cc
	.long	.LASF1664
	.byte	0x5
	.uleb128 0x3d3
	.long	.LASF1665
	.byte	0x5
	.uleb128 0x3da
	.long	.LASF1666
	.byte	0x5
	.uleb128 0x3df
	.long	.LASF1667
	.byte	0x5
	.uleb128 0x3e7
	.long	.LASF1668
	.byte	0x5
	.uleb128 0x3eb
	.long	.LASF1669
	.byte	0x5
	.uleb128 0x3f5
	.long	.LASF1670
	.byte	0x5
	.uleb128 0x3f9
	.long	.LASF1671
	.byte	0x5
	.uleb128 0x402
	.long	.LASF1672
	.byte	0x5
	.uleb128 0x408
	.long	.LASF1673
	.byte	0x5
	.uleb128 0x40e
	.long	.LASF1674
	.byte	0x5
	.uleb128 0x414
	.long	.LASF1675
	.byte	0x5
	.uleb128 0x41d
	.long	.LASF1676
	.byte	0x5
	.uleb128 0x421
	.long	.LASF1677
	.byte	0x5
	.uleb128 0x425
	.long	.LASF1678
	.byte	0x5
	.uleb128 0x429
	.long	.LASF1679
	.byte	0x5
	.uleb128 0x432
	.long	.LASF1680
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF1681
	.byte	0x5
	.uleb128 0x441
	.long	.LASF1682
	.byte	0x5
	.uleb128 0x449
	.long	.LASF1683
	.byte	0x5
	.uleb128 0x450
	.long	.LASF1684
	.byte	0x5
	.uleb128 0x463
	.long	.LASF1685
	.byte	0x5
	.uleb128 0x469
	.long	.LASF1686
	.byte	0x5
	.uleb128 0x46f
	.long	.LASF1687
	.byte	0x5
	.uleb128 0x47a
	.long	.LASF1688
	.byte	0x5
	.uleb128 0x483
	.long	.LASF1689
	.byte	0x5
	.uleb128 0x48c
	.long	.LASF1690
	.byte	0x5
	.uleb128 0x49a
	.long	.LASF1691
	.byte	0x5
	.uleb128 0x4a3
	.long	.LASF1692
	.byte	0x5
	.uleb128 0x4b2
	.long	.LASF1693
	.byte	0x5
	.uleb128 0x4b8
	.long	.LASF1694
	.byte	0x5
	.uleb128 0x4c4
	.long	.LASF1695
	.byte	0x5
	.uleb128 0x4cb
	.long	.LASF1696
	.byte	0x5
	.uleb128 0x4d2
	.long	.LASF1697
	.byte	0x5
	.uleb128 0x4de
	.long	.LASF1698
	.byte	0x5
	.uleb128 0x4e5
	.long	.LASF1699
	.byte	0x5
	.uleb128 0x4ec
	.long	.LASF1700
	.byte	0x5
	.uleb128 0x4f8
	.long	.LASF1701
	.byte	0x5
	.uleb128 0x4fe
	.long	.LASF1702
	.byte	0x5
	.uleb128 0x509
	.long	.LASF1703
	.byte	0x5
	.uleb128 0x50f
	.long	.LASF1704
	.byte	0x5
	.uleb128 0x519
	.long	.LASF1705
	.byte	0x5
	.uleb128 0x51d
	.long	.LASF1706
	.byte	0x5
	.uleb128 0x521
	.long	.LASF1707
	.byte	0x5
	.uleb128 0x523
	.long	.LASF1708
	.byte	0x5
	.uleb128 0x527
	.long	.LASF1709
	.byte	0x5
	.uleb128 0x52b
	.long	.LASF1710
	.byte	0x5
	.uleb128 0x52d
	.long	.LASF1711
	.byte	0x5
	.uleb128 0x531
	.long	.LASF1712
	.byte	0x5
	.uleb128 0x535
	.long	.LASF1713
	.byte	0x5
	.uleb128 0x537
	.long	.LASF1714
	.byte	0x5
	.uleb128 0x53c
	.long	.LASF1715
	.byte	0x5
	.uleb128 0x542
	.long	.LASF1716
	.byte	0x5
	.uleb128 0x54a
	.long	.LASF1717
	.byte	0x5
	.uleb128 0x54e
	.long	.LASF1718
	.byte	0x5
	.uleb128 0x552
	.long	.LASF1719
	.byte	0x5
	.uleb128 0x554
	.long	.LASF1720
	.byte	0x5
	.uleb128 0x558
	.long	.LASF1721
	.byte	0x5
	.uleb128 0x55c
	.long	.LASF1722
	.byte	0x5
	.uleb128 0x55e
	.long	.LASF1723
	.byte	0x5
	.uleb128 0x562
	.long	.LASF1724
	.byte	0x5
	.uleb128 0x566
	.long	.LASF1725
	.byte	0x5
	.uleb128 0x568
	.long	.LASF1726
	.byte	0x5
	.uleb128 0x56c
	.long	.LASF1727
	.byte	0x5
	.uleb128 0x570
	.long	.LASF1728
	.byte	0x5
	.uleb128 0x572
	.long	.LASF1729
	.byte	0x5
	.uleb128 0x576
	.long	.LASF1730
	.byte	0x5
	.uleb128 0x57a
	.long	.LASF1731
	.byte	0x5
	.uleb128 0x57c
	.long	.LASF1732
	.byte	0x5
	.uleb128 0x580
	.long	.LASF1733
	.byte	0x5
	.uleb128 0x584
	.long	.LASF1734
	.byte	0x5
	.uleb128 0x586
	.long	.LASF1735
	.byte	0x5
	.uleb128 0x58a
	.long	.LASF1736
	.byte	0x5
	.uleb128 0x58e
	.long	.LASF1737
	.byte	0x5
	.uleb128 0x596
	.long	.LASF1738
	.byte	0x5
	.uleb128 0x59a
	.long	.LASF1739
	.byte	0x5
	.uleb128 0x59e
	.long	.LASF1740
	.byte	0x5
	.uleb128 0x5a5
	.long	.LASF1741
	.byte	0x5
	.uleb128 0x5a9
	.long	.LASF1742
	.byte	0x5
	.uleb128 0x5ae
	.long	.LASF1743
	.byte	0x5
	.uleb128 0x5b4
	.long	.LASF1744
	.byte	0x5
	.uleb128 0x5c1
	.long	.LASF1745
	.byte	0x5
	.uleb128 0x5c7
	.long	.LASF1746
	.byte	0x5
	.uleb128 0x5cd
	.long	.LASF1747
	.byte	0x5
	.uleb128 0x5d3
	.long	.LASF1748
	.byte	0x5
	.uleb128 0x5d9
	.long	.LASF1749
	.byte	0x5
	.uleb128 0x5df
	.long	.LASF1750
	.byte	0x5
	.uleb128 0x5eb
	.long	.LASF1751
	.byte	0x5
	.uleb128 0x5f0
	.long	.LASF1752
	.byte	0x5
	.uleb128 0x5f5
	.long	.LASF1753
	.byte	0x5
	.uleb128 0x5fa
	.long	.LASF1754
	.byte	0x5
	.uleb128 0x5ff
	.long	.LASF1755
	.byte	0x5
	.uleb128 0x603
	.long	.LASF1756
	.byte	0x5
	.uleb128 0x60d
	.long	.LASF1757
	.byte	0x5
	.uleb128 0x613
	.long	.LASF1758
	.byte	0x5
	.uleb128 0x619
	.long	.LASF1759
	.byte	0x5
	.uleb128 0x61f
	.long	.LASF1760
	.byte	0x5
	.uleb128 0x625
	.long	.LASF1761
	.byte	0x5
	.uleb128 0x62b
	.long	.LASF1762
	.byte	0x5
	.uleb128 0x636
	.long	.LASF1763
	.byte	0x5
	.uleb128 0x63c
	.long	.LASF1764
	.byte	0x5
	.uleb128 0x642
	.long	.LASF1765
	.byte	0x5
	.uleb128 0x648
	.long	.LASF1766
	.byte	0x5
	.uleb128 0x64e
	.long	.LASF1767
	.byte	0x5
	.uleb128 0x654
	.long	.LASF1768
	.byte	0x5
	.uleb128 0x660
	.long	.LASF1769
	.byte	0x5
	.uleb128 0x663
	.long	.LASF1770
	.byte	0x5
	.uleb128 0x666
	.long	.LASF1771
	.byte	0x5
	.uleb128 0x669
	.long	.LASF1772
	.byte	0x5
	.uleb128 0x66c
	.long	.LASF1773
	.byte	0x5
	.uleb128 0x66f
	.long	.LASF1774
	.byte	0x5
	.uleb128 0x672
	.long	.LASF1775
	.byte	0x5
	.uleb128 0x675
	.long	.LASF1776
	.byte	0x5
	.uleb128 0x678
	.long	.LASF1777
	.byte	0x5
	.uleb128 0x67b
	.long	.LASF1778
	.byte	0x5
	.uleb128 0x67e
	.long	.LASF1779
	.byte	0x5
	.uleb128 0x681
	.long	.LASF1780
	.byte	0x5
	.uleb128 0x684
	.long	.LASF1781
	.byte	0x5
	.uleb128 0x687
	.long	.LASF1782
	.byte	0x5
	.uleb128 0x68a
	.long	.LASF1783
	.byte	0x5
	.uleb128 0x68d
	.long	.LASF1784
	.byte	0x5
	.uleb128 0x690
	.long	.LASF1785
	.byte	0x5
	.uleb128 0x693
	.long	.LASF1786
	.byte	0x5
	.uleb128 0x696
	.long	.LASF1787
	.byte	0x5
	.uleb128 0x699
	.long	.LASF1788
	.byte	0x5
	.uleb128 0x69c
	.long	.LASF1789
	.byte	0x5
	.uleb128 0x69f
	.long	.LASF1790
	.byte	0x5
	.uleb128 0x6a2
	.long	.LASF1791
	.byte	0x5
	.uleb128 0x6a4
	.long	.LASF1792
	.byte	0x5
	.uleb128 0x6a7
	.long	.LASF1793
	.byte	0x5
	.uleb128 0x6aa
	.long	.LASF1794
	.byte	0x5
	.uleb128 0x6ad
	.long	.LASF1795
	.byte	0x5
	.uleb128 0x6b0
	.long	.LASF1796
	.byte	0x5
	.uleb128 0x6b1
	.long	.LASF1797
	.byte	0x5
	.uleb128 0x6b2
	.long	.LASF1798
	.byte	0x5
	.uleb128 0x6b5
	.long	.LASF1799
	.byte	0x5
	.uleb128 0x6b7
	.long	.LASF1800
	.byte	0x5
	.uleb128 0x6b9
	.long	.LASF1801
	.byte	0x5
	.uleb128 0x6bd
	.long	.LASF1802
	.byte	0x5
	.uleb128 0x6be
	.long	.LASF1803
	.byte	0x5
	.uleb128 0x6bf
	.long	.LASF1804
	.byte	0x5
	.uleb128 0x6c2
	.long	.LASF1805
	.byte	0x5
	.uleb128 0x6c5
	.long	.LASF1806
	.byte	0x5
	.uleb128 0x6c8
	.long	.LASF1807
	.byte	0x5
	.uleb128 0x6c9
	.long	.LASF1808
	.byte	0x5
	.uleb128 0x6cc
	.long	.LASF1809
	.byte	0x5
	.uleb128 0x6cd
	.long	.LASF1810
	.byte	0x5
	.uleb128 0x6d0
	.long	.LASF1811
	.byte	0x5
	.uleb128 0x6d1
	.long	.LASF1812
	.byte	0x5
	.uleb128 0x6d4
	.long	.LASF1813
	.byte	0x5
	.uleb128 0x6d5
	.long	.LASF1814
	.byte	0x5
	.uleb128 0x6d8
	.long	.LASF1815
	.byte	0x5
	.uleb128 0x6df
	.long	.LASF1816
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.compiler.h.71.f9633126e8a32454fdb20497dc57808e,comdat
.Ldebug_macro17:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1817
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1818
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1819
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1820
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF1821
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1822
	.byte	0x5
	.uleb128 0x79
	.long	.LASF1823
	.byte	0x5
	.uleb128 0x93
	.long	.LASF1824
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1825
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF1826
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.b2193b640edda749ea0a45a8be5976c8,comdat
.Ldebug_macro18:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1829
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1830
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1831
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1832
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1833
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1834
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF1835
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1836
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1837
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1838
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1839
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1840
	.byte	0x5
	.uleb128 0x151
	.long	.LASF1841
	.byte	0x5
	.uleb128 0x152
	.long	.LASF1842
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1843
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt_avr8.h.89.988a0fb0a0728821bb2ce6a5fad9a217,comdat
.Ldebug_macro19:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1844
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1845
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1846
	.byte	0x5
	.uleb128 0x85
	.long	.LASF1847
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1848
	.byte	0x5
	.uleb128 0x87
	.long	.LASF1849
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.83.7bf4a326041279617a872e0717310315,comdat
.Ldebug_macro20:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1851
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1539
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.98.de80e653d80602932888d287eea24d43,comdat
.Ldebug_macro21:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1852
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1853
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF1854
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF1855
	.byte	0x5
	.uleb128 0x198
	.long	.LASF1856
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF1857
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF1858
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF1859
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF1860
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF1861
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF1862
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF1863
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF1864
	.byte	0x5
	.uleb128 0x21b
	.long	.LASF1865
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF1866
	.byte	0x5
	.uleb128 0x243
	.long	.LASF1867
	.byte	0x5
	.uleb128 0x253
	.long	.LASF1868
	.byte	0x5
	.uleb128 0x264
	.long	.LASF1869
	.byte	0x5
	.uleb128 0x265
	.long	.LASF1870
	.byte	0x5
	.uleb128 0x266
	.long	.LASF1871
	.byte	0x5
	.uleb128 0x267
	.long	.LASF1872
	.byte	0x5
	.uleb128 0x285
	.long	.LASF1873
	.byte	0x5
	.uleb128 0x28d
	.long	.LASF1874
	.byte	0x5
	.uleb128 0x295
	.long	.LASF1875
	.byte	0x5
	.uleb128 0x29e
	.long	.LASF1876
	.byte	0x5
	.uleb128 0x2a7
	.long	.LASF1877
	.byte	0x5
	.uleb128 0x41f
	.long	.LASF1878
	.byte	0x5
	.uleb128 0x428
	.long	.LASF1879
	.byte	0x5
	.uleb128 0x431
	.long	.LASF1880
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF1881
	.byte	0x5
	.uleb128 0x443
	.long	.LASF1882
	.byte	0x5
	.uleb128 0x466
	.long	.LASF1883
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.progmem.h.56.1d8b28eb4bdbace2fba3d4aa9d1800d3,comdat
.Ldebug_macro22:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1884
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1885
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1886
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1887
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1888
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1889
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF1890
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1891
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1892
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1893
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.compiler.h.162.3bca7208a79b237ff211f6b945969fd5,comdat
.Ldebug_macro23:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF1894
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF1895
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF1896
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF1897
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1898
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1899
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1900
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1901
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1902
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1903
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1904
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1905
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1906
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1907
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1908
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1909
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1910
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1911
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1912
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF1913
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF1914
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF1915
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF1916
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1917
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1918
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF1919
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF1920
	.byte	0x5
	.uleb128 0x120
	.long	.LASF1921
	.byte	0x5
	.uleb128 0x121
	.long	.LASF1922
	.byte	0x5
	.uleb128 0x124
	.long	.LASF1923
	.byte	0x5
	.uleb128 0x125
	.long	.LASF1924
	.byte	0x5
	.uleb128 0x139
	.long	.LASF1925
	.byte	0x5
	.uleb128 0x144
	.long	.LASF1926
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF1927
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1928
	.byte	0x5
	.uleb128 0x159
	.long	.LASF1929
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.board.h.62.052526d93e2d7862a07f04948a6ff648,comdat
.Ldebug_macro24:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1930
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF1931
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1932
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1933
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1934
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1935
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1936
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1937
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1938
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1939
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1940
	.byte	0x5
	.uleb128 0x49
	.long	.LASF1941
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF1942
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1943
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1944
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1945
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF1946
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF1947
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1948
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1949
	.byte	0x5
	.uleb128 0x52
	.long	.LASF1950
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1951
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1952
	.byte	0x5
	.uleb128 0x55
	.long	.LASF1953
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1954
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1955
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1956
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1957
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1958
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1959
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1960
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF1961
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF1962
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1963
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1964
	.byte	0x5
	.uleb128 0x61
	.long	.LASF1965
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1966
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1967
	.byte	0x5
	.uleb128 0x64
	.long	.LASF1968
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1969
	.byte	0x5
	.uleb128 0x66
	.long	.LASF1970
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1971
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1972
	.byte	0x5
	.uleb128 0x69
	.long	.LASF1973
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF1974
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1975
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF1976
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF1977
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1978
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF1979
	.byte	0x5
	.uleb128 0x70
	.long	.LASF1980
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1981
	.byte	0x5
	.uleb128 0x72
	.long	.LASF1982
	.byte	0x5
	.uleb128 0x73
	.long	.LASF1983
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1984
	.byte	0x5
	.uleb128 0x75
	.long	.LASF1985
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1986
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1987
	.byte	0x5
	.uleb128 0x78
	.long	.LASF1988
	.byte	0x5
	.uleb128 0x79
	.long	.LASF1989
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1990
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1991
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1992
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1993
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF1994
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF1995
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1996
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1997
	.byte	0x5
	.uleb128 0x82
	.long	.LASF1998
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1999
	.byte	0x5
	.uleb128 0x84
	.long	.LASF2000
	.byte	0x5
	.uleb128 0x85
	.long	.LASF2001
	.byte	0x5
	.uleb128 0x86
	.long	.LASF2002
	.byte	0x5
	.uleb128 0x87
	.long	.LASF2003
	.byte	0x5
	.uleb128 0x88
	.long	.LASF2004
	.byte	0x5
	.uleb128 0x89
	.long	.LASF2005
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF2006
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF2007
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF2008
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF2009
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF2010
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF2011
	.byte	0x5
	.uleb128 0x90
	.long	.LASF2012
	.byte	0x5
	.uleb128 0x91
	.long	.LASF2013
	.byte	0x5
	.uleb128 0x92
	.long	.LASF2014
	.byte	0x5
	.uleb128 0x93
	.long	.LASF2015
	.byte	0x5
	.uleb128 0x94
	.long	.LASF2016
	.byte	0x5
	.uleb128 0x95
	.long	.LASF2017
	.byte	0x5
	.uleb128 0x96
	.long	.LASF2018
	.byte	0x5
	.uleb128 0x97
	.long	.LASF2019
	.byte	0x5
	.uleb128 0x98
	.long	.LASF2020
	.byte	0x5
	.uleb128 0x99
	.long	.LASF2021
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF2022
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF2023
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF2024
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF2025
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF2026
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF2027
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF2028
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF2029
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF2030
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF2031
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF2032
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF2033
	.byte	0x5
	.uleb128 0xab
	.long	.LASF2034
	.byte	0x5
	.uleb128 0xac
	.long	.LASF2035
	.byte	0x5
	.uleb128 0xad
	.long	.LASF2036
	.byte	0x5
	.uleb128 0xae
	.long	.LASF2037
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF2038
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF2039
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF2040
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF2041
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF2042
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ioport.h.38.48f501ae460febc49dd950c4a2361938,comdat
.Ldebug_macro25:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x26
	.long	.LASF2048
	.byte	0x5
	.uleb128 0x28
	.long	.LASF2049
	.byte	0x5
	.uleb128 0x29
	.long	.LASF2050
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF2051
	.byte	0x5
	.uleb128 0x35
	.long	.LASF2052
	.byte	0x5
	.uleb128 0x36
	.long	.LASF2053
	.byte	0x5
	.uleb128 0x37
	.long	.LASF2054
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF2055
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF2056
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF2057
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF2058
	.byte	0x5
	.uleb128 0x94
	.long	.LASF2059
	.byte	0x5
	.uleb128 0x95
	.long	.LASF2060
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mega_gpio.h.43.3e8869bf7dde66f4dae42caccabdc28f,comdat
.Ldebug_macro26:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF2061
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF2062
	.byte	0x5
	.uleb128 0x31
	.long	.LASF2063
	.byte	0x5
	.uleb128 0x34
	.long	.LASF2064
	.byte	0x5
	.uleb128 0x37
	.long	.LASF2065
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF2066
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF2067
	.byte	0x5
	.uleb128 0x40
	.long	.LASF2068
	.byte	0x5
	.uleb128 0x43
	.long	.LASF2069
	.byte	0x5
	.uleb128 0x46
	.long	.LASF2070
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.led.h.49.f70483782e1febf45298b25c5f4d1ffa,comdat
.Ldebug_macro27:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.long	.LASF2071
	.byte	0x5
	.uleb128 0x39
	.long	.LASF2072
	.byte	0x5
	.uleb128 0x41
	.long	.LASF2073
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.atmega328p_xplained_mini.h.47.411278661c63ad4794d5f415bca0f65b,comdat
.Ldebug_macro28:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF2074
	.byte	0x5
	.uleb128 0x30
	.long	.LASF2075
	.byte	0x5
	.uleb128 0x33
	.long	.LASF2076
	.byte	0x5
	.uleb128 0x34
	.long	.LASF2077
	.byte	0x5
	.uleb128 0x37
	.long	.LASF2078
	.byte	0x5
	.uleb128 0x39
	.long	.LASF2079
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF2080
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF2081
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF2082
	.byte	0x5
	.uleb128 0x40
	.long	.LASF2083
	.byte	0x5
	.uleb128 0x41
	.long	.LASF2084
	.byte	0x5
	.uleb128 0x42
	.long	.LASF2085
	.byte	0x5
	.uleb128 0x43
	.long	.LASF2086
	.byte	0x5
	.uleb128 0x44
	.long	.LASF2087
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1117:
	.string	"OCR1AH5 5"
.LASF1765:
	.string	"SAME70N ( SAM_PART_IS_DEFINED(SAME70N19) || SAM_PART_IS_DEFINED(SAME70N20) || SAM_PART_IS_DEFINED(SAME70N21) )"
.LASF255:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF505:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF1897:
	.string	"FLASH_EXTERN(x) extern const x"
.LASF246:
	.string	"__UACCUM_FBIT__ 16"
.LASF215:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF152:
	.string	"__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
.LASF958:
	.string	"PCINT3 3"
.LASF1938:
	.string	"STK600_RC064X 10"
.LASF1427:
	.string	"SPL _SFR_IO8(0x3D)"
.LASF636:
	.string	"_SFR_DWORD(sfr) _MMIO_DWORD(_SFR_ADDR(sfr))"
.LASF845:
	.string	"GPIOR25 5"
.LASF2056:
	.string	"IOPORT_MODE_PULLUP (0x00)"
.LASF1030:
	.string	"MUX2 2"
.LASF734:
	.string	"OCF2A 1"
.LASF1073:
	.string	"TCNT1H _SFR_MEM8(0x85)"
.LASF247:
	.string	"__UACCUM_IBIT__ 16"
.LASF851:
	.string	"CPHA 2"
.LASF1099:
	.string	"ICR1H6 6"
.LASF1826:
	.string	"LSB(u16) (((uint8_t* )&u16)[0])"
.LASF1843:
	.string	"ISR_ALIASOF(v) __attribute__((alias(__STRINGIFY(v))))"
.LASF1295:
	.string	"WDT_vect _VECTOR(6)"
.LASF108:
	.string	"__UINT16_C(c) c ## U"
.LASF1689:
	.string	"SAMDA1G ( SAM_PART_IS_DEFINED(SAMDA1G14A) || SAM_PART_IS_DEFINED(SAMDA1G14B) || SAM_PART_IS_DEFINED(SAMDA1G15A) || SAM_PART_IS_DEFINED(SAMDA1G15B) || SAM_PART_IS_DEFINED(SAMDA1G16A) || SAM_PART_IS_DEFINED(SAMDA1G16B) )"
.LASF771:
	.string	"EEAR _SFR_IO16(0x21)"
.LASF1057:
	.string	"WGM13 4"
.LASF1112:
	.string	"OCR1AH0 0"
.LASF614:
	.string	"SCNuFAST32 \"lu\""
.LASF1293:
	.string	"PCINT2_vect _VECTOR(5)"
.LASF948:
	.string	"PCIE2 2"
.LASF573:
	.string	"SCNdFAST8 \"hhd\""
.LASF133:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF865:
	.string	"SPDR3 3"
.LASF2003:
	.string	"SAMD10_XPLAINED_MINI 77"
.LASF896:
	.string	"SELFPRGEN 0"
.LASF887:
	.string	"BORF 2"
.LASF649:
	.string	"PINB3 3"
.LASF1243:
	.string	"UCSZ02 2"
.LASF1220:
	.string	"TWSTA 5"
.LASF976:
	.string	"PCINT20 4"
.LASF1745:
	.string	"SAMV71J ( SAM_PART_IS_DEFINED(SAMV71J19) || SAM_PART_IS_DEFINED(SAMV71J20) || SAM_PART_IS_DEFINED(SAMV71J21) )"
.LASF1915:
	.string	"convert_byte_array_to_64_bit(data) (*(uint64_t *)(data))"
.LASF2022:
	.string	"AVR_SIMULATOR_UC3 98"
.LASF1774:
	.string	"SAM4L (SAM4LS || SAM4LC)"
.LASF1133:
	.string	"OCR1BH2 2"
.LASF1022:
	.string	"ADCSRB _SFR_MEM8(0x7B)"
.LASF441:
	.string	"_AVR_IO_H_ "
.LASF605:
	.string	"SCNuFAST16 \"u\""
.LASF1109:
	.string	"OCR1AL6 6"
.LASF454:
	.string	"UINT16_MAX (__CONCAT(INT16_MAX, U) * 2U + 1U)"
.LASF447:
	.string	"__CONCATenate(left,right) left ## right"
.LASF892:
	.string	"PUD 4"
.LASF35:
	.string	"__WCHAR_TYPE__ int"
.LASF2047:
	.string	"IOPORT_H "
.LASF448:
	.string	"__CONCAT(left,right) __CONCATenate(left, right)"
.LASF1629:
	.string	"SAM3U2 ( SAM_PART_IS_DEFINED(SAM3U2C) || SAM_PART_IS_DEFINED(SAM3U2E) )"
.LASF0:
	.string	"__STDC__ 1"
.LASF1460:
	.string	"__AVR_LIBC_MINOR__ 0"
.LASF39:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF1984:
	.string	"SAM4S_WPIR_RD 58"
.LASF227:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF914:
	.string	"CLKPR _SFR_MEM8(0x61)"
.LASF1040:
	.string	"ADC4D 4"
.LASF1602:
	.string	"XMEGA_D (XMEGA_D3 || XMEGA_D4)"
.LASF293:
	.string	"__SA_FBIT__ 15"
.LASF185:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF303:
	.string	"__UDA_FBIT__ 32"
.LASF1155:
	.string	"TCNT2_1 1"
.LASF1974:
	.string	"STK600_RC032X 48"
.LASF269:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF438:
	.string	"BOARD ATMEGA328P_XPLAINED_MINI"
.LASF798:
	.string	"CS01 1"
.LASF49:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF2121:
	.string	"PORT_struct"
.LASF1091:
	.string	"ICR1L7 7"
.LASF1577:
	.string	"UC3A (UC3A0 || UC3A1 || UC3A3 || UC3A4)"
.LASF2107:
	.string	"port_pin_t"
.LASF1267:
	.string	"UBRR0_5 5"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF330:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF758:
	.string	"EEMPE 2"
.LASF905:
	.string	"WDTCSR _SFR_MEM8(0x60)"
.LASF583:
	.string	"SCNd32 \"ld\""
.LASF294:
	.string	"__SA_IBIT__ 16"
.LASF150:
	.string	"__DBL_MIN__ ((double)1.17549435e-38L)"
.LASF304:
	.string	"__UDA_IBIT__ 32"
.LASF2029:
	.string	"WLR089_XPLAINED_PRO 105"
.LASF1071:
	.string	"TCNT1L6 6"
.LASF1272:
	.string	"UBRR0_9 1"
.LASF1810:
	.string	"SAMV70B (SAMV70JB || SAMV70NB || SAMV70QB)"
.LASF680:
	.string	"DDRC _SFR_IO8(0x07)"
.LASF18:
	.string	"__SIZEOF_LONG__ 4"
.LASF1659:
	.string	"SAMR30G ( SAM_PART_IS_DEFINED(SAMR30G18A) )"
.LASF591:
	.string	"SCNo8 \"hho\""
.LASF538:
	.string	"PRIxLEAST8 \"x\""
.LASF1465:
	.string	"_AVR_LOCK_H_ 1"
.LASF1534:
	.string	"NULL ((void *)0)"
.LASF148:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF1803:
	.string	"SAM4CP_1 (SAM4CP16_1)"
.LASF1061:
	.string	"FOC1B 6"
.LASF1125:
	.string	"OCR1BL3 3"
.LASF1929:
	.string	"FORCE_INLINE(type,name,...) static inline type name(__VA_ARGS__) __attribute__((always_inline)); static inline type name(__VA_ARGS__)"
.LASF1402:
	.string	"PIN0 0"
.LASF522:
	.string	"PRIiFAST16 \"i\""
.LASF1191:
	.string	"TWPS1 1"
.LASF1884:
	.string	"PROGMEM_LOCATION(type,name,loc) type name __attribute__((section (#loc)))"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF715:
	.string	"PORTD0 0"
.LASF1435:
	.string	"SREG_S (4)"
.LASF1970:
	.string	"STK600_RCUC3L3 44"
.LASF710:
	.string	"DDD4 4"
.LASF1746:
	.string	"SAMV71JB ( SAM_PART_IS_DEFINED(SAMV71J19B) || SAM_PART_IS_DEFINED(SAMV71J20B) || SAM_PART_IS_DEFINED(SAMV71J21B) )"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF808:
	.string	"TCNT0_4 4"
.LASF694:
	.string	"PORTC5 5"
.LASF2004:
	.string	"SAMDA1_XPLAINED_PRO 78"
.LASF144:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF1353:
	.string	"FUSE_BOOTRST (unsigned char)~_BV(0)"
.LASF1542:
	.string	"__ATTR_CONST__ __attribute__((__const__))"
.LASF1055:
	.string	"CS12 2"
.LASF488:
	.string	"INTMAX_MAX INT64_MAX"
.LASF66:
	.string	"__INTPTR_TYPE__ int"
.LASF277:
	.string	"__DQ_FBIT__ 63"
.LASF154:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF250:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF570:
	.string	"PRIXPTR PRIX16"
.LASF1823:
	.string	"__always_optimize __attribute__((optimize(3)))"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF1711:
	.string	"SAM4C16_0 ( SAM_PART_IS_DEFINED(SAM4C16C_0) )"
.LASF1000:
	.string	"ADCL4 4"
.LASF483:
	.string	"INT_FAST64_MIN INT64_MIN"
.LASF1177:
	.string	"TCN2UB 4"
.LASF472:
	.string	"UINT_LEAST64_MAX UINT64_MAX"
.LASF140:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1893:
	.string	"PROGMEM_READ_WORD(x) pgm_read_word(x)"
.LASF1309:
	.string	"TIMER1_OVF_vect _VECTOR(13)"
.LASF587:
	.string	"SCNiLEAST32 \"li\""
.LASF2092:
	.string	"uint16_t"
.LASF1576:
	.string	"UC3L3_L4 (UC3L3 || UC3L4)"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF178:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1207:
	.string	"TWD0 0"
.LASF2044:
	.string	"_LED_H_ "
.LASF360:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF355:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF1038:
	.string	"ADC2D 2"
.LASF1964:
	.string	"STK600_RCUC3A0 38"
.LASF1606:
	.string	"MEGA_XX1 ( AVR8_PART_IS_DEFINED(ATmega1281) || AVR8_PART_IS_DEFINED(ATmega2561) )"
.LASF1943:
	.string	"STK600_RCUC3C0 17"
.LASF2020:
	.string	"SAMR34_XPLAINED_PRO 95"
.LASF267:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF1785:
	.string	"SAMR30 (SAMR30G || SAMR30E)"
.LASF490:
	.string	"UINTMAX_MAX UINT64_MAX"
.LASF1782:
	.string	"SAMHA0 (SAMHA0G || SAMHA0E)"
.LASF1013:
	.string	"ADCSRA _SFR_MEM8(0x7A)"
.LASF1647:
	.ascii	"SAM4LS ( SAM_PART_IS_DEFINED(SAM4LS2A) || SAM_PA"
	.string	"RT_IS_DEFINED(SAM4LS2B) || SAM_PART_IS_DEFINED(SAM4LS2C) || SAM_PART_IS_DEFINED(SAM4LS4A) || SAM_PART_IS_DEFINED(SAM4LS4B) || SAM_PART_IS_DEFINED(SAM4LS4C) || SAM_PART_IS_DEFINED(SAM4LS8A) || SAM_PART_IS_DEFINED(SAM4LS8B) || SAM_PART_IS_DEFINED(SAM4LS8C) )"
.LASF901:
	.string	"RWWSRE 4"
.LASF1288:
	.string	"PCINT0_vect_num 3"
.LASF1907:
	.string	"CLE64_TO_CPU_ENDIAN(x) (x)"
.LASF1489:
	.string	"_T_PTRDIFF_ "
.LASF1029:
	.string	"MUX1 1"
.LASF452:
	.string	"INT16_MAX 0x7fff"
.LASF1479:
	.string	"LOCKBITS_DEFAULT (0xFF)"
.LASF479:
	.string	"INT_FAST32_MAX INT32_MAX"
.LASF1215:
	.string	"TWCR _SFR_MEM8(0xBC)"
.LASF1331:
	.string	"TWI_vect _VECTOR(24)"
.LASF828:
	.string	"OCR0B_6 6"
.LASF1324:
	.string	"ADC_vect_num 21"
.LASF198:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF701:
	.string	"PIND4 4"
.LASF604:
	.string	"SCNuLEAST16 \"u\""
.LASF942:
	.string	"CAL5 5"
.LASF1798:
	.string	"SAM4C (SAM4C4 || SAM4C8 || SAM4C16 || SAM4C32)"
.LASF1706:
	.string	"SAM4C4_1 ( SAM_PART_IS_DEFINED(SAM4C4C_1) )"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF2013:
	.string	"SAML22_XPLAINED_PRO_B 87"
.LASF891:
	.string	"IVSEL 1"
.LASF783:
	.string	"EEAR9 1"
.LASF1145:
	.string	"COM2A1 7"
.LASF1181:
	.string	"TWBR0 0"
.LASF61:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF1170:
	.string	"OCR2_7 7"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF1355:
	.string	"FUSE_BOOTSZ1 (unsigned char)~_BV(2)"
.LASF659:
	.string	"DDB4 4"
.LASF1610:
	.ascii	"MEGA_XX8 ( AVR8_PART_IS_DEFINED(ATmega48) || AVR8_PART_IS_DE"
	.ascii	"FINED(ATmega48A) || AVR8_PART_IS_DEFINED(ATmega48PA) || AVR8"
	.ascii	"_PART_IS_DEFINED(ATmega48PB) || AVR8_PART_IS_DEFINED(ATmega8"
	.ascii	"8) || AVR8_PART_IS_DEFINED(ATmega88A) || AVR8_PART_IS_DEFINE"
	.ascii	"D(ATmega88PA) || AVR8_PART_IS_DEFINED(ATmega88PB"
	.string	") || AVR8_PART_IS_DEFINED(ATmega168) || AVR8_PART_IS_DEFINED(ATmega168A) || AVR8_PART_IS_DEFINED(ATmega168PA) || AVR8_PART_IS_DEFINED(ATmega168PB) || AVR8_PART_IS_DEFINED(ATmega328) || AVR8_PART_IS_DEFINED(ATmega328P) || AVR8_PART_IS_DEFINED(ATmega328PB) )"
.LASF619:
	.string	"SCNuPTR SCNu16"
.LASF664:
	.string	"PORTB0 0"
.LASF928:
	.string	"__AVR_HAVE_PRR ((1<<PRADC)|(1<<PRUSART0)|(1<<PRSPI)|(1<<PRTIM1)|(1<<PRTIM0)|(1<<PRTIM2)|(1<<PRTWI))"
.LASF1463:
	.string	"FUSEMEM __attribute__((__used__, __section__ (\".fuse\")))"
.LASF1189:
	.string	"TWSR _SFR_MEM8(0xB9)"
.LASF911:
	.string	"WDP3 5"
.LASF878:
	.string	"ACD 7"
.LASF523:
	.string	"PRId32 \"ld\""
.LASF1328:
	.string	"ANALOG_COMP_vect_num 23"
.LASF839:
	.string	"GPIOR2 _SFR_IO8(0x2B)"
.LASF1261:
	.string	"UBRR0L _SFR_MEM8(0xC4)"
.LASF1245:
	.string	"RXEN0 4"
.LASF1842:
	.string	"ISR_NAKED __attribute__((naked))"
.LASF145:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF306:
	.string	"__UTA_IBIT__ 16"
.LASF1192:
	.string	"TWS3 3"
.LASF442:
	.string	"_AVR_SFR_DEFS_H_ 1"
.LASF568:
	.string	"PRIuPTR PRIu16"
.LASF1609:
	.ascii	"MEGA_XX4_A "
	.string	"( AVR8_PART_IS_DEFINED(ATmega164A) || AVR8_PART_IS_DEFINED(ATmega164PA) || AVR8_PART_IS_DEFINED(ATmega324A) || AVR8_PART_IS_DEFINED(ATmega324PA) || AVR8_PART_IS_DEFINED(ATmega644A) || AVR8_PART_IS_DEFINED(ATmega644PA) || AVR8_PART_IS_DEFINED(ATmega1284P) )"
.LASF116:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1118:
	.string	"OCR1AH6 6"
.LASF1683:
	.string	"SAML21XXXA ( SAM_PART_IS_DEFINED(SAML21E18A) || SAM_PART_IS_DEFINED(SAML21G18A) || SAM_PART_IS_DEFINED(SAML21J18A) )"
.LASF925:
	.string	"PRTIM0 5"
.LASF1553:
	.string	"DTOSTR_UPPERCASE 0x04"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF63:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF339:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF1973:
	.string	"XMEGA_C3_XPLAINED 47"
.LASF1933:
	.string	"EVK1104 4"
.LASF64:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF96:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF959:
	.string	"PCINT4 4"
.LASF1740:
	.string	"SAM4CP16 (SAM4CP16_0 || SAM4CP16_1)"
.LASF1592:
	.string	"XMEGA_B3 ( AVR8_PART_IS_DEFINED(ATxmega64B3) || AVR8_PART_IS_DEFINED(ATxmega128B3) )"
.LASF17:
	.string	"__SIZEOF_INT__ 2"
.LASF1036:
	.string	"ADC0D 0"
.LASF2016:
	.string	"ATMEGA324PB_XPLAINED_PRO 90"
.LASF1669:
	.string	"BTLC1000 ( SAM_PART_IS_DEFINED(BTLC1000WLCSP) )"
.LASF846:
	.string	"GPIOR26 6"
.LASF184:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF1312:
	.string	"TIMER0_COMPB_vect_num 15"
.LASF746:
	.string	"GPIOR0 _SFR_IO8(0x1E)"
.LASF266:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF1844:
	.string	"cpu_irq_enable() sei()"
.LASF1917:
	.string	"convert_spec_16_bit_to_byte_array(value,data) ((*(uint16_t *)(data)) = (uint16_t)(value))"
.LASF1031:
	.string	"MUX3 3"
.LASF51:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF1509:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF396:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF1100:
	.string	"ICR1H7 7"
.LASF1801:
	.string	"SAM4CM (SAM4CMP8 || SAM4CMP16 || SAM4CMP32 || SAM4CMS4 || SAM4CMS8 || SAM4CMS16 || SAM4CMS32)"
.LASF1171:
	.string	"OCR2B _SFR_MEM8(0xB4)"
.LASF1880:
	.string	"pgm_read_dword(address_short) pgm_read_dword_near(address_short)"
.LASF1775:
	.string	"SAMD20 (SAMD20J || SAMD20G || SAMD20E)"
.LASF1982:
	.string	"XMEGA_RF233_ZIGBIT 56"
.LASF1667:
	.string	"WLR089U0 ( SAM_PART_IS_DEFINED(WLR089U0) )"
.LASF322:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF1378:
	.string	"_AVR_PORTPINS_H_ 1"
.LASF1397:
	.string	"PIN5 5"
.LASF1080:
	.string	"TCNT1H6 6"
.LASF866:
	.string	"SPDR4 4"
.LASF1607:
	.string	"MEGA_XX0_1 (MEGA_XX0 || MEGA_XX1)"
.LASF275:
	.string	"__SQ_FBIT__ 31"
.LASF1911:
	.string	"ADDR_COPY_DST_SRC_16(dst,src) memcpy((&(dst)), (&(src)), sizeof(uint16_t))"
.LASF493:
	.string	"SIG_ATOMIC_MAX INT8_MAX"
.LASF327:
	.string	"__AVR__ 1"
.LASF650:
	.string	"PINB4 4"
.LASF1339:
	.string	"XRAMEND RAMEND"
.LASF1816:
	.string	"SAM (SAM3S || SAM3U || SAM3N || SAM3XA || SAM4S || SAM4L || SAM4E || SAM0 || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG || SAMV71 || SAMV70 || SAME70 || SAMS70)"
.LASF909:
	.string	"WDE 3"
.LASF972:
	.string	"PCINT16 0"
.LASF991:
	.string	"OCIE2A 1"
.LASF1014:
	.string	"ADPS0 0"
.LASF1134:
	.string	"OCR1BH3 3"
.LASF1936:
	.string	"UC3L_EK 7"
.LASF975:
	.string	"PCINT19 3"
.LASF1172:
	.string	"ASSR _SFR_MEM8(0xB6)"
.LASF1969:
	.string	"ARDUINO_DUE_X 43"
.LASF509:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF271:
	.string	"__QQ_FBIT__ 7"
.LASF1199:
	.string	"TWA0 1"
.LASF1110:
	.string	"OCR1AL7 7"
.LASF1370:
	.string	"SIGNATURE_1 0x95"
.LASF1809:
	.string	"SAMV70 (SAMV70J || SAMV70N || SAMV70Q || SAMV70JB || SAMV70NB || SAMV70QB)"
.LASF1556:
	.string	"ATMEL_PARTS_H "
.LASF26:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF1814:
	.string	"SAMS70B (SAMS70JB || SAMS70NB || SAMS70QB)"
.LASF1779:
	.string	"SAMD11 (SAMD11C || SAMD11DS || SAMD11DM || SAMD11DU)"
.LASF1471:
	.string	"BLB0_MODE_1 (0xFF)"
.LASF2005:
	.string	"SAMW25_XPLAINED_PRO 79"
.LASF601:
	.string	"SCNoLEAST16 \"o\""
.LASF1276:
	.string	"UDR0_0 0"
.LASF2027:
	.string	"SAMR21G18_MODULE 103"
.LASF1409:
	.string	"PB6 PORTB6"
.LASF1379:
	.string	"PORT7 7"
.LASF1009:
	.string	"ADCH4 4"
.LASF895:
	.string	"SPMCSR _SFR_IO8(0x37)"
.LASF1156:
	.string	"TCNT2_2 2"
.LASF875:
	.string	"ACI 4"
.LASF1644:
	.string	"SAM4SA16 ( SAM_PART_IS_DEFINED(SAM4SA16B) || SAM_PART_IS_DEFINED(SAM4SA16C) )"
.LASF38:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF1394:
	.string	"DD0 0"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF99:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF832:
	.string	"GPIOR11 1"
.LASF305:
	.string	"__UTA_FBIT__ 48"
.LASF1605:
	.string	"MEGA_XX0 ( AVR8_PART_IS_DEFINED(ATmega640) || AVR8_PART_IS_DEFINED(ATmega1280) || AVR8_PART_IS_DEFINED(ATmega2560) )"
.LASF1856:
	.string	"PSTR(s) (__extension__({static const char __c[] PROGMEM = (s); &__c[0];}))"
.LASF1004:
	.string	"ADCH _SFR_MEM8(0x79)"
.LASF785:
	.string	"GTCCR _SFR_IO8(0x23)"
.LASF2023:
	.string	"USER_BOARD 99"
.LASF753:
	.string	"GPIOR06 6"
.LASF1429:
	.string	"SPH _SFR_IO8(0x3E)"
.LASF1072:
	.string	"TCNT1L7 7"
.LASF1217:
	.string	"TWEN 2"
.LASF513:
	.string	"PRIdFAST8 \"d\""
.LASF1697:
	.string	"SAMC20J ( SAM_PART_IS_DEFINED(SAMC20J15A) || SAM_PART_IS_DEFINED(SAMC20J16A) || SAM_PART_IS_DEFINED(SAMC20J17A) || SAM_PART_IS_DEFINED(SAMC20J18A) )"
.LASF620:
	.string	"SCNxPTR SCNx16"
.LASF548:
	.string	"PRIuFAST16 \"u\""
.LASF1834:
	.string	"ISR(vector,...) void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
.LASF232:
	.string	"__SACCUM_IBIT__ 8"
.LASF1562:
	.string	"UC3A3 ( AVR32_PART_IS_DEFINED(UC3A364) || AVR32_PART_IS_DEFINED(UC3A364S) || AVR32_PART_IS_DEFINED(UC3A3128) || AVR32_PART_IS_DEFINED(UC3A3128S) || AVR32_PART_IS_DEFINED(UC3A3256) || AVR32_PART_IS_DEFINED(UC3A3256S) )"
.LASF849:
	.string	"SPR0 0"
.LASF1841:
	.string	"ISR_NOBLOCK __attribute__((interrupt))"
.LASF1126:
	.string	"OCR1BL4 4"
.LASF1015:
	.string	"ADPS1 1"
.LASF485:
	.string	"INTPTR_MAX INT16_MAX"
.LASF716:
	.string	"PORTD1 1"
.LASF1731:
	.string	"SAM4CMS8 (SAM4CMS8_0 || SAM4CMS8_1)"
.LASF1313:
	.string	"TIMER0_COMPB_vect _VECTOR(15)"
.LASF695:
	.string	"PORTC6 6"
.LASF2094:
	.string	"long int"
.LASF1213:
	.string	"TWD6 6"
.LASF1867:
	.ascii	"__LPM_float_tiny__(addr) (__"
	.string	"extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; float __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF763:
	.string	"EEDR0 0"
.LASF440:
	.string	"UTILS_COMPILER_H "
.LASF1292:
	.string	"PCINT2_vect_num 5"
.LASF861:
	.string	"SPDR _SFR_IO8(0x2E)"
.LASF98:
	.string	"__INT8_C(c) c"
.LASF470:
	.string	"INT_LEAST64_MAX INT64_MAX"
.LASF1797:
	.string	"SAM4C_1 (SAM4C4_1 || SAM4C8_1 || SAM4C16_1 || SAM4C32_1)"
.LASF1558:
	.string	"AVR32_PART_IS_DEFINED(part) (defined(__AT32 ## part ## __) || defined(__AVR32_ ## part ## __))"
.LASF1048:
	.string	"COM1B0 4"
.LASF507:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF1349:
	.string	"FUSE_SUT1 (unsigned char)~_BV(5)"
.LASF457:
	.string	"UINT32_MAX (__CONCAT(INT32_MAX, U) * 2UL + 1UL)"
.LASF492:
	.string	"PTRDIFF_MIN INT16_MIN"
.LASF635:
	.string	"_SFR_WORD(sfr) _MMIO_WORD(_SFR_ADDR(sfr))"
.LASF1327:
	.string	"EE_READY_vect _VECTOR(22)"
.LASF1483:
	.string	"false 0"
.LASF1375:
	.string	"SLEEP_MODE_PWR_SAVE (0x03<<1)"
.LASF132:
	.string	"__FLT_MAX_EXP__ 128"
.LASF1008:
	.string	"ADCH3 3"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF1306:
	.string	"TIMER1_COMPB_vect_num 12"
.LASF1512:
	.string	"_GCC_SIZE_T "
.LASF1638:
	.string	"SAM3A4 ( SAM_PART_IS_DEFINED(SAM3A4C) )"
.LASF1730:
	.string	"SAM4CMS8_1 ( SAM_PART_IS_DEFINED(SAM4CMS8C_1) )"
.LASF1421:
	.string	"PD3 PORTD3"
.LASF142:
	.string	"__DBL_MANT_DIG__ 24"
.LASF1664:
	.string	"SAMR35J ( SAM_PART_IS_DEFINED(SAMR35J18B) || SAM_PART_IS_DEFINED(SAMR35J17B) || SAM_PART_IS_DEFINED(SAMR35J16B) )"
.LASF301:
	.string	"__USA_FBIT__ 16"
.LASF584:
	.string	"SCNdLEAST32 \"ld\""
.LASF1652:
	.string	"SAMD21J ( SAM_PART_IS_DEFINED(SAMD21J15A) || SAM_PART_IS_DEFINED(SAMD21J16A) || SAM_PART_IS_DEFINED(SAMD21J17A) || SAM_PART_IS_DEFINED(SAMD21J18A) || SAM_PART_IS_DEFINED(SAMD21J15B) || SAM_PART_IS_DEFINED(SAMD21J16B) || SAM_PART_IS_DEFINED(SAMD21J17D) )"
.LASF328:
	.string	"AVR 1"
.LASF556:
	.string	"PRIoLEAST32 \"lo\""
.LASF2115:
	.string	"ioport_configure_port_pin"
.LASF427:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF2051:
	.string	"IOPORT_PORT_OFFSET 0x03"
.LASF1781:
	.string	"SAMHA1 (SAMHA1G || SAMHA1E)"
.LASF663:
	.string	"PORTB _SFR_IO8(0x05)"
.LASF646:
	.string	"PINB0 0"
.LASF2080:
	.string	"TWID_SDA IOPORT_CREATE_PIN(PORTC, 4)"
.LASF1262:
	.string	"UBRR0_0 0"
.LASF1688:
	.string	"SAMDA1J ( SAM_PART_IS_DEFINED(SAMDA1J14A) || SAM_PART_IS_DEFINED(SAMDA1J15B) || SAM_PART_IS_DEFINED(SAMDA1J15A) || SAM_PART_IS_DEFINED(SAMDA1J15B) || SAM_PART_IS_DEFINED(SAMDA1J16A) || SAM_PART_IS_DEFINED(SAMDA1J16B) )"
.LASF1671:
	.string	"SAMD09D ( SAM_PART_IS_DEFINED(SAMD09D14A) )"
.LASF460:
	.string	"UINT64_MAX (__CONCAT(INT64_MAX, U) * 2ULL + 1ULL)"
.LASF1953:
	.string	"XMEGA_A3BU_XPLAINED 27"
.LASF422:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF1879:
	.string	"pgm_read_word(address_short) pgm_read_word_near(address_short)"
.LASF1544:
	.string	"__ATTR_NORETURN__ __attribute__((__noreturn__))"
.LASF2086:
	.string	"SPI_MISO IOPORT_CREATE_PIN(PORTB, 4)"
.LASF124:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF158:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF829:
	.string	"OCR0B_7 7"
.LASF1766:
	.string	"SAME70NB ( SAM_PART_IS_DEFINED(SAME70N19B) || SAM_PART_IS_DEFINED(SAME70N20B) || SAM_PART_IS_DEFINED(SAME70N21B) )"
.LASF702:
	.string	"PIND5 5"
.LASF1570:
	.string	"UC3D4 ( AVR32_PART_IS_DEFINED(UC64D4) || AVR32_PART_IS_DEFINED(UC128D4) )"
.LASF943:
	.string	"CAL6 6"
.LASF401:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF1366:
	.string	"__LOCK_BITS_EXIST "
.LASF561:
	.string	"PRIx32 \"lx\""
.LASF212:
	.string	"__LFRACT_IBIT__ 0"
.LASF681:
	.string	"DDC0 0"
.LASF1806:
	.string	"SAMB (SAMB11)"
.LASF1182:
	.string	"TWBR1 1"
.LASF308:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1343:
	.string	"FUSE_MEMORY_SIZE 3"
.LASF665:
	.string	"PORTB1 1"
.LASF660:
	.string	"DDB5 5"
.LASF743:
	.string	"EIMSK _SFR_IO8(0x1D)"
.LASF813:
	.string	"OCR0A_0 0"
.LASF725:
	.string	"OCF0A 1"
.LASF1902:
	.string	"LE16_TO_CPU_ENDIAN(x) (x)"
.LASF788:
	.string	"TSM 7"
.LASF1957:
	.string	"RZ600 31"
.LASF272:
	.string	"__QQ_IBIT__ 0"
.LASF1927:
	.string	"Swap64(u64) ((U64)(((U64)Swap32((U64)(u64) >> 32)) | ((U64)Swap32((U64)(u64)) << 32)))"
.LASF564:
	.string	"PRIX32 \"lX\""
.LASF2081:
	.string	"TWID_SCL IOPORT_CREATE_PIN(PORTC, 5)"
.LASF456:
	.string	"INT32_MIN (-INT32_MAX - 1L)"
.LASF363:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF1193:
	.string	"TWS4 4"
.LASF1955:
	.string	"STK600_RC100X_LCDX 29"
.LASF1883:
	.string	"pgm_get_far_address(var) ({ uint_farptr_t tmp; __asm__ __volatile__( \"ldi\t%A0, lo8(%1)\" \"\\n\\t\" \"ldi\t%B0, hi8(%1)\" \"\\n\\t\" \"ldi\t%C0, hh8(%1)\" \"\\n\\t\" \"clr\t%D0\" \"\\n\\t\" : \"=d\" (tmp) : \"p\" (&(var)) ); tmp; })"
.LASF358:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF931:
	.string	"__AVR_HAVE_PRR_PRSPI "
.LASF1119:
	.string	"OCR1AH7 7"
.LASF1780:
	.string	"SAMDA1 (SAMDA1J || SAMDA1G || SAMDA1E)"
.LASF539:
	.string	"PRIxFAST8 \"x\""
.LASF893:
	.string	"BODSE 5"
.LASF1910:
	.string	"CCPU_ENDIAN_TO_LE64(x) (x)"
.LASF1934:
	.string	"EVK1105 5"
.LASF378:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF320:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF960:
	.string	"PCINT5 5"
.LASF425:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF2045:
	.string	"_GPIO_H_ "
.LASF847:
	.string	"GPIOR27 7"
.LASF223:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF1163:
	.string	"OCR2_0 0"
.LASF1794:
	.string	"SAM4E (SAM4E8 || SAM4E16)"
.LASF373:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF481:
	.string	"UINT_FAST32_MAX UINT32_MAX"
.LASF1354:
	.string	"FUSE_BOOTSZ0 (unsigned char)~_BV(1)"
.LASF921:
	.string	"PRADC 0"
.LASF1691:
	.string	"SAMHA1G ( SAM_PART_IS_DEFINED(SAMHA1G14A) || SAM_PART_IS_DEFINED(SAMHA1G15A) || SAM_PART_IS_DEFINED(SAMHA1G16A) || SAM_PART_IS_DEFINED(SAMHA1G14AB) || SAM_PART_IS_DEFINED(SAMHA1G15AB) || SAM_PART_IS_DEFINED(SAMHA1G16AB) )"
.LASF1595:
	.string	"XMEGA_D3 ( AVR8_PART_IS_DEFINED(ATxmega32D3) || AVR8_PART_IS_DEFINED(ATxmega64D3) || AVR8_PART_IS_DEFINED(ATxmega128D3) || AVR8_PART_IS_DEFINED(ATxmega192D3) || AVR8_PART_IS_DEFINED(ATxmega256D3) || AVR8_PART_IS_DEFINED(ATxmega384D3) )"
.LASF208:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF1495:
	.string	"_GCC_PTRDIFF_T "
.LASF431:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF1682:
	.string	"SAML21J ( SAM_PART_IS_DEFINED(SAML21J18A) || SAM_PART_IS_DEFINED(SAML21J16B) || SAM_PART_IS_DEFINED(SAML21J17B) || SAM_PART_IS_DEFINED(SAML21J18B) )"
.LASF873:
	.string	"ACIC 2"
.LASF1502:
	.string	"_T_SIZE_ "
.LASF131:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF708:
	.string	"DDD2 2"
.LASF754:
	.string	"GPIOR07 7"
.LASF1648:
	.ascii	"SAM4LC ( SAM_PART_IS_DEFINED(SAM4LC2A) || SAM_PA"
	.string	"RT_IS_DEFINED(SAM4LC2B) || SAM_PART_IS_DEFINED(SAM4LC2C) || SAM_PART_IS_DEFINED(SAM4LC4A) || SAM_PART_IS_DEFINED(SAM4LC4B) || SAM_PART_IS_DEFINED(SAM4LC4C) || SAM_PART_IS_DEFINED(SAM4LC8A) || SAM_PART_IS_DEFINED(SAM4LC8B) || SAM_PART_IS_DEFINED(SAM4LC8C) )"
.LASF1396:
	.string	"PIN6 6"
.LASF1081:
	.string	"TCNT1H7 7"
.LASF867:
	.string	"SPDR5 5"
.LASF673:
	.string	"PINC0 0"
.LASF487:
	.string	"UINTPTR_MAX UINT16_MAX"
.LASF1700:
	.string	"SAMC21J ( SAM_PART_IS_DEFINED(SAMC21J15A) || SAM_PART_IS_DEFINED(SAMC21J16A) || SAM_PART_IS_DEFINED(SAMC21J17A) || SAM_PART_IS_DEFINED(SAMC21J18A) )"
.LASF288:
	.string	"__UDQ_IBIT__ 0"
.LASF868:
	.string	"SPDR6 6"
.LASF233:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF1053:
	.string	"CS10 0"
.LASF773:
	.string	"EEAR0 0"
.LASF651:
	.string	"PINB5 5"
.LASF1197:
	.string	"TWAR _SFR_MEM8(0xBA)"
.LASF2088:
	.string	"CONF_BOARD_H "
.LASF978:
	.string	"PCINT22 6"
.LASF731:
	.string	"ICF1 5"
.LASF1899:
	.string	"CPU_ENDIAN_TO_LE16(x) (x)"
.LASF992:
	.string	"OCIE2B 2"
.LASF263:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF1135:
	.string	"OCR1BH4 4"
.LASF1380:
	.string	"PORT6 6"
.LASF521:
	.string	"PRIiLEAST16 \"i\""
.LASF175:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF1716:
	.string	"SAM4C32 (SAM4C32_0 || SAM4C32_1)"
.LASF877:
	.string	"ACBG 6"
.LASF1140:
	.string	"WGM20 0"
.LASF536:
	.string	"PRIuFAST8 \"u\""
.LASF1616:
	.string	"MEGA_RF (MEGA_RFA1 || MEGA_RFR2)"
.LASF542:
	.string	"PRIXFAST8 \"X\""
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF1462:
	.string	"_AVR_FUSE_H_ 1"
.LASF1514:
	.string	"__size_t "
.LASF21:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1045:
	.string	"TCCR1A _SFR_MEM8(0x80)"
.LASF1721:
	.string	"SAM4CMP16_1 ( SAM_PART_IS_DEFINED(SAM4CMP16C_1) )"
.LASF876:
	.string	"ACO 5"
.LASF1715:
	.string	"SAM4C32_1 ( SAM_PART_IS_DEFINED(SAM4C32C_1) || SAM_PART_IS_DEFINED(SAM4C32E_1) )"
.LASF1277:
	.string	"UDR0_1 1"
.LASF1480:
	.string	"_STDBOOL_H "
.LASF2120:
	.string	"ioport_direction"
.LASF502:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF1416:
	.string	"PC5 PORTC5"
.LASF1157:
	.string	"TCNT2_3 3"
.LASF1626:
	.string	"SAM3S8 ( SAM_PART_IS_DEFINED(SAM3S8B) || SAM_PART_IS_DEFINED(SAM3S8C) )"
.LASF319:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF48:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF205:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF1643:
	.string	"SAM4S16 ( SAM_PART_IS_DEFINED(SAM4S16B) || SAM_PART_IS_DEFINED(SAM4S16C) )"
.LASF759:
	.string	"EERIE 3"
.LASF1393:
	.string	"DD1 1"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF2122:
	.string	"board_init"
.LASF2061:
	.string	"gpio_pin_is_low(io_id) ioport_pin_is_low(io_id)"
.LASF833:
	.string	"GPIOR12 2"
.LASF1102:
	.string	"OCR1AL _SFR_MEM8(0x88)"
.LASF586:
	.string	"SCNi32 \"li\""
.LASF500:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF1751:
	.string	"SAMV70J ( SAM_PART_IS_DEFINED(SAMV70J19) || SAM_PART_IS_DEFINED(SAMV70J20) )"
.LASF219:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF904:
	.string	"SPMIE 7"
.LASF480:
	.string	"INT_FAST32_MIN INT32_MIN"
.LASF149:
	.string	"__DBL_MAX__ ((double)3.40282347e+38L)"
.LASF228:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF897:
	.string	"SPMEN 0"
.LASF336:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF1506:
	.string	"_BSD_SIZE_T_ "
.LASF850:
	.string	"SPR1 1"
.LASF426:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF2090:
	.string	"unsigned char"
.LASF632:
	.string	"_SFR_IO_REG_P(sfr) (_SFR_MEM_ADDR(sfr) < 0x40 + __SFR_OFFSET)"
.LASF1127:
	.string	"OCR1BL5 5"
.LASF389:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF192:
	.string	"__SFRACT_IBIT__ 0"
.LASF1236:
	.string	"FE0 4"
.LASF625:
	.string	"_SFR_MEM8(mem_addr) _MMIO_BYTE(mem_addr)"
.LASF1270:
	.string	"UBRR0H _SFR_MEM8(0xC5)"
.LASF1441:
	.string	"YL r28"
.LASF717:
	.string	"PORTD2 2"
.LASF27:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1496:
	.string	"_PTRDIFF_T_DECLARED "
.LASF712:
	.string	"DDD6 6"
.LASF1443:
	.string	"ZL r30"
.LASF2046:
	.string	"_MEGA_GPIO_H_ "
.LASF735:
	.string	"OCF2B 2"
.LASF1214:
	.string	"TWD7 7"
.LASF981:
	.string	"TOIE0 0"
.LASF129:
	.string	"__FLT_DIG__ 6"
.LASF399:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF764:
	.string	"EEDR1 1"
.LASF1548:
	.string	"labs(__i) __builtin_labs(__i)"
.LASF983:
	.string	"OCIE0B 2"
.LASF929:
	.string	"__AVR_HAVE_PRR_PRADC "
.LASF1049:
	.string	"COM1B1 5"
.LASF259:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF222:
	.string	"__LLFRACT_IBIT__ 0"
.LASF1346:
	.string	"FUSE_CKSEL2 (unsigned char)~_BV(2)"
.LASF790:
	.string	"WGM00 0"
.LASF1720:
	.string	"SAM4CMP16_0 ( SAM_PART_IS_DEFINED(SAM4CMP16C_0) )"
.LASF1583:
	.string	"XMEGA_A1 ( AVR8_PART_IS_DEFINED(ATxmega64A1) || AVR8_PART_IS_DEFINED(ATxmega128A1) )"
.LASF670:
	.string	"PORTB6 6"
.LASF937:
	.string	"CAL0 0"
.LASF1698:
	.string	"SAMC21E ( SAM_PART_IS_DEFINED(SAMC21E15A) || SAM_PART_IS_DEFINED(SAMC21E16A) || SAM_PART_IS_DEFINED(SAMC21E17A) || SAM_PART_IS_DEFINED(SAMC21E18A) )"
.LASF599:
	.string	"SCNxFAST8 \"hhx\""
.LASF216:
	.string	"__ULFRACT_FBIT__ 32"
.LASF24:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF512:
	.string	"PRIdLEAST8 \"d\""
.LASF188:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF1945:
	.string	"XMEGA_A1_XPLAINED 19"
.LASF1802:
	.string	"SAM4CP_0 (SAM4CP16_0)"
.LASF1653:
	.ascii	"SAMD21G ( SAM_PART_IS_DEFINED(SAMD21G15A) || SAM_PART_IS_DEF"
	.ascii	"INED(SAMD21G16A) || SAM_PART_IS_DEFINED(SAMD21G17A) || SAM_P"
	.ascii	"ART_IS_DEFINED(SAMD21G17AU) || SAM_PART_IS_DEFINED(SAM"
	.string	"D21G18A) || SAM_PART_IS_DEFINED(SAMD21G18AU) || SAM_PART_IS_DEFINED(SAMD21G15B) || SAM_PART_IS_DEFINED(SAMD21G16B) || SAM_PART_IS_DEFINED(SAMD21G15L) || SAM_PART_IS_DEFINED(SAMD21G16L) || SAM_PART_IS_DEFINED(SAMD21G17D) || SAM_PART_IS_DEFINED(SAMD21G17L) )"
.LASF1488:
	.string	"_PTRDIFF_T "
.LASF2064:
	.string	"gpio_set_pin_low(io_id) ioport_set_value(io_id, 0)"
.LASF1961:
	.string	"SAM3N_EK 35"
.LASF1360:
	.string	"FUSE_RSTDISBL (unsigned char)~_BV(7)"
.LASF2011:
	.string	"SAME70_XPLAINED 85"
.LASF111:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF736:
	.string	"PCIFR _SFR_IO8(0x1B)"
.LASF1739:
	.string	"SAM4CP16_1 ( SAM_PART_IS_DEFINED(SAM4CP16B_1) )"
.LASF1695:
	.string	"SAMC20E ( SAM_PART_IS_DEFINED(SAMC20E15A) || SAM_PART_IS_DEFINED(SAMC20E16A) || SAM_PART_IS_DEFINED(SAMC20E17A) || SAM_PART_IS_DEFINED(SAMC20E18A) )"
.LASF1904:
	.string	"LE64_TO_CPU_ENDIAN(x) (x)"
.LASF2040:
	.string	"SENSORS_XPLAINED_BREADBOARD 11"
.LASF1713:
	.string	"SAM4C16 (SAM4C16_0 || SAM4C16_1)"
.LASF1263:
	.string	"UBRR0_1 1"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF1722:
	.string	"SAM4CMP16 (SAM4CMP16_0 || SAM4CMP16_1)"
.LASF882:
	.string	"SM1 2"
.LASF1728:
	.string	"SAM4CMS4 (SAM4CMS4_0 || SAM4CMS4_1)"
.LASF411:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF1815:
	.string	"SAM0 (SAMD20 || SAMD21 || SAMR21 || SAMD10 || SAMD11 || SAML21 || SAMDA1 || SAMC20 || SAMC21 || SAML22 || SAMD09 || SAMR30 || SAMHA1 || SAMHA0 || SAMR34 || SAMR35 || WLR089)"
.LASF191:
	.string	"__SFRACT_FBIT__ 7"
.LASF1702:
	.string	"SAM4E16 ( SAM_PART_IS_DEFINED(SAM4E16C) || SAM_PART_IS_DEFINED(SAM4E16CB) || SAM_PART_IS_DEFINED(SAM4E16E) )"
.LASF1825:
	.string	"MSB(u16) (((uint8_t* )&u16)[1])"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF1804:
	.string	"SAM4CP (SAM4CP16)"
.LASF286:
	.string	"__USQ_IBIT__ 0"
.LASF703:
	.string	"PIND6 6"
.LASF1962:
	.string	"SAM3S_EK2 36"
.LASF944:
	.string	"CAL7 7"
.LASF525:
	.string	"PRIdFAST32 \"ld\""
.LASF1290:
	.string	"PCINT1_vect_num 4"
.LASF1853:
	.string	"PROGMEM __ATTR_PROGMEM__"
.LASF19:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF594:
	.string	"SCNu8 \"hhu\""
.LASF511:
	.string	"PRId8 \"d\""
.LASF543:
	.string	"PRIo16 \"o\""
.LASF1340:
	.string	"E2END 0x3FF"
.LASF1637:
	.string	"SAM3X8 ( SAM_PART_IS_DEFINED(SAM3X8C) || SAM_PART_IS_DEFINED(SAM3X8E) || SAM_PART_IS_DEFINED(SAM3X8H) )"
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF1183:
	.string	"TWBR2 2"
.LASF496:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF1639:
	.string	"SAM3A8 ( SAM_PART_IS_DEFINED(SAM3A8C) )"
.LASF973:
	.string	"PCINT17 1"
.LASF666:
	.string	"PORTB2 2"
.LASF1724:
	.string	"SAM4CMP32_1 ( SAM_PART_IS_DEFINED(SAM4CMP32C_1) )"
.LASF661:
	.string	"DDB6 6"
.LASF814:
	.string	"OCR0A_1 1"
.LASF1234:
	.string	"UPE0 2"
.LASF726:
	.string	"OCF0B 2"
.LASF337:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF1618:
	.string	"MEGA_XX_UN1 ( AVR8_PART_IS_DEFINED(ATmega64) || AVR8_PART_IS_DEFINED(ATmega64A) || AVR8_PART_IS_DEFINED(ATmega128) || AVR8_PART_IS_DEFINED(ATmega128A) )"
.LASF1524:
	.string	"_WCHAR_T_DEFINED_ "
.LASF954:
	.string	"PCMSK0 _SFR_MEM8(0x6B)"
.LASF1083:
	.string	"ICR1L _SFR_MEM8(0x86)"
.LASF1446:
	.string	"AVR_STATUS_ADDR _SFR_IO_ADDR(SREG)"
.LASF1676:
	.string	"SAMD11C ( SAM_PART_IS_DEFINED(SAMD11C14A) )"
.LASF787:
	.string	"PSRASY 1"
.LASF494:
	.string	"SIG_ATOMIC_MIN INT8_MIN"
.LASF102:
	.string	"__INT32_C(c) c ## L"
.LASF1212:
	.string	"TWD5 5"
.LASF1358:
	.string	"FUSE_SPIEN (unsigned char)~_BV(5)"
.LASF2001:
	.string	"SAMG55_XPLAINED_PRO 75"
.LASF2103:
	.string	"PINCRL"
.LASF1718:
	.string	"SAM4CMP8_1 ( SAM_PART_IS_DEFINED(SAM4CMP8C_1) )"
.LASF1978:
	.string	"ATMEGA256RFR2_XPLAINED_PRO 52"
.LASF90:
	.string	"__INT16_MAX__ 0x7fff"
.LASF128:
	.string	"__FLT_MANT_DIG__ 24"
.LASF515:
	.string	"PRIiLEAST8 \"i\""
.LASF961:
	.string	"PCINT6 6"
.LASF256:
	.string	"__ULACCUM_FBIT__ 32"
.LASF1064:
	.string	"TCNT1L _SFR_MEM8(0x84)"
.LASF1194:
	.string	"TWS5 5"
.LASF1646:
	.string	"SAM4SD32 ( SAM_PART_IS_DEFINED(SAM4SD32B) || SAM_PART_IS_DEFINED(SAM4SD32C) )"
.LASF1693:
	.string	"SAMHA0G ( SAM_PART_IS_DEFINED(SAMHA0G14AB) || SAM_PART_IS_DEFINED(SAMHA0G15AB) || SAM_PART_IS_DEFINED(SAMHA0G16AB) )"
.LASF1651:
	.ascii	"SAMD20E ( SAM_PART_IS_DEFIN"
	.string	"ED(SAMD20E14) || SAM_PART_IS_DEFINED(SAMD20E15) || SAM_PART_IS_DEFINED(SAMD20E16) || SAM_PART_IS_DEFINED(SAMD20E14B) || SAM_PART_IS_DEFINED(SAMD20E15B) || SAM_PART_IS_DEFINED(SAMD20E16B) || SAM_PART_IS_DEFINED(SAMD20E17) || SAM_PART_IS_DEFINED(SAMD20E18) )"
.LASF1744:
	.string	"SAMG55 ( SAM_PART_IS_DEFINED(SAMG55G18) || SAM_PART_IS_DEFINED(SAMG55G19) || SAM_PART_IS_DEFINED(SAMG55J18) || SAM_PART_IS_DEFINED(SAMG55J19) || SAM_PART_IS_DEFINED(SAMG55N19) )"
.LASF578:
	.string	"SCNdLEAST16 \"d\""
.LASF1287:
	.string	"INT1_vect _VECTOR(2)"
.LASF1986:
	.string	"SAM4L8_XPLAINED_PRO 60"
.LASF1994:
	.string	"SAM4E_XPLAINED_PRO 68"
.LASF393:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF1821:
	.string	"COMPILER_PACK_SET(alignment) "
.LASF257:
	.string	"__ULACCUM_IBIT__ 32"
.LASF572:
	.string	"SCNdLEAST8 \"hhd\""
.LASF633:
	.string	"_SFR_ADDR(sfr) _SFR_MEM_ADDR(sfr)"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF1612:
	.ascii	"MEGA_XX ( AVR8_PART_IS_DEFINED"
	.string	"(ATmega16) || AVR8_PART_IS_DEFINED(ATmega16A) || AVR8_PART_IS_DEFINED(ATmega32) || AVR8_PART_IS_DEFINED(ATmega32A) || AVR8_PART_IS_DEFINED(ATmega64) || AVR8_PART_IS_DEFINED(ATmega64A) || AVR8_PART_IS_DEFINED(ATmega128) || AVR8_PART_IS_DEFINED(ATmega128A) )"
.LASF1526:
	.string	"_WCHAR_T_H "
.LASF173:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF1886:
	.string	"PROGMEM_STRING(x) PSTR(x)"
.LASF130:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF1681:
	.string	"SAML21G ( SAM_PART_IS_DEFINED(SAML21G18A) || SAM_PART_IS_DEFINED(SAML21G16B) || SAM_PART_IS_DEFINED(SAML21G17B) || SAM_PART_IS_DEFINED(SAML21G18B) )"
.LASF674:
	.string	"PINC1 1"
.LASF1795:
	.string	"SAM4N (SAM4N8 || SAM4N16)"
.LASF486:
	.string	"INTPTR_MIN INT16_MIN"
.LASF1852:
	.string	"__ATTR_PROGMEM__ __attribute__((__progmem__))"
.LASF30:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF2112:
	.string	"arch_ioport_port_to_base"
.LASF1054:
	.string	"CS11 1"
.LASF112:
	.string	"__UINT64_C(c) c ## ULL"
.LASF774:
	.string	"EEAR1 1"
.LASF652:
	.string	"PINB6 6"
.LASF1846:
	.string	"cpu_irq_is_enabled() cpu_irq_is_enabled_flags(SREG)"
.LASF127:
	.string	"__FLT_RADIX__ 2"
.LASF979:
	.string	"PCINT23 7"
.LASF323:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF273:
	.string	"__HQ_FBIT__ 15"
.LASF1699:
	.string	"SAMC21G ( SAM_PART_IS_DEFINED(SAMC21G15A) || SAM_PART_IS_DEFINED(SAMC21G16A) || SAM_PART_IS_DEFINED(SAMC21G17A) || SAM_PART_IS_DEFINED(SAMC21G18A) )"
.LASF1016:
	.string	"ADPS2 2"
.LASF1136:
	.string	"OCR1BH5 5"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF1660:
	.string	"SAMR30E ( SAM_PART_IS_DEFINED(SAMR30E18A) )"
.LASF744:
	.string	"INT0 0"
.LASF2000:
	.string	"SAMD11_XPLAINED_PRO 74"
.LASF616:
	.string	"SCNxLEAST32 \"lx\""
.LASF1141:
	.string	"WGM21 1"
.LASF1793:
	.string	"SAMC21 (SAMC21J || SAMC21G || SAMC21E)"
.LASF1851:
	.string	"__PGMSPACE_H_ 1"
.LASF1201:
	.string	"TWA2 3"
.LASF517:
	.string	"PRId16 \"d\""
.LASF361:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF85:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF786:
	.string	"PSRSYNC 0"
.LASF1403:
	.string	"PB0 PORTB0"
.LASF781:
	.string	"EEARH _SFR_IO8(0x22)"
.LASF302:
	.string	"__USA_IBIT__ 16"
.LASF245:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF1635:
	.string	"SAM3N4 ( SAM_PART_IS_DEFINED(SAM3N4A) || SAM_PART_IS_DEFINED(SAM3N4B) || SAM_PART_IS_DEFINED(SAM3N4C) )"
.LASF628:
	.string	"_SFR_IO8(io_addr) _MMIO_BYTE((io_addr) + __SFR_OFFSET)"
.LASF254:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF1777:
	.string	"SAMD09 (SAMD09C || SAMD09D)"
.LASF1278:
	.string	"UDR0_2 2"
.LASF714:
	.string	"PORTD _SFR_IO8(0x0B)"
.LASF952:
	.string	"ISC10 2"
.LASF1011:
	.string	"ADCH6 6"
.LASF1569:
	.string	"UC3D3 ( AVR32_PART_IS_DEFINED(UC64D3) || AVR32_PART_IS_DEFINED(UC128D3) )"
.LASF1158:
	.string	"TCNT2_4 4"
.LASF176:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF1422:
	.string	"PD4 PORTD4"
.LASF1275:
	.string	"UDR0 _SFR_MEM8(0xC6)"
.LASF1359:
	.string	"FUSE_DWEN (unsigned char)~_BV(6)"
.LASF1356:
	.string	"FUSE_EESAVE (unsigned char)~_BV(3)"
.LASF1807:
	.string	"SAMV71 (SAMV71J || SAMV71N || SAMV71Q || SAMV71JB || SAMV71NB || SAMV71QB)"
.LASF1999:
	.string	"ATPL230AMB 73"
.LASF1958:
	.string	"SAM3S_EK 32"
.LASF1392:
	.string	"DD2 2"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF834:
	.string	"GPIOR13 3"
.LASF1650:
	.ascii	"SAMD20G ( SAM_PART_IS_DEFINED(SAMD20G14) || SAM_PART_IS_DEFI"
	.ascii	"NED(SAMD20G15) || SAM_PART_IS_DEFINED"
	.string	"(SAMD20G16) || SAM_PART_IS_DEFINED(SAMD20G14B) || SAM_PART_IS_DEFINED(SAMD20G15B) || SAM_PART_IS_DEFINED(SAMD20G16B) || SAM_PART_IS_DEFINED(SAMD20G17) || SAM_PART_IS_DEFINED(SAMD20G17U) || SAM_PART_IS_DEFINED(SAMD20G18) || SAM_PART_IS_DEFINED(SAMD20G18U) )"
.LASF1026:
	.string	"ACME 6"
.LASF351:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF1707:
	.string	"SAM4C4 (SAM4C4_0 || SAM4C4_1)"
.LASF1679:
	.string	"SAMD11DU ( SAM_PART_IS_DEFINED(SAMD11D14AU) )"
.LASF1769:
	.string	"SAM3S (SAM3S1 || SAM3S2 || SAM3S4 || SAM3S8 || SAM3SD8)"
.LASF963:
	.string	"PCMSK1 _SFR_MEM8(0x6C)"
.LASF2052:
	.string	"IOPORT_PORTB 1"
.LASF1613:
	.string	"MEGA_XX_A ( AVR8_PART_IS_DEFINED(ATmega16A) || AVR8_PART_IS_DEFINED(ATmega32A) || AVR8_PART_IS_DEFINED(ATmega64A) || AVR8_PART_IS_DEFINED(ATmega128A) )"
.LASF482:
	.string	"INT_FAST64_MAX INT64_MAX"
.LASF1470:
	.string	"LB_MODE_3 (0xFC)"
.LASF287:
	.string	"__UDQ_FBIT__ 64"
.LASF1908:
	.string	"CCPU_ENDIAN_TO_LE16(x) (x)"
.LASF1344:
	.string	"FUSE_CKSEL0 (unsigned char)~_BV(0)"
.LASF1871:
	.string	"__LPM_dword(addr) __LPM_dword_enhanced__(addr)"
.LASF1411:
	.string	"PC0 PORTC0"
.LASF1432:
	.string	"SREG_Z (1)"
.LASF899:
	.string	"PGWRT 2"
.LASF402:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF1468:
	.string	"LB_MODE_1 (0xFF)"
.LASF100:
	.string	"__INT16_C(c) c"
.LASF1404:
	.string	"PB1 PORTB1"
.LASF718:
	.string	"PORTD3 3"
.LASF713:
	.string	"DDD7 7"
.LASF1873:
	.string	"pgm_read_byte_near(address_short) __LPM((uint16_t)(address_short))"
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 0x7f"
.LASF1020:
	.string	"ADSC 6"
.LASF1847:
	.string	"Enable_global_interrupt() cpu_irq_enable()"
.LASF985:
	.string	"TOIE1 0"
.LASF1634:
	.string	"SAM3N2 ( SAM_PART_IS_DEFINED(SAM3N2A) || SAM_PART_IS_DEFINED(SAM3N2B) || SAM_PART_IS_DEFINED(SAM3N2C) )"
.LASF1469:
	.string	"LB_MODE_2 (0xFE)"
.LASF1895:
	.string	"FUNC_PTR void *"
.LASF203:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF1998:
	.string	"SAM4CMS_DB 72"
.LASF1889:
	.string	"PROGMEM_PTR_T const *"
.LASF1368:
	.string	"__BOOT_LOCK_BITS_1_EXIST "
.LASF1571:
	.string	"UC3L0 ( AVR32_PART_IS_DEFINED(UC3L016) || AVR32_PART_IS_DEFINED(UC3L032) || AVR32_PART_IS_DEFINED(UC3L064) )"
.LASF471:
	.string	"INT_LEAST64_MIN INT64_MIN"
.LASF563:
	.string	"PRIxFAST32 \"lx\""
.LASF1003:
	.string	"ADCL7 7"
.LASF317:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF791:
	.string	"WGM01 1"
.LASF1963:
	.string	"SAM4S_EK 37"
.LASF1840:
	.string	"ISR_BLOCK "
.LASF935:
	.string	"__AVR_HAVE_PRR_PRTWI "
.LASF428:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF283:
	.string	"__UHQ_FBIT__ 16"
.LASF2091:
	.string	"uint8_t"
.LASF2082:
	.string	"USART_RX IOPORT_CREATE_PIN(PORTD, 0)"
.LASF1302:
	.string	"TIMER1_CAPT_vect_num 10"
.LASF501:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF1321:
	.string	"USART_UDRE_vect _VECTOR(19)"
.LASF2108:
	.string	"port_pin_flags_t"
.LASF477:
	.string	"INT_FAST16_MIN INT16_MIN"
.LASF1418:
	.string	"PD0 PORTD0"
.LASF1551:
	.string	"DTOSTR_ALWAYS_SIGN 0x01"
.LASF2110:
	.string	"pin_mask"
.LASF996:
	.string	"ADCL0 0"
.LASF186:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF1249:
	.string	"UCSR0C _SFR_MEM8(0xC2)"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fff"
.LASF2118:
	.string	"../src/ASF/mega/boards/atmega328p_xplained_mini/init.c"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF1832:
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
.LASF1357:
	.string	"FUSE_WDTON (unsigned char)~_BV(4)"
.LASF1412:
	.string	"PC1 PORTC1"
.LASF2070:
	.string	"gpio_toggle_pin_group(port_id,mask) ioport_tgl_group(port_id, mask)"
.LASF794:
	.string	"COM0A0 6"
.LASF331:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF1752:
	.string	"SAMV70JB ( SAM_PART_IS_DEFINED(SAMV70J19B) || SAM_PART_IS_DEFINED(SAMV70J20B) )"
.LASF995:
	.string	"ADCL _SFR_MEM8(0x78)"
.LASF796:
	.string	"TCCR0B _SFR_IO8(0x25)"
.LASF345:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF647:
	.string	"PINB1 1"
.LASF1405:
	.string	"PB2 PORTB2"
.LASF1942:
	.string	"STK600_RCUC3D 16"
.LASF414:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF1264:
	.string	"UBRR0_2 2"
.LASF950:
	.string	"ISC00 0"
.LASF451:
	.string	"UINT8_MAX (INT8_MAX * 2 + 1)"
.LASF577:
	.string	"SCNd16 \"d\""
.LASF1829:
	.string	"_AVR_INTERRUPT_H_ "
.LASF883:
	.string	"SM2 3"
.LASF1703:
	.string	"SAM4N8 ( SAM_PART_IS_DEFINED(SAM4N8A) || SAM_PART_IS_DEFINED(SAM4N8B) || SAM_PART_IS_DEFINED(SAM4N8C) )"
.LASF1445:
	.string	"AVR_STATUS_REG SREG"
.LASF1586:
	.string	"XMEGA_A4 ( AVR8_PART_IS_DEFINED(ATxmega16A4) || AVR8_PART_IS_DEFINED(ATxmega32A4) )"
.LASF1600:
	.string	"XMEGA_B (XMEGA_B1 || XMEGA_B3)"
.LASF1224:
	.string	"TWAM0 0"
.LASF1529:
	.string	"_GCC_WCHAR_T "
.LASF1564:
	.string	"UC3B0 ( AVR32_PART_IS_DEFINED(UC3B064) || AVR32_PART_IS_DEFINED(UC3B0128) || AVR32_PART_IS_DEFINED(UC3B0256) || AVR32_PART_IS_DEFINED(UC3B0512) )"
.LASF1896:
	.string	"FLASH_DECLARE(x) const x __attribute__((__progmem__))"
.LASF2084:
	.string	"SPI_SS_A IOPORT_CREATE_PIN(PORTB, 2)"
.LASF1511:
	.string	"___int_size_t_h "
.LASF1023:
	.string	"ADTS0 0"
.LASF704:
	.string	"PIND7 7"
.LASF397:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF1578:
	.string	"UC3B (UC3B0 || UC3B1)"
.LASF350:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF391:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF642:
	.string	"loop_until_bit_is_clear(sfr,bit) do { } while (bit_is_set(sfr, bit))"
.LASF574:
	.string	"SCNi8 \"hhi\""
.LASF1444:
	.string	"ZH r31"
.LASF201:
	.string	"__FRACT_FBIT__ 15"
.LASF1219:
	.string	"TWSTO 4"
.LASF683:
	.string	"DDC2 2"
.LASF1593:
	.string	"XMEGA_C3 ( AVR8_PART_IS_DEFINED(ATxmega384C3) || AVR8_PART_IS_DEFINED(ATxmega256C3) || AVR8_PART_IS_DEFINED(ATxmega192C3) || AVR8_PART_IS_DEFINED(ATxmega128C3) || AVR8_PART_IS_DEFINED(ATxmega64C3) || AVR8_PART_IS_DEFINED(ATxmega32C3) )"
.LASF445:
	.string	"__STDINT_H_ "
.LASF1184:
	.string	"TWBR3 3"
.LASF1539:
	.string	"__need_size_t "
.LASF1186:
	.string	"TWBR5 5"
.LASF667:
	.string	"PORTB3 3"
.LASF626:
	.string	"_SFR_MEM16(mem_addr) _MMIO_WORD(mem_addr)"
.LASF91:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF662:
	.string	"DDB7 7"
.LASF1487:
	.string	"_ANSI_STDDEF_H "
.LASF815:
	.string	"OCR0A_2 2"
.LASF1419:
	.string	"PD1 PORTD1"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF1771:
	.string	"SAM3N (SAM3N00 || SAM3N0 || SAM3N1 || SAM3N2 || SAM3N4)"
.LASF1531:
	.string	"_BSD_WCHAR_T_"
.LASF394:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF1784:
	.string	"SAMR21 (SAMR21G || SAMR21E)"
.LASF1599:
	.string	"XMEGA_AU (XMEGA_A1U || XMEGA_A3U || XMEGA_A3BU || XMEGA_A4U)"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF321:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1413:
	.string	"PC2 PORTC2"
.LASF1505:
	.string	"_SIZE_T_ "
.LASF1039:
	.string	"ADC3D 3"
.LASF1885:
	.string	"PROGMEM_DECLARE(type,name) const type name __attribute__((__progmem__))"
.LASF420:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF235:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF1195:
	.string	"TWS6 6"
.LASF1406:
	.string	"PB3 PORTB3"
.LASF1515:
	.string	"__need_size_t"
.LASF1672:
	.string	"SAMD10C ( SAM_PART_IS_DEFINED(SAMD10C12A) || SAM_PART_IS_DEFINED(SAMD10C13A) || SAM_PART_IS_DEFINED(SAMD10C14A) )"
.LASF229:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF359:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF1906:
	.string	"CLE32_TO_CPU_ENDIAN(x) (x)"
.LASF290:
	.string	"__UTQ_IBIT__ 0"
.LASF1773:
	.string	"SAM4S (SAM4S2 || SAM4S4 || SAM4S8 || SAM4S16 || SAM4SA16 || SAM4SD16 || SAM4SD32)"
.LASF1351:
	.string	"FUSE_CKDIV8 (unsigned char)~_BV(7)"
.LASF291:
	.string	"__HA_FBIT__ 7"
.LASF962:
	.string	"PCINT7 7"
.LASF606:
	.string	"SCNx16 \"x\""
.LASF248:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF115:
	.string	"__INT_FAST32_MAX__ 0x7fffffffL"
.LASF68:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF1928:
	.string	"nop() do { __asm__ __volatile__ (\"nop\"); } while (0)"
.LASF555:
	.string	"PRIo32 \"lo\""
.LASF1467:
	.string	"LOCKBITS unsigned char __lock LOCKMEM"
.LASF377:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF1216:
	.string	"TWIE 0"
.LASF187:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF1315:
	.string	"TIMER0_OVF_vect _VECTOR(16)"
.LASF1364:
	.string	"FUSE_BODLEVEL2 (unsigned char)~_BV(2)"
.LASF588:
	.string	"SCNiFAST32 \"li\""
.LASF1330:
	.string	"TWI_vect_num 24"
.LASF1830:
	.string	"__STRINGIFY(x) #x"
.LASF8:
	.string	"__VERSION__ \"5.4.0\""
.LASF210:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF1770:
	.string	"SAM3U (SAM3U1 || SAM3U2 || SAM3U4)"
.LASF177:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF1656:
	.string	"SAMD21EXXL ( SAM_PART_IS_DEFINED(SAMD21E15L) || SAM_PART_IS_DEFINED(SAMD21E16L) || SAM_PART_IS_DEFINED(SAMD21E17L) )"
.LASF141:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF2117:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g3 -O1 -std=gnu99 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF510:
	.string	"_GCC_WRAP_STDINT_H "
.LASF2076:
	.string	"LED0_GPIO IOPORT_CREATE_PIN(PORTB, 5)"
.LASF608:
	.string	"SCNxFAST16 \"x\""
.LASF874:
	.string	"ACIE 3"
.LASF1940:
	.string	"UC3_A3_XPLAINED 13"
.LASF738:
	.string	"PCIF1 1"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF1238:
	.string	"TXC0 6"
.LASF645:
	.string	"PINB _SFR_IO8(0x03)"
.LASF1420:
	.string	"PD2 PORTD2"
.LASF602:
	.string	"SCNoFAST16 \"o\""
.LASF889:
	.string	"MCUCR _SFR_IO8(0x35)"
.LASF1113:
	.string	"OCR1AH1 1"
.LASF869:
	.string	"SPDR7 7"
.LASF675:
	.string	"PINC2 2"
.LASF1717:
	.string	"SAM4CMP8_0 ( SAM_PART_IS_DEFINED(SAM4CMP8C_0) )"
.LASF1458:
	.string	"__AVR_LIBC_DATE_ 20150208UL"
.LASF1954:
	.string	"STK600_RC064X_LCDX 28"
.LASF1414:
	.string	"PC3 PORTC3"
.LASF990:
	.string	"TOIE2 0"
.LASF1146:
	.string	"TCCR2B _SFR_MEM8(0xB1)"
.LASF593:
	.string	"SCNoFAST8 \"hho\""
.LASF264:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF775:
	.string	"EEAR2 2"
.LASF805:
	.string	"TCNT0_1 1"
.LASF161:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF541:
	.string	"PRIXLEAST8 \"X\""
.LASF29:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF1859:
	.string	"__LPM_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm %0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF1137:
	.string	"OCR1BH6 6"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF1395:
	.string	"PIN7 7"
.LASF853:
	.string	"MSTR 4"
.LASF745:
	.string	"INT1 1"
.LASF270:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF2031:
	.string	"MC300 2"
.LASF1901:
	.string	"CPU_ENDIAN_TO_LE64(x) (x)"
.LASF241:
	.string	"__ACCUM_FBIT__ 15"
.LASF1150:
	.string	"WGM22 3"
.LASF560:
	.string	"PRIuFAST32 \"lu\""
.LASF1948:
	.string	"UC3_L0_XPLAINED_BC 22"
.LASF1202:
	.string	"TWA3 4"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF137:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF284:
	.string	"__UHQ_IBIT__ 0"
.LASF110:
	.string	"__UINT32_C(c) c ## UL"
.LASF627:
	.string	"_SFR_MEM32(mem_addr) _MMIO_DWORD(mem_addr)"
.LASF506:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF1848:
	.string	"Disable_global_interrupt() cpu_irq_disable()"
.LASF1694:
	.string	"SAMHA0E ( SAM_PART_IS_DEFINED(SAMHA0E14AB) || SAM_PART_IS_DEFINED(SAMHA0E15AB) || SAM_PART_IS_DEFINED(SAMHA0E16AB) )"
.LASF1348:
	.string	"FUSE_SUT0 (unsigned char)~_BV(4)"
.LASF1858:
	.string	"__LPM_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint8_t __result; __asm__ ( \"ld %0, z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF1410:
	.string	"PB7 PORTB7"
.LASF1279:
	.string	"UDR0_3 3"
.LASF1919:
	.string	"convert_32_bit_to_byte_array(value,data) ((*(uint32_t *)(data)) = (uint32_t)(value))"
.LASF1574:
	.string	"UC3L3 ( AVR32_PART_IS_DEFINED(UC64L3U) || AVR32_PART_IS_DEFINED(UC128L3U) || AVR32_PART_IS_DEFINED(UC256L3U) )"
.LASF953:
	.string	"ISC11 3"
.LASF1246:
	.string	"UDRIE0 5"
.LASF1012:
	.string	"ADCH7 7"
.LASF242:
	.string	"__ACCUM_IBIT__ 16"
.LASF639:
	.string	"bit_is_set(sfr,bit) (_SFR_BYTE(sfr) & _BV(bit))"
.LASF1581:
	.string	"UC3L (UC3L0 || UC3L0128 || UC3L0256 || UC3L3_L4)"
.LASF1993:
	.string	"SAM4CP16BMB 67"
.LASF1545:
	.string	"__ATTR_PURE__ __attribute__((__pure__))"
.LASF1836:
	.string	"EMPTY_INTERRUPT(vector) void vector (void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void) { __asm__ __volatile__ (\"reti\" ::); }"
.LASF932:
	.string	"__AVR_HAVE_PRR_PRTIM1 "
.LASF338:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF1391:
	.string	"DD3 3"
.LASF439:
	.string	"_BOARD_H_ "
.LASF1250:
	.string	"UCPOL0 0"
.LASF835:
	.string	"GPIOR14 4"
.LASF640:
	.string	"bit_is_clear(sfr,bit) (!(_SFR_BYTE(sfr) & _BV(bit)))"
.LASF1101:
	.string	"OCR1A _SFR_MEM16(0x88)"
.LASF1374:
	.string	"SLEEP_MODE_PWR_DOWN (0x02<<1)"
.LASF610:
	.string	"SCNoLEAST32 \"lo\""
.LASF1093:
	.string	"ICR1H0 0"
.LASF750:
	.string	"GPIOR03 3"
.LASF1239:
	.string	"RXC0 7"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF2053:
	.string	"IOPORT_PORTC 2"
.LASF1749:
	.string	"SAMV71Q ( SAM_PART_IS_DEFINED(SAMV71Q19) || SAM_PART_IS_DEFINED(SAMV71Q20) || SAM_PART_IS_DEFINED(SAMV71Q21) )"
.LASF830:
	.string	"GPIOR1 _SFR_IO8(0x2A)"
.LASF234:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF1152:
	.string	"FOC2A 7"
.LASF1371:
	.string	"SIGNATURE_2 0x0F"
.LASF491:
	.string	"PTRDIFF_MAX INT16_MAX"
.LASF1129:
	.string	"OCR1BL7 7"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF2048:
	.string	"IOPORT_MEGA_RF_H "
.LASF416:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF719:
	.string	"PORTD4 4"
.LASF1951:
	.string	"STK600_RCUC3B0 25"
.LASF204:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF1332:
	.string	"SPM_READY_vect_num 25"
.LASF1296:
	.string	"TIMER2_COMPA_vect_num 7"
.LASF1822:
	.string	"__always_inline inline __attribute__((__always_inline__))"
.LASF123:
	.string	"__GCC_IEC_559 0"
.LASF1594:
	.string	"XMEGA_C4 ( AVR8_PART_IS_DEFINED(ATxmega32C4) || AVR8_PART_IS_DEFINED(ATxmega16C4) )"
.LASF766:
	.string	"EEDR3 3"
.LASF1103:
	.string	"OCR1AL0 0"
.LASF207:
	.string	"__UFRACT_IBIT__ 0"
.LASF1308:
	.string	"TIMER1_OVF_vect_num 13"
.LASF1725:
	.string	"SAM4CMP32 (SAM4CMP32_0 || SAM4CMP32_1)"
.LASF2077:
	.string	"LED0 LED0_GPIO"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF2087:
	.string	"SPI_SCK IOPORT_CREATE_PIN(PORTB, 5)"
.LASF1372:
	.string	"SLEEP_MODE_IDLE (0x00<<1)"
.LASF800:
	.string	"WGM02 3"
.LASF1198:
	.string	"TWGCE 0"
.LASF671:
	.string	"PORTB7 7"
.LASF727:
	.string	"TIFR1 _SFR_IO8(0x16)"
.LASF1386:
	.string	"PORT0 0"
.LASF1827:
	.string	"UTILS_INTERRUPT_H "
.LASF922:
	.string	"PRUSART0 1"
.LASF852:
	.string	"CPOL 3"
.LASF464:
	.string	"INT_LEAST16_MAX INT16_MAX"
.LASF1433:
	.string	"SREG_N (2)"
.LASF1516:
	.string	"__wchar_t__ "
.LASF356:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF915:
	.string	"CLKPS0 0"
.LASF598:
	.string	"SCNxLEAST8 \"hhx\""
.LASF1530:
	.string	"_WCHAR_T_DECLARED "
.LASF1139:
	.string	"TCCR2A _SFR_MEM8(0xB0)"
.LASF1714:
	.string	"SAM4C32_0 ( SAM_PART_IS_DEFINED(SAM4C32C_0) || SAM_PART_IS_DEFINED(SAM4C32E_0) )"
.LASF1589:
	.string	"XMEGA_A3BU ( AVR8_PART_IS_DEFINED(ATxmega256A3BU) )"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF912:
	.string	"WDIE 6"
.LASF1225:
	.string	"TWAM1 1"
.LASF1937:
	.string	"XPLAIN 8"
.LASF795:
	.string	"COM0A1 7"
.LASF949:
	.string	"EICRA _SFR_MEM8(0x69)"
.LASF1604:
	.string	"XMEGA (XMEGA_A || XMEGA_AU || XMEGA_B || XMEGA_C || XMEGA_D || XMEGA_E)"
.LASF1320:
	.string	"USART_UDRE_vect_num 19"
.LASF1658:
	.string	"SAMR21E ( SAM_PART_IS_DEFINED(SAMR21E16A) || SAM_PART_IS_DEFINED(SAMR21E17A) || SAM_PART_IS_DEFINED(SAMR21E18A) || SAM_PART_IS_DEFINED(SAMR21E19A) )"
.LASF70:
	.string	"__GXX_ABI_VERSION 1009"
.LASF122:
	.string	"__UINTPTR_MAX__ 0xffffU"
.LASF1065:
	.string	"TCNT1L0 0"
.LASF1641:
	.string	"SAM4S4 ( SAM_PART_IS_DEFINED(SAM4S4A) || SAM_PART_IS_DEFINED(SAM4S4B) || SAM_PART_IS_DEFINED(SAM4S4C) )"
.LASF945:
	.string	"PCICR _SFR_MEM8(0x68)"
.LASF47:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF59:
	.string	"__INT_FAST16_TYPE__ int"
.LASF903:
	.string	"RWWSB 6"
.LASF1265:
	.string	"UBRR0_3 3"
.LASF1874:
	.string	"pgm_read_word_near(address_short) __LPM_word((uint16_t)(address_short))"
.LASF613:
	.string	"SCNuLEAST32 \"lu\""
.LASF2032:
	.string	"SENSORS_XPLAINED_INERTIAL_1 3"
.LASF527:
	.string	"PRIiLEAST32 \"li\""
.LASF1789:
	.string	"SAMB11 (SAMB11G || BTLC1000)"
.LASF495:
	.string	"SIZE_MAX UINT16_MAX"
.LASF1857:
	.string	"__LPM_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) : \"r0\" ); __result; }))"
.LASF2008:
	.string	"ATMEGA328P_XPLAINED_MINI 82"
.LASF802:
	.string	"FOC0A 7"
.LASF1024:
	.string	"ADTS1 1"
.LASF1142:
	.string	"COM2B0 4"
.LASF1033:
	.string	"REFS0 6"
.LASF1824:
	.string	"Assert(expr) ((void) 0)"
.LASF1882:
	.string	"pgm_read_ptr(address_short) pgm_read_ptr_near(address_short)"
.LASF1603:
	.string	"XMEGA_E (XMEGA_E5)"
.LASF1575:
	.string	"UC3L4 ( AVR32_PART_IS_DEFINED(UC64L4U) || AVR32_PART_IS_DEFINED(UC128L4U) || AVR32_PART_IS_DEFINED(UC256L4U) )"
.LASF684:
	.string	"DDC3 3"
.LASF1185:
	.string	"TWBR4 4"
.LASF453:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF668:
	.string	"PORTB4 4"
.LASF1388:
	.string	"DD6 6"
.LASF1710:
	.string	"SAM4C8 (SAM4C8_0 || SAM4C8_1)"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1032:
	.string	"ADLAR 5"
.LASF816:
	.string	"OCR0A_3 3"
.LASF1941:
	.string	"UC3_L0_XPLAINED 15"
.LASF1537:
	.string	"_STDLIB_H_ 1"
.LASF691:
	.string	"PORTC2 2"
.LASF1518:
	.string	"_WCHAR_T "
.LASF1362:
	.string	"FUSE_BODLEVEL0 (unsigned char)~_BV(0)"
.LASF1903:
	.string	"LE32_TO_CPU_ENDIAN(x) (x)"
.LASF211:
	.string	"__LFRACT_FBIT__ 31"
.LASF347:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF2114:
	.string	"arch_ioport_pin_to_mask"
.LASF265:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF1582:
	.string	"UC3 (UC3A || UC3B || UC3C || UC3D || UC3L)"
.LASF239:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF1828:
	.string	"UTILS_INTERRUPT_INTERRUPT_H "
.LASF1196:
	.string	"TWS7 7"
.LASF89:
	.string	"__INT8_MAX__ 0x7f"
.LASF390:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF1369:
	.string	"SIGNATURE_0 0x1E"
.LASF1522:
	.string	"_WCHAR_T_ "
.LASF101:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF1952:
	.string	"UC3_L0_QT600 26"
.LASF1010:
	.string	"ADCH5 5"
.LASF1863:
	.ascii	"__LPM_dword_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile"
	.ascii	"__ ( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF964:
	.string	"PCINT8 0"
.LASF1001:
	.string	"ADCL5 5"
.LASF1887:
	.string	"PROGMEM_STRING_T PGM_P"
.LASF240:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF1063:
	.string	"TCNT1 _SFR_MEM16(0x84)"
.LASF817:
	.string	"OCR0A_4 4"
.LASF1622:
	.string	"MEGA (MEGA_XX0_1 || MEGA_XX4 || MEGA_XX8 || MEGA_XX || MEGA_RF || MEGA_UNSPECIFIED)"
.LASF200:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF84:
	.string	"__INTMAX_C(c) c ## LL"
.LASF253:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF1935:
	.string	"STK600_RCUC3L0 6"
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF880:
	.string	"SE 0"
.LASF1686:
	.string	"SAML22G ( SAM_PART_IS_DEFINED(SAML22G16A) || SAM_PART_IS_DEFINED(SAML22G17A) || SAM_PART_IS_DEFINED(SAML22G18A) )"
.LASF534:
	.string	"PRIu8 \"u\""
.LASF1960:
	.string	"SAM3X_EK 34"
.LASF478:
	.string	"UINT_FAST16_MAX UINT16_MAX"
.LASF739:
	.string	"PCIF2 2"
.LASF822:
	.string	"OCR0B_0 0"
.LASF114:
	.string	"__INT_FAST16_MAX__ 0x7fff"
.LASF1708:
	.string	"SAM4C8_0 ( SAM_PART_IS_DEFINED(SAM4C8C_0) )"
.LASF162:
	.string	"__DECIMAL_DIG__ 9"
.LASF1947:
	.string	"STK600_RCUC3L4 21"
.LASF967:
	.string	"PCINT11 3"
.LASF1291:
	.string	"PCINT1_vect _VECTOR(4)"
.LASF760:
	.string	"EEPM0 4"
.LASF409:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF676:
	.string	"PINC3 3"
.LASF2007:
	.string	"SAMV71_XPLAINED_ULTRA 81"
.LASF484:
	.string	"UINT_FAST64_MAX UINT64_MAX"
.LASF1164:
	.string	"OCR2_1 1"
.LASF776:
	.string	"EEAR3 3"
.LASF806:
	.string	"TCNT0_2 2"
.LASF624:
	.string	"__SFR_OFFSET 0x20"
.LASF1608:
	.ascii	"MEGA_XX4 ( AVR8_PART_IS_DEFINED(ATmega164A) || AVR8_PART_IS_"
	.ascii	"DEFINED(ATmega164PA) || AVR8_PART_IS_DEFINED(ATmega324A) || "
	.string	"AVR8_PART_IS_DEFINED(ATmega324PA) || AVR8_PART_IS_DEFINED(ATmega324PB) || AVR8_PART_IS_DEFINED(ATmega644) || AVR8_PART_IS_DEFINED(ATmega644A) || AVR8_PART_IS_DEFINED(ATmega644PA) || AVR8_PART_IS_DEFINED(ATmega1284P) || AVR8_PART_IS_DEFINED(ATmega128RFA1) )"
.LASF540:
	.string	"PRIX8 \"X\""
.LASF1972:
	.string	"STK600_MEGA_RF 46"
.LASF1138:
	.string	"OCR1BH7 7"
.LASF984:
	.string	"TIMSK1 _SFR_MEM8(0x6F)"
.LASF742:
	.string	"INTF1 1"
.LASF1633:
	.string	"SAM3N1 ( SAM_PART_IS_DEFINED(SAM3N1A) || SAM_PART_IS_DEFINED(SAM3N1B) || SAM_PART_IS_DEFINED(SAM3N1C) )"
.LASF276:
	.string	"__SQ_IBIT__ 0"
.LASF424:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF2025:
	.string	"SAMB11ZR_SENSOR_TAG 101"
.LASF1566:
	.string	"UC3C0 ( AVR32_PART_IS_DEFINED(UC3C064C) || AVR32_PART_IS_DEFINED(UC3C0128C) || AVR32_PART_IS_DEFINED(UC3C0256C) || AVR32_PART_IS_DEFINED(UC3C0512C) )"
.LASF1617:
	.string	"MEGA_XX_UN0 ( AVR8_PART_IS_DEFINED(ATmega16) || AVR8_PART_IS_DEFINED(ATmega16A) || AVR8_PART_IS_DEFINED(ATmega32) || AVR8_PART_IS_DEFINED(ATmega32A) )"
.LASF1200:
	.string	"TWA1 2"
.LASF1203:
	.string	"TWA4 5"
.LASF1455:
	.string	"__AVR_LIBC_VERSION_STRING__ \"2.0.0\""
.LASF1436:
	.string	"SREG_H (5)"
.LASF1314:
	.string	"TIMER0_OVF_vect_num 16"
.LASF1176:
	.string	"OCR2AUB 3"
.LASF1248:
	.string	"RXCIE0 7"
.LASF1831:
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
.LASF864:
	.string	"SPDR2 2"
.LASF580:
	.string	"SCNi16 \"i\""
.LASF1345:
	.string	"FUSE_CKSEL1 (unsigned char)~_BV(1)"
.LASF514:
	.string	"PRIi8 \"i\""
.LASF2024:
	.string	"DUMMY_BOARD 100"
.LASF1041:
	.string	"ADC5D 5"
.LASF551:
	.string	"PRIxFAST16 \"x\""
.LASF171:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF362:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF638:
	.string	"_VECTOR(N) __vector_ ## N"
.LASF193:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF553:
	.string	"PRIXLEAST16 \"X\""
.LASF1980:
	.string	"SAM4L_XPLAINED_PRO 54"
.LASF251:
	.string	"__LACCUM_FBIT__ 31"
.LASF545:
	.string	"PRIoFAST16 \"o\""
.LASF258:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF2054:
	.string	"IOPORT_PORTD 3"
.LASF1160:
	.string	"TCNT2_6 6"
.LASF1244:
	.string	"TXEN0 3"
.LASF340:
	.string	"__WITH_AVRLIBC__ 1"
.LASF168:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF933:
	.string	"__AVR_HAVE_PRR_PRTIM0 "
.LASF1452:
	.string	"AVR_STACK_POINTER_LO_REG SPL"
.LASF1098:
	.string	"ICR1H5 5"
.LASF1390:
	.string	"DD4 4"
.LASF1808:
	.string	"SAMV71B (SAMV71JB || SAMV71NB || SAMV71QB)"
.LASF1850:
	.string	"UTILS_PROGMEM_H "
.LASF836:
	.string	"GPIOR15 5"
.LASF1350:
	.string	"FUSE_CKOUT (unsigned char)~_BV(6)"
.LASF894:
	.string	"BODS 6"
.LASF268:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF2098:
	.string	"uintptr_t"
.LASF182:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF1365:
	.string	"EFUSE_DEFAULT (0xFF)"
.LASF1535:
	.string	"__need_NULL"
.LASF1019:
	.string	"ADATE 5"
.LASF1151:
	.string	"FOC2B 6"
.LASF1991:
	.string	"RCB256RFR2_XPRO 65"
.LASF653:
	.string	"PINB7 7"
.LASF1074:
	.string	"TCNT1H0 0"
.LASF1546:
	.string	"__ATTR_GNU_INLINE__ __attribute__((__gnu_inline__))"
.LASF172:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF415:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF121:
	.string	"__INTPTR_MAX__ 0x7fff"
.LASF357:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF1792:
	.string	"SAMC20 (SAMC20J || SAMC20G || SAMC20E)"
.LASF576:
	.string	"SCNiFAST8 \"hhi\""
.LASF455:
	.string	"INT32_MAX 0x7fffffffL"
.LASF720:
	.string	"PORTD5 5"
.LASF2006:
	.string	"SAMC21_XPLAINED_PRO 80"
.LASF1983:
	.string	"XMEGA_RF212B_ZIGBIT 57"
.LASF857:
	.string	"SPSR _SFR_IO8(0x2D)"
.LASF1532:
	.string	"__need_wchar_t"
.LASF1588:
	.string	"XMEGA_A3U ( AVR8_PART_IS_DEFINED(ATxmega64A3U) || AVR8_PART_IS_DEFINED(ATxmega128A3U) || AVR8_PART_IS_DEFINED(ATxmega192A3U) || AVR8_PART_IS_DEFINED(ATxmega256A3U) )"
.LASF966:
	.string	"PCINT10 2"
.LASF1913:
	.string	"convert_byte_array_to_16_bit(data) (*(uint16_t *)(data))"
.LASF2089:
	.string	"signed char"
.LASF544:
	.string	"PRIoLEAST16 \"o\""
.LASF767:
	.string	"EEDR4 4"
.LASF1104:
	.string	"OCR1AL1 1"
.LASF1305:
	.string	"TIMER1_COMPA_vect _VECTOR(11)"
.LASF1341:
	.string	"E2PAGESIZE 4"
.LASF1498:
	.string	"__size_t__ "
.LASF1242:
	.string	"RXB80 1"
.LASF2014:
	.string	"SAMR21ZLL_EK 88"
.LASF1877:
	.string	"pgm_read_ptr_near(address_short) (void*)__LPM_word((uint16_t)(address_short))"
.LASF376:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF143:
	.string	"__DBL_DIG__ 6"
.LASF473:
	.string	"INT_FAST8_MAX INT8_MAX"
.LASF1817:
	.string	"UNUSED(v) (void)(v)"
.LASF508:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF498:
	.string	"WINT_MAX __WINT_MAX__"
.LASF224:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF1385:
	.string	"PORT1 1"
.LASF25:
	.string	"__CHAR_BIT__ 8"
.LASF37:
	.string	"__INTMAX_TYPE__ long long int"
.LASF1665:
	.string	"SAMR35JXXB ( SAM_PART_IS_DEFINED(SAMR35J18B) || SAM_PART_IS_DEFINED(SAMR35J17B) || SAM_PART_IS_DEFINED(SAMR35J16B) )"
.LASF622:
	.string	"_MMIO_WORD(mem_addr) (*(volatile uint16_t *)(mem_addr))"
.LASF1668:
	.string	"SAMB11G ( SAM_PART_IS_DEFINED(SAMB11G18A) || SAM_PART_IS_DEFINED(SAMB11ZR) )"
.LASF1289:
	.string	"PCINT0_vect _VECTOR(3)"
.LASF916:
	.string	"CLKPS1 1"
.LASF2104:
	.string	"PORTDATA"
.LASF166:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF1905:
	.string	"CLE16_TO_CPU_ENDIAN(x) (x)"
.LASF1086:
	.string	"ICR1L2 2"
.LASF1968:
	.string	"ATXMEGA128A1_QT600 42"
.LASF1597:
	.string	"XMEGA_E5 ( AVR8_PART_IS_DEFINED(ATxmega8E5) || AVR8_PART_IS_DEFINED(ATxmega16E5) || AVR8_PART_IS_DEFINED(ATxmega32E5) )"
.LASF934:
	.string	"__AVR_HAVE_PRR_PRTIM2 "
.LASF913:
	.string	"WDIF 7"
.LASF1990:
	.string	"SAM4C_EK 64"
.LASF1226:
	.string	"TWAM2 2"
.LASF1466:
	.string	"LOCKMEM __attribute__((__used__, __section__ (\".lock\")))"
.LASF1881:
	.string	"pgm_read_float(address_short) pgm_read_float_near(address_short)"
.LASF980:
	.string	"TIMSK0 _SFR_MEM8(0x6E)"
.LASF747:
	.string	"GPIOR00 0"
.LASF1477:
	.string	"BLB1_MODE_3 (0xCF)"
.LASF1066:
	.string	"TCNT1L1 1"
.LASF69:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF711:
	.string	"DDD5 5"
.LASF1596:
	.string	"XMEGA_D4 ( AVR8_PART_IS_DEFINED(ATxmega16D4) || AVR8_PART_IS_DEFINED(ATxmega32D4) || AVR8_PART_IS_DEFINED(ATxmega64D4) || AVR8_PART_IS_DEFINED(ATxmega128D4) )"
.LASF461:
	.string	"INT_LEAST8_MAX INT8_MAX"
.LASF2055:
	.string	"IOPORT_MODE_PULLDOWN (0x01)"
.LASF1266:
	.string	"UBRR0_4 4"
.LASF1459:
	.string	"__AVR_LIBC_MAJOR__ 2"
.LASF417:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF2033:
	.string	"SENSORS_XPLAINED_INERTIAL_2 4"
.LASF910:
	.string	"WDCE 4"
.LASF225:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF1868:
	.ascii	"__LPM_float_enhanc"
	.string	"ed__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); float __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF552:
	.string	"PRIX16 \"X\""
.LASF1966:
	.string	"MEGA_1284P_XPLAINED 40"
.LASF885:
	.string	"PORF 0"
.LASF801:
	.string	"FOC0B 6"
.LASF2012:
	.string	"SAML22_XPLAINED_PRO 86"
.LASF535:
	.string	"PRIuLEAST8 \"u\""
.LASF1025:
	.string	"ADTS2 2"
.LASF1143:
	.string	"COM2B1 5"
.LASF917:
	.string	"CLKPS2 2"
.LASF1034:
	.string	"REFS1 7"
.LASF1649:
	.ascii	"SAMD20J ( SAM_PART_IS_DEFIN"
	.string	"ED(SAMD20J14) || SAM_PART_IS_DEFINED(SAMD20J15) || SAM_PART_IS_DEFINED(SAMD20J16) || SAM_PART_IS_DEFINED(SAMD20J14B) || SAM_PART_IS_DEFINED(SAMD20J15B) || SAM_PART_IS_DEFINED(SAMD20J16B) || SAM_PART_IS_DEFINED(SAMD20J17) || SAM_PART_IS_DEFINED(SAMD20J18) )"
.LASF1255:
	.string	"USBS0 3"
.LASF1319:
	.string	"USART_RX_vect _VECTOR(18)"
.LASF430:
	.string	"__INT24_MAX__ 8388607L"
.LASF1552:
	.string	"DTOSTR_PLUS_SIGN 0x02"
.LASF689:
	.string	"PORTC0 0"
.LASF685:
	.string	"DDC4 4"
.LASF977:
	.string	"PCINT21 5"
.LASF630:
	.string	"_SFR_MEM_ADDR(sfr) ((uint16_t) &(sfr))"
.LASF1923:
	.string	"PGM_READ_BYTE(x) pgm_read_byte(x)"
.LASF1440:
	.string	"XH r27"
.LASF1734:
	.string	"SAM4CMS16 (SAM4CMS16_0 || SAM4CMS16_1)"
.LASF179:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF669:
	.string	"PORTB5 5"
.LASF1218:
	.string	"TWWC 3"
.LASF432:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF407:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF1572:
	.string	"UC3L0128 ( AVR32_PART_IS_DEFINED(UC3L0128) )"
.LASF313:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF1684:
	.ascii	"SAML21XXXB ( SAM_PART_IS_DEFINED(SAML21E15B) || SAM_PART_IS_"
	.ascii	"DEFINED(SAML21E16B) || SAM_PART_IS_DEFINED(SA"
	.string	"ML21E17B) || SAM_PART_IS_DEFINED(SAML21E18B) || SAM_PART_IS_DEFINED(SAML21G16B) || SAM_PART_IS_DEFINED(SAML21G17B) || SAM_PART_IS_DEFINED(SAML21G18B) || SAM_PART_IS_DEFINED(SAML21J16B) || SAM_PART_IS_DEFINED(SAML21J17B) || SAM_PART_IS_DEFINED(SAML21J18B) )"
.LASF1256:
	.string	"UPM00 4"
.LASF1756:
	.string	"SAMV70QB ( SAM_PART_IS_DEFINED(SAMV70Q19B) || SAM_PART_IS_DEFINED(SAMV70Q20B) )"
.LASF167:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF1149:
	.string	"CS22 2"
.LASF612:
	.string	"SCNu32 \"lu\""
.LASF1839:
	.string	"BADISR_vect __vector_default"
.LASF1316:
	.string	"SPI_STC_vect_num 17"
.LASF1628:
	.string	"SAM3U1 ( SAM_PART_IS_DEFINED(SAM3U1C) || SAM_PART_IS_DEFINED(SAM3U1E) )"
.LASF1325:
	.string	"ADC_vect _VECTOR(21)"
.LASF2049:
	.string	"IOPORT_CREATE_PIN(port,pin) ((IOPORT_ ## port) * 8 + (pin))"
.LASF1854:
	.string	"PGM_P const char *"
.LASF1878:
	.string	"pgm_read_byte(address_short) pgm_read_byte_near(address_short)"
.LASF316:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF1757:
	.string	"SAMS70J ( SAM_PART_IS_DEFINED(SAMS70J19) || SAM_PART_IS_DEFINED(SAMS70J20) || SAM_PART_IS_DEFINED(SAMS70J21) )"
.LASF1965:
	.string	"STK600_MEGA 39"
.LASF1838:
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
.LASF392:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF467:
	.string	"INT_LEAST32_MAX INT32_MAX"
.LASF965:
	.string	"PCINT9 1"
.LASF1037:
	.string	"ADC1D 1"
.LASF199:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF1865:
	.ascii	"__LPM_dword_enhanced_"
	.string	"_(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1636:
	.string	"SAM3X4 ( SAM_PART_IS_DEFINED(SAM3X4C) || SAM_PART_IS_DEFINED(SAM3X4E) )"
.LASF1764:
	.string	"SAME70JB ( SAM_PART_IS_DEFINED(SAME70J19B) || SAM_PART_IS_DEFINED(SAME70J20B) || SAM_PART_IS_DEFINED(SAME70J21B) )"
.LASF1580:
	.string	"UC3D (UC3D3 || UC3D4)"
.LASF335:
	.string	"__AVR_MEGA__ 1"
.LASF1334:
	.string	"_VECTORS_SIZE (26 * 4)"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF1079:
	.string	"TCNT1H5 5"
.LASF375:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF1705:
	.string	"SAM4C4_0 ( SAM_PART_IS_DEFINED(SAM4C4C_0) )"
.LASF1059:
	.string	"ICNC1 7"
.LASF1642:
	.string	"SAM4S8 ( SAM_PART_IS_DEFINED(SAM4S8B) || SAM_PART_IS_DEFINED(SAM4S8C) )"
.LASF1247:
	.string	"TXCIE0 6"
.LASF1426:
	.string	"_AVR_COMMON_H "
.LASF823:
	.string	"OCR0B_1 1"
.LASF1528:
	.string	"__INT_WCHAR_T_H "
.LASF1560:
	.string	"UC3A0 ( AVR32_PART_IS_DEFINED(UC3A0128) || AVR32_PART_IS_DEFINED(UC3A0256) || AVR32_PART_IS_DEFINED(UC3A0512) )"
.LASF209:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF285:
	.string	"__USQ_FBIT__ 32"
.LASF2036:
	.string	"SENSORS_XPLAINED_INERTIAL_A1 7"
.LASF1333:
	.string	"SPM_READY_vect _VECTOR(25)"
.LASF1946:
	.string	"XMEGA_A1U_XPLAINED_PRO 20"
.LASF804:
	.string	"TCNT0_0 0"
.LASF761:
	.string	"EEPM1 5"
.LASF307:
	.string	"__REGISTER_PREFIX__ "
.LASF677:
	.string	"PINC4 4"
.LASF504:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF2116:
	.string	"ioport_configure_pin"
.LASF1165:
	.string	"OCR2_2 2"
.LASF777:
	.string	"EEAR4 4"
.LASF1337:
	.string	"RAMEND 0x8FF"
.LASF202:
	.string	"__FRACT_IBIT__ 0"
.LASF595:
	.string	"SCNuLEAST8 \"hhu\""
.LASF898:
	.string	"PGERS 1"
.LASF86:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF183:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF60:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF1497:
	.string	"__need_ptrdiff_t"
.LASF429:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF262:
	.string	"__LLACCUM_IBIT__ 16"
.LASF249:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF1204:
	.string	"TWA5 6"
.LASF1035:
	.string	"DIDR0 _SFR_MEM8(0x7E)"
.LASF2078:
	.string	"LED_COUNT 1"
.LASF532:
	.string	"PRIoLEAST8 \"o\""
.LASF531:
	.string	"PRIo8 \"o\""
.LASF446:
	.string	"__USING_MINT8 0"
.LASF1791:
	.string	"SAML22 (SAML22J || SAML22G || SAML22N)"
.LASF92:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF1233:
	.string	"U2X0 1"
.LASF1258:
	.string	"UMSEL00 6"
.LASF153:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF465:
	.string	"INT_LEAST16_MIN INT16_MIN"
.LASF1281:
	.string	"UDR0_5 5"
.LASF870:
	.string	"ACSR _SFR_IO8(0x30)"
.LASF1280:
	.string	"UDR0_4 4"
.LASF579:
	.string	"SCNdFAST16 \"d\""
.LASF1161:
	.string	"TCNT2_7 7"
.LASF34:
	.string	"__PTRDIFF_TYPE__ int"
.LASF993:
	.string	"ADC _SFR_MEM16(0x78)"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF1811:
	.string	"SAME70 (SAME70J || SAME70N || SAME70Q || SAME70JB || SAME70NB || SAME70QB)"
.LASF841:
	.string	"GPIOR21 1"
.LASF236:
	.string	"__USACCUM_FBIT__ 8"
.LASF1818:
	.string	"unused(v) do { (void)(v); } while(0)"
.LASF1631:
	.string	"SAM3N00 ( SAM_PART_IS_DEFINED(SAM3N00A) || SAM_PART_IS_DEFINED(SAM3N00B) )"
.LASF1389:
	.string	"DD5 5"
.LASF1517:
	.string	"__WCHAR_T__ "
.LASF837:
	.string	"GPIOR16 6"
.LASF2113:
	.string	"arch_ioport_pin_to_base"
.LASF1095:
	.string	"ICR1H2 2"
.LASF1178:
	.string	"AS2 5"
.LASF848:
	.string	"SPCR _SFR_IO8(0x2C)"
.LASF2073:
	.string	"LED_Toggle(led_gpio) gpio_toggle_pin(led_gpio)"
.LASF1492:
	.string	"_PTRDIFF_T_ "
.LASF1047:
	.string	"WGM11 1"
.LASF1601:
	.string	"XMEGA_C (XMEGA_C3 || XMEGA_C4)"
.LASF1590:
	.string	"XMEGA_A4U ( AVR8_PART_IS_DEFINED(ATxmega16A4U) || AVR8_PART_IS_DEFINED(ATxmega32A4U) || AVR8_PART_IS_DEFINED(ATxmega64A4U) || AVR8_PART_IS_DEFINED(ATxmega128A4U) )"
.LASF2041:
	.string	"SECURITY_XPLAINED 12"
.LASF558:
	.string	"PRIu32 \"lu\""
.LASF289:
	.string	"__UTQ_FBIT__ 128"
.LASF435:
	.string	"__AVR_DEVICE_NAME__ atmega328p"
.LASF1862:
	.string	"__LPM_word_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1223:
	.string	"TWAMR _SFR_MEM8(0xBD)"
.LASF1075:
	.string	"TCNT1H1 1"
.LASF1491:
	.string	"__PTRDIFF_T "
.LASF982:
	.string	"OCIE0A 1"
.LASF1554:
	.string	"EXIT_SUCCESS 0"
.LASF1507:
	.string	"_SIZE_T_DEFINED_ "
.LASF1654:
	.string	"SAMD21GXXL ( SAM_PART_IS_DEFINED(SAMD21G15L) || SAM_PART_IS_DEFINED(SAMD21G16L) || SAM_PART_IS_DEFINED(SAMD21G17L) )"
.LASF672:
	.string	"PINC _SFR_IO8(0x06)"
.LASF721:
	.string	"PORTD6 6"
.LASF476:
	.string	"INT_FAST16_MAX INT16_MAX"
.LASF1180:
	.string	"TWBR _SFR_MEM8(0xB8)"
.LASF1301:
	.string	"TIMER2_OVF_vect _VECTOR(9)"
.LASF2039:
	.string	"RZ600_AT86RF212 10"
.LASF2019:
	.string	"SAMHA1G16A_XPLAINED_PRO 94"
.LASF1761:
	.string	"SAMS70Q ( SAM_PART_IS_DEFINED(SAMS70Q19) || SAM_PART_IS_DEFINED(SAMS70Q20) || SAM_PART_IS_DEFINED(SAMS70Q21) )"
.LASF920:
	.string	"PRR _SFR_MEM8(0x64)"
.LASF1778:
	.string	"SAMD10 (SAMD10C || SAMD10DS || SAMD10DM || SAMD10DU)"
.LASF986:
	.string	"OCIE1A 1"
.LASF1820:
	.string	"COMPILER_PACK_RESET(alignment) "
.LASF281:
	.string	"__UQQ_FBIT__ 8"
.LASF1159:
	.string	"TCNT2_5 5"
.LASF930:
	.string	"__AVR_HAVE_PRR_PRUSART0 "
.LASF231:
	.string	"__SACCUM_FBIT__ 7"
.LASF768:
	.string	"EEDR5 5"
.LASF1105:
	.string	"OCR1AL2 2"
.LASF1997:
	.string	"SAM4CMP_DB 71"
.LASF1510:
	.string	"_SIZE_T_DECLARED "
.LASF74:
	.string	"__INT_MAX__ 0x7fff"
.LASF346:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF1673:
	.string	"SAMD10DS ( SAM_PART_IS_DEFINED(SAMD10D12AS) || SAM_PART_IS_DEFINED(SAMD10D13AS) || SAM_PART_IS_DEFINED(SAMD10D14AS) )"
.LASF1504:
	.string	"__SIZE_T "
.LASF1640:
	.string	"SAM4S2 ( SAM_PART_IS_DEFINED(SAM4S2A) || SAM_PART_IS_DEFINED(SAM4S2B) || SAM_PART_IS_DEFINED(SAM4S2C) )"
.LASF741:
	.string	"INTF0 0"
.LASF886:
	.string	"EXTRF 1"
.LASF40:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF315:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF405:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF2042:
	.string	"USER_EXT_BOARD 99"
.LASF1121:
	.string	"OCR1BL _SFR_MEM8(0x8A)"
.LASF156:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF32:
	.string	"__SIZEOF_POINTER__ 2"
.LASF923:
	.string	"PRSPI 2"
.LASF1876:
	.string	"pgm_read_float_near(address_short) __LPM_float((uint16_t)(address_short))"
.LASF261:
	.string	"__LLACCUM_FBIT__ 47"
.LASF138:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF1087:
	.string	"ICR1L3 3"
.LASF1891:
	.string	"PROGMEM_WORD_ARRAY_T uint16_t*"
.LASF755:
	.string	"EECR _SFR_IO8(0x1F)"
.LASF1565:
	.string	"UC3B1 ( AVR32_PART_IS_DEFINED(UC3B164) || AVR32_PART_IS_DEFINED(UC3B1128) || AVR32_PART_IS_DEFINED(UC3B1256) || AVR32_PART_IS_DEFINED(UC3B1512) )"
.LASF1323:
	.string	"USART_TX_vect _VECTOR(20)"
.LASF1227:
	.string	"TWAM3 3"
.LASF1503:
	.string	"_T_SIZE "
.LASF1464:
	.string	"FUSES __fuse_t __fuse FUSEMEM"
.LASF1591:
	.string	"XMEGA_B1 ( AVR8_PART_IS_DEFINED(ATxmega64B1) || AVR8_PART_IS_DEFINED(ATxmega128B1) )"
.LASF890:
	.string	"IVCE 0"
.LASF748:
	.string	"GPIOR01 1"
.LASF924:
	.string	"PRTIM1 3"
.LASF1067:
	.string	"TCNT1L2 2"
.LASF546:
	.string	"PRIu16 \"u\""
.LASF353:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF1363:
	.string	"FUSE_BODLEVEL1 (unsigned char)~_BV(1)"
.LASF732:
	.string	"TIFR2 _SFR_IO8(0x17)"
.LASF1317:
	.string	"SPI_STC_vect _VECTOR(17)"
.LASF1021:
	.string	"ADEN 7"
.LASF566:
	.string	"PRIXFAST32 \"lX\""
.LASF1890:
	.string	"PROGMEM_BYTE_ARRAY_T uint8_t*"
.LASF1750:
	.string	"SAMV71QB ( SAM_PART_IS_DEFINED(SAMV71Q19B) || SAM_PART_IS_DEFINED(SAMV71Q20B) || SAM_PART_IS_DEFINED(SAMV71Q21B) )"
.LASF1549:
	.string	"RAND_MAX 0x7FFF"
.LASF1068:
	.string	"TCNT1L3 3"
.LASF2079:
	.string	"GPIO_PUSH_BUTTON_0 IOPORT_CREATE_PIN(PORTB, 7)"
.LASF2095:
	.string	"long unsigned int"
.LASF557:
	.string	"PRIoFAST32 \"lo\""
.LASF1988:
	.string	"XMEGA_A3_REB_CBB 62"
.LASF1043:
	.string	"AIN0D 0"
.LASF400:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF410:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF1737:
	.string	"SAM4CMS32 (SAM4CMS32_0 || SAM4CMS32_1)"
.LASF706:
	.string	"DDD0 0"
.LASF1519:
	.string	"_T_WCHAR_ "
.LASF1723:
	.string	"SAM4CMP32_0 ( SAM_PART_IS_DEFINED(SAM4CMP32C_0) )"
.LASF728:
	.string	"TOV1 0"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF690:
	.string	"PORTC1 1"
.LASF213:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF686:
	.string	"DDC5 5"
.LASF1208:
	.string	"TWD1 1"
.LASF1454:
	.string	"_AVR_VERSION_H_ "
.LASF1376:
	.string	"SLEEP_MODE_STANDBY (0x06<<1)"
.LASF1187:
	.string	"TWBR6 6"
.LASF1567:
	.string	"UC3C1 ( AVR32_PART_IS_DEFINED(UC3C164C) || AVR32_PART_IS_DEFINED(UC3C1128C) || AVR32_PART_IS_DEFINED(UC3C1256C) || AVR32_PART_IS_DEFINED(UC3C1512C) )"
.LASF729:
	.string	"OCF1A 1"
.LASF1753:
	.string	"SAMV70N ( SAM_PART_IS_DEFINED(SAMV70N19) || SAM_PART_IS_DEFINED(SAMV70N20) )"
.LASF2017:
	.string	"SAMB11ZR_XPLAINED_PRO 92"
.LASF818:
	.string	"OCR0A_5 5"
.LASF1729:
	.string	"SAM4CMS8_0 ( SAM_PART_IS_DEFINED(SAM4CMS8C_0) )"
.LASF1257:
	.string	"UPM01 5"
.LASF503:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF2099:
	.string	"IOPORT_DIR_INPUT"
.LASF318:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF160:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF1918:
	.string	"convert_16_bit_to_byte_address(value,data) ((*(uint16_t *)(data)) = (uint16_t)(value))"
.LASF466:
	.string	"UINT_LEAST16_MAX UINT16_MAX"
.LASF1912:
	.string	"ADDR_COPY_DST_SRC_64(dst,src) memcpy((&(dst)), (&(src)), sizeof(uint64_t))"
.LASF220:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF1050:
	.string	"COM1A0 6"
.LASF2050:
	.string	"IOPORT_BASE_ADDRESS 0x20"
.LASF2063:
	.string	"gpio_set_pin_high(io_id) ioport_set_value(io_id, 1)"
.LASF1625:
	.string	"SAM3S4 ( SAM_PART_IS_DEFINED(SAM3S4A) || SAM_PART_IS_DEFINED(SAM3S4B) || SAM_PART_IS_DEFINED(SAM3S4C) )"
.LASF341:
	.string	"__FLASH 1"
.LASF1677:
	.string	"SAMD11DS ( SAM_PART_IS_DEFINED(SAMD11D14AS) )"
.LASF1696:
	.string	"SAMC20G ( SAM_PART_IS_DEFINED(SAMC20G15A) || SAM_PART_IS_DEFINED(SAMC20G16A) || SAM_PART_IS_DEFINED(SAMC20G17A) || SAM_PART_IS_DEFINED(SAMC20G18A) )"
.LASF2026:
	.string	"SAMR30_MODULE_XPLAINED_PRO 102"
.LASF872:
	.string	"ACIS1 1"
.LASF1732:
	.string	"SAM4CMS16_0 ( SAM_PART_IS_DEFINED(SAM4CMS16C_0) )"
.LASF629:
	.string	"_SFR_IO16(io_addr) _MMIO_WORD((io_addr) + __SFR_OFFSET)"
.LASF723:
	.string	"TIFR0 _SFR_IO8(0x15)"
.LASF644:
	.string	"_AVR_IOM328P_H_ 1"
.LASF1002:
	.string	"ADCL6 6"
.LASF406:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF1687:
	.string	"SAML22J ( SAM_PART_IS_DEFINED(SAML22J16A) || SAM_PART_IS_DEFINED(SAML22J17A) || SAM_PART_IS_DEFINED(SAML22J18A) )"
.LASF2010:
	.string	"SAMB11_XPLAINED_PRO 84"
.LASF1976:
	.string	"XMEGA_E5_XPLAINED 50"
.LASF1352:
	.string	"LFUSE_DEFAULT (FUSE_CKSEL0 & FUSE_CKSEL2 & FUSE_CKSEL3 & FUSE_SUT0 & FUSE_CKDIV8)"
.LASF516:
	.string	"PRIiFAST8 \"i\""
.LASF15:
	.string	"__OPTIMIZE__ 1"
.LASF1527:
	.string	"___int_wchar_t_h "
.LASF1661:
	.string	"SAMR34J ( SAM_PART_IS_DEFINED(SAMR34J18A) || SAM_PART_IS_DEFINED(SAMR34J17A) || SAM_PART_IS_DEFINED(SAMR34J16A) || SAM_PART_IS_DEFINED(SAMR34J18B) || SAM_PART_IS_DEFINED(SAMR34J17B) || SAM_PART_IS_DEFINED(SAMR34J16B) )"
.LASF1060:
	.string	"TCCR1C _SFR_MEM8(0x82)"
.LASF607:
	.string	"SCNxLEAST16 \"x\""
.LASF1500:
	.string	"_SIZE_T "
.LASF1678:
	.string	"SAMD11DM ( SAM_PART_IS_DEFINED(SAMD11D14AM) )"
.LASF83:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF194:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF2058:
	.string	"IOPORT_INIT_HIGH 1 << 1"
.LASF1763:
	.string	"SAME70J ( SAM_PART_IS_DEFINED(SAME70J19) || SAM_PART_IS_DEFINED(SAME70J20) || SAM_PART_IS_DEFINED(SAME70J21) )"
.LASF615:
	.string	"SCNx32 \"lx\""
.LASF824:
	.string	"OCR0B_2 2"
.LASF2066:
	.string	"gpio_configure_pin(io_id,io_flags) ioport_configure_pin(io_id, io_flags)"
.LASF1237:
	.string	"UDRE0 5"
.LASF170:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF697:
	.string	"PIND0 0"
.LASF938:
	.string	"CAL1 1"
.LASF1760:
	.string	"SAMS70NB ( SAM_PART_IS_DEFINED(SAMS70N19B) || SAM_PART_IS_DEFINED(SAMS70N20B) || SAM_PART_IS_DEFINED(SAMS70N21B) )"
.LASF569:
	.string	"PRIxPTR PRIx16"
.LASF1147:
	.string	"CS20 0"
.LASF678:
	.string	"PINC5 5"
.LASF226:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF1657:
	.string	"SAMR21G ( SAM_PART_IS_DEFINED(SAMR21G16A) || SAM_PART_IS_DEFINED(SAMR21G17A) || SAM_PART_IS_DEFINED(SAMR21G18A) )"
.LASF1849:
	.string	"Is_global_interrupt_enabled() cpu_irq_is_enabled()"
.LASF278:
	.string	"__DQ_IBIT__ 0"
.LASF2018:
	.string	"SAMR30_XPLAINED_PRO 93"
.LASF1062:
	.string	"FOC1A 7"
.LASF1221:
	.string	"TWEA 6"
.LASF778:
	.string	"EEAR5 5"
.LASF518:
	.string	"PRIdLEAST16 \"d\""
.LASF655:
	.string	"DDB0 0"
.LASF1508:
	.string	"_SIZE_T_DEFINED "
.LASF1860:
	.ascii	"__LPM_word_classic__(addr) (__ex"
	.string	"tension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1318:
	.string	"USART_RX_vect_num 18"
.LASF282:
	.string	"__UQQ_IBIT__ 0"
.LASF374:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF603:
	.string	"SCNu16 \"u\""
.LASF2028:
	.string	"SAMR21B18_MODULE 104"
.LASF1205:
	.string	"TWA6 7"
.LASF611:
	.string	"SCNoFAST32 \"lo\""
.LASF1738:
	.string	"SAM4CP16_0 ( SAM_PART_IS_DEFINED(SAM4CP16B_0) )"
.LASF1484:
	.string	"__bool_true_false_are_defined 1"
.LASF2002:
	.string	"SAML21_XPLAINED_PRO 76"
.LASF1006:
	.string	"ADCH1 1"
.LASF1645:
	.string	"SAM4SD16 ( SAM_PART_IS_DEFINED(SAM4SD16B) || SAM_PART_IS_DEFINED(SAM4SD16C) )"
.LASF1538:
	.string	"__need_NULL "
.LASF1925:
	.string	"Swap16(u16) ((U16)(((U16)(u16) >> 8) | ((U16)(u16) << 8)))"
.LASF1114:
	.string	"OCR1AH2 2"
.LASF1259:
	.string	"UMSEL01 7"
.LASF1735:
	.string	"SAM4CMS32_0 ( SAM_PART_IS_DEFINED(SAM4CMS32C_0) )"
.LASF2035:
	.string	"SENSORS_XPLAINED_LIGHTPROX_1 6"
.LASF1282:
	.string	"UDR0_6 6"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fff"
.LASF1430:
	.string	"SREG _SFR_IO8(0x3F)"
.LASF1543:
	.string	"__ATTR_MALLOC__ __attribute__((__malloc__))"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF2101:
	.string	"ioport_pin_t"
.LASF955:
	.string	"PCINT0 0"
.LASF1017:
	.string	"ADIE 3"
.LASF349:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF243:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF859:
	.string	"WCOL 6"
.LASF1835:
	.string	"SIGNAL(vector) void vector (void) __attribute__ ((signal, __INTR_ATTRS)); void vector (void)"
.LASF842:
	.string	"GPIOR22 2"
.LASF403:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF28:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF596:
	.string	"SCNuFAST8 \"hhu\""
.LASF474:
	.string	"INT_FAST8_MIN INT8_MIN"
.LASF838:
	.string	"GPIOR17 7"
.LASF1090:
	.string	"ICR1L6 6"
.LASF1837:
	.string	"ISR_ALIAS(vector,tgt) void vector (void) __attribute__((signal, naked, __INTR_ATTRS)); void vector (void) { asm volatile (\"jmp \" __STRINGIFY(tgt) ::); }"
.LASF562:
	.string	"PRIxLEAST32 \"lx\""
.LASF1866:
	.ascii	"__LPM_float_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); float __result; __asm__ __volatile__ "
	.ascii	"( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1096:
	.string	"ICR1H3 3"
.LASF2106:
	.string	"pin_mask_t"
.LASF884:
	.string	"MCUSR _SFR_IO8(0x34)"
.LASF1107:
	.string	"OCR1AL4 4"
.LASF88:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF2085:
	.string	"SPI_MOSI IOPORT_CREATE_PIN(PORTB, 3)"
.LASF1232:
	.string	"MPCM0 0"
.LASF526:
	.string	"PRIi32 \"li\""
.LASF1260:
	.string	"UBRR0 _SFR_MEM16(0xC4)"
.LASF1401:
	.string	"PIN1 1"
.LASF1076:
	.string	"TCNT1H2 2"
.LASF862:
	.string	"SPDR0 0"
.LASF2038:
	.string	"RZ600_AT86RF230B 9"
.LASF1300:
	.string	"TIMER2_OVF_vect_num 9"
.LASF1559:
	.string	"SAM_PART_IS_DEFINED(part) (defined(__ ## part ## __))"
.LASF372:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF858:
	.string	"SPI2X 0"
.LASF565:
	.string	"PRIXLEAST32 \"lX\""
.LASF134:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF44:
	.string	"__INT32_TYPE__ long int"
.LASF722:
	.string	"PORTD7 7"
.LASF1490:
	.string	"_T_PTRDIFF "
.LASF1819:
	.string	"barrier() asm volatile(\"\" ::: \"memory\")"
.LASF519:
	.string	"PRIdFAST16 \"d\""
.LASF1892:
	.string	"PROGMEM_READ_BYTE(x) pgm_read_byte(x)"
.LASF1767:
	.string	"SAME70Q ( SAM_PART_IS_DEFINED(SAME70Q19) || SAM_PART_IS_DEFINED(SAME70Q20) || SAM_PART_IS_DEFINED(SAME70Q21) )"
.LASF469:
	.string	"UINT_LEAST32_MAX UINT32_MAX"
.LASF237:
	.string	"__USACCUM_IBIT__ 8"
.LASF968:
	.string	"PCINT12 4"
.LASF462:
	.string	"INT_LEAST8_MIN INT8_MIN"
.LASF1685:
	.string	"SAML22N ( SAM_PART_IS_DEFINED(SAML22N16A) || SAM_PART_IS_DEFINED(SAML22N17A) || SAM_PART_IS_DEFINED(SAML22N18A) )"
.LASF1680:
	.string	"SAML21E ( SAM_PART_IS_DEFINED(SAML21E18A) || SAM_PART_IS_DEFINED(SAML21E15B) || SAM_PART_IS_DEFINED(SAML21E16B) || SAM_PART_IS_DEFINED(SAML21E17B) || SAM_PART_IS_DEFINED(SAML21E18B) )"
.LASF987:
	.string	"OCIE1B 2"
.LASF1783:
	.string	"SAMD (SAMD20 || SAMD21 || SAMD09 || SAMD10 || SAMD11 || SAMDA1)"
.LASF1624:
	.string	"SAM3S2 ( SAM_PART_IS_DEFINED(SAM3S2A) || SAM_PART_IS_DEFINED(SAM3S2B) || SAM_PART_IS_DEFINED(SAM3S2C) )"
.LASF218:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF769:
	.string	"EEDR6 6"
.LASF1106:
	.string	"OCR1AL3 3"
.LASF641:
	.string	"loop_until_bit_is_set(sfr,bit) do { } while (bit_is_clear(sfr, bit))"
.LASF43:
	.string	"__INT16_TYPE__ int"
.LASF1046:
	.string	"WGM10 0"
.LASF1052:
	.string	"TCCR1B _SFR_MEM8(0x81)"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 0xffffffffUL"
.LASF1742:
	.string	"SAMG53 ( SAM_PART_IS_DEFINED(SAMG53G19) || SAM_PART_IS_DEFINED(SAMG53N19) )"
.LASF1453:
	.string	"AVR_STACK_POINTER_LO_ADDR _SFR_IO_ADDR(SPL)"
.LASF67:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF2071:
	.string	"LED_Off(led_gpio) gpio_set_pin_low(led_gpio)"
.LASF16:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF1796:
	.string	"SAM4C_0 (SAM4C4_0 || SAM4C8_0 || SAM4C16_0 || SAM4C32_0)"
.LASF1329:
	.string	"ANALOG_COMP_vect _VECTOR(23)"
.LASF1383:
	.string	"PORT3 3"
.LASF989:
	.string	"TIMSK2 _SFR_MEM8(0x70)"
.LASF1005:
	.string	"ADCH0 0"
.LASF571:
	.string	"SCNd8 \"hhd\""
.LASF136:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF803:
	.string	"TCNT0 _SFR_IO8(0x26)"
.LASF1094:
	.string	"ICR1H1 1"
.LASF1084:
	.string	"ICR1L0 0"
.LASF918:
	.string	"CLKPS3 3"
.LASF724:
	.string	"TOV0 0"
.LASF1085:
	.string	"ICR1L1 1"
.LASF756:
	.string	"EERE 0"
.LASF1088:
	.string	"ICR1L4 4"
.LASF1727:
	.string	"SAM4CMS4_1 ( SAM_PART_IS_DEFINED(SAM4CMS4C_1) )"
.LASF163:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF434:
	.string	"__AVR_ATmega328P__ 1"
.LASF936:
	.string	"OSCCAL _SFR_MEM8(0x66)"
.LASF589:
	.string	"SCNdPTR SCNd16"
.LASF1228:
	.string	"TWAM4 4"
.LASF1979:
	.string	"SAM4S_XPLAINED_PRO 53"
.LASF1930:
	.string	"EVK1100 1"
.LASF1482:
	.string	"true 1"
.LASF749:
	.string	"GPIOR02 2"
.LASF971:
	.string	"PCMSK2 _SFR_MEM8(0x6D)"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffU"
.LASF926:
	.string	"PRTIM2 6"
.LASF2059:
	.string	"IOPORT_PULL_DOWN (0 << 2)"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF1286:
	.string	"INT1_vect_num 2"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF2074:
	.string	"MCU_SOC_NAME \"ATMEGA328P\""
.LASF1268:
	.string	"UBRR0_6 6"
.LASF1959:
	.string	"SAM3U_EK 33"
.LASF295:
	.string	"__DA_FBIT__ 31"
.LASF1619:
	.string	"MEGA_XX_UN2 ( AVR8_PART_IS_DEFINED(ATmega169P) || AVR8_PART_IS_DEFINED(ATmega169PA) || AVR8_PART_IS_DEFINED(ATmega329P) || AVR8_PART_IS_DEFINED(ATmega329PA) )"
.LASF621:
	.string	"_MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))"
.LASF433:
	.string	"__ELF__ 1"
.LASF1663:
	.string	"SAMR34JXXB ( SAM_PART_IS_DEFINED(SAMR34J18B) || SAM_PART_IS_DEFINED(SAMR34J17B) || SAM_PART_IS_DEFINED(SAMR34J16B) )"
.LASF529:
	.string	"PRIdPTR PRId16"
.LASF1122:
	.string	"OCR1BL0 0"
.LASF1805:
	.string	"SAMG (SAMG51 || SAMG53 || SAMG54 || SAMG55)"
.LASF1240:
	.string	"UCSR0B _SFR_MEM8(0xC1)"
.LASF310:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF643:
	.string	"_AVR_IOXXX_H_ \"iom328p.h\""
.LASF1870:
	.string	"__LPM_word(addr) __LPM_word_enhanced__(addr)"
.LASF181:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF1748:
	.string	"SAMV71NB ( SAM_PART_IS_DEFINED(SAMV71N19B) || SAM_PART_IS_DEFINED(SAMV71N20B) || SAM_PART_IS_DEFINED(SAMV71N21B) )"
.LASF707:
	.string	"DDD1 1"
.LASF807:
	.string	"TCNT0_3 3"
.LASF499:
	.string	"WINT_MIN __WINT_MIN__"
.LASF423:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF1128:
	.string	"OCR1BL6 6"
.LASF296:
	.string	"__DA_IBIT__ 32"
.LASF687:
	.string	"DDC6 6"
.LASF1209:
	.string	"TWD2 2"
.LASF279:
	.string	"__TQ_FBIT__ 127"
.LASF449:
	.string	"INT8_MAX 0x7f"
.LASF1206:
	.string	"TWDR _SFR_MEM8(0xBB)"
.LASF333:
	.string	"__AVR_HAVE_MUL__ 1"
.LASF2100:
	.string	"IOPORT_DIR_OUTPUT"
.LASF730:
	.string	"OCF1B 2"
.LASF31:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1188:
	.string	"TWBR7 7"
.LASF819:
	.string	"OCR0A_6 6"
.LASF997:
	.string	"ADCL1 1"
.LASF1900:
	.string	"CPU_ENDIAN_TO_LE32(x) (x)"
.LASF388:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF217:
	.string	"__ULFRACT_IBIT__ 0"
.LASF919:
	.string	"CLKPCE 7"
.LASF1712:
	.string	"SAM4C16_1 ( SAM_PART_IS_DEFINED(SAM4C16C_1) )"
.LASF1051:
	.string	"COM1A1 7"
.LASF550:
	.string	"PRIxLEAST16 \"x\""
.LASF1872:
	.string	"__LPM_float(addr) __LPM_float_enhanced__(addr)"
.LASF1614:
	.string	"MEGA_RFA1 ( AVR8_PART_IS_DEFINED(ATmega128RFA1) )"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 0xffffU"
.LASF22:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF1989:
	.string	"ATMEGARFX_RCB 63"
.LASF2009:
	.string	"ATMEGA328PB_XPLAINED_MINI 83"
.LASF468:
	.string	"INT_LEAST32_MIN INT32_MIN"
.LASF682:
	.string	"DDC1 1"
.LASF489:
	.string	"INTMAX_MIN INT64_MIN"
.LASF419:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF549:
	.string	"PRIx16 \"x\""
.LASF582:
	.string	"SCNiFAST16 \"i\""
.LASF1027:
	.string	"ADMUX _SFR_MEM8(0x7C)"
.LASF1523:
	.string	"_BSD_WCHAR_T_ "
.LASF1092:
	.string	"ICR1H _SFR_MEM8(0x87)"
.LASF575:
	.string	"SCNiLEAST8 \"hhi\""
.LASF757:
	.string	"EEPE 1"
.LASF1485:
	.string	"_STDDEF_H "
.LASF1754:
	.string	"SAMV70NB ( SAM_PART_IS_DEFINED(SAMV70N19B) || SAM_PART_IS_DEFINED(SAMV70N20B) )"
.LASF1450:
	.string	"AVR_STACK_POINTER_HI_REG SPH"
.LASF1536:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF1299:
	.string	"TIMER2_COMPB_vect _VECTOR(8)"
.LASF352:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF1166:
	.string	"OCR2_3 3"
.LASF1285:
	.string	"INT0_vect _VECTOR(1)"
.LASF1042:
	.string	"DIDR1 _SFR_MEM8(0x7F)"
.LASF1845:
	.string	"cpu_irq_disable() cli()"
.LASF1875:
	.string	"pgm_read_dword_near(address_short) __LPM_dword((uint16_t)(address_short))"
.LASF994:
	.string	"ADCW _SFR_MEM16(0x78)"
.LASF1579:
	.string	"UC3C (UC3C0 || UC3C1 || UC3C2)"
.LASF879:
	.string	"SMCR _SFR_IO8(0x33)"
.LASF698:
	.string	"PIND1 1"
.LASF939:
	.string	"CAL2 2"
.LASF444:
	.string	"__INTTYPES_H_ "
.LASF1148:
	.string	"CS21 1"
.LASF679:
	.string	"PINC6 6"
.LASF528:
	.string	"PRIiFAST32 \"li\""
.LASF1167:
	.string	"OCR2_4 4"
.LASF779:
	.string	"EEAR6 6"
.LASF809:
	.string	"TCNT0_5 5"
.LASF2075:
	.string	"BOARD_NAME \"ATMEGA328P_XPLAINED_MINI\""
.LASF656:
	.string	"DDB1 1"
.LASF854:
	.string	"DORD 5"
.LASF1130:
	.string	"OCR1BH _SFR_MEM8(0x8B)"
.LASF413:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF1855:
	.string	"PGM_VOID_P const void *"
.LASF906:
	.string	"WDP0 0"
.LASF1254:
	.string	"UDORD0 2"
.LASF1675:
	.string	"SAMD10DU ( SAM_PART_IS_DEFINED(SAMD10D14AU) )"
.LASF1762:
	.string	"SAMS70QB ( SAM_PART_IS_DEFINED(SAMS70Q19B) || SAM_PART_IS_DEFINED(SAMS70Q20B) || SAM_PART_IS_DEFINED(SAMS70Q21B) )"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF1520:
	.string	"_T_WCHAR "
.LASF1690:
	.string	"SAMDA1E ( SAM_PART_IS_DEFINED(SAMDA1E14A) || SAM_PART_IS_DEFINED(SAMDA1E14B) || SAM_PART_IS_DEFINED(SAMDA1E15A) || SAM_PART_IS_DEFINED(SAMDA1E15B) || SAM_PART_IS_DEFINED(SAMDA1E16A) || SAM_PART_IS_DEFINED(SAMDA1E16B) )"
.LASF1513:
	.string	"_SIZET_ "
.LASF654:
	.string	"DDRB _SFR_IO8(0x04)"
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF443:
	.string	"_SFR_ASM_COMPAT 0"
.LASF1115:
	.string	"OCR1AH3 3"
.LASF1573:
	.string	"UC3L0256 ( AVR32_PART_IS_DEFINED(UC3L0256) )"
.LASF1812:
	.string	"SAME70B (SAME70JB || SAME70NB || SAME70QB)"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF1283:
	.string	"UDR0_7 7"
.LASF2062:
	.string	"gpio_pin_is_high(io_id) ioport_pin_is_high(io_id)"
.LASF348:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF1800:
	.string	"SAM4CM_1 (SAM4CMP8_1 || SAM4CMP16_1 || SAM4CMP32_1 || SAM4CMS4_1 || SAM4CMS8_1 || SAM4CMS16_1 || SAM4CMS32_1)"
.LASF1486:
	.string	"_STDDEF_H_ "
.LASF956:
	.string	"PCINT1 1"
.LASF1018:
	.string	"ADIF 4"
.LASF244:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF1768:
	.string	"SAME70QB ( SAM_PART_IS_DEFINED(SAME70Q19B) || SAM_PART_IS_DEFINED(SAME70Q20B) || SAM_PART_IS_DEFINED(SAME70Q21B) )"
.LASF843:
	.string	"GPIOR23 3"
.LASF1120:
	.string	"OCR1B _SFR_MEM16(0x8A)"
.LASF881:
	.string	"SM0 1"
.LASF1387:
	.string	"DD7 7"
.LASF1585:
	.string	"XMEGA_A3B ( AVR8_PART_IS_DEFINED(ATxmega256A3B) )"
.LASF1461:
	.string	"__AVR_LIBC_REVISION__ 0"
.LASF1909:
	.string	"CCPU_ENDIAN_TO_LE32(x) (x)"
.LASF1028:
	.string	"MUX0 0"
.LASF298:
	.string	"__TA_IBIT__ 16"
.LASF784:
	.string	"_EEPROM_REG_LOCATIONS_ 1F2021"
.LASF524:
	.string	"PRIdLEAST32 \"ld\""
.LASF1097:
	.string	"ICR1H4 4"
.LASF1472:
	.string	"BLB0_MODE_2 (0xFB)"
.LASF581:
	.string	"SCNiLEAST16 \"i\""
.LASF342:
	.string	"__MEMX 1"
.LASF1956:
	.string	"UC3B_BOARD_CONTROLLER 30"
.LASF752:
	.string	"GPIOR05 5"
.LASF1719:
	.string	"SAM4CMP8 (SAM4CMP8_0 || SAM4CMP8_1)"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF1916:
	.string	"convert_16_bit_to_byte_array(value,data) ((*(uint16_t *)(data)) = (uint16_t)(value))"
.LASF1294:
	.string	"WDT_vect_num 6"
.LASF537:
	.string	"PRIx8 \"x\""
.LASF946:
	.string	"PCIE0 0"
.LASF1400:
	.string	"PIN2 2"
.LASF1077:
	.string	"TCNT1H3 3"
.LASF863:
	.string	"SPDR1 1"
.LASF1439:
	.string	"XL r26"
.LASF1307:
	.string	"TIMER1_COMPB_vect _VECTOR(12)"
.LASF1623:
	.string	"SAM3S1 ( SAM_PART_IS_DEFINED(SAM3S1A) || SAM_PART_IS_DEFINED(SAM3S1B) || SAM_PART_IS_DEFINED(SAM3S1C) )"
.LASF1547:
	.string	"abs(__i) __builtin_abs(__i)"
.LASF1525:
	.string	"_WCHAR_T_DEFINED "
.LASF1175:
	.string	"OCR2BUB 2"
.LASF1251:
	.string	"UCSZ00 1"
.LASF1568:
	.string	"UC3C2 ( AVR32_PART_IS_DEFINED(UC3C264C) || AVR32_PART_IS_DEFINED(UC3C2128C) || AVR32_PART_IS_DEFINED(UC3C2256C) || AVR32_PART_IS_DEFINED(UC3C2512C) )"
.LASF1398:
	.string	"PIN4 4"
.LASF1493:
	.string	"_BSD_PTRDIFF_T_ "
.LASF118:
	.string	"__UINT_FAST16_MAX__ 0xffffU"
.LASF902:
	.string	"SIGRD 5"
.LASF1131:
	.string	"OCR1BH0 0"
.LASF969:
	.string	"PCINT13 5"
.LASF252:
	.string	"__LACCUM_IBIT__ 32"
.LASF1898:
	.string	"CMD_ID_OCTET (0)"
.LASF597:
	.string	"SCNx8 \"hhx\""
.LASF2067:
	.string	"gpio_configure_group(port_id,port_mask,io_flags) ioport_configure_group(port_id, port_mask, io_flags)"
.LASF1869:
	.string	"__LPM(addr) __LPM_enhanced__(addr)"
.LASF770:
	.string	"EEDR7 7"
.LASF1044:
	.string	"AIN1D 1"
.LASF180:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF1926:
	.string	"Swap32(u32) ((U32)(((U32)Swap16((U32)(u32) >> 16)) | ((U32)Swap16((U32)(u32)) << 16)))"
.LASF2119:
	.string	"C:\\\\Users\\\\jacoby\\\\Desktop\\\\atmel projects\\\\GccMatrixWS2812 V3\\\\GccMatrixWS2812 V3\\\\Debug"
.LASF1222:
	.string	"TWINT 7"
.LASF1297:
	.string	"TIMER2_COMPA_vect _VECTOR(7)"
.LASF1540:
	.string	"__need_wchar_t "
.LASF821:
	.string	"OCR0B _SFR_IO8(0x28)"
.LASF113:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF497:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF547:
	.string	"PRIuLEAST16 \"u\""
.LASF1478:
	.string	"BLB1_MODE_4 (0xDF)"
.LASF2097:
	.string	"long long unsigned int"
.LASF20:
	.string	"__SIZEOF_SHORT__ 2"
.LASF1382:
	.string	"PORT4 4"
.LASF1173:
	.string	"TCR2BUB 0"
.LASF146:
	.string	"__DBL_MAX_EXP__ 128"
.LASF1408:
	.string	"PB5 PORTB5"
.LASF463:
	.string	"UINT_LEAST8_MAX UINT8_MAX"
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF1342:
	.string	"FLASHEND 0x7FFF"
.LASF93:
	.string	"__UINT8_MAX__ 0xff"
.LASF797:
	.string	"CS00 0"
.LASF1992:
	.string	"SAMG53_XPLAINED_PRO 66"
.LASF1273:
	.string	"UBRR0_10 2"
.LASF792:
	.string	"COM0B0 4"
.LASF1089:
	.string	"ICR1L5 5"
.LASF334:
	.string	"__AVR_HAVE_JMP_CALL__ 1"
.LASF395:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF1229:
	.string	"TWAM5 5"
.LASF1384:
	.string	"PORT2 2"
.LASF1407:
	.string	"PB4 PORTB4"
.LASF831:
	.string	"GPIOR10 0"
.LASF117:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF840:
	.string	"GPIOR20 0"
.LASF1662:
	.string	"SAMR34JXXA ( SAM_PART_IS_DEFINED(SAMR34J18A) || SAM_PART_IS_DEFINED(SAMR34J17A) || SAM_PART_IS_DEFINED(SAMR34J16A) )"
.LASF1069:
	.string	"TCNT1L4 4"
.LASF1786:
	.string	"SAMR34 (SAMR34J)"
.LASF324:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF1269:
	.string	"UBRR0_7 7"
.LASF812:
	.string	"OCR0A _SFR_IO8(0x27)"
.LASF1621:
	.string	"MEGA_UNSPECIFIED (MEGA_XX_UN0 || MEGA_XX_UN1 || MEGA_XX_UN2 || MEGA_UNCATEGORIZED)"
.LASF1967:
	.string	"SAM4S_XPLAINED 41"
.LASF1557:
	.string	"AVR8_PART_IS_DEFINED(part) (defined(__ ## part ## __) || defined(__AVR_ ## part ## __))"
.LASF1123:
	.string	"OCR1BL1 1"
.LASF2069:
	.string	"gpio_set_pin_group_low(port_id,mask) ioport_set_group_low(port_id, mask)"
.LASF1788:
	.string	"WLR089 (WLR089U)"
.LASF1924:
	.string	"PGM_READ_WORD(x) pgm_read_word(x)"
.LASF1456:
	.string	"__AVR_LIBC_VERSION__ 20000UL"
.LASF297:
	.string	"__TA_FBIT__ 47"
.LASF1174:
	.string	"TCR2AUB 1"
.LASF195:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF737:
	.string	"PCIF0 0"
.LASF1833:
	.string	"__INTR_ATTRS used, externally_visible"
.LASF2072:
	.string	"LED_On(led_gpio) gpio_set_pin_high(led_gpio)"
.LASF2037:
	.string	"RZ600_AT86RF231 8"
.LASF692:
	.string	"PORTC3 3"
.LASF1726:
	.string	"SAM4CMS4_0 ( SAM_PART_IS_DEFINED(SAM4CMS4C_0) )"
.LASF1210:
	.string	"TWD3 3"
.LASF1473:
	.string	"BLB0_MODE_3 (0xF3)"
.LASF196:
	.string	"__USFRACT_FBIT__ 8"
.LASF1235:
	.string	"DOR0 3"
.LASF169:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF1922:
	.string	"PGM_READ_BLOCK(dst,src,len) memcpy_P((dst), (src), (len))"
.LASF1670:
	.string	"SAMD09C ( SAM_PART_IS_DEFINED(SAMD09C13A) )"
.LASF533:
	.string	"PRIoFAST8 \"o\""
.LASF820:
	.string	"OCR0A_7 7"
.LASF1736:
	.string	"SAM4CMS32_1 ( SAM_PART_IS_DEFINED(SAM4CMS32C_1) )"
.LASF1747:
	.string	"SAMV71N ( SAM_PART_IS_DEFINED(SAMV71N19) || SAM_PART_IS_DEFINED(SAMV71N20) || SAM_PART_IS_DEFINED(SAMV71N21) )"
.LASF314:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF238:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF772:
	.string	"EEARL _SFR_IO8(0x21)"
.LASF221:
	.string	"__LLFRACT_FBIT__ 63"
.LASF1415:
	.string	"PC4 PORTC4"
.LASF1813:
	.string	"SAMS70 (SAMS70J || SAMS70N || SAMS70Q || SAMS70JB || SAMS70NB || SAMS70QB)"
.LASF325:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF1311:
	.string	"TIMER0_COMPA_vect _VECTOR(14)"
.LASF2030:
	.string	"EXT1102 1"
.LASF559:
	.string	"PRIuLEAST32 \"lu\""
.LASF1655:
	.ascii	"SAMD21E ( SAM_PART_IS_DEFINED(SAMD21E15A) || SAM_PART_IS_DEF"
	.ascii	"INED(SAMD21E16A) || SAM_PART_IS_DEFINED(SAMD21E17A) || SAM_P"
	.ascii	"ART_IS_DEFINED(SAMD21E18A) || SAM_PART_IS_DEFINED(SAMD21E15B"
	.ascii	") || SAM_PART_IS_DEFINED(SAMD2"
	.string	"1E15BU) || SAM_PART_IS_DEFINED(SAMD21E16B) || SAM_PART_IS_DEFINED(SAMD21E16BU) || SAM_PART_IS_DEFINED(SAMD21E15L) || SAM_PART_IS_DEFINED(SAMD21E16L) || SAM_PART_IS_DEFINED(SAMD21E17D) || SAM_PART_IS_DEFINED(SAMD21E17DU) || SAM_PART_IS_DEFINED(SAMD21E17L) )"
.LASF696:
	.string	"PIND _SFR_IO8(0x09)"
.LASF421:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF1861:
	.string	"__LPM_word_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint16_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF2015:
	.string	"ATMEGA168PB_XPLAINED_MINI 89"
.LASF825:
	.string	"OCR0B_3 3"
.LASF1709:
	.string	"SAM4C8_1 ( SAM_PART_IS_DEFINED(SAM4C8C_1) )"
.LASF164:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF2060:
	.string	"IOPORT_PULL_UP (1 << 2)"
.LASF1322:
	.string	"USART_TX_vect_num 20"
.LASF1058:
	.string	"ICES1 6"
.LASF1971:
	.string	"SAM4L_EK 45"
.LASF412:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF585:
	.string	"SCNdFAST32 \"ld\""
.LASF590:
	.string	"SCNiPTR SCNi16"
.LASF1310:
	.string	"TIMER0_COMPA_vect_num 14"
.LASF1632:
	.string	"SAM3N0 ( SAM_PART_IS_DEFINED(SAM3N0A) || SAM_PART_IS_DEFINED(SAM3N0B) || SAM_PART_IS_DEFINED(SAM3N0C) )"
.LASF740:
	.string	"EIFR _SFR_IO8(0x1C)"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF1799:
	.string	"SAM4CM_0 (SAM4CMP8_0 || SAM4CMP16_0 || SAM4CMP32_0 || SAM4CMS4_0 || SAM4CMS8_0 || SAM4CMS16_0 || SAM4CMS32_0)"
.LASF634:
	.string	"_SFR_BYTE(sfr) _MMIO_BYTE(_SFR_ADDR(sfr))"
.LASF1555:
	.string	"EXIT_FAILURE 1"
.LASF789:
	.string	"TCCR0A _SFR_IO8(0x24)"
.LASF354:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF1755:
	.string	"SAMV70Q ( SAM_PART_IS_DEFINED(SAMV70Q19) || SAM_PART_IS_DEFINED(SAMV70Q20) )"
.LASF1701:
	.string	"SAM4E8 ( SAM_PART_IS_DEFINED(SAM4E8C) || SAM_PART_IS_DEFINED(SAM4E8CB) || SAM_PART_IS_DEFINED(SAM4E8E) )"
.LASF762:
	.string	"EEDR _SFR_IO8(0x20)"
.LASF1338:
	.string	"XRAMSIZE 0"
.LASF1627:
	.string	"SAM3SD8 ( SAM_PART_IS_DEFINED(SAM3SD8B) || SAM_PART_IS_DEFINED(SAM3SD8C) )"
.LASF1894:
	.string	"SHORTENUM __attribute__ ((packed))"
.LASF530:
	.string	"PRIiPTR PRIi16"
.LASF826:
	.string	"OCR0B_4 4"
.LASF631:
	.string	"_SFR_IO_ADDR(sfr) (_SFR_MEM_ADDR(sfr) - __SFR_OFFSET)"
.LASF699:
	.string	"PIND2 2"
.LASF940:
	.string	"CAL3 3"
.LASF45:
	.string	"__INT64_TYPE__ long long int"
.LASF1476:
	.string	"BLB1_MODE_2 (0xEF)"
.LASF1367:
	.string	"__BOOT_LOCK_BITS_0_EXIST "
.LASF174:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF2068:
	.string	"gpio_set_pin_group_high(port_id,mask) ioport_set_group_high(port_id, mask)"
.LASF1521:
	.string	"__WCHAR_T "
.LASF600:
	.string	"SCNo16 \"o\""
.LASF1481:
	.string	"bool _Bool"
.LASF1494:
	.string	"___int_ptrdiff_t_h "
.LASF1162:
	.string	"OCR2A _SFR_MEM8(0xB3)"
.LASF855:
	.string	"SPE 6"
.LASF1168:
	.string	"OCR2_5 5"
.LASF780:
	.string	"EEAR7 7"
.LASF810:
	.string	"TCNT0_6 6"
.LASF404:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF657:
	.string	"DDB2 2"
.LASF1995:
	.string	"SAMD21_XPLAINED_PRO 69"
.LASF888:
	.string	"WDRF 3"
.LASF1231:
	.string	"UCSR0A _SFR_MEM8(0xC0)"
.LASF1615:
	.string	"MEGA_RFR2 ( AVR8_PART_IS_DEFINED(ATmega64RFR2) || AVR8_PART_IS_DEFINED(ATmega128RFR2) || AVR8_PART_IS_DEFINED(ATmega256RFR2) || AVR8_PART_IS_DEFINED(ATmega644RFR2) || AVR8_PART_IS_DEFINED(ATmega1284RFR2) || AVR8_PART_IS_DEFINED(ATmega2564RFR2) )"
.LASF1541:
	.string	"__ptr_t void *"
.LASF147:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF1336:
	.string	"RAMSTART (0x100)"
.LASF1584:
	.string	"XMEGA_A3 ( AVR8_PART_IS_DEFINED(ATxmega64A3) || AVR8_PART_IS_DEFINED(ATxmega128A3) || AVR8_PART_IS_DEFINED(ATxmega192A3) || AVR8_PART_IS_DEFINED(ATxmega256A3) )"
.LASF292:
	.string	"__HA_IBIT__ 8"
.LASF907:
	.string	"WDP1 1"
.LASF1864:
	.ascii	"__LPM_dword_tiny__(addr) (__ext"
	.string	"ension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint32_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF2102:
	.string	"ioport_port_mask_t"
.LASF450:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF1772:
	.string	"SAM3XA (SAM3X4 || SAM3X8 || SAM3A4 || SAM3A8)"
.LASF274:
	.string	"__HQ_IBIT__ 0"
.LASF520:
	.string	"PRIi16 \"i\""
.LASF592:
	.string	"SCNoLEAST8 \"hho\""
.LASF2096:
	.string	"long long int"
.LASF1451:
	.string	"AVR_STACK_POINTER_HI_ADDR _SFR_IO_ADDR(SPH)"
.LASF125:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF1116:
	.string	"OCR1AH4 4"
.LASF2043:
	.string	"_ATMEGA328P_XPLAINED_MINI_ "
.LASF2109:
	.string	"port"
.LASF998:
	.string	"ADCL2 2"
.LASF1335:
	.string	"SPM_PAGESIZE 128"
.LASF609:
	.string	"SCNo32 \"lo\""
.LASF329:
	.string	"__AVR_ARCH__ 5"
.LASF299:
	.string	"__UHA_FBIT__ 8"
.LASF1914:
	.string	"convert_byte_array_to_32_bit(data) (*(uint32_t *)(data))"
.LASF957:
	.string	"PCINT2 2"
.LASF230:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF1423:
	.string	"PD5 PORTD5"
.LASF190:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF1179:
	.string	"EXCLK 6"
.LASF844:
	.string	"GPIOR24 4"
.LASF135:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF1417:
	.string	"PC6 PORTC6"
.LASF1326:
	.string	"EE_READY_vect_num 22"
.LASF1448:
	.string	"AVR_STACK_POINTER_ADDR _SFR_IO_ADDR(SP)"
.LASF260:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF765:
	.string	"EEDR2 2"
.LASF2021:
	.string	"SIMULATOR_XMEGA_A1 97"
.LASF1931:
	.string	"EVK1101 2"
.LASF1082:
	.string	"ICR1 _SFR_MEM16(0x86)"
.LASF1743:
	.string	"SAMG54 ( SAM_PART_IS_DEFINED(SAMG54G19) || SAM_PART_IS_DEFINED(SAMG54J19) || SAM_PART_IS_DEFINED(SAMG54N19) )"
.LASF309:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF947:
	.string	"PCIE1 1"
.LASF1399:
	.string	"PIN3 3"
.LASF1078:
	.string	"TCNT1H4 4"
.LASF95:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF900:
	.string	"BLBSET 3"
.LASF459:
	.string	"INT64_MIN (-INT64_MAX - 1LL)"
.LASF554:
	.string	"PRIXFAST16 \"X\""
.LASF648:
	.string	"PINB2 2"
.LASF2065:
	.string	"gpio_toggle_pin(io_id) ioport_toggle_pin(io_id)"
.LASF1253:
	.string	"UCSZ01 2"
.LASF155:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF799:
	.string	"CS02 2"
.LASF1132:
	.string	"OCR1BH1 1"
.LASF974:
	.string	"PCINT18 2"
.LASF970:
	.string	"PCINT14 6"
.LASF197:
	.string	"__USFRACT_IBIT__ 0"
.LASF1944:
	.string	"XMEGA_B1_XPLAINED 18"
.LASF418:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF1377:
	.string	"SLEEP_MODE_EXT_STANDBY (0x07<<1)"
.LASF126:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1108:
	.string	"OCR1AL5 5"
.LASF637:
	.string	"_BV(bit) (1 << (bit))"
.LASF1424:
	.string	"PD6 PORTD6"
.LASF1056:
	.string	"WGM12 3"
.LASF856:
	.string	"SPIE 7"
.LASF1630:
	.string	"SAM3U4 ( SAM_PART_IS_DEFINED(SAM3U4C) || SAM_PART_IS_DEFINED(SAM3U4E) )"
.LASF343:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF860:
	.string	"SPIF 7"
.LASF1361:
	.string	"HFUSE_DEFAULT (FUSE_BOOTSZ0 & FUSE_BOOTSZ1 & FUSE_SPIEN)"
.LASF94:
	.string	"__UINT16_MAX__ 0xffffU"
.LASF1381:
	.string	"PORT5 5"
.LASF1920:
	.string	"convert_64_bit_to_byte_array(value,data) memcpy((data), (&(value)), sizeof(uint64_t))"
.LASF1692:
	.string	"SAMHA1E ( SAM_PART_IS_DEFINED(SAMHA1E14A) || SAM_PART_IS_DEFINED(SAMHA1E15A) || SAM_PART_IS_DEFINED(SAMHA1E16A) || SAM_PART_IS_DEFINED(SAMHA1E14AB) || SAM_PART_IS_DEFINED(SAMHA1E15AB) || SAM_PART_IS_DEFINED(SAMHA1E16AB) )"
.LASF1007:
	.string	"ADCH2 2"
.LASF1304:
	.string	"TIMER1_COMPA_vect_num 11"
.LASF1154:
	.string	"TCNT2_0 0"
.LASF951:
	.string	"ISC01 1"
.LASF475:
	.string	"UINT_FAST8_MAX UINT8_MAX"
.LASF733:
	.string	"TOV2 0"
.LASF23:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF1274:
	.string	"UBRR0_11 3"
.LASF793:
	.string	"COM0B1 5"
.LASF2034:
	.string	"SENSORS_XPLAINED_PRESSURE_1 5"
.LASF159:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF871:
	.string	"ACIS0 0"
.LASF165:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF79:
	.string	"__WINT_MAX__ 0x7fff"
.LASF1230:
	.string	"TWAM6 6"
.LASF139:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF1787:
	.string	"SAMR35 (SAMR35J)"
.LASF1437:
	.string	"SREG_T (6)"
.LASF751:
	.string	"GPIOR04 4"
.LASF1447:
	.string	"AVR_STACK_POINTER_REG SP"
.LASF1070:
	.string	"TCNT1L5 5"
.LASF1271:
	.string	"UBRR0_8 0"
.LASF1949:
	.string	"MEGA1284P_XPLAINED_BC 23"
.LASF1985:
	.string	"SAMD20_XPLAINED_PRO 59"
.LASF1111:
	.string	"OCR1AH _SFR_MEM8(0x89)"
.LASF1888:
	.string	"PROGMEM_T const"
.LASF1474:
	.string	"BLB0_MODE_4 (0xF7)"
.LASF280:
	.string	"__TQ_IBIT__ 0"
.LASF617:
	.string	"SCNxFAST32 \"lx\""
.LASF1124:
	.string	"OCR1BL2 2"
.LASF1563:
	.string	"UC3A4 ( AVR32_PART_IS_DEFINED(UC3A464) || AVR32_PART_IS_DEFINED(UC3A464S) || AVR32_PART_IS_DEFINED(UC3A4128) || AVR32_PART_IS_DEFINED(UC3A4128S) || AVR32_PART_IS_DEFINED(UC3A4256) || AVR32_PART_IS_DEFINED(UC3A4256S) )"
.LASF1190:
	.string	"TWPS0 0"
.LASF927:
	.string	"PRTWI 7"
.LASF1425:
	.string	"PD7 PORTD7"
.LASF1981:
	.string	"ATMEGA256RFR2_ZIGBIT 55"
.LASF458:
	.string	"INT64_MAX 0x7fffffffffffffffLL"
.LASF189:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1499:
	.string	"__SIZE_T__ "
.LASF709:
	.string	"DDD3 3"
.LASF1428:
	.string	"SP _SFR_IO16(0x3D)"
.LASF33:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF1666:
	.string	"WLR089U ( SAM_PART_IS_DEFINED(WLR089U0) )"
.LASF693:
	.string	"PORTC4 4"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF1211:
	.string	"TWD4 4"
.LASF1790:
	.string	"SAML21 (SAML21J || SAML21G || SAML21E)"
.LASF705:
	.string	"DDRD _SFR_IO8(0x0A)"
.LASF157:
	.string	"__LDBL_DIG__ 6"
.LASF1759:
	.string	"SAMS70N ( SAM_PART_IS_DEFINED(SAMS70N19) || SAM_PART_IS_DEFINED(SAMS70N20) || SAM_PART_IS_DEFINED(SAMS70N21) )"
.LASF1611:
	.ascii	"MEGA_X"
	.string	"X8_A ( AVR8_PART_IS_DEFINED(ATmega48A) || AVR8_PART_IS_DEFINED(ATmega48PA) || AVR8_PART_IS_DEFINED(ATmega88A) || AVR8_PART_IS_DEFINED(ATmega88PA) || AVR8_PART_IS_DEFINED(ATmega168A) || AVR8_PART_IS_DEFINED(ATmega168PA) || AVR8_PART_IS_DEFINED(ATmega328P) )"
.LASF999:
	.string	"ADCL3 3"
.LASF1475:
	.string	"BLB1_MODE_1 (0xFF)"
.LASF1921:
	.string	"MEMCPY_ENDIAN memcpy"
.LASF1977:
	.string	"SAM4E_EK 51"
.LASF1939:
	.string	"STK600_RC100X 11"
.LASF206:
	.string	"__UFRACT_FBIT__ 16"
.LASF2093:
	.string	"unsigned int"
.LASF1987:
	.string	"SAM4N_XPLAINED_PRO 61"
.LASF1996:
	.string	"SAMR21_XPLAINED_PRO 70"
.LASF1587:
	.string	"XMEGA_A1U ( AVR8_PART_IS_DEFINED(ATxmega64A1U) || AVR8_PART_IS_DEFINED(ATxmega128A1U) )"
.LASF1704:
	.string	"SAM4N16 ( SAM_PART_IS_DEFINED(SAM4N16B) || SAM_PART_IS_DEFINED(SAM4N16C) )"
.LASF2105:
	.string	"PORT_t"
.LASF326:
	.string	"__AVR 1"
.LASF1438:
	.string	"SREG_I (7)"
.LASF1241:
	.string	"TXB80 0"
.LASF1373:
	.string	"SLEEP_MODE_ADC (0x01<<1)"
.LASF1153:
	.string	"TCNT2 _SFR_MEM8(0xB2)"
.LASF1449:
	.string	"_HAVE_AVR_STACK_POINTER_HI 1"
.LASF688:
	.string	"PORTC _SFR_IO8(0x08)"
.LASF1776:
	.string	"SAMD21 (SAMD21J || SAMD21G || SAMD21E)"
.LASF1950:
	.string	"STK600_RC044X 24"
.LASF1975:
	.string	"SAM4S_EK2 49"
.LASF2057:
	.string	"IOPORT_INIT_LOW 0 << 1"
.LASF1303:
	.string	"TIMER1_CAPT_vect _VECTOR(10)"
.LASF300:
	.string	"__UHA_IBIT__ 8"
.LASF1431:
	.string	"SREG_C (0)"
.LASF1434:
	.string	"SREG_V (3)"
.LASF36:
	.string	"__WINT_TYPE__ int"
.LASF436:
	.string	"__AVR_DEV_LIB_NAME__ m328p"
.LASF1533:
	.string	"NULL"
.LASF1284:
	.string	"INT0_vect_num 1"
.LASF1298:
	.string	"TIMER2_COMPB_vect_num 8"
.LASF1620:
	.ascii	"MEGA_UNCATEGORIZED ( AVR8_PART_IS_DEFINED(AT90CAN128) || AVR"
	.ascii	"8_PART_IS_DEFINED(AT90CAN32) || AVR8_PART_IS_DEFINED(AT90CAN"
	.ascii	"64) || AVR8_PART_IS_DEFINED(AT90PWM1) || AVR8_PART_IS_DEFINE"
	.ascii	"D(AT90PWM216) || AVR8_PART_IS_DEFINED(AT90PWM2B) || AVR8_PAR"
	.ascii	"T_IS_DEFINED(AT90PWM316) || AVR8_PART_IS_DEFINED(AT90PWM3B) "
	.ascii	"|| AVR8_PART_IS_DEFINED(AT90PWM81) || AVR8_PART_IS_DEFINED(A"
	.ascii	"T90USB1286) || AVR8_PART_IS_DEFINED(AT90USB1287) || AVR8_PAR"
	.ascii	"T_IS_DEFINED(AT90USB162) || AVR8_PART_IS_DEFINED(AT90USB646)"
	.ascii	" || AVR8_PART_IS_DEFINED(AT90USB647) || AVR8_PART_IS_DEFINED"
	.ascii	"(AT90USB82) || AVR8_PART_IS_DEFINED(ATmega1284) || AVR8_PART"
	.ascii	"_IS_DEFINED(ATmega162) || AVR8_PART_IS_DEFINED(ATmega164P) |"
	.ascii	"| AVR8_PART_IS_DEFINED(ATmega165A) || AVR8_PART_IS_DEFINED(A"
	.ascii	"Tmega165P) || AVR8_PART_IS_DEFINED(ATmega165PA) || AVR8_PART"
	.ascii	"_IS_DEFINED(ATmega168P) || AVR8_PART_IS_DEFINED(ATmega169A) "
	.ascii	"|| AVR8_PART_IS_DEFINED(ATmega16M1) || AVR8_PART_IS_DEFINED("
	.ascii	"ATmega16U2) || AVR8_PART_IS_DEFINED(ATmega16U4) || AVR8_PART"
	.ascii	"_IS_DEFINED(ATmega256RFA2) || AVR8_PART_IS_DEFINED(ATmega324"
	.ascii	"P) || AVR8_PART_IS_DEFINED(ATmega325) || AVR8_PART_IS_DEFINE"
	.ascii	"D(ATmega3250) || AVR8_PART_IS_DEFINED(ATmega3250A) || AVR8_P"
	.ascii	"ART_IS_DEFINED(ATmega3250P) || AVR8_PART_IS_DEFINED(ATmega32"
	.ascii	"50PA) || AVR8_PART_IS_DEFINED(ATmega325A) || AVR8_PART_IS_DE"
	.ascii	"FINED(ATmega325P) || AVR8_PART_IS_DEFINED(ATmega325PA) || AV"
	.ascii	"R8_PART_IS_DEFINED(ATmega329) || AVR8_PART_IS_DEFINED(ATmega"
	.ascii	"3290) || AVR8_PART_IS_DEFINED(ATmega3290A) || AVR8_PART_IS_D"
	.ascii	"EFINED(ATmega3290P) || AVR8_PART_IS_DEFINED(ATmega3290PA) ||"
	.ascii	" AVR8_PART_IS_DEFINED(ATmega329A) || AVR8_PART_IS_DEFINED(AT"
	.ascii	"mega32M1) || AVR8_PART_IS_DEFINED(ATmega32U2) || AVR8_PART_I"
	.ascii	"S_DEFINED(ATmega32U4) || AVR8_PART_IS_DEFINED(ATmega48P) || "
	.ascii	"AVR8_PART_IS_DEFINED(ATmega644P) || AVR8_PART_IS_DEFINED(ATm"
	.ascii	"ega645) || AVR8_PART_IS_DEFINED(ATmega6450) || AVR8_PART_IS_"
	.ascii	"DEFINED(ATmega6450A) || AVR8_PART_IS_DEFINED(ATmega6450P) ||"
	.ascii	" AVR8_PART_IS_DEFINED(ATmega645A) || AVR8_PART_IS_DEFINED(AT"
	.ascii	"mega645P) || AVR8_PART_IS_DEFINED(ATmega649) || AVR8_PART_IS"
	.ascii	"_DEFINED(ATmega6490)"
	.ascii	" || AVR8_PART_IS_DEFINED(ATmega6490A) || AVR8_PART_IS_DEFINE"
	.ascii	"D(ATmega6490P) || AVR8_PART_IS_DEFINED(ATmega649A) || AVR8_P"
	.ascii	"ART_IS_DEFINED(ATmega649P) || AVR8_PART_IS_DEFINED(ATme"
	.string	"ga64M1) || AVR8_PART_IS_DEFINED(ATmega64RFA2) || AVR8_PART_IS_DEFINED(ATmega8) || AVR8_PART_IS_DEFINED(ATmega8515) || AVR8_PART_IS_DEFINED(ATmega8535) || AVR8_PART_IS_DEFINED(ATmega88P) || AVR8_PART_IS_DEFINED(ATmega8A) || AVR8_PART_IS_DEFINED(ATmega8U2) )"
.LASF1932:
	.string	"UC3C_EK 3"
.LASF1550:
	.string	"RANDOM_MAX 0x7FFFFFFF"
.LASF6:
	.string	"__GNUC_MINOR__ 4"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF1457:
	.string	"__AVR_LIBC_DATE_STRING__ \"20150208\""
.LASF1733:
	.string	"SAM4CMS16_1 ( SAM_PART_IS_DEFINED(SAM4CMS16C_1) )"
.LASF2083:
	.string	"USART_TX IOPORT_CREATE_PIN(PORTD, 1)"
.LASF618:
	.string	"SCNoPTR SCNo16"
.LASF827:
	.string	"OCR0B_5 5"
.LASF623:
	.string	"_MMIO_DWORD(mem_addr) (*(volatile uint32_t *)(mem_addr))"
.LASF41:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF700:
	.string	"PIND3 3"
.LASF1598:
	.string	"XMEGA_A (XMEGA_A1 || XMEGA_A3 || XMEGA_A3B || XMEGA_A4)"
.LASF941:
	.string	"CAL4 4"
.LASF408:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF5:
	.string	"__GNUC__ 5"
.LASF437:
	.string	"DEBUG 1"
.LASF1758:
	.string	"SAMS70JB ( SAM_PART_IS_DEFINED(SAMS70J19B) || SAM_PART_IS_DEFINED(SAMS70J20B) || SAM_PART_IS_DEFINED(SAMS70J21B) )"
.LASF782:
	.string	"EEAR8 0"
.LASF1144:
	.string	"COM2A0 6"
.LASF1169:
	.string	"OCR2_6 6"
.LASF332:
	.string	"__AVR_ENHANCED__ 1"
.LASF811:
	.string	"TCNT0_7 7"
.LASF658:
	.string	"DDB3 3"
.LASF379:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF567:
	.string	"PRIoPTR PRIo16"
.LASF988:
	.string	"ICIE1 5"
.LASF1674:
	.string	"SAMD10DM ( SAM_PART_IS_DEFINED(SAMD10D12AM) || SAM_PART_IS_DEFINED(SAMD10D13AM) || SAM_PART_IS_DEFINED(SAMD10D14AM) )"
.LASF105:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF1252:
	.string	"UCPHA0 1"
.LASF1442:
	.string	"YH r29"
.LASF908:
	.string	"WDP2 2"
.LASF1347:
	.string	"FUSE_CKSEL3 (unsigned char)~_BV(3)"
.LASF2111:
	.string	"flags"
.LASF97:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF1741:
	.string	"SAMG51 ( SAM_PART_IS_DEFINED(SAMG51G18) )"
.LASF1501:
	.string	"_SYS_SIZE_T_H "
.LASF151:
	.string	"__DBL_EPSILON__ ((double)1.19209290e-7L)"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF214:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF344:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF1561:
	.string	"UC3A1 ( AVR32_PART_IS_DEFINED(UC3A1128) || AVR32_PART_IS_DEFINED(UC3A1256) || AVR32_PART_IS_DEFINED(UC3A1512) )"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
