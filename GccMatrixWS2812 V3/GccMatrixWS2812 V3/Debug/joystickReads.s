	.file	"joystickReads.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.joystick_INIT,"ax",@progbits
.global	joystick_INIT
	.type	joystick_INIT, @function
joystick_INIT:
.LFB65:
	.file 1 "../src/joystickReads.c"
	.loc 1 32 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 33 0
	cbi 0xa,6
	ret
	.cfi_endproc
.LFE65:
	.size	joystick_INIT, .-joystick_INIT
	.section	.text.checkJoystick,"ax",@progbits
.global	checkJoystick
	.type	checkJoystick, @function
checkJoystick:
.LFB66:
	.loc 1 39 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 40 0
	call read_VRX
.LVL0:
	cpi r24,89
	sbci r25,2
	brlo .L3
	.loc 1 42 0
	lds r24,xMovement
	cpi r24,lo8(7)
	brge .L4
	.loc 1 43 0
	subi r24,lo8(-(1))
	sts xMovement,r24
	rjmp .L4
.L3:
	.loc 1 45 0
	call read_VRX
.LVL1:
	cpi r24,-112
	sbci r25,1
	brsh .L4
	.loc 1 47 0
	lds r24,xMovement
	cp __zero_reg__,r24
	brge .L4
	.loc 1 48 0
	subi r24,lo8(-(-1))
	sts xMovement,r24
.L4:
	.loc 1 51 0
	call read_VRY
.LVL2:
	cpi r24,89
	sbci r25,2
	brlo .L5
	.loc 1 53 0
	lds r24,yMovement
	cp __zero_reg__,r24
	brge .L2
	.loc 1 54 0
	subi r24,lo8(-(-1))
	sts yMovement,r24
	ret
.L5:
	.loc 1 56 0
	call read_VRY
.LVL3:
	cpi r24,-112
	sbci r25,1
	brsh .L2
	.loc 1 58 0
	lds r24,yMovement
	cpi r24,lo8(7)
	brge .L2
	.loc 1 59 0
	subi r24,lo8(-(1))
	sts yMovement,r24
.L2:
	ret
	.cfi_endproc
.LFE66:
	.size	checkJoystick, .-checkJoystick
	.section	.text.checkJoystickButton,"ax",@progbits
.global	checkJoystickButton
	.type	checkJoystickButton, @function
checkJoystickButton:
.LFB67:
	.loc 1 64 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 65 0
	in r24,0x9
	.loc 1 65 0
	andi r24,lo8(64)
	sts jButton,r24
	ret
	.cfi_endproc
.LFE67:
	.size	checkJoystickButton, .-checkJoystickButton
.global	jButton
	.section	.data.jButton,"aw",@progbits
	.type	jButton, @object
	.size	jButton, 1
