;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _setData_PARM_2
	.globl _main
	.globl _buttonsCheck
	.globl _DelayMS
	.globl _delayFOR
	.globl _T0_int
	.globl _T0init
	.globl _setDigits
	.globl _nextColumn
	.globl _setData
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _second
	.globl _first
	.globl _timeHour
	.globl _timeMin
	.globl _timeSec
	.globl _time10ms
	.globl _ptrColumn
	.globl _mode
	.globl _started
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_started::
	.ds 1
_mode::
	.ds 1
_ptrColumn::
	.ds 1
_time10ms::
	.ds 1
_timeSec::
	.ds 1
_timeMin::
	.ds 1
_timeHour::
	.ds 1
_first::
	.ds 3
_second::
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_setData_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_T0_int
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	.\src\main.c:14: unsigned char started = 0;
	mov	_started,#0x00
;	.\src\main.c:21: unsigned char mode = 1;
	mov	_mode,#0x01
;	.\src\main.c:24: unsigned char ptrColumn = 0;
	mov	_ptrColumn,#0x00
;	.\src\main.c:27: unsigned char time10ms = 0;
	mov	_time10ms,#0x00
;	.\src\main.c:29: unsigned char timeSec = 0;
	mov	_timeSec,#0x00
;	.\src\main.c:31: unsigned char timeMin = 0;
	mov	_timeMin,#0x00
;	.\src\main.c:33: unsigned char timeHour = 0;
	mov	_timeHour,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'setData'
;------------------------------------------------------------
;array                     Allocated with name '_setData_PARM_2'
;digit                     Allocated to registers r7 
;------------------------------------------------------------
;	.\src\main.c:40: void setData(unsigned char digit, unsigned char *array)
;	-----------------------------------------
;	 function setData
;	-----------------------------------------
_setData:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	.\src\main.c:42: switch(digit)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x09
	jnc	00118$
	ret
00118$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00119$
	jmp	@a+dptr
00119$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	ljmp	00107$
	ljmp	00108$
	ljmp	00109$
	ljmp	00110$
;	.\src\main.c:45: case 0:
00101$:
;	.\src\main.c:47: array[0] = 0x00;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	.\src\main.c:49: array[1] = 0x0E;
	inc	a
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0e
	lcall	__gptrput
;	.\src\main.c:51: array[2] = 0x00;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	.\src\main.c:56: break;
	ljmp	__gptrput
;	.\src\main.c:57: case 1:
00102$:
;	.\src\main.c:58: array[0] = 0x1B;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x1b
	lcall	__gptrput
;	.\src\main.c:59: array[1] = 0x1D;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x1d
	lcall	__gptrput
;	.\src\main.c:60: array[2] = 0x00;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	.\src\main.c:61: break;
	ljmp	__gptrput
;	.\src\main.c:62: case 2:
00103$:
;	.\src\main.c:63: array[0] = 0x04;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x04
	lcall	__gptrput
;	.\src\main.c:64: array[1] = 0x0A;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0a
	lcall	__gptrput
;	.\src\main.c:65: array[2] = 0x08;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
;	.\src\main.c:66: break;
	ljmp	__gptrput
;	.\src\main.c:67: case 3:
00104$:
;	.\src\main.c:68: array[0] = 0x0A;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0a
	lcall	__gptrput
;	.\src\main.c:69: array[1] = 0x0A;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0a
	lcall	__gptrput
;	.\src\main.c:70: array[2] = 0x00;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	.\src\main.c:71: break;
	ljmp	__gptrput
;	.\src\main.c:72: case 4:
00105$:
;	.\src\main.c:73: array[0] = 0x18;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x18
	lcall	__gptrput
;	.\src\main.c:74: array[1] = 0x1B;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x1b
	lcall	__gptrput
;	.\src\main.c:75: array[2] = 0x00;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	.\src\main.c:76: break;
	ljmp	__gptrput
;	.\src\main.c:77: case 5:
00106$:
;	.\src\main.c:78: array[0] = 0x08;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
;	.\src\main.c:79: array[1] = 0x0A;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0a
	lcall	__gptrput
;	.\src\main.c:80: array[2] = 0x02;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
;	.\src\main.c:81: break;
	ljmp	__gptrput
;	.\src\main.c:82: case 6:
00107$:
;	.\src\main.c:83: array[0] = 0x00;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	.\src\main.c:84: array[1] = 0x0A;
	inc	a
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0a
	lcall	__gptrput
;	.\src\main.c:85: array[2] = 0x02;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
;	.\src\main.c:86: break;
	ljmp	__gptrput
