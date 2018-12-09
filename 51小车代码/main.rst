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
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _FL
                                     24 	.globl _P
                                     25 	.globl _TF2
                                     26 	.globl _EXF2
                                     27 	.globl _RCLK
                                     28 	.globl _TCLK
                                     29 	.globl _EXEN2
                                     30 	.globl _TR2
                                     31 	.globl _C_T2
                                     32 	.globl _CP_RL2
                                     33 	.globl _T2CON_7
                                     34 	.globl _T2CON_6
                                     35 	.globl _T2CON_5
                                     36 	.globl _T2CON_4
                                     37 	.globl _T2CON_3
                                     38 	.globl _T2CON_2
                                     39 	.globl _T2CON_1
                                     40 	.globl _T2CON_0
                                     41 	.globl _PT2
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ET2
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _T2EX
                                     87 	.globl _T2
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _B
                                    113 	.globl _A
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2MOD
                                    121 	.globl _T2CON
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _isOverstep
                                    141 	.globl _cmd
                                    142 	.globl _angle
                                    143 	.globl _t2InterruptTimes
                                    144 	.globl _t0InterruptTimes
                                    145 	.globl _speed
                                    146 	.globl _operate
                                    147 	.globl _delay
                                    148 	.globl _sensorTrigger
                                    149 	.globl _ledStatus
                                    150 	.globl _setTurnAngle
                                    151 	.globl _steerTurn
                                    152 	.globl _selfControl
                                    153 	.globl _btControl
                                    154 	.globl _initInterrupt
                                    155 	.globl _initTimer0
                                    156 	.globl _reloadTimer0
                                    157 	.globl _initSerial
                                    158 	.globl _initTimer2
                                    159 ;--------------------------------------------------------
                                    160 ; special function registers
                                    161 ;--------------------------------------------------------
                                    162 	.area RSEG    (ABS,DATA)
      000000                        163 	.org 0x0000
                           000080   164 _P0	=	0x0080
                           000081   165 _SP	=	0x0081
                           000082   166 _DPL	=	0x0082
                           000083   167 _DPH	=	0x0083
                           000087   168 _PCON	=	0x0087
                           000088   169 _TCON	=	0x0088
                           000089   170 _TMOD	=	0x0089
                           00008A   171 _TL0	=	0x008a
                           00008B   172 _TL1	=	0x008b
                           00008C   173 _TH0	=	0x008c
                           00008D   174 _TH1	=	0x008d
                           000090   175 _P1	=	0x0090
                           000098   176 _SCON	=	0x0098
                           000099   177 _SBUF	=	0x0099
                           0000A0   178 _P2	=	0x00a0
                           0000A8   179 _IE	=	0x00a8
                           0000B0   180 _P3	=	0x00b0
                           0000B8   181 _IP	=	0x00b8
                           0000C8   182 _T2CON	=	0x00c8
                           0000C9   183 _T2MOD	=	0x00c9
                           0000CA   184 _RCAP2L	=	0x00ca
                           0000CB   185 _RCAP2H	=	0x00cb
                           0000CC   186 _TL2	=	0x00cc
                           0000CD   187 _TH2	=	0x00cd
                           0000D0   188 _PSW	=	0x00d0
                           0000E0   189 _ACC	=	0x00e0
                           0000E0   190 _A	=	0x00e0
                           0000F0   191 _B	=	0x00f0
                                    192 ;--------------------------------------------------------
                                    193 ; special function bits
                                    194 ;--------------------------------------------------------
                                    195 	.area RSEG    (ABS,DATA)
      000000                        196 	.org 0x0000
                           000080   197 _P0_0	=	0x0080
                           000081   198 _P0_1	=	0x0081
                           000082   199 _P0_2	=	0x0082
                           000083   200 _P0_3	=	0x0083
                           000084   201 _P0_4	=	0x0084
                           000085   202 _P0_5	=	0x0085
                           000086   203 _P0_6	=	0x0086
                           000087   204 _P0_7	=	0x0087
                           000088   205 _IT0	=	0x0088
                           000089   206 _IE0	=	0x0089
                           00008A   207 _IT1	=	0x008a
                           00008B   208 _IE1	=	0x008b
                           00008C   209 _TR0	=	0x008c
                           00008D   210 _TF0	=	0x008d
                           00008E   211 _TR1	=	0x008e
                           00008F   212 _TF1	=	0x008f
                           000090   213 _P1_0	=	0x0090
                           000091   214 _P1_1	=	0x0091
                           000092   215 _P1_2	=	0x0092
                           000093   216 _P1_3	=	0x0093
                           000094   217 _P1_4	=	0x0094
                           000095   218 _P1_5	=	0x0095
                           000096   219 _P1_6	=	0x0096
                           000097   220 _P1_7	=	0x0097
                           000090   221 _T2	=	0x0090
                           000091   222 _T2EX	=	0x0091
                           000098   223 _RI	=	0x0098
                           000099   224 _TI	=	0x0099
                           00009A   225 _RB8	=	0x009a
                           00009B   226 _TB8	=	0x009b
                           00009C   227 _REN	=	0x009c
                           00009D   228 _SM2	=	0x009d
                           00009E   229 _SM1	=	0x009e
                           00009F   230 _SM0	=	0x009f
                           0000A0   231 _P2_0	=	0x00a0
                           0000A1   232 _P2_1	=	0x00a1
                           0000A2   233 _P2_2	=	0x00a2
                           0000A3   234 _P2_3	=	0x00a3
                           0000A4   235 _P2_4	=	0x00a4
                           0000A5   236 _P2_5	=	0x00a5
                           0000A6   237 _P2_6	=	0x00a6
                           0000A7   238 _P2_7	=	0x00a7
                           0000A8   239 _EX0	=	0x00a8
                           0000A9   240 _ET0	=	0x00a9
                           0000AA   241 _EX1	=	0x00aa
                           0000AB   242 _ET1	=	0x00ab
                           0000AC   243 _ES	=	0x00ac
                           0000AD   244 _ET2	=	0x00ad
                           0000AF   245 _EA	=	0x00af
                           0000B0   246 _P3_0	=	0x00b0
                           0000B1   247 _P3_1	=	0x00b1
                           0000B2   248 _P3_2	=	0x00b2
                           0000B3   249 _P3_3	=	0x00b3
                           0000B4   250 _P3_4	=	0x00b4
                           0000B5   251 _P3_5	=	0x00b5
                           0000B6   252 _P3_6	=	0x00b6
                           0000B7   253 _P3_7	=	0x00b7
                           0000B0   254 _RXD	=	0x00b0
                           0000B1   255 _TXD	=	0x00b1
                           0000B2   256 _INT0	=	0x00b2
                           0000B3   257 _INT1	=	0x00b3
                           0000B4   258 _T0	=	0x00b4
                           0000B5   259 _T1	=	0x00b5
                           0000B6   260 _WR	=	0x00b6
                           0000B7   261 _RD	=	0x00b7
                           0000B8   262 _PX0	=	0x00b8
                           0000B9   263 _PT0	=	0x00b9
                           0000BA   264 _PX1	=	0x00ba
                           0000BB   265 _PT1	=	0x00bb
                           0000BC   266 _PS	=	0x00bc
                           0000BD   267 _PT2	=	0x00bd
                           0000C8   268 _T2CON_0	=	0x00c8
                           0000C9   269 _T2CON_1	=	0x00c9
                           0000CA   270 _T2CON_2	=	0x00ca
                           0000CB   271 _T2CON_3	=	0x00cb
                           0000CC   272 _T2CON_4	=	0x00cc
                           0000CD   273 _T2CON_5	=	0x00cd
                           0000CE   274 _T2CON_6	=	0x00ce
                           0000CF   275 _T2CON_7	=	0x00cf
                           0000C8   276 _CP_RL2	=	0x00c8
                           0000C9   277 _C_T2	=	0x00c9
                           0000CA   278 _TR2	=	0x00ca
                           0000CB   279 _EXEN2	=	0x00cb
                           0000CC   280 _TCLK	=	0x00cc
                           0000CD   281 _RCLK	=	0x00cd
                           0000CE   282 _EXF2	=	0x00ce
                           0000CF   283 _TF2	=	0x00cf
                           0000D0   284 _P	=	0x00d0
                           0000D1   285 _FL	=	0x00d1
                           0000D2   286 _OV	=	0x00d2
                           0000D3   287 _RS0	=	0x00d3
                           0000D4   288 _RS1	=	0x00d4
                           0000D5   289 _F0	=	0x00d5
                           0000D6   290 _AC	=	0x00d6
                           0000D7   291 _CY	=	0x00d7
                                    292 ;--------------------------------------------------------
                                    293 ; overlayable register banks
                                    294 ;--------------------------------------------------------
                                    295 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        296 	.ds 8
                                    297 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        298 	.ds 8
                                    299 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        300 	.ds 8
                                    301 	.area REG_BANK_3	(REL,OVR,DATA)
      000018                        302 	.ds 8
                                    303 ;--------------------------------------------------------
                                    304 ; overlayable bit register bank
                                    305 ;--------------------------------------------------------
                                    306 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        307 bits:
      000021                        308 	.ds 1
                           008000   309 	b0 = bits[0]
                           008100   310 	b1 = bits[1]
                           008200   311 	b2 = bits[2]
                           008300   312 	b3 = bits[3]
                           008400   313 	b4 = bits[4]
                           008500   314 	b5 = bits[5]
                           008600   315 	b6 = bits[6]
                           008700   316 	b7 = bits[7]
                                    317 ;--------------------------------------------------------
                                    318 ; internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area DSEG    (DATA)
      000022                        321 _operate::
      000022                        322 	.ds 1
      000023                        323 _speed::
      000023                        324 	.ds 1
      000024                        325 _t0InterruptTimes::
      000024                        326 	.ds 1
      000025                        327 _t2InterruptTimes::
      000025                        328 	.ds 2
      000027                        329 _angle::
      000027                        330 	.ds 1
      000028                        331 _cmd::
      000028                        332 	.ds 1
                                    333 ;--------------------------------------------------------
                                    334 ; overlayable items in internal ram 
                                    335 ;--------------------------------------------------------
                                    336 	.area	OSEG    (OVR,DATA)
                                    337 	.area	OSEG    (OVR,DATA)
                                    338 	.area	OSEG    (OVR,DATA)
                                    339 ;--------------------------------------------------------
                                    340 ; Stack segment in internal ram 
                                    341 ;--------------------------------------------------------
                                    342 	.area	SSEG
      00002B                        343 __start__stack:
      00002B                        344 	.ds	1
                                    345 
                                    346 ;--------------------------------------------------------
                                    347 ; indirectly addressable internal ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area ISEG    (DATA)
                                    350 ;--------------------------------------------------------
                                    351 ; absolute internal ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area IABS    (ABS,DATA)
                                    354 	.area IABS    (ABS,DATA)
                                    355 ;--------------------------------------------------------
                                    356 ; bit data
                                    357 ;--------------------------------------------------------
                                    358 	.area BSEG    (BIT)
      000000                        359 _isOverstep::
      000000                        360 	.ds 1
                                    361 ;--------------------------------------------------------
                                    362 ; paged external ram data
                                    363 ;--------------------------------------------------------
                                    364 	.area PSEG    (PAG,XDATA)
                                    365 ;--------------------------------------------------------
                                    366 ; external ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area XSEG    (XDATA)
                                    369 ;--------------------------------------------------------
                                    370 ; absolute external ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area XABS    (ABS,XDATA)
                                    373 ;--------------------------------------------------------
                                    374 ; external initialized ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area XISEG   (XDATA)
                                    377 	.area HOME    (CODE)
                                    378 	.area GSINIT0 (CODE)
                                    379 	.area GSINIT1 (CODE)
                                    380 	.area GSINIT2 (CODE)
                                    381 	.area GSINIT3 (CODE)
                                    382 	.area GSINIT4 (CODE)
                                    383 	.area GSINIT5 (CODE)
                                    384 	.area GSINIT  (CODE)
                                    385 	.area GSFINAL (CODE)
                                    386 	.area CSEG    (CODE)
                                    387 ;--------------------------------------------------------
                                    388 ; interrupt vector 
                                    389 ;--------------------------------------------------------
                                    390 	.area HOME    (CODE)
      000000                        391 __interrupt_vect:
      000000 02 00 31         [24]  392 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  393 	reti
      000004                        394 	.ds	7
      00000B 02 02 DF         [24]  395 	ljmp	_timer0
      00000E                        396 	.ds	5
      000013 02 03 2F         [24]  397 	ljmp	_int1
      000016                        398 	.ds	5
      00001B 32               [24]  399 	reti
      00001C                        400 	.ds	7
      000023 02 03 35         [24]  401 	ljmp	_serial
      000026                        402 	.ds	5
      00002B 02 03 43         [24]  403 	ljmp	_timer2
                                    404 ;--------------------------------------------------------
                                    405 ; global & static initialisations
                                    406 ;--------------------------------------------------------
                                    407 	.area HOME    (CODE)
                                    408 	.area GSINIT  (CODE)
                                    409 	.area GSFINAL (CODE)
                                    410 	.area GSINIT  (CODE)
                                    411 	.globl __sdcc_gsinit_startup
                                    412 	.globl __sdcc_program_startup
                                    413 	.globl __start__stack
                                    414 	.globl __mcs51_genXINIT
                                    415 	.globl __mcs51_genXRAMCLEAR
                                    416 	.globl __mcs51_genRAMCLEAR
                                    417 ;	main.c:66: uchar operate = 0;
      00008A 75 22 00         [24]  418 	mov	_operate,#0x00
                                    419 ;	main.c:72: uchar speed = 8;	//小车速度
      00008D 75 23 08         [24]  420 	mov	_speed,#0x08
                                    421 ;	main.c:77: __bit isOverstep = 0;	//距离过远，超出测量范围
                                    422 ;	assignBit
      000090 C2 00            [12]  423 	clr	_isOverstep
                                    424 	.area GSFINAL (CODE)
      000092 02 00 2E         [24]  425 	ljmp	__sdcc_program_startup
                                    426 ;--------------------------------------------------------
                                    427 ; Home
                                    428 ;--------------------------------------------------------
                                    429 	.area HOME    (CODE)
                                    430 	.area HOME    (CODE)
      00002E                        431 __sdcc_program_startup:
      00002E 02 03 BD         [24]  432 	ljmp	_main
                                    433 ;	return from main will return to caller
                                    434 ;--------------------------------------------------------
                                    435 ; code
                                    436 ;--------------------------------------------------------
                                    437 	.area CSEG    (CODE)
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'delay'
                                    440 ;------------------------------------------------------------
                                    441 ;n                         Allocated to registers 
                                    442 ;i                         Allocated to registers r6 r7 
                                    443 ;j                         Allocated to registers r4 r5 
                                    444 ;------------------------------------------------------------
                                    445 ;	main.c:81: void delay(uint n){
                                    446 ;	-----------------------------------------
                                    447 ;	 function delay
                                    448 ;	-----------------------------------------
      000095                        449 _delay:
                           000007   450 	ar7 = 0x07
                           000006   451 	ar6 = 0x06
                           000005   452 	ar5 = 0x05
                           000004   453 	ar4 = 0x04
                           000003   454 	ar3 = 0x03
                           000002   455 	ar2 = 0x02
                           000001   456 	ar1 = 0x01
                           000000   457 	ar0 = 0x00
      000095 AE 82            [24]  458 	mov	r6,dpl
      000097 AF 83            [24]  459 	mov	r7,dph
                                    460 ;	main.c:83: for(i=n;i>0;i--){
      000099                        461 00106$:
      000099 EE               [12]  462 	mov	a,r6
      00009A 4F               [12]  463 	orl	a,r7
      00009B 60 1B            [24]  464 	jz	00108$
                                    465 ;	main.c:84: for(j=112;j>0;j--);
      00009D 7C 70            [12]  466 	mov	r4,#0x70
      00009F 7D 00            [12]  467 	mov	r5,#0x00
      0000A1                        468 00104$:
      0000A1 EC               [12]  469 	mov	a,r4
      0000A2 24 FF            [12]  470 	add	a,#0xff
      0000A4 FA               [12]  471 	mov	r2,a
      0000A5 ED               [12]  472 	mov	a,r5
      0000A6 34 FF            [12]  473 	addc	a,#0xff
      0000A8 FB               [12]  474 	mov	r3,a
      0000A9 8A 04            [24]  475 	mov	ar4,r2
      0000AB 8B 05            [24]  476 	mov	ar5,r3
      0000AD EA               [12]  477 	mov	a,r2
      0000AE 4B               [12]  478 	orl	a,r3
      0000AF 70 F0            [24]  479 	jnz	00104$
                                    480 ;	main.c:83: for(i=n;i>0;i--){
      0000B1 1E               [12]  481 	dec	r6
      0000B2 BE FF 01         [24]  482 	cjne	r6,#0xff,00133$
      0000B5 1F               [12]  483 	dec	r7
      0000B6                        484 00133$:
      0000B6 80 E1            [24]  485 	sjmp	00106$
      0000B8                        486 00108$:
                                    487 ;	main.c:86: }
      0000B8 22               [24]  488 	ret
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'sensorTrigger'
                                    491 ;------------------------------------------------------------
                                    492 ;	main.c:96: void sensorTrigger() {
                                    493 ;	-----------------------------------------
                                    494 ;	 function sensorTrigger
                                    495 ;	-----------------------------------------
      0000B9                        496 _sensorTrigger:
                                    497 ;	main.c:97: if(!(BACK_SENSER & FRONT_SENSER & LEFT_SENSER & RIGHT_SENSER)) {
      0000B9 A2 95            [12]  498 	mov	c,_P1_5
      0000BB 82 94            [24]  499 	anl	c,_P1_4
      0000BD 82 96            [24]  500 	anl	c,_P1_6
      0000BF 82 97            [24]  501 	anl	c,_P1_7
      0000C1 40 02            [24]  502 	jc	00103$
                                    503 ;	main.c:98: SWITCH_SELF_CONTROL = 0;
                                    504 ;	assignBit
      0000C3 C2 90            [12]  505 	clr	_P1_0
      0000C5                        506 00103$:
                                    507 ;	main.c:100: }
      0000C5 22               [24]  508 	ret
                                    509 ;------------------------------------------------------------
                                    510 ;Allocation info for local variables in function 'ledStatus'
                                    511 ;------------------------------------------------------------
                                    512 ;s                         Allocated to registers r7 
                                    513 ;------------------------------------------------------------
                                    514 ;	main.c:104: void ledStatus(uchar s) {
                                    515 ;	-----------------------------------------
                                    516 ;	 function ledStatus
                                    517 ;	-----------------------------------------
      0000C6                        518 _ledStatus:
      0000C6 AF 82            [24]  519 	mov	r7,dpl
                                    520 ;	main.c:105: switch(s) {
      0000C8 BF 00 02         [24]  521 	cjne	r7,#0x00,00119$
      0000CB 80 0A            [24]  522 	sjmp	00101$
      0000CD                        523 00119$:
      0000CD BF 01 02         [24]  524 	cjne	r7,#0x01,00120$
      0000D0 80 0C            [24]  525 	sjmp	00102$
      0000D2                        526 00120$:
                                    527 ;	main.c:106: case(0):
      0000D2 BF 02 16         [24]  528 	cjne	r7,#0x02,00105$
      0000D5 80 0E            [24]  529 	sjmp	00103$
      0000D7                        530 00101$:
                                    531 ;	main.c:107: STOP_RED_LED = 0;	//停止指示灯亮
                                    532 ;	assignBit
      0000D7 C2 91            [12]  533 	clr	_P1_1
                                    534 ;	main.c:108: BT_BLUE_LED = 1;
                                    535 ;	assignBit
      0000D9 D2 92            [12]  536 	setb	_P1_2
                                    537 ;	main.c:109: SELF_GREEN_LED = 1;
                                    538 ;	assignBit
      0000DB D2 93            [12]  539 	setb	_P1_3
                                    540 ;	main.c:110: break;
                                    541 ;	main.c:111: case(1):
      0000DD 22               [24]  542 	ret
      0000DE                        543 00102$:
                                    544 ;	main.c:112: STOP_RED_LED = 1;
                                    545 ;	assignBit
      0000DE D2 91            [12]  546 	setb	_P1_1
                                    547 ;	main.c:113: BT_BLUE_LED = 1;	  
                                    548 ;	assignBit
      0000E0 D2 92            [12]  549 	setb	_P1_2
                                    550 ;	main.c:114: SELF_GREEN_LED = 0;    //自控指示灯亮
                                    551 ;	assignBit
      0000E2 C2 93            [12]  552 	clr	_P1_3
                                    553 ;	main.c:115: break;
                                    554 ;	main.c:116: case(2):
      0000E4 22               [24]  555 	ret
      0000E5                        556 00103$:
                                    557 ;	main.c:117: STOP_RED_LED = 1;
                                    558 ;	assignBit
      0000E5 D2 91            [12]  559 	setb	_P1_1
                                    560 ;	main.c:118: SELF_GREEN_LED = 1;
                                    561 ;	assignBit
      0000E7 D2 93            [12]  562 	setb	_P1_3
                                    563 ;	main.c:119: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
                                    564 ;	assignBit
      0000E9 C2 92            [12]  565 	clr	_P1_2
                                    566 ;	main.c:121: }	
      0000EB                        567 00105$:
                                    568 ;	main.c:122: }
      0000EB 22               [24]  569 	ret
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'setTurnAngle'
                                    572 ;------------------------------------------------------------
                                    573 ;a                         Allocated to registers r7 
                                    574 ;------------------------------------------------------------
                                    575 ;	main.c:125: void setTurnAngle(uchar a) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function setTurnAngle
                                    578 ;	-----------------------------------------
      0000EC                        579 _setTurnAngle:
      0000EC AF 82            [24]  580 	mov	r7,dpl
                                    581 ;	main.c:127: switch(a) {
      0000EE BF 05 02         [24]  582 	cjne	r7,#0x05,00129$
      0000F1 80 14            [24]  583 	sjmp	00101$
      0000F3                        584 00129$:
      0000F3 BF 06 02         [24]  585 	cjne	r7,#0x06,00130$
      0000F6 80 14            [24]  586 	sjmp	00102$
      0000F8                        587 00130$:
      0000F8 BF 07 02         [24]  588 	cjne	r7,#0x07,00131$
      0000FB 80 14            [24]  589 	sjmp	00103$
      0000FD                        590 00131$:
      0000FD BF 08 02         [24]  591 	cjne	r7,#0x08,00132$
      000100 80 14            [24]  592 	sjmp	00104$
      000102                        593 00132$:
                                    594 ;	main.c:129: case(STEER_S):angle = 3; break;
      000102 BF 09 19         [24]  595 	cjne	r7,#0x09,00106$
      000105 80 14            [24]  596 	sjmp	00105$
      000107                        597 00101$:
      000107 75 27 03         [24]  598 	mov	_angle,#0x03
                                    599 ;	main.c:131: case(STEER_P45):angle = 4; break;
      00010A 80 12            [24]  600 	sjmp	00106$
      00010C                        601 00102$:
      00010C 75 27 04         [24]  602 	mov	_angle,#0x04
                                    603 ;	main.c:133: case(STEER_P90):angle = 5; break;
      00010F 80 0D            [24]  604 	sjmp	00106$
      000111                        605 00103$:
      000111 75 27 05         [24]  606 	mov	_angle,#0x05
                                    607 ;	main.c:135: case(STEER_N45):angle = 2; break;
      000114 80 08            [24]  608 	sjmp	00106$
      000116                        609 00104$:
      000116 75 27 02         [24]  610 	mov	_angle,#0x02
                                    611 ;	main.c:137: case(STEER_N90):angle = 1; break;
      000119 80 03            [24]  612 	sjmp	00106$
      00011B                        613 00105$:
      00011B 75 27 01         [24]  614 	mov	_angle,#0x01
                                    615 ;	main.c:138: }
      00011E                        616 00106$:
                                    617 ;	main.c:139: operate = STEER_OPERATE;
      00011E 75 22 02         [24]  618 	mov	_operate,#0x02
                                    619 ;	main.c:140: initTimer0();	
                                    620 ;	main.c:141: }
      000121 02 02 81         [24]  621 	ljmp	_initTimer0
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'steerTurn'
                                    624 ;------------------------------------------------------------
                                    625 ;a                         Allocated to registers r6 
                                    626 ;------------------------------------------------------------
                                    627 ;	main.c:144: void steerTurn() {
                                    628 ;	-----------------------------------------
                                    629 ;	 function steerTurn
                                    630 ;	-----------------------------------------
      000124                        631 _steerTurn:
                                    632 ;	main.c:147: t0InterruptTimes++;
      000124 05 24            [12]  633 	inc	_t0InterruptTimes
                                    634 ;	main.c:148: a = t0InterruptTimes % 5;
      000126 AE 24            [24]  635 	mov	r6,_t0InterruptTimes
      000128 7F 00            [12]  636 	mov	r7,#0x00
      00012A 75 29 05         [24]  637 	mov	__modsint_PARM_2,#0x05
                                    638 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00012D 8F 2A            [24]  639 	mov	(__modsint_PARM_2 + 1),r7
      00012F 8E 82            [24]  640 	mov	dpl,r6
      000131 8F 83            [24]  641 	mov	dph,r7
      000133 12 04 2B         [24]  642 	lcall	__modsint
      000136 AE 82            [24]  643 	mov	r6,dpl
                                    644 ;	main.c:149: if (t0InterruptTimes == 200) {
      000138 74 C8            [12]  645 	mov	a,#0xc8
      00013A B5 24 03         [24]  646 	cjne	a,_t0InterruptTimes,00102$
                                    647 ;	main.c:150: t0InterruptTimes = 0;
      00013D 75 24 00         [24]  648 	mov	_t0InterruptTimes,#0x00
      000140                        649 00102$:
                                    650 ;	main.c:156: if (a < angle) {
      000140 C3               [12]  651 	clr	c
      000141 EE               [12]  652 	mov	a,r6
      000142 95 27            [12]  653 	subb	a,_angle
      000144 50 03            [24]  654 	jnc	00104$
                                    655 ;	main.c:157: STEER_PWM = 1;
                                    656 ;	assignBit
      000146 D2 B2            [12]  657 	setb	_P3_2
      000148 22               [24]  658 	ret
      000149                        659 00104$:
                                    660 ;	main.c:159: STEER_PWM = 0;
                                    661 ;	assignBit
      000149 C2 B2            [12]  662 	clr	_P3_2
                                    663 ;	main.c:162: }
      00014B 22               [24]  664 	ret
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'selfControl'
                                    667 ;------------------------------------------------------------
                                    668 ;	main.c:165: void selfControl() {
                                    669 ;	-----------------------------------------
                                    670 ;	 function selfControl
                                    671 ;	-----------------------------------------
      00014C                        672 _selfControl:
                                    673 ;	main.c:169: if (FRONT_SENSER == 0 & BACK_SENSER == 1) {
      00014C A2 94            [12]  674 	mov	c,_P1_4
      00014E B3               [12]  675 	cpl	c
      00014F E4               [12]  676 	clr	a
      000150 33               [12]  677 	rlc	a
      000151 13               [12]  678 	rrc	a
      000152 82 95            [24]  679 	anl	c,_P1_5
      000154 50 40            [24]  680 	jnc	00127$
                                    681 ;	main.c:171: if ((LEFT_SENSER== 0 & RIGHT_SENSER == 0) || (LEFT_SENSER & RIGHT_SENSER) == 1) {
      000156 A2 96            [12]  682 	mov	c,_P1_6
      000158 B3               [12]  683 	cpl	c
      000159 E4               [12]  684 	clr	a
      00015A 33               [12]  685 	rlc	a
      00015B FF               [12]  686 	mov	r7,a
      00015C A2 97            [12]  687 	mov	c,_P1_7
      00015E B3               [12]  688 	cpl	c
      00015F E4               [12]  689 	clr	a
      000160 33               [12]  690 	rlc	a
      000161 FE               [12]  691 	mov	r6,a
      000162 5F               [12]  692 	anl	a,r7
      000163 60 02            [24]  693 	jz	00169$
      000165 80 0F            [24]  694 	sjmp	00104$
      000167                        695 00169$:
      000167 A2 96            [12]  696 	mov	c,_P1_6
      000169 E4               [12]  697 	clr	a
      00016A 33               [12]  698 	rlc	a
      00016B FF               [12]  699 	mov	r7,a
      00016C A2 97            [12]  700 	mov	c,_P1_7
      00016E E4               [12]  701 	clr	a
      00016F 33               [12]  702 	rlc	a
      000170 FE               [12]  703 	mov	r6,a
      000171 52 07            [12]  704 	anl	ar7,a
      000173 BF 01 09         [24]  705 	cjne	r7,#0x01,00105$
      000176                        706 00104$:
                                    707 ;	main.c:172: CAR = STOP;
      000176 75 80 00         [24]  708 	mov	_P0,#0x00
                                    709 ;	main.c:173: setTurnAngle(STEER_S);
      000179 75 82 05         [24]  710 	mov	dpl,#0x05
      00017C 02 00 EC         [24]  711 	ljmp	_setTurnAngle
      00017F                        712 00105$:
                                    713 ;	main.c:175: }else if (LEFT_SENSER== 0 & RIGHT_SENSER == 1) {
      00017F A2 96            [12]  714 	mov	c,_P1_6
      000181 B3               [12]  715 	cpl	c
      000182 E4               [12]  716 	clr	a
      000183 33               [12]  717 	rlc	a
      000184 13               [12]  718 	rrc	a
      000185 82 97            [24]  719 	anl	c,_P1_7
      000187 50 09            [24]  720 	jnc	00102$
                                    721 ;	main.c:176: CAR = STOP;
      000189 75 80 00         [24]  722 	mov	_P0,#0x00
                                    723 ;	main.c:177: setTurnAngle(STEER_P45);
      00018C 75 82 06         [24]  724 	mov	dpl,#0x06
      00018F 02 00 EC         [24]  725 	ljmp	_setTurnAngle
      000192                        726 00102$:
                                    727 ;	main.c:181: CAR = STOP;
      000192 75 80 00         [24]  728 	mov	_P0,#0x00
      000195 22               [24]  729 	ret
      000196                        730 00127$:
                                    731 ;	main.c:186: }else if (BACK_SENSER == 0 & FRONT_SENSER == 1) {
      000196 A2 95            [12]  732 	mov	c,_P1_5
      000198 B3               [12]  733 	cpl	c
      000199 E4               [12]  734 	clr	a
      00019A 33               [12]  735 	rlc	a
      00019B 13               [12]  736 	rrc	a
      00019C 82 94            [24]  737 	anl	c,_P1_4
      00019E 50 39            [24]  738 	jnc	00124$
                                    739 ;	main.c:188: if ((LEFT_SENSER & RIGHT_SENSER) == 1) {
      0001A0 A2 96            [12]  740 	mov	c,_P1_6
      0001A2 E4               [12]  741 	clr	a
      0001A3 33               [12]  742 	rlc	a
      0001A4 FF               [12]  743 	mov	r7,a
      0001A5 A2 97            [12]  744 	mov	c,_P1_7
      0001A7 E4               [12]  745 	clr	a
      0001A8 33               [12]  746 	rlc	a
      0001A9 52 07            [12]  747 	anl	ar7,a
      0001AB BF 01 04         [24]  748 	cjne	r7,#0x01,00115$
                                    749 ;	main.c:189: CAR = FRONT;
      0001AE 75 80 55         [24]  750 	mov	_P0,#0x55
      0001B1 22               [24]  751 	ret
      0001B2                        752 00115$:
                                    753 ;	main.c:191: }else if ((LEFT_SENSER | RIGHT_SENSER) == 0) {
      0001B2 A2 96            [12]  754 	mov	c,_P1_6
      0001B4 E4               [12]  755 	clr	a
      0001B5 33               [12]  756 	rlc	a
      0001B6 FF               [12]  757 	mov	r7,a
      0001B7 A2 97            [12]  758 	mov	c,_P1_7
      0001B9 E4               [12]  759 	clr	a
      0001BA 33               [12]  760 	rlc	a
      0001BB 4F               [12]  761 	orl	a,r7
      0001BC 70 09            [24]  762 	jnz	00112$
                                    763 ;	main.c:192: CAR = BACK;
      0001BE 75 80 AA         [24]  764 	mov	_P0,#0xaa
                                    765 ;	main.c:193: delay(400);
      0001C1 90 01 90         [24]  766 	mov	dptr,#0x0190
      0001C4 02 00 95         [24]  767 	ljmp	_delay
      0001C7                        768 00112$:
                                    769 ;	main.c:196: }else if (LEFT_SENSER== 0 & RIGHT_SENSER == 1) {
      0001C7 A2 96            [12]  770 	mov	c,_P1_6
      0001C9 B3               [12]  771 	cpl	c
      0001CA E4               [12]  772 	clr	a
      0001CB 33               [12]  773 	rlc	a
      0001CC 13               [12]  774 	rrc	a
      0001CD 82 97            [24]  775 	anl	c,_P1_7
      0001CF 50 04            [24]  776 	jnc	00109$
                                    777 ;	main.c:197: CAR = STOP;
      0001D1 75 80 00         [24]  778 	mov	_P0,#0x00
      0001D4 22               [24]  779 	ret
      0001D5                        780 00109$:
                                    781 ;	main.c:202: CAR = STOP;
      0001D5 75 80 00         [24]  782 	mov	_P0,#0x00
      0001D8 22               [24]  783 	ret
      0001D9                        784 00124$:
                                    785 ;	main.c:207: }else if (LEFT_SENSER== 0 & (RIGHT_SENSER & BACK_SENSER & FRONT_SENSER) == 1 ){
      0001D9 A2 96            [12]  786 	mov	c,_P1_6
      0001DB B3               [12]  787 	cpl	c
      0001DC E4               [12]  788 	clr	a
      0001DD 33               [12]  789 	rlc	a
      0001DE FF               [12]  790 	mov	r7,a
      0001DF A2 97            [12]  791 	mov	c,_P1_7
      0001E1 E4               [12]  792 	clr	a
      0001E2 33               [12]  793 	rlc	a
      0001E3 FE               [12]  794 	mov	r6,a
      0001E4 A2 95            [12]  795 	mov	c,_P1_5
      0001E6 E4               [12]  796 	clr	a
      0001E7 33               [12]  797 	rlc	a
      0001E8 52 06            [12]  798 	anl	ar6,a
      0001EA A2 94            [12]  799 	mov	c,_P1_4
      0001EC E4               [12]  800 	clr	a
      0001ED 33               [12]  801 	rlc	a
      0001EE 52 06            [12]  802 	anl	ar6,a
      0001F0 BE 01 03         [24]  803 	cjne	r6,#0x01,00178$
      0001F3 EE               [12]  804 	mov	a,r6
      0001F4 80 01            [24]  805 	sjmp	00179$
      0001F6                        806 00178$:
      0001F6 E4               [12]  807 	clr	a
      0001F7                        808 00179$:
      0001F7 5F               [12]  809 	anl	a,r7
      0001F8 60 04            [24]  810 	jz	00121$
                                    811 ;	main.c:208: CAR = STOP;
      0001FA 75 80 00         [24]  812 	mov	_P0,#0x00
      0001FD 22               [24]  813 	ret
      0001FE                        814 00121$:
                                    815 ;	main.c:212: }else if (RIGHT_SENSER == 0 & (LEFT_SENSER & FRONT_SENSER & BACK_SENSER) == 1) {
      0001FE A2 97            [12]  816 	mov	c,_P1_7
      000200 B3               [12]  817 	cpl	c
      000201 E4               [12]  818 	clr	a
      000202 33               [12]  819 	rlc	a
      000203 FF               [12]  820 	mov	r7,a
      000204 A2 96            [12]  821 	mov	c,_P1_6
      000206 E4               [12]  822 	clr	a
      000207 33               [12]  823 	rlc	a
      000208 FE               [12]  824 	mov	r6,a
      000209 A2 94            [12]  825 	mov	c,_P1_4
      00020B E4               [12]  826 	clr	a
      00020C 33               [12]  827 	rlc	a
      00020D 52 06            [12]  828 	anl	ar6,a
      00020F A2 95            [12]  829 	mov	c,_P1_5
      000211 E4               [12]  830 	clr	a
      000212 33               [12]  831 	rlc	a
      000213 52 06            [12]  832 	anl	ar6,a
      000215 BE 01 03         [24]  833 	cjne	r6,#0x01,00181$
      000218 EE               [12]  834 	mov	a,r6
      000219 80 01            [24]  835 	sjmp	00182$
      00021B                        836 00181$:
      00021B E4               [12]  837 	clr	a
      00021C                        838 00182$:
      00021C 5F               [12]  839 	anl	a,r7
      00021D 60 04            [24]  840 	jz	00118$
                                    841 ;	main.c:213: CAR = STOP;
      00021F 75 80 00         [24]  842 	mov	_P0,#0x00
      000222 22               [24]  843 	ret
      000223                        844 00118$:
                                    845 ;	main.c:218: CAR = STOP;
      000223 75 80 00         [24]  846 	mov	_P0,#0x00
                                    847 ;	main.c:221: }
      000226 22               [24]  848 	ret
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'btControl'
                                    851 ;------------------------------------------------------------
                                    852 ;cmd                       Allocated to registers r7 
                                    853 ;------------------------------------------------------------
                                    854 ;	main.c:224: void btControl(uchar cmd) {
                                    855 ;	-----------------------------------------
                                    856 ;	 function btControl
                                    857 ;	-----------------------------------------
      000227                        858 _btControl:
      000227 AF 82            [24]  859 	mov	r7,dpl
                                    860 ;	main.c:226: switch(cmd) {
      000229 BF 61 02         [24]  861 	cjne	r7,#0x61,00152$
      00022C 80 32            [24]  862 	sjmp	00106$
      00022E                        863 00152$:
      00022E BF 62 02         [24]  864 	cjne	r7,#0x62,00153$
      000231 80 1D            [24]  865 	sjmp	00102$
      000233                        866 00153$:
      000233 BF 64 02         [24]  867 	cjne	r7,#0x64,00154$
      000236 80 31            [24]  868 	sjmp	00109$
      000238                        869 00154$:
      000238 BF 66 02         [24]  870 	cjne	r7,#0x66,00155$
      00023B 80 0F            [24]  871 	sjmp	00101$
      00023D                        872 00155$:
      00023D BF 6C 02         [24]  873 	cjne	r7,#0x6c,00156$
      000240 80 12            [24]  874 	sjmp	00103$
      000242                        875 00156$:
      000242 BF 72 02         [24]  876 	cjne	r7,#0x72,00157$
      000245 80 11            [24]  877 	sjmp	00104$
      000247                        878 00157$:
                                    879 ;	main.c:227: case('f'): CAR = FRONT; break;
      000247 BF 73 26         [24]  880 	cjne	r7,#0x73,00112$
      00024A 80 10            [24]  881 	sjmp	00105$
      00024C                        882 00101$:
      00024C 75 80 55         [24]  883 	mov	_P0,#0x55
                                    884 ;	main.c:228: case('b'): CAR = BACK; break;
      00024F 22               [24]  885 	ret
      000250                        886 00102$:
      000250 75 80 AA         [24]  887 	mov	_P0,#0xaa
                                    888 ;	main.c:229: case('l'): CAR = FRONT_LEFT; break;
      000253 22               [24]  889 	ret
      000254                        890 00103$:
      000254 75 80 5A         [24]  891 	mov	_P0,#0x5a
                                    892 ;	main.c:230: case('r'): CAR = FRONT_RIGHT; break;
      000257 22               [24]  893 	ret
      000258                        894 00104$:
      000258 75 80 A5         [24]  895 	mov	_P0,#0xa5
                                    896 ;	main.c:231: case('s'): CAR = STOP; break;
      00025B 22               [24]  897 	ret
      00025C                        898 00105$:
      00025C 75 80 00         [24]  899 	mov	_P0,#0x00
                                    900 ;	main.c:232: case('a'): 
      00025F 22               [24]  901 	ret
      000260                        902 00106$:
                                    903 ;	main.c:233: if (speed < M_PWM_CYCLE) {
      000260 74 F6            [12]  904 	mov	a,#0x100 - 0x0a
      000262 25 23            [12]  905 	add	a,_speed
      000264 40 0D            [24]  906 	jc	00114$
                                    907 ;	main.c:234: speed++;
      000266 05 23            [12]  908 	inc	_speed
                                    909 ;	main.c:236: break;
                                    910 ;	main.c:237: case('d'): 
      000268 22               [24]  911 	ret
      000269                        912 00109$:
                                    913 ;	main.c:238: if (speed != 0) {
      000269 E5 23            [12]  914 	mov	a,_speed
      00026B 60 06            [24]  915 	jz	00114$
                                    916 ;	main.c:239: speed--;
      00026D 15 23            [12]  917 	dec	_speed
                                    918 ;	main.c:241: break;
                                    919 ;	main.c:242: default:CAR = STOP; break;
      00026F 22               [24]  920 	ret
      000270                        921 00112$:
      000270 75 80 00         [24]  922 	mov	_P0,#0x00
                                    923 ;	main.c:243: }
      000273                        924 00114$:
                                    925 ;	main.c:244: }
      000273 22               [24]  926 	ret
                                    927 ;------------------------------------------------------------
                                    928 ;Allocation info for local variables in function 'initInterrupt'
                                    929 ;------------------------------------------------------------
                                    930 ;	main.c:247: void initInterrupt() {
                                    931 ;	-----------------------------------------
                                    932 ;	 function initInterrupt
                                    933 ;	-----------------------------------------
      000274                        934 _initInterrupt:
                                    935 ;	main.c:249: EA = 1;			//允许总中断
                                    936 ;	assignBit
      000274 D2 AF            [12]  937 	setb	_EA
                                    938 ;	main.c:250: ES = 1;			//允许串行口中断
                                    939 ;	assignBit
      000276 D2 AC            [12]  940 	setb	_ES
                                    941 ;	main.c:251: ET0 = 1;		//允许定时器0中断
                                    942 ;	assignBit
      000278 D2 A9            [12]  943 	setb	_ET0
                                    944 ;	main.c:252: ET2 = 1;		//允许定时器2中断
                                    945 ;	assignBit
      00027A D2 AD            [12]  946 	setb	_ET2
                                    947 ;	main.c:253: EX1 = 1;		//允许外部中断1中断
                                    948 ;	assignBit
      00027C D2 AA            [12]  949 	setb	_EX1
                                    950 ;	main.c:254: IT1 = 0;		//低电平触发
                                    951 ;	assignBit
      00027E C2 8A            [12]  952 	clr	_IT1
                                    953 ;	main.c:255: }
      000280 22               [24]  954 	ret
                                    955 ;------------------------------------------------------------
                                    956 ;Allocation info for local variables in function 'initTimer0'
                                    957 ;------------------------------------------------------------
                                    958 ;	main.c:258: void initTimer0() {
                                    959 ;	-----------------------------------------
                                    960 ;	 function initTimer0
                                    961 ;	-----------------------------------------
      000281                        962 _initTimer0:
                                    963 ;	main.c:260: TMOD = 0x21;	//工作方式1
      000281 75 89 21         [24]  964 	mov	_TMOD,#0x21
                                    965 ;	main.c:261: if (operate == STEER_OPERATE) {	//为舵机转动
      000284 74 02            [12]  966 	mov	a,#0x02
      000286 B5 22 09         [24]  967 	cjne	a,_operate,00104$
                                    968 ;	main.c:262: TH0 = 0xFE;		//中断时间0.5ms
      000289 75 8C FE         [24]  969 	mov	_TH0,#0xfe
                                    970 ;	main.c:263: TL0 = 0x33;
      00028C 75 8A 33         [24]  971 	mov	_TL0,#0x33
                                    972 ;	main.c:264: TR0 = 1;	//开启定时器0
                                    973 ;	assignBit
      00028F D2 8C            [12]  974 	setb	_TR0
      000291 22               [24]  975 	ret
      000292                        976 00104$:
                                    977 ;	main.c:265: }else if (operate == SR04_OPERATE) {		//为超声波
      000292 74 03            [12]  978 	mov	a,#0x03
      000294 B5 22 06         [24]  979 	cjne	a,_operate,00106$
                                    980 ;	main.c:266: TH0 = 0;
      000297 75 8C 00         [24]  981 	mov	_TH0,#0x00
                                    982 ;	main.c:267: TL0 = 0;
      00029A 75 8A 00         [24]  983 	mov	_TL0,#0x00
      00029D                        984 00106$:
                                    985 ;	main.c:269: }
      00029D 22               [24]  986 	ret
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function 'reloadTimer0'
                                    989 ;------------------------------------------------------------
                                    990 ;	main.c:271: void reloadTimer0() {
                                    991 ;	-----------------------------------------
                                    992 ;	 function reloadTimer0
                                    993 ;	-----------------------------------------
      00029E                        994 _reloadTimer0:
                                    995 ;	main.c:273: if (operate == STEER_OPERATE) {
      00029E 74 02            [12]  996 	mov	a,#0x02
      0002A0 B5 22 07         [24]  997 	cjne	a,_operate,00104$
                                    998 ;	main.c:274: TH0 = 0xFE;
      0002A3 75 8C FE         [24]  999 	mov	_TH0,#0xfe
                                   1000 ;	main.c:275: TL0 = 0x33;	
      0002A6 75 8A 33         [24] 1001 	mov	_TL0,#0x33
      0002A9 22               [24] 1002 	ret
      0002AA                       1003 00104$:
                                   1004 ;	main.c:276: }else if (operate == SR04_OPERATE) {
      0002AA 74 03            [12] 1005 	mov	a,#0x03
      0002AC B5 22 06         [24] 1006 	cjne	a,_operate,00106$
                                   1007 ;	main.c:277: TH0 = 0;
      0002AF 75 8C 00         [24] 1008 	mov	_TH0,#0x00
                                   1009 ;	main.c:278: TL0 = 0;
      0002B2 75 8A 00         [24] 1010 	mov	_TL0,#0x00
      0002B5                       1011 00106$:
                                   1012 ;	main.c:280: }
      0002B5 22               [24] 1013 	ret
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'initSerial'
                                   1016 ;------------------------------------------------------------
                                   1017 ;	main.c:283: void initSerial() {
                                   1018 ;	-----------------------------------------
                                   1019 ;	 function initSerial
                                   1020 ;	-----------------------------------------
      0002B6                       1021 _initSerial:
                                   1022 ;	main.c:285: SCON = 0x50;	//串行口工作模式1
      0002B6 75 98 50         [24] 1023 	mov	_SCON,#0x50
                                   1024 ;	main.c:286: PCON = 0x00;
      0002B9 75 87 00         [24] 1025 	mov	_PCON,#0x00
                                   1026 ;	main.c:287: RI = 0;			//接受中断标志清零
                                   1027 ;	assignBit
      0002BC C2 98            [12] 1028 	clr	_RI
                                   1029 ;	main.c:289: TMOD = 0x21;	//定时器T1方式2 T0工作方式1
      0002BE 75 89 21         [24] 1030 	mov	_TMOD,#0x21
                                   1031 ;	main.c:290: TL1 = 0xfd;
      0002C1 75 8B FD         [24] 1032 	mov	_TL1,#0xfd
                                   1033 ;	main.c:291: TH1 = 0xfd;
      0002C4 75 8D FD         [24] 1034 	mov	_TH1,#0xfd
                                   1035 ;	main.c:292: TR1 = 1;		//定时器开始计数
                                   1036 ;	assignBit
      0002C7 D2 8E            [12] 1037 	setb	_TR1
                                   1038 ;	main.c:293: }
      0002C9 22               [24] 1039 	ret
                                   1040 ;------------------------------------------------------------
                                   1041 ;Allocation info for local variables in function 'initTimer2'
                                   1042 ;------------------------------------------------------------
                                   1043 ;	main.c:297: void initTimer2() {
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function initTimer2
                                   1046 ;	-----------------------------------------
      0002CA                       1047 _initTimer2:
                                   1048 ;	main.c:299: T2CON = 0x00;
      0002CA 75 C8 00         [24] 1049 	mov	_T2CON,#0x00
                                   1050 ;	main.c:300: T2MOD = 0x00;	
      0002CD 75 C9 00         [24] 1051 	mov	_T2MOD,#0x00
                                   1052 ;	main.c:301: TH2 = RCAP2H = 0xff;		//中断0.1ms
      0002D0 75 CB FF         [24] 1053 	mov	_RCAP2H,#0xff
      0002D3 75 CD FF         [24] 1054 	mov	_TH2,#0xff
                                   1055 ;	main.c:302: TL2 = RCAP2L = 0xa4;
      0002D6 75 CA A4         [24] 1056 	mov	_RCAP2L,#0xa4
      0002D9 75 CC A4         [24] 1057 	mov	_TL2,#0xa4
                                   1058 ;	main.c:303: TR2 = 1;	//开启定时器2
                                   1059 ;	assignBit
      0002DC D2 CA            [12] 1060 	setb	_TR2
                                   1061 ;	main.c:304: }
      0002DE 22               [24] 1062 	ret
                                   1063 ;------------------------------------------------------------
                                   1064 ;Allocation info for local variables in function 'timer0'
                                   1065 ;------------------------------------------------------------
                                   1066 ;	main.c:306: void timer0() __interrupt 1 __using 0 {
                                   1067 ;	-----------------------------------------
                                   1068 ;	 function timer0
                                   1069 ;	-----------------------------------------
      0002DF                       1070 _timer0:
      0002DF C0 21            [24] 1071 	push	bits
      0002E1 C0 E0            [24] 1072 	push	acc
      0002E3 C0 F0            [24] 1073 	push	b
      0002E5 C0 82            [24] 1074 	push	dpl
      0002E7 C0 83            [24] 1075 	push	dph
      0002E9 C0 07            [24] 1076 	push	(0+7)
      0002EB C0 06            [24] 1077 	push	(0+6)
      0002ED C0 05            [24] 1078 	push	(0+5)
      0002EF C0 04            [24] 1079 	push	(0+4)
      0002F1 C0 03            [24] 1080 	push	(0+3)
      0002F3 C0 02            [24] 1081 	push	(0+2)
      0002F5 C0 01            [24] 1082 	push	(0+1)
      0002F7 C0 00            [24] 1083 	push	(0+0)
      0002F9 C0 D0            [24] 1084 	push	psw
      0002FB 75 D0 00         [24] 1085 	mov	psw,#0x00
                                   1086 ;	main.c:308: if (operate == STEER_OPERATE) {
      0002FE 74 02            [12] 1087 	mov	a,#0x02
      000300 B5 22 08         [24] 1088 	cjne	a,_operate,00104$
                                   1089 ;	main.c:309: reloadTimer0();
      000303 12 02 9E         [24] 1090 	lcall	_reloadTimer0
                                   1091 ;	main.c:310: steerTurn();
      000306 12 01 24         [24] 1092 	lcall	_steerTurn
      000309 80 07            [24] 1093 	sjmp	00106$
      00030B                       1094 00104$:
                                   1095 ;	main.c:311: } else if (operate == SR04_OPERATE) {
      00030B 74 03            [12] 1096 	mov	a,#0x03
      00030D B5 22 02         [24] 1097 	cjne	a,_operate,00106$
                                   1098 ;	main.c:312: isOverstep = 1;
                                   1099 ;	assignBit
      000310 D2 00            [12] 1100 	setb	_isOverstep
      000312                       1101 00106$:
                                   1102 ;	main.c:314: }
      000312 D0 D0            [24] 1103 	pop	psw
      000314 D0 00            [24] 1104 	pop	(0+0)
      000316 D0 01            [24] 1105 	pop	(0+1)
      000318 D0 02            [24] 1106 	pop	(0+2)
      00031A D0 03            [24] 1107 	pop	(0+3)
      00031C D0 04            [24] 1108 	pop	(0+4)
      00031E D0 05            [24] 1109 	pop	(0+5)
      000320 D0 06            [24] 1110 	pop	(0+6)
      000322 D0 07            [24] 1111 	pop	(0+7)
      000324 D0 83            [24] 1112 	pop	dph
      000326 D0 82            [24] 1113 	pop	dpl
      000328 D0 F0            [24] 1114 	pop	b
      00032A D0 E0            [24] 1115 	pop	acc
      00032C D0 21            [24] 1116 	pop	bits
      00032E 32               [24] 1117 	reti
                                   1118 ;------------------------------------------------------------
                                   1119 ;Allocation info for local variables in function 'int1'
                                   1120 ;------------------------------------------------------------
                                   1121 ;	main.c:317: void int1() __interrupt 2 __using 1 {
                                   1122 ;	-----------------------------------------
                                   1123 ;	 function int1
                                   1124 ;	-----------------------------------------
      00032F                       1125 _int1:
                           00000F  1126 	ar7 = 0x0f
                           00000E  1127 	ar6 = 0x0e
                           00000D  1128 	ar5 = 0x0d
                           00000C  1129 	ar4 = 0x0c
                           00000B  1130 	ar3 = 0x0b
                           00000A  1131 	ar2 = 0x0a
                           000009  1132 	ar1 = 0x09
                           000008  1133 	ar0 = 0x08
                                   1134 ;	main.c:319: EX1 = 0;
                                   1135 ;	assignBit
      00032F C2 AA            [12] 1136 	clr	_EX1
                                   1137 ;	main.c:320: operate = SELF_OPERATE;
      000331 75 22 04         [24] 1138 	mov	_operate,#0x04
                                   1139 ;	main.c:321: }
      000334 32               [24] 1140 	reti
                                   1141 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1142 ;	eliminated unneeded push/pop psw
                                   1143 ;	eliminated unneeded push/pop dpl
                                   1144 ;	eliminated unneeded push/pop dph
                                   1145 ;	eliminated unneeded push/pop b
                                   1146 ;	eliminated unneeded push/pop acc
                                   1147 ;------------------------------------------------------------
                                   1148 ;Allocation info for local variables in function 'serial'
                                   1149 ;------------------------------------------------------------
                                   1150 ;	main.c:324: void serial() __interrupt 4 __using 2 {
                                   1151 ;	-----------------------------------------
                                   1152 ;	 function serial
                                   1153 ;	-----------------------------------------
      000335                       1154 _serial:
                           000017  1155 	ar7 = 0x17
                           000016  1156 	ar6 = 0x16
                           000015  1157 	ar5 = 0x15
                           000014  1158 	ar4 = 0x14
                           000013  1159 	ar3 = 0x13
                           000012  1160 	ar2 = 0x12
                           000011  1161 	ar1 = 0x11
                           000010  1162 	ar0 = 0x10
      000335 C0 E0            [24] 1163 	push	acc
                                   1164 ;	main.c:325: RI = 0;		
                                   1165 ;	assignBit
      000337 C2 98            [12] 1166 	clr	_RI
                                   1167 ;	main.c:326: if (operate == NO_OPERATE) {
      000339 E5 22            [12] 1168 	mov	a,_operate
      00033B 70 03            [24] 1169 	jnz	00103$
                                   1170 ;	main.c:327: operate = BT_OPERATE;
      00033D 75 22 01         [24] 1171 	mov	_operate,#0x01
      000340                       1172 00103$:
                                   1173 ;	main.c:329: }
      000340 D0 E0            [24] 1174 	pop	acc
      000342 32               [24] 1175 	reti
                                   1176 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1177 ;	eliminated unneeded push/pop psw
                                   1178 ;	eliminated unneeded push/pop dpl
                                   1179 ;	eliminated unneeded push/pop dph
                                   1180 ;	eliminated unneeded push/pop b
                                   1181 ;------------------------------------------------------------
                                   1182 ;Allocation info for local variables in function 'timer2'
                                   1183 ;------------------------------------------------------------
                                   1184 ;a                         Allocated to registers r6 
                                   1185 ;------------------------------------------------------------
                                   1186 ;	main.c:332: void timer2() __interrupt 5 __using 3 {
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function timer2
                                   1189 ;	-----------------------------------------
      000343                       1190 _timer2:
                           00001F  1191 	ar7 = 0x1f
                           00001E  1192 	ar6 = 0x1e
                           00001D  1193 	ar5 = 0x1d
                           00001C  1194 	ar4 = 0x1c
                           00001B  1195 	ar3 = 0x1b
                           00001A  1196 	ar2 = 0x1a
                           000019  1197 	ar1 = 0x19
                           000018  1198 	ar0 = 0x18
      000343 C0 21            [24] 1199 	push	bits
      000345 C0 E0            [24] 1200 	push	acc
      000347 C0 F0            [24] 1201 	push	b
      000349 C0 82            [24] 1202 	push	dpl
      00034B C0 83            [24] 1203 	push	dph
      00034D C0 07            [24] 1204 	push	(0+7)
      00034F C0 06            [24] 1205 	push	(0+6)
      000351 C0 05            [24] 1206 	push	(0+5)
      000353 C0 04            [24] 1207 	push	(0+4)
      000355 C0 03            [24] 1208 	push	(0+3)
      000357 C0 02            [24] 1209 	push	(0+2)
      000359 C0 01            [24] 1210 	push	(0+1)
      00035B C0 00            [24] 1211 	push	(0+0)
      00035D C0 D0            [24] 1212 	push	psw
      00035F 75 D0 18         [24] 1213 	mov	psw,#0x18
                                   1214 ;	main.c:336: t2InterruptTimes++;
      000362 05 25            [12] 1215 	inc	_t2InterruptTimes
      000364 E4               [12] 1216 	clr	a
      000365 B5 25 02         [24] 1217 	cjne	a,_t2InterruptTimes,00116$
      000368 05 26            [12] 1218 	inc	(_t2InterruptTimes + 1)
      00036A                       1219 00116$:
                                   1220 ;	main.c:337: a = t2InterruptTimes % M_PWM_CYCLE;
      00036A 75 29 0A         [24] 1221 	mov	__moduint_PARM_2,#0x0a
      00036D 75 2A 00         [24] 1222 	mov	(__moduint_PARM_2 + 1),#0x00
      000370 85 25 82         [24] 1223 	mov	dpl,_t2InterruptTimes
      000373 85 26 83         [24] 1224 	mov	dph,(_t2InterruptTimes + 1)
      000376 75 D0 00         [24] 1225 	mov	psw,#0x00
      000379 12 03 DE         [24] 1226 	lcall	__moduint
      00037C 75 D0 18         [24] 1227 	mov	psw,#0x18
      00037F AE 82            [24] 1228 	mov	r6,dpl
                                   1229 ;	main.c:338: if (t2InterruptTimes == CMD_TIME) {
      000381 74 90            [12] 1230 	mov	a,#0x90
      000383 B5 25 0E         [24] 1231 	cjne	a,_t2InterruptTimes,00102$
      000386 74 01            [12] 1232 	mov	a,#0x01
      000388 B5 26 09         [24] 1233 	cjne	a,(_t2InterruptTimes + 1),00102$
                                   1234 ;	main.c:339: t2InterruptTimes = 0;
      00038B E4               [12] 1235 	clr	a
      00038C F5 25            [12] 1236 	mov	_t2InterruptTimes,a
      00038E F5 26            [12] 1237 	mov	(_t2InterruptTimes + 1),a
                                   1238 ;	main.c:340: CAR = STOP;
                                   1239 ;	1-genFromRTrack replaced	mov	_P0,#0x00
      000390 F5 80            [12] 1240 	mov	_P0,a
                                   1241 ;	main.c:341: TR2 = 0;	//溢出400次，说明执行了蓝牙发送的指令40ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
                                   1242 ;	assignBit
      000392 C2 CA            [12] 1243 	clr	_TR2
      000394                       1244 00102$:
                                   1245 ;	main.c:343: if (a <= speed) {
      000394 C3               [12] 1246 	clr	c
      000395 E5 23            [12] 1247 	mov	a,_speed
      000397 9E               [12] 1248 	subb	a,r6
      000398 40 04            [24] 1249 	jc	00104$
                                   1250 ;	main.c:344: M_PWM = 1;
                                   1251 ;	assignBit
      00039A D2 B6            [12] 1252 	setb	_P3_6
      00039C 80 02            [24] 1253 	sjmp	00106$
      00039E                       1254 00104$:
                                   1255 ;	main.c:346: M_PWM = 0;
                                   1256 ;	assignBit
      00039E C2 B6            [12] 1257 	clr	_P3_6
      0003A0                       1258 00106$:
                                   1259 ;	main.c:349: }
      0003A0 D0 D0            [24] 1260 	pop	psw
      0003A2 D0 00            [24] 1261 	pop	(0+0)
      0003A4 D0 01            [24] 1262 	pop	(0+1)
      0003A6 D0 02            [24] 1263 	pop	(0+2)
      0003A8 D0 03            [24] 1264 	pop	(0+3)
      0003AA D0 04            [24] 1265 	pop	(0+4)
      0003AC D0 05            [24] 1266 	pop	(0+5)
      0003AE D0 06            [24] 1267 	pop	(0+6)
      0003B0 D0 07            [24] 1268 	pop	(0+7)
      0003B2 D0 83            [24] 1269 	pop	dph
      0003B4 D0 82            [24] 1270 	pop	dpl
      0003B6 D0 F0            [24] 1271 	pop	b
      0003B8 D0 E0            [24] 1272 	pop	acc
      0003BA D0 21            [24] 1273 	pop	bits
      0003BC 32               [24] 1274 	reti
                                   1275 ;------------------------------------------------------------
                                   1276 ;Allocation info for local variables in function 'main'
                                   1277 ;------------------------------------------------------------
                                   1278 ;	main.c:351: void main() {
                                   1279 ;	-----------------------------------------
                                   1280 ;	 function main
                                   1281 ;	-----------------------------------------
      0003BD                       1282 _main:
                           000007  1283 	ar7 = 0x07
                           000006  1284 	ar6 = 0x06
                           000005  1285 	ar5 = 0x05
                           000004  1286 	ar4 = 0x04
                           000003  1287 	ar3 = 0x03
                           000002  1288 	ar2 = 0x02
                           000001  1289 	ar1 = 0x01
                           000000  1290 	ar0 = 0x00
                                   1291 ;	main.c:352: initInterrupt();
      0003BD 12 02 74         [24] 1292 	lcall	_initInterrupt
                                   1293 ;	main.c:353: initSerial();
      0003C0 12 02 B6         [24] 1294 	lcall	_initSerial
                                   1295 ;	main.c:354: initTimer2();
      0003C3 12 02 CA         [24] 1296 	lcall	_initTimer2
                                   1297 ;	main.c:355: STBY = 1;
                                   1298 ;	assignBit
      0003C6 D2 B7            [12] 1299 	setb	_P3_7
                                   1300 ;	main.c:356: while(1) {
      0003C8                       1301 00105$:
                                   1302 ;	main.c:361: switch(operate) {
      0003C8 74 01            [12] 1303 	mov	a,#0x01
      0003CA B5 22 0C         [24] 1304 	cjne	a,_operate,00103$
                                   1305 ;	main.c:363: ledStatus(2);
      0003CD 75 82 02         [24] 1306 	mov	dpl,#0x02
      0003D0 12 00 C6         [24] 1307 	lcall	_ledStatus
                                   1308 ;	main.c:364: btControl(SBUF);
      0003D3 85 99 82         [24] 1309 	mov	dpl,_SBUF
      0003D6 12 02 27         [24] 1310 	lcall	_btControl
                                   1311 ;	main.c:375: }
      0003D9                       1312 00103$:
                                   1313 ;	main.c:376: operate = NO_OPERATE;
      0003D9 75 22 00         [24] 1314 	mov	_operate,#0x00
                                   1315 ;	main.c:378: }
      0003DC 80 EA            [24] 1316 	sjmp	00105$
                                   1317 	.area CSEG    (CODE)
                                   1318 	.area CONST   (CODE)
      000465                       1319 _seg:
      000465 C0                    1320 	.db #0xc0	; 192
      000466 F9                    1321 	.db #0xf9	; 249
      000467 A4                    1322 	.db #0xa4	; 164
      000468 B0                    1323 	.db #0xb0	; 176
      000469 99                    1324 	.db #0x99	; 153
      00046A 92                    1325 	.db #0x92	; 146
      00046B 82                    1326 	.db #0x82	; 130
      00046C F8                    1327 	.db #0xf8	; 248
      00046D 80                    1328 	.db #0x80	; 128
      00046E 90                    1329 	.db #0x90	; 144
      00046F 88                    1330 	.db #0x88	; 136
      000470 83                    1331 	.db #0x83	; 131
      000471 C6                    1332 	.db #0xc6	; 198
      000472 A1                    1333 	.db #0xa1	; 161
      000473 86                    1334 	.db #0x86	; 134
      000474 8E                    1335 	.db #0x8e	; 142
                                   1336 	.area XINIT   (CODE)
                                   1337 	.area CABS    (ABS,CODE)