jButton:
	.byte	1
	.comm	yMovement,1,1
	.comm	xMovement,1,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../src/ADC.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x133
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF2113
	.byte	0xc
	.long	.LASF2114
	.long	.LASF2115
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.long	.LASF2097
	.byte	0x2
	.byte	0x7d
	.long	0x38
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2099
	.uleb128 0x2
	.long	.LASF2098
	.byte	0x2
	.byte	0x7e
	.long	0x4a
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2100
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2101
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF2102
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF2103
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2104
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2105
	.uleb128 0x5
	.byte	0x1
	.long	.LASF2106
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF2116
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xd0
	.uleb128 0x7
	.long	.LVL0
	.long	0x11c
	.uleb128 0x7
	.long	.LVL1
	.long	0x11c
	.uleb128 0x7
	.long	.LVL2
	.long	0x129
	.uleb128 0x7
	.long	.LVL3
	.long	0x129
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF2107
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x8
	.long	.LASF2108
	.byte	0x1
	.byte	0xf
	.long	0x2d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	xMovement
	.uleb128 0x8
	.long	.LASF2109
	.byte	0x1
	.byte	0x10
	.long	0x2d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	yMovement
	.uleb128 0x8
	.long	.LASF2110
	.byte	0x1
	.byte	0x11
	.long	0x3f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	jButton
	.uleb128 0x9
	.byte	0x1
	.byte	0x1
	.long	.LASF2111
	.long	.LASF2111
	.byte	0x3
	.byte	0x10
	.uleb128 0x9
	.byte	0x1
	.byte	0x1
	.long	.LASF2112
	.long	.LASF2112
	.byte	0x3
	.byte	0x11
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
	.uleb128 0x3
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB65
	.long	.LFE65
	.long	.LFB66
	.long	.LFE66
	.long	.LFB67
	.long	.LFE67
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
	.file 4 "../src/asf.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF439
	.file 5 "../src/ASF/common/services/gpio/gpio.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x25
	.long	.LASF440
	.file 6 "../src/ASF/common/utils/parts.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro1
	.byte	0x4
	.file 7 "../src/ASF/common/services/gpio/mega_gpio/mega_gpio.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x26
	.long	.LASF702
	.file 8 "../src/ASF/mega/utils/compiler.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x25
	.long	.LASF703
	.file 9 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x61
	.long	.LASF704
	.file 10 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h"
	.byte	0x3
	.uleb128 0x63
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro2
	.file 11 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x23
	.long	.LASF707
	.file 12 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF773
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 13 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.7.374\\include/avr/iom328p.h"
	.byte	0x3
	.uleb128 0x110
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 14 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h"
	.byte	0x3
	.uleb128 0x273
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 15 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h"
	.byte	0x3
	.uleb128 0x275
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 16 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h"
	.byte	0x3
	.uleb128 0x277
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 17 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h"
	.byte	0x3
	.uleb128 0x27e
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.file 18 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h"
	.byte	0x3
	.uleb128 0x281
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x4
	.file 19 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdbool.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.file 20 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h"
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 21 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.file 22 "../src/ASF/common/utils/interrupt.h"
	.byte	0x3
	.uleb128 0x9e
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x25
	.long	.LASF1829
	.file 23 "../src/ASF/common/utils/interrupt/interrupt_avr8.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x25
	.long	.LASF1830
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x8
	.byte	0x4
	.file 24 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x4
	.file 25 "../src/ASF/mega/utils/progmem.h"
	.byte	0x3
	.uleb128 0x9f
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1852
	.file 26 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x59
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro15
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
	.file 27 "../src/ASF/common/services/ioport/ioport.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1932
	.file 28 "../src/ASF/common/services/ioport/mega/ioport.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0x1c
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x4
	.byte	0x4
	.file 29 "../src/ASF/common/boards/board.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x1d
	.byte	0x7
	.long	.Ldebug_macro26
	.file 30 "../src/ASF/mega/boards/atmega328p_xplained_mini/atmega328p_xplained_mini.h"
	.byte	0x3
	.uleb128 0x16b
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF2070
	.file 31 "../src/ASF/mega/boards/atmega328p_xplained_mini/led.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro27
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x4
	.byte	0x4
	.file 32 "../src/ASF/mega/utils/status_codes.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x20
	.byte	0x5
	.uleb128 0x28
	.long	.LASF2089
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro29
	.byte	0x4
	.file 33 "../src/Timer.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x5
	.uleb128 0xa
	.long	.LASF2093
	.byte	0x4
	.byte	0x5
	.uleb128 0x13
	.long	.LASF2094
	.byte	0x5
	.uleb128 0x14
	.long	.LASF2095
	.byte	0x5
	.uleb128 0x15
	.long	.LASF2096
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.parts.h.38.424177e1c4c7502bdf2cd6eac0e66f1e,comdat
.Ldebug_macro1:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x26
	.long	.LASF441
	.byte	0x5
	.uleb128 0x37
	.long	.LASF442
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF443
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF444
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF445
	.byte	0x5
	.uleb128 0x51
	.long	.LASF446
	.byte	0x5
	.uleb128 0x57
	.long	.LASF447
	.byte	0x5
	.uleb128 0x60
	.long	.LASF448
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF449
	.byte	0x5
	.uleb128 0x75
	.long	.LASF450
	.byte	0x5
	.uleb128 0x81
	.long	.LASF451
	.byte	0x5
	.uleb128 0x88
	.long	.LASF452
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF453
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF454
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF455
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF456
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF457
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF458
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF459
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF460
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF461
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF462
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF463
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF464
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF465
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF466
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF467
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF468
	.byte	0x5
	.uleb128 0xee
	.long	.LASF469
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF470
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF471
	.byte	0x5
	.uleb128 0x103
	.long	.LASF472
	.byte	0x5
	.uleb128 0x108
	.long	.LASF473
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF474
	.byte	0x5
	.uleb128 0x113
	.long	.LASF475
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF476
	.byte	0x5
	.uleb128 0x124
	.long	.LASF477
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF478
	.byte	0x5
	.uleb128 0x137
	.long	.LASF479
	.byte	0x5
	.uleb128 0x141
	.long	.LASF480
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF481
	.byte	0x5
	.uleb128 0x156
	.long	.LASF482
	.byte	0x5
	.uleb128 0x163
	.long	.LASF483
	.byte	0x5
	.uleb128 0x166
	.long	.LASF484
	.byte	0x5
	.uleb128 0x169
	.long	.LASF485
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF486
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF487
	.byte	0x5
	.uleb128 0x172
	.long	.LASF488
	.byte	0x5
	.uleb128 0x177
	.long	.LASF489
	.byte	0x5
	.uleb128 0x189
	.long	.LASF490
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF491
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF492
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF493
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF494
	.byte	0x5
	.uleb128 0x1b6
	.long	.LASF495
	.byte	0x5
	.uleb128 0x1c9
	.long	.LASF496
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF497
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF498
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF499
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF500
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF501
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF502
	.byte	0x5
	.uleb128 0x207
	.long	.LASF503
	.byte	0x5
	.uleb128 0x211
	.long	.LASF504
	.byte	0x5
	.uleb128 0x21c
	.long	.LASF505
	.byte	0x5
	.uleb128 0x263
	.long	.LASF506
	.byte	0x5
	.uleb128 0x269
	.long	.LASF507
	.byte	0x5
	.uleb128 0x277
	.long	.LASF508
	.byte	0x5
	.uleb128 0x27d
	.long	.LASF509
	.byte	0x5
	.uleb128 0x283
	.long	.LASF510
	.byte	0x5
	.uleb128 0x289
	.long	.LASF511
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF512
	.byte	0x5
	.uleb128 0x298
	.long	.LASF513
	.byte	0x5
	.uleb128 0x29d
	.long	.LASF514
	.byte	0x5
	.uleb128 0x2a2
	.long	.LASF515
	.byte	0x5
	.uleb128 0x2ac
	.long	.LASF516
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF517
	.byte	0x5
	.uleb128 0x2b7
	.long	.LASF518
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF519
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF520
	.byte	0x5
	.uleb128 0x2ce
	.long	.LASF521
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF522
	.byte	0x5
	.uleb128 0x2de
	.long	.LASF523
	.byte	0x5
	.uleb128 0x2e2
	.long	.LASF524
	.byte	0x5
	.uleb128 0x2eb
	.long	.LASF525
	.byte	0x5
	.uleb128 0x2f1
	.long	.LASF526
	.byte	0x5
	.uleb128 0x2f7
	.long	.LASF527
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF528
	.byte	0x5
	.uleb128 0x301
	.long	.LASF529
	.byte	0x5
	.uleb128 0x306
	.long	.LASF530
	.byte	0x5
	.uleb128 0x30b
	.long	.LASF531
	.byte	0x5
	.uleb128 0x315
	.long	.LASF532
	.byte	0x5
	.uleb128 0x321
	.long	.LASF533
	.byte	0x5
	.uleb128 0x332
	.long	.LASF534
	.byte	0x5
	.uleb128 0x33d
	.long	.LASF535
	.byte	0x5
	.uleb128 0x34a
	.long	.LASF536
	.byte	0x5
	.uleb128 0x35b
	.long	.LASF537
	.byte	0x5
	.uleb128 0x365
	.long	.LASF538
	.byte	0x5
	.uleb128 0x374
	.long	.LASF539
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF540
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF541
	.byte	0x5
	.uleb128 0x396
	.long	.LASF542
	.byte	0x5
	.uleb128 0x39c
	.long	.LASF543
	.byte	0x5
	.uleb128 0x3a8
	.long	.LASF544
	.byte	0x5
	.uleb128 0x3ac
	.long	.LASF545
	.byte	0x5
	.uleb128 0x3b5
	.long	.LASF546
	.byte	0x5
	.uleb128 0x3bf
	.long	.LASF547
	.byte	0x5
	.uleb128 0x3c5
	.long	.LASF548
	.byte	0x5
	.uleb128 0x3cc
	.long	.LASF549
	.byte	0x5
	.uleb128 0x3d3
	.long	.LASF550
	.byte	0x5
	.uleb128 0x3da
	.long	.LASF551
	.byte	0x5
	.uleb128 0x3df
	.long	.LASF552
	.byte	0x5
	.uleb128 0x3e7
	.long	.LASF553
	.byte	0x5
	.uleb128 0x3eb
	.long	.LASF554
	.byte	0x5
	.uleb128 0x3f5
	.long	.LASF555
	.byte	0x5
	.uleb128 0x3f9
	.long	.LASF556
	.byte	0x5
	.uleb128 0x402
	.long	.LASF557
	.byte	0x5
	.uleb128 0x408
	.long	.LASF558
	.byte	0x5
	.uleb128 0x40e
	.long	.LASF559
	.byte	0x5
	.uleb128 0x414
	.long	.LASF560
	.byte	0x5
	.uleb128 0x41d
	.long	.LASF561
	.byte	0x5
	.uleb128 0x421
	.long	.LASF562
	.byte	0x5
	.uleb128 0x425
	.long	.LASF563
	.byte	0x5
	.uleb128 0x429
	.long	.LASF564
	.byte	0x5
	.uleb128 0x432
	.long	.LASF565
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF566
	.byte	0x5
	.uleb128 0x441
	.long	.LASF567
	.byte	0x5
	.uleb128 0x449
	.long	.LASF568
	.byte	0x5
	.uleb128 0x450
	.long	.LASF569
	.byte	0x5
	.uleb128 0x463
	.long	.LASF570
	.byte	0x5
	.uleb128 0x469
	.long	.LASF571
	.byte	0x5
	.uleb128 0x46f
	.long	.LASF572
	.byte	0x5
	.uleb128 0x47a
	.long	.LASF573
	.byte	0x5
	.uleb128 0x483
	.long	.LASF574
	.byte	0x5
	.uleb128 0x48c
	.long	.LASF575
	.byte	0x5
	.uleb128 0x49a
	.long	.LASF576
	.byte	0x5
	.uleb128 0x4a3
	.long	.LASF577
	.byte	0x5
	.uleb128 0x4b2
	.long	.LASF578
	.byte	0x5
	.uleb128 0x4b8
	.long	.LASF579
	.byte	0x5
	.uleb128 0x4c4
	.long	.LASF580
	.byte	0x5
	.uleb128 0x4cb
	.long	.LASF581
	.byte	0x5
	.uleb128 0x4d2
	.long	.LASF582
	.byte	0x5
	.uleb128 0x4de
	.long	.LASF583
	.byte	0x5
	.uleb128 0x4e5
	.long	.LASF584
	.byte	0x5
	.uleb128 0x4ec
	.long	.LASF585
	.byte	0x5
	.uleb128 0x4f8
	.long	.LASF586
	.byte	0x5
	.uleb128 0x4fe
	.long	.LASF587
	.byte	0x5
	.uleb128 0x509
	.long	.LASF588
	.byte	0x5
	.uleb128 0x50f
	.long	.LASF589
	.byte	0x5
	.uleb128 0x519
	.long	.LASF590
	.byte	0x5
	.uleb128 0x51d
	.long	.LASF591
	.byte	0x5
	.uleb128 0x521
	.long	.LASF592
	.byte	0x5
	.uleb128 0x523
	.long	.LASF593
	.byte	0x5
	.uleb128 0x527
	.long	.LASF594
	.byte	0x5
	.uleb128 0x52b
	.long	.LASF595
	.byte	0x5
	.uleb128 0x52d
	.long	.LASF596
	.byte	0x5
	.uleb128 0x531
	.long	.LASF597
	.byte	0x5
	.uleb128 0x535
	.long	.LASF598
	.byte	0x5
	.uleb128 0x537
	.long	.LASF599
	.byte	0x5
	.uleb128 0x53c
	.long	.LASF600
	.byte	0x5
	.uleb128 0x542
	.long	.LASF601
	.byte	0x5
	.uleb128 0x54a
	.long	.LASF602
	.byte	0x5
	.uleb128 0x54e
	.long	.LASF603
	.byte	0x5
	.uleb128 0x552
	.long	.LASF604
	.byte	0x5
	.uleb128 0x554
	.long	.LASF605
	.byte	0x5
	.uleb128 0x558
	.long	.LASF606
	.byte	0x5
	.uleb128 0x55c
	.long	.LASF607
	.byte	0x5
	.uleb128 0x55e
	.long	.LASF608
	.byte	0x5
	.uleb128 0x562
	.long	.LASF609
	.byte	0x5
	.uleb128 0x566
	.long	.LASF610
	.byte	0x5
	.uleb128 0x568
	.long	.LASF611
	.byte	0x5
	.uleb128 0x56c
	.long	.LASF612
	.byte	0x5
	.uleb128 0x570
	.long	.LASF613
	.byte	0x5
	.uleb128 0x572
	.long	.LASF614
	.byte	0x5
	.uleb128 0x576
	.long	.LASF615
	.byte	0x5
	.uleb128 0x57a
	.long	.LASF616
	.byte	0x5
	.uleb128 0x57c
	.long	.LASF617
	.byte	0x5
	.uleb128 0x580
	.long	.LASF618
	.byte	0x5
	.uleb128 0x584
	.long	.LASF619
	.byte	0x5
	.uleb128 0x586
	.long	.LASF620
	.byte	0x5
	.uleb128 0x58a
	.long	.LASF621
	.byte	0x5
	.uleb128 0x58e
	.long	.LASF622
	.byte	0x5
	.uleb128 0x596
	.long	.LASF623
	.byte	0x5
	.uleb128 0x59a
	.long	.LASF624
	.byte	0x5
	.uleb128 0x59e
	.long	.LASF625
	.byte	0x5
	.uleb128 0x5a5
	.long	.LASF626
	.byte	0x5
	.uleb128 0x5a9
	.long	.LASF627
	.byte	0x5
	.uleb128 0x5ae
	.long	.LASF628
	.byte	0x5
	.uleb128 0x5b4
	.long	.LASF629
	.byte	0x5
	.uleb128 0x5c1
	.long	.LASF630
	.byte	0x5
	.uleb128 0x5c7
	.long	.LASF631
	.byte	0x5
	.uleb128 0x5cd
	.long	.LASF632
	.byte	0x5
	.uleb128 0x5d3
	.long	.LASF633
	.byte	0x5
	.uleb128 0x5d9
	.long	.LASF634
	.byte	0x5
	.uleb128 0x5df
	.long	.LASF635
	.byte	0x5
	.uleb128 0x5eb
	.long	.LASF636
	.byte	0x5
	.uleb128 0x5f0
	.long	.LASF637
	.byte	0x5
	.uleb128 0x5f5
	.long	.LASF638
	.byte	0x5
	.uleb128 0x5fa
	.long	.LASF639
	.byte	0x5
	.uleb128 0x5ff
	.long	.LASF640
	.byte	0x5
	.uleb128 0x603
	.long	.LASF641
	.byte	0x5
	.uleb128 0x60d
	.long	.LASF642
	.byte	0x5
	.uleb128 0x613
	.long	.LASF643
	.byte	0x5
	.uleb128 0x619
	.long	.LASF644
	.byte	0x5
	.uleb128 0x61f
	.long	.LASF645
	.byte	0x5
	.uleb128 0x625
	.long	.LASF646
	.byte	0x5
	.uleb128 0x62b
	.long	.LASF647
	.byte	0x5
	.uleb128 0x636
	.long	.LASF648
	.byte	0x5
	.uleb128 0x63c
	.long	.LASF649
	.byte	0x5
	.uleb128 0x642
	.long	.LASF650
	.byte	0x5
	.uleb128 0x648
	.long	.LASF651
	.byte	0x5
	.uleb128 0x64e
	.long	.LASF652
	.byte	0x5
	.uleb128 0x654
	.long	.LASF653
	.byte	0x5
	.uleb128 0x660
	.long	.LASF654
	.byte	0x5
	.uleb128 0x663
	.long	.LASF655
	.byte	0x5
	.uleb128 0x666
	.long	.LASF656
	.byte	0x5
	.uleb128 0x669
	.long	.LASF657
	.byte	0x5
	.uleb128 0x66c
	.long	.LASF658
	.byte	0x5
	.uleb128 0x66f
	.long	.LASF659
	.byte	0x5
	.uleb128 0x672
	.long	.LASF660
	.byte	0x5
	.uleb128 0x675
	.long	.LASF661
	.byte	0x5
	.uleb128 0x678
	.long	.LASF662
	.byte	0x5
	.uleb128 0x67b
	.long	.LASF663
	.byte	0x5
	.uleb128 0x67e
	.long	.LASF664
	.byte	0x5
	.uleb128 0x681
	.long	.LASF665
	.byte	0x5
	.uleb128 0x684
	.long	.LASF666
	.byte	0x5
	.uleb128 0x687
	.long	.LASF667
	.byte	0x5
	.uleb128 0x68a
	.long	.LASF668
	.byte	0x5
	.uleb128 0x68d
	.long	.LASF669
	.byte	0x5
	.uleb128 0x690
	.long	.LASF670
	.byte	0x5
	.uleb128 0x693
	.long	.LASF671
	.byte	0x5
	.uleb128 0x696
	.long	.LASF672
	.byte	0x5
	.uleb128 0x699
	.long	.LASF673
	.byte	0x5
	.uleb128 0x69c
	.long	.LASF674
	.byte	0x5
	.uleb128 0x69f
	.long	.LASF675
	.byte	0x5
	.uleb128 0x6a2
	.long	.LASF676
	.byte	0x5
	.uleb128 0x6a4
	.long	.LASF677
	.byte	0x5
	.uleb128 0x6a7
	.long	.LASF678
	.byte	0x5
	.uleb128 0x6aa
	.long	.LASF679
	.byte	0x5
	.uleb128 0x6ad
	.long	.LASF680
	.byte	0x5
	.uleb128 0x6b0
	.long	.LASF681
	.byte	0x5
	.uleb128 0x6b1
	.long	.LASF682
	.byte	0x5
	.uleb128 0x6b2
	.long	.LASF683
	.byte	0x5
	.uleb128 0x6b5
	.long	.LASF684
	.byte	0x5
	.uleb128 0x6b7
	.long	.LASF685
	.byte	0x5
	.uleb128 0x6b9
	.long	.LASF686
	.byte	0x5
	.uleb128 0x6bd
	.long	.LASF687
	.byte	0x5
	.uleb128 0x6be
	.long	.LASF688
	.byte	0x5
	.uleb128 0x6bf
	.long	.LASF689
	.byte	0x5
	.uleb128 0x6c2
	.long	.LASF690
	.byte	0x5
	.uleb128 0x6c5
	.long	.LASF691
	.byte	0x5
	.uleb128 0x6c8
	.long	.LASF692
	.byte	0x5
	.uleb128 0x6c9
	.long	.LASF693
	.byte	0x5
	.uleb128 0x6cc
	.long	.LASF694
	.byte	0x5
	.uleb128 0x6cd
	.long	.LASF695
	.byte	0x5
	.uleb128 0x6d0
	.long	.LASF696
	.byte	0x5
	.uleb128 0x6d1
	.long	.LASF697
	.byte	0x5
	.uleb128 0x6d4
	.long	.LASF698
	.byte	0x5
	.uleb128 0x6d5
	.long	.LASF699
	.byte	0x5
	.uleb128 0x6d8
	.long	.LASF700
	.byte	0x5
	.uleb128 0x6df
	.long	.LASF701
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.36.473802ecbcb5d4d38de6c7efbfcd3c60,comdat
.Ldebug_macro2:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF705
	.byte	0x5
	.uleb128 0x79
	.long	.LASF706
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.41.052d062c327f27e210bb72c3d087afe5,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.long	.LASF708
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF709
	.byte	0x5
	.uleb128 0x122
	.long	.LASF710
	.byte	0x5
	.uleb128 0x123
	.long	.LASF711
	.byte	0x5
	.uleb128 0x133
	.long	.LASF712
	.byte	0x5
	.uleb128 0x138
	.long	.LASF713
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF714
	.byte	0x5
	.uleb128 0x150
	.long	.LASF715
	.byte	0x5
	.uleb128 0x155
	.long	.LASF716
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF717
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF718
	.byte	0x5
	.uleb128 0x164
	.long	.LASF719
	.byte	0x5
	.uleb128 0x169
	.long	.LASF720
	.byte	0x5
	.uleb128 0x170
	.long	.LASF721
	.byte	0x5
	.uleb128 0x175
	.long	.LASF722
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF723
	.byte	0x5
	.uleb128 0x184
	.long	.LASF724
	.byte	0x5
	.uleb128 0x189
	.long	.LASF725
	.byte	0x5
	.uleb128 0x18e
	.long	.LASF726
	.byte	0x5
	.uleb128 0x193
	.long	.LASF727
	.byte	0x5
	.uleb128 0x198
	.long	.LASF728
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF729
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF730
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF731
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF732
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF733
	.byte	0x5
	.uleb128 0x1b6
	.long	.LASF734
	.byte	0x5
	.uleb128 0x1bb
	.long	.LASF735
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF736
	.byte	0x5
	.uleb128 0x1cb
	.long	.LASF737
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF738
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF739
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF740
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF741
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF742
	.byte	0x5
	.uleb128 0x1e9
	.long	.LASF743
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF744
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF745
	.byte	0x5
	.uleb128 0x1f8
	.long	.LASF746
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF747
	.byte	0x5
	.uleb128 0x208
	.long	.LASF748
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF749
	.byte	0x5
	.uleb128 0x212
	.long	.LASF750
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF751
	.byte	0x5
	.uleb128 0x222
	.long	.LASF752
	.byte	0x5
	.uleb128 0x227
	.long	.LASF753
	.byte	0x5
	.uleb128 0x234
	.long	.LASF754
	.byte	0x5
	.uleb128 0x239
	.long	.LASF755
	.byte	0x5
	.uleb128 0x242
	.long	.LASF756
	.byte	0x5
	.uleb128 0x247
	.long	.LASF757
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF758
	.byte	0x5
	.uleb128 0x259
	.long	.LASF759
	.byte	0x5
	.uleb128 0x25a
	.long	.LASF760
	.byte	0x5
	.uleb128 0x25d
	.long	.LASF761
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF762
	.byte	0x5
	.uleb128 0x271
	.long	.LASF763
	.byte	0x5
	.uleb128 0x272
	.long	.LASF764
	.byte	0x5
	.uleb128 0x273
	.long	.LASF765
	.byte	0x5
	.uleb128 0x274
	.long	.LASF766
	.byte	0x5
	.uleb128 0x275
	.long	.LASF767
	.byte	0x5
	.uleb128 0x276
	.long	.LASF768
	.byte	0x5
	.uleb128 0x277
	.long	.LASF769
	.byte	0x5
	.uleb128 0x278
	.long	.LASF770
	.byte	0x5
	.uleb128 0x279
	.long	.LASF771
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF772
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.inttypes.h.96.afb9c4be73a069861f8689c997efc518,comdat
.Ldebug_macro4:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x60
	.long	.LASF774
	.byte	0x5
	.uleb128 0x63
	.long	.LASF775
	.byte	0x5
	.uleb128 0x66
	.long	.LASF776
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF777
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF778
	.byte	0x5
	.uleb128 0x70
	.long	.LASF779
	.byte	0x5
	.uleb128 0x75
	.long	.LASF780
	.byte	0x5
	.uleb128 0x78
	.long	.LASF781
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF782
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF783
	.byte	0x5
	.uleb128 0x82
	.long	.LASF784
	.byte	0x5
	.uleb128 0x85
	.long	.LASF785
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF786
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF787
	.byte	0x5
	.uleb128 0x90
	.long	.LASF788
	.byte	0x5
	.uleb128 0x94
	.long	.LASF789
	.byte	0x5
	.uleb128 0x97
	.long	.LASF790
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF791
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF792
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF793
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF794
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF795
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF796
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF797
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF798
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF799
	.byte	0x5
	.uleb128 0xca
	.long	.LASF800
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF801
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF802
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF803
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF804
	.byte	0x5
	.uleb128 0xda
	.long	.LASF805
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF806
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF807
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF808
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF809
	.byte	0x5
	.uleb128 0xec
	.long	.LASF810
	.byte	0x5
	.uleb128 0xef
	.long	.LASF811
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF812
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF813
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF814
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF815
	.byte	0x5
	.uleb128 0x100
	.long	.LASF816
	.byte	0x5
	.uleb128 0x103
	.long	.LASF817
	.byte	0x5
	.uleb128 0x108
	.long	.LASF818
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF819
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF820
	.byte	0x5
	.uleb128 0x112
	.long	.LASF821
	.byte	0x5
	.uleb128 0x115
	.long	.LASF822
	.byte	0x5
	.uleb128 0x118
	.long	.LASF823
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF824
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF825
	.byte	0x5
	.uleb128 0x122
	.long	.LASF826
	.byte	0x5
	.uleb128 0x126
	.long	.LASF827
	.byte	0x5
	.uleb128 0x129
	.long	.LASF828
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF829
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF830
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF831
	.byte	0x5
	.uleb128 0x150
	.long	.LASF832
	.byte	0x5
	.uleb128 0x153
	.long	.LASF833
	.byte	0x5
	.uleb128 0x158
	.long	.LASF834
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF835
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF836
	.byte	0x5
	.uleb128 0x162
	.long	.LASF837
	.byte	0x5
	.uleb128 0x165
	.long	.LASF838
	.byte	0x5
	.uleb128 0x168
	.long	.LASF839
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF840
	.byte	0x5
	.uleb128 0x170
	.long	.LASF841
	.byte	0x5
	.uleb128 0x173
	.long	.LASF842
	.byte	0x5
	.uleb128 0x177
	.long	.LASF843
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF844
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF845
	.byte	0x5
	.uleb128 0x182
	.long	.LASF846
	.byte	0x5
	.uleb128 0x185
	.long	.LASF847
	.byte	0x5
	.uleb128 0x188
	.long	.LASF848
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF849
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF850
	.byte	0x5
	.uleb128 0x192
	.long	.LASF851
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF852
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF853
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF854
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF855
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF856
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF857
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF858
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF859
	.byte	0x5
	.uleb128 0x1c1
	.long	.LASF860
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF861
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF862
	.byte	0x5
	.uleb128 0x1cb
	.long	.LASF863
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF864
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF865
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF866
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF867
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF868
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF869
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF870
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF871
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF872
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF873
	.byte	0x5
	.uleb128 0x1f0
	.long	.LASF874
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF875
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF876
	.byte	0x5
	.uleb128 0x1fa
	.long	.LASF877
	.byte	0x5
	.uleb128 0x1fe
	.long	.LASF878
	.byte	0x5
	.uleb128 0x201
	.long	.LASF879
	.byte	0x5
	.uleb128 0x204
	.long	.LASF880
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF881
	.byte	0x5
	.uleb128 0x220
	.long	.LASF882
	.byte	0x5
	.uleb128 0x223
	.long	.LASF883
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.128.38ceebe2fb099c106e85a566519e0f1a,comdat
.Ldebug_macro5:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x80
	.long	.LASF884
	.byte	0x5
	.uleb128 0x81
	.long	.LASF885
	.byte	0x5
	.uleb128 0x82
	.long	.LASF886
	.byte	0x5
	.uleb128 0xac
	.long	.LASF887
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF888
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF889
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF890
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF891
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF892
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF893
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF894
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF895
	.byte	0x5
	.uleb128 0xba
	.long	.LASF896
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF897
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF898
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF899
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF900
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF901
	.byte	0x5
	.uleb128 0xea
	.long	.LASF902
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF903
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF904
	.byte	0x5
	.uleb128 0x107
	.long	.LASF905
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.iom328p.h.44.29c929f46483155923fc58520c74ebf7,comdat
.Ldebug_macro6:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF906
	.byte	0x5
	.uleb128 0x33
	.long	.LASF907
	.byte	0x5
	.uleb128 0x37
	.long	.LASF908
	.byte	0x5
	.uleb128 0x38
	.long	.LASF909
	.byte	0x5
	.uleb128 0x39
	.long	.LASF910
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF911
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF912
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF913
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF914
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF915
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF916
	.byte	0x5
	.uleb128 0x41
	.long	.LASF917
	.byte	0x5
	.uleb128 0x42
	.long	.LASF918
	.byte	0x5
	.uleb128 0x43
	.long	.LASF919
	.byte	0x5
	.uleb128 0x44
	.long	.LASF920
	.byte	0x5
	.uleb128 0x45
	.long	.LASF921
	.byte	0x5
	.uleb128 0x46
	.long	.LASF922
	.byte	0x5
	.uleb128 0x47
	.long	.LASF923
	.byte	0x5
	.uleb128 0x48
	.long	.LASF924
	.byte	0x5
	.uleb128 0x49
	.long	.LASF925
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF926
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF927
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF928
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF929
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF930
	.byte	0x5
	.uleb128 0x50
	.long	.LASF931
	.byte	0x5
	.uleb128 0x51
	.long	.LASF932
	.byte	0x5
	.uleb128 0x52
	.long	.LASF933
	.byte	0x5
	.uleb128 0x53
	.long	.LASF934
	.byte	0x5
	.uleb128 0x55
	.long	.LASF935
	.byte	0x5
	.uleb128 0x56
	.long	.LASF936
	.byte	0x5
	.uleb128 0x57
	.long	.LASF937
	.byte	0x5
	.uleb128 0x58
	.long	.LASF938
	.byte	0x5
	.uleb128 0x59
	.long	.LASF939
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF940
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF941
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF942
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF943
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF944
	.byte	0x5
	.uleb128 0x60
	.long	.LASF945
	.byte	0x5
	.uleb128 0x61
	.long	.LASF946
	.byte	0x5
	.uleb128 0x62
	.long	.LASF947
	.byte	0x5
	.uleb128 0x63
	.long	.LASF948
	.byte	0x5
	.uleb128 0x64
	.long	.LASF949
	.byte	0x5
	.uleb128 0x65
	.long	.LASF950
	.byte	0x5
	.uleb128 0x67
	.long	.LASF951
	.byte	0x5
	.uleb128 0x68
	.long	.LASF952
	.byte	0x5
	.uleb128 0x69
	.long	.LASF953
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF954
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF955
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF956
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF957
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF958
	.byte	0x5
	.uleb128 0x70
	.long	.LASF959
	.byte	0x5
	.uleb128 0x71
	.long	.LASF960
	.byte	0x5
	.uleb128 0x72
	.long	.LASF961
	.byte	0x5
	.uleb128 0x73
	.long	.LASF962
	.byte	0x5
	.uleb128 0x74
	.long	.LASF963
	.byte	0x5
	.uleb128 0x75
	.long	.LASF964
	.byte	0x5
	.uleb128 0x76
	.long	.LASF965
	.byte	0x5
	.uleb128 0x77
	.long	.LASF966
	.byte	0x5
	.uleb128 0x78
	.long	.LASF967
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF968
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF969
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF970
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF971
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF972
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF973
	.byte	0x5
	.uleb128 0x80
	.long	.LASF974
	.byte	0x5
	.uleb128 0x81
	.long	.LASF975
	.byte	0x5
	.uleb128 0x82
	.long	.LASF976
	.byte	0x5
	.uleb128 0x84
	.long	.LASF977
	.byte	0x5
	.uleb128 0x85
	.long	.LASF978
	.byte	0x5
	.uleb128 0x86
	.long	.LASF979
	.byte	0x5
	.uleb128 0x87
	.long	.LASF980
	.byte	0x5
	.uleb128 0x88
	.long	.LASF981
	.byte	0x5
	.uleb128 0x89
	.long	.LASF982
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF983
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF984
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF985
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF986
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF987
	.byte	0x5
	.uleb128 0x90
	.long	.LASF988
	.byte	0x5
	.uleb128 0x91
	.long	.LASF989
	.byte	0x5
	.uleb128 0x93
	.long	.LASF990
	.byte	0x5
	.uleb128 0x94
	.long	.LASF991
	.byte	0x5
	.uleb128 0x95
	.long	.LASF992
	.byte	0x5
	.uleb128 0x96
	.long	.LASF993
	.byte	0x5
	.uleb128 0x97
	.long	.LASF994
	.byte	0x5
	.uleb128 0x99
	.long	.LASF995
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF996
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF997
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF998
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF999
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1000
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF1001
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF1002
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF1003
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF1004
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF1005
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF1006
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF1007
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF1008
	.byte	0x5
	.uleb128 0xab
	.long	.LASF1009
	.byte	0x5
	.uleb128 0xac
	.long	.LASF1010
	.byte	0x5
	.uleb128 0xad
	.long	.LASF1011
	.byte	0x5
	.uleb128 0xae
	.long	.LASF1012
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF1013
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF1014
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1015
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF1016
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF1017
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF1018
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1019
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF1020
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF1021
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF1022
	.byte	0x5
	.uleb128 0xba
	.long	.LASF1023
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1024
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1025
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1026
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF1027
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1028
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF1029
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1030
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1031
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1032
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1033
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1034
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1035
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1036
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1037
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1038
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1039
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1040
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1041
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1042
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF1043
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1044
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1045
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1046
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1047
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1048
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1049
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF1050
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1051
	.byte	0x5
	.uleb128 0xde
	.long	.LASF1052
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF1053
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF1054
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1055
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1056
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF1057
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF1058
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1059
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF1060
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF1061
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF1062
	.byte	0x5
	.uleb128 0xea
	.long	.LASF1063
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1064
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1065
	.byte	0x5
	.uleb128 0xee
	.long	.LASF1066
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1067
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1068
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF1069
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF1070
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF1071
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF1072
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1073
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1074
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF1075
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF1076
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF1077
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1078
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF1079
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF1080
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF1081
	.byte	0x5
	.uleb128 0xff
	.long	.LASF1082
	.byte	0x5
	.uleb128 0x100
	.long	.LASF1083
	.byte	0x5
	.uleb128 0x102
	.long	.LASF1084
	.byte	0x5
	.uleb128 0x103
	.long	.LASF1085
	.byte	0x5
	.uleb128 0x104
	.long	.LASF1086
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1087
	.byte	0x5
	.uleb128 0x106
	.long	.LASF1088
	.byte	0x5
	.uleb128 0x107
	.long	.LASF1089
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1090
	.byte	0x5
	.uleb128 0x109
	.long	.LASF1091
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF1092
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF1093
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF1094
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF1095
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF1096
	.byte	0x5
	.uleb128 0x110
	.long	.LASF1097
	.byte	0x5
	.uleb128 0x111
	.long	.LASF1098
	.byte	0x5
	.uleb128 0x112
	.long	.LASF1099
	.byte	0x5
	.uleb128 0x113
	.long	.LASF1100
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1101
	.byte	0x5
	.uleb128 0x116
	.long	.LASF1102
	.byte	0x5
	.uleb128 0x117
	.long	.LASF1103
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1104
	.byte	0x5
	.uleb128 0x119
	.long	.LASF1105
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF1106
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF1107
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF1108
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF1109
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF1110
	.byte	0x5
	.uleb128 0x120
	.long	.LASF1111
	.byte	0x5
	.uleb128 0x121
	.long	.LASF1112
	.byte	0x5
	.uleb128 0x122
	.long	.LASF1113
	.byte	0x5
	.uleb128 0x123
	.long	.LASF1114
	.byte	0x5
	.uleb128 0x124
	.long	.LASF1115
	.byte	0x5
	.uleb128 0x125
	.long	.LASF1116
	.byte	0x5
	.uleb128 0x126
	.long	.LASF1117
	.byte	0x5
	.uleb128 0x127
	.long	.LASF1118
	.byte	0x5
	.uleb128 0x128
	.long	.LASF1119
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF1120
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF1121
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF1122
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF1123
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF1124
	.byte	0x5
	.uleb128 0x130
	.long	.LASF1125
	.byte	0x5
	.uleb128 0x131
	.long	.LASF1126
	.byte	0x5
	.uleb128 0x132
	.long	.LASF1127
	.byte	0x5
	.uleb128 0x133
	.long	.LASF1128
	.byte	0x5
	.uleb128 0x134
	.long	.LASF1129
	.byte	0x5
	.uleb128 0x135
	.long	.LASF1130
	.byte	0x5
	.uleb128 0x136
	.long	.LASF1131
	.byte	0x5
	.uleb128 0x137
	.long	.LASF1132
	.byte	0x5
	.uleb128 0x139
	.long	.LASF1133
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF1134
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF1135
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF1136
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF1137
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF1138
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF1139
	.byte	0x5
	.uleb128 0x140
	.long	.LASF1140
	.byte	0x5
	.uleb128 0x141
	.long	.LASF1141
	.byte	0x5
	.uleb128 0x143
	.long	.LASF1142
	.byte	0x5
	.uleb128 0x144
	.long	.LASF1143
	.byte	0x5
	.uleb128 0x145
	.long	.LASF1144
	.byte	0x5
	.uleb128 0x146
	.long	.LASF1145
	.byte	0x5
	.uleb128 0x147
	.long	.LASF1146
	.byte	0x5
	.uleb128 0x149
	.long	.LASF1147
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF1148
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF1149
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF1150
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF1151
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF1152
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1153
	.byte	0x5
	.uleb128 0x151
	.long	.LASF1154
	.byte	0x5
	.uleb128 0x152
	.long	.LASF1155
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1156
	.byte	0x5
	.uleb128 0x154
	.long	.LASF1157
	.byte	0x5
	.uleb128 0x156
	.long	.LASF1158
	.byte	0x5
	.uleb128 0x157
	.long	.LASF1159
	.byte	0x5
	.uleb128 0x159
	.long	.LASF1160
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF1161
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF1162
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x160
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x162
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x163
	.long	.LASF1169
	.byte	0x5
	.uleb128 0x164
	.long	.LASF1170
	.byte	0x5
	.uleb128 0x165
	.long	.LASF1171
	.byte	0x5
	.uleb128 0x166
	.long	.LASF1172
	.byte	0x5
	.uleb128 0x167
	.long	.LASF1173
	.byte	0x5
	.uleb128 0x168
	.long	.LASF1174
	.byte	0x5
	.uleb128 0x169
	.long	.LASF1175
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF1176
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF1177
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF1178
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF1179
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF1180
	.byte	0x5
	.uleb128 0x170
	.long	.LASF1181
	.byte	0x5
	.uleb128 0x171
	.long	.LASF1182
	.byte	0x5
	.uleb128 0x173
	.long	.LASF1183
	.byte	0x5
	.uleb128 0x174
	.long	.LASF1184
	.byte	0x5
	.uleb128 0x175
	.long	.LASF1185
	.byte	0x5
	.uleb128 0x176
	.long	.LASF1186
	.byte	0x5
	.uleb128 0x177
	.long	.LASF1187
	.byte	0x5
	.uleb128 0x178
	.long	.LASF1188
	.byte	0x5
	.uleb128 0x179
	.long	.LASF1189
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF1190
	.byte	0x5
	.uleb128 0x17c
	.long	.LASF1191
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF1192
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF1193
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x180
	.long	.LASF1195
	.byte	0x5
	.uleb128 0x181
	.long	.LASF1196
	.byte	0x5
	.uleb128 0x182
	.long	.LASF1197
	.byte	0x5
	.uleb128 0x183
	.long	.LASF1198
	.byte	0x5
	.uleb128 0x185
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x186
	.long	.LASF1200
	.byte	0x5
	.uleb128 0x187
	.long	.LASF1201
	.byte	0x5
	.uleb128 0x188
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x189
	.long	.LASF1203
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF1206
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF1207
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF1208
	.byte	0x5
	.uleb128 0x190
	.long	.LASF1209
	.byte	0x5
	.uleb128 0x191
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x192
	.long	.LASF1211
	.byte	0x5
	.uleb128 0x194
	.long	.LASF1212
	.byte	0x5
	.uleb128 0x195
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x196
	.long	.LASF1214
	.byte	0x5
	.uleb128 0x197
	.long	.LASF1215
	.byte	0x5
	.uleb128 0x198
	.long	.LASF1216
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF1217
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF1218
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF1219
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF1220
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF1221
	.byte	0x5
	.uleb128 0x19f
	.long	.LASF1222
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF1223
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF1224
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF1225
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF1226
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF1227
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF1228
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF1229
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF1230
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF1231
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF1232
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF1233
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF1234
	.byte	0x5
	.uleb128 0x1ae
	.long	.LASF1235
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF1236
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF1237
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF1238
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF1239
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF1240
	.byte	0x5
	.uleb128 0x1b4
	.long	.LASF1241
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF1242
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF1243
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF1244
	.byte	0x5
	.uleb128 0x1b9
	.long	.LASF1245
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF1246
	.byte	0x5
	.uleb128 0x1bc
	.long	.LASF1247
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF1248
	.byte	0x5
	.uleb128 0x1be
	.long	.LASF1249
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF1250
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF1251
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF1252
	.byte	0x5
	.uleb128 0x1c3
	.long	.LASF1253
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF1254
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF1255
	.byte	0x5
	.uleb128 0x1c8
	.long	.LASF1256
	.byte	0x5
	.uleb128 0x1ca
	.long	.LASF1257
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF1258
	.byte	0x5
	.uleb128 0x1cd
	.long	.LASF1259
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF1260
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF1261
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF1262
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF1263
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF1264
	.byte	0x5
	.uleb128 0x1d3
	.long	.LASF1265
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF1266
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF1267
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF1268
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF1269
	.byte	0x5
	.uleb128 0x1d9
	.long	.LASF1270
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF1271
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF1272
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1273
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF1274
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1275
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1276
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF1277
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF1278
	.byte	0x5
	.uleb128 0x1e3
	.long	.LASF1279
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF1280
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF1281
	.byte	0x5
	.uleb128 0x1e6
	.long	.LASF1282
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF1283
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF1284
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF1285
	.byte	0x5
	.uleb128 0x1eb
	.long	.LASF1286
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF1287
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF1288
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF1289
	.byte	0x5
	.uleb128 0x1f0
	.long	.LASF1290
	.byte	0x5
	.uleb128 0x1f1
	.long	.LASF1291
	.byte	0x5
	.uleb128 0x1f2
	.long	.LASF1292
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF1293
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF1294
	.byte	0x5
	.uleb128 0x1f5
	.long	.LASF1295
	.byte	0x5
	.uleb128 0x1f6
	.long	.LASF1296
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF1297
	.byte	0x5
	.uleb128 0x1f9
	.long	.LASF1298
	.byte	0x5
	.uleb128 0x1fa
	.long	.LASF1299
	.byte	0x5
	.uleb128 0x1fb
	.long	.LASF1300
	.byte	0x5
	.uleb128 0x1fc
	.long	.LASF1301
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF1302
	.byte	0x5
	.uleb128 0x1fe
	.long	.LASF1303
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF1304
	.byte	0x5
	.uleb128 0x201
	.long	.LASF1305
	.byte	0x5
	.uleb128 0x202
	.long	.LASF1306
	.byte	0x5
	.uleb128 0x203
	.long	.LASF1307
	.byte	0x5
	.uleb128 0x205
	.long	.LASF1308
	.byte	0x5
	.uleb128 0x206
	.long	.LASF1309
	.byte	0x5
	.uleb128 0x207
	.long	.LASF1310
	.byte	0x5
	.uleb128 0x208
	.long	.LASF1311
	.byte	0x5
	.uleb128 0x209
	.long	.LASF1312
	.byte	0x5
	.uleb128 0x20a
	.long	.LASF1313
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF1314
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF1315
	.byte	0x5
	.uleb128 0x20e
	.long	.LASF1316
	.byte	0x5
	.uleb128 0x20f
	.long	.LASF1317
	.byte	0x5
	.uleb128 0x210
	.long	.LASF1318
	.byte	0x5
	.uleb128 0x211
	.long	.LASF1319
	.byte	0x5
	.uleb128 0x212
	.long	.LASF1320
	.byte	0x5
	.uleb128 0x213
	.long	.LASF1321
	.byte	0x5
	.uleb128 0x214
	.long	.LASF1322
	.byte	0x5
	.uleb128 0x216
	.long	.LASF1323
	.byte	0x5
	.uleb128 0x217
	.long	.LASF1324
	.byte	0x5
	.uleb128 0x218
	.long	.LASF1325
	.byte	0x5
	.uleb128 0x21a
	.long	.LASF1326
	.byte	0x5
	.uleb128 0x21c
	.long	.LASF1327
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF1328
	.byte	0x5
	.uleb128 0x21e
	.long	.LASF1329
	.byte	0x5
	.uleb128 0x21f
	.long	.LASF1330
	.byte	0x5
	.uleb128 0x220
	.long	.LASF1331
	.byte	0x5
	.uleb128 0x221
	.long	.LASF1332
	.byte	0x5
	.uleb128 0x222
	.long	.LASF1333
	.byte	0x5
	.uleb128 0x223
	.long	.LASF1334
	.byte	0x5
	.uleb128 0x224
	.long	.LASF1335
	.byte	0x5
	.uleb128 0x226
	.long	.LASF1336
	.byte	0x5
	.uleb128 0x227
	.long	.LASF1337
	.byte	0x5
	.uleb128 0x228
	.long	.LASF1338
	.byte	0x5
	.uleb128 0x229
	.long	.LASF1339
	.byte	0x5
	.uleb128 0x22a
	.long	.LASF1340
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF1341
	.byte	0x5
	.uleb128 0x22c
	.long	.LASF1342
	.byte	0x5
	.uleb128 0x22d
	.long	.LASF1343
	.byte	0x5
	.uleb128 0x22e
	.long	.LASF1344
	.byte	0x5
	.uleb128 0x230
	.long	.LASF1345
	.byte	0x5
	.uleb128 0x232
	.long	.LASF1346
	.byte	0x5
	.uleb128 0x233
	.long	.LASF1347
	.byte	0x5
	.uleb128 0x234
	.long	.LASF1348
	.byte	0x5
	.uleb128 0x235
	.long	.LASF1349
	.byte	0x5
	.uleb128 0x236
	.long	.LASF1350
	.byte	0x5
	.uleb128 0x237
	.long	.LASF1351
	.byte	0x5
	.uleb128 0x238
	.long	.LASF1352
	.byte	0x5
	.uleb128 0x239
	.long	.LASF1353
	.byte	0x5
	.uleb128 0x23a
	.long	.LASF1354
	.byte	0x5
	.uleb128 0x23c
	.long	.LASF1355
	.byte	0x5
	.uleb128 0x23d
	.long	.LASF1356
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF1357
	.byte	0x5
	.uleb128 0x23f
	.long	.LASF1358
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1359
	.byte	0x5
	.uleb128 0x241
	.long	.LASF1360
	.byte	0x5
	.uleb128 0x242
	.long	.LASF1361
	.byte	0x5
	.uleb128 0x243
	.long	.LASF1362
	.byte	0x5
	.uleb128 0x244
	.long	.LASF1363
	.byte	0x5
	.uleb128 0x246
	.long	.LASF1364
	.byte	0x5
	.uleb128 0x248
	.long	.LASF1365
	.byte	0x5
	.uleb128 0x249
	.long	.LASF1366
	.byte	0x5
	.uleb128 0x24a
	.long	.LASF1367
	.byte	0x5
	.uleb128 0x24b
	.long	.LASF1368
	.byte	0x5
	.uleb128 0x24c
	.long	.LASF1369
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF1370
	.byte	0x5
	.uleb128 0x24e
	.long	.LASF1371
	.byte	0x5
	.uleb128 0x24f
	.long	.LASF1372
	.byte	0x5
	.uleb128 0x250
	.long	.LASF1373
	.byte	0x5
	.uleb128 0x252
	.long	.LASF1374
	.byte	0x5
	.uleb128 0x253
	.long	.LASF1375
	.byte	0x5
	.uleb128 0x254
	.long	.LASF1376
	.byte	0x5
	.uleb128 0x255
	.long	.LASF1377
	.byte	0x5
	.uleb128 0x256
	.long	.LASF1378
	.byte	0x5
	.uleb128 0x257
	.long	.LASF1379
	.byte	0x5
	.uleb128 0x258
	.long	.LASF1380
	.byte	0x5
	.uleb128 0x259
	.long	.LASF1381
	.byte	0x5
	.uleb128 0x25a
	.long	.LASF1382
	.byte	0x5
	.uleb128 0x25c
	.long	.LASF1383
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF1384
	.byte	0x5
	.uleb128 0x25f
	.long	.LASF1385
	.byte	0x5
	.uleb128 0x260
	.long	.LASF1386
	.byte	0x5
	.uleb128 0x261
	.long	.LASF1387
	.byte	0x5
	.uleb128 0x262
	.long	.LASF1388
	.byte	0x5
	.uleb128 0x263
	.long	.LASF1389
	.byte	0x5
	.uleb128 0x264
	.long	.LASF1390
	.byte	0x5
	.uleb128 0x265
	.long	.LASF1391
	.byte	0x5
	.uleb128 0x266
	.long	.LASF1392
	.byte	0x5
	.uleb128 0x268
	.long	.LASF1393
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1394
	.byte	0x5
	.uleb128 0x26a
	.long	.LASF1395
	.byte	0x5
	.uleb128 0x26b
	.long	.LASF1396
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1397
	.byte	0x5
	.uleb128 0x26d
	.long	.LASF1398
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF1399
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1400
	.byte	0x5
	.uleb128 0x270
	.long	.LASF1401
	.byte	0x5
	.uleb128 0x272
	.long	.LASF1402
	.byte	0x5
	.uleb128 0x273
	.long	.LASF1403
	.byte	0x5
	.uleb128 0x274
	.long	.LASF1404
	.byte	0x5
	.uleb128 0x275
	.long	.LASF1405
	.byte	0x5
	.uleb128 0x276
	.long	.LASF1406
	.byte	0x5
	.uleb128 0x277
	.long	.LASF1407
	.byte	0x5
	.uleb128 0x278
	.long	.LASF1408
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF1409
	.byte	0x5
	.uleb128 0x27b
	.long	.LASF1410
	.byte	0x5
	.uleb128 0x27c
	.long	.LASF1411
	.byte	0x5
	.uleb128 0x27d
	.long	.LASF1412
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF1413
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF1414
	.byte	0x5
	.uleb128 0x280
	.long	.LASF1415
	.byte	0x5
	.uleb128 0x282
	.long	.LASF1416
	.byte	0x5
	.uleb128 0x283
	.long	.LASF1417
	.byte	0x5
	.uleb128 0x284
	.long	.LASF1418
	.byte	0x5
	.uleb128 0x285
	.long	.LASF1419
	.byte	0x5
	.uleb128 0x286
	.long	.LASF1420
	.byte	0x5
	.uleb128 0x287
	.long	.LASF1421
	.byte	0x5
	.uleb128 0x288
	.long	.LASF1422
	.byte	0x5
	.uleb128 0x289
	.long	.LASF1423
	.byte	0x5
	.uleb128 0x28a
	.long	.LASF1424
	.byte	0x5
	.uleb128 0x28c
	.long	.LASF1425
	.byte	0x5
	.uleb128 0x28d
	.long	.LASF1426
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF1427
	.byte	0x5
	.uleb128 0x28f
	.long	.LASF1428
	.byte	0x5
	.uleb128 0x290
	.long	.LASF1429
	.byte	0x5
	.uleb128 0x291
	.long	.LASF1430
	.byte	0x5
	.uleb128 0x292
	.long	.LASF1431
	.byte	0x5
	.uleb128 0x293
	.long	.LASF1432
	.byte	0x5
	.uleb128 0x294
	.long	.LASF1433
	.byte	0x5
	.uleb128 0x296
	.long	.LASF1434
	.byte	0x5
	.uleb128 0x297
	.long	.LASF1426
	.byte	0x5
	.uleb128 0x298
	.long	.LASF1427
	.byte	0x5
	.uleb128 0x299
	.long	.LASF1428
	.byte	0x5
	.uleb128 0x29a
	.long	.LASF1429
	.byte	0x5
	.uleb128 0x29b
	.long	.LASF1430
	.byte	0x5
	.uleb128 0x29c
	.long	.LASF1431
	.byte	0x5
	.uleb128 0x29d
	.long	.LASF1432
	.byte	0x5
	.uleb128 0x29e
	.long	.LASF1433
	.byte	0x5
	.uleb128 0x2a0
	.long	.LASF1435
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1436
	.byte	0x5
	.uleb128 0x2a2
	.long	.LASF1437
	.byte	0x5
	.uleb128 0x2a3
	.long	.LASF1438
	.byte	0x5
	.uleb128 0x2a4
	.long	.LASF1439
	.byte	0x5
	.uleb128 0x2a5
	.long	.LASF1440
	.byte	0x5
	.uleb128 0x2a6
	.long	.LASF1441
	.byte	0x5
	.uleb128 0x2a7
	.long	.LASF1442
	.byte	0x5
	.uleb128 0x2a9
	.long	.LASF1443
	.byte	0x5
	.uleb128 0x2aa
	.long	.LASF1444
	.byte	0x5
	.uleb128 0x2ab
	.long	.LASF1445
	.byte	0x5
	.uleb128 0x2ac
	.long	.LASF1446
	.byte	0x5
	.uleb128 0x2ad
	.long	.LASF1447
	.byte	0x5
	.uleb128 0x2ae
	.long	.LASF1448
	.byte	0x5
	.uleb128 0x2af
	.long	.LASF1449
	.byte	0x5
	.uleb128 0x2b0
	.long	.LASF1450
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF1451
	.byte	0x5
	.uleb128 0x2b3
	.long	.LASF1452
	.byte	0x5
	.uleb128 0x2b4
	.long	.LASF1453
	.byte	0x5
	.uleb128 0x2b5
	.long	.LASF1454
	.byte	0x5
	.uleb128 0x2b6
	.long	.LASF1455
	.byte	0x5
	.uleb128 0x2b7
	.long	.LASF1456
	.byte	0x5
	.uleb128 0x2b8
	.long	.LASF1457
	.byte	0x5
	.uleb128 0x2b9
	.long	.LASF1458
	.byte	0x5
	.uleb128 0x2ba
	.long	.LASF1459
	.byte	0x5
	.uleb128 0x2bc
	.long	.LASF1460
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF1461
	.byte	0x5
	.uleb128 0x2be
	.long	.LASF1462
	.byte	0x5
	.uleb128 0x2bf
	.long	.LASF1463
	.byte	0x5
	.uleb128 0x2c0
	.long	.LASF1464
	.byte	0x5
	.uleb128 0x2c1
	.long	.LASF1465
	.byte	0x5
	.uleb128 0x2c2
	.long	.LASF1466
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF1467
	.byte	0x5
	.uleb128 0x2c4
	.long	.LASF1468
	.byte	0x5
	.uleb128 0x2c6
	.long	.LASF1469
	.byte	0x5
	.uleb128 0x2c7
	.long	.LASF1470
	.byte	0x5
	.uleb128 0x2c8
	.long	.LASF1471
	.byte	0x5
	.uleb128 0x2c9
	.long	.LASF1472
	.byte	0x5
	.uleb128 0x2ca
	.long	.LASF1473
	.byte	0x5
	.uleb128 0x2cb
	.long	.LASF1474
	.byte	0x5
	.uleb128 0x2cc
	.long	.LASF1475
	.byte	0x5
	.uleb128 0x2cd
	.long	.LASF1476
	.byte	0x5
	.uleb128 0x2ce
	.long	.LASF1477
	.byte	0x5
	.uleb128 0x2d0
	.long	.LASF1478
	.byte	0x5
	.uleb128 0x2d1
	.long	.LASF1479
	.byte	0x5
	.uleb128 0x2d2
	.long	.LASF1480
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF1481
	.byte	0x5
	.uleb128 0x2d4
	.long	.LASF1482
	.byte	0x5
	.uleb128 0x2d5
	.long	.LASF1483
	.byte	0x5
	.uleb128 0x2d6
	.long	.LASF1484
	.byte	0x5
	.uleb128 0x2d7
	.long	.LASF1485
	.byte	0x5
	.uleb128 0x2d9
	.long	.LASF1486
	.byte	0x5
	.uleb128 0x2da
	.long	.LASF1487
	.byte	0x5
	.uleb128 0x2db
	.long	.LASF1488
	.byte	0x5
	.uleb128 0x2dc
	.long	.LASF1489
	.byte	0x5
	.uleb128 0x2dd
	.long	.LASF1490
	.byte	0x5
	.uleb128 0x2de
	.long	.LASF1491
	.byte	0x5
	.uleb128 0x2df
	.long	.LASF1492
	.byte	0x5
	.uleb128 0x2e0
	.long	.LASF1493
	.byte	0x5
	.uleb128 0x2e2
	.long	.LASF1494
	.byte	0x5
	.uleb128 0x2e3
	.long	.LASF1495
	.byte	0x5
	.uleb128 0x2e4
	.long	.LASF1496
	.byte	0x5
	.uleb128 0x2e5
	.long	.LASF1497
	.byte	0x5
	.uleb128 0x2e6
	.long	.LASF1498
	.byte	0x5
	.uleb128 0x2e7
	.long	.LASF1499
	.byte	0x5
	.uleb128 0x2e8
	.long	.LASF1500
	.byte	0x5
	.uleb128 0x2e9
	.long	.LASF1501
	.byte	0x5
	.uleb128 0x2ea
	.long	.LASF1502
	.byte	0x5
	.uleb128 0x2ec
	.long	.LASF1503
	.byte	0x5
	.uleb128 0x2ed
	.long	.LASF1504
	.byte	0x5
	.uleb128 0x2ee
	.long	.LASF1505
	.byte	0x5
	.uleb128 0x2ef
	.long	.LASF1506
	.byte	0x5
	.uleb128 0x2f0
	.long	.LASF1507
	.byte	0x5
	.uleb128 0x2f1
	.long	.LASF1508
	.byte	0x5
	.uleb128 0x2f2
	.long	.LASF1509
	.byte	0x5
	.uleb128 0x2f3
	.long	.LASF1510
	.byte	0x5
	.uleb128 0x2f4
	.long	.LASF1511
	.byte	0x5
	.uleb128 0x2f6
	.long	.LASF1512
	.byte	0x5
	.uleb128 0x2f7
	.long	.LASF1513
	.byte	0x5
	.uleb128 0x2f8
	.long	.LASF1514
	.byte	0x5
	.uleb128 0x2f9
	.long	.LASF1515
	.byte	0x5
	.uleb128 0x2fa
	.long	.LASF1516
	.byte	0x5
	.uleb128 0x2fb
	.long	.LASF1517
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF1518
	.byte	0x5
	.uleb128 0x2fd
	.long	.LASF1519
	.byte	0x5
	.uleb128 0x2fe
	.long	.LASF1520
	.byte	0x5
	.uleb128 0x2ff
	.long	.LASF1521
	.byte	0x5
	.uleb128 0x300
	.long	.LASF1522
	.byte	0x5
	.uleb128 0x302
	.long	.LASF1523
	.byte	0x5
	.uleb128 0x304
	.long	.LASF1524
	.byte	0x5
	.uleb128 0x305
	.long	.LASF1525
	.byte	0x5
	.uleb128 0x306
	.long	.LASF1526
	.byte	0x5
	.uleb128 0x307
	.long	.LASF1527
	.byte	0x5
	.uleb128 0x308
	.long	.LASF1528
	.byte	0x5
	.uleb128 0x309
	.long	.LASF1529
	.byte	0x5
	.uleb128 0x30a
	.long	.LASF1530
	.byte	0x5
	.uleb128 0x30b
	.long	.LASF1531
	.byte	0x5
	.uleb128 0x30c
	.long	.LASF1532
	.byte	0x5
	.uleb128 0x30e
	.long	.LASF1533
	.byte	0x5
	.uleb128 0x30f
	.long	.LASF1534
	.byte	0x5
	.uleb128 0x310
	.long	.LASF1535
	.byte	0x5
	.uleb128 0x311
	.long	.LASF1536
	.byte	0x5
	.uleb128 0x312
	.long	.LASF1537
	.byte	0x5
	.uleb128 0x314
	.long	.LASF1538
	.byte	0x5
	.uleb128 0x315
	.long	.LASF1539
	.byte	0x5
	.uleb128 0x316
	.long	.LASF1540
	.byte	0x5
	.uleb128 0x317
	.long	.LASF1541
	.byte	0x5
	.uleb128 0x318
	.long	.LASF1542
	.byte	0x5
	.uleb128 0x319
	.long	.LASF1543
	.byte	0x5
	.uleb128 0x31a
	.long	.LASF1544
	.byte	0x5
	.uleb128 0x31b
	.long	.LASF1545
	.byte	0x5
	.uleb128 0x31c
	.long	.LASF1546
	.byte	0x5
	.uleb128 0x323
	.long	.LASF1547
	.byte	0x5
	.uleb128 0x324
	.long	.LASF1548
	.byte	0x5
	.uleb128 0x326
	.long	.LASF1549
	.byte	0x5
	.uleb128 0x327
	.long	.LASF1550
	.byte	0x5
	.uleb128 0x329
	.long	.LASF1551
	.byte	0x5
	.uleb128 0x32a
	.long	.LASF1552
	.byte	0x5
	.uleb128 0x32c
	.long	.LASF1553
	.byte	0x5
	.uleb128 0x32d
	.long	.LASF1554
	.byte	0x5
	.uleb128 0x32f
	.long	.LASF1555
	.byte	0x5
	.uleb128 0x330
	.long	.LASF1556
	.byte	0x5
	.uleb128 0x332
	.long	.LASF1557
	.byte	0x5
	.uleb128 0x333
	.long	.LASF1558
	.byte	0x5
	.uleb128 0x335
	.long	.LASF1559
	.byte	0x5
	.uleb128 0x336
	.long	.LASF1560
	.byte	0x5
	.uleb128 0x338
	.long	.LASF1561
	.byte	0x5
	.uleb128 0x339
	.long	.LASF1562
	.byte	0x5
	.uleb128 0x33b
	.long	.LASF1563
	.byte	0x5
	.uleb128 0x33c
	.long	.LASF1564
	.byte	0x5
	.uleb128 0x33e
	.long	.LASF1565
	.byte	0x5
	.uleb128 0x33f
	.long	.LASF1566
	.byte	0x5
	.uleb128 0x341
	.long	.LASF1567
	.byte	0x5
	.uleb128 0x342
	.long	.LASF1568
	.byte	0x5
	.uleb128 0x344
	.long	.LASF1569
	.byte	0x5
	.uleb128 0x345
	.long	.LASF1570
	.byte	0x5
	.uleb128 0x347
	.long	.LASF1571
	.byte	0x5
	.uleb128 0x348
	.long	.LASF1572
	.byte	0x5
	.uleb128 0x34a
	.long	.LASF1573
	.byte	0x5
	.uleb128 0x34b
	.long	.LASF1574
	.byte	0x5
	.uleb128 0x34d
	.long	.LASF1575
	.byte	0x5
	.uleb128 0x34e
	.long	.LASF1576
	.byte	0x5
	.uleb128 0x350
	.long	.LASF1577
	.byte	0x5
	.uleb128 0x351
	.long	.LASF1578
	.byte	0x5
	.uleb128 0x353
	.long	.LASF1579
	.byte	0x5
	.uleb128 0x354
	.long	.LASF1580
	.byte	0x5
	.uleb128 0x356
	.long	.LASF1581
	.byte	0x5
	.uleb128 0x357
	.long	.LASF1582
	.byte	0x5
	.uleb128 0x359
	.long	.LASF1583
	.byte	0x5
	.uleb128 0x35a
	.long	.LASF1584
	.byte	0x5
	.uleb128 0x35c
	.long	.LASF1585
	.byte	0x5
	.uleb128 0x35d
	.long	.LASF1586
	.byte	0x5
	.uleb128 0x35f
	.long	.LASF1587
	.byte	0x5
	.uleb128 0x360
	.long	.LASF1588
	.byte	0x5
	.uleb128 0x362
	.long	.LASF1589
	.byte	0x5
	.uleb128 0x363
	.long	.LASF1590
	.byte	0x5
	.uleb128 0x365
	.long	.LASF1591
	.byte	0x5
	.uleb128 0x366
	.long	.LASF1592
	.byte	0x5
	.uleb128 0x368
	.long	.LASF1593
	.byte	0x5
	.uleb128 0x369
	.long	.LASF1594
	.byte	0x5
	.uleb128 0x36b
	.long	.LASF1595
	.byte	0x5
	.uleb128 0x36c
	.long	.LASF1596
	.byte	0x5
	.uleb128 0x36e
	.long	.LASF1597
	.byte	0x5
	.uleb128 0x373
	.long	.LASF1598
	.byte	0x5
	.uleb128 0x374
	.long	.LASF1599
	.byte	0x5
	.uleb128 0x375
	.long	.LASF1600
	.byte	0x5
	.uleb128 0x376
	.long	.LASF1601
	.byte	0x5
	.uleb128 0x377
	.long	.LASF1602
	.byte	0x5
	.uleb128 0x378
	.long	.LASF1603
	.byte	0x5
	.uleb128 0x379
	.long	.LASF1604
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF1605
	.byte	0x5
	.uleb128 0x37f
	.long	.LASF1606
	.byte	0x5
	.uleb128 0x382
	.long	.LASF1607
	.byte	0x5
	.uleb128 0x383
	.long	.LASF1608
	.byte	0x5
	.uleb128 0x384
	.long	.LASF1609
	.byte	0x5
	.uleb128 0x385
	.long	.LASF1610
	.byte	0x5
	.uleb128 0x386
	.long	.LASF1611
	.byte	0x5
	.uleb128 0x387
	.long	.LASF1612
	.byte	0x5
	.uleb128 0x388
	.long	.LASF1613
	.byte	0x5
	.uleb128 0x389
	.long	.LASF1614
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF1615
	.byte	0x5
	.uleb128 0x38d
	.long	.LASF1616
	.byte	0x5
	.uleb128 0x38e
	.long	.LASF1617
	.byte	0x5
	.uleb128 0x38f
	.long	.LASF1618
	.byte	0x5
	.uleb128 0x390
	.long	.LASF1619
	.byte	0x5
	.uleb128 0x391
	.long	.LASF1620
	.byte	0x5
	.uleb128 0x392
	.long	.LASF1621
	.byte	0x5
	.uleb128 0x393
	.long	.LASF1622
	.byte	0x5
	.uleb128 0x394
	.long	.LASF1623
	.byte	0x5
	.uleb128 0x395
	.long	.LASF1624
	.byte	0x5
	.uleb128 0x398
	.long	.LASF1625
	.byte	0x5
	.uleb128 0x399
	.long	.LASF1626
	.byte	0x5
	.uleb128 0x39a
	.long	.LASF1627
	.byte	0x5
	.uleb128 0x39b
	.long	.LASF1628
	.byte	0x5
	.uleb128 0x3a0
	.long	.LASF1629
	.byte	0x5
	.uleb128 0x3a1
	.long	.LASF1630
	.byte	0x5
	.uleb128 0x3a2
	.long	.LASF1631
	.byte	0x5
	.uleb128 0x3a6
	.long	.LASF1632
	.byte	0x5
	.uleb128 0x3a7
	.long	.LASF1633
	.byte	0x5
	.uleb128 0x3ab
	.long	.LASF1634
	.byte	0x5
	.uleb128 0x3ae
	.long	.LASF1635
	.byte	0x5
	.uleb128 0x3af
	.long	.LASF1636
	.byte	0x5
	.uleb128 0x3b0
	.long	.LASF1637
	.byte	0x5
	.uleb128 0x3b1
	.long	.LASF1638
	.byte	0x5
	.uleb128 0x3b2
	.long	.LASF1639
	.byte	0x5
	.uleb128 0x3b3
	.long	.LASF1640
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.portpins.h.34.21289185946cbf62723ecc8db6cdc3ff,comdat
.Ldebug_macro7:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1641
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1642
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1643
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1644
	.byte	0x5
	.uleb128 0x30
	.long	.LASF1645
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1646
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1647
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1648
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1649
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1650
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1651
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1652
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1653
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1654
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1655
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1656
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1657
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1658
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1659
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1660
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1661
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1662
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1663
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1664
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1665
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1666
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1667
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1668
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1669
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1670
	.byte	0x5
	.uleb128 0x95
	.long	.LASF1671
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1672
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1673
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF1674
	.byte	0x5
	.uleb128 0xac
	.long	.LASF1675
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1676
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1677
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1678
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1679
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1680
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1681
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1682
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1683
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1684
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1685
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1686
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1687
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1688
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.common.h.35.c7e66042b2128622b9d3bddccc9a39f4,comdat
.Ldebug_macro8:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1689
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1690
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1691
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1692
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1693
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1694
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1695
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1696
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1697
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1698
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1699
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1700
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1701
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1702
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1703
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1704
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1705
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1706
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF1707
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1708
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1709
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1710
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1711
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1712
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF1713
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1714
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1715
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1716
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.version.h.54.85699b1a50c61c991a37d67b69e79e95,comdat
.Ldebug_macro9:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1717
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1718
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1719
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1720
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1721
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1722
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1723
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1724
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fuse.h.36.5c373c650020c0efef2cbaa98ea802c3,comdat
.Ldebug_macro10:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1725
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1726
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1727
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.36.51f311078904691e8f8c3d70111251d8,comdat
.Ldebug_macro11:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1728
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1729
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1730
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1731
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1732
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1733
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1734
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1735
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1736
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1737
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1738
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1739
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF1740
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1741
	.byte	0x5
	.uleb128 0xea
	.long	.LASF1742
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdbool.h.29.07dce69c3b78884144b7f7bd19483461,comdat
.Ldebug_macro12:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1743
	.byte	0x5
	.uleb128 0x21
	.long	.LASF1744
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1745
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1746
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1747
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.99b5021e28f91cdb161c889e07266673,comdat
.Ldebug_macro13:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.long	.LASF1748
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1749
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1750
	.byte	0x5
	.uleb128 0x89
	.long	.LASF1751
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF1752
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1753
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1754
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1755
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF1756
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF1757
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1758
	.byte	0x5
	.uleb128 0x91
	.long	.LASF1759
	.byte	0x6
	.uleb128 0xa1
	.long	.LASF1760
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1761
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1762
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1763
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1764
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF1765
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1766
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF1767
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1768
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1769
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1770
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1771
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1772
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1773
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1774
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1775
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1776
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1777
	.byte	0x6
	.uleb128 0xee
	.long	.LASF1778
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1779
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF1780
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF1781
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF1782
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF1783
	.byte	0x5
	.uleb128 0x110
	.long	.LASF1784
	.byte	0x5
	.uleb128 0x111
	.long	.LASF1785
	.byte	0x5
	.uleb128 0x112
	.long	.LASF1786
	.byte	0x5
	.uleb128 0x113
	.long	.LASF1787
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1788
	.byte	0x5
	.uleb128 0x115
	.long	.LASF1789
	.byte	0x5
	.uleb128 0x116
	.long	.LASF1790
	.byte	0x5
	.uleb128 0x117
	.long	.LASF1791
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1792
	.byte	0x5
	.uleb128 0x119
	.long	.LASF1793
	.byte	0x6
	.uleb128 0x126
	.long	.LASF1794
	.byte	0x6
	.uleb128 0x15b
	.long	.LASF1795
	.byte	0x6
	.uleb128 0x191
	.long	.LASF1796
	.byte	0x5
	.uleb128 0x196
	.long	.LASF1797
	.byte	0x6
	.uleb128 0x19c
	.long	.LASF1798
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF1799
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.40.248a6087ef49adb4f4328833c0282d4b,comdat
.Ldebug_macro14:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1800
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1801
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1802
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1803
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.161.19e15733342b50ead2919490b095303e,comdat
.Ldebug_macro15:
	.word	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xa1
	.long	.LASF1760
	.byte	0x6
	.uleb128 0xee
	.long	.LASF1778
	.byte	0x6
	.uleb128 0x15b
	.long	.LASF1795
	.byte	0x6
	.uleb128 0x191
	.long	.LASF1796
	.byte	0x5
	.uleb128 0x196
	.long	.LASF1797
	.byte	0x6
	.uleb128 0x19c
	.long	.LASF1798
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF1799
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.51.3a36e1d757b19eb9d8852fbf8bb7cd30,comdat
.Ldebug_macro16:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1804
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1805
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1806
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1807
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1808
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1809
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1810
	.byte	0x5
	.uleb128 0x84
	.long	.LASF1811
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF1812
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1813
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1814
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1815
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1816
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1817
	.byte	0x5
	.uleb128 0x2a7
	.long	.LASF1818
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.compiler.h.71.f9633126e8a32454fdb20497dc57808e,comdat
.Ldebug_macro17:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1819
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1820
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1821
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1822
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF1823
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1824
	.byte	0x5
	.uleb128 0x79
	.long	.LASF1825
	.byte	0x5
	.uleb128 0x93
	.long	.LASF1826
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1827
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF1828
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.b2193b640edda749ea0a45a8be5976c8,comdat
.Ldebug_macro18:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1831
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1832
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1833
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1834
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1835
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1836
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF1837
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1838
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1839
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1840
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1841
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1842
	.byte	0x5
	.uleb128 0x151
	.long	.LASF1843
	.byte	0x5
	.uleb128 0x152
	.long	.LASF1844
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1845
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt_avr8.h.89.988a0fb0a0728821bb2ce6a5fad9a217,comdat
.Ldebug_macro19:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1846
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1847
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1848
	.byte	0x5
	.uleb128 0x85
	.long	.LASF1849
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1850
	.byte	0x5
	.uleb128 0x87
	.long	.LASF1851
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.83.7bf4a326041279617a872e0717310315,comdat
.Ldebug_macro20:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1853
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1802
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.98.de80e653d80602932888d287eea24d43,comdat
.Ldebug_macro21:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1854
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1855
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF1856
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF1857
	.byte	0x5
	.uleb128 0x198
	.long	.LASF1858
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF1859
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF1860
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF1861
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF1862
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF1863
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF1864
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF1865
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF1866
	.byte	0x5
	.uleb128 0x21b
	.long	.LASF1867
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF1868
	.byte	0x5
	.uleb128 0x243
	.long	.LASF1869
	.byte	0x5
	.uleb128 0x253
	.long	.LASF1870
	.byte	0x5
	.uleb128 0x264
	.long	.LASF1871
	.byte	0x5
	.uleb128 0x265
	.long	.LASF1872
	.byte	0x5
	.uleb128 0x266
	.long	.LASF1873
	.byte	0x5
	.uleb128 0x267
	.long	.LASF1874
	.byte	0x5
	.uleb128 0x285
	.long	.LASF1875
	.byte	0x5
	.uleb128 0x28d
	.long	.LASF1876
	.byte	0x5
	.uleb128 0x295
	.long	.LASF1877
	.byte	0x5
	.uleb128 0x29e
	.long	.LASF1878
	.byte	0x5
	.uleb128 0x2a7
	.long	.LASF1879
	.byte	0x5
	.uleb128 0x41f
	.long	.LASF1880
	.byte	0x5
	.uleb128 0x428
	.long	.LASF1881
	.byte	0x5
	.uleb128 0x431
	.long	.LASF1882
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF1883
	.byte	0x5
	.uleb128 0x443
	.long	.LASF1884
	.byte	0x5
	.uleb128 0x466
	.long	.LASF1885
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.progmem.h.56.1d8b28eb4bdbace2fba3d4aa9d1800d3,comdat
.Ldebug_macro22:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1886
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1887
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1888
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1889
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1890
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1891
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF1892
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1893
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1894
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1895
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.compiler.h.162.3bca7208a79b237ff211f6b945969fd5,comdat
.Ldebug_macro23:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF1896
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF1897
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF1898
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF1899
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1900
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1901
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1902
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1903
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1904
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1905
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1906
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1907
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1908
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1909
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1910
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1911
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1912
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1913
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1914
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF1915
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF1916
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF1917
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF1918
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1919
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1920
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF1921
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF1922
	.byte	0x5
	.uleb128 0x120
	.long	.LASF1923
	.byte	0x5
	.uleb128 0x121
	.long	.LASF1924
	.byte	0x5
	.uleb128 0x124
	.long	.LASF1925
	.byte	0x5
	.uleb128 0x125
	.long	.LASF1926
	.byte	0x5
	.uleb128 0x139
	.long	.LASF1927
	.byte	0x5
	.uleb128 0x144
	.long	.LASF1928
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF1929
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1930
	.byte	0x5
	.uleb128 0x159
	.long	.LASF1931
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ioport.h.38.48f501ae460febc49dd950c4a2361938,comdat
.Ldebug_macro24:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1933
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1934
	.byte	0x5
	.uleb128 0x29
	.long	.LASF1935
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1936
	.byte	0x5
	.uleb128 0x35
	.long	.LASF1937
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1938
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1939
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1940
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1941
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1942
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF1943
	.byte	0x5
	.uleb128 0x94
	.long	.LASF1944
	.byte	0x5
	.uleb128 0x95
	.long	.LASF1945
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mega_gpio.h.43.3e8869bf7dde66f4dae42caccabdc28f,comdat
.Ldebug_macro25:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF1946
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1947
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1948
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1949
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1950
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1951
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1952
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1953
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1954
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1955
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.board.h.41.2d9694df0f6b670341666b9015632b94,comdat
.Ldebug_macro26:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.long	.LASF1956
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1957
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF1958
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1959
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1960
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1961
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1962
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1963
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1964
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1965
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1966
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1967
	.byte	0x5
	.uleb128 0x49
	.long	.LASF1968
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF1969
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1970
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1971
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1972
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF1973
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF1974
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1975
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1976
	.byte	0x5
	.uleb128 0x52
	.long	.LASF1977
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1978
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1979
	.byte	0x5
	.uleb128 0x55
	.long	.LASF1980
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1981
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1982
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1983
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1984
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1985
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1986
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1987
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF1988
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF1989
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1990
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1991
	.byte	0x5
	.uleb128 0x61
	.long	.LASF1992
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1993
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1994
	.byte	0x5
	.uleb128 0x64
	.long	.LASF1995
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1996
	.byte	0x5
	.uleb128 0x66
	.long	.LASF1997
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1998
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1999
	.byte	0x5
	.uleb128 0x69
	.long	.LASF2000
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF2001
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF2002
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF2003
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF2004
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF2005
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF2006
	.byte	0x5
	.uleb128 0x70
	.long	.LASF2007
	.byte	0x5
	.uleb128 0x71
	.long	.LASF2008
	.byte	0x5
	.uleb128 0x72
	.long	.LASF2009
	.byte	0x5
	.uleb128 0x73
	.long	.LASF2010
	.byte	0x5
	.uleb128 0x74
	.long	.LASF2011
	.byte	0x5
	.uleb128 0x75
	.long	.LASF2012
	.byte	0x5
	.uleb128 0x76
	.long	.LASF2013
	.byte	0x5
	.uleb128 0x77
	.long	.LASF2014
	.byte	0x5
	.uleb128 0x78
	.long	.LASF2015
	.byte	0x5
	.uleb128 0x79
	.long	.LASF2016
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF2017
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF2018
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF2019
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF2020
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF2021
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF2022
	.byte	0x5
	.uleb128 0x80
	.long	.LASF2023
	.byte	0x5
	.uleb128 0x81
	.long	.LASF2024
	.byte	0x5
	.uleb128 0x82
	.long	.LASF2025
	.byte	0x5
	.uleb128 0x83
	.long	.LASF2026
	.byte	0x5
	.uleb128 0x84
	.long	.LASF2027
	.byte	0x5
	.uleb128 0x85
	.long	.LASF2028
	.byte	0x5
	.uleb128 0x86
	.long	.LASF2029
	.byte	0x5
	.uleb128 0x87
	.long	.LASF2030
	.byte	0x5
	.uleb128 0x88
	.long	.LASF2031
	.byte	0x5
	.uleb128 0x89
	.long	.LASF2032
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF2033
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF2034
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF2035
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF2036
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF2037
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF2038
	.byte	0x5
	.uleb128 0x90
	.long	.LASF2039
	.byte	0x5
	.uleb128 0x91
	.long	.LASF2040
	.byte	0x5
	.uleb128 0x92
	.long	.LASF2041
	.byte	0x5
	.uleb128 0x93
	.long	.LASF2042
	.byte	0x5
	.uleb128 0x94
	.long	.LASF2043
	.byte	0x5
	.uleb128 0x95
	.long	.LASF2044
	.byte	0x5
	.uleb128 0x96
	.long	.LASF2045
	.byte	0x5
	.uleb128 0x97
	.long	.LASF2046
	.byte	0x5
	.uleb128 0x98
	.long	.LASF2047
	.byte	0x5
	.uleb128 0x99
	.long	.LASF2048
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF2049
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF2050
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF2051
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF2052
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF2053
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF2054
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF2055
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF2056
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF2057
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF2058
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF2059
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF2060
	.byte	0x5
	.uleb128 0xab
	.long	.LASF2061
	.byte	0x5
	.uleb128 0xac
	.long	.LASF2062
	.byte	0x5
	.uleb128 0xad
	.long	.LASF2063
	.byte	0x5
	.uleb128 0xae
	.long	.LASF2064
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF2065
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF2066
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF2067
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF2068
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF2069
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.led.h.38.8c4408d5cc264ea8e7bbcc0ac6971d10,comdat
.Ldebug_macro27:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x26
	.long	.LASF2071
	.byte	0x5
	.uleb128 0x31
	.long	.LASF2072
	.byte	0x5
	.uleb128 0x39
	.long	.LASF2073
	.byte	0x5
	.uleb128 0x41
	.long	.LASF2074
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.atmega328p_xplained_mini.h.47.411278661c63ad4794d5f415bca0f65b,comdat
.Ldebug_macro28:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF2075
	.byte	0x5
	.uleb128 0x30
	.long	.LASF2076
	.byte	0x5
	.uleb128 0x33
	.long	.LASF2077
	.byte	0x5
	.uleb128 0x34
	.long	.LASF2078
	.byte	0x5
	.uleb128 0x37
	.long	.LASF2079
	.byte	0x5
	.uleb128 0x39
	.long	.LASF2080
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF2081
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF2082
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF2083
	.byte	0x5
	.uleb128 0x40
	.long	.LASF2084
	.byte	0x5
	.uleb128 0x41
	.long	.LASF2085
	.byte	0x5
	.uleb128 0x42
	.long	.LASF2086
	.byte	0x5
	.uleb128 0x43
	.long	.LASF2087
	.byte	0x5
	.uleb128 0x44
	.long	.LASF2088
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ADC.h.10.4375d630963ad1b8b9d883a341299c49,comdat
.Ldebug_macro29:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF2090
	.byte	0x5
	.uleb128 0xb
	.long	.LASF2091
	.byte	0x5
	.uleb128 0xc
	.long	.LASF2092
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1380:
	.string	"OCR1AH5 5"
