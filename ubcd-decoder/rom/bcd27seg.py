#!/usr/bin/env python
#coding=utf8

import array
import sys


EPROM_A15 = 0x8000
EPROM_A14 = 0x4000
EPROM_A13 = 0x2000
EPROM_A12 = 0x1000
EPROM_A11 = 0x0800
EPROM_A10 = 0x0400
EPROM_A9  = 0x0200
EPROM_A8  = 0x0100
EPROM_A7  = 0x0080
EPROM_A6  = 0x0040
EPROM_A5  = 0x0020
EPROM_A4  = 0x0010
EPROM_A3  = 0x0008
EPROM_A2  = 0x0004
EPROM_A1  = 0x0002
EPROM_A0  = 0x0001
EPROM_D7  = 0x80
EPROM_D6  = 0x40
EPROM_D5  = 0x20
EPROM_D4  = 0x10
EPROM_D3  = 0x08
EPROM_D2  = 0x04
EPROM_D1  = 0x02
EPROM_D0  = 0x01

UBCD_ASC            = EPROM_A14
UBCD_V1  = UBCD_FS  = EPROM_A13
UBCD_V2  = UBCD_ABI = EPROM_A12
UBCD_V0  = UBCD_LC  = EPROM_A11
UBCD_X7             = EPROM_A10
UBCD_X9             = EPROM_A9
UBCD_X6             = EPROM_A8
UBCD_AL             = EPROM_A7
UBCD_B   = UBCD_D6  = EPROM_A6
UBCD_C   = UBCD_D5  = EPROM_A5
UBCD_LT  = UBCD_D4  = EPROM_A4
UBCD_BI  = UBCD_D3  = EPROM_A3
UBCD_RBI = UBCD_D2  = EPROM_A2
UBCD_D   = UBCD_D1  = EPROM_A1
UBCD_A   = UBCD_D0  = EPROM_A0
UBCD_f              = EPROM_D7
UBCD_g              = EPROM_D6
UBCD_a              = EPROM_D5
UBCD_b              = EPROM_D4
UBCD_c              = EPROM_D3
UBCD_d              = EPROM_D2
UBCD_e              = EPROM_D1
UBCD_RBO = UBCD_LTR = EPROM_D0


ASCII_FONT_A = [
	0x00, 0x0A, 0x22, 0x36, 0x2D, 0x24, 0x78, 0x42,
	0x39, 0x0F, 0x63, 0x46, 0x0C, 0x40, 0x08, 0x52,
	0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x27,
	0x7F, 0x6F, 0x09, 0x0D, 0x46, 0x48, 0x70, 0x53,
	0x7B, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x3D,
	0x76, 0x06, 0x1E, 0x75, 0x38, 0x2B, 0x37, 0x3F,
	0x73, 0x67, 0x31, 0x6D, 0x07, 0x3E, 0x6A, 0x7E,
	0x49, 0x6E, 0x5B, 0x39, 0x64, 0x0F, 0x23, 0x08,
	0x60, 0x5F, 0x7C, 0x58, 0x5E, 0x7B, 0x71, 0x6F,
	0x74, 0x05, 0x0E, 0x75, 0x06, 0x55, 0x54, 0x5C,
	0x73, 0x67, 0x50, 0x6D, 0x78, 0x1C, 0x1D, 0x7E,
	0x48, 0x6E, 0x5B, 0x46, 0x30, 0x70, 0x01, 0x00,
]

ASCII_FONT_B = [
	0x00, 0x0A, 0x22, 0x36, 0x12, 0x24, 0x78, 0x42,
	0x58, 0x4C, 0x63, 0x46, 0x0C, 0x40, 0x10, 0x52,
	0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x27,
	0x7F, 0x6F, 0x09, 0x0D, 0x61, 0x41, 0x43, 0x53,
	0x7B, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x3D,
	0x76, 0x05, 0x1E, 0x75, 0x38, 0x2B, 0x37, 0x6B,
	0x73, 0x67, 0x31, 0x2D, 0x07, 0x3E, 0x6A, 0x7E,
	0x49, 0x6E, 0x1B, 0x59, 0x64, 0x4D, 0x23, 0x08,
	0x60, 0x44, 0x7C, 0x58, 0x5E, 0x18, 0x33, 0x2F,
	0x74, 0x05, 0x0E, 0x75, 0x3C, 0x55, 0x54, 0x5C,
	0x73, 0x67, 0x50, 0x2D, 0x70, 0x1C, 0x1D, 0x7E,
	0x48, 0x6E, 0x1B, 0x69, 0x30, 0x4B, 0x01, 0x00,
]


