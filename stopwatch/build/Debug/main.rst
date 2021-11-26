                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _setData_PARM_2
                                     12 	.globl _main
                                     13 	.globl _buttonsCheck
                                     14 	.globl _DelayMS
                                     15 	.globl _delayFOR
                                     16 	.globl _T0_int
                                     17 	.globl _T0init
                                     18 	.globl _setDigits
                                     19 	.globl _nextColumn
                                     20 	.globl _setData
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _FL
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _A
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _second
                                    119 	.globl _first
                                    120 	.globl _timeHour
                                    121 	.globl _timeMin
                                    122 	.globl _timeSec
                                    123 	.globl _time10ms
                                    124 	.globl _ptrColumn
                                    125 	.globl _mode
                                    126 	.globl _started
                                    127 ;--------------------------------------------------------
                                    128 ; special function registers
                                    129 ;--------------------------------------------------------
                                    130 	.area RSEG    (ABS,DATA)
      000000                        131 	.org 0x0000
                           000080   132 _P0	=	0x0080
                           000081   133 _SP	=	0x0081
                           000082   134 _DPL	=	0x0082
                           000083   135 _DPH	=	0x0083
                           000087   136 _PCON	=	0x0087
                           000088   137 _TCON	=	0x0088
                           000089   138 _TMOD	=	0x0089
                           00008A   139 _TL0	=	0x008a
                           00008B   140 _TL1	=	0x008b
                           00008C   141 _TH0	=	0x008c
                           00008D   142 _TH1	=	0x008d
                           000090   143 _P1	=	0x0090
                           000098   144 _SCON	=	0x0098
                           000099   145 _SBUF	=	0x0099
                           0000A0   146 _P2	=	0x00a0
                           0000A8   147 _IE	=	0x00a8
                           0000B0   148 _P3	=	0x00b0
                           0000B8   149 _IP	=	0x00b8
                           0000D0   150 _PSW	=	0x00d0
                           0000E0   151 _ACC	=	0x00e0
                           0000E0   152 _A	=	0x00e0
                           0000F0   153 _B	=	0x00f0
                                    154 ;--------------------------------------------------------
                                    155 ; special function bits
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0_0	=	0x0080
                           000081   160 _P0_1	=	0x0081
                           000082   161 _P0_2	=	0x0082
                           000083   162 _P0_3	=	0x0083
                           000084   163 _P0_4	=	0x0084
                           000085   164 _P0_5	=	0x0085
                           000086   165 _P0_6	=	0x0086
                           000087   166 _P0_7	=	0x0087
                           000088   167 _IT0	=	0x0088
                           000089   168 _IE0	=	0x0089
                           00008A   169 _IT1	=	0x008a
                           00008B   170 _IE1	=	0x008b
                           00008C   171 _TR0	=	0x008c
                           00008D   172 _TF0	=	0x008d
                           00008E   173 _TR1	=	0x008e
                           00008F   174 _TF1	=	0x008f
                           000090   175 _P1_0	=	0x0090
                           000091   176 _P1_1	=	0x0091
                           000092   177 _P1_2	=	0x0092
                           000093   178 _P1_3	=	0x0093
                           000094   179 _P1_4	=	0x0094
                           000095   180 _P1_5	=	0x0095
                           000096   181 _P1_6	=	0x0096
                           000097   182 _P1_7	=	0x0097
                           000098   183 _RI	=	0x0098
                           000099   184 _TI	=	0x0099
                           00009A   185 _RB8	=	0x009a
                           00009B   186 _TB8	=	0x009b
                           00009C   187 _REN	=	0x009c
                           00009D   188 _SM2	=	0x009d
                           00009E   189 _SM1	=	0x009e
                           00009F   190 _SM0	=	0x009f
                           0000A0   191 _P2_0	=	0x00a0
                           0000A1   192 _P2_1	=	0x00a1
                           0000A2   193 _P2_2	=	0x00a2
                           0000A3   194 _P2_3	=	0x00a3
                           0000A4   195 _P2_4	=	0x00a4
                           0000A5   196 _P2_5	=	0x00a5
                           0000A6   197 _P2_6	=	0x00a6
                           0000A7   198 _P2_7	=	0x00a7
                           0000A8   199 _EX0	=	0x00a8
                           0000A9   200 _ET0	=	0x00a9
                           0000AA   201 _EX1	=	0x00aa
                           0000AB   202 _ET1	=	0x00ab
                           0000AC   203 _ES	=	0x00ac
                           0000AF   204 _EA	=	0x00af
                           0000B0   205 _P3_0	=	0x00b0
                           0000B1   206 _P3_1	=	0x00b1
                           0000B2   207 _P3_2	=	0x00b2
                           0000B3   208 _P3_3	=	0x00b3
                           0000B4   209 _P3_4	=	0x00b4
                           0000B5   210 _P3_5	=	0x00b5
                           0000B6   211 _P3_6	=	0x00b6
                           0000B7   212 _P3_7	=	0x00b7
                           0000B0   213 _RXD	=	0x00b0
                           0000B1   214 _TXD	=	0x00b1
                           0000B2   215 _INT0	=	0x00b2
                           0000B3   216 _INT1	=	0x00b3
                           0000B4   217 _T0	=	0x00b4
                           0000B5   218 _T1	=	0x00b5
                           0000B6   219 _WR	=	0x00b6
                           0000B7   220 _RD	=	0x00b7
                           0000B8   221 _PX0	=	0x00b8
                           0000B9   222 _PT0	=	0x00b9
                           0000BA   223 _PX1	=	0x00ba
                           0000BB   224 _PT1	=	0x00bb
                           0000BC   225 _PS	=	0x00bc
                           0000D0   226 _P	=	0x00d0
                           0000D1   227 _FL	=	0x00d1
                           0000D2   228 _OV	=	0x00d2
                           0000D3   229 _RS0	=	0x00d3
                           0000D4   230 _RS1	=	0x00d4
                           0000D5   231 _F0	=	0x00d5
                           0000D6   232 _AC	=	0x00d6
                           0000D7   233 _CY	=	0x00d7
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable register banks
                                    236 ;--------------------------------------------------------
                                    237 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        238 	.ds 8
                                    239 ;--------------------------------------------------------
                                    240 ; overlayable bit register bank
                                    241 ;--------------------------------------------------------
                                    242 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        243 bits:
      000020                        244 	.ds 1
                           008000   245 	b0 = bits[0]
                           008100   246 	b1 = bits[1]
                           008200   247 	b2 = bits[2]
                           008300   248 	b3 = bits[3]
                           008400   249 	b4 = bits[4]
                           008500   250 	b5 = bits[5]
                           008600   251 	b6 = bits[6]
                           008700   252 	b7 = bits[7]
                                    253 ;--------------------------------------------------------
                                    254 ; internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area DSEG    (DATA)
      000008                        257 _started::
      000008                        258 	.ds 1
      000009                        259 _mode::
      000009                        260 	.ds 1
      00000A                        261 _ptrColumn::
      00000A                        262 	.ds 1
      00000B                        263 _time10ms::
      00000B                        264 	.ds 1
      00000C                        265 _timeSec::
      00000C                        266 	.ds 1
      00000D                        267 _timeMin::
      00000D                        268 	.ds 1
      00000E                        269 _timeHour::
      00000E                        270 	.ds 1
      00000F                        271 _first::
      00000F                        272 	.ds 3
      000012                        273 _second::
      000012                        274 	.ds 3
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable items in internal ram 
                                    277 ;--------------------------------------------------------
                                    278 	.area	OSEG    (OVR,DATA)
      000015                        279 _setData_PARM_2:
      000015                        280 	.ds 3
                                    281 	.area	OSEG    (OVR,DATA)
                                    282 ;--------------------------------------------------------
                                    283 ; Stack segment in internal ram 
                                    284 ;--------------------------------------------------------
                                    285 	.area	SSEG
      000021                        286 __start__stack:
      000021                        287 	.ds	1
                                    288 
                                    289 ;--------------------------------------------------------
                                    290 ; indirectly addressable internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area ISEG    (DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; absolute internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area IABS    (ABS,DATA)
                                    297 	.area IABS    (ABS,DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; bit data
                                    300 ;--------------------------------------------------------
                                    301 	.area BSEG    (BIT)
                                    302 ;--------------------------------------------------------
                                    303 ; paged external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area PSEG    (PAG,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XSEG    (XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; absolute external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XABS    (ABS,XDATA)
                                    314 ;--------------------------------------------------------
                                    315 ; external initialized ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area XISEG   (XDATA)
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT0 (CODE)
                                    320 	.area GSINIT1 (CODE)
                                    321 	.area GSINIT2 (CODE)
                                    322 	.area GSINIT3 (CODE)
                                    323 	.area GSINIT4 (CODE)
                                    324 	.area GSINIT5 (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area CSEG    (CODE)
                                    328 ;--------------------------------------------------------
                                    329 ; interrupt vector 
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
      000000                        332 __interrupt_vect:
      000000 02 00 11         [24]  333 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  334 	reti
      000004                        335 	.ds	7
      00000B 02 04 2A         [24]  336 	ljmp	_T0_int
                                    337 ;--------------------------------------------------------
                                    338 ; global & static initialisations
                                    339 ;--------------------------------------------------------
                                    340 	.area HOME    (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.area GSFINAL (CODE)
                                    343 	.area GSINIT  (CODE)
                                    344 	.globl __sdcc_gsinit_startup
                                    345 	.globl __sdcc_program_startup
                                    346 	.globl __start__stack
                                    347 	.globl __mcs51_genXINIT
                                    348 	.globl __mcs51_genXRAMCLEAR
                                    349 	.globl __mcs51_genRAMCLEAR
                                    350 ;	.\src\main.c:14: unsigned char started = 0;
      00006A 75 08 00         [24]  351 	mov	_started,#0x00
                                    352 ;	.\src\main.c:21: unsigned char mode = 1;
      00006D 75 09 01         [24]  353 	mov	_mode,#0x01
                                    354 ;	.\src\main.c:24: unsigned char ptrColumn = 0;
      000070 75 0A 00         [24]  355 	mov	_ptrColumn,#0x00
                                    356 ;	.\src\main.c:27: unsigned char time10ms = 0;
      000073 75 0B 00         [24]  357 	mov	_time10ms,#0x00
                                    358 ;	.\src\main.c:29: unsigned char timeSec = 0;
      000076 75 0C 00         [24]  359 	mov	_timeSec,#0x00
                                    360 ;	.\src\main.c:31: unsigned char timeMin = 0;
      000079 75 0D 00         [24]  361 	mov	_timeMin,#0x00
                                    362 ;	.\src\main.c:33: unsigned char timeHour = 0;
      00007C 75 0E 00         [24]  363 	mov	_timeHour,#0x00
                                    364 	.area GSFINAL (CODE)
      00007F 02 00 0E         [24]  365 	ljmp	__sdcc_program_startup
                                    366 ;--------------------------------------------------------
                                    367 ; Home
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area HOME    (CODE)
      00000E                        371 __sdcc_program_startup:
      00000E 02 05 1D         [24]  372 	ljmp	_main
                                    373 ;	return from main will return to caller
                                    374 ;--------------------------------------------------------
                                    375 ; code
                                    376 ;--------------------------------------------------------
                                    377 	.area CSEG    (CODE)
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'setData'
                                    380 ;------------------------------------------------------------
                                    381 ;array                     Allocated with name '_setData_PARM_2'
                                    382 ;digit                     Allocated to registers r7 
                                    383 ;------------------------------------------------------------
                                    384 ;	.\src\main.c:40: void setData(unsigned char digit, unsigned char *array)
                                    385 ;	-----------------------------------------
                                    386 ;	 function setData
                                    387 ;	-----------------------------------------
      000082                        388 _setData:
                           000007   389 	ar7 = 0x07
                           000006   390 	ar6 = 0x06
                           000005   391 	ar5 = 0x05
                           000004   392 	ar4 = 0x04
                           000003   393 	ar3 = 0x03
                           000002   394 	ar2 = 0x02
                           000001   395 	ar1 = 0x01
                           000000   396 	ar0 = 0x00
                                    397 ;	.\src\main.c:42: switch(digit)
      000082 E5 82            [12]  398 	mov	a,dpl
      000084 FF               [12]  399 	mov	r7,a
      000085 24 F6            [12]  400 	add	a,#0xff - 0x09
      000087 50 01            [24]  401 	jnc	00118$
      000089 22               [24]  402 	ret
      00008A                        403 00118$:
      00008A EF               [12]  404 	mov	a,r7
      00008B 2F               [12]  405 	add	a,r7
      00008C 2F               [12]  406 	add	a,r7
      00008D 90 00 91         [24]  407 	mov	dptr,#00119$
      000090 73               [24]  408 	jmp	@a+dptr
      000091                        409 00119$:
      000091 02 00 AF         [24]  410 	ljmp	00101$
      000094 02 00 E3         [24]  411 	ljmp	00102$
      000097 02 01 18         [24]  412 	ljmp	00103$
      00009A 02 01 4F         [24]  413 	ljmp	00104$
      00009D 02 01 84         [24]  414 	ljmp	00105$
      0000A0 02 01 B9         [24]  415 	ljmp	00106$
      0000A3 02 01 EF         [24]  416 	ljmp	00107$
      0000A6 02 02 24         [24]  417 	ljmp	00108$
      0000A9 02 02 5B         [24]  418 	ljmp	00109$
      0000AC 02 02 8F         [24]  419 	ljmp	00110$
                                    420 ;	.\src\main.c:45: case 0:
      0000AF                        421 00101$:
                                    422 ;	.\src\main.c:47: array[0] = 0x00;
      0000AF AD 15            [24]  423 	mov	r5,_setData_PARM_2
      0000B1 AE 16            [24]  424 	mov	r6,(_setData_PARM_2 + 1)
      0000B3 AF 17            [24]  425 	mov	r7,(_setData_PARM_2 + 2)
      0000B5 8D 82            [24]  426 	mov	dpl,r5
      0000B7 8E 83            [24]  427 	mov	dph,r6
      0000B9 8F F0            [24]  428 	mov	b,r7
      0000BB E4               [12]  429 	clr	a
      0000BC 12 05 31         [24]  430 	lcall	__gptrput
                                    431 ;	.\src\main.c:49: array[1] = 0x0E;
      0000BF 04               [12]  432 	inc	a
      0000C0 2D               [12]  433 	add	a,r5
      0000C1 FA               [12]  434 	mov	r2,a
      0000C2 E4               [12]  435 	clr	a
      0000C3 3E               [12]  436 	addc	a,r6
      0000C4 FB               [12]  437 	mov	r3,a
      0000C5 8F 04            [24]  438 	mov	ar4,r7
      0000C7 8A 82            [24]  439 	mov	dpl,r2
      0000C9 8B 83            [24]  440 	mov	dph,r3
      0000CB 8C F0            [24]  441 	mov	b,r4
      0000CD 74 0E            [12]  442 	mov	a,#0x0e
      0000CF 12 05 31         [24]  443 	lcall	__gptrput
                                    444 ;	.\src\main.c:51: array[2] = 0x00;
      0000D2 74 02            [12]  445 	mov	a,#0x02
      0000D4 2D               [12]  446 	add	a,r5
      0000D5 FD               [12]  447 	mov	r5,a
      0000D6 E4               [12]  448 	clr	a
      0000D7 3E               [12]  449 	addc	a,r6
      0000D8 FE               [12]  450 	mov	r6,a
      0000D9 8D 82            [24]  451 	mov	dpl,r5
      0000DB 8E 83            [24]  452 	mov	dph,r6
      0000DD 8F F0            [24]  453 	mov	b,r7
      0000DF E4               [12]  454 	clr	a
                                    455 ;	.\src\main.c:56: break;
      0000E0 02 05 31         [24]  456 	ljmp	__gptrput
                                    457 ;	.\src\main.c:57: case 1:
      0000E3                        458 00102$:
                                    459 ;	.\src\main.c:58: array[0] = 0x00;
      0000E3 AD 15            [24]  460 	mov	r5,_setData_PARM_2
      0000E5 AE 16            [24]  461 	mov	r6,(_setData_PARM_2 + 1)
      0000E7 AF 17            [24]  462 	mov	r7,(_setData_PARM_2 + 2)
      0000E9 8D 82            [24]  463 	mov	dpl,r5
      0000EB 8E 83            [24]  464 	mov	dph,r6
      0000ED 8F F0            [24]  465 	mov	b,r7
      0000EF E4               [12]  466 	clr	a
      0000F0 12 05 31         [24]  467 	lcall	__gptrput
                                    468 ;	.\src\main.c:59: array[1] = 0x1D;
      0000F3 04               [12]  469 	inc	a
      0000F4 2D               [12]  470 	add	a,r5
      0000F5 FA               [12]  471 	mov	r2,a
      0000F6 E4               [12]  472 	clr	a
      0000F7 3E               [12]  473 	addc	a,r6
      0000F8 FB               [12]  474 	mov	r3,a
      0000F9 8F 04            [24]  475 	mov	ar4,r7
      0000FB 8A 82            [24]  476 	mov	dpl,r2
      0000FD 8B 83            [24]  477 	mov	dph,r3
      0000FF 8C F0            [24]  478 	mov	b,r4
      000101 74 1D            [12]  479 	mov	a,#0x1d
      000103 12 05 31         [24]  480 	lcall	__gptrput
                                    481 ;	.\src\main.c:60: array[2] = 0x1B;
      000106 74 02            [12]  482 	mov	a,#0x02
      000108 2D               [12]  483 	add	a,r5
      000109 FD               [12]  484 	mov	r5,a
      00010A E4               [12]  485 	clr	a
      00010B 3E               [12]  486 	addc	a,r6
      00010C FE               [12]  487 	mov	r6,a
      00010D 8D 82            [24]  488 	mov	dpl,r5
      00010F 8E 83            [24]  489 	mov	dph,r6
      000111 8F F0            [24]  490 	mov	b,r7
      000113 74 1B            [12]  491 	mov	a,#0x1b
                                    492 ;	.\src\main.c:61: break;
      000115 02 05 31         [24]  493 	ljmp	__gptrput
                                    494 ;	.\src\main.c:62: case 2:
      000118                        495 00103$:
                                    496 ;	.\src\main.c:63: array[0] = 0x08;
      000118 AD 15            [24]  497 	mov	r5,_setData_PARM_2
      00011A AE 16            [24]  498 	mov	r6,(_setData_PARM_2 + 1)
      00011C AF 17            [24]  499 	mov	r7,(_setData_PARM_2 + 2)
      00011E 8D 82            [24]  500 	mov	dpl,r5
      000120 8E 83            [24]  501 	mov	dph,r6
      000122 8F F0            [24]  502 	mov	b,r7
      000124 74 08            [12]  503 	mov	a,#0x08
      000126 12 05 31         [24]  504 	lcall	__gptrput
                                    505 ;	.\src\main.c:64: array[1] = 0x0A;
      000129 74 01            [12]  506 	mov	a,#0x01
      00012B 2D               [12]  507 	add	a,r5
      00012C FA               [12]  508 	mov	r2,a
      00012D E4               [12]  509 	clr	a
      00012E 3E               [12]  510 	addc	a,r6
      00012F FB               [12]  511 	mov	r3,a
      000130 8F 04            [24]  512 	mov	ar4,r7
      000132 8A 82            [24]  513 	mov	dpl,r2
      000134 8B 83            [24]  514 	mov	dph,r3
      000136 8C F0            [24]  515 	mov	b,r4
      000138 74 0A            [12]  516 	mov	a,#0x0a
      00013A 12 05 31         [24]  517 	lcall	__gptrput
                                    518 ;	.\src\main.c:65: array[2] = 0x04;
      00013D 74 02            [12]  519 	mov	a,#0x02
      00013F 2D               [12]  520 	add	a,r5
      000140 FD               [12]  521 	mov	r5,a
      000141 E4               [12]  522 	clr	a
      000142 3E               [12]  523 	addc	a,r6
      000143 FE               [12]  524 	mov	r6,a
      000144 8D 82            [24]  525 	mov	dpl,r5
      000146 8E 83            [24]  526 	mov	dph,r6
      000148 8F F0            [24]  527 	mov	b,r7
      00014A 74 04            [12]  528 	mov	a,#0x04
                                    529 ;	.\src\main.c:66: break;
      00014C 02 05 31         [24]  530 	ljmp	__gptrput
                                    531 ;	.\src\main.c:67: case 3:
      00014F                        532 00104$:
                                    533 ;	.\src\main.c:68: array[0] = 0x00;
      00014F AD 15            [24]  534 	mov	r5,_setData_PARM_2
      000151 AE 16            [24]  535 	mov	r6,(_setData_PARM_2 + 1)
      000153 AF 17            [24]  536 	mov	r7,(_setData_PARM_2 + 2)
      000155 8D 82            [24]  537 	mov	dpl,r5
      000157 8E 83            [24]  538 	mov	dph,r6
      000159 8F F0            [24]  539 	mov	b,r7
      00015B E4               [12]  540 	clr	a
      00015C 12 05 31         [24]  541 	lcall	__gptrput
                                    542 ;	.\src\main.c:69: array[1] = 0x0A;
      00015F 04               [12]  543 	inc	a
      000160 2D               [12]  544 	add	a,r5
      000161 FA               [12]  545 	mov	r2,a
      000162 E4               [12]  546 	clr	a
      000163 3E               [12]  547 	addc	a,r6
      000164 FB               [12]  548 	mov	r3,a
      000165 8F 04            [24]  549 	mov	ar4,r7
      000167 8A 82            [24]  550 	mov	dpl,r2
      000169 8B 83            [24]  551 	mov	dph,r3
      00016B 8C F0            [24]  552 	mov	b,r4
      00016D 74 0A            [12]  553 	mov	a,#0x0a
      00016F 12 05 31         [24]  554 	lcall	__gptrput
                                    555 ;	.\src\main.c:70: array[2] = 0x0A;
      000172 74 02            [12]  556 	mov	a,#0x02
      000174 2D               [12]  557 	add	a,r5
      000175 FD               [12]  558 	mov	r5,a
      000176 E4               [12]  559 	clr	a
      000177 3E               [12]  560 	addc	a,r6
      000178 FE               [12]  561 	mov	r6,a
      000179 8D 82            [24]  562 	mov	dpl,r5
      00017B 8E 83            [24]  563 	mov	dph,r6
      00017D 8F F0            [24]  564 	mov	b,r7
      00017F 74 0A            [12]  565 	mov	a,#0x0a
                                    566 ;	.\src\main.c:71: break;
      000181 02 05 31         [24]  567 	ljmp	__gptrput
                                    568 ;	.\src\main.c:72: case 4:
      000184                        569 00105$:
                                    570 ;	.\src\main.c:73: array[0] = 0x00;
      000184 AD 15            [24]  571 	mov	r5,_setData_PARM_2
      000186 AE 16            [24]  572 	mov	r6,(_setData_PARM_2 + 1)
      000188 AF 17            [24]  573 	mov	r7,(_setData_PARM_2 + 2)
      00018A 8D 82            [24]  574 	mov	dpl,r5
      00018C 8E 83            [24]  575 	mov	dph,r6
      00018E 8F F0            [24]  576 	mov	b,r7
      000190 E4               [12]  577 	clr	a
      000191 12 05 31         [24]  578 	lcall	__gptrput
                                    579 ;	.\src\main.c:74: array[1] = 0x1B;
      000194 04               [12]  580 	inc	a
      000195 2D               [12]  581 	add	a,r5
      000196 FA               [12]  582 	mov	r2,a
      000197 E4               [12]  583 	clr	a
      000198 3E               [12]  584 	addc	a,r6
      000199 FB               [12]  585 	mov	r3,a
      00019A 8F 04            [24]  586 	mov	ar4,r7
      00019C 8A 82            [24]  587 	mov	dpl,r2
      00019E 8B 83            [24]  588 	mov	dph,r3
      0001A0 8C F0            [24]  589 	mov	b,r4
      0001A2 74 1B            [12]  590 	mov	a,#0x1b
      0001A4 12 05 31         [24]  591 	lcall	__gptrput
                                    592 ;	.\src\main.c:75: array[2] = 0x18;
      0001A7 74 02            [12]  593 	mov	a,#0x02
      0001A9 2D               [12]  594 	add	a,r5
      0001AA FD               [12]  595 	mov	r5,a
      0001AB E4               [12]  596 	clr	a
      0001AC 3E               [12]  597 	addc	a,r6
      0001AD FE               [12]  598 	mov	r6,a
      0001AE 8D 82            [24]  599 	mov	dpl,r5
      0001B0 8E 83            [24]  600 	mov	dph,r6
      0001B2 8F F0            [24]  601 	mov	b,r7
      0001B4 74 18            [12]  602 	mov	a,#0x18
                                    603 ;	.\src\main.c:76: break;
      0001B6 02 05 31         [24]  604 	ljmp	__gptrput
                                    605 ;	.\src\main.c:77: case 5:
      0001B9                        606 00106$:
                                    607 ;	.\src\main.c:78: array[0] = 0x02;
      0001B9 AD 15            [24]  608 	mov	r5,_setData_PARM_2
      0001BB AE 16            [24]  609 	mov	r6,(_setData_PARM_2 + 1)
      0001BD AF 17            [24]  610 	mov	r7,(_setData_PARM_2 + 2)
      0001BF 8D 82            [24]  611 	mov	dpl,r5
      0001C1 8E 83            [24]  612 	mov	dph,r6
      0001C3 8F F0            [24]  613 	mov	b,r7
      0001C5 74 02            [12]  614 	mov	a,#0x02
      0001C7 12 05 31         [24]  615 	lcall	__gptrput
                                    616 ;	.\src\main.c:79: array[1] = 0x0A;
      0001CA 14               [12]  617 	dec	a
      0001CB 2D               [12]  618 	add	a,r5
      0001CC FA               [12]  619 	mov	r2,a
      0001CD E4               [12]  620 	clr	a
      0001CE 3E               [12]  621 	addc	a,r6
      0001CF FB               [12]  622 	mov	r3,a
      0001D0 8F 04            [24]  623 	mov	ar4,r7
      0001D2 8A 82            [24]  624 	mov	dpl,r2
      0001D4 8B 83            [24]  625 	mov	dph,r3
      0001D6 8C F0            [24]  626 	mov	b,r4
      0001D8 74 0A            [12]  627 	mov	a,#0x0a
      0001DA 12 05 31         [24]  628 	lcall	__gptrput
                                    629 ;	.\src\main.c:80: array[2] = 0x08;
      0001DD 74 02            [12]  630 	mov	a,#0x02
      0001DF 2D               [12]  631 	add	a,r5
      0001E0 FD               [12]  632 	mov	r5,a
      0001E1 E4               [12]  633 	clr	a
      0001E2 3E               [12]  634 	addc	a,r6
      0001E3 FE               [12]  635 	mov	r6,a
      0001E4 8D 82            [24]  636 	mov	dpl,r5
      0001E6 8E 83            [24]  637 	mov	dph,r6
      0001E8 8F F0            [24]  638 	mov	b,r7
      0001EA 74 08            [12]  639 	mov	a,#0x08
                                    640 ;	.\src\main.c:81: break;
      0001EC 02 05 31         [24]  641 	ljmp	__gptrput
                                    642 ;	.\src\main.c:82: case 6:
      0001EF                        643 00107$:
                                    644 ;	.\src\main.c:83: array[0] = 0x02;
      0001EF AD 15            [24]  645 	mov	r5,_setData_PARM_2
      0001F1 AE 16            [24]  646 	mov	r6,(_setData_PARM_2 + 1)
      0001F3 AF 17            [24]  647 	mov	r7,(_setData_PARM_2 + 2)
      0001F5 8D 82            [24]  648 	mov	dpl,r5
      0001F7 8E 83            [24]  649 	mov	dph,r6
      0001F9 8F F0            [24]  650 	mov	b,r7
      0001FB 74 02            [12]  651 	mov	a,#0x02
      0001FD 12 05 31         [24]  652 	lcall	__gptrput
                                    653 ;	.\src\main.c:84: array[1] = 0x0A;
      000200 14               [12]  654 	dec	a
      000201 2D               [12]  655 	add	a,r5
      000202 FA               [12]  656 	mov	r2,a
      000203 E4               [12]  657 	clr	a
      000204 3E               [12]  658 	addc	a,r6
      000205 FB               [12]  659 	mov	r3,a
      000206 8F 04            [24]  660 	mov	ar4,r7
      000208 8A 82            [24]  661 	mov	dpl,r2
      00020A 8B 83            [24]  662 	mov	dph,r3
      00020C 8C F0            [24]  663 	mov	b,r4
      00020E 74 0A            [12]  664 	mov	a,#0x0a
      000210 12 05 31         [24]  665 	lcall	__gptrput
                                    666 ;	.\src\main.c:85: array[2] = 0x00;
      000213 74 02            [12]  667 	mov	a,#0x02
      000215 2D               [12]  668 	add	a,r5
      000216 FD               [12]  669 	mov	r5,a
      000217 E4               [12]  670 	clr	a
      000218 3E               [12]  671 	addc	a,r6
      000219 FE               [12]  672 	mov	r6,a
      00021A 8D 82            [24]  673 	mov	dpl,r5
      00021C 8E 83            [24]  674 	mov	dph,r6
      00021E 8F F0            [24]  675 	mov	b,r7
      000220 E4               [12]  676 	clr	a
                                    677 ;	.\src\main.c:86: break;
      000221 02 05 31         [24]  678 	ljmp	__gptrput
                                    679 ;	.\src\main.c:87: case 7:
      000224                        680 00108$:
                                    681 ;	.\src\main.c:88: array[0] = 0x1C;
      000224 AD 15            [24]  682 	mov	r5,_setData_PARM_2
      000226 AE 16            [24]  683 	mov	r6,(_setData_PARM_2 + 1)
      000228 AF 17            [24]  684 	mov	r7,(_setData_PARM_2 + 2)
      00022A 8D 82            [24]  685 	mov	dpl,r5
      00022C 8E 83            [24]  686 	mov	dph,r6
      00022E 8F F0            [24]  687 	mov	b,r7
      000230 74 1C            [12]  688 	mov	a,#0x1c
      000232 12 05 31         [24]  689 	lcall	__gptrput
                                    690 ;	.\src\main.c:89: array[1] = 0x1A;
      000235 74 01            [12]  691 	mov	a,#0x01
      000237 2D               [12]  692 	add	a,r5
      000238 FA               [12]  693 	mov	r2,a
      000239 E4               [12]  694 	clr	a
      00023A 3E               [12]  695 	addc	a,r6
      00023B FB               [12]  696 	mov	r3,a
      00023C 8F 04            [24]  697 	mov	ar4,r7
      00023E 8A 82            [24]  698 	mov	dpl,r2
      000240 8B 83            [24]  699 	mov	dph,r3
      000242 8C F0            [24]  700 	mov	b,r4
      000244 74 1A            [12]  701 	mov	a,#0x1a
      000246 12 05 31         [24]  702 	lcall	__gptrput
                                    703 ;	.\src\main.c:90: array[2] = 0x06;
      000249 74 02            [12]  704 	mov	a,#0x02
      00024B 2D               [12]  705 	add	a,r5
      00024C FD               [12]  706 	mov	r5,a
      00024D E4               [12]  707 	clr	a
      00024E 3E               [12]  708 	addc	a,r6
      00024F FE               [12]  709 	mov	r6,a
      000250 8D 82            [24]  710 	mov	dpl,r5
      000252 8E 83            [24]  711 	mov	dph,r6
      000254 8F F0            [24]  712 	mov	b,r7
      000256 74 06            [12]  713 	mov	a,#0x06
                                    714 ;	.\src\main.c:91: break;
                                    715 ;	.\src\main.c:92: case 8:
      000258 02 05 31         [24]  716 	ljmp	__gptrput
      00025B                        717 00109$:
                                    718 ;	.\src\main.c:93: array[0] = 0x00;
      00025B AD 15            [24]  719 	mov	r5,_setData_PARM_2
      00025D AE 16            [24]  720 	mov	r6,(_setData_PARM_2 + 1)
      00025F AF 17            [24]  721 	mov	r7,(_setData_PARM_2 + 2)
      000261 8D 82            [24]  722 	mov	dpl,r5
      000263 8E 83            [24]  723 	mov	dph,r6
      000265 8F F0            [24]  724 	mov	b,r7
      000267 E4               [12]  725 	clr	a
      000268 12 05 31         [24]  726 	lcall	__gptrput
                                    727 ;	.\src\main.c:94: array[1] = 0x0A;
      00026B 04               [12]  728 	inc	a
      00026C 2D               [12]  729 	add	a,r5
      00026D FA               [12]  730 	mov	r2,a
      00026E E4               [12]  731 	clr	a
      00026F 3E               [12]  732 	addc	a,r6
      000270 FB               [12]  733 	mov	r3,a
      000271 8F 04            [24]  734 	mov	ar4,r7
      000273 8A 82            [24]  735 	mov	dpl,r2
      000275 8B 83            [24]  736 	mov	dph,r3
      000277 8C F0            [24]  737 	mov	b,r4
      000279 74 0A            [12]  738 	mov	a,#0x0a
      00027B 12 05 31         [24]  739 	lcall	__gptrput
                                    740 ;	.\src\main.c:95: array[2] = 0x00;
      00027E 74 02            [12]  741 	mov	a,#0x02
      000280 2D               [12]  742 	add	a,r5
      000281 FD               [12]  743 	mov	r5,a
      000282 E4               [12]  744 	clr	a
      000283 3E               [12]  745 	addc	a,r6
      000284 FE               [12]  746 	mov	r6,a
      000285 8D 82            [24]  747 	mov	dpl,r5
      000287 8E 83            [24]  748 	mov	dph,r6
      000289 8F F0            [24]  749 	mov	b,r7
      00028B E4               [12]  750 	clr	a
                                    751 ;	.\src\main.c:96: break;
                                    752 ;	.\src\main.c:97: case 9:
      00028C 02 05 31         [24]  753 	ljmp	__gptrput
      00028F                        754 00110$:
                                    755 ;	.\src\main.c:98: array[0] = 0x00;
      00028F AD 15            [24]  756 	mov	r5,_setData_PARM_2
      000291 AE 16            [24]  757 	mov	r6,(_setData_PARM_2 + 1)
      000293 AF 17            [24]  758 	mov	r7,(_setData_PARM_2 + 2)
      000295 8D 82            [24]  759 	mov	dpl,r5
      000297 8E 83            [24]  760 	mov	dph,r6
      000299 8F F0            [24]  761 	mov	b,r7
      00029B E4               [12]  762 	clr	a
      00029C 12 05 31         [24]  763 	lcall	__gptrput
                                    764 ;	.\src\main.c:99: array[1] = 0x0A;
      00029F 04               [12]  765 	inc	a
      0002A0 2D               [12]  766 	add	a,r5
      0002A1 FA               [12]  767 	mov	r2,a
      0002A2 E4               [12]  768 	clr	a
      0002A3 3E               [12]  769 	addc	a,r6
      0002A4 FB               [12]  770 	mov	r3,a
      0002A5 8F 04            [24]  771 	mov	ar4,r7
      0002A7 8A 82            [24]  772 	mov	dpl,r2
      0002A9 8B 83            [24]  773 	mov	dph,r3
      0002AB 8C F0            [24]  774 	mov	b,r4
      0002AD 74 0A            [12]  775 	mov	a,#0x0a
      0002AF 12 05 31         [24]  776 	lcall	__gptrput
                                    777 ;	.\src\main.c:100: array[2] = 0x08;
      0002B2 74 02            [12]  778 	mov	a,#0x02
      0002B4 2D               [12]  779 	add	a,r5
      0002B5 FD               [12]  780 	mov	r5,a
      0002B6 E4               [12]  781 	clr	a
      0002B7 3E               [12]  782 	addc	a,r6
      0002B8 FE               [12]  783 	mov	r6,a
      0002B9 8D 82            [24]  784 	mov	dpl,r5
      0002BB 8E 83            [24]  785 	mov	dph,r6
      0002BD 8F F0            [24]  786 	mov	b,r7
      0002BF 74 08            [12]  787 	mov	a,#0x08
                                    788 ;	.\src\main.c:102: }
                                    789 ;	.\src\main.c:103: }
      0002C1 02 05 31         [24]  790 	ljmp	__gptrput
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'nextColumn'
                                    793 ;------------------------------------------------------------
                                    794 ;	.\src\main.c:106: void nextColumn(void)
                                    795 ;	-----------------------------------------
                                    796 ;	 function nextColumn
                                    797 ;	-----------------------------------------
      0002C4                        798 _nextColumn:
                                    799 ;	.\src\main.c:111: if (ptrColumn < 3)
      0002C4 74 FD            [12]  800 	mov	a,#0x100 - 0x03
      0002C6 25 0A            [12]  801 	add	a,_ptrColumn
      0002C8 40 11            [24]  802 	jc	00102$
                                    803 ;	.\src\main.c:112: P1 = (ptrColumn << 5) | second[ptrColumn];
      0002CA E5 0A            [12]  804 	mov	a,_ptrColumn
      0002CC C4               [12]  805 	swap	a
      0002CD 23               [12]  806 	rl	a
      0002CE 54 E0            [12]  807 	anl	a,#0xe0
      0002D0 FF               [12]  808 	mov	r7,a
      0002D1 E5 0A            [12]  809 	mov	a,_ptrColumn
      0002D3 24 12            [12]  810 	add	a,#_second
      0002D5 F9               [12]  811 	mov	r1,a
      0002D6 E7               [12]  812 	mov	a,@r1
      0002D7 FE               [12]  813 	mov	r6,a
      0002D8 4F               [12]  814 	orl	a,r7
      0002D9 F5 90            [12]  815 	mov	_P1,a
      0002DB                        816 00102$:
                                    817 ;	.\src\main.c:114: if (ptrColumn == 3)
      0002DB 74 03            [12]  818 	mov	a,#0x03
      0002DD B5 0A 0C         [24]  819 	cjne	a,_ptrColumn,00104$
                                    820 ;	.\src\main.c:115: P1 = (ptrColumn << 5) | 0x1F;
      0002E0 E5 0A            [12]  821 	mov	a,_ptrColumn
      0002E2 C4               [12]  822 	swap	a
      0002E3 23               [12]  823 	rl	a
      0002E4 54 E0            [12]  824 	anl	a,#0xe0
      0002E6 FF               [12]  825 	mov	r7,a
      0002E7 74 1F            [12]  826 	mov	a,#0x1f
      0002E9 4F               [12]  827 	orl	a,r7
      0002EA F5 90            [12]  828 	mov	_P1,a
      0002EC                        829 00104$:
                                    830 ;	.\src\main.c:117: if (ptrColumn > 3 && ptrColumn < 7)
      0002EC E5 0A            [12]  831 	mov	a,_ptrColumn
      0002EE 24 FC            [12]  832 	add	a,#0xff - 0x03
      0002F0 50 19            [24]  833 	jnc	00106$
      0002F2 74 F9            [12]  834 	mov	a,#0x100 - 0x07
      0002F4 25 0A            [12]  835 	add	a,_ptrColumn
      0002F6 40 13            [24]  836 	jc	00106$
                                    837 ;	.\src\main.c:118: P1 = (ptrColumn << 5) | first[ptrColumn - 4];
      0002F8 E5 0A            [12]  838 	mov	a,_ptrColumn
      0002FA FF               [12]  839 	mov	r7,a
      0002FB C4               [12]  840 	swap	a
      0002FC 23               [12]  841 	rl	a
      0002FD 54 E0            [12]  842 	anl	a,#0xe0
      0002FF FE               [12]  843 	mov	r6,a
      000300 EF               [12]  844 	mov	a,r7
      000301 24 FC            [12]  845 	add	a,#0xfc
      000303 24 0F            [12]  846 	add	a,#_first
      000305 F9               [12]  847 	mov	r1,a
      000306 E7               [12]  848 	mov	a,@r1
      000307 FF               [12]  849 	mov	r7,a
      000308 4E               [12]  850 	orl	a,r6
      000309 F5 90            [12]  851 	mov	_P1,a
      00030B                        852 00106$:
                                    853 ;	.\src\main.c:120: ptrColumn++;
      00030B 05 0A            [12]  854 	inc	_ptrColumn
                                    855 ;	.\src\main.c:122: if (ptrColumn == countColumn)
      00030D 74 07            [12]  856 	mov	a,#0x07
      00030F B5 0A 03         [24]  857 	cjne	a,_ptrColumn,00110$
                                    858 ;	.\src\main.c:123: ptrColumn = 0;
      000312 75 0A 00         [24]  859 	mov	_ptrColumn,#0x00
      000315                        860 00110$:
                                    861 ;	.\src\main.c:124: }
      000315 22               [24]  862 	ret
                                    863 ;------------------------------------------------------------
                                    864 ;Allocation info for local variables in function 'setDigits'
                                    865 ;------------------------------------------------------------
                                    866 ;	.\src\main.c:128: void setDigits()
                                    867 ;	-----------------------------------------
                                    868 ;	 function setDigits
                                    869 ;	-----------------------------------------
      000316                        870 _setDigits:
                                    871 ;	.\src\main.c:130: switch(mode)
      000316 E5 09            [12]  872 	mov	a,_mode
      000318 24 FC            [12]  873 	add	a,#0xff - 0x03
      00031A 50 01            [24]  874 	jnc	00112$
      00031C 22               [24]  875 	ret
      00031D                        876 00112$:
      00031D E5 09            [12]  877 	mov	a,_mode
      00031F 75 F0 03         [24]  878 	mov	b,#0x03
      000322 A4               [48]  879 	mul	ab
      000323 90 03 27         [24]  880 	mov	dptr,#00113$
      000326 73               [24]  881 	jmp	@a+dptr
      000327                        882 00113$:
      000327 02 03 33         [24]  883 	ljmp	00101$
      00032A 02 03 6B         [24]  884 	ljmp	00102$
      00032D 02 03 A3         [24]  885 	ljmp	00103$
      000330 02 03 DB         [24]  886 	ljmp	00104$
                                    887 ;	.\src\main.c:132: case 0:		
      000333                        888 00101$:
                                    889 ;	.\src\main.c:133: setData(time10ms/10, &first[0]);	
      000333 AE 0B            [24]  890 	mov	r6,_time10ms
      000335 7F 00            [12]  891 	mov	r7,#0x00
      000337 75 15 0A         [24]  892 	mov	__divsint_PARM_2,#0x0a
                                    893 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00033A 8F 16            [24]  894 	mov	(__divsint_PARM_2 + 1),r7
      00033C 8E 82            [24]  895 	mov	dpl,r6
      00033E 8F 83            [24]  896 	mov	dph,r7
      000340 12 05 F8         [24]  897 	lcall	__divsint
      000343 75 15 0F         [24]  898 	mov	_setData_PARM_2,#_first
      000346 75 16 00         [24]  899 	mov	(_setData_PARM_2 + 1),#0x00
      000349 75 17 40         [24]  900 	mov	(_setData_PARM_2 + 2),#0x40
      00034C 12 00 82         [24]  901 	lcall	_setData
                                    902 ;	.\src\main.c:134: setData(time10ms%10, &second[0]);
      00034F AE 0B            [24]  903 	mov	r6,_time10ms
      000351 7F 00            [12]  904 	mov	r7,#0x00
      000353 75 15 0A         [24]  905 	mov	__modsint_PARM_2,#0x0a
                                    906 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000356 8F 16            [24]  907 	mov	(__modsint_PARM_2 + 1),r7
      000358 8E 82            [24]  908 	mov	dpl,r6
      00035A 8F 83            [24]  909 	mov	dph,r7
      00035C 12 05 C2         [24]  910 	lcall	__modsint
      00035F 75 15 12         [24]  911 	mov	_setData_PARM_2,#_second
      000362 75 16 00         [24]  912 	mov	(_setData_PARM_2 + 1),#0x00
      000365 75 17 40         [24]  913 	mov	(_setData_PARM_2 + 2),#0x40
                                    914 ;	.\src\main.c:135: break;
      000368 02 00 82         [24]  915 	ljmp	_setData
                                    916 ;	.\src\main.c:136: case 1:
      00036B                        917 00102$:
                                    918 ;	.\src\main.c:137: setData(timeSec/10, &first[0]);
      00036B AE 0C            [24]  919 	mov	r6,_timeSec
      00036D 7F 00            [12]  920 	mov	r7,#0x00
      00036F 75 15 0A         [24]  921 	mov	__divsint_PARM_2,#0x0a
                                    922 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000372 8F 16            [24]  923 	mov	(__divsint_PARM_2 + 1),r7
      000374 8E 82            [24]  924 	mov	dpl,r6
      000376 8F 83            [24]  925 	mov	dph,r7
      000378 12 05 F8         [24]  926 	lcall	__divsint
      00037B 75 15 0F         [24]  927 	mov	_setData_PARM_2,#_first
      00037E 75 16 00         [24]  928 	mov	(_setData_PARM_2 + 1),#0x00
      000381 75 17 40         [24]  929 	mov	(_setData_PARM_2 + 2),#0x40
      000384 12 00 82         [24]  930 	lcall	_setData
                                    931 ;	.\src\main.c:138: setData(timeSec%10, &second[0]);
      000387 AE 0C            [24]  932 	mov	r6,_timeSec
      000389 7F 00            [12]  933 	mov	r7,#0x00
      00038B 75 15 0A         [24]  934 	mov	__modsint_PARM_2,#0x0a
                                    935 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00038E 8F 16            [24]  936 	mov	(__modsint_PARM_2 + 1),r7
      000390 8E 82            [24]  937 	mov	dpl,r6
      000392 8F 83            [24]  938 	mov	dph,r7
      000394 12 05 C2         [24]  939 	lcall	__modsint
      000397 75 15 12         [24]  940 	mov	_setData_PARM_2,#_second
      00039A 75 16 00         [24]  941 	mov	(_setData_PARM_2 + 1),#0x00
      00039D 75 17 40         [24]  942 	mov	(_setData_PARM_2 + 2),#0x40
                                    943 ;	.\src\main.c:139: break;
      0003A0 02 00 82         [24]  944 	ljmp	_setData
                                    945 ;	.\src\main.c:140: case 2:
      0003A3                        946 00103$:
                                    947 ;	.\src\main.c:141: setData(timeMin/10, &first[0]);
      0003A3 AE 0D            [24]  948 	mov	r6,_timeMin
      0003A5 7F 00            [12]  949 	mov	r7,#0x00
      0003A7 75 15 0A         [24]  950 	mov	__divsint_PARM_2,#0x0a
                                    951 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0003AA 8F 16            [24]  952 	mov	(__divsint_PARM_2 + 1),r7
      0003AC 8E 82            [24]  953 	mov	dpl,r6
      0003AE 8F 83            [24]  954 	mov	dph,r7
      0003B0 12 05 F8         [24]  955 	lcall	__divsint
      0003B3 75 15 0F         [24]  956 	mov	_setData_PARM_2,#_first
      0003B6 75 16 00         [24]  957 	mov	(_setData_PARM_2 + 1),#0x00
      0003B9 75 17 40         [24]  958 	mov	(_setData_PARM_2 + 2),#0x40
      0003BC 12 00 82         [24]  959 	lcall	_setData
                                    960 ;	.\src\main.c:142: setData(timeMin%10, &second[0]);
      0003BF AE 0D            [24]  961 	mov	r6,_timeMin
      0003C1 7F 00            [12]  962 	mov	r7,#0x00
      0003C3 75 15 0A         [24]  963 	mov	__modsint_PARM_2,#0x0a
                                    964 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0003C6 8F 16            [24]  965 	mov	(__modsint_PARM_2 + 1),r7
      0003C8 8E 82            [24]  966 	mov	dpl,r6
      0003CA 8F 83            [24]  967 	mov	dph,r7
      0003CC 12 05 C2         [24]  968 	lcall	__modsint
      0003CF 75 15 12         [24]  969 	mov	_setData_PARM_2,#_second
      0003D2 75 16 00         [24]  970 	mov	(_setData_PARM_2 + 1),#0x00
      0003D5 75 17 40         [24]  971 	mov	(_setData_PARM_2 + 2),#0x40
                                    972 ;	.\src\main.c:143: break;
                                    973 ;	.\src\main.c:144: case 3:
      0003D8 02 00 82         [24]  974 	ljmp	_setData
      0003DB                        975 00104$:
                                    976 ;	.\src\main.c:145: setData(timeHour/10, &first[0]);
      0003DB AE 0E            [24]  977 	mov	r6,_timeHour
      0003DD 7F 00            [12]  978 	mov	r7,#0x00
      0003DF 75 15 0A         [24]  979 	mov	__divsint_PARM_2,#0x0a
                                    980 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0003E2 8F 16            [24]  981 	mov	(__divsint_PARM_2 + 1),r7
      0003E4 8E 82            [24]  982 	mov	dpl,r6
      0003E6 8F 83            [24]  983 	mov	dph,r7
      0003E8 12 05 F8         [24]  984 	lcall	__divsint
      0003EB 75 15 0F         [24]  985 	mov	_setData_PARM_2,#_first
      0003EE 75 16 00         [24]  986 	mov	(_setData_PARM_2 + 1),#0x00
      0003F1 75 17 40         [24]  987 	mov	(_setData_PARM_2 + 2),#0x40
      0003F4 12 00 82         [24]  988 	lcall	_setData
                                    989 ;	.\src\main.c:146: setData(timeHour%10, &second[0]);			
      0003F7 AE 0E            [24]  990 	mov	r6,_timeHour
      0003F9 7F 00            [12]  991 	mov	r7,#0x00
      0003FB 75 15 0A         [24]  992 	mov	__modsint_PARM_2,#0x0a
                                    993 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0003FE 8F 16            [24]  994 	mov	(__modsint_PARM_2 + 1),r7
      000400 8E 82            [24]  995 	mov	dpl,r6
      000402 8F 83            [24]  996 	mov	dph,r7
      000404 12 05 C2         [24]  997 	lcall	__modsint
      000407 75 15 12         [24]  998 	mov	_setData_PARM_2,#_second
      00040A 75 16 00         [24]  999 	mov	(_setData_PARM_2 + 1),#0x00
      00040D 75 17 40         [24] 1000 	mov	(_setData_PARM_2 + 2),#0x40
                                   1001 ;	.\src\main.c:148: }
                                   1002 ;	.\src\main.c:149: }
      000410 02 00 82         [24] 1003 	ljmp	_setData
                                   1004 ;------------------------------------------------------------
                                   1005 ;Allocation info for local variables in function 'T0init'
                                   1006 ;------------------------------------------------------------
                                   1007 ;	.\src\main.c:152: void T0init(void)
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function T0init
                                   1010 ;	-----------------------------------------
      000413                       1011 _T0init:
                                   1012 ;	.\src\main.c:154: TR0=0;
                                   1013 ;	assignBit
      000413 C2 8C            [12] 1014 	clr	_TR0
                                   1015 ;	.\src\main.c:155: TMOD=(TMOD&0xf0)|0x1;
      000415 E5 89            [12] 1016 	mov	a,_TMOD
      000417 54 F0            [12] 1017 	anl	a,#0xf0
      000419 44 01            [12] 1018 	orl	a,#0x01
      00041B F5 89            [12] 1019 	mov	_TMOD,a
                                   1020 ;	.\src\main.c:156: TL0=(~tik);
      00041D 75 8A EF         [24] 1021 	mov	_TL0,#0xef
                                   1022 ;	.\src\main.c:157: TH0=(~tik)>>8;
      000420 75 8C D8         [24] 1023 	mov	_TH0,#0xd8
                                   1024 ;	.\src\main.c:158: TR0=1;
                                   1025 ;	assignBit
      000423 D2 8C            [12] 1026 	setb	_TR0
                                   1027 ;	.\src\main.c:159: ET0=1; 
                                   1028 ;	assignBit
      000425 D2 A9            [12] 1029 	setb	_ET0
                                   1030 ;	.\src\main.c:160: EA=1;
                                   1031 ;	assignBit
      000427 D2 AF            [12] 1032 	setb	_EA
                                   1033 ;	.\src\main.c:161: }
      000429 22               [24] 1034 	ret
                                   1035 ;------------------------------------------------------------
                                   1036 ;Allocation info for local variables in function 'T0_int'
                                   1037 ;------------------------------------------------------------
                                   1038 ;	.\src\main.c:164: void T0_int (void) __interrupt (TF0_VECTOR)
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function T0_int
                                   1041 ;	-----------------------------------------
      00042A                       1042 _T0_int:
      00042A C0 20            [24] 1043 	push	bits
      00042C C0 E0            [24] 1044 	push	acc
      00042E C0 F0            [24] 1045 	push	b
      000430 C0 82            [24] 1046 	push	dpl
      000432 C0 83            [24] 1047 	push	dph
      000434 C0 07            [24] 1048 	push	(0+7)
      000436 C0 06            [24] 1049 	push	(0+6)
      000438 C0 05            [24] 1050 	push	(0+5)
      00043A C0 04            [24] 1051 	push	(0+4)
      00043C C0 03            [24] 1052 	push	(0+3)
      00043E C0 02            [24] 1053 	push	(0+2)
      000440 C0 01            [24] 1054 	push	(0+1)
      000442 C0 00            [24] 1055 	push	(0+0)
      000444 C0 D0            [24] 1056 	push	psw
      000446 75 D0 00         [24] 1057 	mov	psw,#0x00
                                   1058 ;	.\src\main.c:166: TR0=0;
                                   1059 ;	assignBit
      000449 C2 8C            [12] 1060 	clr	_TR0
                                   1061 ;	.\src\main.c:167: TL0=(~tik);
      00044B 75 8A EF         [24] 1062 	mov	_TL0,#0xef
                                   1063 ;	.\src\main.c:168: TH0=(~tik)>>8;
      00044E 75 8C D8         [24] 1064 	mov	_TH0,#0xd8
                                   1065 ;	.\src\main.c:169: TR0=1;
                                   1066 ;	assignBit
      000451 D2 8C            [12] 1067 	setb	_TR0
                                   1068 ;	.\src\main.c:170: if (started) 
      000453 E5 08            [12] 1069 	mov	a,_started
      000455 60 2B            [24] 1070 	jz	00111$
                                   1071 ;	.\src\main.c:172: time10ms++;
      000457 05 0B            [12] 1072 	inc	_time10ms
                                   1073 ;	.\src\main.c:173: if (time10ms == 100) 
      000459 74 64            [12] 1074 	mov	a,#0x64
      00045B B5 0B 21         [24] 1075 	cjne	a,_time10ms,00108$
                                   1076 ;	.\src\main.c:175: time10ms = 0;
      00045E 75 0B 00         [24] 1077 	mov	_time10ms,#0x00
                                   1078 ;	.\src\main.c:176: timeSec++;
      000461 05 0C            [12] 1079 	inc	_timeSec
                                   1080 ;	.\src\main.c:177: if (timeSec == 60) 
      000463 74 3C            [12] 1081 	mov	a,#0x3c
      000465 B5 0C 17         [24] 1082 	cjne	a,_timeSec,00108$
                                   1083 ;	.\src\main.c:179: timeSec = 0;
      000468 75 0C 00         [24] 1084 	mov	_timeSec,#0x00
                                   1085 ;	.\src\main.c:180: timeMin++;
      00046B 05 0D            [12] 1086 	inc	_timeMin
                                   1087 ;	.\src\main.c:181: if (timeMin == 60) 
      00046D 74 3C            [12] 1088 	mov	a,#0x3c
      00046F B5 0D 0D         [24] 1089 	cjne	a,_timeMin,00108$
                                   1090 ;	.\src\main.c:183: timeMin = 0;
      000472 75 0D 00         [24] 1091 	mov	_timeMin,#0x00
                                   1092 ;	.\src\main.c:184: timeHour++;
      000475 05 0E            [12] 1093 	inc	_timeHour
                                   1094 ;	.\src\main.c:185: if (timeHour == 24)
      000477 74 18            [12] 1095 	mov	a,#0x18
      000479 B5 0E 03         [24] 1096 	cjne	a,_timeHour,00108$
                                   1097 ;	.\src\main.c:186: timeHour = 0;
      00047C 75 0E 00         [24] 1098 	mov	_timeHour,#0x00
      00047F                       1099 00108$:
                                   1100 ;	.\src\main.c:190: setDigits();
      00047F 12 03 16         [24] 1101 	lcall	_setDigits
      000482                       1102 00111$:
                                   1103 ;	.\src\main.c:192: }
      000482 D0 D0            [24] 1104 	pop	psw
      000484 D0 00            [24] 1105 	pop	(0+0)
      000486 D0 01            [24] 1106 	pop	(0+1)
      000488 D0 02            [24] 1107 	pop	(0+2)
      00048A D0 03            [24] 1108 	pop	(0+3)
      00048C D0 04            [24] 1109 	pop	(0+4)
      00048E D0 05            [24] 1110 	pop	(0+5)
      000490 D0 06            [24] 1111 	pop	(0+6)
      000492 D0 07            [24] 1112 	pop	(0+7)
      000494 D0 83            [24] 1113 	pop	dph
      000496 D0 82            [24] 1114 	pop	dpl
      000498 D0 F0            [24] 1115 	pop	b
      00049A D0 E0            [24] 1116 	pop	acc
      00049C D0 20            [24] 1117 	pop	bits
      00049E 32               [24] 1118 	reti
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'delayFOR'
                                   1121 ;------------------------------------------------------------
                                   1122 ;kodF                      Allocated to registers r7 
                                   1123 ;ml                        Allocated to registers r6 
                                   1124 ;------------------------------------------------------------
                                   1125 ;	.\src\main.c:195: void delayFOR(unsigned char kodF)
                                   1126 ;	-----------------------------------------
                                   1127 ;	 function delayFOR
                                   1128 ;	-----------------------------------------
      00049F                       1129 _delayFOR:
      00049F AF 82            [24] 1130 	mov	r7,dpl
                                   1131 ;	.\src\main.c:198: for(ml = 0; ml < kodF; ml++){}
      0004A1 7E 00            [12] 1132 	mov	r6,#0x00
      0004A3                       1133 00103$:
      0004A3 C3               [12] 1134 	clr	c
      0004A4 EE               [12] 1135 	mov	a,r6
      0004A5 9F               [12] 1136 	subb	a,r7
      0004A6 50 03            [24] 1137 	jnc	00105$
      0004A8 0E               [12] 1138 	inc	r6
      0004A9 80 F8            [24] 1139 	sjmp	00103$
      0004AB                       1140 00105$:
                                   1141 ;	.\src\main.c:199: }
      0004AB 22               [24] 1142 	ret
                                   1143 ;------------------------------------------------------------
                                   1144 ;Allocation info for local variables in function 'DelayMS'
                                   1145 ;------------------------------------------------------------
                                   1146 ;KodMS                     Allocated to registers 
                                   1147 ;------------------------------------------------------------
                                   1148 ;	.\src\main.c:202: void DelayMS(unsigned char KodMS)
                                   1149 ;	-----------------------------------------
                                   1150 ;	 function DelayMS
                                   1151 ;	-----------------------------------------
      0004AC                       1152 _DelayMS:
      0004AC AF 82            [24] 1153 	mov	r7,dpl
                                   1154 ;	.\src\main.c:204: do delay1ms;
      0004AE                       1155 00101$:
      0004AE 75 82 63         [24] 1156 	mov	dpl,#0x63
      0004B1 C0 07            [24] 1157 	push	ar7
      0004B3 12 04 9F         [24] 1158 	lcall	_delayFOR
      0004B6 D0 07            [24] 1159 	pop	ar7
                                   1160 ;	.\src\main.c:205: while(--KodMS);
      0004B8 DF F4            [24] 1161 	djnz	r7,00101$
                                   1162 ;	.\src\main.c:206: }
      0004BA 22               [24] 1163 	ret
                                   1164 ;------------------------------------------------------------
                                   1165 ;Allocation info for local variables in function 'buttonsCheck'
                                   1166 ;------------------------------------------------------------
                                   1167 ;	.\src\main.c:209: void buttonsCheck(void)
                                   1168 ;	-----------------------------------------
                                   1169 ;	 function buttonsCheck
                                   1170 ;	-----------------------------------------
      0004BB                       1171 _buttonsCheck:
                                   1172 ;	.\src\main.c:212: if (!P3_2) 
      0004BB 20 B2 1E         [24] 1173 	jb	_P3_2,00108$
                                   1174 ;	.\src\main.c:215: P1 = 0x1F;
      0004BE 75 90 1F         [24] 1175 	mov	_P1,#0x1f
                                   1176 ;	.\src\main.c:217: DelayMS(10);
      0004C1 75 82 0A         [24] 1177 	mov	dpl,#0x0a
      0004C4 12 04 AC         [24] 1178 	lcall	_DelayMS
                                   1179 ;	.\src\main.c:219: while(!P3_2);
      0004C7                       1180 00101$:
      0004C7 30 B2 FD         [24] 1181 	jnb	_P3_2,00101$
                                   1182 ;	.\src\main.c:221: DelayMS(10);
      0004CA 75 82 0A         [24] 1183 	mov	dpl,#0x0a
      0004CD 12 04 AC         [24] 1184 	lcall	_DelayMS
                                   1185 ;	.\src\main.c:223: if (started)
      0004D0 E5 08            [12] 1186 	mov	a,_started
      0004D2 60 05            [24] 1187 	jz	00105$
                                   1188 ;	.\src\main.c:225: started = 0;
      0004D4 75 08 00         [24] 1189 	mov	_started,#0x00
      0004D7 80 03            [24] 1190 	sjmp	00108$
      0004D9                       1191 00105$:
                                   1192 ;	.\src\main.c:228: started = 1;
      0004D9 75 08 01         [24] 1193 	mov	_started,#0x01
      0004DC                       1194 00108$:
                                   1195 ;	.\src\main.c:232: if (!P3_3) 
      0004DC 20 B3 1F         [24] 1196 	jb	_P3_3,00115$
                                   1197 ;	.\src\main.c:235: P1 = 0x1F;
      0004DF 75 90 1F         [24] 1198 	mov	_P1,#0x1f
                                   1199 ;	.\src\main.c:237: DelayMS(10);
      0004E2 75 82 0A         [24] 1200 	mov	dpl,#0x0a
      0004E5 12 04 AC         [24] 1201 	lcall	_DelayMS
                                   1202 ;	.\src\main.c:239: while(!P3_3);
      0004E8                       1203 00109$:
      0004E8 30 B3 FD         [24] 1204 	jnb	_P3_3,00109$
                                   1205 ;	.\src\main.c:241: DelayMS(10);
      0004EB 75 82 0A         [24] 1206 	mov	dpl,#0x0a
      0004EE 12 04 AC         [24] 1207 	lcall	_DelayMS
                                   1208 ;	.\src\main.c:243: mode++;
      0004F1 05 09            [12] 1209 	inc	_mode
                                   1210 ;	.\src\main.c:244: if (mode == 4)
      0004F3 74 04            [12] 1211 	mov	a,#0x04
      0004F5 B5 09 03         [24] 1212 	cjne	a,_mode,00113$
                                   1213 ;	.\src\main.c:245: mode = 0;
      0004F8 75 09 00         [24] 1214 	mov	_mode,#0x00
      0004FB                       1215 00113$:
                                   1216 ;	.\src\main.c:247: setDigits();
      0004FB 12 03 16         [24] 1217 	lcall	_setDigits
      0004FE                       1218 00115$:
                                   1219 ;	.\src\main.c:250: if (!P3_4)
      0004FE 20 B4 1B         [24] 1220 	jb	_P3_4,00118$
                                   1221 ;	.\src\main.c:253: DelayMS(10);
      000501 75 82 0A         [24] 1222 	mov	dpl,#0x0a
      000504 12 04 AC         [24] 1223 	lcall	_DelayMS
                                   1224 ;	.\src\main.c:254: time10ms=0;
      000507 75 0B 00         [24] 1225 	mov	_time10ms,#0x00
                                   1226 ;	.\src\main.c:256: timeSec = 0;
      00050A 75 0C 00         [24] 1227 	mov	_timeSec,#0x00
                                   1228 ;	.\src\main.c:258: timeMin = 0;
      00050D 75 0D 00         [24] 1229 	mov	_timeMin,#0x00
                                   1230 ;	.\src\main.c:260: timeHour = 0;
      000510 75 0E 00         [24] 1231 	mov	_timeHour,#0x00
                                   1232 ;	.\src\main.c:261: DelayMS(10);
      000513 75 82 0A         [24] 1233 	mov	dpl,#0x0a
      000516 12 04 AC         [24] 1234 	lcall	_DelayMS
                                   1235 ;	.\src\main.c:262: setDigits();
                                   1236 ;	.\src\main.c:264: }
      000519 02 03 16         [24] 1237 	ljmp	_setDigits
      00051C                       1238 00118$:
      00051C 22               [24] 1239 	ret
                                   1240 ;------------------------------------------------------------
                                   1241 ;Allocation info for local variables in function 'main'
                                   1242 ;------------------------------------------------------------
                                   1243 ;	.\src\main.c:266: void main(void){
                                   1244 ;	-----------------------------------------
                                   1245 ;	 function main
                                   1246 ;	-----------------------------------------
      00051D                       1247 _main:
                                   1248 ;	.\src\main.c:268: T0init();
      00051D 12 04 13         [24] 1249 	lcall	_T0init
                                   1250 ;	.\src\main.c:270: setDigits();
      000520 12 03 16         [24] 1251 	lcall	_setDigits
                                   1252 ;	.\src\main.c:271: while(1){
      000523                       1253 00102$:
                                   1254 ;	.\src\main.c:273: buttonsCheck();
      000523 12 04 BB         [24] 1255 	lcall	_buttonsCheck
                                   1256 ;	.\src\main.c:275: delayFOR(10);
      000526 75 82 0A         [24] 1257 	mov	dpl,#0x0a
      000529 12 04 9F         [24] 1258 	lcall	_delayFOR
                                   1259 ;	.\src\main.c:277: nextColumn();
      00052C 12 02 C4         [24] 1260 	lcall	_nextColumn
                                   1261 ;	.\src\main.c:279: }
      00052F 80 F2            [24] 1262 	sjmp	00102$
                                   1263 	.area CSEG    (CODE)
                                   1264 	.area CONST   (CODE)
                                   1265 	.area XINIT   (CODE)
                                   1266 	.area CABS    (ABS,CODE)