.LASF650:
	.string	"SAME70N ( SAM_PART_IS_DEFINED(SAME70N19) || SAM_PART_IS_DEFINED(SAME70N20) || SAM_PART_IS_DEFINED(SAME70N21) )"
.LASF255:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF768:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF1899:
	.string	"FLASH_EXTERN(x) extern const x"
.LASF246:
	.string	"__UACCUM_FBIT__ 16"
.LASF1913:
	.string	"ADDR_COPY_DST_SRC_16(dst,src) memcpy((&(dst)), (&(src)), sizeof(uint16_t))"
.LASF215:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF152:
	.string	"__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
.LASF1221:
	.string	"PCINT3 3"
.LASF1965:
	.string	"STK600_RC064X 10"
.LASF1690:
	.string	"SPL _SFR_IO8(0x3D)"
.LASF1703:
	.string	"XH r27"
.LASF899:
	.string	"_SFR_DWORD(sfr) _MMIO_DWORD(_SFR_ADDR(sfr))"
.LASF1108:
	.string	"GPIOR25 5"
.LASF1145:
	.string	"SM1 2"
.LASF1293:
	.string	"MUX2 2"
.LASF997:
	.string	"OCF2A 1"
.LASF1336:
	.string	"TCNT1H _SFR_MEM8(0x85)"
.LASF247:
	.string	"__UACCUM_IBIT__ 16"
.LASF1114:
	.string	"CPHA 2"
.LASF1362:
	.string	"ICR1H6 6"
.LASF1828:
	.string	"LSB(u16) (((uint8_t* )&u16)[0])"
.LASF1845:
	.string	"ISR_ALIASOF(v) __attribute__((alias(__STRINGIFY(v))))"
.LASF1479:
	.string	"TWIE 0"
.LASF108:
	.string	"__UINT16_C(c) c ## U"
.LASF574:
	.string	"SAMDA1G ( SAM_PART_IS_DEFINED(SAMDA1G14A) || SAM_PART_IS_DEFINED(SAMDA1G14B) || SAM_PART_IS_DEFINED(SAMDA1G15A) || SAM_PART_IS_DEFINED(SAMDA1G15B) || SAM_PART_IS_DEFINED(SAMDA1G16A) || SAM_PART_IS_DEFINED(SAMDA1G16B) )"
.LASF1034:
	.string	"EEAR _SFR_IO16(0x21)"
.LASF804:
	.string	"PRIXLEAST8 \"X\""
.LASF877:
	.string	"SCNuFAST32 \"lu\""
.LASF1556:
	.string	"PCINT2_vect _VECTOR(5)"
.LASF1573:
	.string	"TIMER0_COMPA_vect_num 14"
.LASF1211:
	.string	"PCIE2 2"
.LASF836:
	.string	"SCNdFAST8 \"hhd\""
.LASF133:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF1128:
	.string	"SPDR3 3"
.LASF190:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF2030:
	.string	"SAMD10_XPLAINED_MINI 77"
.LASF1159:
	.string	"SELFPRGEN 0"
.LASF1150:
	.string	"BORF 2"
.LASF912:
	.string	"PINB3 3"
.LASF1506:
	.string	"UCSZ02 2"
.LASF1483:
	.string	"TWSTA 5"
.LASF1239:
	.string	"PCINT20 4"
.LASF1917:
	.string	"convert_byte_array_to_64_bit(data) (*(uint64_t *)(data))"
.LASF2049:
	.string	"AVR_SIMULATOR_UC3 98"
.LASF659:
	.string	"SAM4L (SAM4LS || SAM4LC)"
.LASF1396:
	.string	"OCR1BH2 2"
.LASF1285:
	.string	"ADCSRB _SFR_MEM8(0x7B)"
.LASF704:
	.string	"_AVR_IO_H_ "
.LASF1841:
	.string	"BADISR_vect __vector_default"
.LASF868:
	.string	"SCNuFAST16 \"u\""
.LASF1372:
	.string	"OCR1AL6 6"
.LASF717:
	.string	"UINT16_MAX (__CONCAT(INT16_MAX, U) * 2U + 1U)"
.LASF710:
	.string	"__CONCATenate(left,right) left ## right"
.LASF1155:
	.string	"PUD 4"
.LASF1320:
	.string	"WGM13 4"
.LASF1932:
	.string	"IOPORT_H "
.LASF711:
	.string	"__CONCAT(left,right) __CONCATenate(left, right)"
.LASF676:
	.string	"SAML22 (SAML22J || SAML22G || SAML22N)"
.LASF0:
	.string	"__STDC__ 1"
.LASF1585:
	.string	"USART_TX_vect_num 20"
.LASF1723:
	.string	"__AVR_LIBC_MINOR__ 0"
.LASF146:
	.string	"__DBL_MAX_EXP__ 128"
.LASF2011:
	.string	"SAM4S_WPIR_RD 58"
.LASF227:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF1177:
	.string	"CLKPR _SFR_MEM8(0x61)"
.LASF1303:
	.string	"ADC4D 4"
.LASF487:
	.string	"XMEGA_D (XMEGA_D3 || XMEGA_D4)"
.LASF293:
	.string	"__SA_FBIT__ 15"
.LASF185:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF303:
	.string	"__UDA_FBIT__ 32"
.LASF1418:
	.string	"TCNT2_1 1"
.LASF2001:
	.string	"STK600_RC032X 48"
.LASF269:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF438:
	.string	"BOARD ATMEGA328P_XPLAINED_MINI"
.LASF571:
	.string	"SAML22G ( SAM_PART_IS_DEFINED(SAML22G16A) || SAM_PART_IS_DEFINED(SAML22G17A) || SAM_PART_IS_DEFINED(SAML22G18A) )"
.LASF49:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF683:
	.string	"SAM4C (SAM4C4 || SAM4C8 || SAM4C16 || SAM4C32)"
.LASF1354:
	.string	"ICR1L7 7"
.LASF462:
	.string	"UC3A (UC3A0 || UC3A1 || UC3A3 || UC3A4)"
.LASF1135:
	.string	"ACIS1 1"
.LASF1530:
	.string	"UBRR0_5 5"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF330:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF1021:
	.string	"EEMPE 2"
.LASF1741:
	.string	"BLB1_MODE_4 (0xDF)"
.LASF846:
	.string	"SCNd32 \"ld\""
.LASF294:
	.string	"__SA_IBIT__ 16"
.LASF822:
	.string	"PRIuLEAST32 \"lu\""
.LASF150:
	.string	"__DBL_MIN__ ((double)1.17549435e-38L)"
.LASF304:
	.string	"__UDA_IBIT__ 32"
.LASF2056:
	.string	"WLR089_XPLAINED_PRO 105"
.LASF1334:
	.string	"TCNT1L6 6"
.LASF433:
	.string	"__ELF__ 1"
.LASF695:
	.string	"SAMV70B (SAMV70JB || SAMV70NB || SAMV70QB)"
.LASF943:
	.string	"DDRC _SFR_IO8(0x07)"
.LASF18:
	.string	"__SIZEOF_LONG__ 4"
.LASF544:
	.string	"SAMR30G ( SAM_PART_IS_DEFINED(SAMR30G18A) )"
.LASF854:
	.string	"SCNo8 \"hho\""
.LASF801:
	.string	"PRIxLEAST8 \"x\""
.LASF1728:
	.string	"_AVR_LOCK_H_ 1"