;	.\src\main.c:87: case 7:
00108$:
;	.\src\main.c:88: array[0] = 0x06;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
;	.\src\main.c:89: array[1] = 0x1A;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x1a
	lcall	__gptrput
;	.\src\main.c:90: array[2] = 0x1C;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x1c
;	.\src\main.c:91: break;
;	.\src\main.c:92: case 8:
	ljmp	__gptrput
00109$:
;	.\src\main.c:93: array[0] = 0x00;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	.\src\main.c:94: array[1] = 0x0A;
	inc	a
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0a
	lcall	__gptrput
;	.\src\main.c:95: array[2] = 0x00;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	.\src\main.c:96: break;
;	.\src\main.c:97: case 9:
	ljmp	__gptrput
00110$:
;	.\src\main.c:98: array[0] = 0x08;
	mov	r5,_setData_PARM_2
	mov	r6,(_setData_PARM_2 + 1)
	mov	r7,(_setData_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
;	.\src\main.c:99: array[1] = 0x0A;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0a
	lcall	__gptrput
;	.\src\main.c:100: array[2] = 0x00;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	.\src\main.c:102: }
;	.\src\main.c:103: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'nextColumn'
;------------------------------------------------------------
;	.\src\main.c:106: void nextColumn(void)
;	-----------------------------------------
;	 function nextColumn
;	-----------------------------------------
_nextColumn:
;	.\src\main.c:111: if (ptrColumn < 3)
	mov	a,#0x100 - 0x03
	add	a,_ptrColumn
	jc	00102$
;	.\src\main.c:112: P1 = (ptrColumn << 5) | first[ptrColumn];
	mov	a,_ptrColumn
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r7,a
	mov	a,_ptrColumn
	add	a,#_first
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	orl	a,r7
	mov	_P1,a
00102$:
;	.\src\main.c:114: if (ptrColumn == 3)
	mov	a,#0x03
	cjne	a,_ptrColumn,00104$
;	.\src\main.c:115: P1 = (ptrColumn << 5) | 0x1F;
	mov	a,_ptrColumn
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r7,a
	mov	a,#0x1f
	orl	a,r7
	mov	_P1,a
00104$:
;	.\src\main.c:117: if (ptrColumn > 3 && ptrColumn < 7)
	mov	a,_ptrColumn
	add	a,#0xff - 0x03
	jnc	00106$
	mov	a,#0x100 - 0x07
	add	a,_ptrColumn
	jc	00106$
;	.\src\main.c:118: P1 = (ptrColumn << 5) | second[ptrColumn - 4];
	mov	a,_ptrColumn
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r6,a
	mov	a,r7
	add	a,#0xfc
	add	a,#_second
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	orl	a,r6
	mov	_P1,a
00106$:
;	.\src\main.c:120: ptrColumn++;
	inc	_ptrColumn
;	.\src\main.c:122: if (ptrColumn == countColumn)
	mov	a,#0x07
	cjne	a,_ptrColumn,00110$
;	.\src\main.c:123: ptrColumn = 0;
	mov	_ptrColumn,#0x00
00110$:
;	.\src\main.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setDigits'
;------------------------------------------------------------
;	.\src\main.c:128: void setDigits()
;	-----------------------------------------
;	 function setDigits
;	-----------------------------------------
_setDigits:
;	.\src\main.c:130: switch(mode)
	mov	a,_mode
	add	a,#0xff - 0x03
	jnc	00112$
	ret
00112$:
	mov	a,_mode
	mov	b,#0x03
	mul	ab
	mov	dptr,#00113$
	jmp	@a+dptr
00113$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	.\src\main.c:132: case 0:		
00101$:
;	.\src\main.c:133: setData(time10ms/10, &first[0]);	
	mov	r6,_time10ms
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	_setData_PARM_2,#_first
	mov	(_setData_PARM_2 + 1),#0x00
	mov	(_setData_PARM_2 + 2),#0x40
	lcall	_setData
;	.\src\main.c:134: setData(time10ms%10, &second[0]);
	mov	r6,_time10ms
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	_setData_PARM_2,#_second
	mov	(_setData_PARM_2 + 1),#0x00
	mov	(_setData_PARM_2 + 2),#0x40
;	.\src\main.c:135: break;
	ljmp	_setData
;	.\src\main.c:136: case 1:
00102$:
;	.\src\main.c:137: setData(timeSec/10, &first[0]);
	mov	r6,_timeSec
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	_setData_PARM_2,#_first
	mov	(_setData_PARM_2 + 1),#0x00
	mov	(_setData_PARM_2 + 2),#0x40
	lcall	_setData
