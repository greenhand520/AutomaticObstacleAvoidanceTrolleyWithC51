                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.3 #10694 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _seg
                                     12 	.globl _main
                                     13 	.globl _timer2
                                     14 	.globl _serial
                                     15 	.globl _int1
                                     16 	.globl _timer0
                                     17 	.globl _putcharToSer
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _FL
                                     25 	.globl _P
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ET2
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _T2EX
                                     88 	.globl _T2
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _B
                                    114 	.globl _A
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2MOD
                                    122 	.globl _T2CON
                                    123 	.globl _IP
                                    124 	.globl _P3
                                    125 	.globl _IE
                                    126 	.globl _P2
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _P1
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _P0
                                    141 	.globl _isFirst
                                    142 	.globl _isOverStep
                                    143 	.globl _angle
                                    144 	.globl _t2InterruptTimes
                                    145 	.globl _t0InterruptTimes
                                    146 	.globl _speed
                                    147 	.globl _operate
                                    148 	.globl _delay
                                    149 	.globl _sensorTrigger
                                    150 	.globl _ledStatus
                                    151 	.globl _setTurnAngle
                                    152 	.globl _steerTurn
                                    153 	.globl _startSR04
                                    154 	.globl _calculate
                                    155 	.globl _selfControl
                                    156 	.globl _btControl
                                    157 	.globl _initInterrupt
                                    158 	.globl _initTimer0
                                    159 	.globl _initSerial
                                    160 	.globl _initTimer2
                                    161 	.globl _setup
                                    162 	.globl _loop
                                    163 ;--------------------------------------------------------
                                    164 ; special function registers
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0	=	0x0080
                           000081   169 _SP	=	0x0081
                           000082   170 _DPL	=	0x0082
                           000083   171 _DPH	=	0x0083
                           000087   172 _PCON	=	0x0087
                           000088   173 _TCON	=	0x0088
                           000089   174 _TMOD	=	0x0089
                           00008A   175 _TL0	=	0x008a
                           00008B   176 _TL1	=	0x008b
                           00008C   177 _TH0	=	0x008c
                           00008D   178 _TH1	=	0x008d
                           000090   179 _P1	=	0x0090
                           000098   180 _SCON	=	0x0098
                           000099   181 _SBUF	=	0x0099
                           0000A0   182 _P2	=	0x00a0
                           0000A8   183 _IE	=	0x00a8
                           0000B0   184 _P3	=	0x00b0
                           0000B8   185 _IP	=	0x00b8
                           0000C8   186 _T2CON	=	0x00c8
                           0000C9   187 _T2MOD	=	0x00c9
                           0000CA   188 _RCAP2L	=	0x00ca
                           0000CB   189 _RCAP2H	=	0x00cb
                           0000CC   190 _TL2	=	0x00cc
                           0000CD   191 _TH2	=	0x00cd
                           0000D0   192 _PSW	=	0x00d0
                           0000E0   193 _ACC	=	0x00e0
                           0000E0   194 _A	=	0x00e0
                           0000F0   195 _B	=	0x00f0
                                    196 ;--------------------------------------------------------
                                    197 ; special function bits
                                    198 ;--------------------------------------------------------
                                    199 	.area RSEG    (ABS,DATA)
      000000                        200 	.org 0x0000
                           000080   201 _P0_0	=	0x0080
                           000081   202 _P0_1	=	0x0081
                           000082   203 _P0_2	=	0x0082
                           000083   204 _P0_3	=	0x0083
                           000084   205 _P0_4	=	0x0084
                           000085   206 _P0_5	=	0x0085
                           000086   207 _P0_6	=	0x0086
                           000087   208 _P0_7	=	0x0087
                           000088   209 _IT0	=	0x0088
                           000089   210 _IE0	=	0x0089
                           00008A   211 _IT1	=	0x008a
                           00008B   212 _IE1	=	0x008b
                           00008C   213 _TR0	=	0x008c
                           00008D   214 _TF0	=	0x008d
                           00008E   215 _TR1	=	0x008e
                           00008F   216 _TF1	=	0x008f
                           000090   217 _P1_0	=	0x0090
                           000091   218 _P1_1	=	0x0091
                           000092   219 _P1_2	=	0x0092
                           000093   220 _P1_3	=	0x0093
                           000094   221 _P1_4	=	0x0094
                           000095   222 _P1_5	=	0x0095
                           000096   223 _P1_6	=	0x0096
                           000097   224 _P1_7	=	0x0097
                           000090   225 _T2	=	0x0090
                           000091   226 _T2EX	=	0x0091
                           000098   227 _RI	=	0x0098
                           000099   228 _TI	=	0x0099
                           00009A   229 _RB8	=	0x009a
                           00009B   230 _TB8	=	0x009b
                           00009C   231 _REN	=	0x009c
                           00009D   232 _SM2	=	0x009d
                           00009E   233 _SM1	=	0x009e
                           00009F   234 _SM0	=	0x009f
                           0000A0   235 _P2_0	=	0x00a0
                           0000A1   236 _P2_1	=	0x00a1
                           0000A2   237 _P2_2	=	0x00a2
                           0000A3   238 _P2_3	=	0x00a3
                           0000A4   239 _P2_4	=	0x00a4
                           0000A5   240 _P2_5	=	0x00a5
                           0000A6   241 _P2_6	=	0x00a6
                           0000A7   242 _P2_7	=	0x00a7
                           0000A8   243 _EX0	=	0x00a8
                           0000A9   244 _ET0	=	0x00a9
                           0000AA   245 _EX1	=	0x00aa
                           0000AB   246 _ET1	=	0x00ab
                           0000AC   247 _ES	=	0x00ac
                           0000AD   248 _ET2	=	0x00ad
                           0000AF   249 _EA	=	0x00af
                           0000B0   250 _P3_0	=	0x00b0
                           0000B1   251 _P3_1	=	0x00b1
                           0000B2   252 _P3_2	=	0x00b2
                           0000B3   253 _P3_3	=	0x00b3
                           0000B4   254 _P3_4	=	0x00b4
                           0000B5   255 _P3_5	=	0x00b5
                           0000B6   256 _P3_6	=	0x00b6
                           0000B7   257 _P3_7	=	0x00b7
                           0000B0   258 _RXD	=	0x00b0
                           0000B1   259 _TXD	=	0x00b1
                           0000B2   260 _INT0	=	0x00b2
                           0000B3   261 _INT1	=	0x00b3
                           0000B4   262 _T0	=	0x00b4
                           0000B5   263 _T1	=	0x00b5
                           0000B6   264 _WR	=	0x00b6
                           0000B7   265 _RD	=	0x00b7
                           0000B8   266 _PX0	=	0x00b8
                           0000B9   267 _PT0	=	0x00b9
                           0000BA   268 _PX1	=	0x00ba
                           0000BB   269 _PT1	=	0x00bb
                           0000BC   270 _PS	=	0x00bc
                           0000BD   271 _PT2	=	0x00bd
                           0000C8   272 _T2CON_0	=	0x00c8
                           0000C9   273 _T2CON_1	=	0x00c9
                           0000CA   274 _T2CON_2	=	0x00ca
                           0000CB   275 _T2CON_3	=	0x00cb
                           0000CC   276 _T2CON_4	=	0x00cc
                           0000CD   277 _T2CON_5	=	0x00cd
                           0000CE   278 _T2CON_6	=	0x00ce
                           0000CF   279 _T2CON_7	=	0x00cf
                           0000C8   280 _CP_RL2	=	0x00c8
                           0000C9   281 _C_T2	=	0x00c9
                           0000CA   282 _TR2	=	0x00ca
                           0000CB   283 _EXEN2	=	0x00cb
                           0000CC   284 _TCLK	=	0x00cc
                           0000CD   285 _RCLK	=	0x00cd
                           0000CE   286 _EXF2	=	0x00ce
                           0000CF   287 _TF2	=	0x00cf
                           0000D0   288 _P	=	0x00d0
                           0000D1   289 _FL	=	0x00d1
                           0000D2   290 _OV	=	0x00d2
                           0000D3   291 _RS0	=	0x00d3
                           0000D4   292 _RS1	=	0x00d4
                           0000D5   293 _F0	=	0x00d5
                           0000D6   294 _AC	=	0x00d6
                           0000D7   295 _CY	=	0x00d7
                                    296 ;--------------------------------------------------------
                                    297 ; overlayable register banks
                                    298 ;--------------------------------------------------------
                                    299 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        300 	.ds 8
                                    301 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        302 	.ds 8
                                    303 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        304 	.ds 8
                                    305 	.area REG_BANK_3	(REL,OVR,DATA)
      000018                        306 	.ds 8
                                    307 ;--------------------------------------------------------
                                    308 ; overlayable bit register bank
                                    309 ;--------------------------------------------------------
                                    310 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        311 bits:
      000021                        312 	.ds 1
                           008000   313 	b0 = bits[0]
                           008100   314 	b1 = bits[1]
                           008200   315 	b2 = bits[2]
                           008300   316 	b3 = bits[3]
                           008400   317 	b4 = bits[4]
                           008500   318 	b5 = bits[5]
                           008600   319 	b6 = bits[6]
                           008700   320 	b7 = bits[7]
                                    321 ;--------------------------------------------------------
                                    322 ; internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area DSEG    (DATA)
      000022                        325 _operate::
      000022                        326 	.ds 1
      000023                        327 _speed::
      000023                        328 	.ds 1
      000024                        329 _t0InterruptTimes::
      000024                        330 	.ds 2
      000026                        331 _t2InterruptTimes::
      000026                        332 	.ds 2
      000028                        333 _angle::
      000028                        334 	.ds 1
                                    335 ;--------------------------------------------------------
                                    336 ; overlayable items in internal ram 
                                    337 ;--------------------------------------------------------
                                    338 	.area	OSEG    (OVR,DATA)
                                    339 	.area	OSEG    (OVR,DATA)
                                    340 	.area	OSEG    (OVR,DATA)
                                    341 	.area	OSEG    (OVR,DATA)
                                    342 ;--------------------------------------------------------
                                    343 ; Stack segment in internal ram 
                                    344 ;--------------------------------------------------------
                                    345 	.area	SSEG
      00002B                        346 __start__stack:
      00002B                        347 	.ds	1
                                    348 
                                    349 ;--------------------------------------------------------
                                    350 ; indirectly addressable internal ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area ISEG    (DATA)
                                    353 ;--------------------------------------------------------
                                    354 ; absolute internal ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area IABS    (ABS,DATA)
                                    357 	.area IABS    (ABS,DATA)
                                    358 ;--------------------------------------------------------
                                    359 ; bit data
                                    360 ;--------------------------------------------------------
                                    361 	.area BSEG    (BIT)
      000000                        362 _isOverStep::
      000000                        363 	.ds 1
      000001                        364 _isFirst::
      000001                        365 	.ds 1
                                    366 ;--------------------------------------------------------
                                    367 ; paged external ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area PSEG    (PAG,XDATA)
                                    370 ;--------------------------------------------------------
                                    371 ; external ram data
                                    372 ;--------------------------------------------------------
                                    373 	.area XSEG    (XDATA)
                                    374 ;--------------------------------------------------------
                                    375 ; absolute external ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area XABS    (ABS,XDATA)
                                    378 ;--------------------------------------------------------
                                    379 ; external initialized ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area XISEG   (XDATA)
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT0 (CODE)
                                    384 	.area GSINIT1 (CODE)
                                    385 	.area GSINIT2 (CODE)
                                    386 	.area GSINIT3 (CODE)
                                    387 	.area GSINIT4 (CODE)
                                    388 	.area GSINIT5 (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.area GSFINAL (CODE)
                                    391 	.area CSEG    (CODE)
                                    392 ;--------------------------------------------------------
                                    393 ; interrupt vector 
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
      000000                        396 __interrupt_vect:
      000000 02 00 31         [24]  397 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  398 	reti
      000004                        399 	.ds	7
      00000B 02 03 A1         [24]  400 	ljmp	_timer0
      00000E                        401 	.ds	5
      000013 02 03 FC         [24]  402 	ljmp	_int1
      000016                        403 	.ds	5
      00001B 32               [24]  404 	reti
      00001C                        405 	.ds	7
      000023 02 04 00         [24]  406 	ljmp	_serial
      000026                        407 	.ds	5
      00002B 02 04 0E         [24]  408 	ljmp	_timer2
                                    409 ;--------------------------------------------------------
                                    410 ; global & static initialisations
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area GSINIT  (CODE)
                                    414 	.area GSFINAL (CODE)
                                    415 	.area GSINIT  (CODE)
                                    416 	.globl __sdcc_gsinit_startup
                                    417 	.globl __sdcc_program_startup
                                    418 	.globl __start__stack
                                    419 	.globl __mcs51_genXINIT
                                    420 	.globl __mcs51_genXRAMCLEAR
                                    421 	.globl __mcs51_genRAMCLEAR
                                    422 ;	main.c:68: uchar operate = 0;
      00008A 75 22 00         [24]  423 	mov	_operate,#0x00
                                    424 ;	main.c:74: uchar speed = 8;	//小车速度
      00008D 75 23 08         [24]  425 	mov	_speed,#0x08
                                    426 ;	main.c:78: __bit isOverStep = 0;	//距离过远，超出测量范围
                                    427 ;	assignBit
      000090 C2 00            [12]  428 	clr	_isOverStep
                                    429 ;	main.c:79: __bit isFirst = 1;
                                    430 ;	assignBit
      000092 D2 01            [12]  431 	setb	_isFirst
                                    432 	.area GSFINAL (CODE)
      000094 02 00 2E         [24]  433 	ljmp	__sdcc_program_startup
                                    434 ;--------------------------------------------------------
                                    435 ; Home
                                    436 ;--------------------------------------------------------
                                    437 	.area HOME    (CODE)
                                    438 	.area HOME    (CODE)
      00002E                        439 __sdcc_program_startup:
      00002E 02 04 E2         [24]  440 	ljmp	_main
                                    441 ;	return from main will return to caller
                                    442 ;--------------------------------------------------------
                                    443 ; code
                                    444 ;--------------------------------------------------------
                                    445 	.area CSEG    (CODE)
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function 'delay'
                                    448 ;------------------------------------------------------------
                                    449 ;n                         Allocated to registers 
                                    450 ;i                         Allocated to registers r6 r7 
                                    451 ;j                         Allocated to registers r4 r5 
                                    452 ;------------------------------------------------------------
                                    453 ;	main.c:82: void delay(uint n){
                                    454 ;	-----------------------------------------
                                    455 ;	 function delay
                                    456 ;	-----------------------------------------
      000097                        457 _delay:
                           000007   458 	ar7 = 0x07
                           000006   459 	ar6 = 0x06
                           000005   460 	ar5 = 0x05
                           000004   461 	ar4 = 0x04
                           000003   462 	ar3 = 0x03
                           000002   463 	ar2 = 0x02
                           000001   464 	ar1 = 0x01
                           000000   465 	ar0 = 0x00
      000097 AE 82            [24]  466 	mov	r6,dpl
      000099 AF 83            [24]  467 	mov	r7,dph
                                    468 ;	main.c:84: for(i=n;i>0;i--){
      00009B                        469 00106$:
      00009B EE               [12]  470 	mov	a,r6
      00009C 4F               [12]  471 	orl	a,r7
      00009D 60 1B            [24]  472 	jz	00108$
                                    473 ;	main.c:85: for(j=112;j>0;j--);
      00009F 7C 70            [12]  474 	mov	r4,#0x70
      0000A1 7D 00            [12]  475 	mov	r5,#0x00
      0000A3                        476 00104$:
      0000A3 EC               [12]  477 	mov	a,r4
      0000A4 24 FF            [12]  478 	add	a,#0xff
      0000A6 FA               [12]  479 	mov	r2,a
      0000A7 ED               [12]  480 	mov	a,r5
      0000A8 34 FF            [12]  481 	addc	a,#0xff
      0000AA FB               [12]  482 	mov	r3,a
      0000AB 8A 04            [24]  483 	mov	ar4,r2
      0000AD 8B 05            [24]  484 	mov	ar5,r3
      0000AF EA               [12]  485 	mov	a,r2
      0000B0 4B               [12]  486 	orl	a,r3
      0000B1 70 F0            [24]  487 	jnz	00104$
                                    488 ;	main.c:84: for(i=n;i>0;i--){
      0000B3 1E               [12]  489 	dec	r6
      0000B4 BE FF 01         [24]  490 	cjne	r6,#0xff,00133$
      0000B7 1F               [12]  491 	dec	r7
      0000B8                        492 00133$:
      0000B8 80 E1            [24]  493 	sjmp	00106$
      0000BA                        494 00108$:
                                    495 ;	main.c:87: }
      0000BA 22               [24]  496 	ret
                                    497 ;------------------------------------------------------------
                                    498 ;Allocation info for local variables in function 'putcharToSer'
                                    499 ;------------------------------------------------------------
                                    500 ;c                         Allocated to registers 
                                    501 ;------------------------------------------------------------
                                    502 ;	main.c:90: void  putcharToSer(char c) {
                                    503 ;	-----------------------------------------
                                    504 ;	 function putcharToSer
                                    505 ;	-----------------------------------------
      0000BB                        506 _putcharToSer:
      0000BB 85 82 99         [24]  507 	mov	_SBUF,dpl
                                    508 ;	main.c:92: while(!TI);
      0000BE                        509 00101$:
                                    510 ;	main.c:93: TI = 0;
                                    511 ;	assignBit
      0000BE 10 99 02         [24]  512 	jbc	_TI,00114$
      0000C1 80 FB            [24]  513 	sjmp	00101$
      0000C3                        514 00114$:
                                    515 ;	main.c:94: }
      0000C3 22               [24]  516 	ret
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'sensorTrigger'
                                    519 ;------------------------------------------------------------
                                    520 ;	main.c:97: void sensorTrigger() {
                                    521 ;	-----------------------------------------
                                    522 ;	 function sensorTrigger
                                    523 ;	-----------------------------------------
      0000C4                        524 _sensorTrigger:
                                    525 ;	main.c:98: if(!(BACK_SENSER & FRONT_SENSER & LEFT_SENSER & RIGHT_SENSER)) {
      0000C4 A2 95            [12]  526 	mov	c,_P1_5
      0000C6 82 94            [24]  527 	anl	c,_P1_4
      0000C8 82 96            [24]  528 	anl	c,_P1_6
      0000CA 82 97            [24]  529 	anl	c,_P1_7
      0000CC 40 03            [24]  530 	jc	00102$
                                    531 ;	main.c:99: SWITCH_SELF_CONTROL = 0;
                                    532 ;	assignBit
      0000CE C2 90            [12]  533 	clr	_P1_0
      0000D0 22               [24]  534 	ret
      0000D1                        535 00102$:
                                    536 ;	main.c:101: SWITCH_SELF_CONTROL = 1;
                                    537 ;	assignBit
      0000D1 D2 90            [12]  538 	setb	_P1_0
                                    539 ;	main.c:103: }
      0000D3 22               [24]  540 	ret
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'ledStatus'
                                    543 ;------------------------------------------------------------
                                    544 ;s                         Allocated to registers r7 
                                    545 ;------------------------------------------------------------
                                    546 ;	main.c:107: void ledStatus(uchar s) {
                                    547 ;	-----------------------------------------
                                    548 ;	 function ledStatus
                                    549 ;	-----------------------------------------
      0000D4                        550 _ledStatus:
      0000D4 AF 82            [24]  551 	mov	r7,dpl
                                    552 ;	main.c:108: switch(s) {
      0000D6 BF 00 02         [24]  553 	cjne	r7,#0x00,00119$
      0000D9 80 0A            [24]  554 	sjmp	00101$
      0000DB                        555 00119$:
      0000DB BF 01 02         [24]  556 	cjne	r7,#0x01,00120$
      0000DE 80 0C            [24]  557 	sjmp	00102$
      0000E0                        558 00120$:
                                    559 ;	main.c:109: case(0):
      0000E0 BF 02 16         [24]  560 	cjne	r7,#0x02,00105$
      0000E3 80 0E            [24]  561 	sjmp	00103$
      0000E5                        562 00101$:
                                    563 ;	main.c:110: STOP_RED_LED = 0;	//停止指示灯亮
                                    564 ;	assignBit
      0000E5 C2 91            [12]  565 	clr	_P1_1
                                    566 ;	main.c:111: BT_BLUE_LED = 1;
                                    567 ;	assignBit
      0000E7 D2 92            [12]  568 	setb	_P1_2
                                    569 ;	main.c:112: SELF_GREEN_LED = 1;
                                    570 ;	assignBit
      0000E9 D2 93            [12]  571 	setb	_P1_3
                                    572 ;	main.c:113: break;
                                    573 ;	main.c:114: case(1):
      0000EB 22               [24]  574 	ret
      0000EC                        575 00102$:
                                    576 ;	main.c:115: STOP_RED_LED = 1;
                                    577 ;	assignBit
      0000EC D2 91            [12]  578 	setb	_P1_1
                                    579 ;	main.c:116: BT_BLUE_LED = 1;	  
                                    580 ;	assignBit
      0000EE D2 92            [12]  581 	setb	_P1_2
                                    582 ;	main.c:117: SELF_GREEN_LED = 0;    //自控指示灯亮
                                    583 ;	assignBit
      0000F0 C2 93            [12]  584 	clr	_P1_3
                                    585 ;	main.c:118: break;
                                    586 ;	main.c:119: case(2):
      0000F2 22               [24]  587 	ret
      0000F3                        588 00103$:
                                    589 ;	main.c:120: STOP_RED_LED = 1;
                                    590 ;	assignBit
      0000F3 D2 91            [12]  591 	setb	_P1_1
                                    592 ;	main.c:121: SELF_GREEN_LED = 1;
                                    593 ;	assignBit
      0000F5 D2 93            [12]  594 	setb	_P1_3
                                    595 ;	main.c:122: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
                                    596 ;	assignBit
      0000F7 C2 92            [12]  597 	clr	_P1_2
                                    598 ;	main.c:124: }	
      0000F9                        599 00105$:
                                    600 ;	main.c:125: }
      0000F9 22               [24]  601 	ret
                                    602 ;------------------------------------------------------------
                                    603 ;Allocation info for local variables in function 'setTurnAngle'
                                    604 ;------------------------------------------------------------
                                    605 ;a                         Allocated to registers r7 
                                    606 ;------------------------------------------------------------
                                    607 ;	main.c:128: void setTurnAngle(uchar a) {
                                    608 ;	-----------------------------------------
                                    609 ;	 function setTurnAngle
                                    610 ;	-----------------------------------------
      0000FA                        611 _setTurnAngle:
      0000FA AF 82            [24]  612 	mov	r7,dpl
                                    613 ;	main.c:130: switch(a) {
      0000FC BF 05 02         [24]  614 	cjne	r7,#0x05,00129$
      0000FF 80 1C            [24]  615 	sjmp	00103$
      000101                        616 00129$:
      000101 BF 06 02         [24]  617 	cjne	r7,#0x06,00130$
      000104 80 1C            [24]  618 	sjmp	00104$
      000106                        619 00130$:
      000106 BF 07 02         [24]  620 	cjne	r7,#0x07,00131$
      000109 80 1C            [24]  621 	sjmp	00105$
      00010B                        622 00131$:
      00010B BF 08 02         [24]  623 	cjne	r7,#0x08,00132$
      00010E 80 08            [24]  624 	sjmp	00102$
      000110                        625 00132$:
      000110 BF 09 17         [24]  626 	cjne	r7,#0x09,00106$
                                    627 ;	main.c:132: case(STEER_N90):angle = 1; break;
      000113 75 28 01         [24]  628 	mov	_angle,#0x01
                                    629 ;	main.c:134: case(STEER_N45):angle = 2; break;
      000116 80 12            [24]  630 	sjmp	00106$
      000118                        631 00102$:
      000118 75 28 02         [24]  632 	mov	_angle,#0x02
                                    633 ;	main.c:136: case(STEER_S):angle = 3; break;
      00011B 80 0D            [24]  634 	sjmp	00106$
      00011D                        635 00103$:
      00011D 75 28 03         [24]  636 	mov	_angle,#0x03
                                    637 ;	main.c:138: case(STEER_P45):angle = 4; break;
      000120 80 08            [24]  638 	sjmp	00106$
      000122                        639 00104$:
      000122 75 28 04         [24]  640 	mov	_angle,#0x04
                                    641 ;	main.c:140: case(STEER_P90):angle = 5; break;
      000125 80 03            [24]  642 	sjmp	00106$
      000127                        643 00105$:
      000127 75 28 05         [24]  644 	mov	_angle,#0x05
                                    645 ;	main.c:141: }
      00012A                        646 00106$:
                                    647 ;	main.c:142: operate = STEER_OPERATE;
      00012A 75 22 02         [24]  648 	mov	_operate,#0x02
                                    649 ;	main.c:143: initTimer0();	
                                    650 ;	main.c:144: }
      00012D 02 03 5A         [24]  651 	ljmp	_initTimer0
                                    652 ;------------------------------------------------------------
                                    653 ;Allocation info for local variables in function 'steerTurn'
                                    654 ;------------------------------------------------------------
                                    655 ;a                         Allocated to registers r6 
                                    656 ;------------------------------------------------------------
                                    657 ;	main.c:147: void steerTurn() {
                                    658 ;	-----------------------------------------
                                    659 ;	 function steerTurn
                                    660 ;	-----------------------------------------
      000130                        661 _steerTurn:
                                    662 ;	main.c:150: t0InterruptTimes++;
      000130 05 24            [12]  663 	inc	_t0InterruptTimes
      000132 E4               [12]  664 	clr	a
      000133 B5 24 02         [24]  665 	cjne	a,_t0InterruptTimes,00116$
      000136 05 25            [12]  666 	inc	(_t0InterruptTimes + 1)
      000138                        667 00116$:
                                    668 ;	main.c:151: a = t0InterruptTimes % 5;
      000138 75 29 05         [24]  669 	mov	__moduint_PARM_2,#0x05
      00013B 75 2A 00         [24]  670 	mov	(__moduint_PARM_2 + 1),#0x00
      00013E 85 24 82         [24]  671 	mov	dpl,_t0InterruptTimes
      000141 85 25 83         [24]  672 	mov	dph,(_t0InterruptTimes + 1)
      000144 12 05 F3         [24]  673 	lcall	__moduint
      000147 AE 82            [24]  674 	mov	r6,dpl
      000149 AF 83            [24]  675 	mov	r7,dph
                                    676 ;	main.c:152: if (t0InterruptTimes == 200) {	//舵机转动到指定角度后，超声波模块开始工作,重新为定时器0赋初值
      00014B 74 C8            [12]  677 	mov	a,#0xc8
      00014D B5 24 06         [24]  678 	cjne	a,_t0InterruptTimes,00117$
      000150 E4               [12]  679 	clr	a
      000151 B5 25 02         [24]  680 	cjne	a,(_t0InterruptTimes + 1),00117$
      000154 80 02            [24]  681 	sjmp	00118$
      000156                        682 00117$:
      000156 80 0C            [24]  683 	sjmp	00102$
      000158                        684 00118$:
                                    685 ;	main.c:153: t0InterruptTimes = 0;
      000158 E4               [12]  686 	clr	a
      000159 F5 24            [12]  687 	mov	_t0InterruptTimes,a
      00015B F5 25            [12]  688 	mov	(_t0InterruptTimes + 1),a
                                    689 ;	main.c:154: STEER_PWM = 0;
                                    690 ;	assignBit
      00015D C2 B2            [12]  691 	clr	_P3_2
                                    692 ;	main.c:155: operate = SR04_OPERATE;
      00015F 75 22 03         [24]  693 	mov	_operate,#0x03
                                    694 ;	main.c:156: TR0 = 0;	
                                    695 ;	assignBit
      000162 C2 8C            [12]  696 	clr	_TR0
      000164                        697 00102$:
                                    698 ;	main.c:159: if (a < angle) {
      000164 C3               [12]  699 	clr	c
      000165 EE               [12]  700 	mov	a,r6
      000166 95 28            [12]  701 	subb	a,_angle
      000168 50 03            [24]  702 	jnc	00104$
                                    703 ;	main.c:160: STEER_PWM = 1;
                                    704 ;	assignBit
      00016A D2 B2            [12]  705 	setb	_P3_2
      00016C 22               [24]  706 	ret
      00016D                        707 00104$:
                                    708 ;	main.c:162: STEER_PWM = 0;
                                    709 ;	assignBit
      00016D C2 B2            [12]  710 	clr	_P3_2
                                    711 ;	main.c:164: }
      00016F 22               [24]  712 	ret
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'startSR04'
                                    715 ;------------------------------------------------------------
                                    716 ;	main.c:167: void startSR04() {
                                    717 ;	-----------------------------------------
                                    718 ;	 function startSR04
                                    719 ;	-----------------------------------------
      000170                        720 _startSR04:
                                    721 ;	main.c:169: initTimer0();
      000170 12 03 5A         [24]  722 	lcall	_initTimer0
                                    723 ;	main.c:170: TRIG = 1;
                                    724 ;	assignBit
      000173 D2 B5            [12]  725 	setb	_P3_5
                                    726 ;	main.c:172: __nop; __nop; __nop; __nop; __nop;
      000175 00               [12]  727 	nop	
      000176 00               [12]  728 	nop	
      000177 00               [12]  729 	nop	
      000178 00               [12]  730 	nop	
      000179 00               [12]  731 	nop	
                                    732 ;	main.c:173: __nop; __nop; __nop; __nop; __nop;
      00017A 00               [12]  733 	nop	
      00017B 00               [12]  734 	nop	
      00017C 00               [12]  735 	nop	
      00017D 00               [12]  736 	nop	
      00017E 00               [12]  737 	nop	
                                    738 ;	main.c:174: __nop; __nop; __nop; __nop; __nop;
      00017F 00               [12]  739 	nop	
      000180 00               [12]  740 	nop	
      000181 00               [12]  741 	nop	
      000182 00               [12]  742 	nop	
      000183 00               [12]  743 	nop	
                                    744 ;	main.c:175: __nop; __nop; __nop; __nop; __nop;
      000184 00               [12]  745 	nop	
      000185 00               [12]  746 	nop	
      000186 00               [12]  747 	nop	
      000187 00               [12]  748 	nop	
      000188 00               [12]  749 	nop	
                                    750 ;	main.c:176: TRIG = 0;
                                    751 ;	assignBit
      000189 C2 B5            [12]  752 	clr	_P3_5
                                    753 ;	main.c:177: while(!ECHO);
      00018B                        754 00101$:
      00018B 30 B4 FD         [24]  755 	jnb	_P3_4,00101$
                                    756 ;	main.c:178: TR0 = 1;
                                    757 ;	assignBit
      00018E D2 8C            [12]  758 	setb	_TR0
                                    759 ;	main.c:179: while(ECHO);
      000190                        760 00104$:
      000190 20 B4 FD         [24]  761 	jb	_P3_4,00104$
                                    762 ;	main.c:180: TR0 = 0;
                                    763 ;	assignBit
      000193 C2 8C            [12]  764 	clr	_TR0
                                    765 ;	main.c:181: }
      000195 22               [24]  766 	ret
                                    767 ;------------------------------------------------------------
                                    768 ;Allocation info for local variables in function 'calculate'
                                    769 ;------------------------------------------------------------
                                    770 ;time                      Allocated to registers r7 
                                    771 ;distance                  Allocated to registers 
                                    772 ;------------------------------------------------------------
                                    773 ;	main.c:184: char calculate() {
                                    774 ;	-----------------------------------------
                                    775 ;	 function calculate
                                    776 ;	-----------------------------------------
      000196                        777 _calculate:
                                    778 ;	main.c:188: time = TH0 * 256 + TL0;
      000196 AF 8C            [24]  779 	mov	r7,_TH0
      000198 7F 00            [12]  780 	mov	r7,#0x00
      00019A E5 8A            [12]  781 	mov	a,_TL0
      00019C 2F               [12]  782 	add	a,r7
      00019D F5 82            [12]  783 	mov	dpl,a
                                    784 ;	main.c:190: TH0 = 0;
                                    785 ;	1-genFromRTrack replaced	mov	_TH0,#0x00
      00019F 8F 8C            [24]  786 	mov	_TH0,r7
                                    787 ;	main.c:191: TL0 = 0;
                                    788 ;	1-genFromRTrack replaced	mov	_TL0,#0x00
      0001A1 8F 8A            [24]  789 	mov	_TL0,r7
                                    790 ;	main.c:192: time *= 1.085;
      0001A3 12 06 8F         [24]  791 	lcall	___uchar2fs
      0001A6 AC 82            [24]  792 	mov	r4,dpl
      0001A8 AD 83            [24]  793 	mov	r5,dph
      0001AA AE F0            [24]  794 	mov	r6,b
      0001AC FF               [12]  795 	mov	r7,a
      0001AD C0 04            [24]  796 	push	ar4
      0001AF C0 05            [24]  797 	push	ar5
      0001B1 C0 06            [24]  798 	push	ar6
      0001B3 C0 07            [24]  799 	push	ar7
      0001B5 90 E1 48         [24]  800 	mov	dptr,#0xe148
      0001B8 75 F0 8A         [24]  801 	mov	b,#0x8a
      0001BB 74 3F            [12]  802 	mov	a,#0x3f
      0001BD 12 04 EF         [24]  803 	lcall	___fsmul
      0001C0 AC 82            [24]  804 	mov	r4,dpl
      0001C2 AD 83            [24]  805 	mov	r5,dph
      0001C4 AE F0            [24]  806 	mov	r6,b
      0001C6 FF               [12]  807 	mov	r7,a
      0001C7 E5 81            [12]  808 	mov	a,sp
      0001C9 24 FC            [12]  809 	add	a,#0xfc
      0001CB F5 81            [12]  810 	mov	sp,a
      0001CD 8C 82            [24]  811 	mov	dpl,r4
      0001CF 8D 83            [24]  812 	mov	dph,r5
      0001D1 8E F0            [24]  813 	mov	b,r6
      0001D3 EF               [12]  814 	mov	a,r7
      0001D4 12 06 9A         [24]  815 	lcall	___fs2uchar
      0001D7 AF 82            [24]  816 	mov	r7,dpl
                                    817 ;	main.c:194: if(isOverStep) {
                                    818 ;	main.c:195: isOverStep = 0;
                                    819 ;	assignBit
      0001D9 10 00 02         [24]  820 	jbc	_isOverStep,00111$
      0001DC 80 07            [24]  821 	sjmp	00102$
      0001DE                        822 00111$:
                                    823 ;	main.c:196: SEG = 0xff;
      0001DE 75 A0 FF         [24]  824 	mov	_P2,#0xff
                                    825 ;	main.c:198: return -1;
      0001E1 75 82 FF         [24]  826 	mov	dpl,#0xff
      0001E4 22               [24]  827 	ret
      0001E5                        828 00102$:
                                    829 ;	main.c:202: char distance = time * 0.017;
      0001E5 8F 82            [24]  830 	mov	dpl,r7
      0001E7 12 06 8F         [24]  831 	lcall	___uchar2fs
      0001EA AC 82            [24]  832 	mov	r4,dpl
      0001EC AD 83            [24]  833 	mov	r5,dph
      0001EE AE F0            [24]  834 	mov	r6,b
      0001F0 FF               [12]  835 	mov	r7,a
      0001F1 C0 04            [24]  836 	push	ar4
      0001F3 C0 05            [24]  837 	push	ar5
      0001F5 C0 06            [24]  838 	push	ar6
      0001F7 C0 07            [24]  839 	push	ar7
      0001F9 90 43 96         [24]  840 	mov	dptr,#0x4396
      0001FC 75 F0 8B         [24]  841 	mov	b,#0x8b
      0001FF 74 3C            [12]  842 	mov	a,#0x3c
      000201 12 04 EF         [24]  843 	lcall	___fsmul
      000204 AC 82            [24]  844 	mov	r4,dpl
      000206 AD 83            [24]  845 	mov	r5,dph
      000208 AE F0            [24]  846 	mov	r6,b
      00020A FF               [12]  847 	mov	r7,a
      00020B E5 81            [12]  848 	mov	a,sp
      00020D 24 FC            [12]  849 	add	a,#0xfc
      00020F F5 81            [12]  850 	mov	sp,a
      000211 8C 82            [24]  851 	mov	dpl,r4
      000213 8D 83            [24]  852 	mov	dph,r5
      000215 8E F0            [24]  853 	mov	b,r6
      000217 EF               [12]  854 	mov	a,r7
                                    855 ;	main.c:203: return (distance);
                                    856 ;	main.c:207: }
      000218 02 06 9A         [24]  857 	ljmp	___fs2uchar
                                    858 ;------------------------------------------------------------
                                    859 ;Allocation info for local variables in function 'selfControl'
                                    860 ;------------------------------------------------------------
                                    861 ;	main.c:210: void selfControl() {
                                    862 ;	-----------------------------------------
                                    863 ;	 function selfControl
                                    864 ;	-----------------------------------------
      00021B                        865 _selfControl:
                                    866 ;	main.c:213: if (FRONT_SENSER == 0 & BACK_SENSER == 1) {
      00021B A2 94            [12]  867 	mov	c,_P1_4
      00021D B3               [12]  868 	cpl	c
      00021E E4               [12]  869 	clr	a
      00021F 33               [12]  870 	rlc	a
      000220 13               [12]  871 	rrc	a
      000221 82 95            [24]  872 	anl	c,_P1_5
      000223 50 40            [24]  873 	jnc	00127$
                                    874 ;	main.c:215: if ((LEFT_SENSER== 0 & RIGHT_SENSER == 0) || (LEFT_SENSER & RIGHT_SENSER) == 1) {
      000225 A2 96            [12]  875 	mov	c,_P1_6
      000227 B3               [12]  876 	cpl	c
      000228 E4               [12]  877 	clr	a
      000229 33               [12]  878 	rlc	a
      00022A FF               [12]  879 	mov	r7,a
      00022B A2 97            [12]  880 	mov	c,_P1_7
      00022D B3               [12]  881 	cpl	c
      00022E E4               [12]  882 	clr	a
      00022F 33               [12]  883 	rlc	a
      000230 FE               [12]  884 	mov	r6,a
      000231 5F               [12]  885 	anl	a,r7
      000232 60 02            [24]  886 	jz	00169$
      000234 80 0F            [24]  887 	sjmp	00104$
      000236                        888 00169$:
      000236 A2 96            [12]  889 	mov	c,_P1_6
      000238 E4               [12]  890 	clr	a
      000239 33               [12]  891 	rlc	a
      00023A FF               [12]  892 	mov	r7,a
      00023B A2 97            [12]  893 	mov	c,_P1_7
      00023D E4               [12]  894 	clr	a
      00023E 33               [12]  895 	rlc	a
      00023F FE               [12]  896 	mov	r6,a
      000240 52 07            [12]  897 	anl	ar7,a
      000242 BF 01 09         [24]  898 	cjne	r7,#0x01,00105$
      000245                        899 00104$:
                                    900 ;	main.c:216: CAR = STOP;
      000245 75 80 00         [24]  901 	mov	_P0,#0x00
                                    902 ;	main.c:217: setTurnAngle(STEER_S);
      000248 75 82 05         [24]  903 	mov	dpl,#0x05
      00024B 02 00 FA         [24]  904 	ljmp	_setTurnAngle
      00024E                        905 00105$:
                                    906 ;	main.c:219: }else if (LEFT_SENSER== 0 & RIGHT_SENSER == 1) {
      00024E A2 96            [12]  907 	mov	c,_P1_6
      000250 B3               [12]  908 	cpl	c
      000251 E4               [12]  909 	clr	a
      000252 33               [12]  910 	rlc	a
      000253 13               [12]  911 	rrc	a
      000254 82 97            [24]  912 	anl	c,_P1_7
      000256 50 09            [24]  913 	jnc	00102$
                                    914 ;	main.c:220: CAR = STOP;
      000258 75 80 00         [24]  915 	mov	_P0,#0x00
                                    916 ;	main.c:221: setTurnAngle(STEER_P45);
      00025B 75 82 06         [24]  917 	mov	dpl,#0x06
      00025E 02 00 FA         [24]  918 	ljmp	_setTurnAngle
      000261                        919 00102$:
                                    920 ;	main.c:225: CAR = STOP;
      000261 75 80 00         [24]  921 	mov	_P0,#0x00
      000264 22               [24]  922 	ret
      000265                        923 00127$:
                                    924 ;	main.c:230: }else if (BACK_SENSER == 0 & FRONT_SENSER == 1) {
      000265 A2 95            [12]  925 	mov	c,_P1_5
      000267 B3               [12]  926 	cpl	c
      000268 E4               [12]  927 	clr	a
      000269 33               [12]  928 	rlc	a
      00026A 13               [12]  929 	rrc	a
      00026B 82 94            [24]  930 	anl	c,_P1_4
      00026D 50 39            [24]  931 	jnc	00124$
                                    932 ;	main.c:232: if ((LEFT_SENSER & RIGHT_SENSER) == 1) {
      00026F A2 96            [12]  933 	mov	c,_P1_6
      000271 E4               [12]  934 	clr	a
      000272 33               [12]  935 	rlc	a
      000273 FF               [12]  936 	mov	r7,a
      000274 A2 97            [12]  937 	mov	c,_P1_7
      000276 E4               [12]  938 	clr	a
      000277 33               [12]  939 	rlc	a
      000278 52 07            [12]  940 	anl	ar7,a
      00027A BF 01 04         [24]  941 	cjne	r7,#0x01,00115$
                                    942 ;	main.c:233: CAR = FRONT;
      00027D 75 80 55         [24]  943 	mov	_P0,#0x55
      000280 22               [24]  944 	ret
      000281                        945 00115$:
                                    946 ;	main.c:235: }else if ((LEFT_SENSER | RIGHT_SENSER) == 0) {
      000281 A2 96            [12]  947 	mov	c,_P1_6
      000283 E4               [12]  948 	clr	a
      000284 33               [12]  949 	rlc	a
      000285 FF               [12]  950 	mov	r7,a
      000286 A2 97            [12]  951 	mov	c,_P1_7
      000288 E4               [12]  952 	clr	a
      000289 33               [12]  953 	rlc	a
      00028A 4F               [12]  954 	orl	a,r7
      00028B 70 09            [24]  955 	jnz	00112$
                                    956 ;	main.c:236: CAR = BACK;
      00028D 75 80 AA         [24]  957 	mov	_P0,#0xaa
                                    958 ;	main.c:237: delay(400);
      000290 90 01 90         [24]  959 	mov	dptr,#0x0190
      000293 02 00 97         [24]  960 	ljmp	_delay
      000296                        961 00112$:
                                    962 ;	main.c:240: }else if (LEFT_SENSER== 0 & RIGHT_SENSER == 1) {
      000296 A2 96            [12]  963 	mov	c,_P1_6
      000298 B3               [12]  964 	cpl	c
      000299 E4               [12]  965 	clr	a
      00029A 33               [12]  966 	rlc	a
      00029B 13               [12]  967 	rrc	a
      00029C 82 97            [24]  968 	anl	c,_P1_7
      00029E 50 04            [24]  969 	jnc	00109$
                                    970 ;	main.c:241: CAR = STOP;
      0002A0 75 80 00         [24]  971 	mov	_P0,#0x00
      0002A3 22               [24]  972 	ret
      0002A4                        973 00109$:
                                    974 ;	main.c:246: CAR = STOP;
      0002A4 75 80 00         [24]  975 	mov	_P0,#0x00
      0002A7 22               [24]  976 	ret
      0002A8                        977 00124$:
                                    978 ;	main.c:251: }else if (LEFT_SENSER== 0 & (RIGHT_SENSER & BACK_SENSER & FRONT_SENSER) == 1 ){
      0002A8 A2 96            [12]  979 	mov	c,_P1_6
      0002AA B3               [12]  980 	cpl	c
      0002AB E4               [12]  981 	clr	a
      0002AC 33               [12]  982 	rlc	a
      0002AD FF               [12]  983 	mov	r7,a
      0002AE A2 97            [12]  984 	mov	c,_P1_7
      0002B0 E4               [12]  985 	clr	a
      0002B1 33               [12]  986 	rlc	a
      0002B2 FE               [12]  987 	mov	r6,a
      0002B3 A2 95            [12]  988 	mov	c,_P1_5
      0002B5 E4               [12]  989 	clr	a
      0002B6 33               [12]  990 	rlc	a
      0002B7 52 06            [12]  991 	anl	ar6,a
      0002B9 A2 94            [12]  992 	mov	c,_P1_4
      0002BB E4               [12]  993 	clr	a
      0002BC 33               [12]  994 	rlc	a
      0002BD 52 06            [12]  995 	anl	ar6,a
      0002BF BE 01 03         [24]  996 	cjne	r6,#0x01,00178$
      0002C2 EE               [12]  997 	mov	a,r6
      0002C3 80 01            [24]  998 	sjmp	00179$
      0002C5                        999 00178$:
      0002C5 E4               [12] 1000 	clr	a
      0002C6                       1001 00179$:
      0002C6 5F               [12] 1002 	anl	a,r7
      0002C7 60 09            [24] 1003 	jz	00121$
                                   1004 ;	main.c:252: CAR = STOP;
      0002C9 75 80 00         [24] 1005 	mov	_P0,#0x00
                                   1006 ;	main.c:253: setTurnAngle(STEER_P45);
      0002CC 75 82 06         [24] 1007 	mov	dpl,#0x06
      0002CF 02 00 FA         [24] 1008 	ljmp	_setTurnAngle
      0002D2                       1009 00121$:
                                   1010 ;	main.c:256: }else if (RIGHT_SENSER == 0 & (LEFT_SENSER & FRONT_SENSER & BACK_SENSER) == 1) {
      0002D2 A2 97            [12] 1011 	mov	c,_P1_7
      0002D4 B3               [12] 1012 	cpl	c
      0002D5 E4               [12] 1013 	clr	a
      0002D6 33               [12] 1014 	rlc	a
      0002D7 FF               [12] 1015 	mov	r7,a
      0002D8 A2 96            [12] 1016 	mov	c,_P1_6
      0002DA E4               [12] 1017 	clr	a
      0002DB 33               [12] 1018 	rlc	a
      0002DC FE               [12] 1019 	mov	r6,a
      0002DD A2 94            [12] 1020 	mov	c,_P1_4
      0002DF E4               [12] 1021 	clr	a
      0002E0 33               [12] 1022 	rlc	a
      0002E1 52 06            [12] 1023 	anl	ar6,a
      0002E3 A2 95            [12] 1024 	mov	c,_P1_5
      0002E5 E4               [12] 1025 	clr	a
      0002E6 33               [12] 1026 	rlc	a
      0002E7 52 06            [12] 1027 	anl	ar6,a
      0002E9 BE 01 03         [24] 1028 	cjne	r6,#0x01,00181$
      0002EC EE               [12] 1029 	mov	a,r6
      0002ED 80 01            [24] 1030 	sjmp	00182$
      0002EF                       1031 00181$:
      0002EF E4               [12] 1032 	clr	a
      0002F0                       1033 00182$:
      0002F0 5F               [12] 1034 	anl	a,r7
      0002F1 60 09            [24] 1035 	jz	00118$
                                   1036 ;	main.c:257: CAR = STOP;
      0002F3 75 80 00         [24] 1037 	mov	_P0,#0x00
                                   1038 ;	main.c:258: setTurnAngle(STEER_N45);
      0002F6 75 82 08         [24] 1039 	mov	dpl,#0x08
      0002F9 02 00 FA         [24] 1040 	ljmp	_setTurnAngle
      0002FC                       1041 00118$:
                                   1042 ;	main.c:262: CAR = STOP;
      0002FC 75 80 00         [24] 1043 	mov	_P0,#0x00
                                   1044 ;	main.c:265: }
      0002FF 22               [24] 1045 	ret
                                   1046 ;------------------------------------------------------------
                                   1047 ;Allocation info for local variables in function 'btControl'
                                   1048 ;------------------------------------------------------------
                                   1049 ;cmd                       Allocated to registers r7 
                                   1050 ;------------------------------------------------------------
                                   1051 ;	main.c:268: void btControl(uchar cmd) {
                                   1052 ;	-----------------------------------------
                                   1053 ;	 function btControl
                                   1054 ;	-----------------------------------------
      000300                       1055 _btControl:
      000300 AF 82            [24] 1056 	mov	r7,dpl
                                   1057 ;	main.c:270: switch(cmd) {
      000302 BF 61 02         [24] 1058 	cjne	r7,#0x61,00152$
      000305 80 32            [24] 1059 	sjmp	00106$
      000307                       1060 00152$:
      000307 BF 62 02         [24] 1061 	cjne	r7,#0x62,00153$
      00030A 80 1D            [24] 1062 	sjmp	00102$
      00030C                       1063 00153$:
      00030C BF 64 02         [24] 1064 	cjne	r7,#0x64,00154$
      00030F 80 31            [24] 1065 	sjmp	00109$
      000311                       1066 00154$:
      000311 BF 66 02         [24] 1067 	cjne	r7,#0x66,00155$
      000314 80 0F            [24] 1068 	sjmp	00101$
      000316                       1069 00155$:
      000316 BF 6C 02         [24] 1070 	cjne	r7,#0x6c,00156$
      000319 80 12            [24] 1071 	sjmp	00103$
      00031B                       1072 00156$:
      00031B BF 72 02         [24] 1073 	cjne	r7,#0x72,00157$
      00031E 80 11            [24] 1074 	sjmp	00104$
      000320                       1075 00157$:
                                   1076 ;	main.c:271: case('f'): CAR = FRONT; break;
      000320 BF 73 26         [24] 1077 	cjne	r7,#0x73,00112$
      000323 80 10            [24] 1078 	sjmp	00105$
      000325                       1079 00101$:
      000325 75 80 55         [24] 1080 	mov	_P0,#0x55
                                   1081 ;	main.c:272: case('b'): CAR = BACK; break;
      000328 22               [24] 1082 	ret
      000329                       1083 00102$:
      000329 75 80 AA         [24] 1084 	mov	_P0,#0xaa
                                   1085 ;	main.c:273: case('l'): CAR = FRONT_LEFT; break;
      00032C 22               [24] 1086 	ret
      00032D                       1087 00103$:
      00032D 75 80 5A         [24] 1088 	mov	_P0,#0x5a
                                   1089 ;	main.c:274: case('r'): CAR = FRONT_RIGHT; break;
      000330 22               [24] 1090 	ret
      000331                       1091 00104$:
      000331 75 80 A5         [24] 1092 	mov	_P0,#0xa5
                                   1093 ;	main.c:275: case('s'): CAR = STOP; break;
      000334 22               [24] 1094 	ret
      000335                       1095 00105$:
      000335 75 80 00         [24] 1096 	mov	_P0,#0x00
                                   1097 ;	main.c:276: case('a'): 
      000338 22               [24] 1098 	ret
      000339                       1099 00106$:
                                   1100 ;	main.c:277: if (speed < M_PWM_CYCLE) {
      000339 74 F6            [12] 1101 	mov	a,#0x100 - 0x0a
      00033B 25 23            [12] 1102 	add	a,_speed
      00033D 40 0D            [24] 1103 	jc	00114$
                                   1104 ;	main.c:278: speed++;
      00033F 05 23            [12] 1105 	inc	_speed
                                   1106 ;	main.c:280: break;
                                   1107 ;	main.c:281: case('d'): 
      000341 22               [24] 1108 	ret
      000342                       1109 00109$:
                                   1110 ;	main.c:282: if (speed != 0) {
      000342 E5 23            [12] 1111 	mov	a,_speed
      000344 60 06            [24] 1112 	jz	00114$
                                   1113 ;	main.c:283: speed--;
      000346 15 23            [12] 1114 	dec	_speed
                                   1115 ;	main.c:285: break;
                                   1116 ;	main.c:286: default:CAR = STOP; break;
      000348 22               [24] 1117 	ret
      000349                       1118 00112$:
      000349 75 80 00         [24] 1119 	mov	_P0,#0x00
                                   1120 ;	main.c:287: }
      00034C                       1121 00114$:
                                   1122 ;	main.c:288: }
      00034C 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'initInterrupt'
                                   1126 ;------------------------------------------------------------
                                   1127 ;	main.c:291: void initInterrupt() {
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function initInterrupt
                                   1130 ;	-----------------------------------------
      00034D                       1131 _initInterrupt:
                                   1132 ;	main.c:293: EA = 1;			//允许总中断
                                   1133 ;	assignBit
      00034D D2 AF            [12] 1134 	setb	_EA
                                   1135 ;	main.c:294: ES = 1;			//允许串行口中断
                                   1136 ;	assignBit
      00034F D2 AC            [12] 1137 	setb	_ES
                                   1138 ;	main.c:295: ET0 = 1;		//允许定时器0中断
                                   1139 ;	assignBit
      000351 D2 A9            [12] 1140 	setb	_ET0
                                   1141 ;	main.c:296: ET2 = 1;		//允许定时器2中断
                                   1142 ;	assignBit
      000353 D2 AD            [12] 1143 	setb	_ET2
                                   1144 ;	main.c:297: EX1 = 1;		//允许外部中断1中断
                                   1145 ;	assignBit
      000355 D2 AA            [12] 1146 	setb	_EX1
                                   1147 ;	main.c:298: IT1 = 1;		//低跳沿触发
                                   1148 ;	assignBit
      000357 D2 8A            [12] 1149 	setb	_IT1
                                   1150 ;	main.c:299: }
      000359 22               [24] 1151 	ret
                                   1152 ;------------------------------------------------------------
                                   1153 ;Allocation info for local variables in function 'initTimer0'
                                   1154 ;------------------------------------------------------------
                                   1155 ;	main.c:302: void initTimer0() {
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function initTimer0
                                   1158 ;	-----------------------------------------
      00035A                       1159 _initTimer0:
                                   1160 ;	main.c:304: TMOD |= 0x01;	//工作方式1
      00035A 43 89 01         [24] 1161 	orl	_TMOD,#0x01
                                   1162 ;	main.c:305: if (operate == STEER_OPERATE) {	//为舵机转动
      00035D 74 02            [12] 1163 	mov	a,#0x02
      00035F B5 22 08         [24] 1164 	cjne	a,_operate,00104$
                                   1165 ;	main.c:306: TH0 = 0xFE;		//中断时间0.5ms
      000362 75 8C FE         [24] 1166 	mov	_TH0,#0xfe
                                   1167 ;	main.c:307: TL0 = 0x33;
      000365 75 8A 33         [24] 1168 	mov	_TL0,#0x33
      000368 80 0B            [24] 1169 	sjmp	00105$
      00036A                       1170 00104$:
                                   1171 ;	main.c:308: }else if (operate == SR04_OPERATE) {		//为超声波
      00036A 74 03            [12] 1172 	mov	a,#0x03
      00036C B5 22 06         [24] 1173 	cjne	a,_operate,00105$
                                   1174 ;	main.c:309: TH0 = 0;
      00036F 75 8C 00         [24] 1175 	mov	_TH0,#0x00
                                   1176 ;	main.c:310: TL0 = 0;
      000372 75 8A 00         [24] 1177 	mov	_TL0,#0x00
      000375                       1178 00105$:
                                   1179 ;	main.c:312: TR0 = 1;	//开启定时器0
                                   1180 ;	assignBit
      000375 D2 8C            [12] 1181 	setb	_TR0
                                   1182 ;	main.c:313: }
      000377 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'initSerial'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	main.c:316: void initSerial() {
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function initSerial
                                   1190 ;	-----------------------------------------
      000378                       1191 _initSerial:
                                   1192 ;	main.c:318: SCON = 0x50;	//串行口工作模式1
      000378 75 98 50         [24] 1193 	mov	_SCON,#0x50
                                   1194 ;	main.c:319: PCON = 0x00;
      00037B 75 87 00         [24] 1195 	mov	_PCON,#0x00
                                   1196 ;	main.c:320: RI = 0;			//接受中断标志清零
                                   1197 ;	assignBit
      00037E C2 98            [12] 1198 	clr	_RI
                                   1199 ;	main.c:322: TMOD |= 0x20;	//定时器T1方式2 
      000380 43 89 20         [24] 1200 	orl	_TMOD,#0x20
                                   1201 ;	main.c:323: TL1 = 0xfd;
      000383 75 8B FD         [24] 1202 	mov	_TL1,#0xfd
                                   1203 ;	main.c:324: TH1 = 0xfd;
      000386 75 8D FD         [24] 1204 	mov	_TH1,#0xfd
                                   1205 ;	main.c:325: TR1 = 1;		//定时器开始计数
                                   1206 ;	assignBit
      000389 D2 8E            [12] 1207 	setb	_TR1
                                   1208 ;	main.c:326: }
      00038B 22               [24] 1209 	ret
                                   1210 ;------------------------------------------------------------
                                   1211 ;Allocation info for local variables in function 'initTimer2'
                                   1212 ;------------------------------------------------------------
                                   1213 ;	main.c:330: void initTimer2() {
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function initTimer2
                                   1216 ;	-----------------------------------------
      00038C                       1217 _initTimer2:
                                   1218 ;	main.c:332: T2CON = 0x00;
      00038C 75 C8 00         [24] 1219 	mov	_T2CON,#0x00
                                   1220 ;	main.c:333: T2MOD = 0x00;	
      00038F 75 C9 00         [24] 1221 	mov	_T2MOD,#0x00
                                   1222 ;	main.c:334: TH2 = RCAP2H = 0xff;		//中断0.1ms
      000392 75 CB FF         [24] 1223 	mov	_RCAP2H,#0xff
      000395 75 CD FF         [24] 1224 	mov	_TH2,#0xff
                                   1225 ;	main.c:335: TL2 = RCAP2L = 0xa4;
      000398 75 CA A4         [24] 1226 	mov	_RCAP2L,#0xa4
      00039B 75 CC A4         [24] 1227 	mov	_TL2,#0xa4
                                   1228 ;	main.c:336: TR2 = 1;	//开启定时器2
                                   1229 ;	assignBit
      00039E D2 CA            [12] 1230 	setb	_TR2
                                   1231 ;	main.c:337: }
      0003A0 22               [24] 1232 	ret
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'timer0'
                                   1235 ;------------------------------------------------------------
                                   1236 ;	main.c:339: void timer0() __interrupt 1 __using 0 {
                                   1237 ;	-----------------------------------------
                                   1238 ;	 function timer0
                                   1239 ;	-----------------------------------------
      0003A1                       1240 _timer0:
      0003A1 C0 21            [24] 1241 	push	bits
      0003A3 C0 E0            [24] 1242 	push	acc
      0003A5 C0 F0            [24] 1243 	push	b
      0003A7 C0 82            [24] 1244 	push	dpl
      0003A9 C0 83            [24] 1245 	push	dph
      0003AB C0 07            [24] 1246 	push	(0+7)
      0003AD C0 06            [24] 1247 	push	(0+6)
      0003AF C0 05            [24] 1248 	push	(0+5)
      0003B1 C0 04            [24] 1249 	push	(0+4)
      0003B3 C0 03            [24] 1250 	push	(0+3)
      0003B5 C0 02            [24] 1251 	push	(0+2)
      0003B7 C0 01            [24] 1252 	push	(0+1)
      0003B9 C0 00            [24] 1253 	push	(0+0)
      0003BB C0 D0            [24] 1254 	push	psw
      0003BD 75 D0 00         [24] 1255 	mov	psw,#0x00
                                   1256 ;	main.c:341: if (operate == STEER_OPERATE) {
      0003C0 74 02            [12] 1257 	mov	a,#0x02
      0003C2 B5 22 0D         [24] 1258 	cjne	a,_operate,00104$
                                   1259 ;	main.c:342: ET2 = 0;	//禁止定时器2中断，以免对舵机的PWM波形产生影响
                                   1260 ;	assignBit
      0003C5 C2 AD            [12] 1261 	clr	_ET2
                                   1262 ;	main.c:343: TH0 = 0xFE;		//中断时间0.5ms
      0003C7 75 8C FE         [24] 1263 	mov	_TH0,#0xfe
                                   1264 ;	main.c:344: TL0 = 0x33;
      0003CA 75 8A 33         [24] 1265 	mov	_TL0,#0x33
                                   1266 ;	main.c:345: steerTurn();
      0003CD 12 01 30         [24] 1267 	lcall	_steerTurn
      0003D0 80 0D            [24] 1268 	sjmp	00106$
      0003D2                       1269 00104$:
                                   1270 ;	main.c:346: } else if (operate == SR04_OPERATE) {
      0003D2 74 03            [12] 1271 	mov	a,#0x03
      0003D4 B5 22 08         [24] 1272 	cjne	a,_operate,00106$
                                   1273 ;	main.c:347: TH0 = 0;
      0003D7 75 8C 00         [24] 1274 	mov	_TH0,#0x00
                                   1275 ;	main.c:348: TL0 = 0;
      0003DA 75 8A 00         [24] 1276 	mov	_TL0,#0x00
                                   1277 ;	main.c:349: isOverStep = 1;
                                   1278 ;	assignBit
      0003DD D2 00            [12] 1279 	setb	_isOverStep
      0003DF                       1280 00106$:
                                   1281 ;	main.c:351: }
      0003DF D0 D0            [24] 1282 	pop	psw
      0003E1 D0 00            [24] 1283 	pop	(0+0)
      0003E3 D0 01            [24] 1284 	pop	(0+1)
      0003E5 D0 02            [24] 1285 	pop	(0+2)
      0003E7 D0 03            [24] 1286 	pop	(0+3)
      0003E9 D0 04            [24] 1287 	pop	(0+4)
      0003EB D0 05            [24] 1288 	pop	(0+5)
      0003ED D0 06            [24] 1289 	pop	(0+6)
      0003EF D0 07            [24] 1290 	pop	(0+7)
      0003F1 D0 83            [24] 1291 	pop	dph
      0003F3 D0 82            [24] 1292 	pop	dpl
      0003F5 D0 F0            [24] 1293 	pop	b
      0003F7 D0 E0            [24] 1294 	pop	acc
      0003F9 D0 21            [24] 1295 	pop	bits
      0003FB 32               [24] 1296 	reti
                                   1297 ;------------------------------------------------------------
                                   1298 ;Allocation info for local variables in function 'int1'
                                   1299 ;------------------------------------------------------------
                                   1300 ;	main.c:354: void int1() __interrupt 2 __using 1 {
                                   1301 ;	-----------------------------------------
                                   1302 ;	 function int1
                                   1303 ;	-----------------------------------------
      0003FC                       1304 _int1:
                           00000F  1305 	ar7 = 0x0f
                           00000E  1306 	ar6 = 0x0e
                           00000D  1307 	ar5 = 0x0d
                           00000C  1308 	ar4 = 0x0c
                           00000B  1309 	ar3 = 0x0b
                           00000A  1310 	ar2 = 0x0a
                           000009  1311 	ar1 = 0x09
                           000008  1312 	ar0 = 0x08
                                   1313 ;	main.c:355: operate = SELF_OPERATE;
      0003FC 75 22 04         [24] 1314 	mov	_operate,#0x04
                                   1315 ;	main.c:356: }
      0003FF 32               [24] 1316 	reti
                                   1317 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1318 ;	eliminated unneeded push/pop psw
                                   1319 ;	eliminated unneeded push/pop dpl
                                   1320 ;	eliminated unneeded push/pop dph
                                   1321 ;	eliminated unneeded push/pop b
                                   1322 ;	eliminated unneeded push/pop acc
                                   1323 ;------------------------------------------------------------
                                   1324 ;Allocation info for local variables in function 'serial'
                                   1325 ;------------------------------------------------------------
                                   1326 ;	main.c:359: void serial() __interrupt 4 __using 2 {
                                   1327 ;	-----------------------------------------
                                   1328 ;	 function serial
                                   1329 ;	-----------------------------------------
      000400                       1330 _serial:
                           000017  1331 	ar7 = 0x17
                           000016  1332 	ar6 = 0x16
                           000015  1333 	ar5 = 0x15
                           000014  1334 	ar4 = 0x14
                           000013  1335 	ar3 = 0x13
                           000012  1336 	ar2 = 0x12
                           000011  1337 	ar1 = 0x11
                           000010  1338 	ar0 = 0x10
      000400 C0 E0            [24] 1339 	push	acc
                                   1340 ;	main.c:360: RI = 0;		
                                   1341 ;	assignBit
      000402 C2 98            [12] 1342 	clr	_RI
                                   1343 ;	main.c:361: if (operate == NO_OPERATE) {
      000404 E5 22            [12] 1344 	mov	a,_operate
      000406 70 03            [24] 1345 	jnz	00103$
                                   1346 ;	main.c:362: operate = BT_OPERATE;
      000408 75 22 01         [24] 1347 	mov	_operate,#0x01
      00040B                       1348 00103$:
                                   1349 ;	main.c:364: }
      00040B D0 E0            [24] 1350 	pop	acc
      00040D 32               [24] 1351 	reti
                                   1352 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1353 ;	eliminated unneeded push/pop psw
                                   1354 ;	eliminated unneeded push/pop dpl
                                   1355 ;	eliminated unneeded push/pop dph
                                   1356 ;	eliminated unneeded push/pop b
                                   1357 ;------------------------------------------------------------
                                   1358 ;Allocation info for local variables in function 'timer2'
                                   1359 ;------------------------------------------------------------
                                   1360 ;a                         Allocated to registers r6 
                                   1361 ;------------------------------------------------------------
                                   1362 ;	main.c:367: void timer2() __interrupt 5 __using 3 {
                                   1363 ;	-----------------------------------------
                                   1364 ;	 function timer2
                                   1365 ;	-----------------------------------------
      00040E                       1366 _timer2:
                           00001F  1367 	ar7 = 0x1f
                           00001E  1368 	ar6 = 0x1e
                           00001D  1369 	ar5 = 0x1d
                           00001C  1370 	ar4 = 0x1c
                           00001B  1371 	ar3 = 0x1b
                           00001A  1372 	ar2 = 0x1a
                           000019  1373 	ar1 = 0x19
                           000018  1374 	ar0 = 0x18
      00040E C0 21            [24] 1375 	push	bits
      000410 C0 E0            [24] 1376 	push	acc
      000412 C0 F0            [24] 1377 	push	b
      000414 C0 82            [24] 1378 	push	dpl
      000416 C0 83            [24] 1379 	push	dph
      000418 C0 07            [24] 1380 	push	(0+7)
      00041A C0 06            [24] 1381 	push	(0+6)
      00041C C0 05            [24] 1382 	push	(0+5)
      00041E C0 04            [24] 1383 	push	(0+4)
      000420 C0 03            [24] 1384 	push	(0+3)
      000422 C0 02            [24] 1385 	push	(0+2)
      000424 C0 01            [24] 1386 	push	(0+1)
      000426 C0 00            [24] 1387 	push	(0+0)
      000428 C0 D0            [24] 1388 	push	psw
      00042A 75 D0 18         [24] 1389 	mov	psw,#0x18
                                   1390 ;	main.c:370: t2InterruptTimes++;
      00042D 05 26            [12] 1391 	inc	_t2InterruptTimes
      00042F E4               [12] 1392 	clr	a
      000430 B5 26 02         [24] 1393 	cjne	a,_t2InterruptTimes,00116$
      000433 05 27            [12] 1394 	inc	(_t2InterruptTimes + 1)
      000435                       1395 00116$:
                                   1396 ;	main.c:371: a = t2InterruptTimes % M_PWM_CYCLE;
      000435 75 29 0A         [24] 1397 	mov	__moduint_PARM_2,#0x0a
      000438 75 2A 00         [24] 1398 	mov	(__moduint_PARM_2 + 1),#0x00
      00043B 85 26 82         [24] 1399 	mov	dpl,_t2InterruptTimes
      00043E 85 27 83         [24] 1400 	mov	dph,(_t2InterruptTimes + 1)
      000441 75 D0 00         [24] 1401 	mov	psw,#0x00
      000444 12 05 F3         [24] 1402 	lcall	__moduint
      000447 75 D0 18         [24] 1403 	mov	psw,#0x18
      00044A AE 82            [24] 1404 	mov	r6,dpl
                                   1405 ;	main.c:372: if (t2InterruptTimes == CMD_TIME) {
      00044C 74 90            [12] 1406 	mov	a,#0x90
      00044E B5 26 0E         [24] 1407 	cjne	a,_t2InterruptTimes,00102$
      000451 74 01            [12] 1408 	mov	a,#0x01
      000453 B5 27 09         [24] 1409 	cjne	a,(_t2InterruptTimes + 1),00102$
                                   1410 ;	main.c:373: t2InterruptTimes = 0;
      000456 E4               [12] 1411 	clr	a
      000457 F5 26            [12] 1412 	mov	_t2InterruptTimes,a
      000459 F5 27            [12] 1413 	mov	(_t2InterruptTimes + 1),a
                                   1414 ;	main.c:374: CAR = STOP;
                                   1415 ;	1-genFromRTrack replaced	mov	_P0,#0x00
      00045B F5 80            [12] 1416 	mov	_P0,a
                                   1417 ;	main.c:375: TR2 = 0;	//溢出400次，说明执行了蓝牙发送的指令40ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
                                   1418 ;	assignBit
      00045D C2 CA            [12] 1419 	clr	_TR2
      00045F                       1420 00102$:
                                   1421 ;	main.c:377: if (a <= speed) {
      00045F C3               [12] 1422 	clr	c
      000460 E5 23            [12] 1423 	mov	a,_speed
      000462 9E               [12] 1424 	subb	a,r6
      000463 40 04            [24] 1425 	jc	00104$
                                   1426 ;	main.c:378: M_PWM = 1;
                                   1427 ;	assignBit
      000465 D2 B6            [12] 1428 	setb	_P3_6
      000467 80 02            [24] 1429 	sjmp	00106$
      000469                       1430 00104$:
                                   1431 ;	main.c:380: M_PWM = 0;
                                   1432 ;	assignBit
      000469 C2 B6            [12] 1433 	clr	_P3_6
      00046B                       1434 00106$:
                                   1435 ;	main.c:383: }
      00046B D0 D0            [24] 1436 	pop	psw
      00046D D0 00            [24] 1437 	pop	(0+0)
      00046F D0 01            [24] 1438 	pop	(0+1)
      000471 D0 02            [24] 1439 	pop	(0+2)
      000473 D0 03            [24] 1440 	pop	(0+3)
      000475 D0 04            [24] 1441 	pop	(0+4)
      000477 D0 05            [24] 1442 	pop	(0+5)
      000479 D0 06            [24] 1443 	pop	(0+6)
      00047B D0 07            [24] 1444 	pop	(0+7)
      00047D D0 83            [24] 1445 	pop	dph
      00047F D0 82            [24] 1446 	pop	dpl
      000481 D0 F0            [24] 1447 	pop	b
      000483 D0 E0            [24] 1448 	pop	acc
      000485 D0 21            [24] 1449 	pop	bits
      000487 32               [24] 1450 	reti
                                   1451 ;------------------------------------------------------------
                                   1452 ;Allocation info for local variables in function 'setup'
                                   1453 ;------------------------------------------------------------
                                   1454 ;	main.c:386: void setup() {
                                   1455 ;	-----------------------------------------
                                   1456 ;	 function setup
                                   1457 ;	-----------------------------------------
      000488                       1458 _setup:
                           000007  1459 	ar7 = 0x07
                           000006  1460 	ar6 = 0x06
                           000005  1461 	ar5 = 0x05
                           000004  1462 	ar4 = 0x04
                           000003  1463 	ar3 = 0x03
                           000002  1464 	ar2 = 0x02
                           000001  1465 	ar1 = 0x01
                           000000  1466 	ar0 = 0x00
                                   1467 ;	main.c:387: initInterrupt();
      000488 12 03 4D         [24] 1468 	lcall	_initInterrupt
                                   1469 ;	main.c:388: initSerial();
      00048B 12 03 78         [24] 1470 	lcall	_initSerial
                                   1471 ;	main.c:389: initTimer2();
      00048E 12 03 8C         [24] 1472 	lcall	_initTimer2
                                   1473 ;	main.c:390: operate = NO_OPERATE;
      000491 75 22 00         [24] 1474 	mov	_operate,#0x00
                                   1475 ;	main.c:391: STBY = 1;
                                   1476 ;	assignBit
      000494 D2 B7            [12] 1477 	setb	_P3_7
                                   1478 ;	main.c:392: }
      000496 22               [24] 1479 	ret
                                   1480 ;------------------------------------------------------------
                                   1481 ;Allocation info for local variables in function 'loop'
                                   1482 ;------------------------------------------------------------
                                   1483 ;distance                  Allocated to registers r7 
                                   1484 ;------------------------------------------------------------
                                   1485 ;	main.c:395: void loop() {
                                   1486 ;	-----------------------------------------
                                   1487 ;	 function loop
                                   1488 ;	-----------------------------------------
      000497                       1489 _loop:
                                   1490 ;	main.c:396: sensorTrigger();
      000497 12 00 C4         [24] 1491 	lcall	_sensorTrigger
                                   1492 ;	main.c:397: if (SWITCH_SELF_CONTROL) {
      00049A 30 90 06         [24] 1493 	jnb	_P1_0,00102$
                                   1494 ;	main.c:398: ledStatus(0);	
      00049D 75 82 00         [24] 1495 	mov	dpl,#0x00
      0004A0 12 00 D4         [24] 1496 	lcall	_ledStatus
      0004A3                       1497 00102$:
                                   1498 ;	main.c:400: switch(operate) {
      0004A3 74 01            [12] 1499 	mov	a,#0x01
      0004A5 B5 22 02         [24] 1500 	cjne	a,_operate,00129$
      0004A8 80 0E            [24] 1501 	sjmp	00103$
      0004AA                       1502 00129$:
      0004AA 74 03            [12] 1503 	mov	a,#0x03
      0004AC B5 22 02         [24] 1504 	cjne	a,_operate,00130$
      0004AF 80 1C            [24] 1505 	sjmp	00105$
      0004B1                       1506 00130$:
      0004B1 74 04            [12] 1507 	mov	a,#0x04
                                   1508 ;	main.c:401: case(BT_OPERATE):
      0004B3 B5 22 2B         [24] 1509 	cjne	a,_operate,00110$
      0004B6 80 0C            [24] 1510 	sjmp	00104$
      0004B8                       1511 00103$:
                                   1512 ;	main.c:402: ledStatus(2);
      0004B8 75 82 02         [24] 1513 	mov	dpl,#0x02
      0004BB 12 00 D4         [24] 1514 	lcall	_ledStatus
                                   1515 ;	main.c:403: btControl(SBUF);
      0004BE 85 99 82         [24] 1516 	mov	dpl,_SBUF
                                   1517 ;	main.c:404: break;
                                   1518 ;	main.c:405: case(SELF_OPERATE):
      0004C1 02 03 00         [24] 1519 	ljmp	_btControl
      0004C4                       1520 00104$:
                                   1521 ;	main.c:406: ledStatus(1);
      0004C4 75 82 01         [24] 1522 	mov	dpl,#0x01
      0004C7 12 00 D4         [24] 1523 	lcall	_ledStatus
                                   1524 ;	main.c:407: selfControl();
                                   1525 ;	main.c:408: break;
                                   1526 ;	main.c:409: case(SR04_OPERATE):
      0004CA 02 02 1B         [24] 1527 	ljmp	_selfControl
      0004CD                       1528 00105$:
                                   1529 ;	main.c:410: startSR04();
      0004CD 12 01 70         [24] 1530 	lcall	_startSR04
                                   1531 ;	main.c:412: distance = calculate();
      0004D0 12 01 96         [24] 1532 	lcall	_calculate
                                   1533 ;	main.c:414: SEG = seg[distance];
      0004D3 E5 82            [12] 1534 	mov	a,dpl
      0004D5 FF               [12] 1535 	mov	r7,a
      0004D6 90 07 35         [24] 1536 	mov	dptr,#_seg
      0004D9 93               [24] 1537 	movc	a,@a+dptr
      0004DA F5 A0            [12] 1538 	mov	_P2,a
                                   1539 ;	main.c:416: ET2 = 1;	//超声波测距完，重新启动定时器2
                                   1540 ;	assignBit
      0004DC D2 AD            [12] 1541 	setb	_ET2
                                   1542 ;	main.c:417: operate = NO_OPERATE;
      0004DE 75 22 00         [24] 1543 	mov	_operate,#0x00
                                   1544 ;	main.c:420: }
      0004E1                       1545 00110$:
                                   1546 ;	main.c:421: }
      0004E1 22               [24] 1547 	ret
                                   1548 ;------------------------------------------------------------
                                   1549 ;Allocation info for local variables in function 'main'
                                   1550 ;------------------------------------------------------------
                                   1551 ;	main.c:423: void main() {
                                   1552 ;	-----------------------------------------
                                   1553 ;	 function main
                                   1554 ;	-----------------------------------------
      0004E2                       1555 _main:
                                   1556 ;	main.c:425: if (isFirst) {
      0004E2 30 01 05         [24] 1557 	jnb	_isFirst,00104$
                                   1558 ;	main.c:426: setup();
      0004E5 12 04 88         [24] 1559 	lcall	_setup
                                   1560 ;	main.c:427: isFirst = 0;
                                   1561 ;	assignBit
      0004E8 C2 01            [12] 1562 	clr	_isFirst
                                   1563 ;	main.c:429: while(1) {
      0004EA                       1564 00104$:
                                   1565 ;	main.c:430: loop();
      0004EA 12 04 97         [24] 1566 	lcall	_loop
                                   1567 ;	main.c:432: }
      0004ED 80 FB            [24] 1568 	sjmp	00104$
                                   1569 	.area CSEG    (CODE)
                                   1570 	.area CONST   (CODE)
      000735                       1571 _seg:
      000735 C0                    1572 	.db #0xc0	; 192
      000736 F9                    1573 	.db #0xf9	; 249
      000737 A4                    1574 	.db #0xa4	; 164
      000738 B0                    1575 	.db #0xb0	; 176
      000739 99                    1576 	.db #0x99	; 153
      00073A 92                    1577 	.db #0x92	; 146
      00073B 82                    1578 	.db #0x82	; 130
      00073C F8                    1579 	.db #0xf8	; 248
      00073D 80                    1580 	.db #0x80	; 128
      00073E 90                    1581 	.db #0x90	; 144
      00073F 88                    1582 	.db #0x88	; 136
      000740 83                    1583 	.db #0x83	; 131
      000741 C6                    1584 	.db #0xc6	; 198
      000742 A1                    1585 	.db #0xa1	; 161
      000743 86                    1586 	.db #0x86	; 134
      000744 8E                    1587 	.db #0x8e	; 142
                                   1588 	.area XINIT   (CODE)
                                   1589 	.area CABS    (ABS,CODE)