.LASF1797:
	.string	"NULL ((void *)0)"
.LASF2093:
	.string	"TIMER_H_ "
.LASF688:
	.string	"SAM4CP_1 (SAM4CP16_1)"
.LASF1324:
	.string	"FOC1B 6"
.LASF1388:
	.string	"OCR1BL3 3"
.LASF1931:
	.string	"FORCE_INLINE(type,name,...) static inline type name(__VA_ARGS__) __attribute__((always_inline)); static inline type name(__VA_ARGS__)"
.LASF653:
	.string	"SAME70QB ( SAM_PART_IS_DEFINED(SAME70Q19B) || SAM_PART_IS_DEFINED(SAME70Q20B) || SAM_PART_IS_DEFINED(SAME70Q21B) )"
.LASF785:
	.string	"PRIiFAST16 \"i\""
.LASF1454:
	.string	"TWPS1 1"
.LASF1886:
	.string	"PROGMEM_LOCATION(type,name,loc) type name __attribute__((section (#loc)))"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF978:
	.string	"PORTD0 0"
.LASF1698:
	.string	"SREG_S (4)"
.LASF1997:
	.string	"STK600_RCUC3L3 44"
.LASF545:
	.string	"SAMR30E ( SAM_PART_IS_DEFINED(SAMR30E18A) )"
.LASF631:
	.string	"SAMV71JB ( SAM_PART_IS_DEFINED(SAMV71J19B) || SAM_PART_IS_DEFINED(SAMV71J20B) || SAM_PART_IS_DEFINED(SAMV71J21B) )"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF957:
	.string	"PORTC5 5"
.LASF2031:
	.string	"SAMDA1_XPLAINED_PRO 78"
.LASF144:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF1475:
	.string	"TWD5 5"
.LASF1805:
	.string	"__ATTR_CONST__ __attribute__((__const__))"
.LASF751:
	.string	"INTMAX_MAX INT64_MAX"
.LASF66:
	.string	"__INTPTR_TYPE__ int"
.LASF277:
	.string	"__DQ_FBIT__ 63"
.LASF154:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF661:
	.string	"SAMD21 (SAMD21J || SAMD21G || SAMD21E)"
.LASF833:
	.string	"PRIXPTR PRIX16"
.LASF1825:
	.string	"__always_optimize __attribute__((optimize(3)))"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF596:
	.string	"SAM4C16_0 ( SAM_PART_IS_DEFINED(SAM4C16C_0) )"
.LASF1263:
	.string	"ADCL4 4"
.LASF746:
	.string	"INT_FAST64_MIN INT64_MIN"
.LASF1440:
	.string	"TCN2UB 4"
.LASF735:
	.string	"UINT_LEAST64_MAX UINT64_MAX"
.LASF140:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1895:
	.string	"PROGMEM_READ_WORD(x) pgm_read_word(x)"
.LASF558:
	.string	"SAMD10DS ( SAM_PART_IS_DEFINED(SAMD10D12AS) || SAM_PART_IS_DEFINED(SAMD10D13AS) || SAM_PART_IS_DEFINED(SAMD10D14AS) )"
.LASF850:
	.string	"SCNiLEAST32 \"li\""
.LASF1904:
	.string	"LE16_TO_CPU_ENDIAN(x) (x)"
.LASF461:
	.string	"UC3L3_L4 (UC3L3 || UC3L4)"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF454:
	.string	"UC3D3 ( AVR32_PART_IS_DEFINED(UC64D3) || AVR32_PART_IS_DEFINED(UC128D3) )"
.LASF178:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1572:
	.string	"TIMER1_OVF_vect _VECTOR(13)"
.LASF2071:
	.string	"_LED_H_ "
.LASF360:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF355:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF1305:
	.string	"DIDR1 _SFR_MEM8(0x7F)"
.LASF1301:
	.string	"ADC2D 2"
.LASF1991:
	.string	"STK600_RCUC3A0 38"
.LASF491:
	.string	"MEGA_XX1 ( AVR8_PART_IS_DEFINED(ATmega1281) || AVR8_PART_IS_DEFINED(ATmega2561) )"
.LASF1970:
	.string	"STK600_RCUC3C0 17"
.LASF1607:
	.string	"FUSE_CKSEL0 (unsigned char)~_BV(0)"
.LASF2047:
	.string	"SAMR34_XPLAINED_PRO 95"
.LASF194:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF267:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF753:
	.string	"UINTMAX_MAX UINT64_MAX"
.LASF1276:
	.string	"ADCSRA _SFR_MEM8(0x7A)"
.LASF532:
	.ascii	"SAM4LS ( SAM_PART_IS_DEFINED(SAM4LS2A) || SAM_PA"
	.string	"RT_IS_DEFINED(SAM4LS2B) || SAM_PART_IS_DEFINED(SAM4LS2C) || SAM_PART_IS_DEFINED(SAM4LS4A) || SAM_PART_IS_DEFINED(SAM4LS4B) || SAM_PART_IS_DEFINED(SAM4LS4C) || SAM_PART_IS_DEFINED(SAM4LS8A) || SAM_PART_IS_DEFINED(SAM4LS8B) || SAM_PART_IS_DEFINED(SAM4LS8C) )"
.LASF879:
	.string	"SCNxLEAST32 \"lx\""
.LASF1164:
	.string	"RWWSRE 4"
.LASF1551:
	.string	"PCINT0_vect_num 3"
.LASF1909:
	.string	"CLE64_TO_CPU_ENDIAN(x) (x)"
.LASF1752:
	.string	"_T_PTRDIFF_ "
.LASF715:
	.string	"INT16_MAX 0x7fff"
.LASF1742:
	.string	"LOCKBITS_DEFAULT (0xFF)"
.LASF742:
	.string	"INT_FAST32_MAX INT32_MAX"
.LASF1193:
	.string	"__AVR_HAVE_PRR_PRUSART0 "
.LASF1460:
	.string	"TWAR _SFR_MEM8(0xBA)"
.LASF1594:
	.string	"TWI_vect _VECTOR(24)"
.LASF992:
	.string	"OCF1A 1"
.LASF560:
	.string	"SAMD10DU ( SAM_PART_IS_DEFINED(SAMD10D14AU) )"
.LASF1587:
	.string	"ADC_vect_num 21"
.LASF198:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF964:
	.string	"PIND4 4"
.LASF867:
	.string	"SCNuLEAST16 \"u\""
.LASF1205:
	.string	"CAL5 5"
.LASF902:
	.string	"bit_is_set(sfr,bit) (_SFR_BYTE(sfr) & _BV(bit))"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF2040:
	.string	"SAML22_XPLAINED_PRO_B 87"
.LASF858:
	.string	"SCNuLEAST8 \"hhu\""
.LASF1154:
	.string	"IVSEL 1"
.LASF1046:
	.string	"EEAR9 1"
.LASF1408:
	.string	"COM2A1 7"
.LASF903:
	.string	"bit_is_clear(sfr,bit) (!(_SFR_BYTE(sfr) & _BV(bit)))"
.LASF1444:
	.string	"TWBR0 0"
.LASF61:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF1433:
	.string	"OCR2_7 7"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF1618:
	.string	"FUSE_BOOTSZ1 (unsigned char)~_BV(2)"
.LASF922:
	.string	"DDB4 4"
.LASF882:
	.string	"SCNuPTR SCNu16"
.LASF927:
	.string	"PORTB0 0"
.LASF1191:
	.string	"__AVR_HAVE_PRR ((1<<PRADC)|(1<<PRUSART0)|(1<<PRSPI)|(1<<PRTIM1)|(1<<PRTIM0)|(1<<PRTIM2)|(1<<PRTWI))"
.LASF862:
	.string	"SCNxFAST8 \"hhx\""
.LASF416:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF1174:
	.string	"WDP3 5"
.LASF1141:
	.string	"ACD 7"
.LASF786:
	.string	"PRId32 \"ld\""
.LASF1591:
	.string	"ANALOG_COMP_vect_num 23"
.LASF1102:
	.string	"GPIOR2 _SFR_IO8(0x2B)"
.LASF1524:
	.string	"UBRR0L _SFR_MEM8(0xC4)"
.LASF2096:
	.string	"LO_LIM 400"
.LASF1508:
	.string	"RXEN0 4"
.LASF1844:
	.string	"ISR_NAKED __attribute__((naked))"
.LASF145:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF1466:
	.string	"TWA4 5"
.LASF306:
	.string	"__UTA_IBIT__ 16"
.LASF781:
	.string	"PRIdLEAST16 \"d\""
.LASF705:
	.string	"_AVR_SFR_DEFS_H_ 1"
.LASF831:
	.string	"PRIuPTR PRIu16"
.LASF116:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1381:
	.string	"OCR1AH6 6"
.LASF568:
	.string	"SAML21XXXA ( SAM_PART_IS_DEFINED(SAML21E18A) || SAM_PART_IS_DEFINED(SAML21G18A) || SAM_PART_IS_DEFINED(SAML21J18A) )"
.LASF1188:
	.string	"PRTIM0 5"
.LASF1816:
	.string	"DTOSTR_UPPERCASE 0x04"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF63:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF339:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF2000:
	.string	"XMEGA_C3_XPLAINED 47"
.LASF1960:
	.string	"EVK1104 4"
.LASF64:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF96:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF1222:
	.string	"PCINT4 4"
.LASF625:
	.string	"SAM4CP16 (SAM4CP16_0 || SAM4CP16_1)"
.LASF477:
	.string	"XMEGA_B3 ( AVR8_PART_IS_DEFINED(ATxmega64B3) || AVR8_PART_IS_DEFINED(ATxmega128B3) )"
.LASF17:
	.string	"__SIZEOF_INT__ 2"
.LASF1299:
	.string	"ADC0D 0"
.LASF2043:
	.string	"ATMEGA324PB_XPLAINED_PRO 90"
.LASF1866:
	.ascii	"__LPM_dword_tiny__(addr) (__ext"
	.string	"ension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint32_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1109:
	.string	"GPIOR26 6"
.LASF184:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF1575:
	.string	"TIMER0_COMPB_vect_num 15"
.LASF1009:
	.string	"GPIOR0 _SFR_IO8(0x1E)"
.LASF266:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF1726:
	.string	"FUSEMEM __attribute__((__used__, __section__ (\".fuse\")))"
.LASF1919:
	.string	"convert_spec_16_bit_to_byte_array(value,data) ((*(uint16_t *)(data)) = (uint16_t)(value))"
.LASF1294:
	.string	"MUX3 3"
.LASF51:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF1772:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF396:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF1363:
	.string	"ICR1H7 7"
.LASF1434:
	.string	"OCR2B _SFR_MEM8(0xB4)"
.LASF1882:
	.string	"pgm_read_dword(address_short) pgm_read_dword_near(address_short)"
.LASF2009:
	.string	"XMEGA_RF233_ZIGBIT 56"
.LASF620:
	.string	"SAM4CMS32_0 ( SAM_PART_IS_DEFINED(SAM4CMS32C_0) )"
.LASF322:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF1660:
	.string	"PIN5 5"
.LASF1343:
	.string	"TCNT1H6 6"
.LASF1129:
	.string	"SPDR4 4"
.LASF492:
	.string	"MEGA_XX0_1 (MEGA_XX0 || MEGA_XX1)"
.LASF275:
	.string	"__SQ_FBIT__ 31"
.LASF1088:
	.string	"OCR0B_3 3"
.LASF756:
	.string	"SIG_ATOMIC_MAX INT8_MAX"
.LASF327:
	.string	"__AVR__ 1"
.LASF913:
	.string	"PINB4 4"
.LASF1602:
	.string	"XRAMEND RAMEND"
.LASF1172:
	.string	"WDE 3"
.LASF1235:
	.string	"PCINT16 0"
.LASF1778:
	.string	"__need_size_t"
.LASF1254:
	.string	"OCIE2A 1"
.LASF1277:
	.string	"ADPS0 0"
.LASF1397:
	.string	"OCR1BH3 3"
.LASF1963:
	.string	"UC3L_EK 7"
.LASF1238:
	.string	"PCINT19 3"
.LASF1435:
	.string	"ASSR _SFR_MEM8(0xB6)"
.LASF1996:
	.string	"ARDUINO_DUE_X 43"
.LASF772:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF271:
	.string	"__QQ_FBIT__ 7"
.LASF1462:
	.string	"TWA0 1"
.LASF1373:
	.string	"OCR1AL7 7"
.LASF1633:
	.string	"SIGNATURE_1 0x95"
.LASF1695:
	.string	"SREG_Z (1)"
.LASF694:
	.string	"SAMV70 (SAMV70J || SAMV70N || SAMV70Q || SAMV70JB || SAMV70NB || SAMV70QB)"
.LASF441:
	.string	"ATMEL_PARTS_H "
.LASF26:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF699:
	.string	"SAMS70B (SAMS70JB || SAMS70NB || SAMS70QB)"
.LASF1379:
	.string	"OCR1AH4 4"
.LASF664:
	.string	"SAMD11 (SAMD11C || SAMD11DS || SAMD11DM || SAMD11DU)"
.LASF417:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF1529:
	.string	"UBRR0_4 4"
.LASF864:
	.string	"SCNoLEAST16 \"o\""
.LASF1370:
	.string	"OCR1AL4 4"
.LASF2054:
	.string	"SAMR21G18_MODULE 103"
.LASF1672:
	.string	"PB6 PORTB6"
.LASF660:
	.string	"SAMD20 (SAMD20J || SAMD20G || SAMD20E)"
.LASF1272:
	.string	"ADCH4 4"
.LASF1158:
	.string	"SPMCSR _SFR_IO8(0x37)"
.LASF1419:
	.string	"TCNT2_2 2"
.LASF1138:
	.string	"ACI 4"
.LASF38:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF934:
	.string	"PORTB7 7"
.LASF1657:
	.string	"DD0 0"
.LASF1720:
	.string	"__AVR_LIBC_DATE_STRING__ \"20150208\""
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF99:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF1095:
	.string	"GPIOR11 1"
.LASF305:
	.string	"__UTA_FBIT__ 48"
.LASF1905:
	.string	"LE32_TO_CPU_ENDIAN(x) (x)"
.LASF1858:
	.string	"PSTR(s) (__extension__({static const char __c[] PROGMEM = (s); &__c[0];}))"
.LASF1267:
	.string	"ADCH _SFR_MEM8(0x79)"
.LASF1702:
	.string	"XL r26"
.LASF1048:
	.string	"GTCCR _SFR_IO8(0x23)"
.LASF2050:
	.string	"USER_BOARD 99"
.LASF1016:
	.string	"GPIOR06 6"
.LASF1692:
	.string	"SPH _SFR_IO8(0x3E)"
.LASF1335:
	.string	"TCNT1L7 7"
.LASF776:
	.string	"PRIdFAST8 \"d\""
.LASF582:
	.string	"SAMC20J ( SAM_PART_IS_DEFINED(SAMC20J15A) || SAM_PART_IS_DEFINED(SAMC20J16A) || SAM_PART_IS_DEFINED(SAMC20J17A) || SAM_PART_IS_DEFINED(SAMC20J18A) )"
.LASF883:
	.string	"SCNxPTR SCNx16"
.LASF811:
	.string	"PRIuFAST16 \"u\""
.LASF1836:
	.string	"ISR(vector,...) void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
.LASF346:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF232:
	.string	"__SACCUM_IBIT__ 8"
.LASF1941:
	.string	"IOPORT_MODE_PULLUP (0x00)"
.LASF1112:
	.string	"SPR0 0"
.LASF1843:
	.string	"ISR_NOBLOCK __attribute__((interrupt))"
.LASF1389:
	.string	"OCR1BL4 4"
.LASF1278:
	.string	"ADPS1 1"
.LASF748:
	.string	"INTPTR_MAX INT16_MAX"
.LASF979:
	.string	"PORTD1 1"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF535:
	.ascii	"SAMD20G ( SAM_PART_IS_DEFINED(SAMD20G14) || SAM_PART_IS_DEFI"
	.ascii	"NED(SAMD20G15) || SAM_PART_IS_DEFINED"
	.string	"(SAMD20G16) || SAM_PART_IS_DEFINED(SAMD20G14B) || SAM_PART_IS_DEFINED(SAMD20G15B) || SAM_PART_IS_DEFINED(SAMD20G16B) || SAM_PART_IS_DEFINED(SAMD20G17) || SAM_PART_IS_DEFINED(SAMD20G17U) || SAM_PART_IS_DEFINED(SAMD20G18) || SAM_PART_IS_DEFINED(SAMD20G18U) )"
.LASF2110:
	.string	"jButton"
.LASF958:
	.string	"PORTC6 6"
.LASF2102:
	.string	"long int"
.LASF1476:
	.string	"TWD6 6"
.LASF1869:
	.ascii	"__LPM_float_tiny__(addr) (__"
	.string	"extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; float __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1026:
	.string	"EEDR0 0"
.LASF703:
	.string	"UTILS_COMPILER_H "
.LASF1555:
	.string	"PCINT2_vect_num 5"
.LASF1124:
	.string	"SPDR _SFR_IO8(0x2E)"
.LASF98:
	.string	"__INT8_C(c) c"
.LASF733:
	.string	"INT_LEAST64_MAX INT64_MAX"
.LASF682:
	.string	"SAM4C_1 (SAM4C4_1 || SAM4C8_1 || SAM4C16_1 || SAM4C32_1)"
.LASF443:
	.string	"AVR32_PART_IS_DEFINED(part) (defined(__AT32 ## part ## __) || defined(__AVR32_ ## part ## __))"
.LASF1311:
	.string	"COM1B0 4"
.LASF770:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF1425:
	.string	"OCR2A _SFR_MEM8(0xB3)"
.LASF755:
	.string	"PTRDIFF_MIN INT16_MIN"
.LASF898:
	.string	"_SFR_WORD(sfr) _MMIO_WORD(_SFR_ADDR(sfr))"
.LASF1590:
	.string	"EE_READY_vect _VECTOR(22)"
.LASF1746:
	.string	"false 0"
.LASF1638:
	.string	"SLEEP_MODE_PWR_SAVE (0x03<<1)"
.LASF132:
	.string	"__FLT_MAX_EXP__ 128"
.LASF1271:
	.string	"ADCH3 3"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF1569:
	.string	"TIMER1_COMPB_vect_num 12"
.LASF1775:
	.string	"_GCC_SIZE_T "
.LASF523:
	.string	"SAM3A4 ( SAM_PART_IS_DEFINED(SAM3A4C) )"
.LASF615:
	.string	"SAM4CMS8_1 ( SAM_PART_IS_DEFINED(SAM4CMS8C_1) )"
.LASF1684:
	.string	"PD3 PORTD3"
.LASF1603:
	.string	"E2END 0x3FF"
.LASF142:
	.string	"__DBL_MANT_DIG__ 24"
.LASF549:
	.string	"SAMR35J ( SAM_PART_IS_DEFINED(SAMR35J18B) || SAM_PART_IS_DEFINED(SAMR35J17B) || SAM_PART_IS_DEFINED(SAMR35J16B) )"
.LASF301:
	.string	"__USA_FBIT__ 16"
.LASF1430:
	.string	"OCR2_4 4"
.LASF847:
	.string	"SCNdLEAST32 \"ld\""
.LASF537:
	.string	"SAMD21J ( SAM_PART_IS_DEFINED(SAMD21J15A) || SAM_PART_IS_DEFINED(SAMD21J16A) || SAM_PART_IS_DEFINED(SAMD21J17A) || SAM_PART_IS_DEFINED(SAMD21J18A) || SAM_PART_IS_DEFINED(SAMD21J15B) || SAM_PART_IS_DEFINED(SAMD21J16B) || SAM_PART_IS_DEFINED(SAMD21J17D) )"
.LASF328:
	.string	"AVR 1"
.LASF819:
	.string	"PRIoLEAST32 \"lo\""
.LASF442:
	.string	"AVR8_PART_IS_DEFINED(part) (defined(__ ## part ## __) || defined(__AVR_ ## part ## __))"
.LASF1872:
	.string	"__LPM_word(addr) __LPM_word_enhanced__(addr)"
.LASF427:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF1452:
	.string	"TWSR _SFR_MEM8(0xB9)"
.LASF926:
	.string	"PORTB _SFR_IO8(0x05)"
.LASF909:
	.string	"PINB0 0"
.LASF1560:
	.string	"TIMER2_COMPA_vect _VECTOR(7)"
.LASF1552:
	.string	"PCINT0_vect _VECTOR(3)"
.LASF1525:
	.string	"UBRR0_0 0"
.LASF556:
	.string	"SAMD09D ( SAM_PART_IS_DEFINED(SAMD09D14A) )"
.LASF723:
	.string	"UINT64_MAX (__CONCAT(INT64_MAX, U) * 2ULL + 1ULL)"
.LASF1431:
	.string	"OCR2_5 5"
.LASF422:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF1881:
	.string	"pgm_read_word(address_short) pgm_read_word_near(address_short)"
.LASF1807:
	.string	"__ATTR_NORETURN__ __attribute__((__noreturn__))"
.LASF2087:
	.string	"SPI_MISO IOPORT_CREATE_PIN(PORTB, 4)"
.LASF124:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF158:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF1092:
	.string	"OCR0B_7 7"
.LASF651:
	.string	"SAME70NB ( SAM_PART_IS_DEFINED(SAME70N19B) || SAM_PART_IS_DEFINED(SAME70N20B) || SAM_PART_IS_DEFINED(SAME70N21B) )"
.LASF1980:
	.string	"XMEGA_A3BU_XPLAINED 27"
.LASF965:
	.string	"PIND5 5"
.LASF2107:
	.string	"checkJoystickButton"
.LASF1206:
	.string	"CAL6 6"
.LASF401:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF1629:
	.string	"__LOCK_BITS_EXIST "
.LASF824:
	.string	"PRIx32 \"lx\""
.LASF212:
	.string	"__LFRACT_IBIT__ 0"
.LASF944:
	.string	"DDC0 0"
.LASF691:
	.string	"SAMB (SAMB11)"
.LASF1445:
	.string	"TWBR1 1"
.LASF308:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1190:
	.string	"PRTWI 7"
.LASF928:
	.string	"PORTB1 1"
.LASF923:
	.string	"DDB5 5"
.LASF1006:
	.string	"EIMSK _SFR_IO8(0x1D)"
.LASF1076:
	.string	"OCR0A_0 0"
.LASF988:
	.string	"OCF0A 1"
.LASF1051:
	.string	"TSM 7"
.LASF1984:
	.string	"RZ600 31"
.LASF272:
	.string	"__QQ_IBIT__ 0"
.LASF1929:
	.string	"Swap64(u64) ((U64)(((U64)Swap32((U64)(u64) >> 32)) | ((U64)Swap32((U64)(u64)) << 32)))"
.LASF827:
	.string	"PRIX32 \"lX\""
.LASF2082:
	.string	"TWID_SCL IOPORT_CREATE_PIN(PORTC, 5)"
.LASF719:
	.string	"INT32_MIN (-INT32_MAX - 1L)"
.LASF1936:
	.string	"IOPORT_PORT_OFFSET 0x03"
.LASF1962:
	.string	"STK600_RCUC3L0 6"
.LASF1456:
	.string	"TWS4 4"
.LASF1982:
	.string	"STK600_RC100X_LCDX 29"
.LASF1885:
	.string	"pgm_get_far_address(var) ({ uint_farptr_t tmp; __asm__ __volatile__( \"ldi\t%A0, lo8(%1)\" \"\\n\\t\" \"ldi\t%B0, hi8(%1)\" \"\\n\\t\" \"ldi\t%C0, hh8(%1)\" \"\\n\\t\" \"clr\t%D0\" \"\\n\\t\" : \"=d\" (tmp) : \"p\" (&(var)) ); tmp; })"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF358:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF1194:
	.string	"__AVR_HAVE_PRR_PRSPI "
.LASF1382:
	.string	"OCR1AH7 7"
.LASF665:
	.string	"SAMDA1 (SAMDA1J || SAMDA1G || SAMDA1E)"
.LASF802:
	.string	"PRIxFAST8 \"x\""
.LASF2111:
	.string	"read_VRX"
.LASF2112:
	.string	"read_VRY"
.LASF1675:
	.string	"PC1 PORTC1"
.LASF632:
	.string	"SAMV71N ( SAM_PART_IS_DEFINED(SAMV71N19) || SAM_PART_IS_DEFINED(SAMV71N20) || SAM_PART_IS_DEFINED(SAMV71N21) )"
.LASF1912:
	.string	"CCPU_ENDIAN_TO_LE64(x) (x)"
.LASF1961:
	.string	"EVK1105 5"
.LASF378:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF320:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF1223:
	.string	"PCINT5 5"
.LASF425:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF440:
	.string	"_GPIO_H_ "
.LASF1110:
	.string	"GPIOR27 7"
.LASF223:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF1426:
	.string	"OCR2_0 0"
.LASF679:
	.string	"SAM4E (SAM4E8 || SAM4E16)"
.LASF373:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF744:
	.string	"UINT_FAST32_MAX UINT32_MAX"
.LASF1617:
	.string	"FUSE_BOOTSZ0 (unsigned char)~_BV(1)"
.LASF1184:
	.string	"PRADC 0"
.LASF576:
	.string	"SAMHA1G ( SAM_PART_IS_DEFINED(SAMHA1G14A) || SAM_PART_IS_DEFINED(SAMHA1G15A) || SAM_PART_IS_DEFINED(SAMHA1G16A) || SAM_PART_IS_DEFINED(SAMHA1G14AB) || SAM_PART_IS_DEFINED(SAMHA1G15AB) || SAM_PART_IS_DEFINED(SAMHA1G16AB) )"
.LASF480:
	.string	"XMEGA_D3 ( AVR8_PART_IS_DEFINED(ATxmega32D3) || AVR8_PART_IS_DEFINED(ATxmega64D3) || AVR8_PART_IS_DEFINED(ATxmega128D3) || AVR8_PART_IS_DEFINED(ATxmega192D3) || AVR8_PART_IS_DEFINED(ATxmega256D3) || AVR8_PART_IS_DEFINED(ATxmega384D3) )"
.LASF208:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF1758:
	.string	"_GCC_PTRDIFF_T "
.LASF431:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF567:
	.string	"SAML21J ( SAM_PART_IS_DEFINED(SAML21J18A) || SAM_PART_IS_DEFINED(SAML21J16B) || SAM_PART_IS_DEFINED(SAML21J17B) || SAM_PART_IS_DEFINED(SAML21J18B) )"
.LASF455:
	.string	"UC3D4 ( AVR32_PART_IS_DEFINED(UC64D4) || AVR32_PART_IS_DEFINED(UC128D4) )"
.LASF1136:
	.string	"ACIC 2"
.LASF1765:
	.string	"_T_SIZE_ "
.LASF131:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF533:
	.ascii	"SAM4LC ( SAM_PART_IS_DEFINED(SAM4LC2A) || SAM_PA"
	.string	"RT_IS_DEFINED(SAM4LC2B) || SAM_PART_IS_DEFINED(SAM4LC2C) || SAM_PART_IS_DEFINED(SAM4LC4A) || SAM_PART_IS_DEFINED(SAM4LC4B) || SAM_PART_IS_DEFINED(SAM4LC4C) || SAM_PART_IS_DEFINED(SAM4LC8A) || SAM_PART_IS_DEFINED(SAM4LC8B) || SAM_PART_IS_DEFINED(SAM4LC8C) )"
.LASF1659:
	.string	"PIN6 6"
.LASF1344:
	.string	"TCNT1H7 7"
.LASF1130:
	.string	"SPDR5 5"
.LASF936:
	.string	"PINC0 0"
.LASF499:
	.string	"MEGA_RFA1 ( AVR8_PART_IS_DEFINED(ATmega128RFA1) )"
.LASF585:
	.string	"SAMC21J ( SAM_PART_IS_DEFINED(SAMC21J15A) || SAM_PART_IS_DEFINED(SAMC21J16A) || SAM_PART_IS_DEFINED(SAMC21J17A) || SAM_PART_IS_DEFINED(SAMC21J18A) )"
.LASF288:
	.string	"__UDQ_IBIT__ 0"
.LASF233:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF1316:
	.string	"CS10 0"
.LASF1036:
	.string	"EEAR0 0"
.LASF914:
	.string	"PINB5 5"
.LASF701:
	.string	"SAM (SAM3S || SAM3U || SAM3N || SAM3XA || SAM4S || SAM4L || SAM4E || SAM0 || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG || SAMV71 || SAMV70 || SAME70 || SAMS70)"
.LASF1241:
	.string	"PCINT22 6"
.LASF994:
	.string	"ICF1 5"
.LASF1901:
	.string	"CPU_ENDIAN_TO_LE16(x) (x)"
.LASF1255:
	.string	"OCIE2B 2"
.LASF263:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF1398:
	.string	"OCR1BH4 4"
.LASF1862:
	.ascii	"__LPM_word_classic__(addr) (__ex"
	.string	"tension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF784:
	.string	"PRIiLEAST16 \"i\""
.LASF175:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF2053:
	.string	"SAMR30_MODULE_XPLAINED_PRO 102"
.LASF1140:
	.string	"ACBG 6"
.LASF1403:
	.string	"WGM20 0"
.LASF799:
	.string	"PRIuFAST8 \"u\""
.LASF501:
	.string	"MEGA_RF (MEGA_RFA1 || MEGA_RFR2)"
.LASF805:
	.string	"PRIXFAST8 \"X\""
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF1725:
	.string	"_AVR_FUSE_H_ 1"
.LASF1777:
	.string	"__size_t "
.LASF1308:
	.string	"TCCR1A _SFR_MEM8(0x80)"
.LASF606:
	.string	"SAM4CMP16_1 ( SAM_PART_IS_DEFINED(SAM4CMP16C_1) )"
.LASF893:
	.string	"_SFR_MEM_ADDR(sfr) ((uint16_t) &(sfr))"
.LASF1839:
	.string	"ISR_ALIAS(vector,tgt) void vector (void) __attribute__((signal, naked, __INTR_ATTRS)); void vector (void) { asm volatile (\"jmp \" __STRINGIFY(tgt) ::); }"
.LASF1540:
	.string	"UDR0_1 1"
.LASF1743:
	.string	"_STDBOOL_H "
.LASF765:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF1679:
	.string	"PC5 PORTC5"
.LASF872:
	.string	"SCNo32 \"lo\""
.LASF1420:
	.string	"TCNT2_3 3"
.LASF511:
	.string	"SAM3S8 ( SAM_PART_IS_DEFINED(SAM3S8B) || SAM_PART_IS_DEFINED(SAM3S8C) )"
.LASF319:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF48:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF205:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF1022:
	.string	"EERIE 3"
.LASF1318:
	.string	"CS12 2"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF1412:
	.string	"CS22 2"
.LASF1946:
	.string	"gpio_pin_is_low(io_id) ioport_pin_is_low(io_id)"
.LASF1096:
	.string	"GPIOR12 2"
.LASF686:
	.string	"SAM4CM (SAM4CMP8 || SAM4CMP16 || SAM4CMP32 || SAM4CMS4 || SAM4CMS8 || SAM4CMS16 || SAM4CMS32)"
.LASF849:
	.string	"SCNi32 \"li\""
.LASF1017:
	.string	"GPIOR07 7"
.LASF636:
	.string	"SAMV70J ( SAM_PART_IS_DEFINED(SAMV70J19) || SAM_PART_IS_DEFINED(SAMV70J20) )"
.LASF219:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF2090:
	.string	"ADC_H_ "
.LASF1167:
	.string	"SPMIE 7"