;	.\src\main.c:138: setData(timeSec%10, &second[0]);
	mov	r6,_timeSec
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	_setData_PARM_2,#_second
	mov	(_setData_PARM_2 + 1),#0x00
	mov	(_setData_PARM_2 + 2),#0x40
;	.\src\main.c:139: break;
	ljmp	_setData
;	.\src\main.c:140: case 2:
00103$:
;	.\src\main.c:141: setData(timeMin/10, &first[0]);
	mov	r6,_timeMin
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	_setData_PARM_2,#_first
	mov	(_setData_PARM_2 + 1),#0x00
	mov	(_setData_PARM_2 + 2),#0x40
	lcall	_setData
;	.\src\main.c:142: setData(timeMin%10, &second[0]);
	mov	r6,_timeMin
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	_setData_PARM_2,#_second
	mov	(_setData_PARM_2 + 1),#0x00
	mov	(_setData_PARM_2 + 2),#0x40
;	.\src\main.c:143: break;
;	.\src\main.c:144: case 3:
	ljmp	_setData
00104$:
;	.\src\main.c:145: setData(timeHour/10, &first[0]);
	mov	r6,_timeHour
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	_setData_PARM_2,#_first
	mov	(_setData_PARM_2 + 1),#0x00
	mov	(_setData_PARM_2 + 2),#0x40
	lcall	_setData
;	.\src\main.c:146: setData(timeHour%10, &second[0]);			
	mov	r6,_timeHour
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	_setData_PARM_2,#_second
	mov	(_setData_PARM_2 + 1),#0x00
	mov	(_setData_PARM_2 + 2),#0x40
;	.\src\main.c:148: }
;	.\src\main.c:149: }
	ljmp	_setData
;------------------------------------------------------------
;Allocation info for local variables in function 'T0init'
;------------------------------------------------------------
;	.\src\main.c:152: void T0init(void)
;	-----------------------------------------
;	 function T0init
;	-----------------------------------------
_T0init:
;	.\src\main.c:154: TR0=0;
;	assignBit
	clr	_TR0
;	.\src\main.c:155: TMOD=(TMOD&0xf0)|0x1;
	mov	a,_TMOD
	anl	a,#0xf0
	orl	a,#0x01
	mov	_TMOD,a
;	.\src\main.c:156: TL0=(~tik);
	mov	_TL0,#0xef
;	.\src\main.c:157: TH0=(~tik)>>8;
	mov	_TH0,#0xd8
;	.\src\main.c:158: TR0=1;
;	assignBit
	setb	_TR0
;	.\src\main.c:159: ET0=1; 
;	assignBit
	setb	_ET0
;	.\src\main.c:160: EA=1;
;	assignBit
	setb	_EA
;	.\src\main.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T0_int'
;------------------------------------------------------------
;	.\src\main.c:164: void T0_int (void) __interrupt (TF0_VECTOR)
;	-----------------------------------------
;	 function T0_int
;	-----------------------------------------
_T0_int:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	.\src\main.c:166: TR0=0;
;	assignBit
	clr	_TR0
;	.\src\main.c:167: TL0=(~tik);
	mov	_TL0,#0xef
;	.\src\main.c:168: TH0=(~tik)>>8;
	mov	_TH0,#0xd8
;	.\src\main.c:169: TR0=1;
;	assignBit
	setb	_TR0
;	.\src\main.c:170: if (started) 
	mov	a,_started
	jz	00111$
;	.\src\main.c:172: time10ms++;
	inc	_time10ms
;	.\src\main.c:173: if (time10ms == 100) 
	mov	a,#0x64
	cjne	a,_time10ms,00108$
;	.\src\main.c:175: time10ms = 0;
	mov	_time10ms,#0x00
;	.\src\main.c:176: timeSec++;
	inc	_timeSec
;	.\src\main.c:177: if (timeSec == 60) 
	mov	a,#0x3c
	cjne	a,_timeSec,00108$
;	.\src\main.c:179: timeSec = 0;
	mov	_timeSec,#0x00
;	.\src\main.c:180: timeMin++;
	inc	_timeMin
;	.\src\main.c:181: if (timeMin == 60) 
	mov	a,#0x3c
	cjne	a,_timeMin,00108$
;	.\src\main.c:183: timeMin = 0;
	mov	_timeMin,#0x00
;	.\src\main.c:184: timeHour++;
	inc	_timeHour
;	.\src\main.c:185: if (timeHour == 24)
	mov	a,#0x18
	cjne	a,_timeHour,00108$
;	.\src\main.c:186: timeHour = 0;
	mov	_timeHour,#0x00
