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

CIS_A1   = EPROM_A15
CIS_D1   = EPROM_A14
CIS_RBI1 = EPROM_A13
CIS_BI1  = EPROM_A12
CIS_LT1  = EPROM_A11
CIS_C1   = EPROM_A10
CIS_B1   = EPROM_A9
CIS_RBIC = EPROM_A8
CIS_A2   = EPROM_A7
CIS_D2   = EPROM_A6
CIS_RBI2 = EPROM_A5
CIS_BI2  = EPROM_A4
CIS_LT2  = EPROM_A3
CIS_C2   = EPROM_A2
CIS_B2   = EPROM_A1
CIS_AL   = EPROM_A0
CIS_RBO1 = EPROM_D15
CIS_Z1   = EPROM_D14
CIS_Y1   = EPROM_D13
CIS_X1   = EPROM_D12
CIS_W1   = EPROM_D11
CIS_V1   = EPROM_D10
CIS_U1   = EPROM_D9
CIS_RBO  = EPROM_D8
CIS_RBO2 = EPROM_D7
CIS_Z2   = EPROM_D6
CIS_Y2   = EPROM_D5
CIS_X2   = EPROM_D4
CIS_W2   = EPROM_D3
CIS_V2   = EPROM_D2
CIS_U2   = EPROM_D1
CIS_Z    = EPROM_D0


def cisDecode(value, RBI=True, BI=True, LT=True, AL=True):
	ON = AL
	OFF = not AL

	if not BI:
		return {'RBO':False, 'U':OFF, 'V':OFF, 'W':OFF, 'X':OFF, 'Y':OFF, 'Z':OFF}
	if not LT:
		return {'RBO':True, 'U':ON, 'V':ON, 'W':ON, 'X':ON, 'Y':ON, 'Z':ON}
	if value == 0:
		if not RBI:
			return {'RBO':False, 'U':OFF, 'V':OFF, 'W':OFF, 'X':OFF, 'Y':OFF, 'Z':OFF}
		return {'RBO':True, 'U':OFF, 'V':OFF, 'W':OFF, 'X':OFF, 'Y':OFF, 'Z':ON}
	if value == 1:
		return {'RBO':True, 'U':ON, 'V':OFF, 'W':OFF, 'X':OFF, 'Y':OFF, 'Z':ON}
	if value == 2:
		return {'RBO':True, 'U':OFF, 'V':ON, 'W':OFF, 'X':OFF, 'Y':OFF, 'Z':ON}
	if value == 3:
		return {'RBO':True, 'U':OFF, 'V':OFF, 'W':ON, 'X':OFF, 'Y':OFF, 'Z':ON}
	if value == 4:
		return {'RBO':True, 'U':OFF, 'V':OFF, 'W':OFF, 'X':ON, 'Y':OFF, 'Z':ON}
	if value == 5:
		return {'RBO':True, 'U':ON, 'V':OFF, 'W':OFF, 'X':ON, 'Y':OFF, 'Z':ON}
	if value == 6:
		return {'RBO':True, 'U':OFF, 'V':OFF, 'W':OFF, 'X':OFF, 'Y':ON, 'Z':ON}
	if value == 7:
		return {'RBO':True, 'U':ON, 'V':OFF, 'W':OFF, 'X':OFF, 'Y':ON, 'Z':ON}
	if value == 8:
		return {'RBO':True, 'U':OFF, 'V':ON, 'W':OFF, 'X':OFF, 'Y':ON, 'Z':ON}
	if value == 9:
		return {'RBO':True, 'U':ON, 'V':ON, 'W':OFF, 'X':OFF, 'Y':ON, 'Z':ON}
	if value == 10:
		return {'RBO':True, 'U':ON, 'V':ON, 'W':ON, 'X':ON, 'Y':OFF, 'Z':ON}
	if value == 11:
		return {'RBO':True, 'U':ON, 'V':OFF, 'W':OFF, 'X':ON, 'Y':ON, 'Z':ON}
	if value == 12:
		return {'RBO':True, 'U':ON, 'V':ON, 'W':ON, 'X':OFF, 'Y':ON, 'Z':ON}
	if value == 13:
		return {'RBO':True, 'U':ON, 'V':ON, 'W':OFF, 'X':ON, 'Y':ON, 'Z':ON}
	if value == 14:
		return {'RBO':True, 'U':ON, 'V':OFF, 'W':ON, 'X':ON, 'Y':ON, 'Z':ON}
	if value == 15:
		return {'RBO':True, 'U':OFF, 'V':ON, 'W':ON, 'X':ON, 'Y':ON, 'Z':ON}
	raise ValueError('unknown inputs')


def cisDecodeROM(addr):
	data = 0

	v1 = 0
	if addr & CIS_D1: v1 += 8
	if addr & CIS_C1: v1 += 4
	if addr & CIS_B1: v1 += 2
	if addr & CIS_A1: v1 += 1
	d1 = cisDecode(value=v1, RBI=addr & CIS_RBI1, BI=addr & CIS_BI1, LT=addr & CIS_LT1, AL=addr & CIS_AL)
	if d1['RBO']: data += CIS_RBO1
	if d1['U']: data += CIS_U1
	if d1['V']: data += CIS_V1
	if d1['W']: data += CIS_W1
	if d1['X']: data += CIS_X1
	if d1['Y']: data += CIS_Y1
	if d1['Z']: data += CIS_Z1

	v2 = 0
	if addr & CIS_D2: v2 += 8
	if addr & CIS_C2: v2 += 4
	if addr & CIS_B2: v2 += 2
	if addr & CIS_A2: v2 += 1
	d2 = cisDecode(value=v2, RBI=addr & CIS_RBI2, BI=addr & CIS_BI2, LT=addr & CIS_LT2, AL=addr & CIS_AL)
	if d2['RBO']: data += CIS_RBO2
	if d2['U']: data += CIS_U2
	if d2['V']: data += CIS_V2
	if d2['W']: data += CIS_W2
	if d2['X']: data += CIS_X2
	if d2['Y']: data += CIS_Y2
	if d2['Z']: data += CIS_Z2

	if d1['RBO'] or d2['RBO'] or (addr & CIS_RBIC):
		data += CIS_RBO
		if addr & CIS_AL:
			data += CIS_Z
	else:
		if not (addr & CIS_AL):
			data += CIS_Z
	return data


array.array('H', [cisDecodeROM(a) for a in range(0x10000)]).tofile(sys.stdout)