.LASF483:
	.string	"XMEGA_A (XMEGA_A1 || XMEGA_A3 || XMEGA_A3B || XMEGA_A4)"
.LASF149:
	.string	"__DBL_MAX__ ((double)3.40282347e+38L)"
.LASF228:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF1160:
	.string	"SPMEN 0"
.LASF336:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF1769:
	.string	"_BSD_SIZE_T_ "
.LASF1113:
	.string	"SPR1 1"
.LASF426:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF2100:
	.string	"unsigned char"
.LASF895:
	.string	"_SFR_IO_REG_P(sfr) (_SFR_MEM_ADDR(sfr) < 0x40 + __SFR_OFFSET)"
.LASF1390:
	.string	"OCR1BL5 5"
.LASF389:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF2042:
	.string	"ATMEGA168PB_XPLAINED_MINI 89"
.LASF1499:
	.string	"FE0 4"
.LASF888:
	.string	"_SFR_MEM8(mem_addr) _MMIO_BYTE(mem_addr)"
.LASF1533:
	.string	"UBRR0H _SFR_MEM8(0xC5)"
.LASF980:
	.string	"PORTD2 2"
.LASF27:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1061:
	.string	"CS01 1"
.LASF975:
	.string	"DDD6 6"
.LASF1704:
	.string	"YL r28"
.LASF702:
	.string	"_MEGA_GPIO_H_ "
.LASF998:
	.string	"OCF2B 2"
.LASF2089:
	.string	"STATUS_CODES_H_INCLUDED "
.LASF1477:
	.string	"TWD7 7"
.LASF1244:
	.string	"TOIE0 0"
.LASF129:
	.string	"__FLT_DIG__ 6"
.LASF399:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF1027:
	.string	"EEDR1 1"
.LASF1811:
	.string	"labs(__i) __builtin_labs(__i)"
.LASF1526:
	.string	"UBRR0_1 1"
.LASF1246:
	.string	"OCIE0B 2"
.LASF486:
	.string	"XMEGA_C (XMEGA_C3 || XMEGA_C4)"
.LASF1612:
	.string	"FUSE_SUT1 (unsigned char)~_BV(5)"
.LASF1192:
	.string	"__AVR_HAVE_PRR_PRADC "
.LASF1312:
	.string	"COM1B1 5"
.LASF991:
	.string	"TOV1 0"
.LASF222:
	.string	"__LLFRACT_IBIT__ 0"
.LASF1609:
	.string	"FUSE_CKSEL2 (unsigned char)~_BV(2)"
.LASF1053:
	.string	"WGM00 0"
.LASF630:
	.string	"SAMV71J ( SAM_PART_IS_DEFINED(SAMV71J19) || SAM_PART_IS_DEFINED(SAMV71J20) || SAM_PART_IS_DEFINED(SAMV71J21) )"
.LASF1200:
	.string	"CAL0 0"
.LASF2064:
	.string	"RZ600_AT86RF231 8"
.LASF1800:
	.string	"_STDLIB_H_ 1"
.LASF216:
	.string	"__ULFRACT_FBIT__ 32"
.LASF552:
	.string	"WLR089U0 ( SAM_PART_IS_DEFINED(WLR089U0) )"
.LASF24:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF1759:
	.string	"_PTRDIFF_T_DECLARED "
.LASF775:
	.string	"PRIdLEAST8 \"d\""
.LASF188:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF1972:
	.string	"XMEGA_A1_XPLAINED 19"
.LASF538:
	.ascii	"SAMD21G ( SAM_PART_IS_DEFINED(SAMD21G15A) || SAM_PART_IS_DEF"
	.ascii	"INED(SAMD21G16A) || SAM_PART_IS_DEFINED(SAMD21G17A) || SAM_P"
	.ascii	"ART_IS_DEFINED(SAMD21G17AU) || SAM_PART_IS_DEFINED(SAM"
	.string	"D21G18A) || SAM_PART_IS_DEFINED(SAMD21G18AU) || SAM_PART_IS_DEFINED(SAMD21G15B) || SAM_PART_IS_DEFINED(SAMD21G16B) || SAM_PART_IS_DEFINED(SAMD21G15L) || SAM_PART_IS_DEFINED(SAMD21G16L) || SAM_PART_IS_DEFINED(SAMD21G17D) || SAM_PART_IS_DEFINED(SAMD21G17L) )"
.LASF1751:
	.string	"_PTRDIFF_T "
.LASF1949:
	.string	"gpio_set_pin_low(io_id) ioport_set_value(io_id, 0)"
.LASF1988:
	.string	"SAM3N_EK 35"
.LASF357:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF2038:
	.string	"SAME70_XPLAINED 85"
.LASF111:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF999:
	.string	"PCIFR _SFR_IO8(0x1B)"
.LASF624:
	.string	"SAM4CP16_1 ( SAM_PART_IS_DEFINED(SAM4CP16B_1) )"
.LASF580:
	.string	"SAMC20E ( SAM_PART_IS_DEFINED(SAMC20E15A) || SAM_PART_IS_DEFINED(SAMC20E16A) || SAM_PART_IS_DEFINED(SAMC20E17A) || SAM_PART_IS_DEFINED(SAMC20E18A) )"
.LASF598:
	.string	"SAM4C16 (SAM4C16_0 || SAM4C16_1)"
.LASF522:
	.string	"SAM3X8 ( SAM_PART_IS_DEFINED(SAM3X8C) || SAM_PART_IS_DEFINED(SAM3X8E) || SAM_PART_IS_DEFINED(SAM3X8H) )"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF607:
	.string	"SAM4CMP16 (SAM4CMP16_0 || SAM4CMP16_1)"
.LASF700:
	.string	"SAM0 (SAMD20 || SAMD21 || SAMR21 || SAMD10 || SAMD11 || SAML21 || SAMDA1 || SAMC20 || SAMC21 || SAML22 || SAMD09 || SAMR30 || SAMHA1 || SAMHA0 || SAMR34 || SAMR35 || WLR089)"
.LASF613:
	.string	"SAM4CMS4 (SAM4CMS4_0 || SAM4CMS4_1)"
.LASF411:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF191:
	.string	"__SFRACT_FBIT__ 7"
.LASF1995:
	.string	"ATXMEGA128A1_QT600 42"
.LASF1827:
	.string	"MSB(u16) (((uint8_t* )&u16)[1])"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF689:
	.string	"SAM4CP (SAM4CP16)"
.LASF286:
	.string	"__USQ_IBIT__ 0"
.LASF966:
	.string	"PIND6 6"
.LASF1989:
	.string	"SAM3S_EK2 36"
.LASF1207:
	.string	"CAL7 7"
.LASF788:
	.string	"PRIdFAST32 \"ld\""
.LASF1553:
	.string	"PCINT1_vect_num 4"
.LASF1855:
	.string	"PROGMEM __ATTR_PROGMEM__"
.LASF19:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF857:
	.string	"SCNu8 \"hhu\""
.LASF774:
	.string	"PRId8 \"d\""
.LASF503:
	.string	"MEGA_XX_UN1 ( AVR8_PART_IS_DEFINED(ATmega64) || AVR8_PART_IS_DEFINED(ATmega64A) || AVR8_PART_IS_DEFINED(ATmega128) || AVR8_PART_IS_DEFINED(ATmega128A) )"
.LASF945:
	.string	"DDC1 1"
.LASF1446:
	.string	"TWBR2 2"
.LASF759:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF524:
	.string	"SAM3A8 ( SAM_PART_IS_DEFINED(SAM3A8C) )"
.LASF1236:
	.string	"PCINT17 1"
.LASF929:
	.string	"PORTB2 2"
.LASF924:
	.string	"DDB6 6"
.LASF1077:
	.string	"OCR0A_1 1"
.LASF1497:
	.string	"UPE0 2"
.LASF989:
	.string	"OCF0B 2"
.LASF337:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF750:
	.string	"UINTPTR_MAX UINT16_MAX"
.LASF547:
	.string	"SAMR34JXXA ( SAM_PART_IS_DEFINED(SAMR34J18A) || SAM_PART_IS_DEFINED(SAMR34J17A) || SAM_PART_IS_DEFINED(SAMR34J16A) )"
.LASF1281:
	.string	"ADIF 4"
.LASF1217:
	.string	"PCMSK0 _SFR_MEM8(0x6B)"
.LASF1346:
	.string	"ICR1L _SFR_MEM8(0x86)"
.LASF1709:
	.string	"AVR_STATUS_ADDR _SFR_IO_ADDR(SREG)"
.LASF561:
	.string	"SAMD11C ( SAM_PART_IS_DEFINED(SAMD11C14A) )"
.LASF1085:
	.string	"OCR0B_0 0"
.LASF1050:
	.string	"PSRASY 1"
.LASF757:
	.string	"SIG_ATOMIC_MIN INT8_MIN"
.LASF2081:
	.string	"TWID_SDA IOPORT_CREATE_PIN(PORTC, 4)"
.LASF1621:
	.string	"FUSE_SPIEN (unsigned char)~_BV(5)"
.LASF2032:
	.string	"SAMW25_XPLAINED_PRO 79"
.LASF2028:
	.string	"SAMG55_XPLAINED_PRO 75"
.LASF1131:
	.string	"SPDR6 6"
.LASF603:
	.string	"SAM4CMP8_1 ( SAM_PART_IS_DEFINED(SAM4CMP8C_1) )"
.LASF2005:
	.string	"ATMEGA256RFR2_XPLAINED_PRO 52"
.LASF90:
	.string	"__INT16_MAX__ 0x7fff"
.LASF2007:
	.string	"SAM4L_XPLAINED_PRO 54"
.LASF128:
	.string	"__FLT_MANT_DIG__ 24"
.LASF778:
	.string	"PRIiLEAST8 \"i\""
.LASF1224:
	.string	"PCINT6 6"
.LASF256:
	.string	"__ULACCUM_FBIT__ 32"
.LASF1327:
	.string	"TCNT1L _SFR_MEM8(0x84)"
.LASF1457:
	.string	"TWS5 5"
.LASF531:
	.string	"SAM4SD32 ( SAM_PART_IS_DEFINED(SAM4SD32B) || SAM_PART_IS_DEFINED(SAM4SD32C) )"
.LASF536:
	.ascii	"SAMD20E ( SAM_PART_IS_DEFIN"
	.string	"ED(SAMD20E14) || SAM_PART_IS_DEFINED(SAMD20E15) || SAM_PART_IS_DEFINED(SAMD20E16) || SAM_PART_IS_DEFINED(SAMD20E14B) || SAM_PART_IS_DEFINED(SAMD20E15B) || SAM_PART_IS_DEFINED(SAMD20E16B) || SAM_PART_IS_DEFINED(SAMD20E17) || SAM_PART_IS_DEFINED(SAMD20E18) )"
.LASF629:
	.string	"SAMG55 ( SAM_PART_IS_DEFINED(SAMG55G18) || SAM_PART_IS_DEFINED(SAMG55G19) || SAM_PART_IS_DEFINED(SAMG55J18) || SAM_PART_IS_DEFINED(SAMG55J19) || SAM_PART_IS_DEFINED(SAMG55N19) )"
.LASF841:
	.string	"SCNdLEAST16 \"d\""
.LASF1550:
	.string	"INT1_vect _VECTOR(2)"
.LASF1558:
	.string	"WDT_vect _VECTOR(6)"
.LASF2013:
	.string	"SAM4L8_XPLAINED_PRO 60"
.LASF2021:
	.string	"SAM4E_XPLAINED_PRO 68"
.LASF393:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF810:
	.string	"PRIuLEAST16 \"u\""
.LASF257:
	.string	"__ULACCUM_IBIT__ 32"
.LASF835:
	.string	"SCNdLEAST8 \"hhd\""
.LASF896:
	.string	"_SFR_ADDR(sfr) _SFR_MEM_ADDR(sfr)"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF497:
	.ascii	"MEGA_XX ( AVR8_PART_IS_DEFINED"
	.string	"(ATmega16) || AVR8_PART_IS_DEFINED(ATmega16A) || AVR8_PART_IS_DEFINED(ATmega32) || AVR8_PART_IS_DEFINED(ATmega32A) || AVR8_PART_IS_DEFINED(ATmega64) || AVR8_PART_IS_DEFINED(ATmega64A) || AVR8_PART_IS_DEFINED(ATmega128) || AVR8_PART_IS_DEFINED(ATmega128A) )"
.LASF1789:
	.string	"_WCHAR_T_H "
.LASF173:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF1888:
	.string	"PROGMEM_STRING(x) PSTR(x)"
.LASF130:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF652:
	.string	"SAME70Q ( SAM_PART_IS_DEFINED(SAME70Q19) || SAM_PART_IS_DEFINED(SAME70Q20) || SAM_PART_IS_DEFINED(SAME70Q21) )"
.LASF937:
	.string	"PINC1 1"
.LASF680:
	.string	"SAM4N (SAM4N8 || SAM4N16)"
.LASF749:
	.string	"INTPTR_MIN INT16_MIN"
.LASF2116:
	.string	"checkJoystick"
.LASF1854:
	.string	"__ATTR_PROGMEM__ __attribute__((__progmem__))"
.LASF30:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1317:
	.string	"CS11 1"
.LASF112:
	.string	"__UINT64_C(c) c ## ULL"
.LASF1037:
	.string	"EEAR1 1"
.LASF202:
	.string	"__FRACT_IBIT__ 0"
.LASF1848:
	.string	"cpu_irq_is_enabled() cpu_irq_is_enabled_flags(SREG)"
.LASF127:
	.string	"__FLT_RADIX__ 2"
.LASF1242:
	.string	"PCINT23 7"
.LASF323:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF273:
	.string	"__HQ_FBIT__ 15"
.LASF584:
	.string	"SAMC21G ( SAM_PART_IS_DEFINED(SAMC21G15A) || SAM_PART_IS_DEFINED(SAMC21G16A) || SAM_PART_IS_DEFINED(SAMC21G17A) || SAM_PART_IS_DEFINED(SAMC21G18A) )"
.LASF1279:
	.string	"ADPS2 2"
.LASF1399:
	.string	"OCR1BH5 5"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF1007:
	.string	"INT0 0"
.LASF2027:
	.string	"SAMD11_XPLAINED_PRO 74"
.LASF1631:
	.string	"__BOOT_LOCK_BITS_1_EXIST "
.LASF734:
	.string	"INT_LEAST64_MIN INT64_MIN"
.LASF1404:
	.string	"WGM21 1"
.LASF678:
	.string	"SAMC21 (SAMC21J || SAMC21G || SAMC21E)"
.LASF1853:
	.string	"__PGMSPACE_H_ 1"
.LASF1470:
	.string	"TWD0 0"
.LASF780:
	.string	"PRId16 \"d\""
.LASF361:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF85:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF1049:
	.string	"PSRSYNC 0"
.LASF1666:
	.string	"PB0 PORTB0"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF1044:
	.string	"EEARH _SFR_IO8(0x22)"
.LASF302:
	.string	"__USA_IBIT__ 16"
.LASF245:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF891:
	.string	"_SFR_IO8(io_addr) _MMIO_BYTE((io_addr) + __SFR_OFFSET)"
.LASF254:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF1541:
	.string	"UDR0_2 2"
.LASF977:
	.string	"PORTD _SFR_IO8(0x0B)"
.LASF1215:
	.string	"ISC10 2"
.LASF121:
	.string	"__INTPTR_MAX__ 0x7fff"
.LASF597:
	.string	"SAM4C16_1 ( SAM_PART_IS_DEFINED(SAM4C16C_1) )"
.LASF1421:
	.string	"TCNT2_4 4"
.LASF176:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF1685:
	.string	"PD4 PORTD4"
.LASF1538:
	.string	"UDR0 _SFR_MEM8(0xC6)"
.LASF148:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF1619:
	.string	"FUSE_EESAVE (unsigned char)~_BV(3)"
.LASF692:
	.string	"SAMV71 (SAMV71J || SAMV71N || SAMV71Q || SAMV71JB || SAMV71NB || SAMV71QB)"
.LASF1496:
	.string	"U2X0 1"
.LASF2026:
	.string	"ATPL230AMB 73"
.LASF1985:
	.string	"SAM3S_EK 32"
.LASF1655:
	.string	"DD2 2"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF1161:
	.string	"PGERS 1"
.LASF1097:
	.string	"GPIOR13 3"
.LASF1289:
	.string	"ACME 6"
.LASF351:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF592:
	.string	"SAM4C4 (SAM4C4_0 || SAM4C4_1)"
.LASF564:
	.string	"SAMD11DU ( SAM_PART_IS_DEFINED(SAMD11D14AU) )"
.LASF1226:
	.string	"PCMSK1 _SFR_MEM8(0x6C)"
.LASF730:
	.string	"INT_LEAST32_MAX INT32_MAX"
.LASF1937:
	.string	"IOPORT_PORTB 1"
.LASF1616:
	.string	"FUSE_BOOTRST (unsigned char)~_BV(0)"
.LASF498:
	.string	"MEGA_XX_A ( AVR8_PART_IS_DEFINED(ATmega16A) || AVR8_PART_IS_DEFINED(ATmega32A) || AVR8_PART_IS_DEFINED(ATmega64A) || AVR8_PART_IS_DEFINED(ATmega128A) )"
.LASF745:
	.string	"INT_FAST64_MAX INT64_MAX"
.LASF1733:
	.string	"LB_MODE_3 (0xFC)"
.LASF287:
	.string	"__UDQ_FBIT__ 64"
.LASF1910:
	.string	"CCPU_ENDIAN_TO_LE16(x) (x)"
.LASF654:
	.string	"SAM3S (SAM3S1 || SAM3S2 || SAM3S4 || SAM3S8 || SAM3SD8)"
.LASF1873:
	.string	"__LPM_dword(addr) __LPM_dword_enhanced__(addr)"
.LASF192:
	.string	"__SFRACT_IBIT__ 0"
.LASF583:
	.string	"SAMC21E ( SAM_PART_IS_DEFINED(SAMC21E15A) || SAM_PART_IS_DEFINED(SAMC21E16A) || SAM_PART_IS_DEFINED(SAMC21E17A) || SAM_PART_IS_DEFINED(SAMC21E18A) )"
.LASF2115:
	.string	"C:\\\\Users\\\\Bruno\\\\Desktop\\\\Micro\\\\BatallaNaval_Micro\\\\GccMatrixWS2812 V3\\\\GccMatrixWS2812 V3\\\\Debug"
.LASF1162:
	.string	"PGWRT 2"
.LASF402:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF1731:
	.string	"LB_MODE_1 (0xFF)"
.LASF2063:
	.string	"SENSORS_XPLAINED_INERTIAL_A1 7"
.LASF1492:
	.string	"TWAM5 5"
.LASF534:
	.ascii	"SAMD20J ( SAM_PART_IS_DEFIN"
	.string	"ED(SAMD20J14) || SAM_PART_IS_DEFINED(SAMD20J15) || SAM_PART_IS_DEFINED(SAMD20J16) || SAM_PART_IS_DEFINED(SAMD20J14B) || SAM_PART_IS_DEFINED(SAMD20J15B) || SAM_PART_IS_DEFINED(SAMD20J16B) || SAM_PART_IS_DEFINED(SAMD20J17) || SAM_PART_IS_DEFINED(SAMD20J18) )"
.LASF981:
	.string	"PORTD3 3"
.LASF976:
	.string	"DDD7 7"
.LASF1875:
	.string	"pgm_read_byte_near(address_short) __LPM((uint16_t)(address_short))"
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 0x7f"
.LASF1283:
	.string	"ADSC 6"
.LASF1849:
	.string	"Enable_global_interrupt() cpu_irq_enable()"
.LASF1248:
	.string	"TOIE1 0"
.LASF519:
	.string	"SAM3N2 ( SAM_PART_IS_DEFINED(SAM3N2A) || SAM_PART_IS_DEFINED(SAM3N2B) || SAM_PART_IS_DEFINED(SAM3N2C) )"
.LASF1732:
	.string	"LB_MODE_2 (0xFE)"
.LASF1897:
	.string	"FUNC_PTR void *"
.LASF203:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF2025:
	.string	"SAM4CMS_DB 72"
.LASF1891:
	.string	"PROGMEM_PTR_T const *"
.LASF1580:
	.string	"SPI_STC_vect _VECTOR(17)"
.LASF456:
	.string	"UC3L0 ( AVR32_PART_IS_DEFINED(UC3L016) || AVR32_PART_IS_DEFINED(UC3L032) || AVR32_PART_IS_DEFINED(UC3L064) )"
.LASF826:
	.string	"PRIxFAST32 \"lx\""
.LASF1266:
	.string	"ADCL7 7"
.LASF317:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF1054:
	.string	"WGM01 1"
.LASF1990:
	.string	"SAM4S_EK 37"
.LASF1842:
	.string	"ISR_BLOCK "
.LASF1198:
	.string	"__AVR_HAVE_PRR_PRTWI "
.LASF428:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF283:
	.string	"__UHQ_FBIT__ 16"
.LASF2098:
	.string	"uint8_t"
.LASF2083:
	.string	"USART_RX IOPORT_CREATE_PIN(PORTD, 0)"
.LASF1955:
	.string	"gpio_toggle_pin_group(port_id,mask) ioport_tgl_group(port_id, mask)"
.LASF1565:
	.string	"TIMER1_CAPT_vect_num 10"
.LASF617:
	.string	"SAM4CMS16_0 ( SAM_PART_IS_DEFINED(SAM4CMS16C_0) )"
.LASF1584:
	.string	"USART_UDRE_vect _VECTOR(19)"
.LASF740:
	.string	"INT_FAST16_MIN INT16_MIN"
.LASF1681:
	.string	"PD0 PORTD0"
.LASF1814:
	.string	"DTOSTR_ALWAYS_SIGN 0x01"
.LASF485:
	.string	"XMEGA_B (XMEGA_B1 || XMEGA_B3)"
.LASF1347:
	.string	"ICR1L0 0"
.LASF186:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF1512:
	.string	"UCSR0C _SFR_MEM8(0xC2)"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fff"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF1834:
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
.LASF1620:
	.string	"FUSE_WDTON (unsigned char)~_BV(4)"
.LASF1487:
	.string	"TWAM0 0"
.LASF1576:
	.string	"TIMER0_COMPB_vect _VECTOR(15)"
.LASF1057:
	.string	"COM0A0 6"
.LASF331:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF637:
	.string	"SAMV70JB ( SAM_PART_IS_DEFINED(SAMV70J19B) || SAM_PART_IS_DEFINED(SAMV70J20B) )"
.LASF915:
	.string	"PINB6 6"
.LASF1258:
	.string	"ADCL _SFR_MEM8(0x78)"
.LASF1059:
	.string	"TCCR0B _SFR_IO8(0x25)"
.LASF345:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF910:
	.string	"PINB1 1"
.LASF1668:
	.string	"PB2 PORTB2"
.LASF1969:
	.string	"STK600_RCUC3D 16"
.LASF414:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF563:
	.string	"SAMD11DM ( SAM_PART_IS_DEFINED(SAMD11D14AM) )"
.LASF670:
	.string	"SAMR30 (SAMR30G || SAMR30E)"
.LASF714:
	.string	"UINT8_MAX (INT8_MAX * 2 + 1)"
.LASF840:
	.string	"SCNd16 \"d\""
.LASF1831:
	.string	"_AVR_INTERRUPT_H_ "
.LASF1146:
	.string	"SM2 3"
.LASF588:
	.string	"SAM4N8 ( SAM_PART_IS_DEFINED(SAM4N8A) || SAM_PART_IS_DEFINED(SAM4N8B) || SAM_PART_IS_DEFINED(SAM4N8C) )"
.LASF1708:
	.string	"AVR_STATUS_REG SREG"
.LASF471:
	.string	"XMEGA_A4 ( AVR8_PART_IS_DEFINED(ATxmega16A4) || AVR8_PART_IS_DEFINED(ATxmega32A4) )"
.LASF1792:
	.string	"_GCC_WCHAR_T "
.LASF880:
	.string	"SCNxFAST32 \"lx\""
.LASF449:
	.string	"UC3B0 ( AVR32_PART_IS_DEFINED(UC3B064) || AVR32_PART_IS_DEFINED(UC3B0128) || AVR32_PART_IS_DEFINED(UC3B0256) || AVR32_PART_IS_DEFINED(UC3B0512) )"
.LASF1898:
	.string	"FLASH_DECLARE(x) const x __attribute__((__progmem__))"
.LASF2085:
	.string	"SPI_SS_A IOPORT_CREATE_PIN(PORTB, 2)"
.LASF1774:
	.string	"___int_size_t_h "
.LASF1286:
	.string	"ADTS0 0"
.LASF967:
	.string	"PIND7 7"
.LASF397:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF463:
	.string	"UC3B (UC3B0 || UC3B1)"
.LASF350:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF391:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF905:
	.string	"loop_until_bit_is_clear(sfr,bit) do { } while (bit_is_set(sfr, bit))"
.LASF837:
	.string	"SCNi8 \"hhi\""
.LASF349:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF201:
	.string	"__FRACT_FBIT__ 15"
.LASF1482:
	.string	"TWSTO 4"
.LASF946:
	.string	"DDC2 2"
.LASF478:
	.string	"XMEGA_C3 ( AVR8_PART_IS_DEFINED(ATxmega384C3) || AVR8_PART_IS_DEFINED(ATxmega256C3) || AVR8_PART_IS_DEFINED(ATxmega192C3) || AVR8_PART_IS_DEFINED(ATxmega128C3) || AVR8_PART_IS_DEFINED(ATxmega64C3) || AVR8_PART_IS_DEFINED(ATxmega32C3) )"
.LASF708:
	.string	"__STDINT_H_ "
.LASF1447:
	.string	"TWBR3 3"
.LASF1802:
	.string	"__need_size_t "
.LASF1952:
	.string	"gpio_configure_group(port_id,port_mask,io_flags) ioport_configure_group(port_id, port_mask, io_flags)"
.LASF930:
	.string	"PORTB3 3"
.LASF889:
	.string	"_SFR_MEM16(mem_addr) _MMIO_WORD(mem_addr)"
.LASF91:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF925:
	.string	"DDB7 7"
.LASF1750:
	.string	"_ANSI_STDDEF_H "
.LASF1078:
	.string	"OCR0A_2 2"
.LASF2094:
	.string	"JOYSTICK (1<<6)"
.LASF1682:
	.string	"PD1 PORTD1"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF656:
	.string	"SAM3N (SAM3N00 || SAM3N0 || SAM3N1 || SAM3N2 || SAM3N4)"
.LASF1794:
	.string	"_BSD_WCHAR_T_"
.LASF394:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF1394:
	.string	"OCR1BH0 0"
.LASF669:
	.string	"SAMR21 (SAMR21G || SAMR21E)"
.LASF484:
	.string	"XMEGA_AU (XMEGA_A1U || XMEGA_A3U || XMEGA_A3BU || XMEGA_A4U)"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF321:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1676:
	.string	"PC2 PORTC2"
.LASF1768:
	.string	"_SIZE_T_ "
.LASF1887:
	.string	"PROGMEM_DECLARE(type,name) const type name __attribute__((__progmem__))"
.LASF420:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF235:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF1458:
	.string	"TWS6 6"
.LASF672:
	.string	"SAMR35 (SAMR35J)"
.LASF1669:
	.string	"PB3 PORTB3"
.LASF557:
	.string	"SAMD10C ( SAM_PART_IS_DEFINED(SAMD10C12A) || SAM_PART_IS_DEFINED(SAMD10C13A) || SAM_PART_IS_DEFINED(SAMD10C14A) )"
.LASF229:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF359:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF1908:
	.string	"CLE32_TO_CPU_ENDIAN(x) (x)"
.LASF290:
	.string	"__UTQ_IBIT__ 0"
.LASF658:
	.string	"SAM4S (SAM4S2 || SAM4S4 || SAM4S8 || SAM4S16 || SAM4SA16 || SAM4SD16 || SAM4SD32)"
.LASF291:
	.string	"__HA_FBIT__ 7"
.LASF1225:
	.string	"PCINT7 7"
.LASF869:
	.string	"SCNx16 \"x\""
.LASF248:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF115:
	.string	"__INT_FAST32_MAX__ 0x7fffffffL"
.LASF68:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF1930:
	.string	"nop() do { __asm__ __volatile__ (\"nop\"); } while (0)"
.LASF818:
	.string	"PRIo32 \"lo\""
.LASF1614:
	.string	"FUSE_CKDIV8 (unsigned char)~_BV(7)"
.LASF662:
	.string	"SAMD09 (SAMD09C || SAMD09D)"
.LASF667:
	.string	"SAMHA0 (SAMHA0G || SAMHA0E)"
.LASF187:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF1627:
	.string	"FUSE_BODLEVEL2 (unsigned char)~_BV(2)"
.LASF851:
	.string	"SCNiFAST32 \"li\""
.LASF161:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF1832:
	.string	"__STRINGIFY(x) #x"
.LASF8:
	.string	"__VERSION__ \"5.4.0\""
.LASF210:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF655:
	.string	"SAM3U (SAM3U1 || SAM3U2 || SAM3U4)"
.LASF177:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF541:
	.string	"SAMD21EXXL ( SAM_PART_IS_DEFINED(SAMD21E15L) || SAM_PART_IS_DEFINED(SAMD21E16L) || SAM_PART_IS_DEFINED(SAMD21E17L) )"
.LASF141:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF2113:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g3 -O1 -std=gnu99 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF773:
	.string	"_GCC_WRAP_STDINT_H "
.LASF2077:
	.string	"LED0_GPIO IOPORT_CREATE_PIN(PORTB, 5)"
.LASF871:
	.string	"SCNxFAST16 \"x\""
.LASF1137:
	.string	"ACIE 3"
.LASF1967:
	.string	"UC3_A3_XPLAINED 13"
.LASF1001:
	.string	"PCIF1 1"
.LASF1906:
	.string	"LE64_TO_CPU_ENDIAN(x) (x)"
.LASF1501:
	.string	"TXC0 6"
.LASF908:
	.string	"PINB _SFR_IO8(0x03)"
.LASF1683:
	.string	"PD2 PORTD2"
.LASF865:
	.string	"SCNoFAST16 \"o\""
.LASF1152:
	.string	"MCUCR _SFR_IO8(0x35)"
.LASF1132:
	.string	"SPDR7 7"
.LASF938:
	.string	"PINC2 2"
.LASF602:
	.string	"SAM4CMP8_0 ( SAM_PART_IS_DEFINED(SAM4CMP8C_0) )"
.LASF1721:
	.string	"__AVR_LIBC_DATE_ 20150208UL"
.LASF1981:
	.string	"STK600_RC064X_LCDX 28"
.LASF1677:
	.string	"PC3 PORTC3"
.LASF1253:
	.string	"TOIE2 0"
.LASF1409:
	.string	"TCCR2B _SFR_MEM8(0xB1)"
.LASF856:
	.string	"SCNoFAST8 \"hho\""
.LASF264:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF1038:
	.string	"EEAR2 2"
.LASF102:
	.string	"__INT32_C(c) c ## L"
.LASF1503:
	.string	"UCSR0B _SFR_MEM8(0xC1)"
.LASF29:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF1861:
	.string	"__LPM_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm %0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF1400:
	.string	"OCR1BH6 6"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF1004:
	.string	"INTF0 0"
.LASF1116:
	.string	"MSTR 4"
.LASF1008:
	.string	"INT1 1"
.LASF270:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF2058:
	.string	"MC300 2"
.LASF1903:
	.string	"CPU_ENDIAN_TO_LE64(x) (x)"
