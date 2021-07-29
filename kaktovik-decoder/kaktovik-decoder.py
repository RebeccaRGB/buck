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
EPROM_D15 = 0x8000
EPROM_D14 = 0x4000
EPROM_D13 = 0x2000
EPROM_D12 = 0x1000
EPROM_D11 = 0x0800
EPROM_D10 = 0x0400
EPROM_D9  = 0x0200
EPROM_D8  = 0x0100
EPROM_D7  = 0x0080
EPROM_D6  = 0x0040
EPROM_D5  = 0x0020
EPROM_D4  = 0x0010
EPROM_D3  = 0x0008
EPROM_D2  = 0x0004
EPROM_D1  = 0x0002
EPROM_D0  = 0x0001

KAK_A1   = EPROM_A15
KAK_D1   = EPROM_A14
KAK_RBI1 = EPROM_A13
KAK_BI1  = EPROM_A12
KAK_E1   = EPROM_A11
KAK_C1   = EPROM_A10
KAK_B1   = EPROM_A9
KAK_LT   = EPROM_A8
KAK_A2   = EPROM_A7
KAK_D2   = EPROM_A6
KAK_RBI2 = EPROM_A5
KAK_BI2  = EPROM_A4
KAK_E2   = EPROM_A3
KAK_C2   = EPROM_A2
KAK_B2   = EPROM_A1
KAK_AL   = EPROM_A0
KAK_e1   = EPROM_D15
KAK_d1   = EPROM_D14
KAK_c1   = EPROM_D13
KAK_b1   = EPROM_D12
KAK_a1   = EPROM_D11
KAK_h1   = EPROM_D10
KAK_g1   = EPROM_D9
KAK_f1   = EPROM_D8
KAK_e2   = EPROM_D7
KAK_d2   = EPROM_D6
KAK_c2   = EPROM_D5
KAK_b2   = EPROM_D4
KAK_a2   = EPROM_D3
KAK_h2   = EPROM_D2
KAK_g2   = EPROM_D1
KAK_f2   = EPROM_D0


def output(a, b, c, d, e, f, g, h, second=None):
	value = 0
	if a: value += KAK_a2 if second else KAK_a1
	if b: value += KAK_b2 if second else KAK_b1
	if c: value += KAK_c2 if second else KAK_c1
	if d: value += KAK_d2 if second else KAK_d1
	if e: value += KAK_e2 if second else KAK_e1
	if f: value += KAK_f2 if second else KAK_f1
	if g: value += KAK_g2 if second else KAK_g1
	if h: value += KAK_h2 if second else KAK_h1
	return value


def kakDecode(addr, second=None):
	ON = addr & KAK_AL
	OFF = not ON

	if not (addr & (KAK_BI2 if second else KAK_BI1)):
		return output(a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF, h=OFF, second=second)
	if not (addr & KAK_LT):
		return output(a=ON, b=ON, c=ON, d=ON, e=ON, f=ON, g=ON, h=ON, second=second)
	value = 0
	if addr & (KAK_E2 if second else KAK_E1): value += 16
	if addr & (KAK_D2 if second else KAK_D1): value += 8
	if addr & (KAK_C2 if second else KAK_C1): value += 4
	if addr & (KAK_B2 if second else KAK_B1): value += 2
	if addr & (KAK_A2 if second else KAK_A1): value += 1
	if value == 0:
		if not (addr & (KAK_RBI2 if second else KAK_RBI1)):
			return output(a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF, h=OFF, second=second)
		return output(a=OFF, b=OFF, c=ON, d=OFF, e=OFF, f=OFF, g=OFF, h=OFF, second=second)
	if value == 30:
		return output(a=ON, b=ON, c=ON, d=ON, e=ON, f=ON, g=ON, h=ON, second=second)
	if value == 31:
		return output(a=OFF, b=OFF, c=OFF, d=OFF, e=OFF, f=OFF, g=OFF, h=OFF, second=second)
	q, r = divmod(value, 5)
	return output(
		a = OFF if r < 1 else ON,
		b = OFF if r < 2 else ON,
		c = OFF if r < 2 else ON,
		d = OFF if r < 3 else ON,
		e = OFF if r < 4 else ON,
		f = OFF if q == 0 or q == 4 else ON,
		g = OFF if q < 2 or q > 4 else ON,
		h = OFF if q < 3 else ON,
		second = second,
	)


array.array('H', [kakDecode(a,0) + kakDecode(a,1) for a in range(0x10000)]).tofile(sys.stdout)