def output(a, b, c, d, e, f, g, RBO=None, LTR=None):
	value = 0
	if a:   value += UBCD_a
	if b:   value += UBCD_b
	if c:   value += UBCD_c
	if d:   value += UBCD_d
	if e:   value += UBCD_e
	if f:   value += UBCD_f
	if g:   value += UBCD_g
	if RBO: value += UBCD_RBO
	if LTR: value += UBCD_LTR
	return value


def ubcdDecode(addr):
	ON = addr & UBCD_AL
	OFF = not ON

	if addr & UBCD_ASC:
		if not (addr & UBCD_ABI):
			return output(LTR=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
		value = 0
		if addr & UBCD_D6: value += 64
		if addr & UBCD_D5: value += 32
		if addr & UBCD_D4: value += 16
		if addr & UBCD_D3: value += 8
		if addr & UBCD_D2: value += 4
		if addr & UBCD_D1: value += 2
		if addr & UBCD_D0: value += 1
		if value <= 0x20:
			return output(LTR=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
		if value == 0x36:
			return output(LTR=True, a=ON if addr & UBCD_X6 else OFF, b=OFF, c=ON, d=ON, e=ON, f=ON, g=ON)
		if value == 0x37:
			return output(LTR=True, a=ON, b=ON, c=ON, d=OFF, e=OFF, f=ON if addr & UBCD_X7 else OFF, g=OFF)
		if value == 0x39:
			return output(LTR=True, a=ON, b=ON, c=ON, d=ON if addr & UBCD_X9 else OFF, e=OFF, f=ON, g=ON)
		if value >= 0x61 and value <= 0x7A:
			if not (addr & UBCD_LC):
				value -= 0x20
			isLetter = True
		elif value >= 0x41 and value <= 0x5A:
			isLetter = True
		else:
			isLetter = False
		bitmap = (ASCII_FONT_B if addr & UBCD_FS else ASCII_FONT_A)[value - 0x20]
		return output(
			LTR=not isLetter,
			a=ON if bitmap & 0x01 else OFF,
			b=ON if bitmap & 0x02 else OFF,
			c=ON if bitmap & 0x04 else OFF,
			d=ON if bitmap & 0x08 else OFF,
			e=ON if bitmap & 0x10 else OFF,
			f=ON if bitmap & 0x20 else OFF,
			g=ON if bitmap & 0x40 else OFF,
		)

	if not (addr & UBCD_BI):
		return output(RBO=False, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
	if not (addr & UBCD_LT):
		return output(RBO=True, a=ON, b=ON, c=ON, d=ON, e=ON, f=ON, g=ON)
	value = 0
	if addr & UBCD_D: value += 8
	if addr & UBCD_C: value += 4
	if addr & UBCD_B: value += 2
	if addr & UBCD_A: value += 1
	if value == 0:
		if not (addr & UBCD_RBI):
			return output(RBO=False, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
		return output(RBO=True, a=ON, b=ON, c=ON, d=ON, e=ON, f=ON, g=OFF)
	if value == 1:
		return output(RBO=True, a=OFF, b=ON, c=ON, d=OFF, e=OFF, f=OFF, g=OFF)
	if value == 2:
		return output(RBO=True, a=ON, b=ON, c=OFF, d=ON, e=ON, f=OFF, g=ON)
	if value == 3:
		return output(RBO=True, a=ON, b=ON, c=ON, d=ON, e=OFF, f=OFF, g=ON)
	if value == 4:
		return output(RBO=True, a=OFF, b=ON, c=ON, d=OFF, e=OFF, f=ON, g=ON)
	if value == 5:
		return output(RBO=True, a=ON, b=OFF, c=ON, d=ON, e=OFF, f=ON, g=ON)
	if value == 6:
		return output(RBO=True, a=ON if addr & UBCD_X6 else OFF, b=OFF, c=ON, d=ON, e=ON, f=ON, g=ON)
	if value == 7:
		return output(RBO=True, a=ON, b=ON, c=ON, d=OFF, e=OFF, f=ON if addr & UBCD_X7 else OFF, g=OFF)
	if value == 8:
		return output(RBO=True, a=ON, b=ON, c=ON, d=ON, e=ON, f=ON, g=ON)
	if value == 9:
		return output(RBO=True, a=ON, b=ON, c=ON, d=ON if addr & UBCD_X9 else OFF, e=OFF, f=ON, g=ON)
	version = 0
	if addr & UBCD_V2: version += 4
	if addr & UBCD_V1: version += 2
	if addr & UBCD_V0: version += 1
	# RCA / blanking version
	if version == 0:
		return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
	# TI version
	if version == 1:
		if value == 10:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=ON, e=ON, f=OFF, g=ON)
		if value == 11:
			return output(RBO=True, a=OFF, b=OFF, c=ON, d=ON, e=OFF, f=OFF, g=ON)
		if value == 12:
			return output(RBO=True, a=OFF, b=ON, c=OFF, d=OFF, e=OFF, f=ON, g=ON)
		if value == 13:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=ON, e=OFF, f=ON, g=ON)
		if value == 14:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=ON, e=ON, f=ON, g=ON)
		if value == 15:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
	# NatSemi version
	if version == 2:
		if value == 10:
			return output(RBO=True, a=OFF, b=OFF, c=ON, d=ON, e=ON, f=OFF, g=ON)
		if value == 11:
			return output(RBO=True, a=ON, b=ON, c=OFF, d=OFF, e=OFF, f=ON, g=ON)
		if value == 12:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
		if value == 13:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=ON)
		if value == 14:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=ON, e=OFF, f=OFF, g=OFF)
		if value == 15:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
	# Toshiba version
	if version == 3:
		if value == 10:
			return output(RBO=True, a=ON, b=ON, c=ON, d=ON, e=ON, f=ON, g=OFF)
		if value == 11:
			return output(RBO=True, a=OFF, b=ON, c=ON, d=OFF, e=OFF, f=OFF, g=OFF)
		if value == 12:
			return output(RBO=True, a=ON, b=ON, c=OFF, d=ON, e=ON, f=OFF, g=ON)
		if value == 13:
			return output(RBO=True, a=ON, b=ON, c=ON, d=ON, e=OFF, f=OFF, g=ON)
		if value == 14:
			return output(RBO=True, a=OFF, b=ON, c=ON, d=OFF, e=OFF, f=ON, g=ON)
		if value == 15:
			return output(RBO=True, a=ON, b=OFF, c=ON, d=ON, e=OFF, f=ON, g=ON)
	# lines version
	if version == 4:
		if value == 10:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=ON, e=OFF, f=OFF, g=OFF)
		if value == 11:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=ON, e=OFF, f=OFF, g=ON)
		if value == 12:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=ON, e=OFF, f=OFF, g=ON)
		if value == 13:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=ON)
		if value == 14:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
		if value == 15:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
	# Electronika version
	if version == 5:
		if value == 10:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=ON)
		if value == 11:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=ON, e=ON, f=ON, g=OFF)
		if value == 12:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=ON, e=ON, f=ON, g=OFF)
		if value == 13:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=OFF, e=ON, f=ON, g=OFF)
		if value == 14:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=ON, e=ON, f=ON, g=ON)
		if value == 15:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
	# Code B version
	if version == 6:
		if value == 10:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=ON)
		if value == 11:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=ON, e=ON, f=ON, g=ON)
		if value == 12:
			return output(RBO=True, a=OFF, b=ON, c=ON, d=OFF, e=ON, f=ON, g=ON)
		if value == 13:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=ON, e=ON, f=ON, g=OFF)
		if value == 14:
			return output(RBO=True, a=ON, b=ON, c=OFF, d=OFF, e=ON, f=ON, g=ON)
		if value == 15:
			return output(RBO=True, a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF)
	# hexadecimal version
	if version == 7:
		if value == 10:
			return output(RBO=True, a=ON, b=ON, c=ON, d=OFF, e=ON, f=ON, g=ON)
		if value == 11:
			return output(RBO=True, a=OFF, b=OFF, c=ON, d=ON, e=ON, f=ON, g=ON)
		if value == 12:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=ON, e=ON, f=ON, g=OFF)
		if value == 13:
			return output(RBO=True, a=OFF, b=ON, c=ON, d=ON, e=ON, f=OFF, g=ON)
		if value == 14:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=ON, e=ON, f=ON, g=ON)
		if value == 15:
			return output(RBO=True, a=ON, b=OFF, c=OFF, d=OFF, e=ON, f=ON, g=ON)
	raise ValueError('unknown inputs')


array.array('B', [ubcdDecode(a) for a in range(EPROM_A15)]).tofile(sys.stdout)