.LASF241:
	.string	"__ACCUM_FBIT__ 15"
.LASF1413:
	.string	"WGM22 3"
.LASF823:
	.string	"PRIuFAST32 \"lu\""
.LASF1975:
	.string	"UC3_L0_XPLAINED_BC 22"
.LASF1465:
	.string	"TWA3 4"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF137:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF284:
	.string	"__UHQ_IBIT__ 0"
.LASF110:
	.string	"__UINT32_C(c) c ## UL"
.LASF890:
	.string	"_SFR_MEM32(mem_addr) _MMIO_DWORD(mem_addr)"
.LASF769:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF1850:
	.string	"Disable_global_interrupt() cpu_irq_disable()"
.LASF579:
	.string	"SAMHA0E ( SAM_PART_IS_DEFINED(SAMHA0E14AB) || SAM_PART_IS_DEFINED(SAMHA0E15AB) || SAM_PART_IS_DEFINED(SAMHA0E16AB) )"
.LASF1611:
	.string	"FUSE_SUT0 (unsigned char)~_BV(4)"
.LASF1860:
	.string	"__LPM_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint8_t __result; __asm__ ( \"ld %0, z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF234:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF39:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF1542:
	.string	"UDR0_3 3"
.LASF1921:
	.string	"convert_32_bit_to_byte_array(value,data) ((*(uint32_t *)(data)) = (uint32_t)(value))"
.LASF459:
	.string	"UC3L3 ( AVR32_PART_IS_DEFINED(UC64L3U) || AVR32_PART_IS_DEFINED(UC128L3U) || AVR32_PART_IS_DEFINED(UC256L3U) )"
.LASF1216:
	.string	"ISC11 3"
.LASF1509:
	.string	"UDRIE0 5"
.LASF1275:
	.string	"ADCH7 7"
.LASF242:
	.string	"__ACCUM_IBIT__ 16"
.LASF1422:
	.string	"TCNT2_5 5"
.LASF466:
	.string	"UC3L (UC3L0 || UC3L0128 || UC3L0256 || UC3L3_L4)"
.LASF2020:
	.string	"SAM4CP16BMB 67"
.LASF1808:
	.string	"__ATTR_PURE__ __attribute__((__pure__))"
.LASF338:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF1654:
	.string	"DD3 3"
.LASF1673:
	.string	"PB7 PORTB7"
.LASF1956:
	.string	"_BOARD_H_ "
.LASF1513:
	.string	"UCPOL0 0"
.LASF1098:
	.string	"GPIOR14 4"
.LASF684:
	.string	"SAM4CM_0 (SAM4CMP8_0 || SAM4CMP16_0 || SAM4CMP32_0 || SAM4CMS4_0 || SAM4CMS8_0 || SAM4CMS16_0 || SAM4CMS32_0)"
.LASF1364:
	.string	"OCR1A _SFR_MEM16(0x88)"
.LASF1637:
	.string	"SLEEP_MODE_PWR_DOWN (0x02<<1)"
.LASF873:
	.string	"SCNoLEAST32 \"lo\""
.LASF1356:
	.string	"ICR1H0 0"
.LASF514:
	.string	"SAM3U2 ( SAM_PART_IS_DEFINED(SAM3U2C) || SAM_PART_IS_DEFINED(SAM3U2E) )"
.LASF763:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF1502:
	.string	"RXC0 7"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF1938:
	.string	"IOPORT_PORTC 2"
.LASF1838:
	.string	"EMPTY_INTERRUPT(vector) void vector (void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void) { __asm__ __volatile__ (\"reti\" ::); }"
.LASF1415:
	.string	"FOC2A 7"
.LASF1634:
	.string	"SIGNATURE_2 0x0F"
.LASF516:
	.string	"SAM3N00 ( SAM_PART_IS_DEFINED(SAM3N00A) || SAM_PART_IS_DEFINED(SAM3N00B) )"
.LASF1688:
	.string	"PD7 PORTD7"
.LASF1392:
	.string	"OCR1BL7 7"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF1933:
	.string	"IOPORT_MEGA_RF_H "
.LASF1355:
	.string	"ICR1H _SFR_MEM8(0x87)"
.LASF982:
	.string	"PORTD4 4"
.LASF1978:
	.string	"STK600_RCUC3B0 25"
.LASF204:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF1595:
	.string	"SPM_READY_vect_num 25"
.LASF1559:
	.string	"TIMER2_COMPA_vect_num 7"
.LASF1824:
	.string	"__always_inline inline __attribute__((__always_inline__))"
.LASF412:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF123:
	.string	"__GCC_IEC_559 0"
.LASF479:
	.string	"XMEGA_C4 ( AVR8_PART_IS_DEFINED(ATxmega32C4) || AVR8_PART_IS_DEFINED(ATxmega16C4) )"
.LASF1029:
	.string	"EEDR3 3"
.LASF1366:
	.string	"OCR1AL0 0"
.LASF207:
	.string	"__UFRACT_IBIT__ 0"
.LASF1571:
	.string	"TIMER1_OVF_vect_num 13"
.LASF2078:
	.string	"LED0 LED0_GPIO"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF2088:
	.string	"SPI_SCK IOPORT_CREATE_PIN(PORTB, 5)"
.LASF1635:
	.string	"SLEEP_MODE_IDLE (0x00<<1)"
.LASF1063:
	.string	"WGM02 3"
.LASF1461:
	.string	"TWGCE 0"
.LASF1478:
	.string	"TWCR _SFR_MEM8(0xBC)"
.LASF990:
	.string	"TIFR1 _SFR_IO8(0x16)"
.LASF1649:
	.string	"PORT0 0"
.LASF1829:
	.string	"UTILS_INTERRUPT_H "
.LASF1185:
	.string	"PRUSART0 1"
.LASF1115:
	.string	"CPOL 3"
.LASF727:
	.string	"INT_LEAST16_MAX INT16_MAX"
.LASF1696:
	.string	"SREG_N (2)"
.LASF1779:
	.string	"__wchar_t__ "
.LASF1178:
	.string	"CLKPS0 0"
.LASF1787:
	.string	"_WCHAR_T_DEFINED_ "
.LASF861:
	.string	"SCNxLEAST8 \"hhx\""
.LASF1527:
	.string	"UBRR0_2 2"
.LASF1793:
	.string	"_WCHAR_T_DECLARED "
.LASF1402:
	.string	"TCCR2A _SFR_MEM8(0xB0)"
.LASF474:
	.string	"XMEGA_A3BU ( AVR8_PART_IS_DEFINED(ATxmega256A3BU) )"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF1175:
	.string	"WDIE 6"
.LASF1170:
	.string	"WDP1 1"
.LASF1488:
	.string	"TWAM1 1"
.LASF1964:
	.string	"XPLAIN 8"
.LASF1058:
	.string	"COM0A1 7"
.LASF1212:
	.string	"EICRA _SFR_MEM8(0x69)"
.LASF2106:
	.string	"joystick_INIT"
.LASF489:
	.string	"XMEGA (XMEGA_A || XMEGA_AU || XMEGA_B || XMEGA_C || XMEGA_D || XMEGA_E)"
.LASF1583:
	.string	"USART_UDRE_vect_num 19"
.LASF543:
	.string	"SAMR21E ( SAM_PART_IS_DEFINED(SAMR21E16A) || SAM_PART_IS_DEFINED(SAMR21E17A) || SAM_PART_IS_DEFINED(SAMR21E18A) || SAM_PART_IS_DEFINED(SAMR21E19A) )"
.LASF70:
	.string	"__GXX_ABI_VERSION 1009"
.LASF122:
	.string	"__UINTPTR_MAX__ 0xffffU"
.LASF1328:
	.string	"TCNT1L0 0"
.LASF526:
	.string	"SAM4S4 ( SAM_PART_IS_DEFINED(SAM4S4A) || SAM_PART_IS_DEFINED(SAM4S4B) || SAM_PART_IS_DEFINED(SAM4S4C) )"
.LASF1605:
	.string	"FLASHEND 0x7FFF"
.LASF1208:
	.string	"PCICR _SFR_MEM8(0x68)"
.LASF47:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF59:
	.string	"__INT_FAST16_TYPE__ int"
.LASF1166:
	.string	"RWWSB 6"
.LASF1528:
	.string	"UBRR0_3 3"
.LASF1876:
	.string	"pgm_read_word_near(address_short) __LPM_word((uint16_t)(address_short))"
.LASF876:
	.string	"SCNuLEAST32 \"lu\""
.LASF2059:
	.string	"SENSORS_XPLAINED_INERTIAL_1 3"
.LASF790:
	.string	"PRIiLEAST32 \"li\""
.LASF674:
	.string	"SAMB11 (SAMB11G || BTLC1000)"
.LASF754:
	.string	"PTRDIFF_MAX INT16_MAX"
.LASF758:
	.string	"SIZE_MAX UINT16_MAX"
.LASF1859:
	.string	"__LPM_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) : \"r0\" ); __result; }))"
.LASF2035:
	.string	"ATMEGA328P_XPLAINED_MINI 82"
.LASF1065:
	.string	"FOC0A 7"
.LASF1287:
	.string	"ADTS1 1"
.LASF1405:
	.string	"COM2B0 4"
.LASF649:
	.string	"SAME70JB ( SAM_PART_IS_DEFINED(SAME70J19B) || SAM_PART_IS_DEFINED(SAME70J20B) || SAM_PART_IS_DEFINED(SAME70J21B) )"
.LASF1884:
	.string	"pgm_read_ptr(address_short) pgm_read_ptr_near(address_short)"
.LASF1622:
	.string	"FUSE_DWEN (unsigned char)~_BV(6)"
.LASF488:
	.string	"XMEGA_E (XMEGA_E5)"
.LASF460:
	.string	"UC3L4 ( AVR32_PART_IS_DEFINED(UC64L4U) || AVR32_PART_IS_DEFINED(UC128L4U) || AVR32_PART_IS_DEFINED(UC256L4U) )"
.LASF947:
	.string	"DDC3 3"
.LASF1448:
	.string	"TWBR4 4"
.LASF931:
	.string	"PORTB4 4"
.LASF1674:
	.string	"PC0 PORTC0"
.LASF1651:
	.string	"DD6 6"
.LASF595:
	.string	"SAM4C8 (SAM4C8_0 || SAM4C8_1)"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1783:
	.string	"_T_WCHAR "
.LASF1295:
	.string	"ADLAR 5"
.LASF1079:
	.string	"OCR0A_3 3"
.LASF1968:
	.string	"UC3_L0_XPLAINED 15"
.LASF469:
	.string	"XMEGA_A3 ( AVR8_PART_IS_DEFINED(ATxmega64A3) || AVR8_PART_IS_DEFINED(ATxmega128A3) || AVR8_PART_IS_DEFINED(ATxmega192A3) || AVR8_PART_IS_DEFINED(ATxmega256A3) )"
.LASF1781:
	.string	"_WCHAR_T "
.LASF1625:
	.string	"FUSE_BODLEVEL0 (unsigned char)~_BV(0)"
.LASF211:
	.string	"__LFRACT_FBIT__ 31"
.LASF347:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF265:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF1804:
	.string	"__ptr_t void *"
.LASF467:
	.string	"UC3 (UC3A || UC3B || UC3C || UC3D || UC3L)"
.LASF239:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF1830:
	.string	"UTILS_INTERRUPT_INTERRUPT_H "
.LASF250:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF1459:
	.string	"TWS7 7"
.LASF89:
	.string	"__INT8_MAX__ 0x7f"
.LASF390:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF1632:
	.string	"SIGNATURE_0 0x1E"
.LASF1785:
	.string	"_WCHAR_T_ "
.LASF101:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF1273:
	.string	"ADCH5 5"
.LASF1865:
	.ascii	"__LPM_dword_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile"
	.ascii	"__ ( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1227:
	.string	"PCINT8 0"
.LASF1264:
	.string	"ADCL5 5"
.LASF1889:
	.string	"PROGMEM_STRING_T PGM_P"
.LASF240:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF1326:
	.string	"TCNT1 _SFR_MEM16(0x84)"
.LASF1321:
	.string	"ICES1 6"
.LASF507:
	.string	"MEGA (MEGA_XX0_1 || MEGA_XX4 || MEGA_XX8 || MEGA_XX || MEGA_RF || MEGA_UNSPECIFIED)"
.LASF200:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF84:
	.string	"__INTMAX_C(c) c ## LL"
.LASF253:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF1566:
	.string	"TIMER1_CAPT_vect _VECTOR(10)"
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF1143:
	.string	"SE 0"
.LASF2067:
	.string	"SENSORS_XPLAINED_BREADBOARD 11"
.LASF797:
	.string	"PRIu8 \"u\""
.LASF1987:
	.string	"SAM3X_EK 34"
.LASF741:
	.string	"UINT_FAST16_MAX UINT16_MAX"
.LASF1002:
	.string	"PCIF2 2"
.LASF573:
	.string	"SAMDA1J ( SAM_PART_IS_DEFINED(SAMDA1J14A) || SAM_PART_IS_DEFINED(SAMDA1J15B) || SAM_PART_IS_DEFINED(SAMDA1J15A) || SAM_PART_IS_DEFINED(SAMDA1J15B) || SAM_PART_IS_DEFINED(SAMDA1J16A) || SAM_PART_IS_DEFINED(SAMDA1J16B) )"
.LASF1640:
	.string	"SLEEP_MODE_EXT_STANDBY (0x07<<1)"
.LASF114:
	.string	"__INT_FAST16_MAX__ 0x7fff"
.LASF593:
	.string	"SAM4C8_0 ( SAM_PART_IS_DEFINED(SAM4C8C_0) )"
.LASF162:
	.string	"__DECIMAL_DIG__ 9"
.LASF1974:
	.string	"STK600_RCUC3L4 21"
.LASF1554:
	.string	"PCINT1_vect _VECTOR(4)"
.LASF1023:
	.string	"EEPM0 4"
.LASF409:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF939:
	.string	"PINC3 3"
.LASF2097:
	.string	"int8_t"
.LASF1656:
	.string	"DD1 1"
.LASF2108:
	.string	"xMovement"
.LASF1578:
	.string	"TIMER0_OVF_vect _VECTOR(16)"
.LASF2034:
	.string	"SAMV71_XPLAINED_ULTRA 81"
.LASF747:
	.string	"UINT_FAST64_MAX UINT64_MAX"
.LASF1427:
	.string	"OCR2_1 1"
.LASF1039:
	.string	"EEAR3 3"
.LASF1069:
	.string	"TCNT0_2 2"
.LASF887:
	.string	"__SFR_OFFSET 0x20"
.LASF2109:
	.string	"yMovement"
.LASF803:
	.string	"PRIX8 \"X\""
.LASF1511:
	.string	"RXCIE0 7"
.LASF1999:
	.string	"STK600_MEGA_RF 46"
.LASF1401:
	.string	"OCR1BH7 7"
.LASF1247:
	.string	"TIMSK1 _SFR_MEM8(0x6F)"
.LASF1005:
	.string	"INTF1 1"
.LASF518:
	.string	"SAM3N1 ( SAM_PART_IS_DEFINED(SAM3N1A) || SAM_PART_IS_DEFINED(SAM3N1B) || SAM_PART_IS_DEFINED(SAM3N1C) )"
.LASF276:
	.string	"__SQ_IBIT__ 0"
.LASF424:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF2052:
	.string	"SAMB11ZR_SENSOR_TAG 101"
.LASF451:
	.string	"UC3C0 ( AVR32_PART_IS_DEFINED(UC3C064C) || AVR32_PART_IS_DEFINED(UC3C0128C) || AVR32_PART_IS_DEFINED(UC3C0256C) || AVR32_PART_IS_DEFINED(UC3C0512C) )"
.LASF502:
	.string	"MEGA_XX_UN0 ( AVR8_PART_IS_DEFINED(ATmega16) || AVR8_PART_IS_DEFINED(ATmega16A) || AVR8_PART_IS_DEFINED(ATmega32) || AVR8_PART_IS_DEFINED(ATmega32A) )"
.LASF1463:
	.string	"TWA1 2"
.LASF565:
	.string	"SAML21E ( SAM_PART_IS_DEFINED(SAML21E18A) || SAM_PART_IS_DEFINED(SAML21E15B) || SAM_PART_IS_DEFINED(SAML21E16B) || SAM_PART_IS_DEFINED(SAML21E17B) || SAM_PART_IS_DEFINED(SAML21E18B) )"
.LASF1718:
	.string	"__AVR_LIBC_VERSION_STRING__ \"2.0.0\""
.LASF1577:
	.string	"TIMER0_OVF_vect_num 16"
.LASF1439:
	.string	"OCR2AUB 3"
.LASF160:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF1833:
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
.LASF843:
	.string	"SCNi16 \"i\""
.LASF1608:
	.string	"FUSE_CKSEL1 (unsigned char)~_BV(1)"
.LASF777:
	.string	"PRIi8 \"i\""
.LASF1658:
	.string	"PIN7 7"
.LASF1304:
	.string	"ADC5D 5"
.LASF1375:
	.string	"OCR1AH0 0"
.LASF171:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF362:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF901:
	.string	"_VECTOR(N) __vector_ ## N"
.LASF193:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF816:
	.string	"PRIXLEAST16 \"X\""
.LASF1707:
	.string	"ZH r31"
.LASF251:
	.string	"__LACCUM_FBIT__ 31"
.LASF808:
	.string	"PRIoFAST16 \"o\""
.LASF258:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF1939:
	.string	"IOPORT_PORTD 3"
.LASF447:
	.string	"UC3A3 ( AVR32_PART_IS_DEFINED(UC3A364) || AVR32_PART_IS_DEFINED(UC3A364S) || AVR32_PART_IS_DEFINED(UC3A3128) || AVR32_PART_IS_DEFINED(UC3A3128S) || AVR32_PART_IS_DEFINED(UC3A3256) || AVR32_PART_IS_DEFINED(UC3A3256S) )"
.LASF1507:
	.string	"TXEN0 3"
.LASF340:
	.string	"__WITH_AVRLIBC__ 1"
.LASF168:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF1196:
	.string	"__AVR_HAVE_PRR_PRTIM0 "
.LASF1103:
	.string	"GPIOR20 0"
.LASF377:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF1653:
	.string	"DD4 4"
.LASF693:
	.string	"SAMV71B (SAMV71JB || SAMV71NB || SAMV71QB)"
.LASF1852:
	.string	"UTILS_PROGMEM_H "
.LASF1099:
	.string	"GPIOR15 5"
.LASF520:
	.string	"SAM3N4 ( SAM_PART_IS_DEFINED(SAM3N4A) || SAM_PART_IS_DEFINED(SAM3N4B) || SAM_PART_IS_DEFINED(SAM3N4C) )"
.LASF1157:
	.string	"BODS 6"
.LASF268:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF807:
	.string	"PRIoLEAST16 \"o\""
.LASF182:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF1628:
	.string	"EFUSE_DEFAULT (0xFF)"
.LASF2091:
	.string	"VRX 5"
.LASF1798:
	.string	"__need_NULL"
.LASF1282:
	.string	"ADATE 5"
.LASF1414:
	.string	"FOC2B 6"
.LASF41:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF916:
	.string	"PINB7 7"
.LASF1337:
	.string	"TCNT1H0 0"
.LASF1809:
	.string	"__ATTR_GNU_INLINE__ __attribute__((__gnu_inline__))"
.LASF845:
	.string	"SCNiFAST16 \"i\""
.LASF172:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF490:
	.string	"MEGA_XX0 ( AVR8_PART_IS_DEFINED(ATmega640) || AVR8_PART_IS_DEFINED(ATmega1280) || AVR8_PART_IS_DEFINED(ATmega2560) )"
.LASF1951:
	.string	"gpio_configure_pin(io_id,io_flags) ioport_configure_pin(io_id, io_flags)"
.LASF677:
	.string	"SAMC20 (SAMC20J || SAMC20G || SAMC20E)"
.LASF839:
	.string	"SCNiFAST8 \"hhi\""
.LASF718:
	.string	"INT32_MAX 0x7fffffffL"
.LASF983:
	.string	"PORTD5 5"
.LASF2033:
	.string	"SAMC21_XPLAINED_PRO 80"
.LASF2010:
	.string	"XMEGA_RF212B_ZIGBIT 57"
.LASF1120:
	.string	"SPSR _SFR_IO8(0x2D)"
.LASF1795:
	.string	"__need_wchar_t"
.LASF473:
	.string	"XMEGA_A3U ( AVR8_PART_IS_DEFINED(ATxmega64A3U) || AVR8_PART_IS_DEFINED(ATxmega128A3U) || AVR8_PART_IS_DEFINED(ATxmega192A3U) || AVR8_PART_IS_DEFINED(ATxmega256A3U) )"
.LASF1229:
	.string	"PCINT10 2"
.LASF1915:
	.string	"convert_byte_array_to_16_bit(data) (*(uint16_t *)(data))"
.LASF2099:
	.string	"signed char"
.LASF1030:
	.string	"EEDR4 4"
.LASF1367:
	.string	"OCR1AL1 1"
.LASF1568:
	.string	"TIMER1_COMPA_vect _VECTOR(11)"
.LASF1604:
	.string	"E2PAGESIZE 4"
.LASF1761:
	.string	"__size_t__ "
.LASF1505:
	.string	"RXB80 1"
.LASF2041:
	.string	"SAMR21ZLL_EK 88"
.LASF1879:
	.string	"pgm_read_ptr_near(address_short) (void*)__LPM_word((uint16_t)(address_short))"
.LASF376:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF143:
	.string	"__DBL_DIG__ 6"
.LASF736:
	.string	"INT_FAST8_MAX INT8_MAX"
.LASF1819:
	.string	"UNUSED(v) (void)(v)"
.LASF771:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF761:
	.string	"WINT_MAX __WINT_MAX__"
.LASF616:
	.string	"SAM4CMS8 (SAM4CMS8_0 || SAM4CMS8_1)"
.LASF1648:
	.string	"PORT1 1"
.LASF25:
	.string	"__CHAR_BIT__ 8"
.LASF37:
	.string	"__INTMAX_TYPE__ long long int"
.LASF885:
	.string	"_MMIO_WORD(mem_addr) (*(volatile uint16_t *)(mem_addr))"
.LASF553:
	.string	"SAMB11G ( SAM_PART_IS_DEFINED(SAMB11G18A) || SAM_PART_IS_DEFINED(SAMB11ZR) )"
.LASF1302:
	.string	"ADC3D 3"
.LASF2095:
	.string	"HI_LIM 600"
.LASF1179:
	.string	"CLKPS1 1"
.LASF1391:
	.string	"OCR1BL6 6"
.LASF166:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF1907:
	.string	"CLE16_TO_CPU_ENDIAN(x) (x)"
.LASF1349:
	.string	"ICR1L2 2"
.LASF482:
	.string	"XMEGA_E5 ( AVR8_PART_IS_DEFINED(ATxmega8E5) || AVR8_PART_IS_DEFINED(ATxmega16E5) || AVR8_PART_IS_DEFINED(ATxmega32E5) )"
.LASF1197:
	.string	"__AVR_HAVE_PRR_PRTIM2 "
.LASF1176:
	.string	"WDIF 7"
.LASF2017:
	.string	"SAM4C_EK 64"
.LASF1489:
	.string	"TWAM2 2"
.LASF1729:
	.string	"LOCKMEM __attribute__((__used__, __section__ (\".lock\")))"
.LASF1883:
	.string	"pgm_read_float(address_short) pgm_read_float_near(address_short)"
.LASF1243:
	.string	"TIMSK0 _SFR_MEM8(0x6E)"
.LASF1010:
	.string	"GPIOR00 0"
.LASF1740:
	.string	"BLB1_MODE_3 (0xCF)"
.LASF1329:
	.string	"TCNT1L1 1"
.LASF69:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF974:
	.string	"DDD5 5"
.LASF481:
	.string	"XMEGA_D4 ( AVR8_PART_IS_DEFINED(ATxmega16D4) || AVR8_PART_IS_DEFINED(ATxmega32D4) || AVR8_PART_IS_DEFINED(ATxmega64D4) || AVR8_PART_IS_DEFINED(ATxmega128D4) )"
.LASF724:
	.string	"INT_LEAST8_MAX INT8_MAX"
.LASF1940:
	.string	"IOPORT_MODE_PULLDOWN (0x01)"
.LASF562:
	.string	"SAMD11DS ( SAM_PART_IS_DEFINED(SAMD11D14AS) )"
.LASF1738:
	.string	"BLB1_MODE_1 (0xFF)"
.LASF1722:
	.string	"__AVR_LIBC_MAJOR__ 2"
.LASF2060:
	.string	"SENSORS_XPLAINED_INERTIAL_2 4"
.LASF1173:
	.string	"WDCE 4"
.LASF225:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF515:
	.string	"SAM3U4 ( SAM_PART_IS_DEFINED(SAM3U4C) || SAM_PART_IS_DEFINED(SAM3U4E) )"
.LASF815:
	.string	"PRIX16 \"X\""
.LASF1993:
	.string	"MEGA_1284P_XPLAINED 40"
.LASF1148:
	.string	"PORF 0"
.LASF1064:
	.string	"FOC0B 6"
.LASF2039:
	.string	"SAML22_XPLAINED_PRO 86"
.LASF798:
	.string	"PRIuLEAST8 \"u\""
.LASF1288:
	.string	"ADTS2 2"
.LASF1406:
	.string	"COM2B1 5"
.LASF1180:
	.string	"CLKPS2 2"
.LASF1168:
	.string	"WDTCSR _SFR_MEM8(0x60)"
.LASF1518:
	.string	"USBS0 3"
.LASF1230:
	.string	"PCINT11 3"
.LASF430:
	.string	"__INT24_MAX__ 8388607L"
.LASF1815:
	.string	"DTOSTR_PLUS_SIGN 0x02"
.LASF952:
	.string	"PORTC0 0"
.LASF948:
	.string	"DDC4 4"
.LASF1240:
	.string	"PCINT21 5"
.LASF1925:
	.string	"PGM_READ_BYTE(x) pgm_read_byte(x)"
.LASF1449:
	.string	"TWBR5 5"
.LASF619:
	.string	"SAM4CMS16 (SAM4CMS16_0 || SAM4CMS16_1)"
.LASF179:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF932:
	.string	"PORTB5 5"
.LASF1481:
	.string	"TWWC 3"
.LASF432:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF407:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF1080:
	.string	"OCR0A_4 4"
.LASF569:
	.ascii	"SAML21XXXB ( SAM_PART_IS_DEFINED(SAML21E15B) || SAM_PART_IS_"
	.ascii	"DEFINED(SAML21E16B) || SAM_PART_IS_DEFINED(SA"
	.string	"ML21E17B) || SAM_PART_IS_DEFINED(SAML21E18B) || SAM_PART_IS_DEFINED(SAML21G16B) || SAM_PART_IS_DEFINED(SAML21G17B) || SAM_PART_IS_DEFINED(SAML21G18B) || SAM_PART_IS_DEFINED(SAML21J16B) || SAM_PART_IS_DEFINED(SAML21J17B) || SAM_PART_IS_DEFINED(SAML21J18B) )"
.LASF1519:
	.string	"UPM00 4"
.LASF641:
	.string	"SAMV70QB ( SAM_PART_IS_DEFINED(SAMV70Q19B) || SAM_PART_IS_DEFINED(SAMV70Q20B) )"
.LASF167:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF875:
	.string	"SCNu32 \"lu\""
.LASF1823:
	.string	"COMPILER_PACK_SET(alignment) "
.LASF2114:
	.string	"../src/joystickReads.c"
.LASF1579:
	.string	"SPI_STC_vect_num 17"
.LASF513:
	.string	"SAM3U1 ( SAM_PART_IS_DEFINED(SAM3U1C) || SAM_PART_IS_DEFINED(SAM3U1E) )"
.LASF1588:
	.string	"ADC_vect _VECTOR(21)"
.LASF1934:
	.string	"IOPORT_CREATE_PIN(port,pin) ((IOPORT_ ## port) * 8 + (pin))"
.LASF1856:
	.string	"PGM_P const char *"
.LASF1880:
	.string	"pgm_read_byte(address_short) pgm_read_byte_near(address_short)"
.LASF316:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF1535:
	.string	"UBRR0_9 1"
.LASF642:
	.string	"SAMS70J ( SAM_PART_IS_DEFINED(SAMS70J19) || SAM_PART_IS_DEFINED(SAMS70J20) || SAM_PART_IS_DEFINED(SAMS70J21) )"
.LASF1992:
	.string	"STK600_MEGA 39"
.LASF1840:
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
.LASF392:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF1228:
	.string	"PCINT9 1"
.LASF1300:
	.string	"ADC1D 1"
.LASF199:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF1867:
	.ascii	"__LPM_dword_enhanced_"
	.string	"_(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF521:
	.string	"SAM3X4 ( SAM_PART_IS_DEFINED(SAM3X4C) || SAM_PART_IS_DEFINED(SAM3X4E) )"
.LASF335:
	.string	"__AVR_MEGA__ 1"
.LASF1597:
	.string	"_VECTORS_SIZE (26 * 4)"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF1342:
	.string	"TCNT1H5 5"
.LASF375:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF590:
	.string	"SAM4C4_0 ( SAM_PART_IS_DEFINED(SAM4C4C_0) )"
.LASF1322:
	.string	"ICNC1 7"
.LASF1935:
	.string	"IOPORT_BASE_ADDRESS 0x20"
.LASF527:
	.string	"SAM4S8 ( SAM_PART_IS_DEFINED(SAM4S8B) || SAM_PART_IS_DEFINED(SAM4S8C) )"
.LASF1510:
	.string	"TXCIE0 6"
.LASF1689:
	.string	"_AVR_COMMON_H "
.LASF1086:
	.string	"OCR0B_1 1"
.LASF1791:
	.string	"__INT_WCHAR_T_H "
.LASF1013:
	.string	"GPIOR03 3"
.LASF445:
	.string	"UC3A0 ( AVR32_PART_IS_DEFINED(UC3A0128) || AVR32_PART_IS_DEFINED(UC3A0256) || AVR32_PART_IS_DEFINED(UC3A0512) )"
.LASF209:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF285:
	.string	"__USQ_FBIT__ 32"
.LASF1582:
	.string	"USART_RX_vect _VECTOR(18)"
.LASF1973:
	.string	"XMEGA_A1U_XPLAINED_PRO 20"
.LASF1067:
	.string	"TCNT0_0 0"
.LASF1024:
	.string	"EEPM1 5"
.LASF307:
	.string	"__REGISTER_PREFIX__ "
.LASF940:
	.string	"PINC4 4"
.LASF1755:
	.string	"_PTRDIFF_T_ "
.LASF767:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF415:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF1428:
	.string	"OCR2_2 2"
.LASF1040:
	.string	"EEAR4 4"
.LASF1070:
	.string	"TCNT0_3 3"
.LASF1652:
	.string	"DD5 5"
.LASF578:
	.string	"SAMHA0G ( SAM_PART_IS_DEFINED(SAMHA0G14AB) || SAM_PART_IS_DEFINED(SAMHA0G15AB) || SAM_PART_IS_DEFINED(SAMHA0G16AB) )"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF86:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF183:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF60:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF1760:
	.string	"__need_ptrdiff_t"
.LASF429:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF2051:
	.string	"DUMMY_BOARD 100"
.LASF262:
	.string	"__LLACCUM_IBIT__ 16"
.LASF249:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF1467:
	.string	"TWA5 6"
.LASF2079:
	.string	"LED_COUNT 1"
