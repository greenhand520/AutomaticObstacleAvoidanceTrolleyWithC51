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
                                    141 	.globl _setObsFlag_PARM_4
                                    142 	.globl _setObsFlag_PARM_3
                                    143 	.globl _setObsFlag_PARM_2
                                    144 	.globl _setObsFlag_PARM_1
                                    145 	.globl _rObsFlag
                                    146 	.globl _lObsFlag
                                    147 	.globl _bObsFlag
                                    148 	.globl _fObsFlag
                                    149 	.globl _isFirst
                                    150 	.globl _isOverStep
                                    151 	.globl _angle
                                    152 	.globl _t2InterruptTimes
                                    153 	.globl _t0InterruptTimes
                                    154 	.globl _speed
                                    155 	.globl _operate
                                    156 	.globl _delay
                                    157 	.globl _sensorTrigger
                                    158 	.globl _setObsFlag
                                    159 	.globl _ledStatus
                                    160 	.globl _setTurnAngle
                                    161 	.globl _steerTurn
                                    162 	.globl _workSR04
                                    163 	.globl _calculate
                                    164 	.globl _isHaveObs
                                    165 	.globl _selfControl
                                    166 	.globl _btControl
                                    167 	.globl _initInterrupt
                                    168 	.globl _initTimer0
                                    169 	.globl _initSerial
                                    170 	.globl _initTimer2
                                    171 	.globl _setup
                                    172 	.globl _loop
                                    173 ;--------------------------------------------------------
                                    174 ; special function registers
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0	=	0x0080
                           000081   179 _SP	=	0x0081
                           000082   180 _DPL	=	0x0082
                           000083   181 _DPH	=	0x0083
                           000087   182 _PCON	=	0x0087
                           000088   183 _TCON	=	0x0088
                           000089   184 _TMOD	=	0x0089
                           00008A   185 _TL0	=	0x008a
                           00008B   186 _TL1	=	0x008b
                           00008C   187 _TH0	=	0x008c
                           00008D   188 _TH1	=	0x008d
                           000090   189 _P1	=	0x0090
                           000098   190 _SCON	=	0x0098
                           000099   191 _SBUF	=	0x0099
                           0000A0   192 _P2	=	0x00a0
                           0000A8   193 _IE	=	0x00a8
                           0000B0   194 _P3	=	0x00b0
                           0000B8   195 _IP	=	0x00b8
                           0000C8   196 _T2CON	=	0x00c8
                           0000C9   197 _T2MOD	=	0x00c9
                           0000CA   198 _RCAP2L	=	0x00ca
                           0000CB   199 _RCAP2H	=	0x00cb
                           0000CC   200 _TL2	=	0x00cc
                           0000CD   201 _TH2	=	0x00cd
                           0000D0   202 _PSW	=	0x00d0
                           0000E0   203 _ACC	=	0x00e0
                           0000E0   204 _A	=	0x00e0
                           0000F0   205 _B	=	0x00f0
                                    206 ;--------------------------------------------------------
                                    207 ; special function bits
                                    208 ;--------------------------------------------------------
                                    209 	.area RSEG    (ABS,DATA)
      000000                        210 	.org 0x0000
                           000080   211 _P0_0	=	0x0080
                           000081   212 _P0_1	=	0x0081
                           000082   213 _P0_2	=	0x0082
                           000083   214 _P0_3	=	0x0083
                           000084   215 _P0_4	=	0x0084
                           000085   216 _P0_5	=	0x0085
                           000086   217 _P0_6	=	0x0086
                           000087   218 _P0_7	=	0x0087
                           000088   219 _IT0	=	0x0088
                           000089   220 _IE0	=	0x0089
                           00008A   221 _IT1	=	0x008a
                           00008B   222 _IE1	=	0x008b
                           00008C   223 _TR0	=	0x008c
                           00008D   224 _TF0	=	0x008d
                           00008E   225 _TR1	=	0x008e
                           00008F   226 _TF1	=	0x008f
                           000090   227 _P1_0	=	0x0090
                           000091   228 _P1_1	=	0x0091
                           000092   229 _P1_2	=	0x0092
                           000093   230 _P1_3	=	0x0093
                           000094   231 _P1_4	=	0x0094
                           000095   232 _P1_5	=	0x0095
                           000096   233 _P1_6	=	0x0096
                           000097   234 _P1_7	=	0x0097
                           000090   235 _T2	=	0x0090
                           000091   236 _T2EX	=	0x0091
                           000098   237 _RI	=	0x0098
                           000099   238 _TI	=	0x0099
                           00009A   239 _RB8	=	0x009a
                           00009B   240 _TB8	=	0x009b
                           00009C   241 _REN	=	0x009c
                           00009D   242 _SM2	=	0x009d
                           00009E   243 _SM1	=	0x009e
                           00009F   244 _SM0	=	0x009f
                           0000A0   245 _P2_0	=	0x00a0
                           0000A1   246 _P2_1	=	0x00a1
                           0000A2   247 _P2_2	=	0x00a2
                           0000A3   248 _P2_3	=	0x00a3
                           0000A4   249 _P2_4	=	0x00a4
                           0000A5   250 _P2_5	=	0x00a5
                           0000A6   251 _P2_6	=	0x00a6
                           0000A7   252 _P2_7	=	0x00a7
                           0000A8   253 _EX0	=	0x00a8
                           0000A9   254 _ET0	=	0x00a9
                           0000AA   255 _EX1	=	0x00aa
                           0000AB   256 _ET1	=	0x00ab
                           0000AC   257 _ES	=	0x00ac
                           0000AD   258 _ET2	=	0x00ad
                           0000AF   259 _EA	=	0x00af
                           0000B0   260 _P3_0	=	0x00b0
                           0000B1   261 _P3_1	=	0x00b1
                           0000B2   262 _P3_2	=	0x00b2
                           0000B3   263 _P3_3	=	0x00b3
                           0000B4   264 _P3_4	=	0x00b4
                           0000B5   265 _P3_5	=	0x00b5
                           0000B6   266 _P3_6	=	0x00b6
                           0000B7   267 _P3_7	=	0x00b7
                           0000B0   268 _RXD	=	0x00b0
                           0000B1   269 _TXD	=	0x00b1
                           0000B2   270 _INT0	=	0x00b2
                           0000B3   271 _INT1	=	0x00b3
                           0000B4   272 _T0	=	0x00b4
                           0000B5   273 _T1	=	0x00b5
                           0000B6   274 _WR	=	0x00b6
                           0000B7   275 _RD	=	0x00b7
                           0000B8   276 _PX0	=	0x00b8
                           0000B9   277 _PT0	=	0x00b9
                           0000BA   278 _PX1	=	0x00ba
                           0000BB   279 _PT1	=	0x00bb
                           0000BC   280 _PS	=	0x00bc
                           0000BD   281 _PT2	=	0x00bd
                           0000C8   282 _T2CON_0	=	0x00c8
                           0000C9   283 _T2CON_1	=	0x00c9
                           0000CA   284 _T2CON_2	=	0x00ca
                           0000CB   285 _T2CON_3	=	0x00cb
                           0000CC   286 _T2CON_4	=	0x00cc
                           0000CD   287 _T2CON_5	=	0x00cd
                           0000CE   288 _T2CON_6	=	0x00ce
                           0000CF   289 _T2CON_7	=	0x00cf
                           0000C8   290 _CP_RL2	=	0x00c8
                           0000C9   291 _C_T2	=	0x00c9
                           0000CA   292 _TR2	=	0x00ca
                           0000CB   293 _EXEN2	=	0x00cb
                           0000CC   294 _TCLK	=	0x00cc
                           0000CD   295 _RCLK	=	0x00cd
                           0000CE   296 _EXF2	=	0x00ce
                           0000CF   297 _TF2	=	0x00cf
                           0000D0   298 _P	=	0x00d0
                           0000D1   299 _FL	=	0x00d1
                           0000D2   300 _OV	=	0x00d2
                           0000D3   301 _RS0	=	0x00d3
                           0000D4   302 _RS1	=	0x00d4
                           0000D5   303 _F0	=	0x00d5
                           0000D6   304 _AC	=	0x00d6
                           0000D7   305 _CY	=	0x00d7
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable register banks
                                    308 ;--------------------------------------------------------
                                    309 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        310 	.ds 8
                                    311 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        312 	.ds 8
                                    313 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        314 	.ds 8
                                    315 	.area REG_BANK_3	(REL,OVR,DATA)
      000018                        316 	.ds 8
                                    317 ;--------------------------------------------------------
                                    318 ; overlayable bit register bank
                                    319 ;--------------------------------------------------------
                                    320 	.area BIT_BANK	(REL,OVR,DATA)
      000022                        321 bits:
      000022                        322 	.ds 1
                           008000   323 	b0 = bits[0]
                           008100   324 	b1 = bits[1]
                           008200   325 	b2 = bits[2]
                           008300   326 	b3 = bits[3]
                           008400   327 	b4 = bits[4]
                           008500   328 	b5 = bits[5]
                           008600   329 	b6 = bits[6]
                           008700   330 	b7 = bits[7]
                                    331 ;--------------------------------------------------------
                                    332 ; internal ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area DSEG    (DATA)
      000023                        335 _operate::
      000023                        336 	.ds 1
      000024                        337 _speed::
      000024                        338 	.ds 1
      000025                        339 _t0InterruptTimes::
      000025                        340 	.ds 2
      000027                        341 _t2InterruptTimes::
      000027                        342 	.ds 2
      000029                        343 _angle::
      000029                        344 	.ds 1
                                    345 ;--------------------------------------------------------
                                    346 ; overlayable items in internal ram 
                                    347 ;--------------------------------------------------------
                                    348 	.area	OSEG    (OVR,DATA)
                                    349 	.area	OSEG    (OVR,DATA)
                                    350 	.area	OSEG    (OVR,DATA)
                                    351 	.area	OSEG    (OVR,DATA)
                                    352 	.area	OSEG    (OVR,DATA)
                                    353 ;--------------------------------------------------------
                                    354 ; Stack segment in internal ram 
                                    355 ;--------------------------------------------------------
                                    356 	.area	SSEG
      00002C                        357 __start__stack:
      00002C                        358 	.ds	1
                                    359 
                                    360 ;--------------------------------------------------------
                                    361 ; indirectly addressable internal ram data
                                    362 ;--------------------------------------------------------
                                    363 	.area ISEG    (DATA)
                                    364 ;--------------------------------------------------------
                                    365 ; absolute internal ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area IABS    (ABS,DATA)
                                    368 	.area IABS    (ABS,DATA)
                                    369 ;--------------------------------------------------------
                                    370 ; bit data
                                    371 ;--------------------------------------------------------
                                    372 	.area BSEG    (BIT)
      000000                        373 _isOverStep::
      000000                        374 	.ds 1
      000001                        375 _isFirst::
      000001                        376 	.ds 1
      000002                        377 _fObsFlag::
      000002                        378 	.ds 1
      000003                        379 _bObsFlag::
      000003                        380 	.ds 1
      000004                        381 _lObsFlag::
      000004                        382 	.ds 1
      000005                        383 _rObsFlag::
      000005                        384 	.ds 1
      000006                        385 _setObsFlag_PARM_1:
      000006                        386 	.ds 1
      000007                        387 _setObsFlag_PARM_2:
      000007                        388 	.ds 1
      000008                        389 _setObsFlag_PARM_3:
      000008                        390 	.ds 1
      000009                        391 _setObsFlag_PARM_4:
      000009                        392 	.ds 1
                                    393 ;--------------------------------------------------------
                                    394 ; paged external ram data
                                    395 ;--------------------------------------------------------
                                    396 	.area PSEG    (PAG,XDATA)
                                    397 ;--------------------------------------------------------
                                    398 ; external ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area XSEG    (XDATA)
                                    401 ;--------------------------------------------------------
                                    402 ; absolute external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area XABS    (ABS,XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; external initialized ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XISEG   (XDATA)
                                    409 	.area HOME    (CODE)
                                    410 	.area GSINIT0 (CODE)
                                    411 	.area GSINIT1 (CODE)
                                    412 	.area GSINIT2 (CODE)
                                    413 	.area GSINIT3 (CODE)
                                    414 	.area GSINIT4 (CODE)
                                    415 	.area GSINIT5 (CODE)
                                    416 	.area GSINIT  (CODE)
                                    417 	.area GSFINAL (CODE)
                                    418 	.area CSEG    (CODE)
                                    419 ;--------------------------------------------------------
                                    420 ; interrupt vector 
                                    421 ;--------------------------------------------------------
                                    422 	.area HOME    (CODE)
      000000                        423 __interrupt_vect:
      000000 02 00 31         [24]  424 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  425 	reti
      000004                        426 	.ds	7
      00000B 02 04 39         [24]  427 	ljmp	_timer0
      00000E                        428 	.ds	5
      000013 02 04 92         [24]  429 	ljmp	_int1
      000016                        430 	.ds	5
      00001B 32               [24]  431 	reti
      00001C                        432 	.ds	7
      000023 02 04 96         [24]  433 	ljmp	_serial
      000026                        434 	.ds	5
      00002B 02 04 A4         [24]  435 	ljmp	_timer2
                                    436 ;--------------------------------------------------------
                                    437 ; global & static initialisations
                                    438 ;--------------------------------------------------------
                                    439 	.area HOME    (CODE)
                                    440 	.area GSINIT  (CODE)
                                    441 	.area GSFINAL (CODE)
                                    442 	.area GSINIT  (CODE)
                                    443 	.globl __sdcc_gsinit_startup
                                    444 	.globl __sdcc_program_startup
                                    445 	.globl __start__stack
                                    446 	.globl __mcs51_genXINIT
                                    447 	.globl __mcs51_genXRAMCLEAR
                                    448 	.globl __mcs51_genRAMCLEAR
                                    449 ;	main.c:70: uchar operate = 0;
      00008A 75 23 00         [24]  450 	mov	_operate,#0x00
                                    451 ;	main.c:76: uchar speed = 8;	//小车速度
      00008D 75 24 08         [24]  452 	mov	_speed,#0x08
                                    453 ;	main.c:80: __bit isOverStep = 0;	//定时器0是否溢出标志，溢出距离过远，超出测量范围
                                    454 ;	assignBit
      000090 C2 00            [12]  455 	clr	_isOverStep
                                    456 ;	main.c:81: __bit isFirst = 1;
                                    457 ;	assignBit
      000092 D2 01            [12]  458 	setb	_isFirst
                                    459 ;	main.c:82: __bit fObsFlag = 0;		//前面障碍物标志
                                    460 ;	assignBit
      000094 C2 02            [12]  461 	clr	_fObsFlag
                                    462 ;	main.c:83: __bit bObsFlag = 0;		//后面障碍物标志
                                    463 ;	assignBit
      000096 C2 03            [12]  464 	clr	_bObsFlag
                                    465 ;	main.c:84: __bit lObsFlag = 0;		//左面障碍物标志
                                    466 ;	assignBit
      000098 C2 04            [12]  467 	clr	_lObsFlag
                                    468 ;	main.c:85: __bit rObsFlag = 0;		//右面障碍物标志
                                    469 ;	assignBit
      00009A C2 05            [12]  470 	clr	_rObsFlag
                                    471 	.area GSFINAL (CODE)
      00009C 02 00 2E         [24]  472 	ljmp	__sdcc_program_startup
                                    473 ;--------------------------------------------------------
                                    474 ; Home
                                    475 ;--------------------------------------------------------
                                    476 	.area HOME    (CODE)
                                    477 	.area HOME    (CODE)
      00002E                        478 __sdcc_program_startup:
      00002E 02 05 60         [24]  479 	ljmp	_main
                                    480 ;	return from main will return to caller
                                    481 ;--------------------------------------------------------
                                    482 ; code
                                    483 ;--------------------------------------------------------
                                    484 	.area CSEG    (CODE)
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'delay'
                                    487 ;------------------------------------------------------------
                                    488 ;n                         Allocated to registers 
                                    489 ;i                         Allocated to registers r6 r7 
                                    490 ;j                         Allocated to registers r4 r5 
                                    491 ;------------------------------------------------------------
                                    492 ;	main.c:89: void delay(uint n){
                                    493 ;	-----------------------------------------
                                    494 ;	 function delay
                                    495 ;	-----------------------------------------
      00009F                        496 _delay:
                           000007   497 	ar7 = 0x07
                           000006   498 	ar6 = 0x06
                           000005   499 	ar5 = 0x05
                           000004   500 	ar4 = 0x04
                           000003   501 	ar3 = 0x03
                           000002   502 	ar2 = 0x02
                           000001   503 	ar1 = 0x01
                           000000   504 	ar0 = 0x00
      00009F AE 82            [24]  505 	mov	r6,dpl
      0000A1 AF 83            [24]  506 	mov	r7,dph
                                    507 ;	main.c:91: for(i=n;i>0;i--){
      0000A3                        508 00106$:
      0000A3 EE               [12]  509 	mov	a,r6
      0000A4 4F               [12]  510 	orl	a,r7
      0000A5 60 1B            [24]  511 	jz	00108$
                                    512 ;	main.c:92: for(j=112;j>0;j--);
      0000A7 7C 70            [12]  513 	mov	r4,#0x70
      0000A9 7D 00            [12]  514 	mov	r5,#0x00
      0000AB                        515 00104$:
      0000AB EC               [12]  516 	mov	a,r4
      0000AC 24 FF            [12]  517 	add	a,#0xff
      0000AE FA               [12]  518 	mov	r2,a
      0000AF ED               [12]  519 	mov	a,r5
      0000B0 34 FF            [12]  520 	addc	a,#0xff
      0000B2 FB               [12]  521 	mov	r3,a
      0000B3 8A 04            [24]  522 	mov	ar4,r2
      0000B5 8B 05            [24]  523 	mov	ar5,r3
      0000B7 EA               [12]  524 	mov	a,r2
      0000B8 4B               [12]  525 	orl	a,r3
      0000B9 70 F0            [24]  526 	jnz	00104$
                                    527 ;	main.c:91: for(i=n;i>0;i--){
      0000BB 1E               [12]  528 	dec	r6
      0000BC BE FF 01         [24]  529 	cjne	r6,#0xff,00133$
      0000BF 1F               [12]  530 	dec	r7
      0000C0                        531 00133$:
      0000C0 80 E1            [24]  532 	sjmp	00106$
      0000C2                        533 00108$:
                                    534 ;	main.c:94: }
      0000C2 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'putcharToSer'
                                    538 ;------------------------------------------------------------
                                    539 ;c                         Allocated to registers 
                                    540 ;------------------------------------------------------------
                                    541 ;	main.c:97: void  putcharToSer(char c) {
                                    542 ;	-----------------------------------------
                                    543 ;	 function putcharToSer
                                    544 ;	-----------------------------------------
      0000C3                        545 _putcharToSer:
      0000C3 85 82 99         [24]  546 	mov	_SBUF,dpl
                                    547 ;	main.c:99: while(!TI);
      0000C6                        548 00101$:
                                    549 ;	main.c:100: TI = 0;
                                    550 ;	assignBit
      0000C6 10 99 02         [24]  551 	jbc	_TI,00114$
      0000C9 80 FB            [24]  552 	sjmp	00101$
      0000CB                        553 00114$:
                                    554 ;	main.c:101: }
      0000CB 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'sensorTrigger'
                                    558 ;------------------------------------------------------------
                                    559 ;	main.c:104: void sensorTrigger() {
                                    560 ;	-----------------------------------------
                                    561 ;	 function sensorTrigger
                                    562 ;	-----------------------------------------
      0000CC                        563 _sensorTrigger:
                                    564 ;	main.c:105: if(!(BACK_SENSER & FRONT_SENSER & LEFT_SENSER & RIGHT_SENSER)) {
      0000CC A2 95            [12]  565 	mov	c,_P1_5
      0000CE 82 94            [24]  566 	anl	c,_P1_4
      0000D0 82 96            [24]  567 	anl	c,_P1_6
      0000D2 82 97            [24]  568 	anl	c,_P1_7
      0000D4 40 03            [24]  569 	jc	00102$
                                    570 ;	main.c:106: SWITCH_SELF_CONTROL = 0;
                                    571 ;	assignBit
      0000D6 C2 90            [12]  572 	clr	_P1_0
      0000D8 22               [24]  573 	ret
      0000D9                        574 00102$:
                                    575 ;	main.c:109: SWITCH_SELF_CONTROL = 1;
                                    576 ;	assignBit
      0000D9 D2 90            [12]  577 	setb	_P1_0
                                    578 ;	main.c:111: }
      0000DB 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'setObsFlag'
                                    582 ;------------------------------------------------------------
                                    583 ;	main.c:114: void setObsFlag(__bit fof, __bit bof, __bit lof, __bit rof) {
                                    584 ;	-----------------------------------------
                                    585 ;	 function setObsFlag
                                    586 ;	-----------------------------------------
      0000DC                        587 _setObsFlag:
                                    588 ;	main.c:115: fObsFlag = fof;
                                    589 ;	assignBit
      0000DC A2 06            [12]  590 	mov	c,_setObsFlag_PARM_1
      0000DE 92 02            [24]  591 	mov	_fObsFlag,c
                                    592 ;	main.c:116: bObsFlag = bof;
                                    593 ;	assignBit
      0000E0 A2 07            [12]  594 	mov	c,_setObsFlag_PARM_2
      0000E2 92 03            [24]  595 	mov	_bObsFlag,c
                                    596 ;	main.c:117: lObsFlag = lof;
                                    597 ;	assignBit
      0000E4 A2 08            [12]  598 	mov	c,_setObsFlag_PARM_3
      0000E6 92 04            [24]  599 	mov	_lObsFlag,c
                                    600 ;	main.c:118: rObsFlag = rof;
                                    601 ;	assignBit
      0000E8 A2 09            [12]  602 	mov	c,_setObsFlag_PARM_4
      0000EA 92 05            [24]  603 	mov	_rObsFlag,c
                                    604 ;	main.c:119: }
      0000EC 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'ledStatus'
                                    608 ;------------------------------------------------------------
                                    609 ;s                         Allocated to registers r7 
                                    610 ;------------------------------------------------------------
                                    611 ;	main.c:123: void ledStatus(uchar s) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function ledStatus
                                    614 ;	-----------------------------------------
      0000ED                        615 _ledStatus:
      0000ED AF 82            [24]  616 	mov	r7,dpl
                                    617 ;	main.c:124: switch(s) {
      0000EF BF 00 02         [24]  618 	cjne	r7,#0x00,00119$
      0000F2 80 0A            [24]  619 	sjmp	00101$
      0000F4                        620 00119$:
      0000F4 BF 01 02         [24]  621 	cjne	r7,#0x01,00120$
      0000F7 80 0C            [24]  622 	sjmp	00102$
      0000F9                        623 00120$:
                                    624 ;	main.c:125: case(0):
      0000F9 BF 02 16         [24]  625 	cjne	r7,#0x02,00105$
      0000FC 80 0E            [24]  626 	sjmp	00103$
      0000FE                        627 00101$:
                                    628 ;	main.c:126: STOP_RED_LED = 0;	//停止指示灯亮
                                    629 ;	assignBit
      0000FE C2 91            [12]  630 	clr	_P1_1
                                    631 ;	main.c:127: BT_BLUE_LED = 1;
                                    632 ;	assignBit
      000100 D2 92            [12]  633 	setb	_P1_2
                                    634 ;	main.c:128: SELF_GREEN_LED = 1;
                                    635 ;	assignBit
      000102 D2 93            [12]  636 	setb	_P1_3
                                    637 ;	main.c:129: break;
                                    638 ;	main.c:130: case(1):
      000104 22               [24]  639 	ret
      000105                        640 00102$:
                                    641 ;	main.c:131: STOP_RED_LED = 1;
                                    642 ;	assignBit
      000105 D2 91            [12]  643 	setb	_P1_1
                                    644 ;	main.c:132: BT_BLUE_LED = 1;	  
                                    645 ;	assignBit
      000107 D2 92            [12]  646 	setb	_P1_2
                                    647 ;	main.c:133: SELF_GREEN_LED = 0;    //自控指示灯亮
                                    648 ;	assignBit
      000109 C2 93            [12]  649 	clr	_P1_3
                                    650 ;	main.c:134: break;
                                    651 ;	main.c:135: case(2):
      00010B 22               [24]  652 	ret
      00010C                        653 00103$:
                                    654 ;	main.c:136: STOP_RED_LED = 1;
                                    655 ;	assignBit
      00010C D2 91            [12]  656 	setb	_P1_1
                                    657 ;	main.c:137: SELF_GREEN_LED = 1;
                                    658 ;	assignBit
      00010E D2 93            [12]  659 	setb	_P1_3
                                    660 ;	main.c:138: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
                                    661 ;	assignBit
      000110 C2 92            [12]  662 	clr	_P1_2
                                    663 ;	main.c:140: }	
      000112                        664 00105$:
                                    665 ;	main.c:141: }
      000112 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'setTurnAngle'
                                    669 ;------------------------------------------------------------
                                    670 ;a                         Allocated to registers r7 
                                    671 ;------------------------------------------------------------
                                    672 ;	main.c:144: void setTurnAngle(uchar a) {
                                    673 ;	-----------------------------------------
                                    674 ;	 function setTurnAngle
                                    675 ;	-----------------------------------------
      000113                        676 _setTurnAngle:
      000113 AF 82            [24]  677 	mov	r7,dpl
                                    678 ;	main.c:146: switch(a) {
      000115 BF 05 02         [24]  679 	cjne	r7,#0x05,00129$
      000118 80 1A            [24]  680 	sjmp	00103$
      00011A                        681 00129$:
      00011A BF 06 02         [24]  682 	cjne	r7,#0x06,00130$
      00011D 80 19            [24]  683 	sjmp	00104$
      00011F                        684 00130$:
      00011F BF 07 02         [24]  685 	cjne	r7,#0x07,00131$
      000122 80 18            [24]  686 	sjmp	00105$
      000124                        687 00131$:
      000124 BF 08 02         [24]  688 	cjne	r7,#0x08,00132$
      000127 80 07            [24]  689 	sjmp	00102$
      000129                        690 00132$:
      000129 BF 09 13         [24]  691 	cjne	r7,#0x09,00107$
                                    692 ;	main.c:148: case(STEER_N90):angle = 1; break;
      00012C 75 29 01         [24]  693 	mov	_angle,#0x01
                                    694 ;	main.c:150: case(STEER_N45):angle = 2; break;
      00012F 22               [24]  695 	ret
      000130                        696 00102$:
      000130 75 29 02         [24]  697 	mov	_angle,#0x02
                                    698 ;	main.c:152: case(STEER_S):angle = 3; break;
      000133 22               [24]  699 	ret
      000134                        700 00103$:
      000134 75 29 03         [24]  701 	mov	_angle,#0x03
                                    702 ;	main.c:154: case(STEER_P45):angle = 4; break;
      000137 22               [24]  703 	ret
      000138                        704 00104$:
      000138 75 29 04         [24]  705 	mov	_angle,#0x04
                                    706 ;	main.c:156: case(STEER_P90):angle = 5; break;
      00013B 22               [24]  707 	ret
      00013C                        708 00105$:
      00013C 75 29 05         [24]  709 	mov	_angle,#0x05
                                    710 ;	main.c:157: }	
      00013F                        711 00107$:
                                    712 ;	main.c:158: }
      00013F 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'steerTurn'
                                    716 ;------------------------------------------------------------
                                    717 ;a                         Allocated to registers r6 
                                    718 ;------------------------------------------------------------
                                    719 ;	main.c:161: void steerTurn() {
                                    720 ;	-----------------------------------------
                                    721 ;	 function steerTurn
                                    722 ;	-----------------------------------------
      000140                        723 _steerTurn:
                                    724 ;	main.c:164: t0InterruptTimes++;
      000140 05 25            [12]  725 	inc	_t0InterruptTimes
      000142 E4               [12]  726 	clr	a
      000143 B5 25 02         [24]  727 	cjne	a,_t0InterruptTimes,00116$
      000146 05 26            [12]  728 	inc	(_t0InterruptTimes + 1)
      000148                        729 00116$:
                                    730 ;	main.c:165: a = t0InterruptTimes % 5;
      000148 75 2A 05         [24]  731 	mov	__moduint_PARM_2,#0x05
      00014B 75 2B 00         [24]  732 	mov	(__moduint_PARM_2 + 1),#0x00
      00014E 85 25 82         [24]  733 	mov	dpl,_t0InterruptTimes
      000151 85 26 83         [24]  734 	mov	dph,(_t0InterruptTimes + 1)
      000154 12 06 71         [24]  735 	lcall	__moduint
      000157 AE 82            [24]  736 	mov	r6,dpl
      000159 AF 83            [24]  737 	mov	r7,dph
                                    738 ;	main.c:166: if (t0InterruptTimes == 150) {	//舵机转动到指定角度后,停止定时器0计时
      00015B 74 96            [12]  739 	mov	a,#0x96
      00015D B5 25 06         [24]  740 	cjne	a,_t0InterruptTimes,00117$
      000160 E4               [12]  741 	clr	a
      000161 B5 26 02         [24]  742 	cjne	a,(_t0InterruptTimes + 1),00117$
      000164 80 02            [24]  743 	sjmp	00118$
      000166                        744 00117$:
      000166 80 09            [24]  745 	sjmp	00102$
      000168                        746 00118$:
                                    747 ;	main.c:167: t0InterruptTimes = 0;
      000168 E4               [12]  748 	clr	a
      000169 F5 25            [12]  749 	mov	_t0InterruptTimes,a
      00016B F5 26            [12]  750 	mov	(_t0InterruptTimes + 1),a
                                    751 ;	main.c:168: STEER_PWM = 0;	
                                    752 ;	assignBit
      00016D C2 B2            [12]  753 	clr	_P3_2
                                    754 ;	main.c:169: TR0 = 0;
                                    755 ;	assignBit
      00016F C2 8C            [12]  756 	clr	_TR0
      000171                        757 00102$:
                                    758 ;	main.c:172: if (a < angle) {
      000171 C3               [12]  759 	clr	c
      000172 EE               [12]  760 	mov	a,r6
      000173 95 29            [12]  761 	subb	a,_angle
      000175 50 03            [24]  762 	jnc	00104$
                                    763 ;	main.c:173: STEER_PWM = 1;
                                    764 ;	assignBit
      000177 D2 B2            [12]  765 	setb	_P3_2
      000179 22               [24]  766 	ret
      00017A                        767 00104$:
                                    768 ;	main.c:175: STEER_PWM = 0;
                                    769 ;	assignBit
      00017A C2 B2            [12]  770 	clr	_P3_2
                                    771 ;	main.c:177: }
      00017C 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'workSR04'
                                    775 ;------------------------------------------------------------
                                    776 ;	main.c:180: void workSR04() {
                                    777 ;	-----------------------------------------
                                    778 ;	 function workSR04
                                    779 ;	-----------------------------------------
      00017D                        780 _workSR04:
                                    781 ;	main.c:182: TRIG = 1;
                                    782 ;	assignBit
      00017D D2 B5            [12]  783 	setb	_P3_5
                                    784 ;	main.c:184: __nop; __nop; __nop; __nop; __nop;
      00017F 00               [12]  785 	nop	
      000180 00               [12]  786 	nop	
      000181 00               [12]  787 	nop	
      000182 00               [12]  788 	nop	
      000183 00               [12]  789 	nop	
                                    790 ;	main.c:185: __nop; __nop; __nop; __nop; __nop;
      000184 00               [12]  791 	nop	
      000185 00               [12]  792 	nop	
      000186 00               [12]  793 	nop	
      000187 00               [12]  794 	nop	
      000188 00               [12]  795 	nop	
                                    796 ;	main.c:186: __nop; __nop; __nop; __nop; __nop;
      000189 00               [12]  797 	nop	
      00018A 00               [12]  798 	nop	
      00018B 00               [12]  799 	nop	
      00018C 00               [12]  800 	nop	
      00018D 00               [12]  801 	nop	
                                    802 ;	main.c:187: __nop; __nop; __nop; __nop; __nop;
      00018E 00               [12]  803 	nop	
      00018F 00               [12]  804 	nop	
      000190 00               [12]  805 	nop	
      000191 00               [12]  806 	nop	
      000192 00               [12]  807 	nop	
                                    808 ;	main.c:188: TRIG = 0;
                                    809 ;	assignBit
      000193 C2 B5            [12]  810 	clr	_P3_5
                                    811 ;	main.c:189: while(!ECHO);
      000195                        812 00101$:
      000195 30 B4 FD         [24]  813 	jnb	_P3_4,00101$
                                    814 ;	main.c:190: TR0 = 1;
                                    815 ;	assignBit
      000198 D2 8C            [12]  816 	setb	_TR0
                                    817 ;	main.c:191: while(ECHO);
      00019A                        818 00104$:
      00019A 20 B4 FD         [24]  819 	jb	_P3_4,00104$
                                    820 ;	main.c:192: TR0 = 0;
                                    821 ;	assignBit
      00019D C2 8C            [12]  822 	clr	_TR0
                                    823 ;	main.c:193: }
      00019F 22               [24]  824 	ret
                                    825 ;------------------------------------------------------------
                                    826 ;Allocation info for local variables in function 'calculate'
                                    827 ;------------------------------------------------------------
                                    828 ;distance                  Allocated to registers r6 r7 
                                    829 ;time                      Allocated to registers 
                                    830 ;------------------------------------------------------------
                                    831 ;	main.c:196: int calculate() {
                                    832 ;	-----------------------------------------
                                    833 ;	 function calculate
                                    834 ;	-----------------------------------------
      0001A0                        835 _calculate:
                                    836 ;	main.c:200: time = TH0 * 256 + TL0;
      0001A0 AF 8C            [24]  837 	mov	r7,_TH0
      0001A2 7E 00            [12]  838 	mov	r6,#0x00
      0001A4 AC 8A            [24]  839 	mov	r4,_TL0
      0001A6 7D 00            [12]  840 	mov	r5,#0x00
      0001A8 EC               [12]  841 	mov	a,r4
      0001A9 2E               [12]  842 	add	a,r6
      0001AA F5 82            [12]  843 	mov	dpl,a
      0001AC ED               [12]  844 	mov	a,r5
      0001AD 3F               [12]  845 	addc	a,r7
      0001AE F5 83            [12]  846 	mov	dph,a
                                    847 ;	main.c:202: TH0 = 0;
                                    848 ;	1-genFromRTrack replaced	mov	_TH0,#0x00
      0001B0 8E 8C            [24]  849 	mov	_TH0,r6
                                    850 ;	main.c:203: TL0 = 0;
                                    851 ;	1-genFromRTrack replaced	mov	_TL0,#0x00
      0001B2 8E 8A            [24]  852 	mov	_TL0,r6
                                    853 ;	main.c:204: time *= 1.085;
      0001B4 12 06 BE         [24]  854 	lcall	___sint2fs
      0001B7 AC 82            [24]  855 	mov	r4,dpl
      0001B9 AD 83            [24]  856 	mov	r5,dph
      0001BB AE F0            [24]  857 	mov	r6,b
      0001BD FF               [12]  858 	mov	r7,a
      0001BE C0 04            [24]  859 	push	ar4
      0001C0 C0 05            [24]  860 	push	ar5
      0001C2 C0 06            [24]  861 	push	ar6
      0001C4 C0 07            [24]  862 	push	ar7
      0001C6 90 E1 48         [24]  863 	mov	dptr,#0xe148
      0001C9 75 F0 8A         [24]  864 	mov	b,#0x8a
      0001CC 74 3F            [12]  865 	mov	a,#0x3f
      0001CE 12 05 6D         [24]  866 	lcall	___fsmul
      0001D1 AC 82            [24]  867 	mov	r4,dpl
      0001D3 AD 83            [24]  868 	mov	r5,dph
      0001D5 AE F0            [24]  869 	mov	r6,b
      0001D7 FF               [12]  870 	mov	r7,a
      0001D8 E5 81            [12]  871 	mov	a,sp
      0001DA 24 FC            [12]  872 	add	a,#0xfc
      0001DC F5 81            [12]  873 	mov	sp,a
      0001DE 8C 82            [24]  874 	mov	dpl,r4
      0001E0 8D 83            [24]  875 	mov	dph,r5
      0001E2 8E F0            [24]  876 	mov	b,r6
      0001E4 EF               [12]  877 	mov	a,r7
      0001E5 12 06 CB         [24]  878 	lcall	___fs2sint
                                    879 ;	main.c:207: distance = (time * 0.017); 
      0001E8 12 06 BE         [24]  880 	lcall	___sint2fs
      0001EB AC 82            [24]  881 	mov	r4,dpl
      0001ED AD 83            [24]  882 	mov	r5,dph
      0001EF AE F0            [24]  883 	mov	r6,b
      0001F1 FF               [12]  884 	mov	r7,a
      0001F2 C0 04            [24]  885 	push	ar4
      0001F4 C0 05            [24]  886 	push	ar5
      0001F6 C0 06            [24]  887 	push	ar6
      0001F8 C0 07            [24]  888 	push	ar7
      0001FA 90 43 96         [24]  889 	mov	dptr,#0x4396
      0001FD 75 F0 8B         [24]  890 	mov	b,#0x8b
      000200 74 3C            [12]  891 	mov	a,#0x3c
      000202 12 05 6D         [24]  892 	lcall	___fsmul
      000205 AC 82            [24]  893 	mov	r4,dpl
      000207 AD 83            [24]  894 	mov	r5,dph
      000209 AE F0            [24]  895 	mov	r6,b
      00020B FF               [12]  896 	mov	r7,a
      00020C E5 81            [12]  897 	mov	a,sp
      00020E 24 FC            [12]  898 	add	a,#0xfc
      000210 F5 81            [12]  899 	mov	sp,a
      000212 8C 82            [24]  900 	mov	dpl,r4
      000214 8D 83            [24]  901 	mov	dph,r5
      000216 8E F0            [24]  902 	mov	b,r6
      000218 EF               [12]  903 	mov	a,r7
      000219 12 06 CB         [24]  904 	lcall	___fs2sint
      00021C AE 82            [24]  905 	mov	r6,dpl
      00021E AF 83            [24]  906 	mov	r7,dph
                                    907 ;	main.c:208: if(isOverStep) {
                                    908 ;	main.c:209: isOverStep = 0;
                                    909 ;	assignBit
      000220 10 00 02         [24]  910 	jbc	_isOverStep,00111$
      000223 80 07            [24]  911 	sjmp	00102$
      000225                        912 00111$:
                                    913 ;	main.c:210: SEG = 0xff;
      000225 75 A0 FF         [24]  914 	mov	_P2,#0xff
                                    915 ;	main.c:212: return -1;
      000228 90 FF FF         [24]  916 	mov	dptr,#0xffff
      00022B 22               [24]  917 	ret
      00022C                        918 00102$:
                                    919 ;	main.c:215: SEG = seg[distance];
      00022C EE               [12]  920 	mov	a,r6
      00022D 24 2F            [12]  921 	add	a,#_seg
      00022F F5 82            [12]  922 	mov	dpl,a
      000231 EF               [12]  923 	mov	a,r7
      000232 34 08            [12]  924 	addc	a,#(_seg >> 8)
      000234 F5 83            [12]  925 	mov	dph,a
      000236 E4               [12]  926 	clr	a
      000237 93               [24]  927 	movc	a,@a+dptr
      000238 F5 A0            [12]  928 	mov	_P2,a
                                    929 ;	main.c:218: return distance;
      00023A 8E 82            [24]  930 	mov	dpl,r6
      00023C 8F 83            [24]  931 	mov	dph,r7
                                    932 ;	main.c:220: }
      00023E 22               [24]  933 	ret
                                    934 ;------------------------------------------------------------
                                    935 ;Allocation info for local variables in function 'isHaveObs'
                                    936 ;------------------------------------------------------------
                                    937 ;dir                       Allocated to registers 
                                    938 ;distance                  Allocated to registers r6 r7 
                                    939 ;------------------------------------------------------------
                                    940 ;	main.c:223: __bit isHaveObs(uchar dir) {
                                    941 ;	-----------------------------------------
                                    942 ;	 function isHaveObs
                                    943 ;	-----------------------------------------
      00023F                        944 _isHaveObs:
                                    945 ;	main.c:226: ET2 = 0;	//禁止定时器2中断，以免对舵机的PWM波形产生影响
                                    946 ;	assignBit
      00023F C2 AD            [12]  947 	clr	_ET2
                                    948 ;	main.c:227: setTurnAngle(dir);
      000241 12 01 13         [24]  949 	lcall	_setTurnAngle
                                    950 ;	main.c:228: operate = STEER_OPERATE;
      000244 75 23 02         [24]  951 	mov	_operate,#0x02
                                    952 ;	main.c:229: initTimer0();
      000247 12 03 F3         [24]  953 	lcall	_initTimer0
                                    954 ;	main.c:230: delay(100);		//延迟时间太短会导致舵机无法转动
      00024A 90 00 64         [24]  955 	mov	dptr,#0x0064
      00024D 12 00 9F         [24]  956 	lcall	_delay
                                    957 ;	main.c:234: operate = SR04_OPERATE;
      000250 75 23 03         [24]  958 	mov	_operate,#0x03
                                    959 ;	main.c:235: initTimer0();
      000253 12 03 F3         [24]  960 	lcall	_initTimer0
                                    961 ;	main.c:236: workSR04();		//超声波模块工作
      000256 12 01 7D         [24]  962 	lcall	_workSR04
                                    963 ;	main.c:237: distance = calculate();
      000259 12 01 A0         [24]  964 	lcall	_calculate
      00025C AE 82            [24]  965 	mov	r6,dpl
      00025E AF 83            [24]  966 	mov	r7,dph
                                    967 ;	main.c:239: if (distance > OBS_DIS | distance == -1) {	//距离大于允许的距离或者超出测量范围，则算没有障碍物
      000260 C3               [12]  968 	clr	c
      000261 74 0A            [12]  969 	mov	a,#0x0a
      000263 9E               [12]  970 	subb	a,r6
      000264 74 80            [12]  971 	mov	a,#(0x00 ^ 0x80)
      000266 8F F0            [24]  972 	mov	b,r7
      000268 63 F0 80         [24]  973 	xrl	b,#0x80
      00026B 95 F0            [12]  974 	subb	a,b
      00026D E4               [12]  975 	clr	a
      00026E 33               [12]  976 	rlc	a
      00026F FD               [12]  977 	mov	r5,a
      000270 E4               [12]  978 	clr	a
      000271 BE FF 04         [24]  979 	cjne	r6,#0xff,00110$
      000274 BF FF 01         [24]  980 	cjne	r7,#0xff,00110$
      000277 04               [12]  981 	inc	a
      000278                        982 00110$:
      000278 4D               [12]  983 	orl	a,r5
      000279 60 02            [24]  984 	jz	00102$
                                    985 ;	main.c:240: return 0;
      00027B C3               [12]  986 	clr	c
      00027C 22               [24]  987 	ret
      00027D                        988 00102$:
                                    989 ;	main.c:242: return 1;
      00027D D3               [12]  990 	setb	c
                                    991 ;	main.c:244: }
      00027E 22               [24]  992 	ret
                                    993 ;------------------------------------------------------------
                                    994 ;Allocation info for local variables in function 'selfControl'
                                    995 ;------------------------------------------------------------
                                    996 ;sensor_state              Allocated to registers r7 
                                    997 ;------------------------------------------------------------
                                    998 ;	main.c:248: void selfControl() {
                                    999 ;	-----------------------------------------
                                   1000 ;	 function selfControl
                                   1001 ;	-----------------------------------------
      00027F                       1002 _selfControl:
                                   1003 ;	main.c:251: uchar sensor_state = 0xf0 & P1;		//获取传感器的情况，屏蔽低4位
      00027F E5 90            [12] 1004 	mov	a,_P1
      000281 54 F0            [12] 1005 	anl	a,#0xf0
      000283 FF               [12] 1006 	mov	r7,a
                                   1007 ;	main.c:254: switch(sensor_state) {
      000284 BF 30 02         [24] 1008 	cjne	r7,#0x30,00185$
      000287 80 1A            [24] 1009 	sjmp	00101$
      000289                       1010 00185$:
      000289 BF 70 03         [24] 1011 	cjne	r7,#0x70,00186$
      00028C 02 03 5F         [24] 1012 	ljmp	00117$
      00028F                       1013 00186$:
      00028F BF B0 03         [24] 1014 	cjne	r7,#0xb0,00187$
      000292 02 03 29         [24] 1015 	ljmp	00113$
      000295                       1016 00187$:
      000295 BF D0 03         [24] 1017 	cjne	r7,#0xd0,00188$
      000298 02 03 20         [24] 1018 	ljmp	00110$
      00029B                       1019 00188$:
      00029B BF E0 02         [24] 1020 	cjne	r7,#0xe0,00189$
      00029E 80 52            [24] 1021 	sjmp	00105$
      0002A0                       1022 00189$:
      0002A0 02 03 95         [24] 1023 	ljmp	00121$
                                   1024 ;	main.c:255: case(0x20 | 0x30):	//前左右 | 左右
      0002A3                       1025 00101$:
                                   1026 ;	main.c:256: setObsFlag(1, 0, 1, 1);
                                   1027 ;	assignBit
      0002A3 D2 06            [12] 1028 	setb	_setObsFlag_PARM_1
                                   1029 ;	assignBit
      0002A5 C2 07            [12] 1030 	clr	_setObsFlag_PARM_2
                                   1031 ;	assignBit
      0002A7 D2 08            [12] 1032 	setb	_setObsFlag_PARM_3
                                   1033 ;	assignBit
      0002A9 D2 09            [12] 1034 	setb	_setObsFlag_PARM_4
      0002AB 12 00 DC         [24] 1035 	lcall	_setObsFlag
                                   1036 ;	main.c:257: while(lObsFlag & rObsFlag & fObsFlag) {
      0002AE                       1037 00102$:
      0002AE A2 04            [12] 1038 	mov	c,_lObsFlag
      0002B0 82 05            [24] 1039 	anl	c,_rObsFlag
      0002B2 82 02            [24] 1040 	anl	c,_fObsFlag
      0002B4 40 01            [24] 1041 	jc	00190$
      0002B6 22               [24] 1042 	ret
      0002B7                       1043 00190$:
                                   1044 ;	main.c:258: CAR = BACK;
      0002B7 75 80 AA         [24] 1045 	mov	_P0,#0xaa
                                   1046 ;	main.c:259: delay(5);
      0002BA 90 00 05         [24] 1047 	mov	dptr,#0x0005
      0002BD 12 00 9F         [24] 1048 	lcall	_delay
                                   1049 ;	main.c:260: CAR = STOP;
      0002C0 75 80 00         [24] 1050 	mov	_P0,#0x00
                                   1051 ;	main.c:261: lObsFlag = isHaveObs(STEER_N45);
      0002C3 75 82 08         [24] 1052 	mov	dpl,#0x08
      0002C6 12 02 3F         [24] 1053 	lcall	_isHaveObs
      0002C9 92 04            [24] 1054 	mov	_lObsFlag,c
                                   1055 ;	main.c:262: delay(50);
      0002CB 90 00 32         [24] 1056 	mov	dptr,#0x0032
      0002CE 12 00 9F         [24] 1057 	lcall	_delay
                                   1058 ;	main.c:263: fObsFlag = isHaveObs(STEER_S);
      0002D1 75 82 05         [24] 1059 	mov	dpl,#0x05
      0002D4 12 02 3F         [24] 1060 	lcall	_isHaveObs
      0002D7 92 02            [24] 1061 	mov	_fObsFlag,c
                                   1062 ;	main.c:264: delay(20);
      0002D9 90 00 14         [24] 1063 	mov	dptr,#0x0014
      0002DC 12 00 9F         [24] 1064 	lcall	_delay
                                   1065 ;	main.c:265: rObsFlag = isHaveObs(STEER_P45);
      0002DF 75 82 06         [24] 1066 	mov	dpl,#0x06
      0002E2 12 02 3F         [24] 1067 	lcall	_isHaveObs
      0002E5 92 05            [24] 1068 	mov	_rObsFlag,c
                                   1069 ;	main.c:266: CAR = BACK;
      0002E7 75 80 AA         [24] 1070 	mov	_P0,#0xaa
                                   1071 ;	main.c:267: delay(10);
      0002EA 90 00 0A         [24] 1072 	mov	dptr,#0x000a
      0002ED 12 00 9F         [24] 1073 	lcall	_delay
                                   1074 ;	main.c:270: case(0xe0): //只有前
      0002F0 80 BC            [24] 1075 	sjmp	00102$
      0002F2                       1076 00105$:
                                   1077 ;	main.c:271: setObsFlag(1, 0, 0, 0);
                                   1078 ;	assignBit
      0002F2 D2 06            [12] 1079 	setb	_setObsFlag_PARM_1
                                   1080 ;	assignBit
      0002F4 C2 07            [12] 1081 	clr	_setObsFlag_PARM_2
                                   1082 ;	assignBit
      0002F6 C2 08            [12] 1083 	clr	_setObsFlag_PARM_3
                                   1084 ;	assignBit
      0002F8 C2 09            [12] 1085 	clr	_setObsFlag_PARM_4
      0002FA 12 00 DC         [24] 1086 	lcall	_setObsFlag
                                   1087 ;	main.c:272: while(fObsFlag) {
      0002FD                       1088 00106$:
      0002FD 20 02 01         [24] 1089 	jb	_fObsFlag,00191$
      000300 22               [24] 1090 	ret
      000301                       1091 00191$:
                                   1092 ;	main.c:273: CAR = BACK;
      000301 75 80 AA         [24] 1093 	mov	_P0,#0xaa
                                   1094 ;	main.c:274: delay(5);
      000304 90 00 05         [24] 1095 	mov	dptr,#0x0005
      000307 12 00 9F         [24] 1096 	lcall	_delay
                                   1097 ;	main.c:275: CAR = STOP;
      00030A 75 80 00         [24] 1098 	mov	_P0,#0x00
                                   1099 ;	main.c:276: fObsFlag = isHaveObs(STEER_S);
      00030D 75 82 05         [24] 1100 	mov	dpl,#0x05
      000310 12 02 3F         [24] 1101 	lcall	_isHaveObs
      000313 92 02            [24] 1102 	mov	_fObsFlag,c
                                   1103 ;	main.c:277: CAR = BACK;
      000315 75 80 AA         [24] 1104 	mov	_P0,#0xaa
                                   1105 ;	main.c:278: delay(10);
      000318 90 00 0A         [24] 1106 	mov	dptr,#0x000a
      00031B 12 00 9F         [24] 1107 	lcall	_delay
                                   1108 ;	main.c:282: while(!BACK_SENSER) {
      00031E 80 DD            [24] 1109 	sjmp	00106$
      000320                       1110 00110$:
      000320 30 95 01         [24] 1111 	jnb	_P1_5,00192$
      000323 22               [24] 1112 	ret
      000324                       1113 00192$:
                                   1114 ;	main.c:283: CAR = FRONT;
      000324 75 80 55         [24] 1115 	mov	_P0,#0x55
                                   1116 ;	main.c:286: case(0xb0):	//只有左
      000327 80 F7            [24] 1117 	sjmp	00110$
      000329                       1118 00113$:
                                   1119 ;	main.c:287: setObsFlag(0, 0, 1, 0);
                                   1120 ;	assignBit
      000329 C2 06            [12] 1121 	clr	_setObsFlag_PARM_1
                                   1122 ;	assignBit
      00032B C2 07            [12] 1123 	clr	_setObsFlag_PARM_2
                                   1124 ;	assignBit
      00032D D2 08            [12] 1125 	setb	_setObsFlag_PARM_3
                                   1126 ;	assignBit
      00032F C2 09            [12] 1127 	clr	_setObsFlag_PARM_4
      000331 12 00 DC         [24] 1128 	lcall	_setObsFlag
                                   1129 ;	main.c:288: while(lObsFlag) {
      000334                       1130 00114$:
      000334 30 04 1F         [24] 1131 	jnb	_lObsFlag,00116$
                                   1132 ;	main.c:289: CAR = BACK;
      000337 75 80 AA         [24] 1133 	mov	_P0,#0xaa
                                   1134 ;	main.c:290: delay(5);
      00033A 90 00 05         [24] 1135 	mov	dptr,#0x0005
      00033D 12 00 9F         [24] 1136 	lcall	_delay
                                   1137 ;	main.c:291: CAR = STOP;
      000340 75 80 00         [24] 1138 	mov	_P0,#0x00
                                   1139 ;	main.c:292: lObsFlag = isHaveObs(STEER_N45);
      000343 75 82 08         [24] 1140 	mov	dpl,#0x08
      000346 12 02 3F         [24] 1141 	lcall	_isHaveObs
      000349 92 04            [24] 1142 	mov	_lObsFlag,c
                                   1143 ;	main.c:293: CAR = BACK;
      00034B 75 80 AA         [24] 1144 	mov	_P0,#0xaa
                                   1145 ;	main.c:294: delay(10);
      00034E 90 00 0A         [24] 1146 	mov	dptr,#0x000a
      000351 12 00 9F         [24] 1147 	lcall	_delay
      000354 80 DE            [24] 1148 	sjmp	00114$
      000356                       1149 00116$:
                                   1150 ;	main.c:296: CAR = FRONT_RIGHT;
      000356 75 80 A5         [24] 1151 	mov	_P0,#0xa5
                                   1152 ;	main.c:297: delay(100);
      000359 90 00 64         [24] 1153 	mov	dptr,#0x0064
                                   1154 ;	main.c:298: break;
                                   1155 ;	main.c:299: case(0x70):	//只有右
      00035C 02 00 9F         [24] 1156 	ljmp	_delay
      00035F                       1157 00117$:
                                   1158 ;	main.c:300: setObsFlag(0, 0, 1, 1);
                                   1159 ;	assignBit
      00035F C2 06            [12] 1160 	clr	_setObsFlag_PARM_1
                                   1161 ;	assignBit
      000361 C2 07            [12] 1162 	clr	_setObsFlag_PARM_2
                                   1163 ;	assignBit
      000363 D2 08            [12] 1164 	setb	_setObsFlag_PARM_3
                                   1165 ;	assignBit
      000365 D2 09            [12] 1166 	setb	_setObsFlag_PARM_4
      000367 12 00 DC         [24] 1167 	lcall	_setObsFlag
                                   1168 ;	main.c:301: while(rObsFlag) {
      00036A                       1169 00118$:
      00036A 30 05 1F         [24] 1170 	jnb	_rObsFlag,00120$
                                   1171 ;	main.c:302: CAR = BACK;
      00036D 75 80 AA         [24] 1172 	mov	_P0,#0xaa
                                   1173 ;	main.c:303: delay(5);
      000370 90 00 05         [24] 1174 	mov	dptr,#0x0005
      000373 12 00 9F         [24] 1175 	lcall	_delay
                                   1176 ;	main.c:304: CAR = STOP;
      000376 75 80 00         [24] 1177 	mov	_P0,#0x00
                                   1178 ;	main.c:305: rObsFlag = isHaveObs(STEER_P45);
      000379 75 82 06         [24] 1179 	mov	dpl,#0x06
      00037C 12 02 3F         [24] 1180 	lcall	_isHaveObs
      00037F 92 05            [24] 1181 	mov	_rObsFlag,c
                                   1182 ;	main.c:306: CAR = BACK;
      000381 75 80 AA         [24] 1183 	mov	_P0,#0xaa
                                   1184 ;	main.c:307: delay(10);
      000384 90 00 0A         [24] 1185 	mov	dptr,#0x000a
      000387 12 00 9F         [24] 1186 	lcall	_delay
      00038A 80 DE            [24] 1187 	sjmp	00118$
      00038C                       1188 00120$:
                                   1189 ;	main.c:309: CAR = FRONT_LEFT;
      00038C 75 80 5A         [24] 1190 	mov	_P0,#0x5a
                                   1191 ;	main.c:310: delay(100);
      00038F 90 00 64         [24] 1192 	mov	dptr,#0x0064
                                   1193 ;	main.c:311: break;
                                   1194 ;	main.c:312: default:
      000392 02 00 9F         [24] 1195 	ljmp	_delay
      000395                       1196 00121$:
                                   1197 ;	main.c:313: CAR = STOP;
      000395 75 80 00         [24] 1198 	mov	_P0,#0x00
                                   1199 ;	main.c:315: }
                                   1200 ;	main.c:316: }
      000398 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'btControl'
                                   1204 ;------------------------------------------------------------
                                   1205 ;cmd                       Allocated to registers r7 
                                   1206 ;------------------------------------------------------------
                                   1207 ;	main.c:319: void btControl(uchar cmd) {
                                   1208 ;	-----------------------------------------
                                   1209 ;	 function btControl
                                   1210 ;	-----------------------------------------
      000399                       1211 _btControl:
      000399 AF 82            [24] 1212 	mov	r7,dpl
                                   1213 ;	main.c:321: switch(cmd) {
      00039B BF 61 02         [24] 1214 	cjne	r7,#0x61,00152$
      00039E 80 32            [24] 1215 	sjmp	00106$
      0003A0                       1216 00152$:
      0003A0 BF 62 02         [24] 1217 	cjne	r7,#0x62,00153$
      0003A3 80 1D            [24] 1218 	sjmp	00102$
      0003A5                       1219 00153$:
      0003A5 BF 64 02         [24] 1220 	cjne	r7,#0x64,00154$
      0003A8 80 31            [24] 1221 	sjmp	00109$
      0003AA                       1222 00154$:
      0003AA BF 66 02         [24] 1223 	cjne	r7,#0x66,00155$
      0003AD 80 0F            [24] 1224 	sjmp	00101$
      0003AF                       1225 00155$:
      0003AF BF 6C 02         [24] 1226 	cjne	r7,#0x6c,00156$
      0003B2 80 12            [24] 1227 	sjmp	00103$
      0003B4                       1228 00156$:
      0003B4 BF 72 02         [24] 1229 	cjne	r7,#0x72,00157$
      0003B7 80 11            [24] 1230 	sjmp	00104$
      0003B9                       1231 00157$:
                                   1232 ;	main.c:322: case('f'): CAR = FRONT; break;
      0003B9 BF 73 26         [24] 1233 	cjne	r7,#0x73,00112$
      0003BC 80 10            [24] 1234 	sjmp	00105$
      0003BE                       1235 00101$:
      0003BE 75 80 55         [24] 1236 	mov	_P0,#0x55
                                   1237 ;	main.c:323: case('b'): CAR = BACK; break;
      0003C1 22               [24] 1238 	ret
      0003C2                       1239 00102$:
      0003C2 75 80 AA         [24] 1240 	mov	_P0,#0xaa
                                   1241 ;	main.c:324: case('l'): CAR = FRONT_LEFT; break;
      0003C5 22               [24] 1242 	ret
      0003C6                       1243 00103$:
      0003C6 75 80 5A         [24] 1244 	mov	_P0,#0x5a
                                   1245 ;	main.c:325: case('r'): CAR = FRONT_RIGHT; break;
      0003C9 22               [24] 1246 	ret
      0003CA                       1247 00104$:
      0003CA 75 80 A5         [24] 1248 	mov	_P0,#0xa5
                                   1249 ;	main.c:326: case('s'): CAR = STOP; break;
      0003CD 22               [24] 1250 	ret
      0003CE                       1251 00105$:
      0003CE 75 80 00         [24] 1252 	mov	_P0,#0x00
                                   1253 ;	main.c:327: case('a'): 
      0003D1 22               [24] 1254 	ret
      0003D2                       1255 00106$:
                                   1256 ;	main.c:328: if (speed < M_PWM_CYCLE) {
      0003D2 74 F6            [12] 1257 	mov	a,#0x100 - 0x0a
      0003D4 25 24            [12] 1258 	add	a,_speed
      0003D6 40 0D            [24] 1259 	jc	00114$
                                   1260 ;	main.c:329: speed++;
      0003D8 05 24            [12] 1261 	inc	_speed
                                   1262 ;	main.c:331: break;
                                   1263 ;	main.c:332: case('d'): 
      0003DA 22               [24] 1264 	ret
      0003DB                       1265 00109$:
                                   1266 ;	main.c:333: if (speed != 0) {
      0003DB E5 24            [12] 1267 	mov	a,_speed
      0003DD 60 06            [24] 1268 	jz	00114$
                                   1269 ;	main.c:334: speed--;
      0003DF 15 24            [12] 1270 	dec	_speed
                                   1271 ;	main.c:336: break;
                                   1272 ;	main.c:337: default:CAR = STOP; break;
      0003E1 22               [24] 1273 	ret
      0003E2                       1274 00112$:
      0003E2 75 80 00         [24] 1275 	mov	_P0,#0x00
                                   1276 ;	main.c:338: }
      0003E5                       1277 00114$:
                                   1278 ;	main.c:339: }
      0003E5 22               [24] 1279 	ret
                                   1280 ;------------------------------------------------------------
                                   1281 ;Allocation info for local variables in function 'initInterrupt'
                                   1282 ;------------------------------------------------------------
                                   1283 ;	main.c:342: void initInterrupt() {
                                   1284 ;	-----------------------------------------
                                   1285 ;	 function initInterrupt
                                   1286 ;	-----------------------------------------
      0003E6                       1287 _initInterrupt:
                                   1288 ;	main.c:344: EA = 1;			//允许总中断
                                   1289 ;	assignBit
      0003E6 D2 AF            [12] 1290 	setb	_EA
                                   1291 ;	main.c:345: ES = 1;			//允许串行口中断
                                   1292 ;	assignBit
      0003E8 D2 AC            [12] 1293 	setb	_ES
                                   1294 ;	main.c:346: ET0 = 1;		//允许定时器0中断
                                   1295 ;	assignBit
      0003EA D2 A9            [12] 1296 	setb	_ET0
                                   1297 ;	main.c:347: ET2 = 1;		//允许定时器2中断
                                   1298 ;	assignBit
      0003EC D2 AD            [12] 1299 	setb	_ET2
                                   1300 ;	main.c:348: EX1 = 1;		//允许外部中断1中断
                                   1301 ;	assignBit
      0003EE D2 AA            [12] 1302 	setb	_EX1
                                   1303 ;	main.c:349: IT1 = 1;		//低电平沿触发
                                   1304 ;	assignBit
      0003F0 D2 8A            [12] 1305 	setb	_IT1
                                   1306 ;	main.c:350: }
      0003F2 22               [24] 1307 	ret
                                   1308 ;------------------------------------------------------------
                                   1309 ;Allocation info for local variables in function 'initTimer0'
                                   1310 ;------------------------------------------------------------
                                   1311 ;	main.c:353: void initTimer0() {
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function initTimer0
                                   1314 ;	-----------------------------------------
      0003F3                       1315 _initTimer0:
                                   1316 ;	main.c:355: TMOD |= 0x01;	//工作方式1
      0003F3 43 89 01         [24] 1317 	orl	_TMOD,#0x01
                                   1318 ;	main.c:356: if (operate == STEER_OPERATE) {	//为舵机转动
      0003F6 74 02            [12] 1319 	mov	a,#0x02
      0003F8 B5 23 09         [24] 1320 	cjne	a,_operate,00104$
                                   1321 ;	main.c:357: TH0 = 0xFE;		//中断时间0.5ms
      0003FB 75 8C FE         [24] 1322 	mov	_TH0,#0xfe
                                   1323 ;	main.c:358: TL0 = 0x33;
      0003FE 75 8A 33         [24] 1324 	mov	_TL0,#0x33
                                   1325 ;	main.c:359: TR0 = 1;	//开启定时器0
                                   1326 ;	assignBit
      000401 D2 8C            [12] 1327 	setb	_TR0
      000403 22               [24] 1328 	ret
      000404                       1329 00104$:
                                   1330 ;	main.c:360: }else if (operate == SR04_OPERATE) {		//为超声波
      000404 74 03            [12] 1331 	mov	a,#0x03
      000406 B5 23 06         [24] 1332 	cjne	a,_operate,00106$
                                   1333 ;	main.c:361: TH0 = 0;
      000409 75 8C 00         [24] 1334 	mov	_TH0,#0x00
                                   1335 ;	main.c:362: TL0 = 0;
      00040C 75 8A 00         [24] 1336 	mov	_TL0,#0x00
      00040F                       1337 00106$:
                                   1338 ;	main.c:364: }
      00040F 22               [24] 1339 	ret
                                   1340 ;------------------------------------------------------------
                                   1341 ;Allocation info for local variables in function 'initSerial'
                                   1342 ;------------------------------------------------------------
                                   1343 ;	main.c:367: void initSerial() {
                                   1344 ;	-----------------------------------------
                                   1345 ;	 function initSerial
                                   1346 ;	-----------------------------------------
      000410                       1347 _initSerial:
                                   1348 ;	main.c:369: SCON = 0x50;	//串行口工作模式1
      000410 75 98 50         [24] 1349 	mov	_SCON,#0x50
                                   1350 ;	main.c:370: PCON = 0x00;
      000413 75 87 00         [24] 1351 	mov	_PCON,#0x00
                                   1352 ;	main.c:371: RI = 0;			//接受中断标志清零
                                   1353 ;	assignBit
      000416 C2 98            [12] 1354 	clr	_RI
                                   1355 ;	main.c:373: TMOD |= 0x20;	//定时器T1方式2 
      000418 43 89 20         [24] 1356 	orl	_TMOD,#0x20
                                   1357 ;	main.c:374: TL1 = 0xfd;
      00041B 75 8B FD         [24] 1358 	mov	_TL1,#0xfd
                                   1359 ;	main.c:375: TH1 = 0xfd;
      00041E 75 8D FD         [24] 1360 	mov	_TH1,#0xfd
                                   1361 ;	main.c:376: TR1 = 1;		//定时器开始计数
                                   1362 ;	assignBit
      000421 D2 8E            [12] 1363 	setb	_TR1
                                   1364 ;	main.c:377: }
      000423 22               [24] 1365 	ret
                                   1366 ;------------------------------------------------------------
                                   1367 ;Allocation info for local variables in function 'initTimer2'
                                   1368 ;------------------------------------------------------------
                                   1369 ;	main.c:381: void initTimer2() {
                                   1370 ;	-----------------------------------------
                                   1371 ;	 function initTimer2
                                   1372 ;	-----------------------------------------
      000424                       1373 _initTimer2:
                                   1374 ;	main.c:383: T2CON = 0x00;
      000424 75 C8 00         [24] 1375 	mov	_T2CON,#0x00
                                   1376 ;	main.c:384: T2MOD = 0x00;	
      000427 75 C9 00         [24] 1377 	mov	_T2MOD,#0x00
                                   1378 ;	main.c:385: TH2 = RCAP2H = 0xff;		//中断0.1ms
      00042A 75 CB FF         [24] 1379 	mov	_RCAP2H,#0xff
      00042D 75 CD FF         [24] 1380 	mov	_TH2,#0xff
                                   1381 ;	main.c:386: TL2 = RCAP2L = 0xa4;
      000430 75 CA A4         [24] 1382 	mov	_RCAP2L,#0xa4
      000433 75 CC A4         [24] 1383 	mov	_TL2,#0xa4
                                   1384 ;	main.c:387: TR2 = 1;	//开启定时器2
                                   1385 ;	assignBit
      000436 D2 CA            [12] 1386 	setb	_TR2
                                   1387 ;	main.c:388: }
      000438 22               [24] 1388 	ret
                                   1389 ;------------------------------------------------------------
                                   1390 ;Allocation info for local variables in function 'timer0'
                                   1391 ;------------------------------------------------------------
                                   1392 ;	main.c:390: void timer0() __interrupt 1 __using 0 {
                                   1393 ;	-----------------------------------------
                                   1394 ;	 function timer0
                                   1395 ;	-----------------------------------------
      000439                       1396 _timer0:
      000439 C0 22            [24] 1397 	push	bits
      00043B C0 E0            [24] 1398 	push	acc
      00043D C0 F0            [24] 1399 	push	b
      00043F C0 82            [24] 1400 	push	dpl
      000441 C0 83            [24] 1401 	push	dph
      000443 C0 07            [24] 1402 	push	(0+7)
      000445 C0 06            [24] 1403 	push	(0+6)
      000447 C0 05            [24] 1404 	push	(0+5)
      000449 C0 04            [24] 1405 	push	(0+4)
      00044B C0 03            [24] 1406 	push	(0+3)
      00044D C0 02            [24] 1407 	push	(0+2)
      00044F C0 01            [24] 1408 	push	(0+1)
      000451 C0 00            [24] 1409 	push	(0+0)
      000453 C0 D0            [24] 1410 	push	psw
      000455 75 D0 00         [24] 1411 	mov	psw,#0x00
                                   1412 ;	main.c:392: if (operate == STEER_OPERATE) {
      000458 74 02            [12] 1413 	mov	a,#0x02
      00045A B5 23 0B         [24] 1414 	cjne	a,_operate,00104$
                                   1415 ;	main.c:394: TH0 = 0xFE;		//中断时间0.5ms
      00045D 75 8C FE         [24] 1416 	mov	_TH0,#0xfe
                                   1417 ;	main.c:395: TL0 = 0x33;
      000460 75 8A 33         [24] 1418 	mov	_TL0,#0x33
                                   1419 ;	main.c:396: steerTurn();
      000463 12 01 40         [24] 1420 	lcall	_steerTurn
      000466 80 0D            [24] 1421 	sjmp	00106$
      000468                       1422 00104$:
                                   1423 ;	main.c:397: } else if (operate == SR04_OPERATE) {
      000468 74 03            [12] 1424 	mov	a,#0x03
      00046A B5 23 08         [24] 1425 	cjne	a,_operate,00106$
                                   1426 ;	main.c:398: TH0 = 0;
      00046D 75 8C 00         [24] 1427 	mov	_TH0,#0x00
                                   1428 ;	main.c:399: TL0 = 0;
      000470 75 8A 00         [24] 1429 	mov	_TL0,#0x00
                                   1430 ;	main.c:400: isOverStep = 1;
                                   1431 ;	assignBit
      000473 D2 00            [12] 1432 	setb	_isOverStep
      000475                       1433 00106$:
                                   1434 ;	main.c:402: }
      000475 D0 D0            [24] 1435 	pop	psw
      000477 D0 00            [24] 1436 	pop	(0+0)
      000479 D0 01            [24] 1437 	pop	(0+1)
      00047B D0 02            [24] 1438 	pop	(0+2)
      00047D D0 03            [24] 1439 	pop	(0+3)
      00047F D0 04            [24] 1440 	pop	(0+4)
      000481 D0 05            [24] 1441 	pop	(0+5)
      000483 D0 06            [24] 1442 	pop	(0+6)
      000485 D0 07            [24] 1443 	pop	(0+7)
      000487 D0 83            [24] 1444 	pop	dph
      000489 D0 82            [24] 1445 	pop	dpl
      00048B D0 F0            [24] 1446 	pop	b
      00048D D0 E0            [24] 1447 	pop	acc
      00048F D0 22            [24] 1448 	pop	bits
      000491 32               [24] 1449 	reti
                                   1450 ;------------------------------------------------------------
                                   1451 ;Allocation info for local variables in function 'int1'
                                   1452 ;------------------------------------------------------------
                                   1453 ;	main.c:405: void int1() __interrupt 2 __using 1 {
                                   1454 ;	-----------------------------------------
                                   1455 ;	 function int1
                                   1456 ;	-----------------------------------------
      000492                       1457 _int1:
                           00000F  1458 	ar7 = 0x0f
                           00000E  1459 	ar6 = 0x0e
                           00000D  1460 	ar5 = 0x0d
                           00000C  1461 	ar4 = 0x0c
                           00000B  1462 	ar3 = 0x0b
                           00000A  1463 	ar2 = 0x0a
                           000009  1464 	ar1 = 0x09
                           000008  1465 	ar0 = 0x08
                                   1466 ;	main.c:406: operate = SELF_OPERATE;
      000492 75 23 04         [24] 1467 	mov	_operate,#0x04
                                   1468 ;	main.c:407: }
      000495 32               [24] 1469 	reti
                                   1470 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1471 ;	eliminated unneeded push/pop psw
                                   1472 ;	eliminated unneeded push/pop dpl
                                   1473 ;	eliminated unneeded push/pop dph
                                   1474 ;	eliminated unneeded push/pop b
                                   1475 ;	eliminated unneeded push/pop acc
                                   1476 ;------------------------------------------------------------
                                   1477 ;Allocation info for local variables in function 'serial'
                                   1478 ;------------------------------------------------------------
                                   1479 ;	main.c:410: void serial() __interrupt 4 __using 2 {
                                   1480 ;	-----------------------------------------
                                   1481 ;	 function serial
                                   1482 ;	-----------------------------------------
      000496                       1483 _serial:
                           000017  1484 	ar7 = 0x17
                           000016  1485 	ar6 = 0x16
                           000015  1486 	ar5 = 0x15
                           000014  1487 	ar4 = 0x14
                           000013  1488 	ar3 = 0x13
                           000012  1489 	ar2 = 0x12
                           000011  1490 	ar1 = 0x11
                           000010  1491 	ar0 = 0x10
      000496 C0 E0            [24] 1492 	push	acc
                                   1493 ;	main.c:411: RI = 0;		
                                   1494 ;	assignBit
      000498 C2 98            [12] 1495 	clr	_RI
                                   1496 ;	main.c:412: if (operate == NO_OPERATE) {
      00049A E5 23            [12] 1497 	mov	a,_operate
      00049C 70 03            [24] 1498 	jnz	00103$
                                   1499 ;	main.c:413: operate = BT_OPERATE;
      00049E 75 23 01         [24] 1500 	mov	_operate,#0x01
      0004A1                       1501 00103$:
                                   1502 ;	main.c:415: }
      0004A1 D0 E0            [24] 1503 	pop	acc
      0004A3 32               [24] 1504 	reti
                                   1505 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1506 ;	eliminated unneeded push/pop psw
                                   1507 ;	eliminated unneeded push/pop dpl
                                   1508 ;	eliminated unneeded push/pop dph
                                   1509 ;	eliminated unneeded push/pop b
                                   1510 ;------------------------------------------------------------
                                   1511 ;Allocation info for local variables in function 'timer2'
                                   1512 ;------------------------------------------------------------
                                   1513 ;a                         Allocated to registers r6 
                                   1514 ;------------------------------------------------------------
                                   1515 ;	main.c:418: void timer2() __interrupt 5 __using 3 {
                                   1516 ;	-----------------------------------------
                                   1517 ;	 function timer2
                                   1518 ;	-----------------------------------------
      0004A4                       1519 _timer2:
                           00001F  1520 	ar7 = 0x1f
                           00001E  1521 	ar6 = 0x1e
                           00001D  1522 	ar5 = 0x1d
                           00001C  1523 	ar4 = 0x1c
                           00001B  1524 	ar3 = 0x1b
                           00001A  1525 	ar2 = 0x1a
                           000019  1526 	ar1 = 0x19
                           000018  1527 	ar0 = 0x18
      0004A4 C0 22            [24] 1528 	push	bits
      0004A6 C0 E0            [24] 1529 	push	acc
      0004A8 C0 F0            [24] 1530 	push	b
      0004AA C0 82            [24] 1531 	push	dpl
      0004AC C0 83            [24] 1532 	push	dph
      0004AE C0 07            [24] 1533 	push	(0+7)
      0004B0 C0 06            [24] 1534 	push	(0+6)
      0004B2 C0 05            [24] 1535 	push	(0+5)
      0004B4 C0 04            [24] 1536 	push	(0+4)
      0004B6 C0 03            [24] 1537 	push	(0+3)
      0004B8 C0 02            [24] 1538 	push	(0+2)
      0004BA C0 01            [24] 1539 	push	(0+1)
      0004BC C0 00            [24] 1540 	push	(0+0)
      0004BE C0 D0            [24] 1541 	push	psw
      0004C0 75 D0 18         [24] 1542 	mov	psw,#0x18
                                   1543 ;	main.c:421: t2InterruptTimes++;
      0004C3 05 27            [12] 1544 	inc	_t2InterruptTimes
      0004C5 E4               [12] 1545 	clr	a
      0004C6 B5 27 02         [24] 1546 	cjne	a,_t2InterruptTimes,00116$
      0004C9 05 28            [12] 1547 	inc	(_t2InterruptTimes + 1)
      0004CB                       1548 00116$:
                                   1549 ;	main.c:422: a = t2InterruptTimes % M_PWM_CYCLE;
      0004CB 75 2A 0A         [24] 1550 	mov	__moduint_PARM_2,#0x0a
      0004CE 75 2B 00         [24] 1551 	mov	(__moduint_PARM_2 + 1),#0x00
      0004D1 85 27 82         [24] 1552 	mov	dpl,_t2InterruptTimes
      0004D4 85 28 83         [24] 1553 	mov	dph,(_t2InterruptTimes + 1)
      0004D7 75 D0 00         [24] 1554 	mov	psw,#0x00
      0004DA 12 06 71         [24] 1555 	lcall	__moduint
      0004DD 75 D0 18         [24] 1556 	mov	psw,#0x18
      0004E0 AE 82            [24] 1557 	mov	r6,dpl
                                   1558 ;	main.c:423: if (t2InterruptTimes == CMD_TIME) {
      0004E2 74 90            [12] 1559 	mov	a,#0x90
      0004E4 B5 27 0E         [24] 1560 	cjne	a,_t2InterruptTimes,00102$
      0004E7 74 01            [12] 1561 	mov	a,#0x01
      0004E9 B5 28 09         [24] 1562 	cjne	a,(_t2InterruptTimes + 1),00102$
                                   1563 ;	main.c:424: t2InterruptTimes = 0;
      0004EC E4               [12] 1564 	clr	a
      0004ED F5 27            [12] 1565 	mov	_t2InterruptTimes,a
      0004EF F5 28            [12] 1566 	mov	(_t2InterruptTimes + 1),a
                                   1567 ;	main.c:425: CAR = STOP;
                                   1568 ;	1-genFromRTrack replaced	mov	_P0,#0x00
      0004F1 F5 80            [12] 1569 	mov	_P0,a
                                   1570 ;	main.c:426: TR2 = 0;	//溢出400次，说明执行了蓝牙发送的指令40ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
                                   1571 ;	assignBit
      0004F3 C2 CA            [12] 1572 	clr	_TR2
      0004F5                       1573 00102$:
                                   1574 ;	main.c:428: if (a <= speed) {
      0004F5 C3               [12] 1575 	clr	c
      0004F6 E5 24            [12] 1576 	mov	a,_speed
      0004F8 9E               [12] 1577 	subb	a,r6
      0004F9 40 04            [24] 1578 	jc	00104$
                                   1579 ;	main.c:429: M_PWM = 1;
                                   1580 ;	assignBit
      0004FB D2 B6            [12] 1581 	setb	_P3_6
      0004FD 80 02            [24] 1582 	sjmp	00106$
      0004FF                       1583 00104$:
                                   1584 ;	main.c:431: M_PWM = 0;
                                   1585 ;	assignBit
      0004FF C2 B6            [12] 1586 	clr	_P3_6
      000501                       1587 00106$:
                                   1588 ;	main.c:434: }
      000501 D0 D0            [24] 1589 	pop	psw
      000503 D0 00            [24] 1590 	pop	(0+0)
      000505 D0 01            [24] 1591 	pop	(0+1)
      000507 D0 02            [24] 1592 	pop	(0+2)
      000509 D0 03            [24] 1593 	pop	(0+3)
      00050B D0 04            [24] 1594 	pop	(0+4)
      00050D D0 05            [24] 1595 	pop	(0+5)
      00050F D0 06            [24] 1596 	pop	(0+6)
      000511 D0 07            [24] 1597 	pop	(0+7)
      000513 D0 83            [24] 1598 	pop	dph
      000515 D0 82            [24] 1599 	pop	dpl
      000517 D0 F0            [24] 1600 	pop	b
      000519 D0 E0            [24] 1601 	pop	acc
      00051B D0 22            [24] 1602 	pop	bits
      00051D 32               [24] 1603 	reti
                                   1604 ;------------------------------------------------------------
                                   1605 ;Allocation info for local variables in function 'setup'
                                   1606 ;------------------------------------------------------------
                                   1607 ;	main.c:437: void setup() {
                                   1608 ;	-----------------------------------------
                                   1609 ;	 function setup
                                   1610 ;	-----------------------------------------
      00051E                       1611 _setup:
                           000007  1612 	ar7 = 0x07
                           000006  1613 	ar6 = 0x06
                           000005  1614 	ar5 = 0x05
                           000004  1615 	ar4 = 0x04
                           000003  1616 	ar3 = 0x03
                           000002  1617 	ar2 = 0x02
                           000001  1618 	ar1 = 0x01
                           000000  1619 	ar0 = 0x00
                                   1620 ;	main.c:438: initInterrupt();
      00051E 12 03 E6         [24] 1621 	lcall	_initInterrupt
                                   1622 ;	main.c:439: initSerial();
      000521 12 04 10         [24] 1623 	lcall	_initSerial
                                   1624 ;	main.c:440: initTimer2();
      000524 12 04 24         [24] 1625 	lcall	_initTimer2
                                   1626 ;	main.c:441: operate = NO_OPERATE;
      000527 75 23 00         [24] 1627 	mov	_operate,#0x00
                                   1628 ;	main.c:442: STBY = 1;
                                   1629 ;	assignBit
      00052A D2 B7            [12] 1630 	setb	_P3_7
                                   1631 ;	main.c:443: }
      00052C 22               [24] 1632 	ret
                                   1633 ;------------------------------------------------------------
                                   1634 ;Allocation info for local variables in function 'loop'
                                   1635 ;------------------------------------------------------------
                                   1636 ;	main.c:446: void loop() {
                                   1637 ;	-----------------------------------------
                                   1638 ;	 function loop
                                   1639 ;	-----------------------------------------
      00052D                       1640 _loop:
                                   1641 ;	main.c:447: sensorTrigger();
      00052D 12 00 CC         [24] 1642 	lcall	_sensorTrigger
                                   1643 ;	main.c:448: if (SWITCH_SELF_CONTROL) {
      000530 30 90 06         [24] 1644 	jnb	_P1_0,00102$
                                   1645 ;	main.c:449: ledStatus(0);	
      000533 75 82 00         [24] 1646 	mov	dpl,#0x00
      000536 12 00 ED         [24] 1647 	lcall	_ledStatus
      000539                       1648 00102$:
                                   1649 ;	main.c:451: if (operate == BT_OPERATE) {
      000539 74 01            [12] 1650 	mov	a,#0x01
      00053B B5 23 0E         [24] 1651 	cjne	a,_operate,00106$
                                   1652 ;	main.c:452: ledStatus(2);
      00053E 75 82 02         [24] 1653 	mov	dpl,#0x02
      000541 12 00 ED         [24] 1654 	lcall	_ledStatus
                                   1655 ;	main.c:453: btControl(SBUF);
      000544 85 99 82         [24] 1656 	mov	dpl,_SBUF
      000547 12 03 99         [24] 1657 	lcall	_btControl
      00054A 80 10            [24] 1658 	sjmp	00107$
      00054C                       1659 00106$:
                                   1660 ;	main.c:454: } else if (operate == SELF_OPERATE) {
      00054C 74 04            [12] 1661 	mov	a,#0x04
      00054E B5 23 0B         [24] 1662 	cjne	a,_operate,00107$
                                   1663 ;	main.c:455: ledStatus(1);
      000551 75 82 01         [24] 1664 	mov	dpl,#0x01
      000554 12 00 ED         [24] 1665 	lcall	_ledStatus
                                   1666 ;	main.c:456: selfControl();
      000557 12 02 7F         [24] 1667 	lcall	_selfControl
                                   1668 ;	main.c:457: ET2 = 1;	//退出自己控制，恢复定时器2中断允许
                                   1669 ;	assignBit
      00055A D2 AD            [12] 1670 	setb	_ET2
      00055C                       1671 00107$:
                                   1672 ;	main.c:459: operate = NO_OPERATE;
      00055C 75 23 00         [24] 1673 	mov	_operate,#0x00
                                   1674 ;	main.c:460: }
      00055F 22               [24] 1675 	ret
                                   1676 ;------------------------------------------------------------
                                   1677 ;Allocation info for local variables in function 'main'
                                   1678 ;------------------------------------------------------------
                                   1679 ;	main.c:462: void main() {
                                   1680 ;	-----------------------------------------
                                   1681 ;	 function main
                                   1682 ;	-----------------------------------------
      000560                       1683 _main:
                                   1684 ;	main.c:464: if (isFirst) {
      000560 30 01 05         [24] 1685 	jnb	_isFirst,00104$
                                   1686 ;	main.c:465: setup();
      000563 12 05 1E         [24] 1687 	lcall	_setup
                                   1688 ;	main.c:466: isFirst = 0;
                                   1689 ;	assignBit
      000566 C2 01            [12] 1690 	clr	_isFirst
                                   1691 ;	main.c:468: while(1) {
      000568                       1692 00104$:
                                   1693 ;	main.c:469: loop();
      000568 12 05 2D         [24] 1694 	lcall	_loop
                                   1695 ;	main.c:471: }
      00056B 80 FB            [24] 1696 	sjmp	00104$
                                   1697 	.area CSEG    (CODE)
                                   1698 	.area CONST   (CODE)
      00082F                       1699 _seg:
      00082F C0                    1700 	.db #0xc0	; 192
      000830 F9                    1701 	.db #0xf9	; 249
      000831 A4                    1702 	.db #0xa4	; 164
      000832 B0                    1703 	.db #0xb0	; 176
      000833 99                    1704 	.db #0x99	; 153
      000834 92                    1705 	.db #0x92	; 146
      000835 82                    1706 	.db #0x82	; 130
      000836 F8                    1707 	.db #0xf8	; 248
      000837 80                    1708 	.db #0x80	; 128
      000838 90                    1709 	.db #0x90	; 144
      000839 88                    1710 	.db #0x88	; 136
      00083A 83                    1711 	.db #0x83	; 131
      00083B C6                    1712 	.db #0xc6	; 198
      00083C A1                    1713 	.db #0xa1	; 161
      00083D 86                    1714 	.db #0x86	; 134
      00083E 8E                    1715 	.db #0x8e	; 142
                                   1716 	.area XINIT   (CODE)
                                   1717 	.area CABS    (ABS,CODE)
