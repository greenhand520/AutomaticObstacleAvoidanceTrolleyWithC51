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
      00000B 02 05 77         [24]  427 	ljmp	_timer0
      00000E                        428 	.ds	5
      000013 02 05 D0         [24]  429 	ljmp	_int1
      000016                        430 	.ds	5
      00001B 32               [24]  431 	reti
      00001C                        432 	.ds	7
      000023 02 05 D6         [24]  433 	ljmp	_serial
      000026                        434 	.ds	5
      00002B 02 05 E4         [24]  435 	ljmp	_timer2
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
                                    449 ;	main.c:69: uchar operate = 0;
      00008A 75 23 00         [24]  450 	mov	_operate,#0x00
                                    451 ;	main.c:75: uchar speed = 8;	//小车速度
      00008D 75 24 08         [24]  452 	mov	_speed,#0x08
                                    453 ;	main.c:79: __bit isOverStep = 0;	//定时器0是否溢出标志，溢出距离过远，超出测量范围
                                    454 ;	assignBit
      000090 C2 00            [12]  455 	clr	_isOverStep
                                    456 ;	main.c:80: __bit isFirst = 1;
                                    457 ;	assignBit
      000092 D2 01            [12]  458 	setb	_isFirst
                                    459 ;	main.c:81: __bit fObsFlag = 0;		//前面障碍物标志
                                    460 ;	assignBit
      000094 C2 02            [12]  461 	clr	_fObsFlag
                                    462 ;	main.c:82: __bit bObsFlag = 0;		//后面障碍物标志
                                    463 ;	assignBit
      000096 C2 03            [12]  464 	clr	_bObsFlag
                                    465 ;	main.c:83: __bit lObsFlag = 0;		//左面障碍物标志
                                    466 ;	assignBit
      000098 C2 04            [12]  467 	clr	_lObsFlag
                                    468 ;	main.c:84: __bit rObsFlag = 0;		//右面障碍物标志
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
      00002E 02 06 A4         [24]  479 	ljmp	_main
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
                                    492 ;	main.c:88: void delay(uint n){
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
                                    507 ;	main.c:90: for(i=n;i>0;i--){
      0000A3                        508 00106$:
      0000A3 EE               [12]  509 	mov	a,r6
      0000A4 4F               [12]  510 	orl	a,r7
      0000A5 60 1B            [24]  511 	jz	00108$
                                    512 ;	main.c:91: for(j=112;j>0;j--);
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
                                    527 ;	main.c:90: for(i=n;i>0;i--){
      0000BB 1E               [12]  528 	dec	r6
      0000BC BE FF 01         [24]  529 	cjne	r6,#0xff,00133$
      0000BF 1F               [12]  530 	dec	r7
      0000C0                        531 00133$:
      0000C0 80 E1            [24]  532 	sjmp	00106$
      0000C2                        533 00108$:
                                    534 ;	main.c:93: }
      0000C2 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'putcharToSer'
                                    538 ;------------------------------------------------------------
                                    539 ;c                         Allocated to registers 
                                    540 ;------------------------------------------------------------
                                    541 ;	main.c:96: void  putcharToSer(char c) {
                                    542 ;	-----------------------------------------
                                    543 ;	 function putcharToSer
                                    544 ;	-----------------------------------------
      0000C3                        545 _putcharToSer:
      0000C3 85 82 99         [24]  546 	mov	_SBUF,dpl
                                    547 ;	main.c:98: while(!TI);
      0000C6                        548 00101$:
                                    549 ;	main.c:99: TI = 0;
                                    550 ;	assignBit
      0000C6 10 99 02         [24]  551 	jbc	_TI,00114$
      0000C9 80 FB            [24]  552 	sjmp	00101$
      0000CB                        553 00114$:
                                    554 ;	main.c:100: }
      0000CB 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'sensorTrigger'
                                    558 ;------------------------------------------------------------
                                    559 ;	main.c:103: void sensorTrigger() {
                                    560 ;	-----------------------------------------
                                    561 ;	 function sensorTrigger
                                    562 ;	-----------------------------------------
      0000CC                        563 _sensorTrigger:
                                    564 ;	main.c:104: if(!(BACK_SENSER & FRONT_SENSER & LEFT_SENSER & RIGHT_SENSER)) {
      0000CC A2 95            [12]  565 	mov	c,_P1_5
      0000CE 82 94            [24]  566 	anl	c,_P1_4
      0000D0 82 96            [24]  567 	anl	c,_P1_6
      0000D2 82 97            [24]  568 	anl	c,_P1_7
      0000D4 40 03            [24]  569 	jc	00102$
                                    570 ;	main.c:105: SWITCH_SELF_CONTROL = 0;
                                    571 ;	assignBit
      0000D6 C2 90            [12]  572 	clr	_P1_0
      0000D8 22               [24]  573 	ret
      0000D9                        574 00102$:
                                    575 ;	main.c:108: SWITCH_SELF_CONTROL = 1;
                                    576 ;	assignBit
      0000D9 D2 90            [12]  577 	setb	_P1_0
                                    578 ;	main.c:110: }
      0000DB 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'setObsFlag'
                                    582 ;------------------------------------------------------------
                                    583 ;	main.c:113: void setObsFlag(__bit fof, __bit bof, __bit lof, __bit rof) {
                                    584 ;	-----------------------------------------
                                    585 ;	 function setObsFlag
                                    586 ;	-----------------------------------------
      0000DC                        587 _setObsFlag:
                                    588 ;	main.c:114: fObsFlag = fof;
                                    589 ;	assignBit
      0000DC A2 06            [12]  590 	mov	c,_setObsFlag_PARM_1
      0000DE 92 02            [24]  591 	mov	_fObsFlag,c
                                    592 ;	main.c:115: bObsFlag = bof;
                                    593 ;	assignBit
      0000E0 A2 07            [12]  594 	mov	c,_setObsFlag_PARM_2
      0000E2 92 03            [24]  595 	mov	_bObsFlag,c
                                    596 ;	main.c:116: lObsFlag = lof;
                                    597 ;	assignBit
      0000E4 A2 08            [12]  598 	mov	c,_setObsFlag_PARM_3
      0000E6 92 04            [24]  599 	mov	_lObsFlag,c
                                    600 ;	main.c:117: rObsFlag = rof;
                                    601 ;	assignBit
      0000E8 A2 09            [12]  602 	mov	c,_setObsFlag_PARM_4
      0000EA 92 05            [24]  603 	mov	_rObsFlag,c
                                    604 ;	main.c:118: }
      0000EC 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'ledStatus'
                                    608 ;------------------------------------------------------------
                                    609 ;s                         Allocated to registers r7 
                                    610 ;------------------------------------------------------------
                                    611 ;	main.c:122: void ledStatus(uchar s) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function ledStatus
                                    614 ;	-----------------------------------------
      0000ED                        615 _ledStatus:
      0000ED AF 82            [24]  616 	mov	r7,dpl
                                    617 ;	main.c:123: switch(s) {
      0000EF BF 00 02         [24]  618 	cjne	r7,#0x00,00119$
      0000F2 80 0A            [24]  619 	sjmp	00101$
      0000F4                        620 00119$:
      0000F4 BF 01 02         [24]  621 	cjne	r7,#0x01,00120$
      0000F7 80 0C            [24]  622 	sjmp	00102$
      0000F9                        623 00120$:
                                    624 ;	main.c:124: case(0):
      0000F9 BF 02 16         [24]  625 	cjne	r7,#0x02,00105$
      0000FC 80 0E            [24]  626 	sjmp	00103$
      0000FE                        627 00101$:
                                    628 ;	main.c:125: STOP_RED_LED = 0;	//停止指示灯亮
                                    629 ;	assignBit
      0000FE C2 91            [12]  630 	clr	_P1_1
                                    631 ;	main.c:126: BT_BLUE_LED = 1;
                                    632 ;	assignBit
      000100 D2 92            [12]  633 	setb	_P1_2
                                    634 ;	main.c:127: SELF_GREEN_LED = 1;
                                    635 ;	assignBit
      000102 D2 93            [12]  636 	setb	_P1_3
                                    637 ;	main.c:128: break;
                                    638 ;	main.c:129: case(1):
      000104 22               [24]  639 	ret
      000105                        640 00102$:
                                    641 ;	main.c:130: STOP_RED_LED = 1;
                                    642 ;	assignBit
      000105 D2 91            [12]  643 	setb	_P1_1
                                    644 ;	main.c:131: BT_BLUE_LED = 1;	  
                                    645 ;	assignBit
      000107 D2 92            [12]  646 	setb	_P1_2
                                    647 ;	main.c:132: SELF_GREEN_LED = 0;    //自控指示灯亮
                                    648 ;	assignBit
      000109 C2 93            [12]  649 	clr	_P1_3
                                    650 ;	main.c:133: break;
                                    651 ;	main.c:134: case(2):
      00010B 22               [24]  652 	ret
      00010C                        653 00103$:
                                    654 ;	main.c:135: STOP_RED_LED = 1;
                                    655 ;	assignBit
      00010C D2 91            [12]  656 	setb	_P1_1
                                    657 ;	main.c:136: SELF_GREEN_LED = 1;
                                    658 ;	assignBit
      00010E D2 93            [12]  659 	setb	_P1_3
                                    660 ;	main.c:137: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
                                    661 ;	assignBit
      000110 C2 92            [12]  662 	clr	_P1_2
                                    663 ;	main.c:139: }	
      000112                        664 00105$:
                                    665 ;	main.c:140: }
      000112 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'setTurnAngle'
                                    669 ;------------------------------------------------------------
                                    670 ;a                         Allocated to registers r7 
                                    671 ;------------------------------------------------------------
                                    672 ;	main.c:143: void setTurnAngle(uchar a) {
                                    673 ;	-----------------------------------------
                                    674 ;	 function setTurnAngle
                                    675 ;	-----------------------------------------
      000113                        676 _setTurnAngle:
      000113 AF 82            [24]  677 	mov	r7,dpl
                                    678 ;	main.c:145: switch(a) {
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
                                    692 ;	main.c:147: case(STEER_N90):angle = 1; break;
      00012C 75 29 01         [24]  693 	mov	_angle,#0x01
                                    694 ;	main.c:149: case(STEER_N45):angle = 2; break;
      00012F 22               [24]  695 	ret
      000130                        696 00102$:
      000130 75 29 02         [24]  697 	mov	_angle,#0x02
                                    698 ;	main.c:151: case(STEER_S):angle = 3; break;
      000133 22               [24]  699 	ret
      000134                        700 00103$:
      000134 75 29 03         [24]  701 	mov	_angle,#0x03
                                    702 ;	main.c:153: case(STEER_P45):angle = 4; break;
      000137 22               [24]  703 	ret
      000138                        704 00104$:
      000138 75 29 04         [24]  705 	mov	_angle,#0x04
                                    706 ;	main.c:155: case(STEER_P90):angle = 5; break;
      00013B 22               [24]  707 	ret
      00013C                        708 00105$:
      00013C 75 29 05         [24]  709 	mov	_angle,#0x05
                                    710 ;	main.c:156: }	
      00013F                        711 00107$:
                                    712 ;	main.c:157: }
      00013F 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'steerTurn'
                                    716 ;------------------------------------------------------------
                                    717 ;a                         Allocated to registers r6 
                                    718 ;------------------------------------------------------------
                                    719 ;	main.c:160: void steerTurn() {
                                    720 ;	-----------------------------------------
                                    721 ;	 function steerTurn
                                    722 ;	-----------------------------------------
      000140                        723 _steerTurn:
                                    724 ;	main.c:163: t0InterruptTimes++;
      000140 05 25            [12]  725 	inc	_t0InterruptTimes
      000142 E4               [12]  726 	clr	a
      000143 B5 25 02         [24]  727 	cjne	a,_t0InterruptTimes,00116$
      000146 05 26            [12]  728 	inc	(_t0InterruptTimes + 1)
      000148                        729 00116$:
                                    730 ;	main.c:164: a = t0InterruptTimes % 5;
      000148 75 2A 05         [24]  731 	mov	__moduint_PARM_2,#0x05
      00014B 75 2B 00         [24]  732 	mov	(__moduint_PARM_2 + 1),#0x00
      00014E 85 25 82         [24]  733 	mov	dpl,_t0InterruptTimes
      000151 85 26 83         [24]  734 	mov	dph,(_t0InterruptTimes + 1)
      000154 12 07 B5         [24]  735 	lcall	__moduint
      000157 AE 82            [24]  736 	mov	r6,dpl
      000159 AF 83            [24]  737 	mov	r7,dph
                                    738 ;	main.c:165: if (t0InterruptTimes == 200) {	//舵机转动到指定角度后,停止定时器0计时,时间太短的话，舵机左右转动是无法到指定位置的。
      00015B 74 C8            [12]  739 	mov	a,#0xc8
      00015D B5 25 06         [24]  740 	cjne	a,_t0InterruptTimes,00117$
      000160 E4               [12]  741 	clr	a
      000161 B5 26 02         [24]  742 	cjne	a,(_t0InterruptTimes + 1),00117$
      000164 80 02            [24]  743 	sjmp	00118$
      000166                        744 00117$:
      000166 80 09            [24]  745 	sjmp	00102$
      000168                        746 00118$:
                                    747 ;	main.c:166: t0InterruptTimes = 0;
      000168 E4               [12]  748 	clr	a
      000169 F5 25            [12]  749 	mov	_t0InterruptTimes,a
      00016B F5 26            [12]  750 	mov	(_t0InterruptTimes + 1),a
                                    751 ;	main.c:167: STEER_PWM = 0;	
                                    752 ;	assignBit
      00016D C2 B2            [12]  753 	clr	_P3_2
                                    754 ;	main.c:168: TR0 = 0;
                                    755 ;	assignBit
      00016F C2 8C            [12]  756 	clr	_TR0
      000171                        757 00102$:
                                    758 ;	main.c:171: if (a < angle) {
      000171 C3               [12]  759 	clr	c
      000172 EE               [12]  760 	mov	a,r6
      000173 95 29            [12]  761 	subb	a,_angle
      000175 50 03            [24]  762 	jnc	00104$
                                    763 ;	main.c:172: STEER_PWM = 1;
                                    764 ;	assignBit
      000177 D2 B2            [12]  765 	setb	_P3_2
      000179 22               [24]  766 	ret
      00017A                        767 00104$:
                                    768 ;	main.c:174: STEER_PWM = 0;
                                    769 ;	assignBit
      00017A C2 B2            [12]  770 	clr	_P3_2
                                    771 ;	main.c:176: }
      00017C 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'workSR04'
                                    775 ;------------------------------------------------------------
                                    776 ;	main.c:179: void workSR04() {
                                    777 ;	-----------------------------------------
                                    778 ;	 function workSR04
                                    779 ;	-----------------------------------------
      00017D                        780 _workSR04:
                                    781 ;	main.c:181: TRIG = 1;
                                    782 ;	assignBit
      00017D D2 B5            [12]  783 	setb	_P3_5
                                    784 ;	main.c:183: __nop; __nop; __nop; __nop; __nop;
      00017F 00               [12]  785 	nop	
      000180 00               [12]  786 	nop	
      000181 00               [12]  787 	nop	
      000182 00               [12]  788 	nop	
      000183 00               [12]  789 	nop	
                                    790 ;	main.c:184: __nop; __nop; __nop; __nop; __nop;
      000184 00               [12]  791 	nop	
      000185 00               [12]  792 	nop	
      000186 00               [12]  793 	nop	
      000187 00               [12]  794 	nop	
      000188 00               [12]  795 	nop	
                                    796 ;	main.c:185: __nop; __nop; __nop; __nop; __nop;
      000189 00               [12]  797 	nop	
      00018A 00               [12]  798 	nop	
      00018B 00               [12]  799 	nop	
      00018C 00               [12]  800 	nop	
      00018D 00               [12]  801 	nop	
                                    802 ;	main.c:186: __nop; __nop; __nop; __nop; __nop;
      00018E 00               [12]  803 	nop	
      00018F 00               [12]  804 	nop	
      000190 00               [12]  805 	nop	
      000191 00               [12]  806 	nop	
      000192 00               [12]  807 	nop	
                                    808 ;	main.c:187: TRIG = 0;
                                    809 ;	assignBit
      000193 C2 B5            [12]  810 	clr	_P3_5
                                    811 ;	main.c:188: while(!ECHO);
      000195                        812 00101$:
      000195 30 B4 FD         [24]  813 	jnb	_P3_4,00101$
                                    814 ;	main.c:189: TR0 = 1;
                                    815 ;	assignBit
      000198 D2 8C            [12]  816 	setb	_TR0
                                    817 ;	main.c:190: while(ECHO);
      00019A                        818 00104$:
      00019A 20 B4 FD         [24]  819 	jb	_P3_4,00104$
                                    820 ;	main.c:191: TR0 = 0;
                                    821 ;	assignBit
      00019D C2 8C            [12]  822 	clr	_TR0
                                    823 ;	main.c:192: }
      00019F 22               [24]  824 	ret
                                    825 ;------------------------------------------------------------
                                    826 ;Allocation info for local variables in function 'calculate'
                                    827 ;------------------------------------------------------------
                                    828 ;distance                  Allocated to registers r6 r7 
                                    829 ;time                      Allocated to registers 
                                    830 ;------------------------------------------------------------
                                    831 ;	main.c:195: int calculate() {
                                    832 ;	-----------------------------------------
                                    833 ;	 function calculate
                                    834 ;	-----------------------------------------
      0001A0                        835 _calculate:
                                    836 ;	main.c:199: time = TH0 * 256 + TL0;
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
                                    847 ;	main.c:201: TH0 = 0;
                                    848 ;	1-genFromRTrack replaced	mov	_TH0,#0x00
      0001B0 8E 8C            [24]  849 	mov	_TH0,r6
                                    850 ;	main.c:202: TL0 = 0;
                                    851 ;	1-genFromRTrack replaced	mov	_TL0,#0x00
      0001B2 8E 8A            [24]  852 	mov	_TL0,r6
                                    853 ;	main.c:203: time *= 1.085;
      0001B4 12 08 02         [24]  854 	lcall	___sint2fs
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
      0001CE 12 06 B1         [24]  866 	lcall	___fsmul
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
      0001E5 12 08 0F         [24]  878 	lcall	___fs2sint
                                    879 ;	main.c:206: distance = (time * 0.017); 
      0001E8 12 08 02         [24]  880 	lcall	___sint2fs
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
      000202 12 06 B1         [24]  892 	lcall	___fsmul
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
      000219 12 08 0F         [24]  904 	lcall	___fs2sint
      00021C AE 82            [24]  905 	mov	r6,dpl
      00021E AF 83            [24]  906 	mov	r7,dph
                                    907 ;	main.c:207: if(isOverStep) {
                                    908 ;	main.c:208: isOverStep = 0;
                                    909 ;	assignBit
      000220 10 00 02         [24]  910 	jbc	_isOverStep,00111$
      000223 80 07            [24]  911 	sjmp	00102$
      000225                        912 00111$:
                                    913 ;	main.c:209: SEG = 0xff;
      000225 75 A0 FF         [24]  914 	mov	_P2,#0xff
                                    915 ;	main.c:211: return -1;
      000228 90 FF FF         [24]  916 	mov	dptr,#0xffff
      00022B 22               [24]  917 	ret
      00022C                        918 00102$:
                                    919 ;	main.c:214: SEG = seg[distance];
      00022C EE               [12]  920 	mov	a,r6
      00022D 24 73            [12]  921 	add	a,#_seg
      00022F F5 82            [12]  922 	mov	dpl,a
      000231 EF               [12]  923 	mov	a,r7
      000232 34 09            [12]  924 	addc	a,#(_seg >> 8)
      000234 F5 83            [12]  925 	mov	dph,a
      000236 E4               [12]  926 	clr	a
      000237 93               [24]  927 	movc	a,@a+dptr
      000238 F5 A0            [12]  928 	mov	_P2,a
                                    929 ;	main.c:217: return distance;
      00023A 8E 82            [24]  930 	mov	dpl,r6
      00023C 8F 83            [24]  931 	mov	dph,r7
                                    932 ;	main.c:219: }
      00023E 22               [24]  933 	ret
                                    934 ;------------------------------------------------------------
                                    935 ;Allocation info for local variables in function 'isHaveObs'
                                    936 ;------------------------------------------------------------
                                    937 ;dir                       Allocated to registers r7 
                                    938 ;distance                  Allocated to registers r5 r7 
                                    939 ;------------------------------------------------------------
                                    940 ;	main.c:222: __bit isHaveObs(uchar dir) {
                                    941 ;	-----------------------------------------
                                    942 ;	 function isHaveObs
                                    943 ;	-----------------------------------------
      00023F                        944 _isHaveObs:
      00023F AF 82            [24]  945 	mov	r7,dpl
                                    946 ;	main.c:225: __bit sensor_flag = 1;	//0表示存在障碍物
      000241 7E 01            [12]  947 	mov	r6,#0x01
                                    948 ;	main.c:226: switch(dir) {
      000243 BF 05 02         [24]  949 	cjne	r7,#0x05,00131$
      000246 80 0A            [24]  950 	sjmp	00101$
      000248                        951 00131$:
      000248 BF 06 02         [24]  952 	cjne	r7,#0x06,00132$
      00024B 80 13            [24]  953 	sjmp	00103$
      00024D                        954 00132$:
                                    955 ;	main.c:227: case(STEER_S):
      00024D BF 08 15         [24]  956 	cjne	r7,#0x08,00104$
      000250 80 07            [24]  957 	sjmp	00102$
      000252                        958 00101$:
                                    959 ;	main.c:228: sensor_flag = FRONT_SENSER;
      000252 A2 94            [12]  960 	mov	c,_P1_4
      000254 E4               [12]  961 	clr	a
      000255 33               [12]  962 	rlc	a
      000256 FE               [12]  963 	mov	r6,a
                                    964 ;	main.c:229: break;
                                    965 ;	main.c:230: case(STEER_N45):
      000257 80 0C            [24]  966 	sjmp	00104$
      000259                        967 00102$:
                                    968 ;	main.c:231: sensor_flag = LEFT_SENSER;
      000259 A2 96            [12]  969 	mov	c,_P1_6
      00025B E4               [12]  970 	clr	a
      00025C 33               [12]  971 	rlc	a
      00025D FE               [12]  972 	mov	r6,a
                                    973 ;	main.c:232: break;
                                    974 ;	main.c:233: case(STEER_P45):
      00025E 80 05            [24]  975 	sjmp	00104$
      000260                        976 00103$:
                                    977 ;	main.c:234: sensor_flag = RIGHT_SENSER;
      000260 A2 97            [12]  978 	mov	c,_P1_7
      000262 E4               [12]  979 	clr	a
      000263 33               [12]  980 	rlc	a
      000264 FE               [12]  981 	mov	r6,a
                                    982 ;	main.c:236: }
      000265                        983 00104$:
                                    984 ;	main.c:238: ET2 = 0;	//禁止定时器2中断，以免对舵机的PWM波形产生影响
                                    985 ;	assignBit
      000265 C2 AD            [12]  986 	clr	_ET2
                                    987 ;	main.c:239: setTurnAngle(dir);
      000267 8F 82            [24]  988 	mov	dpl,r7
      000269 C0 06            [24]  989 	push	ar6
      00026B 12 01 13         [24]  990 	lcall	_setTurnAngle
                                    991 ;	main.c:240: operate = STEER_OPERATE;
      00026E 75 23 02         [24]  992 	mov	_operate,#0x02
                                    993 ;	main.c:241: initTimer0();
      000271 12 05 31         [24]  994 	lcall	_initTimer0
                                    995 ;	main.c:242: delay(5);		//不设延迟会导致舵机无法转动
      000274 90 00 05         [24]  996 	mov	dptr,#0x0005
      000277 12 00 9F         [24]  997 	lcall	_delay
                                    998 ;	main.c:246: operate = SR04_OPERATE;
      00027A 75 23 03         [24]  999 	mov	_operate,#0x03
                                   1000 ;	main.c:247: initTimer0();
      00027D 12 05 31         [24] 1001 	lcall	_initTimer0
                                   1002 ;	main.c:248: workSR04();		//超声波模块工作
      000280 12 01 7D         [24] 1003 	lcall	_workSR04
                                   1004 ;	main.c:249: distance = calculate();
      000283 12 01 A0         [24] 1005 	lcall	_calculate
      000286 AD 82            [24] 1006 	mov	r5,dpl
      000288 AF 83            [24] 1007 	mov	r7,dph
      00028A D0 06            [24] 1008 	pop	ar6
                                   1009 ;	main.c:251: if ((distance > OBS_DIS | distance == -1) && sensor_flag == 1) {	//距离大于允许的距离或者超出测量范围，且对应传感器没有被触发，则算没有障碍物
      00028C C3               [12] 1010 	clr	c
      00028D 74 0F            [12] 1011 	mov	a,#0x0f
      00028F 9D               [12] 1012 	subb	a,r5
      000290 74 80            [12] 1013 	mov	a,#(0x00 ^ 0x80)
      000292 8F F0            [24] 1014 	mov	b,r7
      000294 63 F0 80         [24] 1015 	xrl	b,#0x80
      000297 95 F0            [12] 1016 	subb	a,b
      000299 E4               [12] 1017 	clr	a
      00029A 33               [12] 1018 	rlc	a
      00029B FC               [12] 1019 	mov	r4,a
      00029C E4               [12] 1020 	clr	a
      00029D BD FF 04         [24] 1021 	cjne	r5,#0xff,00134$
      0002A0 BF FF 01         [24] 1022 	cjne	r7,#0xff,00134$
      0002A3 04               [12] 1023 	inc	a
      0002A4                       1024 00134$:
      0002A4 4C               [12] 1025 	orl	a,r4
      0002A5 60 05            [24] 1026 	jz	00106$
      0002A7 EE               [12] 1027 	mov	a,r6
      0002A8 60 02            [24] 1028 	jz	00106$
                                   1029 ;	main.c:252: return 0;
      0002AA C3               [12] 1030 	clr	c
      0002AB 22               [24] 1031 	ret
      0002AC                       1032 00106$:
                                   1033 ;	main.c:254: return 1;
      0002AC D3               [12] 1034 	setb	c
                                   1035 ;	main.c:256: }
      0002AD 22               [24] 1036 	ret
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'selfControl'
                                   1039 ;------------------------------------------------------------
                                   1040 ;sensor_state              Allocated to registers r7 
                                   1041 ;a                         Allocated to registers r6 
                                   1042 ;------------------------------------------------------------
                                   1043 ;	main.c:260: void selfControl() {
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function selfControl
                                   1046 ;	-----------------------------------------
      0002AE                       1047 _selfControl:
                                   1048 ;	main.c:262: uchar sensor_state = 0xf0 & P1;		//获取传感器的情况，屏蔽P1低4位
      0002AE E5 90            [12] 1049 	mov	a,_P1
      0002B0 54 F0            [12] 1050 	anl	a,#0xf0
      0002B2 FF               [12] 1051 	mov	r7,a
                                   1052 ;	main.c:263: uchar a = 0;
      0002B3 7E 00            [12] 1053 	mov	r6,#0x00
                                   1054 ;	main.c:264: switch(sensor_state) {
      0002B5 BF 20 02         [24] 1055 	cjne	r7,#0x20,00292$
      0002B8 80 2D            [24] 1056 	sjmp	00101$
      0002BA                       1057 00292$:
      0002BA BF 30 03         [24] 1058 	cjne	r7,#0x30,00293$
      0002BD 02 03 48         [24] 1059 	ljmp	00113$
      0002C0                       1060 00293$:
      0002C0 BF 60 03         [24] 1061 	cjne	r7,#0x60,00294$
      0002C3 02 03 C7         [24] 1062 	ljmp	00130$
      0002C6                       1063 00294$:
      0002C6 BF 70 03         [24] 1064 	cjne	r7,#0x70,00295$
      0002C9 02 04 A3         [24] 1065 	ljmp	00152$
      0002CC                       1066 00295$:
      0002CC BF A0 03         [24] 1067 	cjne	r7,#0xa0,00296$
      0002CF 02 04 1D         [24] 1068 	ljmp	00139$
      0002D2                       1069 00296$:
      0002D2 BF B0 03         [24] 1070 	cjne	r7,#0xb0,00297$
      0002D5 02 04 73         [24] 1071 	ljmp	00148$
      0002D8                       1072 00297$:
      0002D8 BF D0 03         [24] 1073 	cjne	r7,#0xd0,00298$
      0002DB 02 03 BE         [24] 1074 	ljmp	00127$
      0002DE                       1075 00298$:
      0002DE BF E0 03         [24] 1076 	cjne	r7,#0xe0,00299$
      0002E1 02 03 96         [24] 1077 	ljmp	00122$
      0002E4                       1078 00299$:
      0002E4 02 04 D3         [24] 1079 	ljmp	00156$
                                   1080 ;	main.c:265: case(0x20):	//前左右
      0002E7                       1081 00101$:
                                   1082 ;	main.c:267: setObsFlag(1, 0, 1, 1);
                                   1083 ;	assignBit
      0002E7 D2 06            [12] 1084 	setb	_setObsFlag_PARM_1
                                   1085 ;	assignBit
      0002E9 C2 07            [12] 1086 	clr	_setObsFlag_PARM_2
                                   1087 ;	assignBit
      0002EB D2 08            [12] 1088 	setb	_setObsFlag_PARM_3
                                   1089 ;	assignBit
      0002ED D2 09            [12] 1090 	setb	_setObsFlag_PARM_4
      0002EF C0 06            [24] 1091 	push	ar6
      0002F1 12 00 DC         [24] 1092 	lcall	_setObsFlag
      0002F4 D0 06            [24] 1093 	pop	ar6
                                   1094 ;	main.c:268: while(lObsFlag & rObsFlag & fObsFlag) {
      0002F6                       1095 00110$:
      0002F6 A2 04            [12] 1096 	mov	c,_lObsFlag
      0002F8 82 05            [24] 1097 	anl	c,_rObsFlag
      0002FA 82 02            [24] 1098 	anl	c,_fObsFlag
      0002FC 40 01            [24] 1099 	jc	00300$
      0002FE 22               [24] 1100 	ret
      0002FF                       1101 00300$:
                                   1102 ;	main.c:269: CAR = BACK;
      0002FF 75 80 AA         [24] 1103 	mov	_P0,#0xaa
                                   1104 ;	main.c:271: CAR = STOP;
      000302 75 80 00         [24] 1105 	mov	_P0,#0x00
                                   1106 ;	main.c:272: if (a == 0) {
      000305 EE               [12] 1107 	mov	a,r6
      000306 70 0E            [24] 1108 	jnz	00106$
                                   1109 ;	main.c:273: lObsFlag = isHaveObs(STEER_N45);
      000308 75 82 08         [24] 1110 	mov	dpl,#0x08
      00030B C0 06            [24] 1111 	push	ar6
      00030D 12 02 3F         [24] 1112 	lcall	_isHaveObs
      000310 92 04            [24] 1113 	mov	_lObsFlag,c
      000312 D0 06            [24] 1114 	pop	ar6
      000314 80 1D            [24] 1115 	sjmp	00107$
      000316                       1116 00106$:
                                   1117 ;	main.c:274: } else if (a == 1) {
      000316 BE 01 0E         [24] 1118 	cjne	r6,#0x01,00103$
                                   1119 ;	main.c:275: fObsFlag = isHaveObs(STEER_S);
      000319 75 82 05         [24] 1120 	mov	dpl,#0x05
      00031C C0 06            [24] 1121 	push	ar6
      00031E 12 02 3F         [24] 1122 	lcall	_isHaveObs
      000321 92 02            [24] 1123 	mov	_fObsFlag,c
      000323 D0 06            [24] 1124 	pop	ar6
      000325 80 0C            [24] 1125 	sjmp	00107$
      000327                       1126 00103$:
                                   1127 ;	main.c:277: rObsFlag = isHaveObs(STEER_P45);
      000327 75 82 06         [24] 1128 	mov	dpl,#0x06
      00032A C0 06            [24] 1129 	push	ar6
      00032C 12 02 3F         [24] 1130 	lcall	_isHaveObs
      00032F 92 05            [24] 1131 	mov	_rObsFlag,c
      000331 D0 06            [24] 1132 	pop	ar6
      000333                       1133 00107$:
                                   1134 ;	main.c:279: CAR = BACK;
      000333 75 80 AA         [24] 1135 	mov	_P0,#0xaa
                                   1136 ;	main.c:280: delay(25);
      000336 90 00 19         [24] 1137 	mov	dptr,#0x0019
      000339 C0 06            [24] 1138 	push	ar6
      00033B 12 00 9F         [24] 1139 	lcall	_delay
      00033E D0 06            [24] 1140 	pop	ar6
                                   1141 ;	main.c:281: a++;
      000340 0E               [12] 1142 	inc	r6
                                   1143 ;	main.c:282: if (a == 3) {
      000341 BE 03 B2         [24] 1144 	cjne	r6,#0x03,00110$
                                   1145 ;	main.c:283: a = 0;
      000344 7E 00            [12] 1146 	mov	r6,#0x00
                                   1147 ;	main.c:287: case(0x30):	//左右
      000346 80 AE            [24] 1148 	sjmp	00110$
      000348                       1149 00113$:
                                   1150 ;	main.c:289: setObsFlag(0, 0, 1, 1);
                                   1151 ;	assignBit
      000348 C2 06            [12] 1152 	clr	_setObsFlag_PARM_1
                                   1153 ;	assignBit
      00034A C2 07            [12] 1154 	clr	_setObsFlag_PARM_2
                                   1155 ;	assignBit
      00034C D2 08            [12] 1156 	setb	_setObsFlag_PARM_3
                                   1157 ;	assignBit
      00034E D2 09            [12] 1158 	setb	_setObsFlag_PARM_4
      000350 C0 06            [24] 1159 	push	ar6
      000352 12 00 DC         [24] 1160 	lcall	_setObsFlag
      000355 D0 06            [24] 1161 	pop	ar6
                                   1162 ;	main.c:290: while(rObsFlag & fObsFlag) {
      000357                       1163 00119$:
      000357 A2 05            [12] 1164 	mov	c,_rObsFlag
      000359 82 02            [24] 1165 	anl	c,_fObsFlag
      00035B 40 01            [24] 1166 	jc	00306$
      00035D 22               [24] 1167 	ret
      00035E                       1168 00306$:
                                   1169 ;	main.c:291: CAR = BACK;
      00035E 75 80 AA         [24] 1170 	mov	_P0,#0xaa
                                   1171 ;	main.c:292: CAR = STOP;
      000361 75 80 00         [24] 1172 	mov	_P0,#0x00
                                   1173 ;	main.c:293: if (a == 0) {
      000364 EE               [12] 1174 	mov	a,r6
      000365 70 0E            [24] 1175 	jnz	00115$
                                   1176 ;	main.c:294: lObsFlag = isHaveObs(STEER_N45);
      000367 75 82 08         [24] 1177 	mov	dpl,#0x08
      00036A C0 06            [24] 1178 	push	ar6
      00036C 12 02 3F         [24] 1179 	lcall	_isHaveObs
      00036F 92 04            [24] 1180 	mov	_lObsFlag,c
      000371 D0 06            [24] 1181 	pop	ar6
      000373 80 0C            [24] 1182 	sjmp	00116$
      000375                       1183 00115$:
                                   1184 ;	main.c:296: rObsFlag = isHaveObs(STEER_P45);
      000375 75 82 06         [24] 1185 	mov	dpl,#0x06
      000378 C0 06            [24] 1186 	push	ar6
      00037A 12 02 3F         [24] 1187 	lcall	_isHaveObs
      00037D 92 05            [24] 1188 	mov	_rObsFlag,c
      00037F D0 06            [24] 1189 	pop	ar6
      000381                       1190 00116$:
                                   1191 ;	main.c:298: CAR = BACK;
      000381 75 80 AA         [24] 1192 	mov	_P0,#0xaa
                                   1193 ;	main.c:299: delay(25);
      000384 90 00 19         [24] 1194 	mov	dptr,#0x0019
      000387 C0 06            [24] 1195 	push	ar6
      000389 12 00 9F         [24] 1196 	lcall	_delay
      00038C D0 06            [24] 1197 	pop	ar6
                                   1198 ;	main.c:300: a++;
      00038E 0E               [12] 1199 	inc	r6
                                   1200 ;	main.c:301: if (a == 2) {
      00038F BE 02 C5         [24] 1201 	cjne	r6,#0x02,00119$
                                   1202 ;	main.c:302: a = 0;
      000392 7E 00            [12] 1203 	mov	r6,#0x00
                                   1204 ;	main.c:306: case(0xe0): //只有前
      000394 80 C1            [24] 1205 	sjmp	00119$
      000396                       1206 00122$:
                                   1207 ;	main.c:308: setObsFlag(1, 0, 0, 0);
                                   1208 ;	assignBit
      000396 D2 06            [12] 1209 	setb	_setObsFlag_PARM_1
                                   1210 ;	assignBit
      000398 C2 07            [12] 1211 	clr	_setObsFlag_PARM_2
                                   1212 ;	assignBit
      00039A C2 08            [12] 1213 	clr	_setObsFlag_PARM_3
                                   1214 ;	assignBit
      00039C C2 09            [12] 1215 	clr	_setObsFlag_PARM_4
      00039E 12 00 DC         [24] 1216 	lcall	_setObsFlag
                                   1217 ;	main.c:309: while(fObsFlag) {
      0003A1                       1218 00123$:
      0003A1 20 02 01         [24] 1219 	jb	_fObsFlag,00310$
      0003A4 22               [24] 1220 	ret
      0003A5                       1221 00310$:
                                   1222 ;	main.c:310: CAR = BACK;
      0003A5 75 80 AA         [24] 1223 	mov	_P0,#0xaa
                                   1224 ;	main.c:311: CAR = STOP;
      0003A8 75 80 00         [24] 1225 	mov	_P0,#0x00
                                   1226 ;	main.c:312: fObsFlag = isHaveObs(STEER_S);
      0003AB 75 82 05         [24] 1227 	mov	dpl,#0x05
      0003AE 12 02 3F         [24] 1228 	lcall	_isHaveObs
      0003B1 92 02            [24] 1229 	mov	_fObsFlag,c
                                   1230 ;	main.c:313: CAR = BACK;
      0003B3 75 80 AA         [24] 1231 	mov	_P0,#0xaa
                                   1232 ;	main.c:314: delay(25);
      0003B6 90 00 19         [24] 1233 	mov	dptr,#0x0019
      0003B9 12 00 9F         [24] 1234 	lcall	_delay
                                   1235 ;	main.c:318: while(!BACK_SENSER) {
      0003BC 80 E3            [24] 1236 	sjmp	00123$
      0003BE                       1237 00127$:
      0003BE 30 95 01         [24] 1238 	jnb	_P1_5,00311$
      0003C1 22               [24] 1239 	ret
      0003C2                       1240 00311$:
                                   1241 ;	main.c:319: CAR = FRONT;
      0003C2 75 80 55         [24] 1242 	mov	_P0,#0x55
                                   1243 ;	main.c:322: case(0x60): //右前
      0003C5 80 F7            [24] 1244 	sjmp	00127$
      0003C7                       1245 00130$:
                                   1246 ;	main.c:324: setObsFlag(1, 0, 0, 1);
                                   1247 ;	assignBit
      0003C7 D2 06            [12] 1248 	setb	_setObsFlag_PARM_1
                                   1249 ;	assignBit
      0003C9 C2 07            [12] 1250 	clr	_setObsFlag_PARM_2
                                   1251 ;	assignBit
      0003CB C2 08            [12] 1252 	clr	_setObsFlag_PARM_3
                                   1253 ;	assignBit
      0003CD D2 09            [12] 1254 	setb	_setObsFlag_PARM_4
      0003CF C0 06            [24] 1255 	push	ar6
      0003D1 12 00 DC         [24] 1256 	lcall	_setObsFlag
      0003D4 D0 06            [24] 1257 	pop	ar6
                                   1258 ;	main.c:325: while(rObsFlag & fObsFlag) {
      0003D6                       1259 00136$:
      0003D6 A2 05            [12] 1260 	mov	c,_rObsFlag
      0003D8 82 02            [24] 1261 	anl	c,_fObsFlag
      0003DA 50 38            [24] 1262 	jnc	00138$
                                   1263 ;	main.c:326: CAR = BACK;
      0003DC 75 80 AA         [24] 1264 	mov	_P0,#0xaa
                                   1265 ;	main.c:328: CAR = STOP;
      0003DF 75 80 00         [24] 1266 	mov	_P0,#0x00
                                   1267 ;	main.c:329: if (a == 0) {
      0003E2 EE               [12] 1268 	mov	a,r6
      0003E3 70 0E            [24] 1269 	jnz	00132$
                                   1270 ;	main.c:330: rObsFlag = isHaveObs(STEER_P45);
      0003E5 75 82 06         [24] 1271 	mov	dpl,#0x06
      0003E8 C0 06            [24] 1272 	push	ar6
      0003EA 12 02 3F         [24] 1273 	lcall	_isHaveObs
      0003ED 92 05            [24] 1274 	mov	_rObsFlag,c
      0003EF D0 06            [24] 1275 	pop	ar6
      0003F1 80 0C            [24] 1276 	sjmp	00133$
      0003F3                       1277 00132$:
                                   1278 ;	main.c:332: fObsFlag = isHaveObs(STEER_S);
      0003F3 75 82 05         [24] 1279 	mov	dpl,#0x05
      0003F6 C0 06            [24] 1280 	push	ar6
      0003F8 12 02 3F         [24] 1281 	lcall	_isHaveObs
      0003FB 92 02            [24] 1282 	mov	_fObsFlag,c
      0003FD D0 06            [24] 1283 	pop	ar6
      0003FF                       1284 00133$:
                                   1285 ;	main.c:334: CAR = BACK;
      0003FF 75 80 AA         [24] 1286 	mov	_P0,#0xaa
                                   1287 ;	main.c:335: delay(25);
      000402 90 00 19         [24] 1288 	mov	dptr,#0x0019
      000405 C0 06            [24] 1289 	push	ar6
      000407 12 00 9F         [24] 1290 	lcall	_delay
      00040A D0 06            [24] 1291 	pop	ar6
                                   1292 ;	main.c:336: a++;
      00040C 0E               [12] 1293 	inc	r6
                                   1294 ;	main.c:337: if (a == 2) {
      00040D BE 02 C6         [24] 1295 	cjne	r6,#0x02,00136$
                                   1296 ;	main.c:338: a = 0;
      000410 7E 00            [12] 1297 	mov	r6,#0x00
      000412 80 C2            [24] 1298 	sjmp	00136$
      000414                       1299 00138$:
                                   1300 ;	main.c:341: CAR = FRONT_LEFT;
      000414 75 80 5A         [24] 1301 	mov	_P0,#0x5a
                                   1302 ;	main.c:342: delay(100);	
      000417 90 00 64         [24] 1303 	mov	dptr,#0x0064
                                   1304 ;	main.c:343: break;
      00041A 02 00 9F         [24] 1305 	ljmp	_delay
                                   1306 ;	main.c:344: case(0xa0): //左前
      00041D                       1307 00139$:
                                   1308 ;	main.c:346: setObsFlag(1, 0, 1, 0);
                                   1309 ;	assignBit
      00041D D2 06            [12] 1310 	setb	_setObsFlag_PARM_1
                                   1311 ;	assignBit
      00041F C2 07            [12] 1312 	clr	_setObsFlag_PARM_2
                                   1313 ;	assignBit
      000421 D2 08            [12] 1314 	setb	_setObsFlag_PARM_3
                                   1315 ;	assignBit
      000423 C2 09            [12] 1316 	clr	_setObsFlag_PARM_4
      000425 C0 06            [24] 1317 	push	ar6
      000427 12 00 DC         [24] 1318 	lcall	_setObsFlag
      00042A D0 06            [24] 1319 	pop	ar6
                                   1320 ;	main.c:347: while(lObsFlag & fObsFlag) {
      00042C                       1321 00145$:
      00042C A2 04            [12] 1322 	mov	c,_lObsFlag
      00042E 82 02            [24] 1323 	anl	c,_fObsFlag
      000430 50 38            [24] 1324 	jnc	00147$
                                   1325 ;	main.c:348: CAR = BACK;
      000432 75 80 AA         [24] 1326 	mov	_P0,#0xaa
                                   1327 ;	main.c:349: CAR = STOP;
      000435 75 80 00         [24] 1328 	mov	_P0,#0x00
                                   1329 ;	main.c:350: if (a == 0) {
      000438 EE               [12] 1330 	mov	a,r6
      000439 70 0E            [24] 1331 	jnz	00141$
                                   1332 ;	main.c:351: lObsFlag = isHaveObs(STEER_N45);
      00043B 75 82 08         [24] 1333 	mov	dpl,#0x08
      00043E C0 06            [24] 1334 	push	ar6
      000440 12 02 3F         [24] 1335 	lcall	_isHaveObs
      000443 92 04            [24] 1336 	mov	_lObsFlag,c
      000445 D0 06            [24] 1337 	pop	ar6
      000447 80 0C            [24] 1338 	sjmp	00142$
      000449                       1339 00141$:
                                   1340 ;	main.c:353: fObsFlag = isHaveObs(STEER_S);
      000449 75 82 05         [24] 1341 	mov	dpl,#0x05
      00044C C0 06            [24] 1342 	push	ar6
      00044E 12 02 3F         [24] 1343 	lcall	_isHaveObs
      000451 92 02            [24] 1344 	mov	_fObsFlag,c
      000453 D0 06            [24] 1345 	pop	ar6
      000455                       1346 00142$:
                                   1347 ;	main.c:355: CAR = BACK;
      000455 75 80 AA         [24] 1348 	mov	_P0,#0xaa
                                   1349 ;	main.c:356: delay(25);
      000458 90 00 19         [24] 1350 	mov	dptr,#0x0019
      00045B C0 06            [24] 1351 	push	ar6
      00045D 12 00 9F         [24] 1352 	lcall	_delay
      000460 D0 06            [24] 1353 	pop	ar6
                                   1354 ;	main.c:357: a++;
      000462 0E               [12] 1355 	inc	r6
                                   1356 ;	main.c:358: if (a == 2) {
      000463 BE 02 C6         [24] 1357 	cjne	r6,#0x02,00145$
                                   1358 ;	main.c:359: a = 0;
      000466 7E 00            [12] 1359 	mov	r6,#0x00
      000468 80 C2            [24] 1360 	sjmp	00145$
      00046A                       1361 00147$:
                                   1362 ;	main.c:362: CAR = FRONT_RIGHT;
      00046A 75 80 A5         [24] 1363 	mov	_P0,#0xa5
                                   1364 ;	main.c:363: delay(100);
      00046D 90 00 64         [24] 1365 	mov	dptr,#0x0064
                                   1366 ;	main.c:364: break;
                                   1367 ;	main.c:365: case(0xb0):	//只有左
      000470 02 00 9F         [24] 1368 	ljmp	_delay
      000473                       1369 00148$:
                                   1370 ;	main.c:367: setObsFlag(0, 0, 1, 0);
                                   1371 ;	assignBit
      000473 C2 06            [12] 1372 	clr	_setObsFlag_PARM_1
                                   1373 ;	assignBit
      000475 C2 07            [12] 1374 	clr	_setObsFlag_PARM_2
                                   1375 ;	assignBit
      000477 D2 08            [12] 1376 	setb	_setObsFlag_PARM_3
                                   1377 ;	assignBit
      000479 C2 09            [12] 1378 	clr	_setObsFlag_PARM_4
      00047B 12 00 DC         [24] 1379 	lcall	_setObsFlag
                                   1380 ;	main.c:368: while(lObsFlag) {
      00047E                       1381 00149$:
      00047E 30 04 19         [24] 1382 	jnb	_lObsFlag,00151$
                                   1383 ;	main.c:369: CAR = BACK;
      000481 75 80 AA         [24] 1384 	mov	_P0,#0xaa
                                   1385 ;	main.c:370: CAR = STOP;
      000484 75 80 00         [24] 1386 	mov	_P0,#0x00
                                   1387 ;	main.c:371: lObsFlag = isHaveObs(STEER_N45);
      000487 75 82 08         [24] 1388 	mov	dpl,#0x08
      00048A 12 02 3F         [24] 1389 	lcall	_isHaveObs
      00048D 92 04            [24] 1390 	mov	_lObsFlag,c
                                   1391 ;	main.c:372: CAR = BACK;
      00048F 75 80 AA         [24] 1392 	mov	_P0,#0xaa
                                   1393 ;	main.c:373: delay(25);
      000492 90 00 19         [24] 1394 	mov	dptr,#0x0019
      000495 12 00 9F         [24] 1395 	lcall	_delay
      000498 80 E4            [24] 1396 	sjmp	00149$
      00049A                       1397 00151$:
                                   1398 ;	main.c:375: CAR = FRONT_RIGHT;
      00049A 75 80 A5         [24] 1399 	mov	_P0,#0xa5
                                   1400 ;	main.c:376: delay(100);
      00049D 90 00 64         [24] 1401 	mov	dptr,#0x0064
                                   1402 ;	main.c:377: break;
                                   1403 ;	main.c:378: case(0x70):	//只有右
      0004A0 02 00 9F         [24] 1404 	ljmp	_delay
      0004A3                       1405 00152$:
                                   1406 ;	main.c:380: setObsFlag(0, 0, 0, 1);
                                   1407 ;	assignBit
      0004A3 C2 06            [12] 1408 	clr	_setObsFlag_PARM_1
                                   1409 ;	assignBit
      0004A5 C2 07            [12] 1410 	clr	_setObsFlag_PARM_2
                                   1411 ;	assignBit
      0004A7 C2 08            [12] 1412 	clr	_setObsFlag_PARM_3
                                   1413 ;	assignBit
      0004A9 D2 09            [12] 1414 	setb	_setObsFlag_PARM_4
      0004AB 12 00 DC         [24] 1415 	lcall	_setObsFlag
                                   1416 ;	main.c:381: while(rObsFlag) {
      0004AE                       1417 00153$:
      0004AE 30 05 19         [24] 1418 	jnb	_rObsFlag,00155$
                                   1419 ;	main.c:382: CAR = BACK;
      0004B1 75 80 AA         [24] 1420 	mov	_P0,#0xaa
                                   1421 ;	main.c:383: CAR = STOP;
      0004B4 75 80 00         [24] 1422 	mov	_P0,#0x00
                                   1423 ;	main.c:384: rObsFlag = isHaveObs(STEER_P45);
      0004B7 75 82 06         [24] 1424 	mov	dpl,#0x06
      0004BA 12 02 3F         [24] 1425 	lcall	_isHaveObs
      0004BD 92 05            [24] 1426 	mov	_rObsFlag,c
                                   1427 ;	main.c:385: CAR = BACK;
      0004BF 75 80 AA         [24] 1428 	mov	_P0,#0xaa
                                   1429 ;	main.c:386: delay(25);
      0004C2 90 00 19         [24] 1430 	mov	dptr,#0x0019
      0004C5 12 00 9F         [24] 1431 	lcall	_delay
      0004C8 80 E4            [24] 1432 	sjmp	00153$
      0004CA                       1433 00155$:
                                   1434 ;	main.c:388: CAR = FRONT_LEFT;
      0004CA 75 80 5A         [24] 1435 	mov	_P0,#0x5a
                                   1436 ;	main.c:389: delay(100);	
      0004CD 90 00 64         [24] 1437 	mov	dptr,#0x0064
                                   1438 ;	main.c:390: break;
                                   1439 ;	main.c:391: default:
      0004D0 02 00 9F         [24] 1440 	ljmp	_delay
      0004D3                       1441 00156$:
                                   1442 ;	main.c:392: CAR = STOP;
      0004D3 75 80 00         [24] 1443 	mov	_P0,#0x00
                                   1444 ;	main.c:394: }
                                   1445 ;	main.c:395: }
      0004D6 22               [24] 1446 	ret
                                   1447 ;------------------------------------------------------------
                                   1448 ;Allocation info for local variables in function 'btControl'
                                   1449 ;------------------------------------------------------------
                                   1450 ;cmd                       Allocated to registers r7 
                                   1451 ;------------------------------------------------------------
                                   1452 ;	main.c:398: void btControl(uchar cmd) {
                                   1453 ;	-----------------------------------------
                                   1454 ;	 function btControl
                                   1455 ;	-----------------------------------------
      0004D7                       1456 _btControl:
      0004D7 AF 82            [24] 1457 	mov	r7,dpl
                                   1458 ;	main.c:400: switch(cmd) {
      0004D9 BF 61 02         [24] 1459 	cjne	r7,#0x61,00152$
      0004DC 80 32            [24] 1460 	sjmp	00106$
      0004DE                       1461 00152$:
      0004DE BF 62 02         [24] 1462 	cjne	r7,#0x62,00153$
      0004E1 80 1D            [24] 1463 	sjmp	00102$
      0004E3                       1464 00153$:
      0004E3 BF 64 02         [24] 1465 	cjne	r7,#0x64,00154$
      0004E6 80 31            [24] 1466 	sjmp	00109$
      0004E8                       1467 00154$:
      0004E8 BF 66 02         [24] 1468 	cjne	r7,#0x66,00155$
      0004EB 80 0F            [24] 1469 	sjmp	00101$
      0004ED                       1470 00155$:
      0004ED BF 6C 02         [24] 1471 	cjne	r7,#0x6c,00156$
      0004F0 80 12            [24] 1472 	sjmp	00103$
      0004F2                       1473 00156$:
      0004F2 BF 72 02         [24] 1474 	cjne	r7,#0x72,00157$
      0004F5 80 11            [24] 1475 	sjmp	00104$
      0004F7                       1476 00157$:
                                   1477 ;	main.c:401: case('f'): CAR = FRONT; break;
      0004F7 BF 73 26         [24] 1478 	cjne	r7,#0x73,00112$
      0004FA 80 10            [24] 1479 	sjmp	00105$
      0004FC                       1480 00101$:
      0004FC 75 80 55         [24] 1481 	mov	_P0,#0x55
                                   1482 ;	main.c:402: case('b'): CAR = BACK; break;
      0004FF 22               [24] 1483 	ret
      000500                       1484 00102$:
      000500 75 80 AA         [24] 1485 	mov	_P0,#0xaa
                                   1486 ;	main.c:403: case('l'): CAR = FRONT_LEFT; break;
      000503 22               [24] 1487 	ret
      000504                       1488 00103$:
      000504 75 80 5A         [24] 1489 	mov	_P0,#0x5a
                                   1490 ;	main.c:404: case('r'): CAR = FRONT_RIGHT; break;
      000507 22               [24] 1491 	ret
      000508                       1492 00104$:
      000508 75 80 A5         [24] 1493 	mov	_P0,#0xa5
                                   1494 ;	main.c:405: case('s'): CAR = STOP; break;
      00050B 22               [24] 1495 	ret
      00050C                       1496 00105$:
      00050C 75 80 00         [24] 1497 	mov	_P0,#0x00
                                   1498 ;	main.c:406: case('a'): 
      00050F 22               [24] 1499 	ret
      000510                       1500 00106$:
                                   1501 ;	main.c:407: if (speed < M_PWM_CYCLE) {
      000510 74 F6            [12] 1502 	mov	a,#0x100 - 0x0a
      000512 25 24            [12] 1503 	add	a,_speed
      000514 40 0D            [24] 1504 	jc	00114$
                                   1505 ;	main.c:408: speed++;
      000516 05 24            [12] 1506 	inc	_speed
                                   1507 ;	main.c:410: break;
                                   1508 ;	main.c:411: case('d'): 
      000518 22               [24] 1509 	ret
      000519                       1510 00109$:
                                   1511 ;	main.c:412: if (speed != 0) {
      000519 E5 24            [12] 1512 	mov	a,_speed
      00051B 60 06            [24] 1513 	jz	00114$
                                   1514 ;	main.c:413: speed--;
      00051D 15 24            [12] 1515 	dec	_speed
                                   1516 ;	main.c:415: break;
                                   1517 ;	main.c:416: default:CAR = STOP; break;
      00051F 22               [24] 1518 	ret
      000520                       1519 00112$:
      000520 75 80 00         [24] 1520 	mov	_P0,#0x00
                                   1521 ;	main.c:417: }
      000523                       1522 00114$:
                                   1523 ;	main.c:418: }
      000523 22               [24] 1524 	ret
                                   1525 ;------------------------------------------------------------
                                   1526 ;Allocation info for local variables in function 'initInterrupt'
                                   1527 ;------------------------------------------------------------
                                   1528 ;	main.c:421: void initInterrupt() {
                                   1529 ;	-----------------------------------------
                                   1530 ;	 function initInterrupt
                                   1531 ;	-----------------------------------------
      000524                       1532 _initInterrupt:
                                   1533 ;	main.c:423: EA = 1;			//允许总中断
                                   1534 ;	assignBit
      000524 D2 AF            [12] 1535 	setb	_EA
                                   1536 ;	main.c:424: ES = 1;			//允许串行口中断
                                   1537 ;	assignBit
      000526 D2 AC            [12] 1538 	setb	_ES
                                   1539 ;	main.c:425: ET0 = 1;		//允许定时器0中断
                                   1540 ;	assignBit
      000528 D2 A9            [12] 1541 	setb	_ET0
                                   1542 ;	main.c:426: ET2 = 1;		//允许定时器2中断
                                   1543 ;	assignBit
      00052A D2 AD            [12] 1544 	setb	_ET2
                                   1545 ;	main.c:427: EX1 = 1;		//允许外部中断1中断
                                   1546 ;	assignBit
      00052C D2 AA            [12] 1547 	setb	_EX1
                                   1548 ;	main.c:428: IT1 = 1;		//低跳沿触发
                                   1549 ;	assignBit
      00052E D2 8A            [12] 1550 	setb	_IT1
                                   1551 ;	main.c:429: }
      000530 22               [24] 1552 	ret
                                   1553 ;------------------------------------------------------------
                                   1554 ;Allocation info for local variables in function 'initTimer0'
                                   1555 ;------------------------------------------------------------
                                   1556 ;	main.c:432: void initTimer0() {
                                   1557 ;	-----------------------------------------
                                   1558 ;	 function initTimer0
                                   1559 ;	-----------------------------------------
      000531                       1560 _initTimer0:
                                   1561 ;	main.c:434: TMOD |= 0x01;	//工作方式1
      000531 43 89 01         [24] 1562 	orl	_TMOD,#0x01
                                   1563 ;	main.c:435: if (operate == STEER_OPERATE) {	//为舵机转动
      000534 74 02            [12] 1564 	mov	a,#0x02
      000536 B5 23 09         [24] 1565 	cjne	a,_operate,00104$
                                   1566 ;	main.c:436: TH0 = 0xFE;		//中断时间0.5ms
      000539 75 8C FE         [24] 1567 	mov	_TH0,#0xfe
                                   1568 ;	main.c:437: TL0 = 0x33;
      00053C 75 8A 33         [24] 1569 	mov	_TL0,#0x33
                                   1570 ;	main.c:438: TR0 = 1;	//开启定时器0
                                   1571 ;	assignBit
      00053F D2 8C            [12] 1572 	setb	_TR0
      000541 22               [24] 1573 	ret
      000542                       1574 00104$:
                                   1575 ;	main.c:439: }else if (operate == SR04_OPERATE) {		//为超声波
      000542 74 03            [12] 1576 	mov	a,#0x03
      000544 B5 23 06         [24] 1577 	cjne	a,_operate,00106$
                                   1578 ;	main.c:440: TH0 = 0;
      000547 75 8C 00         [24] 1579 	mov	_TH0,#0x00
                                   1580 ;	main.c:441: TL0 = 0;
      00054A 75 8A 00         [24] 1581 	mov	_TL0,#0x00
      00054D                       1582 00106$:
                                   1583 ;	main.c:443: }
      00054D 22               [24] 1584 	ret
                                   1585 ;------------------------------------------------------------
                                   1586 ;Allocation info for local variables in function 'initSerial'
                                   1587 ;------------------------------------------------------------
                                   1588 ;	main.c:446: void initSerial() {
                                   1589 ;	-----------------------------------------
                                   1590 ;	 function initSerial
                                   1591 ;	-----------------------------------------
      00054E                       1592 _initSerial:
                                   1593 ;	main.c:448: SCON = 0x50;	//串行口工作模式1
      00054E 75 98 50         [24] 1594 	mov	_SCON,#0x50
                                   1595 ;	main.c:449: PCON = 0x00;
      000551 75 87 00         [24] 1596 	mov	_PCON,#0x00
                                   1597 ;	main.c:450: RI = 0;			//接受中断标志清零
                                   1598 ;	assignBit
      000554 C2 98            [12] 1599 	clr	_RI
                                   1600 ;	main.c:452: TMOD |= 0x20;	//定时器T1方式2 
      000556 43 89 20         [24] 1601 	orl	_TMOD,#0x20
                                   1602 ;	main.c:453: TL1 = 0xfd;
      000559 75 8B FD         [24] 1603 	mov	_TL1,#0xfd
                                   1604 ;	main.c:454: TH1 = 0xfd;
      00055C 75 8D FD         [24] 1605 	mov	_TH1,#0xfd
                                   1606 ;	main.c:455: TR1 = 1;		//定时器开始计数
                                   1607 ;	assignBit
      00055F D2 8E            [12] 1608 	setb	_TR1
                                   1609 ;	main.c:456: }
      000561 22               [24] 1610 	ret
                                   1611 ;------------------------------------------------------------
                                   1612 ;Allocation info for local variables in function 'initTimer2'
                                   1613 ;------------------------------------------------------------
                                   1614 ;	main.c:460: void initTimer2() {
                                   1615 ;	-----------------------------------------
                                   1616 ;	 function initTimer2
                                   1617 ;	-----------------------------------------
      000562                       1618 _initTimer2:
                                   1619 ;	main.c:462: T2CON = 0x00;
      000562 75 C8 00         [24] 1620 	mov	_T2CON,#0x00
                                   1621 ;	main.c:463: T2MOD = 0x00;	
      000565 75 C9 00         [24] 1622 	mov	_T2MOD,#0x00
                                   1623 ;	main.c:464: TH2 = RCAP2H = 0xff;		//中断0.1ms
      000568 75 CB FF         [24] 1624 	mov	_RCAP2H,#0xff
      00056B 75 CD FF         [24] 1625 	mov	_TH2,#0xff
                                   1626 ;	main.c:465: TL2 = RCAP2L = 0xa4;
      00056E 75 CA A4         [24] 1627 	mov	_RCAP2L,#0xa4
      000571 75 CC A4         [24] 1628 	mov	_TL2,#0xa4
                                   1629 ;	main.c:466: TR2 = 1;	//开启定时器2
                                   1630 ;	assignBit
      000574 D2 CA            [12] 1631 	setb	_TR2
                                   1632 ;	main.c:467: }
      000576 22               [24] 1633 	ret
                                   1634 ;------------------------------------------------------------
                                   1635 ;Allocation info for local variables in function 'timer0'
                                   1636 ;------------------------------------------------------------
                                   1637 ;	main.c:469: void timer0() __interrupt 1 __using 0 {
                                   1638 ;	-----------------------------------------
                                   1639 ;	 function timer0
                                   1640 ;	-----------------------------------------
      000577                       1641 _timer0:
      000577 C0 22            [24] 1642 	push	bits
      000579 C0 E0            [24] 1643 	push	acc
      00057B C0 F0            [24] 1644 	push	b
      00057D C0 82            [24] 1645 	push	dpl
      00057F C0 83            [24] 1646 	push	dph
      000581 C0 07            [24] 1647 	push	(0+7)
      000583 C0 06            [24] 1648 	push	(0+6)
      000585 C0 05            [24] 1649 	push	(0+5)
      000587 C0 04            [24] 1650 	push	(0+4)
      000589 C0 03            [24] 1651 	push	(0+3)
      00058B C0 02            [24] 1652 	push	(0+2)
      00058D C0 01            [24] 1653 	push	(0+1)
      00058F C0 00            [24] 1654 	push	(0+0)
      000591 C0 D0            [24] 1655 	push	psw
      000593 75 D0 00         [24] 1656 	mov	psw,#0x00
                                   1657 ;	main.c:471: if (operate == STEER_OPERATE) {
      000596 74 02            [12] 1658 	mov	a,#0x02
      000598 B5 23 0B         [24] 1659 	cjne	a,_operate,00104$
                                   1660 ;	main.c:473: TH0 = 0xFE;		//中断时间0.5ms
      00059B 75 8C FE         [24] 1661 	mov	_TH0,#0xfe
                                   1662 ;	main.c:474: TL0 = 0x33;
      00059E 75 8A 33         [24] 1663 	mov	_TL0,#0x33
                                   1664 ;	main.c:475: steerTurn();
      0005A1 12 01 40         [24] 1665 	lcall	_steerTurn
      0005A4 80 0D            [24] 1666 	sjmp	00106$
      0005A6                       1667 00104$:
                                   1668 ;	main.c:476: } else if (operate == SR04_OPERATE) {
      0005A6 74 03            [12] 1669 	mov	a,#0x03
      0005A8 B5 23 08         [24] 1670 	cjne	a,_operate,00106$
                                   1671 ;	main.c:477: TH0 = 0;
      0005AB 75 8C 00         [24] 1672 	mov	_TH0,#0x00
                                   1673 ;	main.c:478: TL0 = 0;
      0005AE 75 8A 00         [24] 1674 	mov	_TL0,#0x00
                                   1675 ;	main.c:479: isOverStep = 1;
                                   1676 ;	assignBit
      0005B1 D2 00            [12] 1677 	setb	_isOverStep
      0005B3                       1678 00106$:
                                   1679 ;	main.c:481: }
      0005B3 D0 D0            [24] 1680 	pop	psw
      0005B5 D0 00            [24] 1681 	pop	(0+0)
      0005B7 D0 01            [24] 1682 	pop	(0+1)
      0005B9 D0 02            [24] 1683 	pop	(0+2)
      0005BB D0 03            [24] 1684 	pop	(0+3)
      0005BD D0 04            [24] 1685 	pop	(0+4)
      0005BF D0 05            [24] 1686 	pop	(0+5)
      0005C1 D0 06            [24] 1687 	pop	(0+6)
      0005C3 D0 07            [24] 1688 	pop	(0+7)
      0005C5 D0 83            [24] 1689 	pop	dph
      0005C7 D0 82            [24] 1690 	pop	dpl
      0005C9 D0 F0            [24] 1691 	pop	b
      0005CB D0 E0            [24] 1692 	pop	acc
      0005CD D0 22            [24] 1693 	pop	bits
      0005CF 32               [24] 1694 	reti
                                   1695 ;------------------------------------------------------------
                                   1696 ;Allocation info for local variables in function 'int1'
                                   1697 ;------------------------------------------------------------
                                   1698 ;	main.c:484: void int1() __interrupt 2 __using 1 {
                                   1699 ;	-----------------------------------------
                                   1700 ;	 function int1
                                   1701 ;	-----------------------------------------
      0005D0                       1702 _int1:
                           00000F  1703 	ar7 = 0x0f
                           00000E  1704 	ar6 = 0x0e
                           00000D  1705 	ar5 = 0x0d
                           00000C  1706 	ar4 = 0x0c
                           00000B  1707 	ar3 = 0x0b
                           00000A  1708 	ar2 = 0x0a
                           000009  1709 	ar1 = 0x09
                           000008  1710 	ar0 = 0x08
                                   1711 ;	main.c:485: operate = SELF_OPERATE;
      0005D0 75 23 04         [24] 1712 	mov	_operate,#0x04
                                   1713 ;	main.c:486: SWITCH_SELF_CONTROL = 1;	//置高电平为下一次低跳沿产生做准备
                                   1714 ;	assignBit
      0005D3 D2 90            [12] 1715 	setb	_P1_0
                                   1716 ;	main.c:487: }
      0005D5 32               [24] 1717 	reti
                                   1718 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1719 ;	eliminated unneeded push/pop psw
                                   1720 ;	eliminated unneeded push/pop dpl
                                   1721 ;	eliminated unneeded push/pop dph
                                   1722 ;	eliminated unneeded push/pop b
                                   1723 ;	eliminated unneeded push/pop acc
                                   1724 ;------------------------------------------------------------
                                   1725 ;Allocation info for local variables in function 'serial'
                                   1726 ;------------------------------------------------------------
                                   1727 ;	main.c:490: void serial() __interrupt 4 __using 2 {
                                   1728 ;	-----------------------------------------
                                   1729 ;	 function serial
                                   1730 ;	-----------------------------------------
      0005D6                       1731 _serial:
                           000017  1732 	ar7 = 0x17
                           000016  1733 	ar6 = 0x16
                           000015  1734 	ar5 = 0x15
                           000014  1735 	ar4 = 0x14
                           000013  1736 	ar3 = 0x13
                           000012  1737 	ar2 = 0x12
                           000011  1738 	ar1 = 0x11
                           000010  1739 	ar0 = 0x10
      0005D6 C0 E0            [24] 1740 	push	acc
                                   1741 ;	main.c:491: RI = 0;		
                                   1742 ;	assignBit
      0005D8 C2 98            [12] 1743 	clr	_RI
                                   1744 ;	main.c:492: if (operate == NO_OPERATE) {
      0005DA E5 23            [12] 1745 	mov	a,_operate
      0005DC 70 03            [24] 1746 	jnz	00103$
                                   1747 ;	main.c:493: operate = BT_OPERATE;
      0005DE 75 23 01         [24] 1748 	mov	_operate,#0x01
      0005E1                       1749 00103$:
                                   1750 ;	main.c:495: }
      0005E1 D0 E0            [24] 1751 	pop	acc
      0005E3 32               [24] 1752 	reti
                                   1753 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1754 ;	eliminated unneeded push/pop psw
                                   1755 ;	eliminated unneeded push/pop dpl
                                   1756 ;	eliminated unneeded push/pop dph
                                   1757 ;	eliminated unneeded push/pop b
                                   1758 ;------------------------------------------------------------
                                   1759 ;Allocation info for local variables in function 'timer2'
                                   1760 ;------------------------------------------------------------
                                   1761 ;a                         Allocated to registers r6 
                                   1762 ;------------------------------------------------------------
                                   1763 ;	main.c:498: void timer2() __interrupt 5 __using 3 {
                                   1764 ;	-----------------------------------------
                                   1765 ;	 function timer2
                                   1766 ;	-----------------------------------------
      0005E4                       1767 _timer2:
                           00001F  1768 	ar7 = 0x1f
                           00001E  1769 	ar6 = 0x1e
                           00001D  1770 	ar5 = 0x1d
                           00001C  1771 	ar4 = 0x1c
                           00001B  1772 	ar3 = 0x1b
                           00001A  1773 	ar2 = 0x1a
                           000019  1774 	ar1 = 0x19
                           000018  1775 	ar0 = 0x18
      0005E4 C0 22            [24] 1776 	push	bits
      0005E6 C0 E0            [24] 1777 	push	acc
      0005E8 C0 F0            [24] 1778 	push	b
      0005EA C0 82            [24] 1779 	push	dpl
      0005EC C0 83            [24] 1780 	push	dph
      0005EE C0 07            [24] 1781 	push	(0+7)
      0005F0 C0 06            [24] 1782 	push	(0+6)
      0005F2 C0 05            [24] 1783 	push	(0+5)
      0005F4 C0 04            [24] 1784 	push	(0+4)
      0005F6 C0 03            [24] 1785 	push	(0+3)
      0005F8 C0 02            [24] 1786 	push	(0+2)
      0005FA C0 01            [24] 1787 	push	(0+1)
      0005FC C0 00            [24] 1788 	push	(0+0)
      0005FE C0 D0            [24] 1789 	push	psw
      000600 75 D0 18         [24] 1790 	mov	psw,#0x18
                                   1791 ;	main.c:501: t2InterruptTimes++;
      000603 05 27            [12] 1792 	inc	_t2InterruptTimes
      000605 E4               [12] 1793 	clr	a
      000606 B5 27 02         [24] 1794 	cjne	a,_t2InterruptTimes,00116$
      000609 05 28            [12] 1795 	inc	(_t2InterruptTimes + 1)
      00060B                       1796 00116$:
                                   1797 ;	main.c:502: a = t2InterruptTimes % M_PWM_CYCLE;
      00060B 75 2A 0A         [24] 1798 	mov	__moduint_PARM_2,#0x0a
      00060E 75 2B 00         [24] 1799 	mov	(__moduint_PARM_2 + 1),#0x00
      000611 85 27 82         [24] 1800 	mov	dpl,_t2InterruptTimes
      000614 85 28 83         [24] 1801 	mov	dph,(_t2InterruptTimes + 1)
      000617 75 D0 00         [24] 1802 	mov	psw,#0x00
      00061A 12 07 B5         [24] 1803 	lcall	__moduint
      00061D 75 D0 18         [24] 1804 	mov	psw,#0x18
      000620 AE 82            [24] 1805 	mov	r6,dpl
                                   1806 ;	main.c:503: if (t2InterruptTimes == CMD_TIME) {
      000622 74 90            [12] 1807 	mov	a,#0x90
      000624 B5 27 0E         [24] 1808 	cjne	a,_t2InterruptTimes,00102$
      000627 74 01            [12] 1809 	mov	a,#0x01
      000629 B5 28 09         [24] 1810 	cjne	a,(_t2InterruptTimes + 1),00102$
                                   1811 ;	main.c:504: t2InterruptTimes = 0;
      00062C E4               [12] 1812 	clr	a
      00062D F5 27            [12] 1813 	mov	_t2InterruptTimes,a
      00062F F5 28            [12] 1814 	mov	(_t2InterruptTimes + 1),a
                                   1815 ;	main.c:505: CAR = STOP;
                                   1816 ;	1-genFromRTrack replaced	mov	_P0,#0x00
      000631 F5 80            [12] 1817 	mov	_P0,a
                                   1818 ;	main.c:506: TR2 = 0;	//溢出400次，说明执行了蓝牙发送的指令40ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
                                   1819 ;	assignBit
      000633 C2 CA            [12] 1820 	clr	_TR2
      000635                       1821 00102$:
                                   1822 ;	main.c:508: if (a <= speed) {
      000635 C3               [12] 1823 	clr	c
      000636 E5 24            [12] 1824 	mov	a,_speed
      000638 9E               [12] 1825 	subb	a,r6
      000639 40 04            [24] 1826 	jc	00104$
                                   1827 ;	main.c:509: M_PWM = 1;
                                   1828 ;	assignBit
      00063B D2 B6            [12] 1829 	setb	_P3_6
      00063D 80 02            [24] 1830 	sjmp	00106$
      00063F                       1831 00104$:
                                   1832 ;	main.c:511: M_PWM = 0;
                                   1833 ;	assignBit
      00063F C2 B6            [12] 1834 	clr	_P3_6
      000641                       1835 00106$:
                                   1836 ;	main.c:514: }
      000641 D0 D0            [24] 1837 	pop	psw
      000643 D0 00            [24] 1838 	pop	(0+0)
      000645 D0 01            [24] 1839 	pop	(0+1)
      000647 D0 02            [24] 1840 	pop	(0+2)
      000649 D0 03            [24] 1841 	pop	(0+3)
      00064B D0 04            [24] 1842 	pop	(0+4)
      00064D D0 05            [24] 1843 	pop	(0+5)
      00064F D0 06            [24] 1844 	pop	(0+6)
      000651 D0 07            [24] 1845 	pop	(0+7)
      000653 D0 83            [24] 1846 	pop	dph
      000655 D0 82            [24] 1847 	pop	dpl
      000657 D0 F0            [24] 1848 	pop	b
      000659 D0 E0            [24] 1849 	pop	acc
      00065B D0 22            [24] 1850 	pop	bits
      00065D 32               [24] 1851 	reti
                                   1852 ;------------------------------------------------------------
                                   1853 ;Allocation info for local variables in function 'setup'
                                   1854 ;------------------------------------------------------------
                                   1855 ;	main.c:517: void setup() {
                                   1856 ;	-----------------------------------------
                                   1857 ;	 function setup
                                   1858 ;	-----------------------------------------
      00065E                       1859 _setup:
                           000007  1860 	ar7 = 0x07
                           000006  1861 	ar6 = 0x06
                           000005  1862 	ar5 = 0x05
                           000004  1863 	ar4 = 0x04
                           000003  1864 	ar3 = 0x03
                           000002  1865 	ar2 = 0x02
                           000001  1866 	ar1 = 0x01
                           000000  1867 	ar0 = 0x00
                                   1868 ;	main.c:518: initInterrupt();
      00065E 12 05 24         [24] 1869 	lcall	_initInterrupt
                                   1870 ;	main.c:519: initSerial();
      000661 12 05 4E         [24] 1871 	lcall	_initSerial
                                   1872 ;	main.c:520: initTimer2();
      000664 12 05 62         [24] 1873 	lcall	_initTimer2
                                   1874 ;	main.c:521: operate = NO_OPERATE;
      000667 75 23 00         [24] 1875 	mov	_operate,#0x00
                                   1876 ;	main.c:522: STBY = 1;
                                   1877 ;	assignBit
      00066A D2 B7            [12] 1878 	setb	_P3_7
                                   1879 ;	main.c:523: }
      00066C 22               [24] 1880 	ret
                                   1881 ;------------------------------------------------------------
                                   1882 ;Allocation info for local variables in function 'loop'
                                   1883 ;------------------------------------------------------------
                                   1884 ;	main.c:526: void loop() {
                                   1885 ;	-----------------------------------------
                                   1886 ;	 function loop
                                   1887 ;	-----------------------------------------
      00066D                       1888 _loop:
                                   1889 ;	main.c:528: sensorTrigger();
      00066D 12 00 CC         [24] 1890 	lcall	_sensorTrigger
                                   1891 ;	main.c:529: if (SWITCH_SELF_CONTROL) {
      000670 30 90 06         [24] 1892 	jnb	_P1_0,00102$
                                   1893 ;	main.c:530: ledStatus(0);	
      000673 75 82 00         [24] 1894 	mov	dpl,#0x00
      000676 12 00 ED         [24] 1895 	lcall	_ledStatus
      000679                       1896 00102$:
                                   1897 ;	main.c:532: if (operate == BT_OPERATE) {
      000679 74 01            [12] 1898 	mov	a,#0x01
      00067B B5 23 0E         [24] 1899 	cjne	a,_operate,00106$
                                   1900 ;	main.c:533: ledStatus(2);
      00067E 75 82 02         [24] 1901 	mov	dpl,#0x02
      000681 12 00 ED         [24] 1902 	lcall	_ledStatus
                                   1903 ;	main.c:534: btControl(SBUF);
      000684 85 99 82         [24] 1904 	mov	dpl,_SBUF
      000687 12 04 D7         [24] 1905 	lcall	_btControl
      00068A 80 14            [24] 1906 	sjmp	00107$
      00068C                       1907 00106$:
                                   1908 ;	main.c:535: } else if (operate == SELF_OPERATE) {
      00068C 74 04            [12] 1909 	mov	a,#0x04
      00068E B5 23 0F         [24] 1910 	cjne	a,_operate,00107$
                                   1911 ;	main.c:536: ES = 0;		//禁止串口中断，防止蓝牙依然能够控制小车
                                   1912 ;	assignBit
      000691 C2 AC            [12] 1913 	clr	_ES
                                   1914 ;	main.c:537: ledStatus(1);
      000693 75 82 01         [24] 1915 	mov	dpl,#0x01
      000696 12 00 ED         [24] 1916 	lcall	_ledStatus
                                   1917 ;	main.c:538: selfControl();
      000699 12 02 AE         [24] 1918 	lcall	_selfControl
                                   1919 ;	main.c:539: ES = 1;
                                   1920 ;	assignBit
      00069C D2 AC            [12] 1921 	setb	_ES
                                   1922 ;	main.c:540: ET2 = 1;	//退出自己控制，恢复定时器2中断允许
                                   1923 ;	assignBit
      00069E D2 AD            [12] 1924 	setb	_ET2
      0006A0                       1925 00107$:
                                   1926 ;	main.c:542: operate = NO_OPERATE;
      0006A0 75 23 00         [24] 1927 	mov	_operate,#0x00
                                   1928 ;	main.c:543: }
      0006A3 22               [24] 1929 	ret
                                   1930 ;------------------------------------------------------------
                                   1931 ;Allocation info for local variables in function 'main'
                                   1932 ;------------------------------------------------------------
                                   1933 ;	main.c:545: void main() {
                                   1934 ;	-----------------------------------------
                                   1935 ;	 function main
                                   1936 ;	-----------------------------------------
      0006A4                       1937 _main:
                                   1938 ;	main.c:547: if (isFirst) {
      0006A4 30 01 05         [24] 1939 	jnb	_isFirst,00104$
                                   1940 ;	main.c:548: setup();
      0006A7 12 06 5E         [24] 1941 	lcall	_setup
                                   1942 ;	main.c:549: isFirst = 0;
                                   1943 ;	assignBit
      0006AA C2 01            [12] 1944 	clr	_isFirst
                                   1945 ;	main.c:551: while(1) {
      0006AC                       1946 00104$:
                                   1947 ;	main.c:552: loop();
      0006AC 12 06 6D         [24] 1948 	lcall	_loop
                                   1949 ;	main.c:554: }
      0006AF 80 FB            [24] 1950 	sjmp	00104$
                                   1951 	.area CSEG    (CODE)
                                   1952 	.area CONST   (CODE)
      000973                       1953 _seg:
      000973 C0                    1954 	.db #0xc0	; 192
      000974 F9                    1955 	.db #0xf9	; 249
      000975 A4                    1956 	.db #0xa4	; 164
      000976 B0                    1957 	.db #0xb0	; 176
      000977 99                    1958 	.db #0x99	; 153
      000978 92                    1959 	.db #0x92	; 146
      000979 82                    1960 	.db #0x82	; 130
      00097A F8                    1961 	.db #0xf8	; 248
      00097B 80                    1962 	.db #0x80	; 128
      00097C 90                    1963 	.db #0x90	; 144
      00097D 88                    1964 	.db #0x88	; 136
      00097E 83                    1965 	.db #0x83	; 131
      00097F C6                    1966 	.db #0xc6	; 198
      000980 A1                    1967 	.db #0xa1	; 161
      000981 86                    1968 	.db #0x86	; 134
      000982 8E                    1969 	.db #0x8e	; 142
                                   1970 	.area XINIT   (CODE)
                                   1971 	.area CABS    (ABS,CODE)