.LASF795:
	.string	"PRIoLEAST8 \"o\""
.LASF794:
	.string	"PRIo8 \"o\""
.LASF709:
	.string	"__USING_MINT8 0"
.LASF1730:
	.string	"LOCKBITS unsigned char __lock LOCKMEM"
.LASF92:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF1376:
	.string	"OCR1AH1 1"
.LASF1521:
	.string	"UMSEL00 6"
.LASF153:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF728:
	.string	"INT_LEAST16_MIN INT16_MIN"
.LASF1296:
	.string	"REFS0 6"
.LASF1544:
	.string	"UDR0_5 5"
.LASF1133:
	.string	"ACSR _SFR_IO8(0x30)"
.LASF1543:
	.string	"UDR0_4 4"
.LASF842:
	.string	"SCNdFAST16 \"d\""
.LASF1424:
	.string	"TCNT2_7 7"
.LASF34:
	.string	"__PTRDIFF_TYPE__ int"
.LASF1256:
	.string	"ADC _SFR_MEM16(0x78)"
.LASF506:
	.string	"MEGA_UNSPECIFIED (MEGA_XX_UN0 || MEGA_XX_UN1 || MEGA_XX_UN2 || MEGA_UNCATEGORIZED)"
.LASF696:
	.string	"SAME70 (SAME70J || SAME70N || SAME70Q || SAME70JB || SAME70NB || SAME70QB)"
.LASF1104:
	.string	"GPIOR21 1"
.LASF236:
	.string	"__USACCUM_FBIT__ 8"
.LASF1820:
	.string	"unused(v) do { (void)(v); } while(0)"
.LASF628:
	.string	"SAMG54 ( SAM_PART_IS_DEFINED(SAMG54G19) || SAM_PART_IS_DEFINED(SAMG54J19) || SAM_PART_IS_DEFINED(SAMG54N19) )"
.LASF309:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF1780:
	.string	"__WCHAR_T__ "
.LASF1100:
	.string	"GPIOR16 6"
.LASF1699:
	.string	"SREG_H (5)"
.LASF1358:
	.string	"ICR1H2 2"
.LASF1441:
	.string	"AS2 5"
.LASF1111:
	.string	"SPCR _SFR_IO8(0x2C)"
.LASF2074:
	.string	"LED_Toggle(led_gpio) gpio_toggle_pin(led_gpio)"
.LASF1643:
	.string	"PORT6 6"
.LASF2066:
	.string	"RZ600_AT86RF212 10"
.LASF504:
	.string	"MEGA_XX_UN2 ( AVR8_PART_IS_DEFINED(ATmega169P) || AVR8_PART_IS_DEFINED(ATmega169PA) || AVR8_PART_IS_DEFINED(ATmega329P) || AVR8_PART_IS_DEFINED(ATmega329PA) )"
.LASF475:
	.string	"XMEGA_A4U ( AVR8_PART_IS_DEFINED(ATxmega16A4U) || AVR8_PART_IS_DEFINED(ATxmega32A4U) || AVR8_PART_IS_DEFINED(ATxmega64A4U) || AVR8_PART_IS_DEFINED(ATxmega128A4U) )"
.LASF2068:
	.string	"SECURITY_XPLAINED 12"
.LASF821:
	.string	"PRIu32 \"lu\""
.LASF289:
	.string	"__UTQ_FBIT__ 128"
.LASF435:
	.string	"__AVR_DEVICE_NAME__ atmega328p"
.LASF1864:
	.string	"__LPM_word_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1486:
	.string	"TWAMR _SFR_MEM8(0xBD)"
.LASF1338:
	.string	"TCNT1H1 1"
.LASF1754:
	.string	"__PTRDIFF_T "
.LASF1245:
	.string	"OCIE0A 1"
.LASF1817:
	.string	"EXIT_SUCCESS 0"
.LASF1770:
	.string	"_SIZE_T_DEFINED_ "
.LASF539:
	.string	"SAMD21GXXL ( SAM_PART_IS_DEFINED(SAMD21G15L) || SAM_PART_IS_DEFINED(SAMD21G16L) || SAM_PART_IS_DEFINED(SAMD21G17L) )"
.LASF195:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF935:
	.string	"PINC _SFR_IO8(0x06)"
.LASF984:
	.string	"PORTD6 6"
.LASF739:
	.string	"INT_FAST16_MAX INT16_MAX"
.LASF1443:
	.string	"TWBR _SFR_MEM8(0xB8)"
.LASF1564:
	.string	"TIMER2_OVF_vect _VECTOR(9)"
.LASF2046:
	.string	"SAMHA1G16A_XPLAINED_PRO 94"
.LASF646:
	.string	"SAMS70Q ( SAM_PART_IS_DEFINED(SAMS70Q19) || SAM_PART_IS_DEFINED(SAMS70Q20) || SAM_PART_IS_DEFINED(SAMS70Q21) )"
.LASF1183:
	.string	"PRR _SFR_MEM8(0x64)"
.LASF1715:
	.string	"AVR_STACK_POINTER_LO_REG SPL"
.LASF1249:
	.string	"OCIE1A 1"
.LASF1822:
	.string	"COMPILER_PACK_RESET(alignment) "
.LASF281:
	.string	"__UQQ_FBIT__ 8"
.LASF550:
	.string	"SAMR35JXXB ( SAM_PART_IS_DEFINED(SAMR35J18B) || SAM_PART_IS_DEFINED(SAMR35J17B) || SAM_PART_IS_DEFINED(SAMR35J16B) )"
.LASF231:
	.string	"__SACCUM_FBIT__ 7"
.LASF1031:
	.string	"EEDR5 5"
.LASF1368:
	.string	"OCR1AL2 2"
.LASF2024:
	.string	"SAM4CMP_DB 71"
.LASF1773:
	.string	"_SIZE_T_DECLARED "
.LASF74:
	.string	"__INT_MAX__ 0x7fff"
.LASF591:
	.string	"SAM4C4_1 ( SAM_PART_IS_DEFINED(SAM4C4C_1) )"
.LASF1767:
	.string	"__SIZE_T "
.LASF525:
	.string	"SAM4S2 ( SAM_PART_IS_DEFINED(SAM4S2A) || SAM_PART_IS_DEFINED(SAM4S2B) || SAM_PART_IS_DEFINED(SAM4S2C) )"
.LASF1149:
	.string	"EXTRF 1"
.LASF40:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF1863:
	.string	"__LPM_word_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint16_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF315:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF405:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF2069:
	.string	"USER_EXT_BOARD 99"
.LASF1384:
	.string	"OCR1BL _SFR_MEM8(0x8A)"
.LASF156:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF32:
	.string	"__SIZEOF_POINTER__ 2"
.LASF1186:
	.string	"PRSPI 2"
.LASF1878:
	.string	"pgm_read_float_near(address_short) __LPM_float((uint16_t)(address_short))"
.LASF599:
	.string	"SAM4C32_0 ( SAM_PART_IS_DEFINED(SAM4C32C_0) || SAM_PART_IS_DEFINED(SAM4C32E_0) )"
.LASF138:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF1350:
	.string	"ICR1L3 3"
.LASF1893:
	.string	"PROGMEM_WORD_ARRAY_T uint16_t*"
.LASF1018:
	.string	"EECR _SFR_IO8(0x1F)"
.LASF450:
	.string	"UC3B1 ( AVR32_PART_IS_DEFINED(UC3B164) || AVR32_PART_IS_DEFINED(UC3B1128) || AVR32_PART_IS_DEFINED(UC3B1256) || AVR32_PART_IS_DEFINED(UC3B1512) )"
.LASF720:
	.string	"UINT32_MAX (__CONCAT(INT32_MAX, U) * 2UL + 1UL)"
.LASF1490:
	.string	"TWAM3 3"
.LASF1766:
	.string	"_T_SIZE "
.LASF1727:
	.string	"FUSES __fuse_t __fuse FUSEMEM"
.LASF476:
	.string	"XMEGA_B1 ( AVR8_PART_IS_DEFINED(ATxmega64B1) || AVR8_PART_IS_DEFINED(ATxmega128B1) )"
.LASF1153:
	.string	"IVCE 0"
.LASF1011:
	.string	"GPIOR01 1"
.LASF1187:
	.string	"PRTIM1 3"
.LASF1330:
	.string	"TCNT1L2 2"
.LASF809:
	.string	"PRIu16 \"u\""
.LASF1156:
	.string	"BODSE 5"
.LASF353:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF1626:
	.string	"FUSE_BODLEVEL1 (unsigned char)~_BV(1)"
.LASF995:
	.string	"TIFR2 _SFR_IO8(0x17)"
.LASF1284:
	.string	"ADEN 7"
.LASF829:
	.string	"PRIXFAST32 \"lX\""
.LASF1892:
	.string	"PROGMEM_BYTE_ARRAY_T uint8_t*"
.LASF1812:
	.string	"RAND_MAX 0x7FFF"
.LASF1331:
	.string	"TCNT1L3 3"
.LASF1734:
	.string	"BLB0_MODE_1 (0xFF)"
.LASF2080:
	.string	"GPIO_PUSH_BUTTON_0 IOPORT_CREATE_PIN(PORTB, 7)"
.LASF1093:
	.string	"GPIOR1 _SFR_IO8(0x2A)"
.LASF820:
	.string	"PRIoFAST32 \"lo\""
.LASF2015:
	.string	"XMEGA_A3_REB_CBB 62"
.LASF1593:
	.string	"TWI_vect_num 24"
.LASF1306:
	.string	"AIN0D 0"
.LASF400:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF410:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF622:
	.string	"SAM4CMS32 (SAM4CMS32_0 || SAM4CMS32_1)"
.LASF969:
	.string	"DDD0 0"
.LASF1782:
	.string	"_T_WCHAR_ "
.LASF608:
	.string	"SAM4CMP32_0 ( SAM_PART_IS_DEFINED(SAM4CMP32C_0) )"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF953:
	.string	"PORTC1 1"
.LASF213:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF949:
	.string	"DDC5 5"
.LASF1471:
	.string	"TWD1 1"
.LASF1717:
	.string	"_AVR_VERSION_H_ "
.LASF1639:
	.string	"SLEEP_MODE_STANDBY (0x06<<1)"
.LASF1450:
	.string	"TWBR6 6"
.LASF452:
	.string	"UC3C1 ( AVR32_PART_IS_DEFINED(UC3C164C) || AVR32_PART_IS_DEFINED(UC3C1128C) || AVR32_PART_IS_DEFINED(UC3C1256C) || AVR32_PART_IS_DEFINED(UC3C1512C) )"
.LASF933:
	.string	"PORTB6 6"
.LASF638:
	.string	"SAMV70N ( SAM_PART_IS_DEFINED(SAMV70N19) || SAM_PART_IS_DEFINED(SAMV70N20) )"
.LASF1870:
	.ascii	"__LPM_float_enhanc"
	.string	"ed__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); float __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF2044:
	.string	"SAMB11ZR_XPLAINED_PRO 92"
.LASF1081:
	.string	"OCR0A_5 5"
.LASF1520:
	.string	"UPM01 5"
.LASF766:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF1259:
	.string	"ADCL0 0"
.LASF318:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF1920:
	.string	"convert_16_bit_to_byte_address(value,data) ((*(uint16_t *)(data)) = (uint16_t)(value))"
.LASF729:
	.string	"UINT_LEAST16_MAX UINT16_MAX"
.LASF1914:
	.string	"ADDR_COPY_DST_SRC_64(dst,src) memcpy((&(dst)), (&(src)), sizeof(uint64_t))"
.LASF220:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF1313:
	.string	"COM1A0 6"
.LASF973:
	.string	"DDD4 4"
.LASF1948:
	.string	"gpio_set_pin_high(io_id) ioport_set_value(io_id, 1)"
.LASF510:
	.string	"SAM3S4 ( SAM_PART_IS_DEFINED(SAM3S4A) || SAM_PART_IS_DEFINED(SAM3S4B) || SAM_PART_IS_DEFINED(SAM3S4C) )"
.LASF341:
	.string	"__FLASH 1"
.LASF581:
	.string	"SAMC20G ( SAM_PART_IS_DEFINED(SAMC20G15A) || SAM_PART_IS_DEFINED(SAMC20G16A) || SAM_PART_IS_DEFINED(SAMC20G17A) || SAM_PART_IS_DEFINED(SAMC20G18A) )"
.LASF892:
	.string	"_SFR_IO16(io_addr) _MMIO_WORD((io_addr) + __SFR_OFFSET)"
.LASF1274:
	.string	"ADCH6 6"
.LASF986:
	.string	"TIFR0 _SFR_IO8(0x15)"
.LASF1265:
	.string	"ADCL6 6"
.LASF406:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF572:
	.string	"SAML22J ( SAM_PART_IS_DEFINED(SAML22J16A) || SAM_PART_IS_DEFINED(SAML22J17A) || SAM_PART_IS_DEFINED(SAML22J18A) )"
.LASF2037:
	.string	"SAMB11_XPLAINED_PRO 84"
.LASF2003:
	.string	"XMEGA_E5_XPLAINED 50"
.LASF1615:
	.string	"LFUSE_DEFAULT (FUSE_CKSEL0 & FUSE_CKSEL2 & FUSE_CKSEL3 & FUSE_SUT0 & FUSE_CKDIV8)"
.LASF779:
	.string	"PRIiFAST8 \"i\""
.LASF15:
	.string	"__OPTIMIZE__ 1"
.LASF1790:
	.string	"___int_wchar_t_h "
.LASF546:
	.string	"SAMR34J ( SAM_PART_IS_DEFINED(SAMR34J18A) || SAM_PART_IS_DEFINED(SAMR34J17A) || SAM_PART_IS_DEFINED(SAMR34J16A) || SAM_PART_IS_DEFINED(SAMR34J18B) || SAM_PART_IS_DEFINED(SAMR34J17B) || SAM_PART_IS_DEFINED(SAMR34J16B) )"
.LASF1323:
	.string	"TCCR1C _SFR_MEM8(0x82)"
.LASF870:
	.string	"SCNxLEAST16 \"x\""
.LASF1763:
	.string	"_SIZE_T "
.LASF224:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF1943:
	.string	"IOPORT_INIT_HIGH 1 << 1"
.LASF648:
	.string	"SAME70J ( SAM_PART_IS_DEFINED(SAME70J19) || SAM_PART_IS_DEFINED(SAME70J20) || SAM_PART_IS_DEFINED(SAME70J21) )"
.LASF878:
	.string	"SCNx32 \"lx\""
.LASF1087:
	.string	"OCR0B_2 2"
.LASF1500:
	.string	"UDRE0 5"
.LASF170:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF960:
	.string	"PIND0 0"
.LASF1201:
	.string	"CAL1 1"
.LASF645:
	.string	"SAMS70NB ( SAM_PART_IS_DEFINED(SAMS70N19B) || SAM_PART_IS_DEFINED(SAMS70N20B) || SAM_PART_IS_DEFINED(SAMS70N21B) )"
.LASF832:
	.string	"PRIxPTR PRIx16"
.LASF1410:
	.string	"CS20 0"
.LASF941:
	.string	"PINC5 5"
.LASF226:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF542:
	.string	"SAMR21G ( SAM_PART_IS_DEFINED(SAMR21G16A) || SAM_PART_IS_DEFINED(SAMR21G17A) || SAM_PART_IS_DEFINED(SAMR21G18A) )"
.LASF1851:
	.string	"Is_global_interrupt_enabled() cpu_irq_is_enabled()"
.LASF278:
	.string	"__DQ_IBIT__ 0"
.LASF2045:
	.string	"SAMR30_XPLAINED_PRO 93"
.LASF1325:
	.string	"FOC1A 7"
.LASF1484:
	.string	"TWEA 6"
.LASF1041:
	.string	"EEAR5 5"
.LASF1071:
	.string	"TCNT0_4 4"
.LASF918:
	.string	"DDB0 0"
.LASF1771:
	.string	"_SIZE_T_DEFINED "
.LASF1641:
	.string	"_AVR_PORTPINS_H_ 1"
.LASF1581:
	.string	"USART_RX_vect_num 18"
.LASF282:
	.string	"__UQQ_IBIT__ 0"
.LASF374:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF1846:
	.string	"cpu_irq_enable() sei()"
.LASF866:
	.string	"SCNu16 \"u\""
.LASF2055:
	.string	"SAMR21B18_MODULE 104"
.LASF1468:
	.string	"TWA6 7"
.LASF874:
	.string	"SCNoFAST32 \"lo\""
.LASF623:
	.string	"SAM4CP16_0 ( SAM_PART_IS_DEFINED(SAM4CP16B_0) )"
.LASF1747:
	.string	"__bool_true_false_are_defined 1"
.LASF2029:
	.string	"SAML21_XPLAINED_PRO 76"
.LASF530:
	.string	"SAM4SD16 ( SAM_PART_IS_DEFINED(SAM4SD16B) || SAM_PART_IS_DEFINED(SAM4SD16C) )"
.LASF1801:
	.string	"__need_NULL "
.LASF1927:
	.string	"Swap16(u16) ((U16)(((U16)(u16) >> 8) | ((U16)(u16) << 8)))"
.LASF496:
	.ascii	"MEGA_X"
	.string	"X8_A ( AVR8_PART_IS_DEFINED(ATmega48A) || AVR8_PART_IS_DEFINED(ATmega48PA) || AVR8_PART_IS_DEFINED(ATmega88A) || AVR8_PART_IS_DEFINED(ATmega88PA) || AVR8_PART_IS_DEFINED(ATmega168A) || AVR8_PART_IS_DEFINED(ATmega168PA) || AVR8_PART_IS_DEFINED(ATmega328P) )"
.LASF1522:
	.string	"UMSEL01 7"
.LASF2062:
	.string	"SENSORS_XPLAINED_LIGHTPROX_1 6"
.LASF136:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF1545:
	.string	"UDR0_6 6"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fff"
.LASF1693:
	.string	"SREG _SFR_IO8(0x3F)"
.LASF1806:
	.string	"__ATTR_MALLOC__ __attribute__((__malloc__))"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF1139:
	.string	"ACO 5"
.LASF1218:
	.string	"PCINT0 0"
.LASF1280:
	.string	"ADIE 3"
.LASF1600:
	.string	"RAMEND 0x8FF"
.LASF243:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF1122:
	.string	"WCOL 6"
.LASF1105:
	.string	"GPIOR22 2"
.LASF403:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF28:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF859:
	.string	"SCNuFAST8 \"hhu\""
.LASF737:
	.string	"INT_FAST8_MIN INT8_MIN"
.LASF1101:
	.string	"GPIOR17 7"
.LASF1353:
	.string	"ICR1L6 6"
.LASF825:
	.string	"PRIxLEAST32 \"lx\""
.LASF1868:
	.ascii	"__LPM_float_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); float __result; __asm__ __volatile__ "
	.ascii	"( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1359:
	.string	"ICR1H3 3"
.LASF2072:
	.string	"LED_Off(led_gpio) gpio_set_pin_low(led_gpio)"
.LASF1147:
	.string	"MCUSR _SFR_IO8(0x34)"
.LASF88:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF2086:
	.string	"SPI_MOSI IOPORT_CREATE_PIN(PORTB, 3)"
.LASF1495:
	.string	"MPCM0 0"
.LASF789:
	.string	"PRIi32 \"li\""
.LASF1523:
	.string	"UBRR0 _SFR_MEM16(0xC4)"
.LASF1664:
	.string	"PIN1 1"
.LASF1339:
	.string	"TCNT1H2 2"
.LASF1125:
	.string	"SPDR0 0"
.LASF2065:
	.string	"RZ600_AT86RF230B 9"
.LASF1563:
	.string	"TIMER2_OVF_vect_num 9"
.LASF444:
	.string	"SAM_PART_IS_DEFINED(part) (defined(__ ## part ## __))"
.LASF495:
	.ascii	"MEGA_XX8 ( AVR8_PART_IS_DEFINED(ATmega48) || AVR8_PART_IS_DE"
	.ascii	"FINED(ATmega48A) || AVR8_PART_IS_DEFINED(ATmega48PA) || AVR8"
	.ascii	"_PART_IS_DEFINED(ATmega48PB) || AVR8_PART_IS_DEFINED(ATmega8"
	.ascii	"8) || AVR8_PART_IS_DEFINED(ATmega88A) || AVR8_PART_IS_DEFINE"
	.ascii	"D(ATmega88PA) || AVR8_PART_IS_DEFINED(ATmega88PB"
	.string	") || AVR8_PART_IS_DEFINED(ATmega168) || AVR8_PART_IS_DEFINED(ATmega168A) || AVR8_PART_IS_DEFINED(ATmega168PA) || AVR8_PART_IS_DEFINED(ATmega168PB) || AVR8_PART_IS_DEFINED(ATmega328) || AVR8_PART_IS_DEFINED(ATmega328P) || AVR8_PART_IS_DEFINED(ATmega328PB) )"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF1121:
	.string	"SPI2X 0"
.LASF828:
	.string	"PRIXLEAST32 \"lX\""
.LASF134:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF44:
	.string	"__INT32_TYPE__ long int"
.LASF985:
	.string	"PORTD7 7"
.LASF1753:
	.string	"_T_PTRDIFF "
.LASF1821:
	.string	"barrier() asm volatile(\"\" ::: \"memory\")"
.LASF782:
	.string	"PRIdFAST16 \"d\""
.LASF1894:
	.string	"PROGMEM_READ_BYTE(x) pgm_read_byte(x)"
.LASF1957:
	.string	"EVK1100 1"
.LASF732:
	.string	"UINT_LEAST32_MAX UINT32_MAX"
.LASF237:
	.string	"__USACCUM_IBIT__ 8"
.LASF206:
	.string	"__UFRACT_FBIT__ 16"
.LASF1231:
	.string	"PCINT12 4"
.LASF725:
	.string	"INT_LEAST8_MIN INT8_MIN"
.LASF570:
	.string	"SAML22N ( SAM_PART_IS_DEFINED(SAML22N16A) || SAM_PART_IS_DEFINED(SAML22N17A) || SAM_PART_IS_DEFINED(SAML22N18A) )"
.LASF687:
	.string	"SAM4CP_0 (SAM4CP16_0)"
.LASF1250:
	.string	"OCIE1B 2"
.LASF668:
	.string	"SAMD (SAMD20 || SAMD21 || SAMD09 || SAMD10 || SAMD11 || SAMDA1)"
.LASF509:
	.string	"SAM3S2 ( SAM_PART_IS_DEFINED(SAM3S2A) || SAM_PART_IS_DEFINED(SAM3S2B) || SAM_PART_IS_DEFINED(SAM3S2C) )"
.LASF218:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF1032:
	.string	"EEDR6 6"
.LASF1369:
	.string	"OCR1AL3 3"
.LASF372:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF904:
	.string	"loop_until_bit_is_set(sfr,bit) do { } while (bit_is_clear(sfr, bit))"
.LASF43:
	.string	"__INT16_TYPE__ int"
.LASF1309:
	.string	"WGM10 0"
.LASF1315:
	.string	"TCCR1B _SFR_MEM8(0x81)"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 0xffffffffUL"
.LASF1377:
	.string	"OCR1AH2 2"
.LASF627:
	.string	"SAMG53 ( SAM_PART_IS_DEFINED(SAMG53G19) || SAM_PART_IS_DEFINED(SAMG53N19) )"
.LASF1716:
	.string	"AVR_STACK_POINTER_LO_ADDR _SFR_IO_ADDR(SPL)"
.LASF67:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF16:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF681:
	.string	"SAM4C_0 (SAM4C4_0 || SAM4C8_0 || SAM4C16_0 || SAM4C32_0)"
.LASF1592:
	.string	"ANALOG_COMP_vect _VECTOR(23)"
.LASF1646:
	.string	"PORT3 3"
.LASF1252:
	.string	"TIMSK2 _SFR_MEM8(0x70)"
.LASF1268:
	.string	"ADCH0 0"
.LASF834:
	.string	"SCNd8 \"hhd\""
.LASF356:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF1066:
	.string	"TCNT0 _SFR_IO8(0x26)"
.LASF1357:
	.string	"ICR1H1 1"
.LASF1181:
	.string	"CLKPS3 3"
.LASF987:
	.string	"TOV0 0"
.LASF1348:
	.string	"ICR1L1 1"
.LASF1019:
	.string	"EERE 0"
.LASF1351:
	.string	"ICR1L4 4"
.LASF612:
	.string	"SAM4CMS4_1 ( SAM_PART_IS_DEFINED(SAM4CMS4C_1) )"
.LASF434:
	.string	"__AVR_ATmega328P__ 1"
.LASF1199:
	.string	"OSCCAL _SFR_MEM8(0x66)"
.LASF852:
	.string	"SCNdPTR SCNd16"
.LASF1491:
	.string	"TWAM4 4"
.LASF2006:
	.string	"SAM4S_XPLAINED_PRO 53"
.LASF1745:
	.string	"true 1"
.LASF1012:
	.string	"GPIOR02 2"
.LASF1234:
	.string	"PCMSK2 _SFR_MEM8(0x6D)"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffU"
.LASF1189:
	.string	"PRTIM2 6"
.LASF1944:
	.string	"IOPORT_PULL_DOWN (0 << 2)"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF1549:
	.string	"INT1_vect_num 2"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF2075:
	.string	"MCU_SOC_NAME \"ATMEGA328P\""
.LASF1531:
	.string	"UBRR0_6 6"
.LASF1986:
	.string	"SAM3U_EK 33"
.LASF295:
	.string	"__DA_FBIT__ 31"
.LASF884:
	.string	"_MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))"
.LASF548:
	.string	"SAMR34JXXB ( SAM_PART_IS_DEFINED(SAMR34J18B) || SAM_PART_IS_DEFINED(SAMR34J17B) || SAM_PART_IS_DEFINED(SAMR34J16B) )"
.LASF792:
	.string	"PRIdPTR PRId16"
.LASF1385:
	.string	"OCR1BL0 0"
.LASF690:
	.string	"SAMG (SAMG51 || SAMG53 || SAMG54 || SAMG55)"
.LASF310:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF906:
	.string	"_AVR_IOXXX_H_ \"iom328p.h\""
.LASF806:
	.string	"PRIo16 \"o\""
.LASF181:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF633:
	.string	"SAMV71NB ( SAM_PART_IS_DEFINED(SAMV71N19B) || SAM_PART_IS_DEFINED(SAMV71N20B) || SAM_PART_IS_DEFINED(SAMV71N21B) )"
.LASF970:
	.string	"DDD1 1"
.LASF762:
	.string	"WINT_MIN __WINT_MIN__"
.LASF423:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF954:
	.string	"PORTC2 2"
.LASF296:
	.string	"__DA_IBIT__ 32"
.LASF950:
	.string	"DDC6 6"
.LASF1472:
	.string	"TWD2 2"
.LASF279:
	.string	"__TQ_FBIT__ 127"
.LASF712:
	.string	"INT8_MAX 0x7f"
.LASF1469:
	.string	"TWDR _SFR_MEM8(0xBB)"
.LASF333:
	.string	"__AVR_HAVE_MUL__ 1"
.LASF993:
	.string	"OCF1B 2"
.LASF31:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF814:
	.string	"PRIxFAST16 \"x\""
.LASF587:
	.string	"SAM4E16 ( SAM_PART_IS_DEFINED(SAM4E16C) || SAM_PART_IS_DEFINED(SAM4E16CB) || SAM_PART_IS_DEFINED(SAM4E16E) )"
.LASF1082:
	.string	"OCR0A_6 6"
.LASF1260:
	.string	"ADCL1 1"
.LASF1706:
	.string	"ZL r30"
.LASF1451:
	.string	"TWBR7 7"
.LASF1902:
	.string	"CPU_ENDIAN_TO_LE32(x) (x)"
.LASF388:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF217:
	.string	"__ULFRACT_IBIT__ 0"
.LASF1182:
	.string	"CLKPCE 7"
.LASF1826:
	.string	"Assert(expr) ((void) 0)"
.LASF1314:
	.string	"COM1A1 7"
.LASF813:
	.string	"PRIxLEAST16 \"x\""
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 0xffffU"
.LASF22:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF2016:
	.string	"ATMEGARFX_RCB 63"
.LASF2036:
	.string	"ATMEGA328PB_XPLAINED_MINI 83"
.LASF752:
	.string	"INTMAX_MIN INT64_MIN"
.LASF419:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF812:
	.string	"PRIx16 \"x\""
.LASF663:
	.string	"SAMD10 (SAMD10C || SAMD10DS || SAMD10DM || SAMD10DU)"
.LASF1290:
	.string	"ADMUX _SFR_MEM8(0x7C)"
.LASF1786:
	.string	"_BSD_WCHAR_T_ "
.LASF1020:
	.string	"EEPE 1"
.LASF1748:
	.string	"_STDDEF_H "
.LASF639:
	.string	"SAMV70NB ( SAM_PART_IS_DEFINED(SAMV70N19B) || SAM_PART_IS_DEFINED(SAMV70N20B) )"
.LASF1713:
	.string	"AVR_STACK_POINTER_HI_REG SPH"
.LASF1799:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF666:
	.string	"SAMHA1 (SAMHA1G || SAMHA1E)"
.LASF1562:
	.string	"TIMER2_COMPB_vect _VECTOR(8)"
.LASF352:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF1429:
	.string	"OCR2_3 3"
.LASF1548:
	.string	"INT0_vect _VECTOR(1)"
.LASF83:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF1847:
	.string	"cpu_irq_disable() cli()"
.LASF1877:
	.string	"pgm_read_dword_near(address_short) __LPM_dword((uint16_t)(address_short))"
.LASF1257:
	.string	"ADCW _SFR_MEM16(0x78)"
.LASF464:
	.string	"UC3C (UC3C0 || UC3C1 || UC3C2)"
.LASF1697:
	.string	"SREG_V (3)"
.LASF1142:
	.string	"SMCR _SFR_IO8(0x33)"
.LASF961:
	.string	"PIND1 1"
.LASF1202:
	.string	"CAL2 2"
.LASF707:
	.string	"__INTTYPES_H_ "
.LASF1411:
	.string	"CS21 1"
.LASF1068:
	.string	"TCNT0_1 1"
.LASF942:
	.string	"PINC6 6"
.LASF791:
	.string	"PRIiFAST32 \"li\""
.LASF657:
	.string	"SAM3XA (SAM3X4 || SAM3X8 || SAM3A4 || SAM3A8)"
.LASF1042:
	.string	"EEAR6 6"
.LASF1072:
	.string	"TCNT0_5 5"
.LASF2076:
	.string	"BOARD_NAME \"ATMEGA328P_XPLAINED_MINI\""
.LASF919:
	.string	"DDB1 1"
.LASF1117:
	.string	"DORD 5"
.LASF1393:
	.string	"OCR1BH _SFR_MEM8(0x8B)"
.LASF566:
	.string	"SAML21G ( SAM_PART_IS_DEFINED(SAML21G18A) || SAM_PART_IS_DEFINED(SAML21G16B) || SAM_PART_IS_DEFINED(SAML21G17B) || SAM_PART_IS_DEFINED(SAML21G18B) )"
.LASF413:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF1857:
	.string	"PGM_VOID_P const void *"
.LASF1169:
	.string	"WDP0 0"
.LASF1517:
	.string	"UDORD0 2"
.LASF313:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF647:
	.string	"SAMS70QB ( SAM_PART_IS_DEFINED(SAMS70Q19B) || SAM_PART_IS_DEFINED(SAMS70Q20B) || SAM_PART_IS_DEFINED(SAMS70Q21B) )"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF1623:
	.string	"FUSE_RSTDISBL (unsigned char)~_BV(7)"
