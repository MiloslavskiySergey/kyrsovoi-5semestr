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
                                     27 	.globl _F1
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
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _second
                                    118 	.globl _first
                                    119 	.globl _timeHour
                                    120 	.globl _timeMin
                                    121 	.globl _timeSec
                                    122 	.globl _time10ms
                                    123 	.globl _ptrColumn
                                    124 	.globl _mode
                                    125 	.globl _started
                                    126 ;--------------------------------------------------------
                                    127 ; special function registers
                                    128 ;--------------------------------------------------------
                                    129 	.area RSEG    (ABS,DATA)
      000000                        130 	.org 0x0000
                           000080   131 _P0	=	0x0080
                           000081   132 _SP	=	0x0081
                           000082   133 _DPL	=	0x0082
                           000083   134 _DPH	=	0x0083
                           000087   135 _PCON	=	0x0087
                           000088   136 _TCON	=	0x0088
                           000089   137 _TMOD	=	0x0089
                           00008A   138 _TL0	=	0x008a
                           00008B   139 _TL1	=	0x008b
                           00008C   140 _TH0	=	0x008c
                           00008D   141 _TH1	=	0x008d
                           000090   142 _P1	=	0x0090
                           000098   143 _SCON	=	0x0098
                           000099   144 _SBUF	=	0x0099
                           0000A0   145 _P2	=	0x00a0
                           0000A8   146 _IE	=	0x00a8
                           0000B0   147 _P3	=	0x00b0
                           0000B8   148 _IP	=	0x00b8
                           0000D0   149 _PSW	=	0x00d0
                           0000E0   150 _ACC	=	0x00e0
                           0000F0   151 _B	=	0x00f0
                                    152 ;--------------------------------------------------------
                                    153 ; special function bits
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _P0_0	=	0x0080
                           000081   158 _P0_1	=	0x0081
                           000082   159 _P0_2	=	0x0082
                           000083   160 _P0_3	=	0x0083
                           000084   161 _P0_4	=	0x0084
                           000085   162 _P0_5	=	0x0085
                           000086   163 _P0_6	=	0x0086
                           000087   164 _P0_7	=	0x0087
                           000088   165 _IT0	=	0x0088
                           000089   166 _IE0	=	0x0089
                           00008A   167 _IT1	=	0x008a
                           00008B   168 _IE1	=	0x008b
                           00008C   169 _TR0	=	0x008c
                           00008D   170 _TF0	=	0x008d
                           00008E   171 _TR1	=	0x008e
                           00008F   172 _TF1	=	0x008f
                           000090   173 _P1_0	=	0x0090
                           000091   174 _P1_1	=	0x0091
                           000092   175 _P1_2	=	0x0092
                           000093   176 _P1_3	=	0x0093
                           000094   177 _P1_4	=	0x0094
                           000095   178 _P1_5	=	0x0095
                           000096   179 _P1_6	=	0x0096
                           000097   180 _P1_7	=	0x0097
                           000098   181 _RI	=	0x0098
                           000099   182 _TI	=	0x0099
                           00009A   183 _RB8	=	0x009a
                           00009B   184 _TB8	=	0x009b
                           00009C   185 _REN	=	0x009c
                           00009D   186 _SM2	=	0x009d
                           00009E   187 _SM1	=	0x009e
                           00009F   188 _SM0	=	0x009f
                           0000A0   189 _P2_0	=	0x00a0
                           0000A1   190 _P2_1	=	0x00a1
                           0000A2   191 _P2_2	=	0x00a2
                           0000A3   192 _P2_3	=	0x00a3
                           0000A4   193 _P2_4	=	0x00a4
                           0000A5   194 _P2_5	=	0x00a5
                           0000A6   195 _P2_6	=	0x00a6
                           0000A7   196 _P2_7	=	0x00a7
                           0000A8   197 _EX0	=	0x00a8
                           0000A9   198 _ET0	=	0x00a9
                           0000AA   199 _EX1	=	0x00aa
                           0000AB   200 _ET1	=	0x00ab
                           0000AC   201 _ES	=	0x00ac
                           0000AF   202 _EA	=	0x00af
                           0000B0   203 _P3_0	=	0x00b0
                           0000B1   204 _P3_1	=	0x00b1
                           0000B2   205 _P3_2	=	0x00b2
                           0000B3   206 _P3_3	=	0x00b3
                           0000B4   207 _P3_4	=	0x00b4
                           0000B5   208 _P3_5	=	0x00b5
                           0000B6   209 _P3_6	=	0x00b6
                           0000B7   210 _P3_7	=	0x00b7
                           0000B0   211 _RXD	=	0x00b0
                           0000B1   212 _TXD	=	0x00b1
                           0000B2   213 _INT0	=	0x00b2
                           0000B3   214 _INT1	=	0x00b3
                           0000B4   215 _T0	=	0x00b4
                           0000B5   216 _T1	=	0x00b5
                           0000B6   217 _WR	=	0x00b6
                           0000B7   218 _RD	=	0x00b7
                           0000B8   219 _PX0	=	0x00b8
                           0000B9   220 _PT0	=	0x00b9
                           0000BA   221 _PX1	=	0x00ba
                           0000BB   222 _PT1	=	0x00bb
                           0000BC   223 _PS	=	0x00bc
                           0000D0   224 _P	=	0x00d0
                           0000D1   225 _F1	=	0x00d1
                           0000D2   226 _OV	=	0x00d2
                           0000D3   227 _RS0	=	0x00d3
                           0000D4   228 _RS1	=	0x00d4
                           0000D5   229 _F0	=	0x00d5
                           0000D6   230 _AC	=	0x00d6
                           0000D7   231 _CY	=	0x00d7
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable register banks
                                    234 ;--------------------------------------------------------
                                    235 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        236 	.ds 8
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable bit register bank
                                    239 ;--------------------------------------------------------
                                    240 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        241 bits:
      000020                        242 	.ds 1
                           008000   243 	b0 = bits[0]
                           008100   244 	b1 = bits[1]
                           008200   245 	b2 = bits[2]
                           008300   246 	b3 = bits[3]
                           008400   247 	b4 = bits[4]
                           008500   248 	b5 = bits[5]
                           008600   249 	b6 = bits[6]
                           008700   250 	b7 = bits[7]
                                    251 ;--------------------------------------------------------
                                    252 ; internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area DSEG    (DATA)
      000008                        255 _started::
      000008                        256 	.ds 1
      000009                        257 _mode::
      000009                        258 	.ds 1
      00000A                        259 _ptrColumn::
      00000A                        260 	.ds 1
      00000B                        261 _time10ms::
      00000B                        262 	.ds 1
      00000C                        263 _timeSec::
      00000C                        264 	.ds 1
      00000D                        265 _timeMin::
      00000D                        266 	.ds 1
      00000E                        267 _timeHour::
      00000E                        268 	.ds 1
      00000F                        269 _first::
      00000F                        270 	.ds 3
      000012                        271 _second::
      000012                        272 	.ds 3
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable items in internal ram 
                                    275 ;--------------------------------------------------------
                                    276 	.area	OSEG    (OVR,DATA)
      000015                        277 _setData_PARM_2:
      000015                        278 	.ds 3
                                    279 	.area	OSEG    (OVR,DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; Stack segment in internal ram 
                                    282 ;--------------------------------------------------------
                                    283 	.area	SSEG
      000021                        284 __start__stack:
      000021                        285 	.ds	1
                                    286 
                                    287 ;--------------------------------------------------------
                                    288 ; indirectly addressable internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area ISEG    (DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; absolute internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area IABS    (ABS,DATA)
                                    295 	.area IABS    (ABS,DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; bit data
                                    298 ;--------------------------------------------------------
                                    299 	.area BSEG    (BIT)
                                    300 ;--------------------------------------------------------
                                    301 ; paged external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area PSEG    (PAG,XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XSEG    (XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; absolute external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XABS    (ABS,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; external initialized ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XISEG   (XDATA)
                                    316 	.area HOME    (CODE)
                                    317 	.area GSINIT0 (CODE)
                                    318 	.area GSINIT1 (CODE)
                                    319 	.area GSINIT2 (CODE)
                                    320 	.area GSINIT3 (CODE)
                                    321 	.area GSINIT4 (CODE)
                                    322 	.area GSINIT5 (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area CSEG    (CODE)
                                    326 ;--------------------------------------------------------
                                    327 ; interrupt vector 
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
      000000                        330 __interrupt_vect:
      000000 02 00 11         [24]  331 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  332 	reti
      000004                        333 	.ds	7
      00000B 02 04 2F         [24]  334 	ljmp	_T0_int
                                    335 ;--------------------------------------------------------
                                    336 ; global & static initialisations
                                    337 ;--------------------------------------------------------
                                    338 	.area HOME    (CODE)
                                    339 	.area GSINIT  (CODE)
                                    340 	.area GSFINAL (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.globl __sdcc_gsinit_startup
                                    343 	.globl __sdcc_program_startup
                                    344 	.globl __start__stack
                                    345 	.globl __mcs51_genXINIT
                                    346 	.globl __mcs51_genXRAMCLEAR
                                    347 	.globl __mcs51_genRAMCLEAR
                                    348 ;	.\src\main.c:14: unsigned char started = 0;
      00006A 75 08 00         [24]  349 	mov	_started,#0x00
                                    350 ;	.\src\main.c:21: unsigned char mode = 1;
      00006D 75 09 01         [24]  351 	mov	_mode,#0x01
                                    352 ;	.\src\main.c:24: unsigned char ptrColumn = 0;
      000070 75 0A 00         [24]  353 	mov	_ptrColumn,#0x00
                                    354 ;	.\src\main.c:27: unsigned char time10ms = 0;
      000073 75 0B 00         [24]  355 	mov	_time10ms,#0x00
                                    356 ;	.\src\main.c:29: unsigned char timeSec = 0;
      000076 75 0C 00         [24]  357 	mov	_timeSec,#0x00
                                    358 ;	.\src\main.c:31: unsigned char timeMin = 0;
      000079 75 0D 00         [24]  359 	mov	_timeMin,#0x00
                                    360 ;	.\src\main.c:33: unsigned char timeHour = 0;
      00007C 75 0E 00         [24]  361 	mov	_timeHour,#0x00
                                    362 	.area GSFINAL (CODE)
      00007F 02 00 0E         [24]  363 	ljmp	__sdcc_program_startup
                                    364 ;--------------------------------------------------------
                                    365 ; Home
                                    366 ;--------------------------------------------------------
                                    367 	.area HOME    (CODE)
                                    368 	.area HOME    (CODE)
      00000E                        369 __sdcc_program_startup:
      00000E 02 05 22         [24]  370 	ljmp	_main
                                    371 ;	return from main will return to caller
                                    372 ;--------------------------------------------------------
                                    373 ; code
                                    374 ;--------------------------------------------------------
                                    375 	.area CSEG    (CODE)
                                    376 ;------------------------------------------------------------
                                    377 ;Allocation info for local variables in function 'setData'
                                    378 ;------------------------------------------------------------
                                    379 ;array                     Allocated with name '_setData_PARM_2'
                                    380 ;digit                     Allocated to registers r7 
                                    381 ;------------------------------------------------------------
                                    382 ;	.\src\main.c:40: void setData(unsigned char digit, unsigned char *array)
                                    383 ;	-----------------------------------------
                                    384 ;	 function setData
                                    385 ;	-----------------------------------------
      000082                        386 _setData:
                           000007   387 	ar7 = 0x07
                           000006   388 	ar6 = 0x06
                           000005   389 	ar5 = 0x05
                           000004   390 	ar4 = 0x04
                           000003   391 	ar3 = 0x03
                           000002   392 	ar2 = 0x02
                           000001   393 	ar1 = 0x01
                           000000   394 	ar0 = 0x00
                                    395 ;	.\src\main.c:42: switch(digit)
      000082 E5 82            [12]  396 	mov	a,dpl
      000084 FF               [12]  397 	mov	r7,a
      000085 24 F6            [12]  398 	add	a,#0xff - 0x09
      000087 50 01            [24]  399 	jnc	00118$
      000089 22               [24]  400 	ret
      00008A                        401 00118$:
      00008A EF               [12]  402 	mov	a,r7
      00008B 2F               [12]  403 	add	a,r7
      00008C 2F               [12]  404 	add	a,r7
      00008D 90 00 91         [24]  405 	mov	dptr,#00119$
      000090 73               [24]  406 	jmp	@a+dptr
      000091                        407 00119$:
      000091 02 00 AF         [24]  408 	ljmp	00101$
      000094 02 00 E3         [24]  409 	ljmp	00102$
      000097 02 01 19         [24]  410 	ljmp	00103$
      00009A 02 01 50         [24]  411 	ljmp	00104$
      00009D 02 01 86         [24]  412 	ljmp	00105$
      0000A0 02 01 BC         [24]  413 	ljmp	00106$
      0000A3 02 01 F3         [24]  414 	ljmp	00107$
      0000A6 02 02 28         [24]  415 	ljmp	00108$
      0000A9 02 02 5F         [24]  416 	ljmp	00109$
      0000AC 02 02 93         [24]  417 	ljmp	00110$
                                    418 ;	.\src\main.c:45: case 0:
      0000AF                        419 00101$:
                                    420 ;	.\src\main.c:47: array[0] = 0x00;
      0000AF AD 15            [24]  421 	mov	r5,_setData_PARM_2
      0000B1 AE 16            [24]  422 	mov	r6,(_setData_PARM_2 + 1)
      0000B3 AF 17            [24]  423 	mov	r7,(_setData_PARM_2 + 2)
      0000B5 8D 82            [24]  424 	mov	dpl,r5
      0000B7 8E 83            [24]  425 	mov	dph,r6
      0000B9 8F F0            [24]  426 	mov	b,r7
      0000BB E4               [12]  427 	clr	a
      0000BC 12 05 36         [24]  428 	lcall	__gptrput
                                    429 ;	.\src\main.c:49: array[1] = 0x0E;
      0000BF 04               [12]  430 	inc	a
      0000C0 2D               [12]  431 	add	a,r5
      0000C1 FA               [12]  432 	mov	r2,a
      0000C2 E4               [12]  433 	clr	a
      0000C3 3E               [12]  434 	addc	a,r6
      0000C4 FB               [12]  435 	mov	r3,a
      0000C5 8F 04            [24]  436 	mov	ar4,r7
      0000C7 8A 82            [24]  437 	mov	dpl,r2
      0000C9 8B 83            [24]  438 	mov	dph,r3
      0000CB 8C F0            [24]  439 	mov	b,r4
      0000CD 74 0E            [12]  440 	mov	a,#0x0e
      0000CF 12 05 36         [24]  441 	lcall	__gptrput
                                    442 ;	.\src\main.c:51: array[2] = 0x00;
      0000D2 74 02            [12]  443 	mov	a,#0x02
      0000D4 2D               [12]  444 	add	a,r5
      0000D5 FD               [12]  445 	mov	r5,a
      0000D6 E4               [12]  446 	clr	a
      0000D7 3E               [12]  447 	addc	a,r6
      0000D8 FE               [12]  448 	mov	r6,a
      0000D9 8D 82            [24]  449 	mov	dpl,r5
      0000DB 8E 83            [24]  450 	mov	dph,r6
      0000DD 8F F0            [24]  451 	mov	b,r7
      0000DF E4               [12]  452 	clr	a
                                    453 ;	.\src\main.c:56: break;
      0000E0 02 05 36         [24]  454 	ljmp	__gptrput
                                    455 ;	.\src\main.c:57: case 1:
      0000E3                        456 00102$:
                                    457 ;	.\src\main.c:58: array[0] = 0x1B;
      0000E3 AD 15            [24]  458 	mov	r5,_setData_PARM_2
      0000E5 AE 16            [24]  459 	mov	r6,(_setData_PARM_2 + 1)
      0000E7 AF 17            [24]  460 	mov	r7,(_setData_PARM_2 + 2)
      0000E9 8D 82            [24]  461 	mov	dpl,r5
      0000EB 8E 83            [24]  462 	mov	dph,r6
      0000ED 8F F0            [24]  463 	mov	b,r7
      0000EF 74 1B            [12]  464 	mov	a,#0x1b
      0000F1 12 05 36         [24]  465 	lcall	__gptrput
                                    466 ;	.\src\main.c:59: array[1] = 0x1D;
      0000F4 74 01            [12]  467 	mov	a,#0x01
      0000F6 2D               [12]  468 	add	a,r5
      0000F7 FA               [12]  469 	mov	r2,a
      0000F8 E4               [12]  470 	clr	a
      0000F9 3E               [12]  471 	addc	a,r6
      0000FA FB               [12]  472 	mov	r3,a
      0000FB 8F 04            [24]  473 	mov	ar4,r7
      0000FD 8A 82            [24]  474 	mov	dpl,r2
      0000FF 8B 83            [24]  475 	mov	dph,r3
      000101 8C F0            [24]  476 	mov	b,r4
      000103 74 1D            [12]  477 	mov	a,#0x1d
      000105 12 05 36         [24]  478 	lcall	__gptrput
                                    479 ;	.\src\main.c:60: array[2] = 0x00;
      000108 74 02            [12]  480 	mov	a,#0x02
      00010A 2D               [12]  481 	add	a,r5
      00010B FD               [12]  482 	mov	r5,a
      00010C E4               [12]  483 	clr	a
      00010D 3E               [12]  484 	addc	a,r6
      00010E FE               [12]  485 	mov	r6,a
      00010F 8D 82            [24]  486 	mov	dpl,r5
      000111 8E 83            [24]  487 	mov	dph,r6
      000113 8F F0            [24]  488 	mov	b,r7
      000115 E4               [12]  489 	clr	a
                                    490 ;	.\src\main.c:61: break;
      000116 02 05 36         [24]  491 	ljmp	__gptrput
                                    492 ;	.\src\main.c:62: case 2:
      000119                        493 00103$:
                                    494 ;	.\src\main.c:63: array[0] = 0x04;
      000119 AD 15            [24]  495 	mov	r5,_setData_PARM_2
      00011B AE 16            [24]  496 	mov	r6,(_setData_PARM_2 + 1)
      00011D AF 17            [24]  497 	mov	r7,(_setData_PARM_2 + 2)
      00011F 8D 82            [24]  498 	mov	dpl,r5
      000121 8E 83            [24]  499 	mov	dph,r6
      000123 8F F0            [24]  500 	mov	b,r7
      000125 74 04            [12]  501 	mov	a,#0x04
      000127 12 05 36         [24]  502 	lcall	__gptrput
                                    503 ;	.\src\main.c:64: array[1] = 0x0A;
      00012A 74 01            [12]  504 	mov	a,#0x01
      00012C 2D               [12]  505 	add	a,r5
      00012D FA               [12]  506 	mov	r2,a
      00012E E4               [12]  507 	clr	a
      00012F 3E               [12]  508 	addc	a,r6
      000130 FB               [12]  509 	mov	r3,a
      000131 8F 04            [24]  510 	mov	ar4,r7
      000133 8A 82            [24]  511 	mov	dpl,r2
      000135 8B 83            [24]  512 	mov	dph,r3
      000137 8C F0            [24]  513 	mov	b,r4
      000139 74 0A            [12]  514 	mov	a,#0x0a
      00013B 12 05 36         [24]  515 	lcall	__gptrput
                                    516 ;	.\src\main.c:65: array[2] = 0x08;
      00013E 74 02            [12]  517 	mov	a,#0x02
      000140 2D               [12]  518 	add	a,r5
      000141 FD               [12]  519 	mov	r5,a
      000142 E4               [12]  520 	clr	a
      000143 3E               [12]  521 	addc	a,r6
      000144 FE               [12]  522 	mov	r6,a
      000145 8D 82            [24]  523 	mov	dpl,r5
      000147 8E 83            [24]  524 	mov	dph,r6
      000149 8F F0            [24]  525 	mov	b,r7
      00014B 74 08            [12]  526 	mov	a,#0x08
                                    527 ;	.\src\main.c:66: break;
      00014D 02 05 36         [24]  528 	ljmp	__gptrput
                                    529 ;	.\src\main.c:67: case 3:
      000150                        530 00104$:
                                    531 ;	.\src\main.c:68: array[0] = 0x0A;
      000150 AD 15            [24]  532 	mov	r5,_setData_PARM_2
      000152 AE 16            [24]  533 	mov	r6,(_setData_PARM_2 + 1)
      000154 AF 17            [24]  534 	mov	r7,(_setData_PARM_2 + 2)
      000156 8D 82            [24]  535 	mov	dpl,r5
      000158 8E 83            [24]  536 	mov	dph,r6
      00015A 8F F0            [24]  537 	mov	b,r7
      00015C 74 0A            [12]  538 	mov	a,#0x0a
      00015E 12 05 36         [24]  539 	lcall	__gptrput
                                    540 ;	.\src\main.c:69: array[1] = 0x0A;
      000161 74 01            [12]  541 	mov	a,#0x01
      000163 2D               [12]  542 	add	a,r5
      000164 FA               [12]  543 	mov	r2,a
      000165 E4               [12]  544 	clr	a
      000166 3E               [12]  545 	addc	a,r6
      000167 FB               [12]  546 	mov	r3,a
      000168 8F 04            [24]  547 	mov	ar4,r7
      00016A 8A 82            [24]  548 	mov	dpl,r2
      00016C 8B 83            [24]  549 	mov	dph,r3
      00016E 8C F0            [24]  550 	mov	b,r4
      000170 74 0A            [12]  551 	mov	a,#0x0a
      000172 12 05 36         [24]  552 	lcall	__gptrput
                                    553 ;	.\src\main.c:70: array[2] = 0x00;
      000175 74 02            [12]  554 	mov	a,#0x02
      000177 2D               [12]  555 	add	a,r5
      000178 FD               [12]  556 	mov	r5,a
      000179 E4               [12]  557 	clr	a
      00017A 3E               [12]  558 	addc	a,r6
      00017B FE               [12]  559 	mov	r6,a
      00017C 8D 82            [24]  560 	mov	dpl,r5
      00017E 8E 83            [24]  561 	mov	dph,r6
      000180 8F F0            [24]  562 	mov	b,r7
      000182 E4               [12]  563 	clr	a
                                    564 ;	.\src\main.c:71: break;
      000183 02 05 36         [24]  565 	ljmp	__gptrput
                                    566 ;	.\src\main.c:72: case 4:
      000186                        567 00105$:
                                    568 ;	.\src\main.c:73: array[0] = 0x18;
      000186 AD 15            [24]  569 	mov	r5,_setData_PARM_2
      000188 AE 16            [24]  570 	mov	r6,(_setData_PARM_2 + 1)
      00018A AF 17            [24]  571 	mov	r7,(_setData_PARM_2 + 2)
      00018C 8D 82            [24]  572 	mov	dpl,r5
      00018E 8E 83            [24]  573 	mov	dph,r6
      000190 8F F0            [24]  574 	mov	b,r7
      000192 74 18            [12]  575 	mov	a,#0x18
      000194 12 05 36         [24]  576 	lcall	__gptrput
                                    577 ;	.\src\main.c:74: array[1] = 0x1B;
      000197 74 01            [12]  578 	mov	a,#0x01
      000199 2D               [12]  579 	add	a,r5
      00019A FA               [12]  580 	mov	r2,a
      00019B E4               [12]  581 	clr	a
      00019C 3E               [12]  582 	addc	a,r6
      00019D FB               [12]  583 	mov	r3,a
      00019E 8F 04            [24]  584 	mov	ar4,r7
      0001A0 8A 82            [24]  585 	mov	dpl,r2
      0001A2 8B 83            [24]  586 	mov	dph,r3
      0001A4 8C F0            [24]  587 	mov	b,r4
      0001A6 74 1B            [12]  588 	mov	a,#0x1b
      0001A8 12 05 36         [24]  589 	lcall	__gptrput
                                    590 ;	.\src\main.c:75: array[2] = 0x00;
      0001AB 74 02            [12]  591 	mov	a,#0x02
      0001AD 2D               [12]  592 	add	a,r5
      0001AE FD               [12]  593 	mov	r5,a
      0001AF E4               [12]  594 	clr	a
      0001B0 3E               [12]  595 	addc	a,r6
      0001B1 FE               [12]  596 	mov	r6,a
      0001B2 8D 82            [24]  597 	mov	dpl,r5
      0001B4 8E 83            [24]  598 	mov	dph,r6
      0001B6 8F F0            [24]  599 	mov	b,r7
      0001B8 E4               [12]  600 	clr	a
                                    601 ;	.\src\main.c:76: break;
      0001B9 02 05 36         [24]  602 	ljmp	__gptrput
                                    603 ;	.\src\main.c:77: case 5:
      0001BC                        604 00106$:
                                    605 ;	.\src\main.c:78: array[0] = 0x08;
      0001BC AD 15            [24]  606 	mov	r5,_setData_PARM_2
      0001BE AE 16            [24]  607 	mov	r6,(_setData_PARM_2 + 1)
      0001C0 AF 17            [24]  608 	mov	r7,(_setData_PARM_2 + 2)
      0001C2 8D 82            [24]  609 	mov	dpl,r5
      0001C4 8E 83            [24]  610 	mov	dph,r6
      0001C6 8F F0            [24]  611 	mov	b,r7
      0001C8 74 08            [12]  612 	mov	a,#0x08
      0001CA 12 05 36         [24]  613 	lcall	__gptrput
                                    614 ;	.\src\main.c:79: array[1] = 0x0A;
      0001CD 74 01            [12]  615 	mov	a,#0x01
      0001CF 2D               [12]  616 	add	a,r5
      0001D0 FA               [12]  617 	mov	r2,a
      0001D1 E4               [12]  618 	clr	a
      0001D2 3E               [12]  619 	addc	a,r6
      0001D3 FB               [12]  620 	mov	r3,a
      0001D4 8F 04            [24]  621 	mov	ar4,r7
      0001D6 8A 82            [24]  622 	mov	dpl,r2
      0001D8 8B 83            [24]  623 	mov	dph,r3
      0001DA 8C F0            [24]  624 	mov	b,r4
      0001DC 74 0A            [12]  625 	mov	a,#0x0a
      0001DE 12 05 36         [24]  626 	lcall	__gptrput
                                    627 ;	.\src\main.c:80: array[2] = 0x02;
      0001E1 74 02            [12]  628 	mov	a,#0x02
      0001E3 2D               [12]  629 	add	a,r5
      0001E4 FD               [12]  630 	mov	r5,a
      0001E5 E4               [12]  631 	clr	a
      0001E6 3E               [12]  632 	addc	a,r6
      0001E7 FE               [12]  633 	mov	r6,a
      0001E8 8D 82            [24]  634 	mov	dpl,r5
      0001EA 8E 83            [24]  635 	mov	dph,r6
      0001EC 8F F0            [24]  636 	mov	b,r7
      0001EE 74 02            [12]  637 	mov	a,#0x02
                                    638 ;	.\src\main.c:81: break;
      0001F0 02 05 36         [24]  639 	ljmp	__gptrput
                                    640 ;	.\src\main.c:82: case 6:
      0001F3                        641 00107$:
                                    642 ;	.\src\main.c:83: array[0] = 0x00;
      0001F3 AD 15            [24]  643 	mov	r5,_setData_PARM_2
      0001F5 AE 16            [24]  644 	mov	r6,(_setData_PARM_2 + 1)
      0001F7 AF 17            [24]  645 	mov	r7,(_setData_PARM_2 + 2)
      0001F9 8D 82            [24]  646 	mov	dpl,r5
      0001FB 8E 83            [24]  647 	mov	dph,r6
      0001FD 8F F0            [24]  648 	mov	b,r7
      0001FF E4               [12]  649 	clr	a
      000200 12 05 36         [24]  650 	lcall	__gptrput
                                    651 ;	.\src\main.c:84: array[1] = 0x0A;
      000203 04               [12]  652 	inc	a
      000204 2D               [12]  653 	add	a,r5
      000205 FA               [12]  654 	mov	r2,a
      000206 E4               [12]  655 	clr	a
      000207 3E               [12]  656 	addc	a,r6
      000208 FB               [12]  657 	mov	r3,a
      000209 8F 04            [24]  658 	mov	ar4,r7
      00020B 8A 82            [24]  659 	mov	dpl,r2
      00020D 8B 83            [24]  660 	mov	dph,r3
      00020F 8C F0            [24]  661 	mov	b,r4
      000211 74 0A            [12]  662 	mov	a,#0x0a
      000213 12 05 36         [24]  663 	lcall	__gptrput
                                    664 ;	.\src\main.c:85: array[2] = 0x02;
      000216 74 02            [12]  665 	mov	a,#0x02
      000218 2D               [12]  666 	add	a,r5
      000219 FD               [12]  667 	mov	r5,a
      00021A E4               [12]  668 	clr	a
      00021B 3E               [12]  669 	addc	a,r6
      00021C FE               [12]  670 	mov	r6,a
      00021D 8D 82            [24]  671 	mov	dpl,r5
      00021F 8E 83            [24]  672 	mov	dph,r6
      000221 8F F0            [24]  673 	mov	b,r7
      000223 74 02            [12]  674 	mov	a,#0x02
                                    675 ;	.\src\main.c:86: break;
      000225 02 05 36         [24]  676 	ljmp	__gptrput
                                    677 ;	.\src\main.c:87: case 7:
      000228                        678 00108$:
                                    679 ;	.\src\main.c:88: array[0] = 0x06;
      000228 AD 15            [24]  680 	mov	r5,_setData_PARM_2
      00022A AE 16            [24]  681 	mov	r6,(_setData_PARM_2 + 1)
      00022C AF 17            [24]  682 	mov	r7,(_setData_PARM_2 + 2)
      00022E 8D 82            [24]  683 	mov	dpl,r5
      000230 8E 83            [24]  684 	mov	dph,r6
      000232 8F F0            [24]  685 	mov	b,r7
      000234 74 06            [12]  686 	mov	a,#0x06
      000236 12 05 36         [24]  687 	lcall	__gptrput
                                    688 ;	.\src\main.c:89: array[1] = 0x1A;
      000239 74 01            [12]  689 	mov	a,#0x01
      00023B 2D               [12]  690 	add	a,r5
      00023C FA               [12]  691 	mov	r2,a
      00023D E4               [12]  692 	clr	a
      00023E 3E               [12]  693 	addc	a,r6
      00023F FB               [12]  694 	mov	r3,a
      000240 8F 04            [24]  695 	mov	ar4,r7
      000242 8A 82            [24]  696 	mov	dpl,r2
      000244 8B 83            [24]  697 	mov	dph,r3
      000246 8C F0            [24]  698 	mov	b,r4
      000248 74 1A            [12]  699 	mov	a,#0x1a
      00024A 12 05 36         [24]  700 	lcall	__gptrput
                                    701 ;	.\src\main.c:90: array[2] = 0x1C;
      00024D 74 02            [12]  702 	mov	a,#0x02
      00024F 2D               [12]  703 	add	a,r5
      000250 FD               [12]  704 	mov	r5,a
      000251 E4               [12]  705 	clr	a
      000252 3E               [12]  706 	addc	a,r6
      000253 FE               [12]  707 	mov	r6,a
      000254 8D 82            [24]  708 	mov	dpl,r5
      000256 8E 83            [24]  709 	mov	dph,r6
      000258 8F F0            [24]  710 	mov	b,r7
      00025A 74 1C            [12]  711 	mov	a,#0x1c
                                    712 ;	.\src\main.c:91: break;
                                    713 ;	.\src\main.c:92: case 8:
      00025C 02 05 36         [24]  714 	ljmp	__gptrput
      00025F                        715 00109$:
                                    716 ;	.\src\main.c:93: array[0] = 0x00;
      00025F AD 15            [24]  717 	mov	r5,_setData_PARM_2
      000261 AE 16            [24]  718 	mov	r6,(_setData_PARM_2 + 1)
      000263 AF 17            [24]  719 	mov	r7,(_setData_PARM_2 + 2)
      000265 8D 82            [24]  720 	mov	dpl,r5
      000267 8E 83            [24]  721 	mov	dph,r6
      000269 8F F0            [24]  722 	mov	b,r7
      00026B E4               [12]  723 	clr	a
      00026C 12 05 36         [24]  724 	lcall	__gptrput
                                    725 ;	.\src\main.c:94: array[1] = 0x0A;
      00026F 04               [12]  726 	inc	a
      000270 2D               [12]  727 	add	a,r5
      000271 FA               [12]  728 	mov	r2,a
      000272 E4               [12]  729 	clr	a
      000273 3E               [12]  730 	addc	a,r6
      000274 FB               [12]  731 	mov	r3,a
      000275 8F 04            [24]  732 	mov	ar4,r7
      000277 8A 82            [24]  733 	mov	dpl,r2
      000279 8B 83            [24]  734 	mov	dph,r3
      00027B 8C F0            [24]  735 	mov	b,r4
      00027D 74 0A            [12]  736 	mov	a,#0x0a
      00027F 12 05 36         [24]  737 	lcall	__gptrput
                                    738 ;	.\src\main.c:95: array[2] = 0x00;
      000282 74 02            [12]  739 	mov	a,#0x02
      000284 2D               [12]  740 	add	a,r5
      000285 FD               [12]  741 	mov	r5,a
      000286 E4               [12]  742 	clr	a
      000287 3E               [12]  743 	addc	a,r6
      000288 FE               [12]  744 	mov	r6,a
      000289 8D 82            [24]  745 	mov	dpl,r5
      00028B 8E 83            [24]  746 	mov	dph,r6
      00028D 8F F0            [24]  747 	mov	b,r7
      00028F E4               [12]  748 	clr	a
                                    749 ;	.\src\main.c:96: break;
                                    750 ;	.\src\main.c:97: case 9:
      000290 02 05 36         [24]  751 	ljmp	__gptrput
      000293                        752 00110$:
                                    753 ;	.\src\main.c:98: array[0] = 0x08;
      000293 AD 15            [24]  754 	mov	r5,_setData_PARM_2
      000295 AE 16            [24]  755 	mov	r6,(_setData_PARM_2 + 1)
      000297 AF 17            [24]  756 	mov	r7,(_setData_PARM_2 + 2)
      000299 8D 82            [24]  757 	mov	dpl,r5
      00029B 8E 83            [24]  758 	mov	dph,r6
      00029D 8F F0            [24]  759 	mov	b,r7
      00029F 74 08            [12]  760 	mov	a,#0x08
      0002A1 12 05 36         [24]  761 	lcall	__gptrput
                                    762 ;	.\src\main.c:99: array[1] = 0x0A;
      0002A4 74 01            [12]  763 	mov	a,#0x01
      0002A6 2D               [12]  764 	add	a,r5
      0002A7 FA               [12]  765 	mov	r2,a
      0002A8 E4               [12]  766 	clr	a
      0002A9 3E               [12]  767 	addc	a,r6
      0002AA FB               [12]  768 	mov	r3,a
      0002AB 8F 04            [24]  769 	mov	ar4,r7
      0002AD 8A 82            [24]  770 	mov	dpl,r2
      0002AF 8B 83            [24]  771 	mov	dph,r3
      0002B1 8C F0            [24]  772 	mov	b,r4
      0002B3 74 0A            [12]  773 	mov	a,#0x0a
      0002B5 12 05 36         [24]  774 	lcall	__gptrput
                                    775 ;	.\src\main.c:100: array[2] = 0x00;
      0002B8 74 02            [12]  776 	mov	a,#0x02
      0002BA 2D               [12]  777 	add	a,r5
      0002BB FD               [12]  778 	mov	r5,a
      0002BC E4               [12]  779 	clr	a
      0002BD 3E               [12]  780 	addc	a,r6
      0002BE FE               [12]  781 	mov	r6,a
      0002BF 8D 82            [24]  782 	mov	dpl,r5
      0002C1 8E 83            [24]  783 	mov	dph,r6
      0002C3 8F F0            [24]  784 	mov	b,r7
      0002C5 E4               [12]  785 	clr	a
                                    786 ;	.\src\main.c:102: }
                                    787 ;	.\src\main.c:103: }
      0002C6 02 05 36         [24]  788 	ljmp	__gptrput
                                    789 ;------------------------------------------------------------
                                    790 ;Allocation info for local variables in function 'nextColumn'
                                    791 ;------------------------------------------------------------
                                    792 ;	.\src\main.c:106: void nextColumn(void)
                                    793 ;	-----------------------------------------
                                    794 ;	 function nextColumn
                                    795 ;	-----------------------------------------
      0002C9                        796 _nextColumn:
                                    797 ;	.\src\main.c:111: if (ptrColumn < 3)
      0002C9 74 FD            [12]  798 	mov	a,#0x100 - 0x03
      0002CB 25 0A            [12]  799 	add	a,_ptrColumn
      0002CD 40 11            [24]  800 	jc	00102$
                                    801 ;	.\src\main.c:112: P1 = (ptrColumn << 5) | first[ptrColumn];
      0002CF E5 0A            [12]  802 	mov	a,_ptrColumn
      0002D1 C4               [12]  803 	swap	a
      0002D2 23               [12]  804 	rl	a
      0002D3 54 E0            [12]  805 	anl	a,#0xe0
      0002D5 FF               [12]  806 	mov	r7,a
      0002D6 E5 0A            [12]  807 	mov	a,_ptrColumn
      0002D8 24 0F            [12]  808 	add	a,#_first
      0002DA F9               [12]  809 	mov	r1,a
      0002DB E7               [12]  810 	mov	a,@r1
      0002DC FE               [12]  811 	mov	r6,a
      0002DD 4F               [12]  812 	orl	a,r7
      0002DE F5 90            [12]  813 	mov	_P1,a
      0002E0                        814 00102$:
                                    815 ;	.\src\main.c:114: if (ptrColumn == 3)
      0002E0 74 03            [12]  816 	mov	a,#0x03
      0002E2 B5 0A 0C         [24]  817 	cjne	a,_ptrColumn,00104$
                                    818 ;	.\src\main.c:115: P1 = (ptrColumn << 5) | 0x1F;
      0002E5 E5 0A            [12]  819 	mov	a,_ptrColumn
      0002E7 C4               [12]  820 	swap	a
      0002E8 23               [12]  821 	rl	a
      0002E9 54 E0            [12]  822 	anl	a,#0xe0
      0002EB FF               [12]  823 	mov	r7,a
      0002EC 74 1F            [12]  824 	mov	a,#0x1f
      0002EE 4F               [12]  825 	orl	a,r7
      0002EF F5 90            [12]  826 	mov	_P1,a
      0002F1                        827 00104$:
                                    828 ;	.\src\main.c:117: if (ptrColumn > 3 && ptrColumn < 7)
      0002F1 E5 0A            [12]  829 	mov	a,_ptrColumn
      0002F3 24 FC            [12]  830 	add	a,#0xff - 0x03
      0002F5 50 19            [24]  831 	jnc	00106$
      0002F7 74 F9            [12]  832 	mov	a,#0x100 - 0x07
      0002F9 25 0A            [12]  833 	add	a,_ptrColumn
      0002FB 40 13            [24]  834 	jc	00106$
                                    835 ;	.\src\main.c:118: P1 = (ptrColumn << 5) | second[ptrColumn - 4];
      0002FD E5 0A            [12]  836 	mov	a,_ptrColumn
      0002FF FF               [12]  837 	mov	r7,a
      000300 C4               [12]  838 	swap	a
      000301 23               [12]  839 	rl	a
      000302 54 E0            [12]  840 	anl	a,#0xe0
      000304 FE               [12]  841 	mov	r6,a
      000305 EF               [12]  842 	mov	a,r7
      000306 24 FC            [12]  843 	add	a,#0xfc
      000308 24 12            [12]  844 	add	a,#_second
      00030A F9               [12]  845 	mov	r1,a
      00030B E7               [12]  846 	mov	a,@r1
      00030C FF               [12]  847 	mov	r7,a
      00030D 4E               [12]  848 	orl	a,r6
      00030E F5 90            [12]  849 	mov	_P1,a
      000310                        850 00106$:
                                    851 ;	.\src\main.c:120: ptrColumn++;
      000310 05 0A            [12]  852 	inc	_ptrColumn
                                    853 ;	.\src\main.c:122: if (ptrColumn == countColumn)
      000312 74 07            [12]  854 	mov	a,#0x07
      000314 B5 0A 03         [24]  855 	cjne	a,_ptrColumn,00110$
                                    856 ;	.\src\main.c:123: ptrColumn = 0;
      000317 75 0A 00         [24]  857 	mov	_ptrColumn,#0x00
      00031A                        858 00110$:
                                    859 ;	.\src\main.c:124: }
      00031A 22               [24]  860 	ret
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'setDigits'
                                    863 ;------------------------------------------------------------
                                    864 ;	.\src\main.c:128: void setDigits()
                                    865 ;	-----------------------------------------
                                    866 ;	 function setDigits
                                    867 ;	-----------------------------------------
      00031B                        868 _setDigits:
                                    869 ;	.\src\main.c:130: switch(mode)
      00031B E5 09            [12]  870 	mov	a,_mode
      00031D 24 FC            [12]  871 	add	a,#0xff - 0x03
      00031F 50 01            [24]  872 	jnc	00112$
      000321 22               [24]  873 	ret
      000322                        874 00112$:
      000322 E5 09            [12]  875 	mov	a,_mode
      000324 75 F0 03         [24]  876 	mov	b,#0x03
      000327 A4               [48]  877 	mul	ab
      000328 90 03 2C         [24]  878 	mov	dptr,#00113$
      00032B 73               [24]  879 	jmp	@a+dptr
      00032C                        880 00113$:
      00032C 02 03 38         [24]  881 	ljmp	00101$
      00032F 02 03 70         [24]  882 	ljmp	00102$
      000332 02 03 A8         [24]  883 	ljmp	00103$
      000335 02 03 E0         [24]  884 	ljmp	00104$
                                    885 ;	.\src\main.c:132: case 0:		
      000338                        886 00101$:
                                    887 ;	.\src\main.c:133: setData(time10ms/10, &first[0]);	
      000338 AE 0B            [24]  888 	mov	r6,_time10ms
      00033A 7F 00            [12]  889 	mov	r7,#0x00
      00033C 75 15 0A         [24]  890 	mov	__divsint_PARM_2,#0x0a
                                    891 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00033F 8F 16            [24]  892 	mov	(__divsint_PARM_2 + 1),r7
      000341 8E 82            [24]  893 	mov	dpl,r6
      000343 8F 83            [24]  894 	mov	dph,r7
      000345 12 05 FD         [24]  895 	lcall	__divsint
      000348 75 15 0F         [24]  896 	mov	_setData_PARM_2,#_first
      00034B 75 16 00         [24]  897 	mov	(_setData_PARM_2 + 1),#0x00
      00034E 75 17 40         [24]  898 	mov	(_setData_PARM_2 + 2),#0x40
      000351 12 00 82         [24]  899 	lcall	_setData
                                    900 ;	.\src\main.c:134: setData(time10ms%10, &second[0]);
      000354 AE 0B            [24]  901 	mov	r6,_time10ms
      000356 7F 00            [12]  902 	mov	r7,#0x00
      000358 75 15 0A         [24]  903 	mov	__modsint_PARM_2,#0x0a
                                    904 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00035B 8F 16            [24]  905 	mov	(__modsint_PARM_2 + 1),r7
      00035D 8E 82            [24]  906 	mov	dpl,r6
      00035F 8F 83            [24]  907 	mov	dph,r7
      000361 12 05 C7         [24]  908 	lcall	__modsint
      000364 75 15 12         [24]  909 	mov	_setData_PARM_2,#_second
      000367 75 16 00         [24]  910 	mov	(_setData_PARM_2 + 1),#0x00
      00036A 75 17 40         [24]  911 	mov	(_setData_PARM_2 + 2),#0x40
                                    912 ;	.\src\main.c:135: break;
      00036D 02 00 82         [24]  913 	ljmp	_setData
                                    914 ;	.\src\main.c:136: case 1:
      000370                        915 00102$:
                                    916 ;	.\src\main.c:137: setData(timeSec/10, &first[0]);
      000370 AE 0C            [24]  917 	mov	r6,_timeSec
      000372 7F 00            [12]  918 	mov	r7,#0x00
      000374 75 15 0A         [24]  919 	mov	__divsint_PARM_2,#0x0a
                                    920 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000377 8F 16            [24]  921 	mov	(__divsint_PARM_2 + 1),r7
      000379 8E 82            [24]  922 	mov	dpl,r6
      00037B 8F 83            [24]  923 	mov	dph,r7
      00037D 12 05 FD         [24]  924 	lcall	__divsint
      000380 75 15 0F         [24]  925 	mov	_setData_PARM_2,#_first
      000383 75 16 00         [24]  926 	mov	(_setData_PARM_2 + 1),#0x00
      000386 75 17 40         [24]  927 	mov	(_setData_PARM_2 + 2),#0x40
      000389 12 00 82         [24]  928 	lcall	_setData
                                    929 ;	.\src\main.c:138: setData(timeSec%10, &second[0]);
      00038C AE 0C            [24]  930 	mov	r6,_timeSec
      00038E 7F 00            [12]  931 	mov	r7,#0x00
      000390 75 15 0A         [24]  932 	mov	__modsint_PARM_2,#0x0a
                                    933 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000393 8F 16            [24]  934 	mov	(__modsint_PARM_2 + 1),r7
      000395 8E 82            [24]  935 	mov	dpl,r6
      000397 8F 83            [24]  936 	mov	dph,r7
      000399 12 05 C7         [24]  937 	lcall	__modsint
      00039C 75 15 12         [24]  938 	mov	_setData_PARM_2,#_second
      00039F 75 16 00         [24]  939 	mov	(_setData_PARM_2 + 1),#0x00
      0003A2 75 17 40         [24]  940 	mov	(_setData_PARM_2 + 2),#0x40
                                    941 ;	.\src\main.c:139: break;
      0003A5 02 00 82         [24]  942 	ljmp	_setData
                                    943 ;	.\src\main.c:140: case 2:
      0003A8                        944 00103$:
                                    945 ;	.\src\main.c:141: setData(timeMin/10, &first[0]);
      0003A8 AE 0D            [24]  946 	mov	r6,_timeMin
      0003AA 7F 00            [12]  947 	mov	r7,#0x00
      0003AC 75 15 0A         [24]  948 	mov	__divsint_PARM_2,#0x0a
                                    949 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0003AF 8F 16            [24]  950 	mov	(__divsint_PARM_2 + 1),r7
      0003B1 8E 82            [24]  951 	mov	dpl,r6
      0003B3 8F 83            [24]  952 	mov	dph,r7
      0003B5 12 05 FD         [24]  953 	lcall	__divsint
      0003B8 75 15 0F         [24]  954 	mov	_setData_PARM_2,#_first
      0003BB 75 16 00         [24]  955 	mov	(_setData_PARM_2 + 1),#0x00
      0003BE 75 17 40         [24]  956 	mov	(_setData_PARM_2 + 2),#0x40
      0003C1 12 00 82         [24]  957 	lcall	_setData
                                    958 ;	.\src\main.c:142: setData(timeMin%10, &second[0]);
      0003C4 AE 0D            [24]  959 	mov	r6,_timeMin
      0003C6 7F 00            [12]  960 	mov	r7,#0x00
      0003C8 75 15 0A         [24]  961 	mov	__modsint_PARM_2,#0x0a
                                    962 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0003CB 8F 16            [24]  963 	mov	(__modsint_PARM_2 + 1),r7
      0003CD 8E 82            [24]  964 	mov	dpl,r6
      0003CF 8F 83            [24]  965 	mov	dph,r7
      0003D1 12 05 C7         [24]  966 	lcall	__modsint
      0003D4 75 15 12         [24]  967 	mov	_setData_PARM_2,#_second
      0003D7 75 16 00         [24]  968 	mov	(_setData_PARM_2 + 1),#0x00
      0003DA 75 17 40         [24]  969 	mov	(_setData_PARM_2 + 2),#0x40
                                    970 ;	.\src\main.c:143: break;
                                    971 ;	.\src\main.c:144: case 3:
      0003DD 02 00 82         [24]  972 	ljmp	_setData
      0003E0                        973 00104$:
                                    974 ;	.\src\main.c:145: setData(timeHour/10, &first[0]);
      0003E0 AE 0E            [24]  975 	mov	r6,_timeHour
      0003E2 7F 00            [12]  976 	mov	r7,#0x00
      0003E4 75 15 0A         [24]  977 	mov	__divsint_PARM_2,#0x0a
                                    978 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0003E7 8F 16            [24]  979 	mov	(__divsint_PARM_2 + 1),r7
      0003E9 8E 82            [24]  980 	mov	dpl,r6
      0003EB 8F 83            [24]  981 	mov	dph,r7
      0003ED 12 05 FD         [24]  982 	lcall	__divsint
      0003F0 75 15 0F         [24]  983 	mov	_setData_PARM_2,#_first
      0003F3 75 16 00         [24]  984 	mov	(_setData_PARM_2 + 1),#0x00
      0003F6 75 17 40         [24]  985 	mov	(_setData_PARM_2 + 2),#0x40
      0003F9 12 00 82         [24]  986 	lcall	_setData
                                    987 ;	.\src\main.c:146: setData(timeHour%10, &second[0]);			
      0003FC AE 0E            [24]  988 	mov	r6,_timeHour
      0003FE 7F 00            [12]  989 	mov	r7,#0x00
      000400 75 15 0A         [24]  990 	mov	__modsint_PARM_2,#0x0a
                                    991 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000403 8F 16            [24]  992 	mov	(__modsint_PARM_2 + 1),r7
      000405 8E 82            [24]  993 	mov	dpl,r6
      000407 8F 83            [24]  994 	mov	dph,r7
      000409 12 05 C7         [24]  995 	lcall	__modsint
      00040C 75 15 12         [24]  996 	mov	_setData_PARM_2,#_second
      00040F 75 16 00         [24]  997 	mov	(_setData_PARM_2 + 1),#0x00
      000412 75 17 40         [24]  998 	mov	(_setData_PARM_2 + 2),#0x40
                                    999 ;	.\src\main.c:148: }
                                   1000 ;	.\src\main.c:149: }
      000415 02 00 82         [24] 1001 	ljmp	_setData
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'T0init'
                                   1004 ;------------------------------------------------------------
                                   1005 ;	.\src\main.c:152: void T0init(void)
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function T0init
                                   1008 ;	-----------------------------------------
      000418                       1009 _T0init:
                                   1010 ;	.\src\main.c:154: TR0=0;
                                   1011 ;	assignBit
      000418 C2 8C            [12] 1012 	clr	_TR0
                                   1013 ;	.\src\main.c:155: TMOD=(TMOD&0xf0)|0x1;
      00041A E5 89            [12] 1014 	mov	a,_TMOD
      00041C 54 F0            [12] 1015 	anl	a,#0xf0
      00041E 44 01            [12] 1016 	orl	a,#0x01
      000420 F5 89            [12] 1017 	mov	_TMOD,a
                                   1018 ;	.\src\main.c:156: TL0=(~tik);
      000422 75 8A EF         [24] 1019 	mov	_TL0,#0xef
                                   1020 ;	.\src\main.c:157: TH0=(~tik)>>8;
      000425 75 8C D8         [24] 1021 	mov	_TH0,#0xd8
                                   1022 ;	.\src\main.c:158: TR0=1;
                                   1023 ;	assignBit
      000428 D2 8C            [12] 1024 	setb	_TR0
                                   1025 ;	.\src\main.c:159: ET0=1; 
                                   1026 ;	assignBit
      00042A D2 A9            [12] 1027 	setb	_ET0
                                   1028 ;	.\src\main.c:160: EA=1;
                                   1029 ;	assignBit
      00042C D2 AF            [12] 1030 	setb	_EA
                                   1031 ;	.\src\main.c:161: }
      00042E 22               [24] 1032 	ret
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'T0_int'
                                   1035 ;------------------------------------------------------------
                                   1036 ;	.\src\main.c:164: void T0_int (void) __interrupt (TF0_VECTOR)
                                   1037 ;	-----------------------------------------
                                   1038 ;	 function T0_int
                                   1039 ;	-----------------------------------------
      00042F                       1040 _T0_int:
      00042F C0 20            [24] 1041 	push	bits
      000431 C0 E0            [24] 1042 	push	acc
      000433 C0 F0            [24] 1043 	push	b
      000435 C0 82            [24] 1044 	push	dpl
      000437 C0 83            [24] 1045 	push	dph
      000439 C0 07            [24] 1046 	push	(0+7)
      00043B C0 06            [24] 1047 	push	(0+6)
      00043D C0 05            [24] 1048 	push	(0+5)
      00043F C0 04            [24] 1049 	push	(0+4)
      000441 C0 03            [24] 1050 	push	(0+3)
      000443 C0 02            [24] 1051 	push	(0+2)
      000445 C0 01            [24] 1052 	push	(0+1)
      000447 C0 00            [24] 1053 	push	(0+0)
      000449 C0 D0            [24] 1054 	push	psw
      00044B 75 D0 00         [24] 1055 	mov	psw,#0x00
                                   1056 ;	.\src\main.c:166: TR0=0;
                                   1057 ;	assignBit
      00044E C2 8C            [12] 1058 	clr	_TR0
                                   1059 ;	.\src\main.c:167: TL0=(~tik);
      000450 75 8A EF         [24] 1060 	mov	_TL0,#0xef
                                   1061 ;	.\src\main.c:168: TH0=(~tik)>>8;
      000453 75 8C D8         [24] 1062 	mov	_TH0,#0xd8
                                   1063 ;	.\src\main.c:169: TR0=1;
                                   1064 ;	assignBit
      000456 D2 8C            [12] 1065 	setb	_TR0
                                   1066 ;	.\src\main.c:170: if (started) 
      000458 E5 08            [12] 1067 	mov	a,_started
      00045A 60 2B            [24] 1068 	jz	00111$
                                   1069 ;	.\src\main.c:172: time10ms++;
      00045C 05 0B            [12] 1070 	inc	_time10ms
                                   1071 ;	.\src\main.c:173: if (time10ms == 100) 
      00045E 74 64            [12] 1072 	mov	a,#0x64
      000460 B5 0B 21         [24] 1073 	cjne	a,_time10ms,00108$
                                   1074 ;	.\src\main.c:175: time10ms = 0;
      000463 75 0B 00         [24] 1075 	mov	_time10ms,#0x00
                                   1076 ;	.\src\main.c:176: timeSec++;
      000466 05 0C            [12] 1077 	inc	_timeSec
                                   1078 ;	.\src\main.c:177: if (timeSec == 60) 
      000468 74 3C            [12] 1079 	mov	a,#0x3c
      00046A B5 0C 17         [24] 1080 	cjne	a,_timeSec,00108$
                                   1081 ;	.\src\main.c:179: timeSec = 0;
      00046D 75 0C 00         [24] 1082 	mov	_timeSec,#0x00
                                   1083 ;	.\src\main.c:180: timeMin++;
      000470 05 0D            [12] 1084 	inc	_timeMin
                                   1085 ;	.\src\main.c:181: if (timeMin == 60) 
      000472 74 3C            [12] 1086 	mov	a,#0x3c
      000474 B5 0D 0D         [24] 1087 	cjne	a,_timeMin,00108$
                                   1088 ;	.\src\main.c:183: timeMin = 0;
      000477 75 0D 00         [24] 1089 	mov	_timeMin,#0x00
                                   1090 ;	.\src\main.c:184: timeHour++;
      00047A 05 0E            [12] 1091 	inc	_timeHour
                                   1092 ;	.\src\main.c:185: if (timeHour == 24)
      00047C 74 18            [12] 1093 	mov	a,#0x18
      00047E B5 0E 03         [24] 1094 	cjne	a,_timeHour,00108$
                                   1095 ;	.\src\main.c:186: timeHour = 0;
      000481 75 0E 00         [24] 1096 	mov	_timeHour,#0x00
      000484                       1097 00108$:
                                   1098 ;	.\src\main.c:190: setDigits();
      000484 12 03 1B         [24] 1099 	lcall	_setDigits
      000487                       1100 00111$:
                                   1101 ;	.\src\main.c:192: }
      000487 D0 D0            [24] 1102 	pop	psw
      000489 D0 00            [24] 1103 	pop	(0+0)
      00048B D0 01            [24] 1104 	pop	(0+1)
      00048D D0 02            [24] 1105 	pop	(0+2)
      00048F D0 03            [24] 1106 	pop	(0+3)
      000491 D0 04            [24] 1107 	pop	(0+4)
      000493 D0 05            [24] 1108 	pop	(0+5)
      000495 D0 06            [24] 1109 	pop	(0+6)
      000497 D0 07            [24] 1110 	pop	(0+7)
      000499 D0 83            [24] 1111 	pop	dph
      00049B D0 82            [24] 1112 	pop	dpl
      00049D D0 F0            [24] 1113 	pop	b
      00049F D0 E0            [24] 1114 	pop	acc
      0004A1 D0 20            [24] 1115 	pop	bits
      0004A3 32               [24] 1116 	reti
                                   1117 ;------------------------------------------------------------
                                   1118 ;Allocation info for local variables in function 'delayFOR'
                                   1119 ;------------------------------------------------------------
                                   1120 ;kodF                      Allocated to registers r7 
                                   1121 ;ml                        Allocated to registers r6 
                                   1122 ;------------------------------------------------------------
                                   1123 ;	.\src\main.c:195: void delayFOR(unsigned char kodF)
                                   1124 ;	-----------------------------------------
                                   1125 ;	 function delayFOR
                                   1126 ;	-----------------------------------------
      0004A4                       1127 _delayFOR:
      0004A4 AF 82            [24] 1128 	mov	r7,dpl
                                   1129 ;	.\src\main.c:198: for(ml = 0; ml < kodF; ml++){}
      0004A6 7E 00            [12] 1130 	mov	r6,#0x00
      0004A8                       1131 00103$:
      0004A8 C3               [12] 1132 	clr	c
      0004A9 EE               [12] 1133 	mov	a,r6
      0004AA 9F               [12] 1134 	subb	a,r7
      0004AB 50 03            [24] 1135 	jnc	00105$
      0004AD 0E               [12] 1136 	inc	r6
      0004AE 80 F8            [24] 1137 	sjmp	00103$
      0004B0                       1138 00105$:
                                   1139 ;	.\src\main.c:199: }
      0004B0 22               [24] 1140 	ret
                                   1141 ;------------------------------------------------------------
                                   1142 ;Allocation info for local variables in function 'DelayMS'
                                   1143 ;------------------------------------------------------------
                                   1144 ;KodMS                     Allocated to registers 
                                   1145 ;------------------------------------------------------------
                                   1146 ;	.\src\main.c:202: void DelayMS(unsigned char KodMS)
                                   1147 ;	-----------------------------------------
                                   1148 ;	 function DelayMS
                                   1149 ;	-----------------------------------------
      0004B1                       1150 _DelayMS:
      0004B1 AF 82            [24] 1151 	mov	r7,dpl
                                   1152 ;	.\src\main.c:204: do delay1ms;
      0004B3                       1153 00101$:
      0004B3 75 82 63         [24] 1154 	mov	dpl,#0x63
      0004B6 C0 07            [24] 1155 	push	ar7
      0004B8 12 04 A4         [24] 1156 	lcall	_delayFOR
      0004BB D0 07            [24] 1157 	pop	ar7
                                   1158 ;	.\src\main.c:205: while(--KodMS);
      0004BD DF F4            [24] 1159 	djnz	r7,00101$
                                   1160 ;	.\src\main.c:206: }
      0004BF 22               [24] 1161 	ret
                                   1162 ;------------------------------------------------------------
                                   1163 ;Allocation info for local variables in function 'buttonsCheck'
                                   1164 ;------------------------------------------------------------
                                   1165 ;	.\src\main.c:209: void buttonsCheck(void)
                                   1166 ;	-----------------------------------------
                                   1167 ;	 function buttonsCheck
                                   1168 ;	-----------------------------------------
      0004C0                       1169 _buttonsCheck:
                                   1170 ;	.\src\main.c:212: if (!P3_0) 
      0004C0 20 B0 1E         [24] 1171 	jb	_P3_0,00108$
                                   1172 ;	.\src\main.c:215: P1 = 0x1F;
      0004C3 75 90 1F         [24] 1173 	mov	_P1,#0x1f
                                   1174 ;	.\src\main.c:217: DelayMS(10);
      0004C6 75 82 0A         [24] 1175 	mov	dpl,#0x0a
      0004C9 12 04 B1         [24] 1176 	lcall	_DelayMS
                                   1177 ;	.\src\main.c:219: while(!P3_0);
      0004CC                       1178 00101$:
      0004CC 30 B0 FD         [24] 1179 	jnb	_P3_0,00101$
                                   1180 ;	.\src\main.c:221: DelayMS(10);
      0004CF 75 82 0A         [24] 1181 	mov	dpl,#0x0a
      0004D2 12 04 B1         [24] 1182 	lcall	_DelayMS
                                   1183 ;	.\src\main.c:223: if (started)
      0004D5 E5 08            [12] 1184 	mov	a,_started
      0004D7 60 05            [24] 1185 	jz	00105$
                                   1186 ;	.\src\main.c:225: started = 0;
      0004D9 75 08 00         [24] 1187 	mov	_started,#0x00
      0004DC 80 03            [24] 1188 	sjmp	00108$
      0004DE                       1189 00105$:
                                   1190 ;	.\src\main.c:228: started = 1;
      0004DE 75 08 01         [24] 1191 	mov	_started,#0x01
      0004E1                       1192 00108$:
                                   1193 ;	.\src\main.c:232: if (!P3_1) 
      0004E1 20 B1 1F         [24] 1194 	jb	_P3_1,00115$
                                   1195 ;	.\src\main.c:235: P1 = 0x1F;
      0004E4 75 90 1F         [24] 1196 	mov	_P1,#0x1f
                                   1197 ;	.\src\main.c:237: DelayMS(10);
      0004E7 75 82 0A         [24] 1198 	mov	dpl,#0x0a
      0004EA 12 04 B1         [24] 1199 	lcall	_DelayMS
                                   1200 ;	.\src\main.c:239: while(!P3_1);
      0004ED                       1201 00109$:
      0004ED 30 B1 FD         [24] 1202 	jnb	_P3_1,00109$
                                   1203 ;	.\src\main.c:241: DelayMS(10);
      0004F0 75 82 0A         [24] 1204 	mov	dpl,#0x0a
      0004F3 12 04 B1         [24] 1205 	lcall	_DelayMS
                                   1206 ;	.\src\main.c:243: mode++;
      0004F6 05 09            [12] 1207 	inc	_mode
                                   1208 ;	.\src\main.c:244: if (mode == 4)
      0004F8 74 04            [12] 1209 	mov	a,#0x04
      0004FA B5 09 03         [24] 1210 	cjne	a,_mode,00113$
                                   1211 ;	.\src\main.c:245: mode = 0;
      0004FD 75 09 00         [24] 1212 	mov	_mode,#0x00
      000500                       1213 00113$:
                                   1214 ;	.\src\main.c:247: setDigits();
      000500 12 03 1B         [24] 1215 	lcall	_setDigits
      000503                       1216 00115$:
                                   1217 ;	.\src\main.c:250: if (!P3_2)
      000503 20 B2 1B         [24] 1218 	jb	_P3_2,00118$
                                   1219 ;	.\src\main.c:253: DelayMS(10);
      000506 75 82 0A         [24] 1220 	mov	dpl,#0x0a
      000509 12 04 B1         [24] 1221 	lcall	_DelayMS
                                   1222 ;	.\src\main.c:254: time10ms=0;
      00050C 75 0B 00         [24] 1223 	mov	_time10ms,#0x00
                                   1224 ;	.\src\main.c:256: timeSec = 0;
      00050F 75 0C 00         [24] 1225 	mov	_timeSec,#0x00
                                   1226 ;	.\src\main.c:258: timeMin = 0;
      000512 75 0D 00         [24] 1227 	mov	_timeMin,#0x00
                                   1228 ;	.\src\main.c:260: timeHour = 0;
      000515 75 0E 00         [24] 1229 	mov	_timeHour,#0x00
                                   1230 ;	.\src\main.c:261: DelayMS(10);
      000518 75 82 0A         [24] 1231 	mov	dpl,#0x0a
      00051B 12 04 B1         [24] 1232 	lcall	_DelayMS
                                   1233 ;	.\src\main.c:262: setDigits();
                                   1234 ;	.\src\main.c:264: }
      00051E 02 03 1B         [24] 1235 	ljmp	_setDigits
      000521                       1236 00118$:
      000521 22               [24] 1237 	ret
                                   1238 ;------------------------------------------------------------
                                   1239 ;Allocation info for local variables in function 'main'
                                   1240 ;------------------------------------------------------------
                                   1241 ;	.\src\main.c:266: void main(void){
                                   1242 ;	-----------------------------------------
                                   1243 ;	 function main
                                   1244 ;	-----------------------------------------
      000522                       1245 _main:
                                   1246 ;	.\src\main.c:268: T0init();
      000522 12 04 18         [24] 1247 	lcall	_T0init
                                   1248 ;	.\src\main.c:270: setDigits();
      000525 12 03 1B         [24] 1249 	lcall	_setDigits
                                   1250 ;	.\src\main.c:271: while(1){
      000528                       1251 00102$:
                                   1252 ;	.\src\main.c:273: buttonsCheck();
      000528 12 04 C0         [24] 1253 	lcall	_buttonsCheck
                                   1254 ;	.\src\main.c:275: delayFOR(10);
      00052B 75 82 0A         [24] 1255 	mov	dpl,#0x0a
      00052E 12 04 A4         [24] 1256 	lcall	_delayFOR
                                   1257 ;	.\src\main.c:277: nextColumn();
      000531 12 02 C9         [24] 1258 	lcall	_nextColumn
                                   1259 ;	.\src\main.c:279: }
      000534 80 F2            [24] 1260 	sjmp	00102$
                                   1261 	.area CSEG    (CODE)
                                   1262 	.area CONST   (CODE)
                                   1263 	.area XINIT   (CODE)
                                   1264 	.area CABS    (ABS,CODE)
