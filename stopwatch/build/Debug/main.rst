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
                                    122 	.globl _ptrColumn
                                    123 	.globl _mode
                                    124 	.globl _count10ms
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
                                    238 ; internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area DSEG    (DATA)
      000008                        241 _started::
      000008                        242 	.ds 1
      000009                        243 _count10ms::
      000009                        244 	.ds 1
      00000A                        245 _mode::
      00000A                        246 	.ds 1
      00000B                        247 _ptrColumn::
      00000B                        248 	.ds 1
      00000C                        249 _timeSec::
      00000C                        250 	.ds 1
      00000D                        251 _timeMin::
      00000D                        252 	.ds 1
      00000E                        253 _timeHour::
      00000E                        254 	.ds 1
      00000F                        255 _first::
      00000F                        256 	.ds 3
      000012                        257 _second::
      000012                        258 	.ds 3
                                    259 ;--------------------------------------------------------
                                    260 ; overlayable items in internal ram 
                                    261 ;--------------------------------------------------------
                                    262 	.area	OSEG    (OVR,DATA)
      000015                        263 _setData_PARM_2:
      000015                        264 	.ds 3
                                    265 	.area	OSEG    (OVR,DATA)
                                    266 ;--------------------------------------------------------
                                    267 ; Stack segment in internal ram 
                                    268 ;--------------------------------------------------------
                                    269 	.area	SSEG
      000018                        270 __start__stack:
      000018                        271 	.ds	1
                                    272 
                                    273 ;--------------------------------------------------------
                                    274 ; indirectly addressable internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area ISEG    (DATA)
                                    277 ;--------------------------------------------------------
                                    278 ; absolute internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area IABS    (ABS,DATA)
                                    281 	.area IABS    (ABS,DATA)
                                    282 ;--------------------------------------------------------
                                    283 ; bit data
                                    284 ;--------------------------------------------------------
                                    285 	.area BSEG    (BIT)
                                    286 ;--------------------------------------------------------
                                    287 ; paged external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area PSEG    (PAG,XDATA)
                                    290 ;--------------------------------------------------------
                                    291 ; external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XSEG    (XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; absolute external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XABS    (ABS,XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; external initialized ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XISEG   (XDATA)
                                    302 	.area HOME    (CODE)
                                    303 	.area GSINIT0 (CODE)
                                    304 	.area GSINIT1 (CODE)
                                    305 	.area GSINIT2 (CODE)
                                    306 	.area GSINIT3 (CODE)
                                    307 	.area GSINIT4 (CODE)
                                    308 	.area GSINIT5 (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area CSEG    (CODE)
                                    312 ;--------------------------------------------------------
                                    313 ; interrupt vector 
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
      000000                        316 __interrupt_vect:
      000000 02 00 11         [24]  317 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  318 	reti
      000004                        319 	.ds	7
      00000B 02 03 F5         [24]  320 	ljmp	_T0_int
                                    321 ;--------------------------------------------------------
                                    322 ; global & static initialisations
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 	.globl __sdcc_gsinit_startup
                                    329 	.globl __sdcc_program_startup
                                    330 	.globl __start__stack
                                    331 	.globl __mcs51_genXINIT
                                    332 	.globl __mcs51_genXRAMCLEAR
                                    333 	.globl __mcs51_genRAMCLEAR
                                    334 ;	.\src\main.c:16: unsigned char started = 0;
      00006A 75 08 00         [24]  335 	mov	_started,#0x00
                                    336 ;	.\src\main.c:19: unsigned char count10ms=0;
      00006D 75 09 00         [24]  337 	mov	_count10ms,#0x00
                                    338 ;	.\src\main.c:25: unsigned char mode = 0;
      000070 75 0A 00         [24]  339 	mov	_mode,#0x00
                                    340 ;	.\src\main.c:28: unsigned char ptrColumn = 0;
      000073 75 0B 00         [24]  341 	mov	_ptrColumn,#0x00
                                    342 ;	.\src\main.c:31: unsigned char timeSec = 0;
      000076 75 0C 00         [24]  343 	mov	_timeSec,#0x00
                                    344 ;	.\src\main.c:33: unsigned char timeMin = 0;
      000079 75 0D 00         [24]  345 	mov	_timeMin,#0x00
                                    346 ;	.\src\main.c:35: unsigned char timeHour = 0;
      00007C 75 0E 00         [24]  347 	mov	_timeHour,#0x00
                                    348 	.area GSFINAL (CODE)
      00007F 02 00 0E         [24]  349 	ljmp	__sdcc_program_startup
                                    350 ;--------------------------------------------------------
                                    351 ; Home
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area HOME    (CODE)
      00000E                        355 __sdcc_program_startup:
      00000E 02 04 7F         [24]  356 	ljmp	_main
                                    357 ;	return from main will return to caller
                                    358 ;--------------------------------------------------------
                                    359 ; code
                                    360 ;--------------------------------------------------------
                                    361 	.area CSEG    (CODE)
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'setData'
                                    364 ;------------------------------------------------------------
                                    365 ;array                     Allocated with name '_setData_PARM_2'
                                    366 ;digit                     Allocated to registers r7 
                                    367 ;------------------------------------------------------------
                                    368 ;	.\src\main.c:44: void setData(unsigned char digit, unsigned char *array)
                                    369 ;	-----------------------------------------
                                    370 ;	 function setData
                                    371 ;	-----------------------------------------
      000082                        372 _setData:
                           000007   373 	ar7 = 0x07
                           000006   374 	ar6 = 0x06
                           000005   375 	ar5 = 0x05
                           000004   376 	ar4 = 0x04
                           000003   377 	ar3 = 0x03
                           000002   378 	ar2 = 0x02
                           000001   379 	ar1 = 0x01
                           000000   380 	ar0 = 0x00
                                    381 ;	.\src\main.c:46: switch(digit)
      000082 E5 82            [12]  382 	mov	a,dpl
      000084 FF               [12]  383 	mov	r7,a
      000085 24 F6            [12]  384 	add	a,#0xff - 0x09
      000087 50 01            [24]  385 	jnc	00118$
      000089 22               [24]  386 	ret
      00008A                        387 00118$:
      00008A EF               [12]  388 	mov	a,r7
      00008B 2F               [12]  389 	add	a,r7
      00008C 2F               [12]  390 	add	a,r7
      00008D 90 00 91         [24]  391 	mov	dptr,#00119$
      000090 73               [24]  392 	jmp	@a+dptr
      000091                        393 00119$:
      000091 02 00 AF         [24]  394 	ljmp	00101$
      000094 02 00 E6         [24]  395 	ljmp	00102$
      000097 02 01 1B         [24]  396 	ljmp	00103$
      00009A 02 01 52         [24]  397 	ljmp	00104$
      00009D 02 01 89         [24]  398 	ljmp	00105$
      0000A0 02 01 BF         [24]  399 	ljmp	00106$
      0000A3 02 01 F6         [24]  400 	ljmp	00107$
      0000A6 02 02 2D         [24]  401 	ljmp	00108$
      0000A9 02 02 64         [24]  402 	ljmp	00109$
      0000AC 02 02 9B         [24]  403 	ljmp	00110$
                                    404 ;	.\src\main.c:49: case 0:
      0000AF                        405 00101$:
                                    406 ;	.\src\main.c:51: array[0] = 0x1F;
      0000AF AD 15            [24]  407 	mov	r5,_setData_PARM_2
      0000B1 AE 16            [24]  408 	mov	r6,(_setData_PARM_2 + 1)
      0000B3 AF 17            [24]  409 	mov	r7,(_setData_PARM_2 + 2)
      0000B5 8D 82            [24]  410 	mov	dpl,r5
      0000B7 8E 83            [24]  411 	mov	dph,r6
      0000B9 8F F0            [24]  412 	mov	b,r7
      0000BB 74 1F            [12]  413 	mov	a,#0x1f
      0000BD 12 04 C4         [24]  414 	lcall	__gptrput
                                    415 ;	.\src\main.c:53: array[1] = 0x11;
      0000C0 74 01            [12]  416 	mov	a,#0x01
      0000C2 2D               [12]  417 	add	a,r5
      0000C3 FA               [12]  418 	mov	r2,a
      0000C4 E4               [12]  419 	clr	a
      0000C5 3E               [12]  420 	addc	a,r6
      0000C6 FB               [12]  421 	mov	r3,a
      0000C7 8F 04            [24]  422 	mov	ar4,r7
      0000C9 8A 82            [24]  423 	mov	dpl,r2
      0000CB 8B 83            [24]  424 	mov	dph,r3
      0000CD 8C F0            [24]  425 	mov	b,r4
      0000CF 74 11            [12]  426 	mov	a,#0x11
      0000D1 12 04 C4         [24]  427 	lcall	__gptrput
                                    428 ;	.\src\main.c:55: array[2] = 0x1F;
      0000D4 74 02            [12]  429 	mov	a,#0x02
      0000D6 2D               [12]  430 	add	a,r5
      0000D7 FD               [12]  431 	mov	r5,a
      0000D8 E4               [12]  432 	clr	a
      0000D9 3E               [12]  433 	addc	a,r6
      0000DA FE               [12]  434 	mov	r6,a
      0000DB 8D 82            [24]  435 	mov	dpl,r5
      0000DD 8E 83            [24]  436 	mov	dph,r6
      0000DF 8F F0            [24]  437 	mov	b,r7
      0000E1 74 1F            [12]  438 	mov	a,#0x1f
                                    439 ;	.\src\main.c:60: break;
      0000E3 02 04 C4         [24]  440 	ljmp	__gptrput
                                    441 ;	.\src\main.c:61: case 1:
      0000E6                        442 00102$:
                                    443 ;	.\src\main.c:62: array[0] = 0x1F;
      0000E6 AD 15            [24]  444 	mov	r5,_setData_PARM_2
      0000E8 AE 16            [24]  445 	mov	r6,(_setData_PARM_2 + 1)
      0000EA AF 17            [24]  446 	mov	r7,(_setData_PARM_2 + 2)
      0000EC 8D 82            [24]  447 	mov	dpl,r5
      0000EE 8E 83            [24]  448 	mov	dph,r6
      0000F0 8F F0            [24]  449 	mov	b,r7
      0000F2 74 1F            [12]  450 	mov	a,#0x1f
      0000F4 12 04 C4         [24]  451 	lcall	__gptrput
                                    452 ;	.\src\main.c:63: array[1] = 0x02;
      0000F7 74 01            [12]  453 	mov	a,#0x01
      0000F9 2D               [12]  454 	add	a,r5
      0000FA FA               [12]  455 	mov	r2,a
      0000FB E4               [12]  456 	clr	a
      0000FC 3E               [12]  457 	addc	a,r6
      0000FD FB               [12]  458 	mov	r3,a
      0000FE 8F 04            [24]  459 	mov	ar4,r7
      000100 8A 82            [24]  460 	mov	dpl,r2
      000102 8B 83            [24]  461 	mov	dph,r3
      000104 8C F0            [24]  462 	mov	b,r4
      000106 74 02            [12]  463 	mov	a,#0x02
      000108 12 04 C4         [24]  464 	lcall	__gptrput
                                    465 ;	.\src\main.c:64: array[2] = 0x04;
      00010B 2D               [12]  466 	add	a,r5
      00010C FD               [12]  467 	mov	r5,a
      00010D E4               [12]  468 	clr	a
      00010E 3E               [12]  469 	addc	a,r6
      00010F FE               [12]  470 	mov	r6,a
      000110 8D 82            [24]  471 	mov	dpl,r5
      000112 8E 83            [24]  472 	mov	dph,r6
      000114 8F F0            [24]  473 	mov	b,r7
      000116 74 04            [12]  474 	mov	a,#0x04
                                    475 ;	.\src\main.c:65: break;
      000118 02 04 C4         [24]  476 	ljmp	__gptrput
                                    477 ;	.\src\main.c:66: case 2:
      00011B                        478 00103$:
                                    479 ;	.\src\main.c:67: array[0] = 0x17;
      00011B AD 15            [24]  480 	mov	r5,_setData_PARM_2
      00011D AE 16            [24]  481 	mov	r6,(_setData_PARM_2 + 1)
      00011F AF 17            [24]  482 	mov	r7,(_setData_PARM_2 + 2)
      000121 8D 82            [24]  483 	mov	dpl,r5
      000123 8E 83            [24]  484 	mov	dph,r6
      000125 8F F0            [24]  485 	mov	b,r7
      000127 74 17            [12]  486 	mov	a,#0x17
      000129 12 04 C4         [24]  487 	lcall	__gptrput
                                    488 ;	.\src\main.c:68: array[1] = 0x15;
      00012C 74 01            [12]  489 	mov	a,#0x01
      00012E 2D               [12]  490 	add	a,r5
      00012F FA               [12]  491 	mov	r2,a
      000130 E4               [12]  492 	clr	a
      000131 3E               [12]  493 	addc	a,r6
      000132 FB               [12]  494 	mov	r3,a
      000133 8F 04            [24]  495 	mov	ar4,r7
      000135 8A 82            [24]  496 	mov	dpl,r2
      000137 8B 83            [24]  497 	mov	dph,r3
      000139 8C F0            [24]  498 	mov	b,r4
      00013B 74 15            [12]  499 	mov	a,#0x15
      00013D 12 04 C4         [24]  500 	lcall	__gptrput
                                    501 ;	.\src\main.c:69: array[2] = 0x1B;
      000140 74 02            [12]  502 	mov	a,#0x02
      000142 2D               [12]  503 	add	a,r5
      000143 FD               [12]  504 	mov	r5,a
      000144 E4               [12]  505 	clr	a
      000145 3E               [12]  506 	addc	a,r6
      000146 FE               [12]  507 	mov	r6,a
      000147 8D 82            [24]  508 	mov	dpl,r5
      000149 8E 83            [24]  509 	mov	dph,r6
      00014B 8F F0            [24]  510 	mov	b,r7
      00014D 74 1B            [12]  511 	mov	a,#0x1b
                                    512 ;	.\src\main.c:70: break;
      00014F 02 04 C4         [24]  513 	ljmp	__gptrput
                                    514 ;	.\src\main.c:71: case 3:
      000152                        515 00104$:
                                    516 ;	.\src\main.c:72: array[0] = 0x1F;
      000152 AD 15            [24]  517 	mov	r5,_setData_PARM_2
      000154 AE 16            [24]  518 	mov	r6,(_setData_PARM_2 + 1)
      000156 AF 17            [24]  519 	mov	r7,(_setData_PARM_2 + 2)
      000158 8D 82            [24]  520 	mov	dpl,r5
      00015A 8E 83            [24]  521 	mov	dph,r6
      00015C 8F F0            [24]  522 	mov	b,r7
      00015E 74 1F            [12]  523 	mov	a,#0x1f
      000160 12 04 C4         [24]  524 	lcall	__gptrput
                                    525 ;	.\src\main.c:73: array[1] = 0x15;
      000163 74 01            [12]  526 	mov	a,#0x01
      000165 2D               [12]  527 	add	a,r5
      000166 FA               [12]  528 	mov	r2,a
      000167 E4               [12]  529 	clr	a
      000168 3E               [12]  530 	addc	a,r6
      000169 FB               [12]  531 	mov	r3,a
      00016A 8F 04            [24]  532 	mov	ar4,r7
      00016C 8A 82            [24]  533 	mov	dpl,r2
      00016E 8B 83            [24]  534 	mov	dph,r3
      000170 8C F0            [24]  535 	mov	b,r4
      000172 74 15            [12]  536 	mov	a,#0x15
      000174 12 04 C4         [24]  537 	lcall	__gptrput
                                    538 ;	.\src\main.c:74: array[2] = 0x15;
      000177 74 02            [12]  539 	mov	a,#0x02
      000179 2D               [12]  540 	add	a,r5
      00017A FD               [12]  541 	mov	r5,a
      00017B E4               [12]  542 	clr	a
      00017C 3E               [12]  543 	addc	a,r6
      00017D FE               [12]  544 	mov	r6,a
      00017E 8D 82            [24]  545 	mov	dpl,r5
      000180 8E 83            [24]  546 	mov	dph,r6
      000182 8F F0            [24]  547 	mov	b,r7
      000184 74 15            [12]  548 	mov	a,#0x15
                                    549 ;	.\src\main.c:75: break;
      000186 02 04 C4         [24]  550 	ljmp	__gptrput
                                    551 ;	.\src\main.c:76: case 4:
      000189                        552 00105$:
                                    553 ;	.\src\main.c:77: array[0] = 0x1F;
      000189 AD 15            [24]  554 	mov	r5,_setData_PARM_2
      00018B AE 16            [24]  555 	mov	r6,(_setData_PARM_2 + 1)
      00018D AF 17            [24]  556 	mov	r7,(_setData_PARM_2 + 2)
      00018F 8D 82            [24]  557 	mov	dpl,r5
      000191 8E 83            [24]  558 	mov	dph,r6
      000193 8F F0            [24]  559 	mov	b,r7
      000195 74 1F            [12]  560 	mov	a,#0x1f
      000197 12 04 C4         [24]  561 	lcall	__gptrput
                                    562 ;	.\src\main.c:78: array[1] = 0x04;
      00019A 74 01            [12]  563 	mov	a,#0x01
      00019C 2D               [12]  564 	add	a,r5
      00019D FA               [12]  565 	mov	r2,a
      00019E E4               [12]  566 	clr	a
      00019F 3E               [12]  567 	addc	a,r6
      0001A0 FB               [12]  568 	mov	r3,a
      0001A1 8F 04            [24]  569 	mov	ar4,r7
      0001A3 8A 82            [24]  570 	mov	dpl,r2
      0001A5 8B 83            [24]  571 	mov	dph,r3
      0001A7 8C F0            [24]  572 	mov	b,r4
      0001A9 74 04            [12]  573 	mov	a,#0x04
      0001AB 12 04 C4         [24]  574 	lcall	__gptrput
                                    575 ;	.\src\main.c:79: array[2] = 0x07;
      0001AE 03               [12]  576 	rr	a
      0001AF 2D               [12]  577 	add	a,r5
      0001B0 FD               [12]  578 	mov	r5,a
      0001B1 E4               [12]  579 	clr	a
      0001B2 3E               [12]  580 	addc	a,r6
      0001B3 FE               [12]  581 	mov	r6,a
      0001B4 8D 82            [24]  582 	mov	dpl,r5
      0001B6 8E 83            [24]  583 	mov	dph,r6
      0001B8 8F F0            [24]  584 	mov	b,r7
      0001BA 74 07            [12]  585 	mov	a,#0x07
                                    586 ;	.\src\main.c:80: break;
      0001BC 02 04 C4         [24]  587 	ljmp	__gptrput
                                    588 ;	.\src\main.c:81: case 5:
      0001BF                        589 00106$:
                                    590 ;	.\src\main.c:82: array[0] = 0x1D;
      0001BF AD 15            [24]  591 	mov	r5,_setData_PARM_2
      0001C1 AE 16            [24]  592 	mov	r6,(_setData_PARM_2 + 1)
      0001C3 AF 17            [24]  593 	mov	r7,(_setData_PARM_2 + 2)
      0001C5 8D 82            [24]  594 	mov	dpl,r5
      0001C7 8E 83            [24]  595 	mov	dph,r6
      0001C9 8F F0            [24]  596 	mov	b,r7
      0001CB 74 1D            [12]  597 	mov	a,#0x1d
      0001CD 12 04 C4         [24]  598 	lcall	__gptrput
                                    599 ;	.\src\main.c:83: array[1] = 0x15;
      0001D0 74 01            [12]  600 	mov	a,#0x01
      0001D2 2D               [12]  601 	add	a,r5
      0001D3 FA               [12]  602 	mov	r2,a
      0001D4 E4               [12]  603 	clr	a
      0001D5 3E               [12]  604 	addc	a,r6
      0001D6 FB               [12]  605 	mov	r3,a
      0001D7 8F 04            [24]  606 	mov	ar4,r7
      0001D9 8A 82            [24]  607 	mov	dpl,r2
      0001DB 8B 83            [24]  608 	mov	dph,r3
      0001DD 8C F0            [24]  609 	mov	b,r4
      0001DF 74 15            [12]  610 	mov	a,#0x15
      0001E1 12 04 C4         [24]  611 	lcall	__gptrput
                                    612 ;	.\src\main.c:84: array[2] = 0x17;
      0001E4 74 02            [12]  613 	mov	a,#0x02
      0001E6 2D               [12]  614 	add	a,r5
      0001E7 FD               [12]  615 	mov	r5,a
      0001E8 E4               [12]  616 	clr	a
      0001E9 3E               [12]  617 	addc	a,r6
      0001EA FE               [12]  618 	mov	r6,a
      0001EB 8D 82            [24]  619 	mov	dpl,r5
      0001ED 8E 83            [24]  620 	mov	dph,r6
      0001EF 8F F0            [24]  621 	mov	b,r7
      0001F1 74 17            [12]  622 	mov	a,#0x17
                                    623 ;	.\src\main.c:85: break;
      0001F3 02 04 C4         [24]  624 	ljmp	__gptrput
                                    625 ;	.\src\main.c:86: case 6:
      0001F6                        626 00107$:
                                    627 ;	.\src\main.c:87: array[0] = 0x1D;
      0001F6 AD 15            [24]  628 	mov	r5,_setData_PARM_2
      0001F8 AE 16            [24]  629 	mov	r6,(_setData_PARM_2 + 1)
      0001FA AF 17            [24]  630 	mov	r7,(_setData_PARM_2 + 2)
      0001FC 8D 82            [24]  631 	mov	dpl,r5
      0001FE 8E 83            [24]  632 	mov	dph,r6
      000200 8F F0            [24]  633 	mov	b,r7
      000202 74 1D            [12]  634 	mov	a,#0x1d
      000204 12 04 C4         [24]  635 	lcall	__gptrput
                                    636 ;	.\src\main.c:88: array[1] = 0x15;
      000207 74 01            [12]  637 	mov	a,#0x01
      000209 2D               [12]  638 	add	a,r5
      00020A FA               [12]  639 	mov	r2,a
      00020B E4               [12]  640 	clr	a
      00020C 3E               [12]  641 	addc	a,r6
      00020D FB               [12]  642 	mov	r3,a
      00020E 8F 04            [24]  643 	mov	ar4,r7
      000210 8A 82            [24]  644 	mov	dpl,r2
      000212 8B 83            [24]  645 	mov	dph,r3
      000214 8C F0            [24]  646 	mov	b,r4
      000216 74 15            [12]  647 	mov	a,#0x15
      000218 12 04 C4         [24]  648 	lcall	__gptrput
                                    649 ;	.\src\main.c:89: array[2] = 0x1F;
      00021B 74 02            [12]  650 	mov	a,#0x02
      00021D 2D               [12]  651 	add	a,r5
      00021E FD               [12]  652 	mov	r5,a
      00021F E4               [12]  653 	clr	a
      000220 3E               [12]  654 	addc	a,r6
      000221 FE               [12]  655 	mov	r6,a
      000222 8D 82            [24]  656 	mov	dpl,r5
      000224 8E 83            [24]  657 	mov	dph,r6
      000226 8F F0            [24]  658 	mov	b,r7
      000228 74 1F            [12]  659 	mov	a,#0x1f
                                    660 ;	.\src\main.c:90: break;
      00022A 02 04 C4         [24]  661 	ljmp	__gptrput
                                    662 ;	.\src\main.c:91: case 7:
      00022D                        663 00108$:
                                    664 ;	.\src\main.c:92: array[0] = 0x03;
      00022D AD 15            [24]  665 	mov	r5,_setData_PARM_2
      00022F AE 16            [24]  666 	mov	r6,(_setData_PARM_2 + 1)
      000231 AF 17            [24]  667 	mov	r7,(_setData_PARM_2 + 2)
      000233 8D 82            [24]  668 	mov	dpl,r5
      000235 8E 83            [24]  669 	mov	dph,r6
      000237 8F F0            [24]  670 	mov	b,r7
      000239 74 03            [12]  671 	mov	a,#0x03
      00023B 12 04 C4         [24]  672 	lcall	__gptrput
                                    673 ;	.\src\main.c:93: array[1] = 0x05;
      00023E 74 01            [12]  674 	mov	a,#0x01
      000240 2D               [12]  675 	add	a,r5
      000241 FA               [12]  676 	mov	r2,a
      000242 E4               [12]  677 	clr	a
      000243 3E               [12]  678 	addc	a,r6
      000244 FB               [12]  679 	mov	r3,a
      000245 8F 04            [24]  680 	mov	ar4,r7
      000247 8A 82            [24]  681 	mov	dpl,r2
      000249 8B 83            [24]  682 	mov	dph,r3
      00024B 8C F0            [24]  683 	mov	b,r4
      00024D 74 05            [12]  684 	mov	a,#0x05
      00024F 12 04 C4         [24]  685 	lcall	__gptrput
                                    686 ;	.\src\main.c:94: array[2] = 0x19;
      000252 74 02            [12]  687 	mov	a,#0x02
      000254 2D               [12]  688 	add	a,r5
      000255 FD               [12]  689 	mov	r5,a
      000256 E4               [12]  690 	clr	a
      000257 3E               [12]  691 	addc	a,r6
      000258 FE               [12]  692 	mov	r6,a
      000259 8D 82            [24]  693 	mov	dpl,r5
      00025B 8E 83            [24]  694 	mov	dph,r6
      00025D 8F F0            [24]  695 	mov	b,r7
      00025F 74 19            [12]  696 	mov	a,#0x19
                                    697 ;	.\src\main.c:95: break;
                                    698 ;	.\src\main.c:96: case 8:
      000261 02 04 C4         [24]  699 	ljmp	__gptrput
      000264                        700 00109$:
                                    701 ;	.\src\main.c:97: array[0] = 0x1F;
      000264 AD 15            [24]  702 	mov	r5,_setData_PARM_2
      000266 AE 16            [24]  703 	mov	r6,(_setData_PARM_2 + 1)
      000268 AF 17            [24]  704 	mov	r7,(_setData_PARM_2 + 2)
      00026A 8D 82            [24]  705 	mov	dpl,r5
      00026C 8E 83            [24]  706 	mov	dph,r6
      00026E 8F F0            [24]  707 	mov	b,r7
      000270 74 1F            [12]  708 	mov	a,#0x1f
      000272 12 04 C4         [24]  709 	lcall	__gptrput
                                    710 ;	.\src\main.c:98: array[1] = 0x15;
      000275 74 01            [12]  711 	mov	a,#0x01
      000277 2D               [12]  712 	add	a,r5
      000278 FA               [12]  713 	mov	r2,a
      000279 E4               [12]  714 	clr	a
      00027A 3E               [12]  715 	addc	a,r6
      00027B FB               [12]  716 	mov	r3,a
      00027C 8F 04            [24]  717 	mov	ar4,r7
      00027E 8A 82            [24]  718 	mov	dpl,r2
      000280 8B 83            [24]  719 	mov	dph,r3
      000282 8C F0            [24]  720 	mov	b,r4
      000284 74 15            [12]  721 	mov	a,#0x15
      000286 12 04 C4         [24]  722 	lcall	__gptrput
                                    723 ;	.\src\main.c:99: array[2] = 0x1F;
      000289 74 02            [12]  724 	mov	a,#0x02
      00028B 2D               [12]  725 	add	a,r5
      00028C FD               [12]  726 	mov	r5,a
      00028D E4               [12]  727 	clr	a
      00028E 3E               [12]  728 	addc	a,r6
      00028F FE               [12]  729 	mov	r6,a
      000290 8D 82            [24]  730 	mov	dpl,r5
      000292 8E 83            [24]  731 	mov	dph,r6
      000294 8F F0            [24]  732 	mov	b,r7
      000296 74 1F            [12]  733 	mov	a,#0x1f
                                    734 ;	.\src\main.c:100: break;
                                    735 ;	.\src\main.c:101: case 9:
      000298 02 04 C4         [24]  736 	ljmp	__gptrput
      00029B                        737 00110$:
                                    738 ;	.\src\main.c:102: array[0] = 0x1F;
      00029B AD 15            [24]  739 	mov	r5,_setData_PARM_2
      00029D AE 16            [24]  740 	mov	r6,(_setData_PARM_2 + 1)
      00029F AF 17            [24]  741 	mov	r7,(_setData_PARM_2 + 2)
      0002A1 8D 82            [24]  742 	mov	dpl,r5
      0002A3 8E 83            [24]  743 	mov	dph,r6
      0002A5 8F F0            [24]  744 	mov	b,r7
      0002A7 74 1F            [12]  745 	mov	a,#0x1f
      0002A9 12 04 C4         [24]  746 	lcall	__gptrput
                                    747 ;	.\src\main.c:103: array[1] = 0x15;
      0002AC 74 01            [12]  748 	mov	a,#0x01
      0002AE 2D               [12]  749 	add	a,r5
      0002AF FA               [12]  750 	mov	r2,a
      0002B0 E4               [12]  751 	clr	a
      0002B1 3E               [12]  752 	addc	a,r6
      0002B2 FB               [12]  753 	mov	r3,a
      0002B3 8F 04            [24]  754 	mov	ar4,r7
      0002B5 8A 82            [24]  755 	mov	dpl,r2
      0002B7 8B 83            [24]  756 	mov	dph,r3
      0002B9 8C F0            [24]  757 	mov	b,r4
      0002BB 74 15            [12]  758 	mov	a,#0x15
      0002BD 12 04 C4         [24]  759 	lcall	__gptrput
                                    760 ;	.\src\main.c:104: array[2] = 0x17;
      0002C0 74 02            [12]  761 	mov	a,#0x02
      0002C2 2D               [12]  762 	add	a,r5
      0002C3 FD               [12]  763 	mov	r5,a
      0002C4 E4               [12]  764 	clr	a
      0002C5 3E               [12]  765 	addc	a,r6
      0002C6 FE               [12]  766 	mov	r6,a
      0002C7 8D 82            [24]  767 	mov	dpl,r5
      0002C9 8E 83            [24]  768 	mov	dph,r6
      0002CB 8F F0            [24]  769 	mov	b,r7
      0002CD 74 17            [12]  770 	mov	a,#0x17
                                    771 ;	.\src\main.c:106: }
                                    772 ;	.\src\main.c:107: }
      0002CF 02 04 C4         [24]  773 	ljmp	__gptrput
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'nextColumn'
                                    776 ;------------------------------------------------------------
                                    777 ;	.\src\main.c:110: void nextColumn(void){
                                    778 ;	-----------------------------------------
                                    779 ;	 function nextColumn
                                    780 ;	-----------------------------------------
      0002D2                        781 _nextColumn:
                                    782 ;	.\src\main.c:117: if (ptrColumn >= 0 && ptrColumn < 3)
      0002D2 74 FD            [12]  783 	mov	a,#0x100 - 0x03
      0002D4 25 0B            [12]  784 	add	a,_ptrColumn
      0002D6 40 11            [24]  785 	jc	00102$
                                    786 ;	.\src\main.c:118: P1 = (ptrColumn << 5) | (first[ptrColumn]);
      0002D8 E5 0B            [12]  787 	mov	a,_ptrColumn
      0002DA C4               [12]  788 	swap	a
      0002DB 23               [12]  789 	rl	a
      0002DC 54 E0            [12]  790 	anl	a,#0xe0
      0002DE FF               [12]  791 	mov	r7,a
      0002DF E5 0B            [12]  792 	mov	a,_ptrColumn
      0002E1 24 0F            [12]  793 	add	a,#_first
      0002E3 F9               [12]  794 	mov	r1,a
      0002E4 E7               [12]  795 	mov	a,@r1
      0002E5 FE               [12]  796 	mov	r6,a
      0002E6 4F               [12]  797 	orl	a,r7
      0002E7 F5 90            [12]  798 	mov	_P1,a
      0002E9                        799 00102$:
                                    800 ;	.\src\main.c:120: if (ptrColumn == 3)
      0002E9 74 03            [12]  801 	mov	a,#0x03
      0002EB B5 0B 09         [24]  802 	cjne	a,_ptrColumn,00105$
                                    803 ;	.\src\main.c:121: P1 = (ptrColumn << 5); 
      0002EE E5 0B            [12]  804 	mov	a,_ptrColumn
      0002F0 FF               [12]  805 	mov	r7,a
      0002F1 C4               [12]  806 	swap	a
      0002F2 23               [12]  807 	rl	a
      0002F3 54 E0            [12]  808 	anl	a,#0xe0
      0002F5 F5 90            [12]  809 	mov	_P1,a
      0002F7                        810 00105$:
                                    811 ;	.\src\main.c:123: if (ptrColumn > 3 && ptrColumn <= 7)
      0002F7 E5 0B            [12]  812 	mov	a,_ptrColumn
      0002F9 24 FC            [12]  813 	add	a,#0xff - 0x03
      0002FB 50 19            [24]  814 	jnc	00107$
      0002FD E5 0B            [12]  815 	mov	a,_ptrColumn
      0002FF 24 F8            [12]  816 	add	a,#0xff - 0x07
      000301 40 13            [24]  817 	jc	00107$
                                    818 ;	.\src\main.c:124: P1 = (ptrColumn << 5) | (second[ptrColumn - 4]);
      000303 E5 0B            [12]  819 	mov	a,_ptrColumn
      000305 FF               [12]  820 	mov	r7,a
      000306 C4               [12]  821 	swap	a
      000307 23               [12]  822 	rl	a
      000308 54 E0            [12]  823 	anl	a,#0xe0
      00030A FE               [12]  824 	mov	r6,a
      00030B EF               [12]  825 	mov	a,r7
      00030C 24 FC            [12]  826 	add	a,#0xfc
      00030E 24 12            [12]  827 	add	a,#_second
      000310 F9               [12]  828 	mov	r1,a
      000311 E7               [12]  829 	mov	a,@r1
      000312 FF               [12]  830 	mov	r7,a
      000313 4E               [12]  831 	orl	a,r6
      000314 F5 90            [12]  832 	mov	_P1,a
      000316                        833 00107$:
                                    834 ;	.\src\main.c:126: ptrColumn++;
      000316 05 0B            [12]  835 	inc	_ptrColumn
                                    836 ;	.\src\main.c:128: if (ptrColumn == countColumn)
      000318 74 07            [12]  837 	mov	a,#0x07
      00031A B5 0B 03         [24]  838 	cjne	a,_ptrColumn,00111$
                                    839 ;	.\src\main.c:129: ptrColumn = 0;
      00031D 75 0B 00         [24]  840 	mov	_ptrColumn,#0x00
      000320                        841 00111$:
                                    842 ;	.\src\main.c:130: }
      000320 22               [24]  843 	ret
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'setDigits'
                                    846 ;------------------------------------------------------------
                                    847 ;	.\src\main.c:134: void setDigits()
                                    848 ;	-----------------------------------------
                                    849 ;	 function setDigits
                                    850 ;	-----------------------------------------
      000321                        851 _setDigits:
                                    852 ;	.\src\main.c:136: switch(mode)
      000321 E4               [12]  853 	clr	a
      000322 B5 0A 02         [24]  854 	cjne	a,_mode,00119$
      000325 80 0F            [24]  855 	sjmp	00101$
      000327                        856 00119$:
      000327 74 01            [12]  857 	mov	a,#0x01
      000329 B5 0A 02         [24]  858 	cjne	a,_mode,00120$
      00032C 80 40            [24]  859 	sjmp	00102$
      00032E                        860 00120$:
      00032E 74 02            [12]  861 	mov	a,#0x02
      000330 B5 0A 02         [24]  862 	cjne	a,_mode,00121$
      000333 80 71            [24]  863 	sjmp	00103$
      000335                        864 00121$:
      000335 22               [24]  865 	ret
                                    866 ;	.\src\main.c:138: case 0:
      000336                        867 00101$:
                                    868 ;	.\src\main.c:139: setData(timeSec/10, &second[0]);
      000336 AE 0C            [24]  869 	mov	r6,_timeSec
      000338 7F 00            [12]  870 	mov	r7,#0x00
      00033A 75 15 0A         [24]  871 	mov	__divsint_PARM_2,#0x0a
                                    872 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00033D 8F 16            [24]  873 	mov	(__divsint_PARM_2 + 1),r7
      00033F 8E 82            [24]  874 	mov	dpl,r6
      000341 8F 83            [24]  875 	mov	dph,r7
      000343 12 05 8B         [24]  876 	lcall	__divsint
      000346 75 15 12         [24]  877 	mov	_setData_PARM_2,#_second
      000349 75 16 00         [24]  878 	mov	(_setData_PARM_2 + 1),#0x00
      00034C 75 17 40         [24]  879 	mov	(_setData_PARM_2 + 2),#0x40
      00034F 12 00 82         [24]  880 	lcall	_setData
                                    881 ;	.\src\main.c:140: setData(timeSec%10, &first[0]);
      000352 AE 0C            [24]  882 	mov	r6,_timeSec
      000354 7F 00            [12]  883 	mov	r7,#0x00
      000356 75 15 0A         [24]  884 	mov	__modsint_PARM_2,#0x0a
                                    885 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000359 8F 16            [24]  886 	mov	(__modsint_PARM_2 + 1),r7
      00035B 8E 82            [24]  887 	mov	dpl,r6
      00035D 8F 83            [24]  888 	mov	dph,r7
      00035F 12 05 55         [24]  889 	lcall	__modsint
      000362 75 15 0F         [24]  890 	mov	_setData_PARM_2,#_first
      000365 75 16 00         [24]  891 	mov	(_setData_PARM_2 + 1),#0x00
      000368 75 17 40         [24]  892 	mov	(_setData_PARM_2 + 2),#0x40
                                    893 ;	.\src\main.c:141: break;
      00036B 02 00 82         [24]  894 	ljmp	_setData
                                    895 ;	.\src\main.c:142: case 1:
      00036E                        896 00102$:
                                    897 ;	.\src\main.c:143: setData(timeMin/10, &second[0]);
      00036E AE 0D            [24]  898 	mov	r6,_timeMin
      000370 7F 00            [12]  899 	mov	r7,#0x00
      000372 75 15 0A         [24]  900 	mov	__divsint_PARM_2,#0x0a
                                    901 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000375 8F 16            [24]  902 	mov	(__divsint_PARM_2 + 1),r7
      000377 8E 82            [24]  903 	mov	dpl,r6
      000379 8F 83            [24]  904 	mov	dph,r7
      00037B 12 05 8B         [24]  905 	lcall	__divsint
      00037E 75 15 12         [24]  906 	mov	_setData_PARM_2,#_second
      000381 75 16 00         [24]  907 	mov	(_setData_PARM_2 + 1),#0x00
      000384 75 17 40         [24]  908 	mov	(_setData_PARM_2 + 2),#0x40
      000387 12 00 82         [24]  909 	lcall	_setData
                                    910 ;	.\src\main.c:144: setData(timeMin%10, &first[0]);
      00038A AE 0D            [24]  911 	mov	r6,_timeMin
      00038C 7F 00            [12]  912 	mov	r7,#0x00
      00038E 75 15 0A         [24]  913 	mov	__modsint_PARM_2,#0x0a
                                    914 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000391 8F 16            [24]  915 	mov	(__modsint_PARM_2 + 1),r7
      000393 8E 82            [24]  916 	mov	dpl,r6
      000395 8F 83            [24]  917 	mov	dph,r7
      000397 12 05 55         [24]  918 	lcall	__modsint
      00039A 75 15 0F         [24]  919 	mov	_setData_PARM_2,#_first
      00039D 75 16 00         [24]  920 	mov	(_setData_PARM_2 + 1),#0x00
      0003A0 75 17 40         [24]  921 	mov	(_setData_PARM_2 + 2),#0x40
                                    922 ;	.\src\main.c:145: break;
                                    923 ;	.\src\main.c:146: case 2:
      0003A3 02 00 82         [24]  924 	ljmp	_setData
      0003A6                        925 00103$:
                                    926 ;	.\src\main.c:147: setData(timeHour/10, &second[0]);
      0003A6 AE 0E            [24]  927 	mov	r6,_timeHour
      0003A8 7F 00            [12]  928 	mov	r7,#0x00
      0003AA 75 15 0A         [24]  929 	mov	__divsint_PARM_2,#0x0a
                                    930 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0003AD 8F 16            [24]  931 	mov	(__divsint_PARM_2 + 1),r7
      0003AF 8E 82            [24]  932 	mov	dpl,r6
      0003B1 8F 83            [24]  933 	mov	dph,r7
      0003B3 12 05 8B         [24]  934 	lcall	__divsint
      0003B6 75 15 12         [24]  935 	mov	_setData_PARM_2,#_second
      0003B9 75 16 00         [24]  936 	mov	(_setData_PARM_2 + 1),#0x00
      0003BC 75 17 40         [24]  937 	mov	(_setData_PARM_2 + 2),#0x40
      0003BF 12 00 82         [24]  938 	lcall	_setData
                                    939 ;	.\src\main.c:148: setData(timeHour%10, &first[0]);
      0003C2 AE 0E            [24]  940 	mov	r6,_timeHour
      0003C4 7F 00            [12]  941 	mov	r7,#0x00
      0003C6 75 15 0A         [24]  942 	mov	__modsint_PARM_2,#0x0a
                                    943 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0003C9 8F 16            [24]  944 	mov	(__modsint_PARM_2 + 1),r7
      0003CB 8E 82            [24]  945 	mov	dpl,r6
      0003CD 8F 83            [24]  946 	mov	dph,r7
      0003CF 12 05 55         [24]  947 	lcall	__modsint
      0003D2 75 15 0F         [24]  948 	mov	_setData_PARM_2,#_first
      0003D5 75 16 00         [24]  949 	mov	(_setData_PARM_2 + 1),#0x00
      0003D8 75 17 40         [24]  950 	mov	(_setData_PARM_2 + 2),#0x40
                                    951 ;	.\src\main.c:150: }
                                    952 ;	.\src\main.c:151: }
      0003DB 02 00 82         [24]  953 	ljmp	_setData
                                    954 ;------------------------------------------------------------
                                    955 ;Allocation info for local variables in function 'T0init'
                                    956 ;------------------------------------------------------------
                                    957 ;	.\src\main.c:154: void T0init(void)
                                    958 ;	-----------------------------------------
                                    959 ;	 function T0init
                                    960 ;	-----------------------------------------
      0003DE                        961 _T0init:
                                    962 ;	.\src\main.c:156: TR0=0;
                                    963 ;	assignBit
      0003DE C2 8C            [12]  964 	clr	_TR0
                                    965 ;	.\src\main.c:157: TMOD=(TMOD&0xf0)|0x1;
      0003E0 E5 89            [12]  966 	mov	a,_TMOD
      0003E2 54 F0            [12]  967 	anl	a,#0xf0
      0003E4 44 01            [12]  968 	orl	a,#0x01
      0003E6 F5 89            [12]  969 	mov	_TMOD,a
                                    970 ;	.\src\main.c:158: TL0=(~tik);
      0003E8 75 8A EF         [24]  971 	mov	_TL0,#0xef
                                    972 ;	.\src\main.c:159: TH0=(~tik)>>8;
      0003EB 75 8C D8         [24]  973 	mov	_TH0,#0xd8
                                    974 ;	.\src\main.c:160: TR0=1;
                                    975 ;	assignBit
      0003EE D2 8C            [12]  976 	setb	_TR0
                                    977 ;	.\src\main.c:161: ET0=1; 
                                    978 ;	assignBit
      0003F0 D2 A9            [12]  979 	setb	_ET0
                                    980 ;	.\src\main.c:162: EA=1;
                                    981 ;	assignBit
      0003F2 D2 AF            [12]  982 	setb	_EA
                                    983 ;	.\src\main.c:163: }
      0003F4 22               [24]  984 	ret
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'T0_int'
                                    987 ;------------------------------------------------------------
                                    988 ;	.\src\main.c:166: void T0_int (void) __interrupt (TF0_VECTOR)
                                    989 ;	-----------------------------------------
                                    990 ;	 function T0_int
                                    991 ;	-----------------------------------------
      0003F5                        992 _T0_int:
                                    993 ;	.\src\main.c:169: TR0=0;
                                    994 ;	assignBit
      0003F5 C2 8C            [12]  995 	clr	_TR0
                                    996 ;	.\src\main.c:170: TL0=(~tik);
      0003F7 75 8A EF         [24]  997 	mov	_TL0,#0xef
                                    998 ;	.\src\main.c:171: TH0=(~tik)>>8;
      0003FA 75 8C D8         [24]  999 	mov	_TH0,#0xd8
                                   1000 ;	.\src\main.c:172: TR0=1;
                                   1001 ;	assignBit
      0003FD D2 8C            [12] 1002 	setb	_TR0
                                   1003 ;	.\src\main.c:173: count10ms++;
      0003FF 05 09            [12] 1004 	inc	_count10ms
                                   1005 ;	.\src\main.c:174: }
      000401 32               [24] 1006 	reti
                                   1007 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1008 ;	eliminated unneeded push/pop not_psw
                                   1009 ;	eliminated unneeded push/pop dpl
                                   1010 ;	eliminated unneeded push/pop dph
                                   1011 ;	eliminated unneeded push/pop b
                                   1012 ;	eliminated unneeded push/pop acc
                                   1013 ;------------------------------------------------------------
                                   1014 ;Allocation info for local variables in function 'delayFOR'
                                   1015 ;------------------------------------------------------------
                                   1016 ;kodF                      Allocated to registers r7 
                                   1017 ;ml                        Allocated to registers r6 
                                   1018 ;------------------------------------------------------------
                                   1019 ;	.\src\main.c:177: void delayFOR(unsigned char kodF)
                                   1020 ;	-----------------------------------------
                                   1021 ;	 function delayFOR
                                   1022 ;	-----------------------------------------
      000402                       1023 _delayFOR:
      000402 AF 82            [24] 1024 	mov	r7,dpl
                                   1025 ;	.\src\main.c:180: for(ml = 0; ml < kodF; ml++){}
      000404 7E 00            [12] 1026 	mov	r6,#0x00
      000406                       1027 00103$:
      000406 C3               [12] 1028 	clr	c
      000407 EE               [12] 1029 	mov	a,r6
      000408 9F               [12] 1030 	subb	a,r7
      000409 50 03            [24] 1031 	jnc	00105$
      00040B 0E               [12] 1032 	inc	r6
      00040C 80 F8            [24] 1033 	sjmp	00103$
      00040E                       1034 00105$:
                                   1035 ;	.\src\main.c:181: }
      00040E 22               [24] 1036 	ret
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'DelayMS'
                                   1039 ;------------------------------------------------------------
                                   1040 ;KodMS                     Allocated to registers 
                                   1041 ;------------------------------------------------------------
                                   1042 ;	.\src\main.c:184: void DelayMS(unsigned char KodMS)
                                   1043 ;	-----------------------------------------
                                   1044 ;	 function DelayMS
                                   1045 ;	-----------------------------------------
      00040F                       1046 _DelayMS:
      00040F AF 82            [24] 1047 	mov	r7,dpl
                                   1048 ;	.\src\main.c:186: do delay1ms;
      000411                       1049 00101$:
      000411 75 82 63         [24] 1050 	mov	dpl,#0x63
      000414 C0 07            [24] 1051 	push	ar7
      000416 12 04 02         [24] 1052 	lcall	_delayFOR
      000419 D0 07            [24] 1053 	pop	ar7
                                   1054 ;	.\src\main.c:187: while(--KodMS);
      00041B DF F4            [24] 1055 	djnz	r7,00101$
                                   1056 ;	.\src\main.c:188: }
      00041D 22               [24] 1057 	ret
                                   1058 ;------------------------------------------------------------
                                   1059 ;Allocation info for local variables in function 'buttonsCheck'
                                   1060 ;------------------------------------------------------------
                                   1061 ;	.\src\main.c:191: void buttonsCheck(void)
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function buttonsCheck
                                   1064 ;	-----------------------------------------
      00041E                       1065 _buttonsCheck:
                                   1066 ;	.\src\main.c:194: if (!P3_0)
      00041E 20 B0 1F         [24] 1067 	jb	_P3_0,00107$
                                   1068 ;	.\src\main.c:197: P1 = 0x1F;
      000421 75 90 1F         [24] 1069 	mov	_P1,#0x1f
                                   1070 ;	.\src\main.c:199: DelayMS(10);
      000424 75 82 0A         [24] 1071 	mov	dpl,#0x0a
      000427 12 04 0F         [24] 1072 	lcall	_DelayMS
                                   1073 ;	.\src\main.c:201: while(!P3_0);
      00042A                       1074 00101$:
      00042A 30 B0 FD         [24] 1075 	jnb	_P3_0,00101$
                                   1076 ;	.\src\main.c:203: DelayMS(10);
      00042D 75 82 0A         [24] 1077 	mov	dpl,#0x0a
      000430 12 04 0F         [24] 1078 	lcall	_DelayMS
                                   1079 ;	.\src\main.c:205: mode++;
      000433 05 0A            [12] 1080 	inc	_mode
                                   1081 ;	.\src\main.c:206: if (mode == 3)
      000435 74 03            [12] 1082 	mov	a,#0x03
      000437 B5 0A 03         [24] 1083 	cjne	a,_mode,00105$
                                   1084 ;	.\src\main.c:207: mode = 0;
      00043A 75 0A 00         [24] 1085 	mov	_mode,#0x00
      00043D                       1086 00105$:
                                   1087 ;	.\src\main.c:209: setDigits();
      00043D 12 03 21         [24] 1088 	lcall	_setDigits
      000440                       1089 00107$:
                                   1090 ;	.\src\main.c:212: if (!P3_1)
      000440 20 B1 1B         [24] 1091 	jb	_P3_1,00109$
                                   1092 ;	.\src\main.c:215: DelayMS(10);
      000443 75 82 0A         [24] 1093 	mov	dpl,#0x0a
      000446 12 04 0F         [24] 1094 	lcall	_DelayMS
                                   1095 ;	.\src\main.c:216: count10ms=0;
      000449 75 09 00         [24] 1096 	mov	_count10ms,#0x00
                                   1097 ;	.\src\main.c:218: timeSec = 0;
      00044C 75 0C 00         [24] 1098 	mov	_timeSec,#0x00
                                   1099 ;	.\src\main.c:220: timeMin = 0;
      00044F 75 0D 00         [24] 1100 	mov	_timeMin,#0x00
                                   1101 ;	.\src\main.c:222: timeHour = 0;
      000452 75 0E 00         [24] 1102 	mov	_timeHour,#0x00
                                   1103 ;	.\src\main.c:223: DelayMS(10);
      000455 75 82 0A         [24] 1104 	mov	dpl,#0x0a
      000458 12 04 0F         [24] 1105 	lcall	_DelayMS
                                   1106 ;	.\src\main.c:224: setDigits();
      00045B 12 03 21         [24] 1107 	lcall	_setDigits
      00045E                       1108 00109$:
                                   1109 ;	.\src\main.c:227: if (!P3_2)
      00045E 20 B2 1D         [24] 1110 	jb	_P3_2,00118$
                                   1111 ;	.\src\main.c:230: P1 = 0x1F;
      000461 75 90 1F         [24] 1112 	mov	_P1,#0x1f
                                   1113 ;	.\src\main.c:232: DelayMS(10);
      000464 75 82 0A         [24] 1114 	mov	dpl,#0x0a
      000467 12 04 0F         [24] 1115 	lcall	_DelayMS
                                   1116 ;	.\src\main.c:234: while(!P3_2);
      00046A                       1117 00110$:
      00046A 30 B2 FD         [24] 1118 	jnb	_P3_2,00110$
                                   1119 ;	.\src\main.c:236: DelayMS(10);
      00046D 75 82 0A         [24] 1120 	mov	dpl,#0x0a
      000470 12 04 0F         [24] 1121 	lcall	_DelayMS
                                   1122 ;	.\src\main.c:237: if (started) {
      000473 E5 08            [12] 1123 	mov	a,_started
      000475 60 04            [24] 1124 	jz	00114$
                                   1125 ;	.\src\main.c:238: started = 0;
      000477 75 08 00         [24] 1126 	mov	_started,#0x00
      00047A 22               [24] 1127 	ret
      00047B                       1128 00114$:
                                   1129 ;	.\src\main.c:240: started = 1;
      00047B 75 08 01         [24] 1130 	mov	_started,#0x01
      00047E                       1131 00118$:
                                   1132 ;	.\src\main.c:243: }
      00047E 22               [24] 1133 	ret
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'main'
                                   1136 ;------------------------------------------------------------
                                   1137 ;	.\src\main.c:245: void main(void)
                                   1138 ;	-----------------------------------------
                                   1139 ;	 function main
                                   1140 ;	-----------------------------------------
      00047F                       1141 _main:
                                   1142 ;	.\src\main.c:248: T0init();
      00047F 12 03 DE         [24] 1143 	lcall	_T0init
                                   1144 ;	.\src\main.c:250: setDigits();
      000482 12 03 21         [24] 1145 	lcall	_setDigits
                                   1146 ;	.\src\main.c:251: while(1)
      000485                       1147 00112$:
                                   1148 ;	.\src\main.c:254: buttonsCheck();
      000485 12 04 1E         [24] 1149 	lcall	_buttonsCheck
                                   1150 ;	.\src\main.c:256: DelayMS(10);
      000488 75 82 0A         [24] 1151 	mov	dpl,#0x0a
      00048B 12 04 0F         [24] 1152 	lcall	_DelayMS
                                   1153 ;	.\src\main.c:258: nextColumn();
      00048E 12 02 D2         [24] 1154 	lcall	_nextColumn
                                   1155 ;	.\src\main.c:261: if (started)
      000491 E5 08            [12] 1156 	mov	a,_started
      000493 60 F0            [24] 1157 	jz	00112$
                                   1158 ;	.\src\main.c:263: if (count10ms >= 100)
      000495 74 9C            [12] 1159 	mov	a,#0x100 - 0x64
      000497 25 09            [12] 1160 	add	a,_count10ms
      000499 50 EA            [24] 1161 	jnc	00112$
                                   1162 ;	.\src\main.c:265: count10ms -= 100;
      00049B E5 09            [12] 1163 	mov	a,_count10ms
      00049D 24 9C            [12] 1164 	add	a,#0x9c
      00049F F5 09            [12] 1165 	mov	_count10ms,a
                                   1166 ;	.\src\main.c:266: timeSec++;
      0004A1 05 0C            [12] 1167 	inc	_timeSec
                                   1168 ;	.\src\main.c:267: if (timeSec == 61)
      0004A3 74 3D            [12] 1169 	mov	a,#0x3d
      0004A5 B5 0C 17         [24] 1170 	cjne	a,_timeSec,00106$
                                   1171 ;	.\src\main.c:269: timeSec = 0;
      0004A8 75 0C 00         [24] 1172 	mov	_timeSec,#0x00
                                   1173 ;	.\src\main.c:270: timeMin++;
      0004AB 05 0D            [12] 1174 	inc	_timeMin
                                   1175 ;	.\src\main.c:271: if (timeMin == 61)
      0004AD 74 3D            [12] 1176 	mov	a,#0x3d
      0004AF B5 0D 0D         [24] 1177 	cjne	a,_timeMin,00106$
                                   1178 ;	.\src\main.c:273: timeMin = 0;
      0004B2 75 0D 00         [24] 1179 	mov	_timeMin,#0x00
                                   1180 ;	.\src\main.c:274: timeHour++;
      0004B5 05 0E            [12] 1181 	inc	_timeHour
                                   1182 ;	.\src\main.c:275: if (timeHour == 24)
      0004B7 74 18            [12] 1183 	mov	a,#0x18
      0004B9 B5 0E 03         [24] 1184 	cjne	a,_timeHour,00106$
                                   1185 ;	.\src\main.c:276: timeHour = 0;
      0004BC 75 0E 00         [24] 1186 	mov	_timeHour,#0x00
      0004BF                       1187 00106$:
                                   1188 ;	.\src\main.c:279: setDigits();
      0004BF 12 03 21         [24] 1189 	lcall	_setDigits
                                   1190 ;	.\src\main.c:284: }
      0004C2 80 C1            [24] 1191 	sjmp	00112$
                                   1192 	.area CSEG    (CODE)
                                   1193 	.area CONST   (CODE)
                                   1194 	.area XINIT   (CODE)
                                   1195 	.area CABS    (ABS,CODE)