.LASF575:
	.string	"SAMDA1E ( SAM_PART_IS_DEFINED(SAMDA1E14A) || SAM_PART_IS_DEFINED(SAMDA1E14B) || SAM_PART_IS_DEFINED(SAMDA1E15A) || SAM_PART_IS_DEFINED(SAMDA1E15B) || SAM_PART_IS_DEFINED(SAMDA1E16A) || SAM_PART_IS_DEFINED(SAMDA1E16B) )"
.LASF1776:
	.string	"_SIZET_ "
.LASF917:
	.string	"DDRB _SFR_IO8(0x04)"
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF706:
	.string	"_SFR_ASM_COMPAT 0"
.LASF1378:
	.string	"OCR1AH3 3"
.LASF458:
	.string	"UC3L0256 ( AVR32_PART_IS_DEFINED(UC3L0256) )"
.LASF697:
	.string	"SAME70B (SAME70JB || SAME70NB || SAME70QB)"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF1546:
	.string	"UDR0_7 7"
.LASF1667:
	.string	"PB1 PORTB1"
.LASF1947:
	.string	"gpio_pin_is_high(io_id) ioport_pin_is_high(io_id)"
.LASF1671:
	.string	"PB5 PORTB5"
.LASF348:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF685:
	.string	"SAM4CM_1 (SAM4CMP8_1 || SAM4CMP16_1 || SAM4CMP32_1 || SAM4CMS4_1 || SAM4CMS8_1 || SAM4CMS16_1 || SAM4CMS32_1)"
.LASF1749:
	.string	"_STDDEF_H_ "
.LASF494:
	.ascii	"MEGA_XX4_A "
	.string	"( AVR8_PART_IS_DEFINED(ATmega164A) || AVR8_PART_IS_DEFINED(ATmega164PA) || AVR8_PART_IS_DEFINED(ATmega324A) || AVR8_PART_IS_DEFINED(ATmega324PA) || AVR8_PART_IS_DEFINED(ATmega644A) || AVR8_PART_IS_DEFINED(ATmega644PA) || AVR8_PART_IS_DEFINED(ATmega1284P) )"
.LASF35:
	.string	"__WCHAR_TYPE__ int"
.LASF244:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF1494:
	.string	"UCSR0A _SFR_MEM8(0xC0)"
.LASF1106:
	.string	"GPIOR23 3"
.LASF1383:
	.string	"OCR1B _SFR_MEM16(0x8A)"
.LASF1144:
	.string	"SM0 1"
.LASF1650:
	.string	"DD7 7"
.LASF470:
	.string	"XMEGA_A3B ( AVR8_PART_IS_DEFINED(ATxmega256A3B) )"
.LASF1724:
	.string	"__AVR_LIBC_REVISION__ 0"
.LASF1911:
	.string	"CCPU_ENDIAN_TO_LE32(x) (x)"
.LASF259:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF1291:
	.string	"MUX0 0"
.LASF298:
	.string	"__TA_IBIT__ 16"
.LASF1047:
	.string	"_EEPROM_REG_LOCATIONS_ 1F2021"
.LASF787:
	.string	"PRIdLEAST32 \"ld\""
.LASF1360:
	.string	"ICR1H4 4"
.LASF1735:
	.string	"BLB0_MODE_2 (0xFB)"
.LASF844:
	.string	"SCNiLEAST16 \"i\""
.LASF342:
	.string	"__MEMX 1"
.LASF1983:
	.string	"UC3B_BOARD_CONTROLLER 30"
.LASF1642:
	.string	"PORT7 7"
.LASF1015:
	.string	"GPIOR05 5"
.LASF604:
	.string	"SAM4CMP8 (SAM4CMP8_0 || SAM4CMP8_1)"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF1918:
	.string	"convert_16_bit_to_byte_array(value,data) ((*(uint16_t *)(data)) = (uint16_t)(value))"
.LASF1557:
	.string	"WDT_vect_num 6"
.LASF800:
	.string	"PRIx8 \"x\""
.LASF1209:
	.string	"PCIE0 0"
.LASF1663:
	.string	"PIN2 2"
.LASF1340:
	.string	"TCNT1H3 3"
.LASF1126:
	.string	"SPDR1 1"
.LASF261:
	.string	"__LLACCUM_FBIT__ 47"
.LASF1570:
	.string	"TIMER1_COMPB_vect _VECTOR(12)"
.LASF508:
	.string	"SAM3S1 ( SAM_PART_IS_DEFINED(SAM3S1A) || SAM_PART_IS_DEFINED(SAM3S1B) || SAM_PART_IS_DEFINED(SAM3S1C) )"
.LASF1810:
	.string	"abs(__i) __builtin_abs(__i)"
.LASF1788:
	.string	"_WCHAR_T_DEFINED "
.LASF1438:
	.string	"OCR2BUB 2"
.LASF1514:
	.string	"UCSZ00 1"
.LASF453:
	.string	"UC3C2 ( AVR32_PART_IS_DEFINED(UC3C264C) || AVR32_PART_IS_DEFINED(UC3C2128C) || AVR32_PART_IS_DEFINED(UC3C2256C) || AVR32_PART_IS_DEFINED(UC3C2512C) )"
.LASF1661:
	.string	"PIN4 4"
.LASF1756:
	.string	"_BSD_PTRDIFF_T_ "
.LASF118:
	.string	"__UINT_FAST16_MAX__ 0xffffU"
.LASF1165:
	.string	"SIGRD 5"
.LASF1091:
	.string	"OCR0B_6 6"
.LASF1232:
	.string	"PCINT13 5"
.LASF252:
	.string	"__LACCUM_IBIT__ 32"
.LASF1900:
	.string	"CMD_ID_OCTET (0)"
.LASF860:
	.string	"SCNx8 \"hhx\""
.LASF1871:
	.string	"__LPM(addr) __LPM_enhanced__(addr)"
.LASF1423:
	.string	"TCNT2_6 6"
.LASF1033:
	.string	"EEDR7 7"
.LASF1307:
	.string	"AIN1D 1"
.LASF180:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF1928:
	.string	"Swap32(u32) ((U32)(((U32)Swap16((U32)(u32) >> 16)) | ((U32)Swap16((U32)(u32)) << 16)))"
.LASF100:
	.string	"__INT16_C(c) c"
.LASF1485:
	.string	"TWINT 7"
.LASF1310:
	.string	"WGM11 1"
.LASF1757:
	.string	"___int_ptrdiff_t_h "
.LASF1803:
	.string	"__need_wchar_t "
.LASF1084:
	.string	"OCR0B _SFR_IO8(0x28)"
.LASF113:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF760:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF1298:
	.string	"DIDR0 _SFR_MEM8(0x7E)"
.LASF1119:
	.string	"SPIE 7"
.LASF1539:
	.string	"UDR0_0 0"
.LASF2105:
	.string	"long long unsigned int"
.LASF20:
	.string	"__SIZEOF_SHORT__ 2"
.LASF1645:
	.string	"PORT4 4"
.LASF1436:
	.string	"TCR2BUB 0"
.LASF1269:
	.string	"ADCH1 1"
.LASF726:
	.string	"UINT_LEAST8_MAX UINT8_MAX"
.LASF1213:
	.string	"ISC00 0"
.LASF93:
	.string	"__UINT8_MAX__ 0xff"
.LASF1060:
	.string	"CS00 0"
.LASF2019:
	.string	"SAMG53_XPLAINED_PRO 66"
.LASF1536:
	.string	"UBRR0_10 2"
.LASF1055:
	.string	"COM0B0 4"
.LASF1352:
	.string	"ICR1L5 5"
.LASF334:
	.string	"__AVR_HAVE_JMP_CALL__ 1"
.LASF2012:
	.string	"SAMD20_XPLAINED_PRO 59"
.LASF395:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF610:
	.string	"SAM4CMP32 (SAM4CMP32_0 || SAM4CMP32_1)"
.LASF1647:
	.string	"PORT2 2"
.LASF1670:
	.string	"PB4 PORTB4"
.LASF1094:
	.string	"GPIOR10 0"
.LASF1589:
	.string	"EE_READY_vect_num 22"
.LASF117:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF1332:
	.string	"TCNT1L4 4"
.LASF671:
	.string	"SAMR34 (SAMR34J)"
.LASF324:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF1532:
	.string	"UBRR0_7 7"
.LASF1075:
	.string	"OCR0A _SFR_IO8(0x27)"
.LASF1586:
	.string	"USART_TX_vect _VECTOR(20)"
.LASF1994:
	.string	"SAM4S_XPLAINED 41"
.LASF1386:
	.string	"OCR1BL1 1"
.LASF1954:
	.string	"gpio_set_pin_group_low(port_id,mask) ioport_set_group_low(port_id, mask)"
.LASF673:
	.string	"WLR089 (WLR089U)"
.LASF1926:
	.string	"PGM_READ_WORD(x) pgm_read_word(x)"
.LASF1719:
	.string	"__AVR_LIBC_VERSION__ 20000UL"
.LASF297:
	.string	"__TA_FBIT__ 47"
.LASF1437:
	.string	"TCR2AUB 1"
.LASF971:
	.string	"DDD2 2"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF1000:
	.string	"PCIF0 0"
.LASF1835:
	.string	"__INTR_ATTRS used, externally_visible"
.LASF2073:
	.string	"LED_On(led_gpio) gpio_set_pin_high(led_gpio)"
.LASF955:
	.string	"PORTC3 3"
.LASF611:
	.string	"SAM4CMS4_0 ( SAM_PART_IS_DEFINED(SAM4CMS4C_0) )"
.LASF1473:
	.string	"TWD3 3"
.LASF1736:
	.string	"BLB0_MODE_3 (0xF3)"
.LASF196:
	.string	"__USFRACT_FBIT__ 8"
.LASF1498:
	.string	"DOR0 3"
.LASF169:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF1924:
	.string	"PGM_READ_BLOCK(dst,src,len) memcpy_P((dst), (src), (len))"
.LASF555:
	.string	"SAMD09C ( SAM_PART_IS_DEFINED(SAMD09C13A) )"
.LASF796:
	.string	"PRIoFAST8 \"o\""
.LASF1083:
	.string	"OCR0A_7 7"
.LASF621:
	.string	"SAM4CMS32_1 ( SAM_PART_IS_DEFINED(SAM4CMS32C_1) )"
.LASF314:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF238:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF1035:
	.string	"EEARL _SFR_IO8(0x21)"
.LASF221:
	.string	"__LLFRACT_FBIT__ 63"
.LASF1678:
	.string	"PC4 PORTC4"
.LASF698:
	.string	"SAMS70 (SAMS70J || SAMS70N || SAMS70Q || SAMS70JB || SAMS70NB || SAMS70QB)"
.LASF325:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF1574:
	.string	"TIMER0_COMPA_vect _VECTOR(14)"
.LASF2057:
	.string	"EXT1102 1"
.LASF743:
	.string	"INT_FAST32_MIN INT32_MIN"
.LASF635:
	.string	"SAMV71QB ( SAM_PART_IS_DEFINED(SAMV71Q19B) || SAM_PART_IS_DEFINED(SAMV71Q20B) || SAM_PART_IS_DEFINED(SAMV71Q21B) )"
.LASF540:
	.ascii	"SAMD21E ( SAM_PART_IS_DEFINED(SAMD21E15A) || SAM_PART_IS_DEF"
	.ascii	"INED(SAMD21E16A) || SAM_PART_IS_DEFINED(SAMD21E17A) || SAM_P"
	.ascii	"ART_IS_DEFINED(SAMD21E18A) || SAM_PART_IS_DEFINED(SAMD21E15B"
	.ascii	") || SAM_PART_IS_DEFINED(SAMD2"
	.string	"1E15BU) || SAM_PART_IS_DEFINED(SAMD21E16B) || SAM_PART_IS_DEFINED(SAMD21E16BU) || SAM_PART_IS_DEFINED(SAMD21E15L) || SAM_PART_IS_DEFINED(SAMD21E16L) || SAM_PART_IS_DEFINED(SAMD21E17D) || SAM_PART_IS_DEFINED(SAMD21E17DU) || SAM_PART_IS_DEFINED(SAMD21E17L) )"
.LASF959:
	.string	"PIND _SFR_IO8(0x09)"
.LASF421:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF1464:
	.string	"TWA2 3"
.LASF634:
	.string	"SAMV71Q ( SAM_PART_IS_DEFINED(SAMV71Q19) || SAM_PART_IS_DEFINED(SAMV71Q20) || SAM_PART_IS_DEFINED(SAMV71Q21) )"
.LASF2092:
	.string	"VRY 4"
.LASF594:
	.string	"SAM4C8_1 ( SAM_PART_IS_DEFINED(SAM4C8C_1) )"
.LASF164:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF1945:
	.string	"IOPORT_PULL_UP (1 << 2)"
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF1599:
	.string	"RAMSTART (0x100)"
.LASF1998:
	.string	"SAM4L_EK 45"
.LASF600:
	.string	"SAM4C32_1 ( SAM_PART_IS_DEFINED(SAM4C32C_1) || SAM_PART_IS_DEFINED(SAM4C32E_1) )"
.LASF848:
	.string	"SCNdFAST32 \"ld\""
.LASF853:
	.string	"SCNiPTR SCNi16"
.LASF163:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF517:
	.string	"SAM3N0 ( SAM_PART_IS_DEFINED(SAM3N0A) || SAM_PART_IS_DEFINED(SAM3N0B) || SAM_PART_IS_DEFINED(SAM3N0C) )"
.LASF528:
	.string	"SAM4S16 ( SAM_PART_IS_DEFINED(SAM4S16B) || SAM_PART_IS_DEFINED(SAM4S16C) )"
.LASF897:
	.string	"_SFR_BYTE(sfr) _MMIO_BYTE(_SFR_ADDR(sfr))"
.LASF1818:
	.string	"EXIT_FAILURE 1"
.LASF1052:
	.string	"TCCR0A _SFR_IO8(0x24)"
.LASF354:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF640:
	.string	"SAMV70Q ( SAM_PART_IS_DEFINED(SAMV70Q19) || SAM_PART_IS_DEFINED(SAMV70Q20) )"
.LASF586:
	.string	"SAM4E8 ( SAM_PART_IS_DEFINED(SAM4E8C) || SAM_PART_IS_DEFINED(SAM4E8CB) || SAM_PART_IS_DEFINED(SAM4E8E) )"
.LASF1025:
	.string	"EEDR _SFR_IO8(0x20)"
.LASF1601:
	.string	"XRAMSIZE 0"
.LASF512:
	.string	"SAM3SD8 ( SAM_PART_IS_DEFINED(SAM3SD8B) || SAM_PART_IS_DEFINED(SAM3SD8C) )"
.LASF1896:
	.string	"SHORTENUM __attribute__ ((packed))"
.LASF793:
	.string	"PRIiPTR PRIi16"
.LASF1089:
	.string	"OCR0B_4 4"
.LASF894:
	.string	"_SFR_IO_ADDR(sfr) (_SFR_MEM_ADDR(sfr) - __SFR_OFFSET)"
.LASF962:
	.string	"PIND2 2"
.LASF1203:
	.string	"CAL3 3"
.LASF45:
	.string	"__INT64_TYPE__ long long int"
.LASF1739:
	.string	"BLB1_MODE_2 (0xEF)"
.LASF1630:
	.string	"__BOOT_LOCK_BITS_0_EXIST "
.LASF174:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF1953:
	.string	"gpio_set_pin_group_high(port_id,mask) ioport_set_group_high(port_id, mask)"
.LASF1784:
	.string	"__WCHAR_T "
.LASF863:
	.string	"SCNo16 \"o\""
.LASF1744:
	.string	"bool _Bool"
.LASF1665:
	.string	"PIN0 0"
.LASF1118:
	.string	"SPE 6"
.LASF601:
	.string	"SAM4C32 (SAM4C32_0 || SAM4C32_1)"
.LASF1043:
	.string	"EEAR7 7"
.LASF1073:
	.string	"TCNT0_6 6"
.LASF404:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF920:
	.string	"DDB2 2"
.LASF2022:
	.string	"SAMD21_XPLAINED_PRO 69"
.LASF1151:
	.string	"WDRF 3"
.LASF907:
	.string	"_AVR_IOM328P_H_ 1"
.LASF500:
	.string	"MEGA_RFR2 ( AVR8_PART_IS_DEFINED(ATmega64RFR2) || AVR8_PART_IS_DEFINED(ATmega128RFR2) || AVR8_PART_IS_DEFINED(ATmega256RFR2) || AVR8_PART_IS_DEFINED(ATmega644RFR2) || AVR8_PART_IS_DEFINED(ATmega1284RFR2) || AVR8_PART_IS_DEFINED(ATmega2564RFR2) )"
.LASF465:
	.string	"UC3D (UC3D3 || UC3D4)"
.LASF147:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF1596:
	.string	"SPM_READY_vect _VECTOR(25)"
.LASF292:
	.string	"__HA_IBIT__ 8"
.LASF764:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF713:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF1691:
	.string	"SP _SFR_IO16(0x3D)"
.LASF274:
	.string	"__HQ_IBIT__ 0"
.LASF783:
	.string	"PRIi16 \"i\""
.LASF855:
	.string	"SCNoLEAST8 \"hho\""
.LASF2104:
	.string	"long long int"
.LASF1714:
	.string	"AVR_STACK_POINTER_HI_ADDR _SFR_IO_ADDR(SPH)"
.LASF125:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF1003:
	.string	"EIFR _SFR_IO8(0x1C)"
.LASF2070:
	.string	"_ATMEGA328P_XPLAINED_MINI_ "
.LASF1261:
	.string	"ADCL2 2"
.LASF1598:
	.string	"SPM_PAGESIZE 128"
.LASF1297:
	.string	"REFS1 7"
.LASF329:
	.string	"__AVR_ARCH__ 5"
.LASF299:
	.string	"__UHA_FBIT__ 8"
.LASF1916:
	.string	"convert_byte_array_to_32_bit(data) (*(uint32_t *)(data))"
.LASF1220:
	.string	"PCINT2 2"
.LASF230:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF1686:
	.string	"PD5 PORTD5"
.LASF1455:
	.string	"TWS3 3"
.LASF605:
	.string	"SAM4CMP16_0 ( SAM_PART_IS_DEFINED(SAM4CMP16C_0) )"
.LASF1442:
	.string	"EXCLK 6"
.LASF1711:
	.string	"AVR_STACK_POINTER_ADDR _SFR_IO_ADDR(SP)"
.LASF1107:
	.string	"GPIOR24 4"
.LASF135:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF1680:
	.string	"PC6 PORTC6"
.LASF1292:
	.string	"MUX1 1"
.LASF1361:
	.string	"ICR1H5 5"
.LASF260:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF1028:
	.string	"EEDR2 2"
.LASF2048:
	.string	"SIMULATOR_XMEGA_A1 97"
.LASF1958:
	.string	"EVK1101 2"
.LASF468:
	.string	"XMEGA_A1 ( AVR8_PART_IS_DEFINED(ATxmega64A1) || AVR8_PART_IS_DEFINED(ATxmega128A1) )"
.LASF1345:
	.string	"ICR1 _SFR_MEM16(0x86)"
.LASF731:
	.string	"INT_LEAST32_MIN INT32_MIN"
.LASF1210:
	.string	"PCIE1 1"
.LASF1662:
	.string	"PIN3 3"
.LASF1341:
	.string	"TCNT1H4 4"
.LASF1127:
	.string	"SPDR2 2"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF1163:
	.string	"BLBSET 3"
.LASF722:
	.string	"INT64_MIN (-INT64_MAX - 1LL)"
.LASF493:
	.ascii	"MEGA_XX4 ( AVR8_PART_IS_DEFINED(ATmega164A) || AVR8_PART_IS_"
	.ascii	"DEFINED(ATmega164PA) || AVR8_PART_IS_DEFINED(ATmega324A) || "
	.string	"AVR8_PART_IS_DEFINED(ATmega324PA) || AVR8_PART_IS_DEFINED(ATmega324PB) || AVR8_PART_IS_DEFINED(ATmega644) || AVR8_PART_IS_DEFINED(ATmega644A) || AVR8_PART_IS_DEFINED(ATmega644PA) || AVR8_PART_IS_DEFINED(ATmega1284P) || AVR8_PART_IS_DEFINED(ATmega128RFA1) )"
.LASF817:
	.string	"PRIXFAST16 \"X\""
.LASF911:
	.string	"PINB2 2"
.LASF1950:
	.string	"gpio_toggle_pin(io_id) ioport_toggle_pin(io_id)"
.LASF1516:
	.string	"UCSZ01 2"
.LASF155:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1062:
	.string	"CS02 2"
.LASF1395:
	.string	"OCR1BH1 1"
.LASF1237:
	.string	"PCINT18 2"
.LASF1233:
	.string	"PCINT14 6"
.LASF197:
	.string	"__USFRACT_IBIT__ 0"
.LASF1971:
	.string	"XMEGA_B1_XPLAINED 18"
.LASF418:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF457:
	.string	"UC3L0128 ( AVR32_PART_IS_DEFINED(UC3L0128) )"
.LASF126:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1371:
	.string	"OCR1AL5 5"
.LASF900:
	.string	"_BV(bit) (1 << (bit))"
.LASF1687:
	.string	"PD6 PORTD6"
.LASF1319:
	.string	"WGM12 3"
.LASF1979:
	.string	"UC3_L0_QT600 26"
.LASF2103:
	.string	"long unsigned int"
.LASF343:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF1123:
	.string	"SPIF 7"
.LASF1624:
	.string	"HFUSE_DEFAULT (FUSE_BOOTSZ0 & FUSE_BOOTSZ1 & FUSE_SPIEN)"
.LASF94:
	.string	"__UINT16_MAX__ 0xffffU"
.LASF439:
	.string	"ASF_H "
.LASF1644:
	.string	"PORT5 5"
.LASF1922:
	.string	"convert_64_bit_to_byte_array(value,data) memcpy((data), (&(value)), sizeof(uint64_t))"
.LASF577:
	.string	"SAMHA1E ( SAM_PART_IS_DEFINED(SAMHA1E14A) || SAM_PART_IS_DEFINED(SAMHA1E15A) || SAM_PART_IS_DEFINED(SAMHA1E16A) || SAM_PART_IS_DEFINED(SAMHA1E14AB) || SAM_PART_IS_DEFINED(SAMHA1E15AB) || SAM_PART_IS_DEFINED(SAMHA1E16AB) )"
.LASF1270:
	.string	"ADCH2 2"
.LASF1567:
	.string	"TIMER1_COMPA_vect_num 11"
.LASF1417:
	.string	"TCNT2_0 0"
.LASF1214:
	.string	"ISC01 1"
.LASF738:
	.string	"UINT_FAST8_MAX UINT8_MAX"
.LASF996:
	.string	"TOV2 0"
.LASF23:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF1537:
	.string	"UBRR0_11 3"
.LASF1056:
	.string	"COM0B1 5"
.LASF2061:
	.string	"SENSORS_XPLAINED_PRESSURE_1 5"
.LASF159:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF1134:
	.string	"ACIS0 0"
.LASF165:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF79:
	.string	"__WINT_MAX__ 0x7fff"
.LASF1493:
	.string	"TWAM6 6"
.LASF139:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF1700:
	.string	"SREG_T (6)"
.LASF1014:
	.string	"GPIOR04 4"
.LASF1710:
	.string	"AVR_STACK_POINTER_REG SP"
.LASF1333:
	.string	"TCNT1L5 5"
.LASF1534:
	.string	"UBRR0_8 0"
.LASF1976:
	.string	"MEGA1284P_XPLAINED_BC 23"
.LASF1613:
	.string	"FUSE_CKOUT (unsigned char)~_BV(6)"
.LASF1374:
	.string	"OCR1AH _SFR_MEM8(0x89)"
.LASF1890:
	.string	"PROGMEM_T const"
.LASF1737:
	.string	"BLB0_MODE_4 (0xF7)"
.LASF280:
	.string	"__TQ_IBIT__ 0"
.LASF363:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF1387:
	.string	"OCR1BL2 2"
.LASF448:
	.string	"UC3A4 ( AVR32_PART_IS_DEFINED(UC3A464) || AVR32_PART_IS_DEFINED(UC3A464S) || AVR32_PART_IS_DEFINED(UC3A4128) || AVR32_PART_IS_DEFINED(UC3A4128S) || AVR32_PART_IS_DEFINED(UC3A4256) || AVR32_PART_IS_DEFINED(UC3A4256S) )"
.LASF1453:
	.string	"TWPS0 0"
.LASF675:
	.string	"SAML21 (SAML21J || SAML21G || SAML21E)"
.LASF21:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF2008:
	.string	"ATMEGA256RFR2_ZIGBIT 55"
.LASF721:
	.string	"INT64_MAX 0x7fffffffffffffffLL"
.LASF189:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1762:
	.string	"__SIZE_T__ "
.LASF972:
	.string	"DDD3 3"
.LASF1480:
	.string	"TWEN 2"
.LASF33:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF551:
	.string	"WLR089U ( SAM_PART_IS_DEFINED(WLR089U0) )"
.LASF956:
	.string	"PORTC4 4"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF1474:
	.string	"TWD4 4"
.LASF1874:
	.string	"__LPM_float(addr) __LPM_float_enhanced__(addr)"
.LASF968:
	.string	"DDRD _SFR_IO8(0x0A)"
.LASF157:
	.string	"__LDBL_DIG__ 6"
.LASF644:
	.string	"SAMS70N ( SAM_PART_IS_DEFINED(SAMS70N19) || SAM_PART_IS_DEFINED(SAMS70N20) || SAM_PART_IS_DEFINED(SAMS70N21) )"
.LASF1262:
	.string	"ADCL3 3"
.LASF716:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF1923:
	.string	"MEMCPY_ENDIAN memcpy"
.LASF2004:
	.string	"SAM4E_EK 51"
.LASF1966:
	.string	"STK600_RC100X 11"
.LASF529:
	.string	"SAM4SA16 ( SAM_PART_IS_DEFINED(SAM4SA16B) || SAM_PART_IS_DEFINED(SAM4SA16C) )"
.LASF2101:
	.string	"unsigned int"
.LASF2014:
	.string	"SAM4N_XPLAINED_PRO 61"
.LASF2023:
	.string	"SAMR21_XPLAINED_PRO 70"
.LASF1606:
	.string	"FUSE_MEMORY_SIZE 3"
.LASF472:
	.string	"XMEGA_A1U ( AVR8_PART_IS_DEFINED(ATxmega64A1U) || AVR8_PART_IS_DEFINED(ATxmega128A1U) )"
.LASF589:
	.string	"SAM4N16 ( SAM_PART_IS_DEFINED(SAM4N16B) || SAM_PART_IS_DEFINED(SAM4N16C) )"
.LASF1837:
	.string	"SIGNAL(vector) void vector (void) __attribute__ ((signal, __INTR_ATTRS)); void vector (void)"
.LASF326:
	.string	"__AVR 1"
.LASF1701:
	.string	"SREG_I (7)"
.LASF1504:
	.string	"TXB80 0"
.LASF1636:
	.string	"SLEEP_MODE_ADC (0x01<<1)"
.LASF1416:
	.string	"TCNT2 _SFR_MEM8(0xB2)"
.LASF1712:
	.string	"_HAVE_AVR_STACK_POINTER_HI 1"
.LASF951:
	.string	"PORTC _SFR_IO8(0x08)"
.LASF1977:
	.string	"STK600_RC044X 24"
.LASF2002:
	.string	"SAM4S_EK2 49"
.LASF1942:
	.string	"IOPORT_INIT_LOW 0 << 1"
.LASF614:
	.string	"SAM4CMS8_0 ( SAM_PART_IS_DEFINED(SAM4CMS8C_0) )"
.LASF300:
	.string	"__UHA_IBIT__ 8"
.LASF1694:
	.string	"SREG_C (0)"
.LASF838:
	.string	"SCNiLEAST8 \"hhi\""
.LASF36:
	.string	"__WINT_TYPE__ int"
.LASF436:
	.string	"__AVR_DEV_LIB_NAME__ m328p"
.LASF1796:
	.string	"NULL"
.LASF2018:
	.string	"RCB256RFR2_XPRO 65"
.LASF1547:
	.string	"INT0_vect_num 1"
.LASF1561:
	.string	"TIMER2_COMPB_vect_num 8"
.LASF505:
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
.LASF1959:
	.string	"UC3C_EK 3"
.LASF1219:
	.string	"PCINT1 1"
.LASF1813:
	.string	"RANDOM_MAX 0x7FFFFFFF"
.LASF6:
	.string	"__GNUC_MINOR__ 4"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF609:
	.string	"SAM4CMP32_1 ( SAM_PART_IS_DEFINED(SAM4CMP32C_1) )"
.LASF1195:
	.string	"__AVR_HAVE_PRR_PRTIM1 "
.LASF618:
	.string	"SAM4CMS16_1 ( SAM_PART_IS_DEFINED(SAM4CMS16C_1) )"
.LASF2084:
	.string	"USART_TX IOPORT_CREATE_PIN(PORTD, 1)"
.LASF881:
	.string	"SCNoPTR SCNo16"
.LASF1090:
	.string	"OCR0B_5 5"
.LASF886:
	.string	"_MMIO_DWORD(mem_addr) (*(volatile uint32_t *)(mem_addr))"
.LASF554:
	.string	"BTLC1000 ( SAM_PART_IS_DEFINED(BTLC1000WLCSP) )"
.LASF963:
	.string	"PIND3 3"
.LASF1204:
	.string	"CAL4 4"
.LASF408:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF5:
	.string	"__GNUC__ 5"
.LASF437:
	.string	"DEBUG 1"
.LASF643:
	.string	"SAMS70JB ( SAM_PART_IS_DEFINED(SAMS70J19B) || SAM_PART_IS_DEFINED(SAMS70J20B) || SAM_PART_IS_DEFINED(SAMS70J21B) )"
.LASF1045:
	.string	"EEAR8 0"
.LASF1407:
	.string	"COM2A0 6"
.LASF1432:
	.string	"OCR2_6 6"
.LASF332:
	.string	"__AVR_ENHANCED__ 1"
.LASF1074:
	.string	"TCNT0_7 7"
.LASF921:
	.string	"DDB3 3"
.LASF379:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF830:
	.string	"PRIoPTR PRIo16"
.LASF1251:
	.string	"ICIE1 5"
.LASF559:
	.string	"SAMD10DM ( SAM_PART_IS_DEFINED(SAMD10D12AM) || SAM_PART_IS_DEFINED(SAMD10D13AM) || SAM_PART_IS_DEFINED(SAMD10D14AM) )"
.LASF105:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF1515:
	.string	"UCPHA0 1"
.LASF1705:
	.string	"YH r29"
.LASF1171:
	.string	"WDP2 2"
.LASF1610:
	.string	"FUSE_CKSEL3 (unsigned char)~_BV(3)"
.LASF95:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF97:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF1365:
	.string	"OCR1AL _SFR_MEM8(0x88)"
.LASF626:
	.string	"SAMG51 ( SAM_PART_IS_DEFINED(SAMG51G18) )"
.LASF1764:
	.string	"_SYS_SIZE_T_H "
.LASF151:
	.string	"__DBL_EPSILON__ ((double)1.19209290e-7L)"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF214:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF344:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF446:
	.string	"UC3A1 ( AVR32_PART_IS_DEFINED(UC3A1128) || AVR32_PART_IS_DEFINED(UC3A1256) || AVR32_PART_IS_DEFINED(UC3A1512) )"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