00108$:
;	.\src\main.c:190: setDigits();
	lcall	_setDigits
00111$:
;	.\src\main.c:192: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'delayFOR'
;------------------------------------------------------------
;kodF                      Allocated to registers r7 
;ml                        Allocated to registers r6 
;------------------------------------------------------------
;	.\src\main.c:195: void delayFOR(unsigned char kodF)
;	-----------------------------------------
;	 function delayFOR
;	-----------------------------------------
_delayFOR:
	mov	r7,dpl
;	.\src\main.c:198: for(ml = 0; ml < kodF; ml++){}
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00105$
	inc	r6
	sjmp	00103$
00105$:
;	.\src\main.c:199: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayMS'
;------------------------------------------------------------
;KodMS                     Allocated to registers 
;------------------------------------------------------------
;	.\src\main.c:202: void DelayMS(unsigned char KodMS)
;	-----------------------------------------
;	 function DelayMS
;	-----------------------------------------
_DelayMS:
	mov	r7,dpl
;	.\src\main.c:204: do delay1ms;
00101$:
	mov	dpl,#0x63
	push	ar7
	lcall	_delayFOR
	pop	ar7
;	.\src\main.c:205: while(--KodMS);
	djnz	r7,00101$
;	.\src\main.c:206: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buttonsCheck'
;------------------------------------------------------------
;	.\src\main.c:209: void buttonsCheck(void)
;	-----------------------------------------
;	 function buttonsCheck
;	-----------------------------------------
_buttonsCheck:
;	.\src\main.c:212: if (!P3_0) 
	jb	_P3_0,00108$
;	.\src\main.c:215: P1 = 0x1F;
	mov	_P1,#0x1f
;	.\src\main.c:217: DelayMS(10);
	mov	dpl,#0x0a
	lcall	_DelayMS
;	.\src\main.c:219: while(!P3_0);
00101$:
	jnb	_P3_0,00101$
;	.\src\main.c:221: DelayMS(10);
	mov	dpl,#0x0a
	lcall	_DelayMS
;	.\src\main.c:223: if (started)
	mov	a,_started
	jz	00105$
;	.\src\main.c:225: started = 0;
	mov	_started,#0x00
	sjmp	00108$
00105$:
;	.\src\main.c:228: started = 1;
	mov	_started,#0x01
00108$:
;	.\src\main.c:232: if (!P3_1) 
	jb	_P3_1,00115$
;	.\src\main.c:235: P1 = 0x1F;
	mov	_P1,#0x1f
;	.\src\main.c:237: DelayMS(10);
	mov	dpl,#0x0a
	lcall	_DelayMS
;	.\src\main.c:239: while(!P3_1);
00109$:
	jnb	_P3_1,00109$
;	.\src\main.c:241: DelayMS(10);
	mov	dpl,#0x0a
	lcall	_DelayMS
;	.\src\main.c:243: mode++;
	inc	_mode
;	.\src\main.c:244: if (mode == 4)
	mov	a,#0x04
	cjne	a,_mode,00113$
;	.\src\main.c:245: mode = 0;
	mov	_mode,#0x00
00113$:
;	.\src\main.c:247: setDigits();
	lcall	_setDigits
00115$:
;	.\src\main.c:250: if (!P3_2)
	jb	_P3_2,00118$
;	.\src\main.c:253: DelayMS(10);
	mov	dpl,#0x0a
	lcall	_DelayMS
;	.\src\main.c:254: time10ms=0;
	mov	_time10ms,#0x00
;	.\src\main.c:256: timeSec = 0;
	mov	_timeSec,#0x00
;	.\src\main.c:258: timeMin = 0;
	mov	_timeMin,#0x00
;	.\src\main.c:260: timeHour = 0;
	mov	_timeHour,#0x00
;	.\src\main.c:261: DelayMS(10);
	mov	dpl,#0x0a
	lcall	_DelayMS
;	.\src\main.c:262: setDigits();
;	.\src\main.c:264: }
	ljmp	_setDigits
00118$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	.\src\main.c:266: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	.\src\main.c:268: T0init();
	lcall	_T0init
;	.\src\main.c:270: setDigits();
	lcall	_setDigits
;	.\src\main.c:271: while(1){
00102$:
;	.\src\main.c:273: buttonsCheck();
	lcall	_buttonsCheck
;	.\src\main.c:275: delayFOR(10);
	mov	dpl,#0x0a
	lcall	_delayFOR
;	.\src\main.c:277: nextColumn();
	lcall	_nextColumn
;	.\src\main.c:279: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
