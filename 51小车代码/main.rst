                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Wed Nov 28 21:42:51 2018
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _seg
                             13 	.globl _main
                             14 	.globl _timer2
                             15 	.globl _serial
                             16 	.globl _timer0
                             17 	.globl _initTimer2
                             18 	.globl _initSerial
                             19 	.globl _reloadTimer0
                             20 	.globl _initTimer0
                             21 	.globl _initInterrupt
                             22 	.globl _btControl
                             23 	.globl _selfControl
                             24 	.globl _awayBackObs
                             25 	.globl _awayFrontObs
                             26 	.globl _awayRightObs
                             27 	.globl _awayLEFTObs
                             28 	.globl _startSR04
                             29 	.globl _calculate
                             30 	.globl _trigger
                             31 	.globl _steerTurn
                             32 	.globl _setTurnAngle
                             33 	.globl _ledStatus
                             34 	.globl _sensorTrigger
                             35 	.globl _delay
                             36 	.globl _CY
                             37 	.globl _AC
                             38 	.globl _F0
                             39 	.globl _RS1
                             40 	.globl _RS0
                             41 	.globl _OV
                             42 	.globl _FL
                             43 	.globl _P
                             44 	.globl _TF2
                             45 	.globl _EXF2
                             46 	.globl _RCLK
                             47 	.globl _TCLK
                             48 	.globl _EXEN2
                             49 	.globl _TR2
                             50 	.globl _C_T2
                             51 	.globl _CP_RL2
                             52 	.globl _T2CON_7
                             53 	.globl _T2CON_6
                             54 	.globl _T2CON_5
                             55 	.globl _T2CON_4
                             56 	.globl _T2CON_3
                             57 	.globl _T2CON_2
                             58 	.globl _T2CON_1
                             59 	.globl _T2CON_0
                             60 	.globl _PT2
                             61 	.globl _PS
                             62 	.globl _PT1
                             63 	.globl _PX1
                             64 	.globl _PT0
                             65 	.globl _PX0
                             66 	.globl _RD
                             67 	.globl _WR
                             68 	.globl _T1
                             69 	.globl _T0
                             70 	.globl _INT1
                             71 	.globl _INT0
                             72 	.globl _TXD
                             73 	.globl _RXD
                             74 	.globl _P3_7
                             75 	.globl _P3_6
                             76 	.globl _P3_5
                             77 	.globl _P3_4
                             78 	.globl _P3_3
                             79 	.globl _P3_2
                             80 	.globl _P3_1
                             81 	.globl _P3_0
                             82 	.globl _EA
                             83 	.globl _ET2
                             84 	.globl _ES
                             85 	.globl _ET1
                             86 	.globl _EX1
                             87 	.globl _ET0
                             88 	.globl _EX0
                             89 	.globl _P2_7
                             90 	.globl _P2_6
                             91 	.globl _P2_5
                             92 	.globl _P2_4
                             93 	.globl _P2_3
                             94 	.globl _P2_2
                             95 	.globl _P2_1
                             96 	.globl _P2_0
                             97 	.globl _SM0
                             98 	.globl _SM1
                             99 	.globl _SM2
                            100 	.globl _REN
                            101 	.globl _TB8
                            102 	.globl _RB8
                            103 	.globl _TI
                            104 	.globl _RI
                            105 	.globl _T2EX
                            106 	.globl _T2
                            107 	.globl _P1_7
                            108 	.globl _P1_6
                            109 	.globl _P1_5
                            110 	.globl _P1_4
                            111 	.globl _P1_3
                            112 	.globl _P1_2
                            113 	.globl _P1_1
                            114 	.globl _P1_0
                            115 	.globl _TF1
                            116 	.globl _TR1
                            117 	.globl _TF0
                            118 	.globl _TR0
                            119 	.globl _IE1
                            120 	.globl _IT1
                            121 	.globl _IE0
                            122 	.globl _IT0
                            123 	.globl _P0_7
                            124 	.globl _P0_6
                            125 	.globl _P0_5
                            126 	.globl _P0_4
                            127 	.globl _P0_3
                            128 	.globl _P0_2
                            129 	.globl _P0_1
                            130 	.globl _P0_0
                            131 	.globl _B
                            132 	.globl _A
                            133 	.globl _ACC
                            134 	.globl _PSW
                            135 	.globl _TH2
                            136 	.globl _TL2
                            137 	.globl _RCAP2H
                            138 	.globl _RCAP2L
                            139 	.globl _T2MOD
                            140 	.globl _T2CON
                            141 	.globl _IP
                            142 	.globl _P3
                            143 	.globl _IE
                            144 	.globl _P2
                            145 	.globl _SBUF
                            146 	.globl _SCON
                            147 	.globl _P1
                            148 	.globl _TH1
                            149 	.globl _TH0
                            150 	.globl _TL1
                            151 	.globl _TL0
                            152 	.globl _TMOD
                            153 	.globl _TCON
                            154 	.globl _PCON
                            155 	.globl _DPH
                            156 	.globl _DPL
                            157 	.globl _SP
                            158 	.globl _P0
                            159 	.globl _isOverstep
                            160 	.globl _timer0For
                            161 	.globl _angle
                            162 	.globl _t2InterruptTimes
                            163 	.globl _t0InterruptTimes
                            164 	.globl _speed
                            165 	.globl _putchar
                            166 ;--------------------------------------------------------
                            167 ; special function registers
                            168 ;--------------------------------------------------------
                            169 	.area RSEG    (ABS,DATA)
   0000                     170 	.org 0x0000
                    0080    171 _P0	=	0x0080
                    0081    172 _SP	=	0x0081
                    0082    173 _DPL	=	0x0082
                    0083    174 _DPH	=	0x0083
                    0087    175 _PCON	=	0x0087
                    0088    176 _TCON	=	0x0088
                    0089    177 _TMOD	=	0x0089
                    008A    178 _TL0	=	0x008a
                    008B    179 _TL1	=	0x008b
                    008C    180 _TH0	=	0x008c
                    008D    181 _TH1	=	0x008d
                    0090    182 _P1	=	0x0090
                    0098    183 _SCON	=	0x0098
                    0099    184 _SBUF	=	0x0099
                    00A0    185 _P2	=	0x00a0
                    00A8    186 _IE	=	0x00a8
                    00B0    187 _P3	=	0x00b0
                    00B8    188 _IP	=	0x00b8
                    00C8    189 _T2CON	=	0x00c8
                    00C9    190 _T2MOD	=	0x00c9
                    00CA    191 _RCAP2L	=	0x00ca
                    00CB    192 _RCAP2H	=	0x00cb
                    00CC    193 _TL2	=	0x00cc
                    00CD    194 _TH2	=	0x00cd
                    00D0    195 _PSW	=	0x00d0
                    00E0    196 _ACC	=	0x00e0
                    00E0    197 _A	=	0x00e0
                    00F0    198 _B	=	0x00f0
                            199 ;--------------------------------------------------------
                            200 ; special function bits
                            201 ;--------------------------------------------------------
                            202 	.area RSEG    (ABS,DATA)
   0000                     203 	.org 0x0000
                    0080    204 _P0_0	=	0x0080
                    0081    205 _P0_1	=	0x0081
                    0082    206 _P0_2	=	0x0082
                    0083    207 _P0_3	=	0x0083
                    0084    208 _P0_4	=	0x0084
                    0085    209 _P0_5	=	0x0085
                    0086    210 _P0_6	=	0x0086
                    0087    211 _P0_7	=	0x0087
                    0088    212 _IT0	=	0x0088
                    0089    213 _IE0	=	0x0089
                    008A    214 _IT1	=	0x008a
                    008B    215 _IE1	=	0x008b
                    008C    216 _TR0	=	0x008c
                    008D    217 _TF0	=	0x008d
                    008E    218 _TR1	=	0x008e
                    008F    219 _TF1	=	0x008f
                    0090    220 _P1_0	=	0x0090
                    0091    221 _P1_1	=	0x0091
                    0092    222 _P1_2	=	0x0092
                    0093    223 _P1_3	=	0x0093
                    0094    224 _P1_4	=	0x0094
                    0095    225 _P1_5	=	0x0095
                    0096    226 _P1_6	=	0x0096
                    0097    227 _P1_7	=	0x0097
                    0090    228 _T2	=	0x0090
                    0091    229 _T2EX	=	0x0091
                    0098    230 _RI	=	0x0098
                    0099    231 _TI	=	0x0099
                    009A    232 _RB8	=	0x009a
                    009B    233 _TB8	=	0x009b
                    009C    234 _REN	=	0x009c
                    009D    235 _SM2	=	0x009d
                    009E    236 _SM1	=	0x009e
                    009F    237 _SM0	=	0x009f
                    00A0    238 _P2_0	=	0x00a0
                    00A1    239 _P2_1	=	0x00a1
                    00A2    240 _P2_2	=	0x00a2
                    00A3    241 _P2_3	=	0x00a3
                    00A4    242 _P2_4	=	0x00a4
                    00A5    243 _P2_5	=	0x00a5
                    00A6    244 _P2_6	=	0x00a6
                    00A7    245 _P2_7	=	0x00a7
                    00A8    246 _EX0	=	0x00a8
                    00A9    247 _ET0	=	0x00a9
                    00AA    248 _EX1	=	0x00aa
                    00AB    249 _ET1	=	0x00ab
                    00AC    250 _ES	=	0x00ac
                    00AD    251 _ET2	=	0x00ad
                    00AF    252 _EA	=	0x00af
                    00B0    253 _P3_0	=	0x00b0
                    00B1    254 _P3_1	=	0x00b1
                    00B2    255 _P3_2	=	0x00b2
                    00B3    256 _P3_3	=	0x00b3
                    00B4    257 _P3_4	=	0x00b4
                    00B5    258 _P3_5	=	0x00b5
                    00B6    259 _P3_6	=	0x00b6
                    00B7    260 _P3_7	=	0x00b7
                    00B0    261 _RXD	=	0x00b0
                    00B1    262 _TXD	=	0x00b1
                    00B2    263 _INT0	=	0x00b2
                    00B3    264 _INT1	=	0x00b3
                    00B4    265 _T0	=	0x00b4
                    00B5    266 _T1	=	0x00b5
                    00B6    267 _WR	=	0x00b6
                    00B7    268 _RD	=	0x00b7
                    00B8    269 _PX0	=	0x00b8
                    00B9    270 _PT0	=	0x00b9
                    00BA    271 _PX1	=	0x00ba
                    00BB    272 _PT1	=	0x00bb
                    00BC    273 _PS	=	0x00bc
                    00BD    274 _PT2	=	0x00bd
                    00C8    275 _T2CON_0	=	0x00c8
                    00C9    276 _T2CON_1	=	0x00c9
                    00CA    277 _T2CON_2	=	0x00ca
                    00CB    278 _T2CON_3	=	0x00cb
                    00CC    279 _T2CON_4	=	0x00cc
                    00CD    280 _T2CON_5	=	0x00cd
                    00CE    281 _T2CON_6	=	0x00ce
                    00CF    282 _T2CON_7	=	0x00cf
                    00C8    283 _CP_RL2	=	0x00c8
                    00C9    284 _C_T2	=	0x00c9
                    00CA    285 _TR2	=	0x00ca
                    00CB    286 _EXEN2	=	0x00cb
                    00CC    287 _TCLK	=	0x00cc
                    00CD    288 _RCLK	=	0x00cd
                    00CE    289 _EXF2	=	0x00ce
                    00CF    290 _TF2	=	0x00cf
                    00D0    291 _P	=	0x00d0
                    00D1    292 _FL	=	0x00d1
                    00D2    293 _OV	=	0x00d2
                    00D3    294 _RS0	=	0x00d3
                    00D4    295 _RS1	=	0x00d4
                    00D5    296 _F0	=	0x00d5
                    00D6    297 _AC	=	0x00d6
                    00D7    298 _CY	=	0x00d7
                            299 ;--------------------------------------------------------
                            300 ; overlayable register banks
                            301 ;--------------------------------------------------------
                            302 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     303 	.ds 8
                            304 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     305 	.ds 8
                            306 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     307 	.ds 8
                            308 ;--------------------------------------------------------
                            309 ; overlayable bit register bank
                            310 ;--------------------------------------------------------
                            311 	.area BIT_BANK	(REL,OVR,DATA)
   0022                     312 bits:
   0022                     313 	.ds 1
                    8000    314 	b0 = bits[0]
                    8100    315 	b1 = bits[1]
                    8200    316 	b2 = bits[2]
                    8300    317 	b3 = bits[3]
                    8400    318 	b4 = bits[4]
                    8500    319 	b5 = bits[5]
                    8600    320 	b6 = bits[6]
                    8700    321 	b7 = bits[7]
                            322 ;--------------------------------------------------------
                            323 ; internal ram data
                            324 ;--------------------------------------------------------
                            325 	.area DSEG    (DATA)
   0018                     326 _speed::
   0018                     327 	.ds 1
   0019                     328 _t0InterruptTimes::
   0019                     329 	.ds 1
   001A                     330 _t2InterruptTimes::
   001A                     331 	.ds 1
   001B                     332 _angle::
   001B                     333 	.ds 1
   001C                     334 _timer0For::
   001C                     335 	.ds 1
                            336 ;--------------------------------------------------------
                            337 ; overlayable items in internal ram 
                            338 ;--------------------------------------------------------
                            339 	.area	OSEG    (OVR,DATA)
                            340 	.area	OSEG    (OVR,DATA)
                            341 	.area	OSEG    (OVR,DATA)
                            342 ;--------------------------------------------------------
                            343 ; Stack segment in internal ram 
                            344 ;--------------------------------------------------------
                            345 	.area	SSEG	(DATA)
   0044                     346 __start__stack:
   0044                     347 	.ds	1
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
   0000                     362 _isOverstep::
   0000                     363 	.ds 1
                            364 ;--------------------------------------------------------
                            365 ; paged external ram data
                            366 ;--------------------------------------------------------
                            367 	.area PSEG    (PAG,XDATA)
                            368 ;--------------------------------------------------------
                            369 ; external ram data
                            370 ;--------------------------------------------------------
                            371 	.area XSEG    (XDATA)
                            372 ;--------------------------------------------------------
                            373 ; absolute external ram data
                            374 ;--------------------------------------------------------
                            375 	.area XABS    (ABS,XDATA)
                            376 ;--------------------------------------------------------
                            377 ; external initialized ram data
                            378 ;--------------------------------------------------------
                            379 	.area XISEG   (XDATA)
                            380 	.area HOME    (CODE)
                            381 	.area GSINIT0 (CODE)
                            382 	.area GSINIT1 (CODE)
                            383 	.area GSINIT2 (CODE)
                            384 	.area GSINIT3 (CODE)
                            385 	.area GSINIT4 (CODE)
                            386 	.area GSINIT5 (CODE)
                            387 	.area GSINIT  (CODE)
                            388 	.area GSFINAL (CODE)
                            389 	.area CSEG    (CODE)
                            390 ;--------------------------------------------------------
                            391 ; interrupt vector 
                            392 ;--------------------------------------------------------
                            393 	.area HOME    (CODE)
   0000                     394 __interrupt_vect:
   0000 02 00 33            395 	ljmp	__sdcc_gsinit_startup
   0003 32                  396 	reti
   0004                     397 	.ds	7
   000B 02 04 70            398 	ljmp	_timer0
   000E                     399 	.ds	5
   0013 02 02 63            400 	ljmp	_selfControl
   0016                     401 	.ds	5
   001B 32                  402 	reti
   001C                     403 	.ds	7
   0023 02 04 BA            404 	ljmp	_serial
   0026                     405 	.ds	5
   002B 02 05 10            406 	ljmp	_timer2
                            407 ;--------------------------------------------------------
                            408 ; global & static initialisations
                            409 ;--------------------------------------------------------
                            410 	.area HOME    (CODE)
                            411 	.area GSINIT  (CODE)
                            412 	.area GSFINAL (CODE)
                            413 	.area GSINIT  (CODE)
                            414 	.globl __sdcc_gsinit_startup
                            415 	.globl __sdcc_program_startup
                            416 	.globl __start__stack
                            417 	.globl __mcs51_genXINIT
                            418 	.globl __mcs51_genXRAMCLEAR
                            419 	.globl __mcs51_genRAMCLEAR
                            420 ;	main.c:44: uchar speed = 5;	//小车速度
   008C 75 18 05            421 	mov	_speed,#0x05
                            422 ;	main.c:49: __bit isOverstep = 0;	//距离过远，超出测量范围
   008F C2 00               423 	clr	_isOverstep
                            424 	.area GSFINAL (CODE)
   0091 02 00 2E            425 	ljmp	__sdcc_program_startup
                            426 ;--------------------------------------------------------
                            427 ; Home
                            428 ;--------------------------------------------------------
                            429 	.area HOME    (CODE)
                            430 	.area HOME    (CODE)
   002E                     431 __sdcc_program_startup:
   002E 12 05 46            432 	lcall	_main
                            433 ;	return from main will lock up
   0031 80 FE               434 	sjmp .
                            435 ;--------------------------------------------------------
                            436 ; code
                            437 ;--------------------------------------------------------
                            438 	.area CSEG    (CODE)
                            439 ;------------------------------------------------------------
                            440 ;Allocation info for local variables in function 'delay'
                            441 ;------------------------------------------------------------
                            442 ;n                         Allocated to registers r2 r3 
                            443 ;i                         Allocated to registers r2 r3 
                            444 ;j                         Allocated to registers r4 r5 
                            445 ;------------------------------------------------------------
                            446 ;	main.c:52: void delay(uint n){
                            447 ;	-----------------------------------------
                            448 ;	 function delay
                            449 ;	-----------------------------------------
   0094                     450 _delay:
                    0002    451 	ar2 = 0x02
                    0003    452 	ar3 = 0x03
                    0004    453 	ar4 = 0x04
                    0005    454 	ar5 = 0x05
                    0006    455 	ar6 = 0x06
                    0007    456 	ar7 = 0x07
                    0000    457 	ar0 = 0x00
                    0001    458 	ar1 = 0x01
   0094 AA 82               459 	mov	r2,dpl
   0096 AB 83               460 	mov	r3,dph
                            461 ;	main.c:54: for(i=n;i>0;i--){
   0098                     462 00105$:
   0098 EA                  463 	mov	a,r2
   0099 4B                  464 	orl	a,r3
   009A 60 04               465 	jz	00111$
   009C 7C 01               466 	mov	r4,#0x01
   009E 80 02               467 	sjmp	00112$
   00A0                     468 00111$:
   00A0 7C 00               469 	mov	r4,#0x00
   00A2                     470 00112$:
   00A2 EC                  471 	mov	a,r4
   00A3 60 1F               472 	jz	00109$
                            473 ;	main.c:55: for(j=112;j>0;j--);
   00A5 7C 70               474 	mov	r4,#0x70
   00A7 7D 00               475 	mov	r5,#0x00
   00A9                     476 00101$:
   00A9 EC                  477 	mov	a,r4
   00AA 4D                  478 	orl	a,r5
   00AB 60 04               479 	jz	00113$
   00AD 7E 01               480 	mov	r6,#0x01
   00AF 80 02               481 	sjmp	00114$
   00B1                     482 00113$:
   00B1 7E 00               483 	mov	r6,#0x00
   00B3                     484 00114$:
   00B3 EE                  485 	mov	a,r6
   00B4 60 07               486 	jz	00107$
   00B6 1C                  487 	dec	r4
   00B7 BC FF EF            488 	cjne	r4,#0xff,00101$
   00BA 1D                  489 	dec	r5
   00BB 80 EC               490 	sjmp	00101$
   00BD                     491 00107$:
                            492 ;	main.c:54: for(i=n;i>0;i--){
   00BD 1A                  493 	dec	r2
   00BE BA FF 01            494 	cjne	r2,#0xff,00127$
   00C1 1B                  495 	dec	r3
   00C2                     496 00127$:
   00C2 80 D4               497 	sjmp	00105$
   00C4                     498 00109$:
   00C4 22                  499 	ret
                            500 ;------------------------------------------------------------
                            501 ;Allocation info for local variables in function 'putchar'
                            502 ;------------------------------------------------------------
                            503 ;c                         Allocated to registers 
                            504 ;------------------------------------------------------------
                            505 ;	main.c:60: void putchar(char c) {
                            506 ;	-----------------------------------------
                            507 ;	 function putchar
                            508 ;	-----------------------------------------
   00C5                     509 _putchar:
   00C5 85 82 99            510 	mov	_SBUF,dpl
                            511 ;	main.c:62: while(!TI);
   00C8                     512 00101$:
                            513 ;	main.c:63: TI = 0;
   00C8 10 99 02            514 	jbc	_TI,00108$
   00CB 80 FB               515 	sjmp	00101$
   00CD                     516 00108$:
   00CD 22                  517 	ret
                            518 ;------------------------------------------------------------
                            519 ;Allocation info for local variables in function 'sensorTrigger'
                            520 ;------------------------------------------------------------
                            521 ;------------------------------------------------------------
                            522 ;	main.c:67: void sensorTrigger() {
                            523 ;	-----------------------------------------
                            524 ;	 function sensorTrigger
                            525 ;	-----------------------------------------
   00CE                     526 _sensorTrigger:
                            527 ;	main.c:68: if(!(BACK_SENSER && FRONT_SENSER && LEFT_SENSER&& RIGHT_SENSER)) {
   00CE 30 95 09            528 	jnb	_P1_5,00101$
   00D1 30 94 06            529 	jnb	_P1_4,00101$
   00D4 30 96 03            530 	jnb	_P1_6,00101$
   00D7 20 97 02            531 	jb	_P1_7,00106$
   00DA                     532 00101$:
                            533 ;	main.c:69: SWITCH_SELF_CONTROL = 0;
   00DA C2 90               534 	clr	_P1_0
   00DC                     535 00106$:
   00DC 22                  536 	ret
                            537 ;------------------------------------------------------------
                            538 ;Allocation info for local variables in function 'ledStatus'
                            539 ;------------------------------------------------------------
                            540 ;s                         Allocated to registers r2 
                            541 ;------------------------------------------------------------
                            542 ;	main.c:75: void ledStatus(uchar s) {
                            543 ;	-----------------------------------------
                            544 ;	 function ledStatus
                            545 ;	-----------------------------------------
   00DD                     546 _ledStatus:
   00DD AA 82               547 	mov	r2,dpl
                            548 ;	main.c:76: switch(s) {
   00DF BA 00 02            549 	cjne	r2,#0x00,00110$
   00E2 80 0A               550 	sjmp	00101$
   00E4                     551 00110$:
   00E4 BA 01 02            552 	cjne	r2,#0x01,00111$
   00E7 80 0C               553 	sjmp	00102$
   00E9                     554 00111$:
                            555 ;	main.c:77: case(0):
   00E9 BA 02 16            556 	cjne	r2,#0x02,00105$
   00EC 80 0E               557 	sjmp	00103$
   00EE                     558 00101$:
                            559 ;	main.c:78: STOP_RED_LED = 0;	//停止指示灯亮
   00EE C2 91               560 	clr	_P1_1
                            561 ;	main.c:79: BT_BLUE_LED = 1;
   00F0 D2 92               562 	setb	_P1_2
                            563 ;	main.c:80: SELF_GREEN_LED = 1;
   00F2 D2 93               564 	setb	_P1_3
                            565 ;	main.c:81: break;
                            566 ;	main.c:82: case(1):
   00F4 22                  567 	ret
   00F5                     568 00102$:
                            569 ;	main.c:83: STOP_RED_LED = 1;
   00F5 D2 91               570 	setb	_P1_1
                            571 ;	main.c:84: BT_BLUE_LED = 1;	  
   00F7 D2 92               572 	setb	_P1_2
                            573 ;	main.c:85: SELF_GREEN_LED = 0;    //自控指示灯亮
   00F9 C2 93               574 	clr	_P1_3
                            575 ;	main.c:86: break;
                            576 ;	main.c:87: case(2):
   00FB 22                  577 	ret
   00FC                     578 00103$:
                            579 ;	main.c:88: STOP_RED_LED = 1;
   00FC D2 91               580 	setb	_P1_1
                            581 ;	main.c:89: SELF_GREEN_LED = 1;
   00FE D2 93               582 	setb	_P1_3
                            583 ;	main.c:90: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
   0100 C2 92               584 	clr	_P1_2
                            585 ;	main.c:92: }	
   0102                     586 00105$:
   0102 22                  587 	ret
                            588 ;------------------------------------------------------------
                            589 ;Allocation info for local variables in function 'setTurnAngle'
                            590 ;------------------------------------------------------------
                            591 ;a                         Allocated to registers r2 
                            592 ;------------------------------------------------------------
                            593 ;	main.c:96: void setTurnAngle(uchar a) {
                            594 ;	-----------------------------------------
                            595 ;	 function setTurnAngle
                            596 ;	-----------------------------------------
   0103                     597 _setTurnAngle:
   0103 AA 82               598 	mov	r2,dpl
                            599 ;	main.c:98: switch(a) {
   0105 74 04               600 	mov	a,#0x04
   0107 B5 02 00            601 	cjne	a,ar2,00110$
   010A                     602 00110$:
   010A 40 2D               603 	jc	00106$
   010C EA                  604 	mov	a,r2
   010D 2A                  605 	add	a,r2
   010E 2A                  606 	add	a,r2
   010F 90 01 13            607 	mov	dptr,#00112$
   0112 73                  608 	jmp	@a+dptr
   0113                     609 00112$:
   0113 02 01 22            610 	ljmp	00101$
   0116 02 01 27            611 	ljmp	00102$
   0119 02 01 2C            612 	ljmp	00103$
   011C 02 01 31            613 	ljmp	00104$
   011F 02 01 36            614 	ljmp	00105$
                            615 ;	main.c:100: case(STEER_S):angle = 3; break;
   0122                     616 00101$:
   0122 75 1B 03            617 	mov	_angle,#0x03
                            618 ;	main.c:102: case(STEER_P45):angle = 4; break;
   0125 80 12               619 	sjmp	00106$
   0127                     620 00102$:
   0127 75 1B 04            621 	mov	_angle,#0x04
                            622 ;	main.c:104: case(STEER_P90):angle = 5; break;
   012A 80 0D               623 	sjmp	00106$
   012C                     624 00103$:
   012C 75 1B 05            625 	mov	_angle,#0x05
                            626 ;	main.c:106: case(STEER_N45):angle = 2; break;
   012F 80 08               627 	sjmp	00106$
   0131                     628 00104$:
   0131 75 1B 02            629 	mov	_angle,#0x02
                            630 ;	main.c:108: case(STEER_N90):angle = 1; break;
   0134 80 03               631 	sjmp	00106$
   0136                     632 00105$:
   0136 75 1B 01            633 	mov	_angle,#0x01
                            634 ;	main.c:109: }
   0139                     635 00106$:
                            636 ;	main.c:110: timer0For = 0;
   0139 75 1C 00            637 	mov	_timer0For,#0x00
                            638 ;	main.c:111: initTimer0();	
   013C 02 04 2B            639 	ljmp	_initTimer0
                            640 ;------------------------------------------------------------
                            641 ;Allocation info for local variables in function 'steerTurn'
                            642 ;------------------------------------------------------------
                            643 ;------------------------------------------------------------
                            644 ;	main.c:114: void steerTurn() {
                            645 ;	-----------------------------------------
                            646 ;	 function steerTurn
                            647 ;	-----------------------------------------
   013F                     648 _steerTurn:
                            649 ;	main.c:116: t0InterruptTimes++;
   013F 05 19               650 	inc	_t0InterruptTimes
                            651 ;	main.c:117: if (t0InterruptTimes > PWM_CYCLE) {
   0141 74 05               652 	mov	a,#0x05
   0143 B5 19 00            653 	cjne	a,_t0InterruptTimes,00110$
   0146                     654 00110$:
   0146 50 03               655 	jnc	00102$
                            656 ;	main.c:118: t0InterruptTimes = 0;
   0148 75 19 00            657 	mov	_t0InterruptTimes,#0x00
   014B                     658 00102$:
                            659 ;	main.c:121: if (t0InterruptTimes < angle) {
   014B E5 19               660 	mov	a,_t0InterruptTimes
   014D B5 1B 00            661 	cjne	a,_angle,00112$
   0150                     662 00112$:
   0150 50 04               663 	jnc	00104$
                            664 ;	main.c:122: STEER_PWM = 1;
   0152 D2 B2               665 	setb	_P3_2
   0154 80 02               666 	sjmp	00105$
   0156                     667 00104$:
                            668 ;	main.c:124: STEER_PWM = 0;
   0156 C2 B2               669 	clr	_P3_2
   0158                     670 00105$:
                            671 ;	main.c:126: startSR04();
   0158 02 02 29            672 	ljmp	_startSR04
                            673 ;------------------------------------------------------------
                            674 ;Allocation info for local variables in function 'trigger'
                            675 ;------------------------------------------------------------
                            676 ;------------------------------------------------------------
                            677 ;	main.c:130: void trigger()
                            678 ;	-----------------------------------------
                            679 ;	 function trigger
                            680 ;	-----------------------------------------
   015B                     681 _trigger:
                            682 ;	main.c:132: TRIG = 1;
   015B D2 B5               683 	setb	_P3_5
                            684 ;	main.c:134: __nop; __nop; __nop; __nop; __nop;
   015D 00                  685 	 nop 
   015E 00                  686 	 nop 
   015F 00                  687 	 nop 
   0160 00                  688 	 nop 
   0161 00                  689 	 nop 
                            690 ;	main.c:135: __nop; __nop; __nop; __nop; __nop;
   0162 00                  691 	 nop 
   0163 00                  692 	 nop 
   0164 00                  693 	 nop 
   0165 00                  694 	 nop 
   0166 00                  695 	 nop 
                            696 ;	main.c:136: __nop; __nop; __nop; __nop; __nop;
   0167 00                  697 	 nop 
   0168 00                  698 	 nop 
   0169 00                  699 	 nop 
   016A 00                  700 	 nop 
   016B 00                  701 	 nop 
                            702 ;	main.c:137: __nop; __nop; __nop; __nop; __nop;
   016C 00                  703 	 nop 
   016D 00                  704 	 nop 
   016E 00                  705 	 nop 
   016F 00                  706 	 nop 
   0170 00                  707 	 nop 
                            708 ;	main.c:138: TRIG = 0;
   0171 C2 B5               709 	clr	_P3_5
   0173 22                  710 	ret
                            711 ;------------------------------------------------------------
                            712 ;Allocation info for local variables in function 'calculate'
                            713 ;------------------------------------------------------------
                            714 ;time                      Allocated to registers r2 
                            715 ;distance                  Allocated to registers r2 
                            716 ;------------------------------------------------------------
                            717 ;	main.c:142: uchar calculate() {
                            718 ;	-----------------------------------------
                            719 ;	 function calculate
                            720 ;	-----------------------------------------
   0174                     721 _calculate:
                            722 ;	main.c:146: time = TH0 * 256 + TL0;
   0174 AA 8A               723 	mov	r2,_TL0
                            724 ;	main.c:148: TH0 = 0;
   0176 75 8C 00            725 	mov	_TH0,#0x00
                            726 ;	main.c:149: TL0 = 0;
   0179 75 8A 00            727 	mov	_TL0,#0x00
                            728 ;	main.c:150: time *= 1.085;
   017C 8A 82               729 	mov	dpl,r2
   017E 12 0C B9            730 	lcall	___uchar2fs
   0181 AB 82               731 	mov	r3,dpl
   0183 AC 83               732 	mov	r4,dph
   0185 AD F0               733 	mov	r5,b
   0187 FE                  734 	mov	r6,a
   0188 C0 03               735 	push	ar3
   018A C0 04               736 	push	ar4
   018C C0 05               737 	push	ar5
   018E C0 06               738 	push	ar6
   0190 90 E1 48            739 	mov	dptr,#0xE148
   0193 75 F0 8A            740 	mov	b,#0x8A
   0196 74 3F               741 	mov	a,#0x3F
   0198 12 05 60            742 	lcall	___fsmul
   019B AB 82               743 	mov	r3,dpl
   019D AC 83               744 	mov	r4,dph
   019F AD F0               745 	mov	r5,b
   01A1 FE                  746 	mov	r6,a
   01A2 E5 81               747 	mov	a,sp
   01A4 24 FC               748 	add	a,#0xfc
   01A6 F5 81               749 	mov	sp,a
   01A8 8B 82               750 	mov	dpl,r3
   01AA 8C 83               751 	mov	dph,r4
   01AC 8D F0               752 	mov	b,r5
   01AE EE                  753 	mov	a,r6
   01AF 12 0C C4            754 	lcall	___fs2uchar
                            755 ;	main.c:153: distance = (time * 0.017);
   01B2 12 0C B9            756 	lcall	___uchar2fs
   01B5 AA 82               757 	mov	r2,dpl
   01B7 AB 83               758 	mov	r3,dph
   01B9 AC F0               759 	mov	r4,b
   01BB FD                  760 	mov	r5,a
   01BC C0 02               761 	push	ar2
   01BE C0 03               762 	push	ar3
   01C0 C0 04               763 	push	ar4
   01C2 C0 05               764 	push	ar5
   01C4 90 43 96            765 	mov	dptr,#0x4396
   01C7 75 F0 8B            766 	mov	b,#0x8B
   01CA 74 3C               767 	mov	a,#0x3C
   01CC 12 05 60            768 	lcall	___fsmul
   01CF AA 82               769 	mov	r2,dpl
   01D1 AB 83               770 	mov	r3,dph
   01D3 AC F0               771 	mov	r4,b
   01D5 FD                  772 	mov	r5,a
   01D6 E5 81               773 	mov	a,sp
   01D8 24 FC               774 	add	a,#0xfc
   01DA F5 81               775 	mov	sp,a
   01DC 8A 82               776 	mov	dpl,r2
   01DE 8B 83               777 	mov	dph,r3
   01E0 8C F0               778 	mov	b,r4
   01E2 ED                  779 	mov	a,r5
   01E3 12 0C C4            780 	lcall	___fs2uchar
   01E6 AA 82               781 	mov	r2,dpl
                            782 ;	main.c:154: if(isOverstep) {
                            783 ;	main.c:155: isOverstep = 0;
   01E8 10 00 02            784 	jbc	_isOverstep,00107$
   01EB 80 19               785 	sjmp	00102$
   01ED                     786 00107$:
                            787 ;	main.c:156: SEG = 0xff;
   01ED 75 A0 FF            788 	mov	_P2,#0xFF
                            789 ;	main.c:157: printf("overstep\n");
   01F0 74 6F               790 	mov	a,#__str_0
   01F2 C0 E0               791 	push	acc
   01F4 74 0D               792 	mov	a,#(__str_0 >> 8)
   01F6 C0 E0               793 	push	acc
   01F8 74 80               794 	mov	a,#0x80
   01FA C0 E0               795 	push	acc
   01FC 12 06 CE            796 	lcall	_printf
   01FF 15 81               797 	dec	sp
   0201 15 81               798 	dec	sp
   0203 15 81               799 	dec	sp
   0205 22                  800 	ret
   0206                     801 00102$:
                            802 ;	main.c:159: SEG = seg[distance];
   0206 EA                  803 	mov	a,r2
   0207 90 0D 5F            804 	mov	dptr,#_seg
   020A 93                  805 	movc	a,@a+dptr
   020B F5 A0               806 	mov	_P2,a
                            807 ;	main.c:160: printf("distance = %dcm\n", distance);
   020D 7B 00               808 	mov	r3,#0x00
   020F C0 02               809 	push	ar2
   0211 C0 03               810 	push	ar3
   0213 74 79               811 	mov	a,#__str_1
   0215 C0 E0               812 	push	acc
   0217 74 0D               813 	mov	a,#(__str_1 >> 8)
   0219 C0 E0               814 	push	acc
   021B 74 80               815 	mov	a,#0x80
   021D C0 E0               816 	push	acc
   021F 12 06 CE            817 	lcall	_printf
   0222 E5 81               818 	mov	a,sp
   0224 24 FB               819 	add	a,#0xfb
   0226 F5 81               820 	mov	sp,a
   0228 22                  821 	ret
                            822 ;------------------------------------------------------------
                            823 ;Allocation info for local variables in function 'startSR04'
                            824 ;------------------------------------------------------------
                            825 ;------------------------------------------------------------
                            826 ;	main.c:165: void startSR04() {
                            827 ;	-----------------------------------------
                            828 ;	 function startSR04
                            829 ;	-----------------------------------------
   0229                     830 _startSR04:
                            831 ;	main.c:167: timer0For = 1;
   0229 75 1C 01            832 	mov	_timer0For,#0x01
                            833 ;	main.c:168: initTimer0();
   022C 12 04 2B            834 	lcall	_initTimer0
                            835 ;	main.c:169: trigger();
   022F 12 01 5B            836 	lcall	_trigger
                            837 ;	main.c:170: while(!ECHO);
   0232                     838 00101$:
   0232 30 B4 FD            839 	jnb	_P3_4,00101$
                            840 ;	main.c:171: TR0 = 1;
   0235 D2 8C               841 	setb	_TR0
                            842 ;	main.c:172: while(ECHO);
   0237                     843 00104$:
   0237 20 B4 FD            844 	jb	_P3_4,00104$
                            845 ;	main.c:173: TR0 = 0;
   023A C2 8C               846 	clr	_TR0
                            847 ;	main.c:174: calculate();
   023C 02 01 74            848 	ljmp	_calculate
                            849 ;------------------------------------------------------------
                            850 ;Allocation info for local variables in function 'awayLEFTObs'
                            851 ;------------------------------------------------------------
                            852 ;------------------------------------------------------------
                            853 ;	main.c:178: void awayLEFTObs() {
                            854 ;	-----------------------------------------
                            855 ;	 function awayLEFTObs
                            856 ;	-----------------------------------------
   023F                     857 _awayLEFTObs:
                            858 ;	main.c:181: CAR = FRONT_RIGHT;
   023F 75 80 DA            859 	mov	_P0,#0xDA
                            860 ;	main.c:182: delay(700);
   0242 90 02 BC            861 	mov	dptr,#0x02BC
   0245 02 00 94            862 	ljmp	_delay
                            863 ;------------------------------------------------------------
                            864 ;Allocation info for local variables in function 'awayRightObs'
                            865 ;------------------------------------------------------------
                            866 ;------------------------------------------------------------
                            867 ;	main.c:186: void awayRightObs() {
                            868 ;	-----------------------------------------
                            869 ;	 function awayRightObs
                            870 ;	-----------------------------------------
   0248                     871 _awayRightObs:
                            872 ;	main.c:189: CAR = FRONT_LEFT;
   0248 75 80 AD            873 	mov	_P0,#0xAD
                            874 ;	main.c:190: delay(700);
   024B 90 02 BC            875 	mov	dptr,#0x02BC
   024E 02 00 94            876 	ljmp	_delay
                            877 ;------------------------------------------------------------
                            878 ;Allocation info for local variables in function 'awayFrontObs'
                            879 ;------------------------------------------------------------
                            880 ;------------------------------------------------------------
                            881 ;	main.c:195: void awayFrontObs() {
                            882 ;	-----------------------------------------
                            883 ;	 function awayFrontObs
                            884 ;	-----------------------------------------
   0251                     885 _awayFrontObs:
                            886 ;	main.c:196: CAR = BACK;
   0251 75 80 55            887 	mov	_P0,#0x55
                            888 ;	main.c:197: delay(200);
   0254 90 00 C8            889 	mov	dptr,#0x00C8
   0257 02 00 94            890 	ljmp	_delay
                            891 ;------------------------------------------------------------
                            892 ;Allocation info for local variables in function 'awayBackObs'
                            893 ;------------------------------------------------------------
                            894 ;------------------------------------------------------------
                            895 ;	main.c:201: void awayBackObs() {
                            896 ;	-----------------------------------------
                            897 ;	 function awayBackObs
                            898 ;	-----------------------------------------
   025A                     899 _awayBackObs:
                            900 ;	main.c:202: CAR = FRONT;
   025A 75 80 AA            901 	mov	_P0,#0xAA
                            902 ;	main.c:203: delay(400);
   025D 90 01 90            903 	mov	dptr,#0x0190
   0260 02 00 94            904 	ljmp	_delay
                            905 ;------------------------------------------------------------
                            906 ;Allocation info for local variables in function 'selfControl'
                            907 ;------------------------------------------------------------
                            908 ;------------------------------------------------------------
                            909 ;	main.c:207: void selfControl() __interrupt 2 __using 0 {
                            910 ;	-----------------------------------------
                            911 ;	 function selfControl
                            912 ;	-----------------------------------------
   0263                     913 _selfControl:
   0263 C0 22               914 	push	bits
   0265 C0 E0               915 	push	acc
   0267 C0 F0               916 	push	b
   0269 C0 82               917 	push	dpl
   026B C0 83               918 	push	dph
   026D C0 02               919 	push	(0+2)
   026F C0 03               920 	push	(0+3)
   0271 C0 04               921 	push	(0+4)
   0273 C0 05               922 	push	(0+5)
   0275 C0 06               923 	push	(0+6)
   0277 C0 07               924 	push	(0+7)
   0279 C0 00               925 	push	(0+0)
   027B C0 01               926 	push	(0+1)
   027D C0 D0               927 	push	psw
   027F 75 D0 00            928 	mov	psw,#0x00
                            929 ;	main.c:209: ledStatus(1);
   0282 75 82 01            930 	mov	dpl,#0x01
   0285 12 00 DD            931 	lcall	_ledStatus
                            932 ;	main.c:210: printf("self control\n");
   0288 74 8A               933 	mov	a,#__str_2
   028A C0 E0               934 	push	acc
   028C 74 0D               935 	mov	a,#(__str_2 >> 8)
   028E C0 E0               936 	push	acc
   0290 74 80               937 	mov	a,#0x80
   0292 C0 E0               938 	push	acc
   0294 12 06 CE            939 	lcall	_printf
   0297 15 81               940 	dec	sp
   0299 15 81               941 	dec	sp
   029B 15 81               942 	dec	sp
                            943 ;	main.c:213: if (FRONT_SENSER == 0 && BACK_SENSER == 1) {
   029D 20 94 48            944 	jb	_P1_4,00133$
   02A0 30 95 45            945 	jnb	_P1_5,00133$
                            946 ;	main.c:215: if ((LEFT_SENSER== 0 && RIGHT_SENSER == 0) || (LEFT_SENSER&& RIGHT_SENSER) == 1) {
   02A3 20 96 03            947 	jb	_P1_6,00109$
   02A6 30 97 0F            948 	jnb	_P1_7,00105$
   02A9                     949 00109$:
   02A9 30 96 03            950 	jnb	_P1_6,00139$
   02AC 20 97 04            951 	jb	_P1_7,00140$
   02AF                     952 00139$:
   02AF 7A 00               953 	mov	r2,#0x00
   02B1 80 02               954 	sjmp	00141$
   02B3                     955 00140$:
   02B3 7A 01               956 	mov	r2,#0x01
   02B5                     957 00141$:
   02B5 BA 01 06            958 	cjne	r2,#0x01,00106$
   02B8                     959 00105$:
                            960 ;	main.c:216: CAR = STOP;
   02B8 75 80 FF            961 	mov	_P0,#0xFF
   02BB 02 03 9F            962 	ljmp	00134$
   02BE                     963 00106$:
                            964 ;	main.c:218: }else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
   02BE 20 96 15            965 	jb	_P1_6,00102$
   02C1 30 97 12            966 	jnb	_P1_7,00102$
                            967 ;	main.c:219: CAR = STOP;
   02C4 75 80 FF            968 	mov	_P0,#0xFF
                            969 ;	main.c:220: setTurnAngle(STEER_P45);
   02C7 75 82 01            970 	mov	dpl,#0x01
   02CA 12 01 03            971 	lcall	_setTurnAngle
                            972 ;	main.c:221: setTurnAngle(STEER_P90);
   02CD 75 82 02            973 	mov	dpl,#0x02
   02D0 12 01 03            974 	lcall	_setTurnAngle
   02D3 02 03 9F            975 	ljmp	00134$
   02D6                     976 00102$:
                            977 ;	main.c:224: CAR = STOP;
   02D6 75 80 FF            978 	mov	_P0,#0xFF
                            979 ;	main.c:225: setTurnAngle(STEER_N45);
   02D9 75 82 03            980 	mov	dpl,#0x03
   02DC 12 01 03            981 	lcall	_setTurnAngle
                            982 ;	main.c:226: setTurnAngle(STEER_N90);
   02DF 75 82 04            983 	mov	dpl,#0x04
   02E2 12 01 03            984 	lcall	_setTurnAngle
   02E5 02 03 9F            985 	ljmp	00134$
   02E8                     986 00133$:
                            987 ;	main.c:229: }else if (BACK_SENSER == 0 && FRONT_SENSER == 1){
   02E8 20 95 53            988 	jb	_P1_5,00129$
   02EB 30 94 50            989 	jnb	_P1_4,00129$
                            990 ;	main.c:231: if ((LEFT_SENSER && RIGHT_SENSER) == 1) {
   02EE 30 96 03            991 	jnb	_P1_6,00142$
   02F1 20 97 04            992 	jb	_P1_7,00143$
   02F4                     993 00142$:
   02F4 7A 00               994 	mov	r2,#0x00
   02F6 80 02               995 	sjmp	00144$
   02F8                     996 00143$:
   02F8 7A 01               997 	mov	r2,#0x01
   02FA                     998 00144$:
   02FA BA 01 06            999 	cjne	r2,#0x01,00118$
                           1000 ;	main.c:232: CAR = FRONT;
   02FD 75 80 AA           1001 	mov	_P0,#0xAA
   0300 02 03 9F           1002 	ljmp	00134$
   0303                    1003 00118$:
                           1004 ;	main.c:234: }else if ((LEFT_SENSER || RIGHT_SENSER) == 0) {
   0303 20 96 0F           1005 	jb	_P1_6,00115$
   0306 20 97 0C           1006 	jb	_P1_7,00115$
                           1007 ;	main.c:235: CAR = BACK;
   0309 75 80 55           1008 	mov	_P0,#0x55
                           1009 ;	main.c:236: delay(400);
   030C 90 01 90           1010 	mov	dptr,#0x0190
   030F 12 00 94           1011 	lcall	_delay
   0312 02 03 9F           1012 	ljmp	00134$
   0315                    1013 00115$:
                           1014 ;	main.c:239: }else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
   0315 20 96 15           1015 	jb	_P1_6,00111$
   0318 30 97 12           1016 	jnb	_P1_7,00111$
                           1017 ;	main.c:240: CAR = STOP;
   031B 75 80 FF           1018 	mov	_P0,#0xFF
                           1019 ;	main.c:241: setTurnAngle(STEER_P45);
   031E 75 82 01           1020 	mov	dpl,#0x01
   0321 12 01 03           1021 	lcall	_setTurnAngle
                           1022 ;	main.c:242: setTurnAngle(STEER_P90);
   0324 75 82 02           1023 	mov	dpl,#0x02
   0327 12 01 03           1024 	lcall	_setTurnAngle
   032A 02 03 9F           1025 	ljmp	00134$
   032D                    1026 00111$:
                           1027 ;	main.c:245: CAR = STOP;
   032D 75 80 FF           1028 	mov	_P0,#0xFF
                           1029 ;	main.c:246: setTurnAngle(STEER_N45);
   0330 75 82 03           1030 	mov	dpl,#0x03
   0333 12 01 03           1031 	lcall	_setTurnAngle
                           1032 ;	main.c:247: setTurnAngle(STEER_N90);
   0336 75 82 04           1033 	mov	dpl,#0x04
   0339 12 01 03           1034 	lcall	_setTurnAngle
   033C 80 61              1035 	sjmp	00134$
   033E                    1036 00129$:
                           1037 ;	main.c:250: }else if (LEFT_SENSER== 0 && (RIGHT_SENSER && BACK_SENSER && FRONT_SENSER) == 1 ){
   033E 20 96 2C           1038 	jb	_P1_6,00125$
   0341 30 97 03           1039 	jnb	_P1_7,00148$
   0344 20 95 04           1040 	jb	_P1_5,00149$
   0347                    1041 00148$:
   0347 7A 00              1042 	mov	r2,#0x00
   0349 80 02              1043 	sjmp	00150$
   034B                    1044 00149$:
   034B 7A 01              1045 	mov	r2,#0x01
   034D                    1046 00150$:
   034D EA                 1047 	mov	a,r2
   034E 60 03              1048 	jz	00145$
   0350 20 94 04           1049 	jb	_P1_4,00146$
   0353                    1050 00145$:
   0353 7A 00              1051 	mov	r2,#0x00
   0355 80 02              1052 	sjmp	00147$
   0357                    1053 00146$:
   0357 7A 01              1054 	mov	r2,#0x01
   0359                    1055 00147$:
   0359 BA 01 11           1056 	cjne	r2,#0x01,00125$
                           1057 ;	main.c:251: CAR = STOP;
   035C 75 80 FF           1058 	mov	_P0,#0xFF
                           1059 ;	main.c:252: setTurnAngle(STEER_P45);
   035F 75 82 01           1060 	mov	dpl,#0x01
   0362 12 01 03           1061 	lcall	_setTurnAngle
                           1062 ;	main.c:253: setTurnAngle(STEER_P90);
   0365 75 82 02           1063 	mov	dpl,#0x02
   0368 12 01 03           1064 	lcall	_setTurnAngle
   036B 80 32              1065 	sjmp	00134$
   036D                    1066 00125$:
                           1067 ;	main.c:255: }else if (RIGHT_SENSER == 0 && (LEFT_SENSER && FRONT_SENSER && BACK_SENSER) == 1) {
   036D 20 97 2C           1068 	jb	_P1_7,00121$
   0370 30 96 03           1069 	jnb	_P1_6,00154$
   0373 20 94 04           1070 	jb	_P1_4,00155$
   0376                    1071 00154$:
   0376 7A 00              1072 	mov	r2,#0x00
   0378 80 02              1073 	sjmp	00156$
   037A                    1074 00155$:
   037A 7A 01              1075 	mov	r2,#0x01
   037C                    1076 00156$:
   037C EA                 1077 	mov	a,r2
   037D 60 03              1078 	jz	00151$
   037F 20 95 04           1079 	jb	_P1_5,00152$
   0382                    1080 00151$:
   0382 7A 00              1081 	mov	r2,#0x00
   0384 80 02              1082 	sjmp	00153$
   0386                    1083 00152$:
   0386 7A 01              1084 	mov	r2,#0x01
   0388                    1085 00153$:
   0388 BA 01 11           1086 	cjne	r2,#0x01,00121$
                           1087 ;	main.c:256: CAR = STOP;
   038B 75 80 FF           1088 	mov	_P0,#0xFF
                           1089 ;	main.c:257: setTurnAngle(STEER_N45);
   038E 75 82 03           1090 	mov	dpl,#0x03
   0391 12 01 03           1091 	lcall	_setTurnAngle
                           1092 ;	main.c:258: setTurnAngle(STEER_N90);
   0394 75 82 04           1093 	mov	dpl,#0x04
   0397 12 01 03           1094 	lcall	_setTurnAngle
   039A 80 03              1095 	sjmp	00134$
   039C                    1096 00121$:
                           1097 ;	main.c:261: CAR = STOP;
   039C 75 80 FF           1098 	mov	_P0,#0xFF
   039F                    1099 00134$:
                           1100 ;	main.c:263: SWITCH_SELF_CONTROL = 1;
   039F D2 90              1101 	setb	_P1_0
   03A1 D0 D0              1102 	pop	psw
   03A3 D0 01              1103 	pop	(0+1)
   03A5 D0 00              1104 	pop	(0+0)
   03A7 D0 07              1105 	pop	(0+7)
   03A9 D0 06              1106 	pop	(0+6)
   03AB D0 05              1107 	pop	(0+5)
   03AD D0 04              1108 	pop	(0+4)
   03AF D0 03              1109 	pop	(0+3)
   03B1 D0 02              1110 	pop	(0+2)
   03B3 D0 83              1111 	pop	dph
   03B5 D0 82              1112 	pop	dpl
   03B7 D0 F0              1113 	pop	b
   03B9 D0 E0              1114 	pop	acc
   03BB D0 22              1115 	pop	bits
   03BD 32                 1116 	reti
                           1117 ;------------------------------------------------------------
                           1118 ;Allocation info for local variables in function 'btControl'
                           1119 ;------------------------------------------------------------
                           1120 ;cmd                       Allocated to registers r2 
                           1121 ;------------------------------------------------------------
                           1122 ;	main.c:267: void btControl(uchar cmd) {
                           1123 ;	-----------------------------------------
                           1124 ;	 function btControl
                           1125 ;	-----------------------------------------
   03BE                    1126 _btControl:
   03BE AA 82              1127 	mov	r2,dpl
                           1128 ;	main.c:269: ledStatus(2);
   03C0 75 82 02           1129 	mov	dpl,#0x02
   03C3 C0 02              1130 	push	ar2
   03C5 12 00 DD           1131 	lcall	_ledStatus
   03C8 D0 02              1132 	pop	ar2
                           1133 ;	main.c:270: switch(cmd) {
   03CA BA 61 02           1134 	cjne	r2,#0x61,00125$
   03CD 80 37              1135 	sjmp	00106$
   03CF                    1136 00125$:
   03CF BA 62 02           1137 	cjne	r2,#0x62,00126$
   03D2 80 1E              1138 	sjmp	00102$
   03D4                    1139 00126$:
   03D4 BA 64 02           1140 	cjne	r2,#0x64,00127$
   03D7 80 37              1141 	sjmp	00109$
   03D9                    1142 00127$:
   03D9 BA 66 02           1143 	cjne	r2,#0x66,00128$
   03DC 80 0F              1144 	sjmp	00101$
   03DE                    1145 00128$:
   03DE BA 6C 02           1146 	cjne	r2,#0x6C,00129$
   03E1 80 14              1147 	sjmp	00103$
   03E3                    1148 00129$:
   03E3 BA 72 02           1149 	cjne	r2,#0x72,00130$
   03E6 80 14              1150 	sjmp	00104$
   03E8                    1151 00130$:
                           1152 ;	main.c:271: case('f'): CAR = FRONT; break;
   03E8 BA 73 2D           1153 	cjne	r2,#0x73,00112$
   03EB 80 14              1154 	sjmp	00105$
   03ED                    1155 00101$:
   03ED 75 80 AA           1156 	mov	_P0,#0xAA
                           1157 ;	main.c:272: case('b'): CAR = BACK; break;
   03F0 80 29              1158 	sjmp	00113$
   03F2                    1159 00102$:
   03F2 75 80 55           1160 	mov	_P0,#0x55
                           1161 ;	main.c:273: case('l'): CAR = FRONT_LEFT; break;
   03F5 80 24              1162 	sjmp	00113$
   03F7                    1163 00103$:
   03F7 75 80 AD           1164 	mov	_P0,#0xAD
                           1165 ;	main.c:274: case('r'): CAR = FRONT_RIGHT; break;
   03FA 80 1F              1166 	sjmp	00113$
   03FC                    1167 00104$:
   03FC 75 80 DA           1168 	mov	_P0,#0xDA
                           1169 ;	main.c:275: case('s'): CAR = STOP; break;
   03FF 80 1A              1170 	sjmp	00113$
   0401                    1171 00105$:
   0401 75 80 FF           1172 	mov	_P0,#0xFF
                           1173 ;	main.c:276: case('a'): 
   0404 80 15              1174 	sjmp	00113$
   0406                    1175 00106$:
                           1176 ;	main.c:277: if (speed < 5) {
   0406 74 FB              1177 	mov	a,#0x100 - 0x05
   0408 25 18              1178 	add	a,_speed
   040A 40 0F              1179 	jc	00113$
                           1180 ;	main.c:278: speed++;
   040C 05 18              1181 	inc	_speed
                           1182 ;	main.c:280: break;
                           1183 ;	main.c:281: case('d'): 
   040E 80 0B              1184 	sjmp	00113$
   0410                    1185 00109$:
                           1186 ;	main.c:282: if (speed > 0) {
   0410 E5 18              1187 	mov	a,_speed
   0412 60 07              1188 	jz	00113$
                           1189 ;	main.c:283: speed--;
   0414 15 18              1190 	dec	_speed
                           1191 ;	main.c:285: break;
                           1192 ;	main.c:286: default:CAR = STOP; break;
   0416 80 03              1193 	sjmp	00113$
   0418                    1194 00112$:
   0418 75 80 FF           1195 	mov	_P0,#0xFF
                           1196 ;	main.c:287: }
   041B                    1197 00113$:
                           1198 ;	main.c:288: initTimer2();
   041B 02 04 62           1199 	ljmp	_initTimer2
                           1200 ;------------------------------------------------------------
                           1201 ;Allocation info for local variables in function 'initInterrupt'
                           1202 ;------------------------------------------------------------
                           1203 ;------------------------------------------------------------
                           1204 ;	main.c:292: void initInterrupt() {
                           1205 ;	-----------------------------------------
                           1206 ;	 function initInterrupt
                           1207 ;	-----------------------------------------
   041E                    1208 _initInterrupt:
                           1209 ;	main.c:294: EA = 1;			//允许总中断
   041E D2 AF              1210 	setb	_EA
                           1211 ;	main.c:295: ES = 1;			//允许串行口中断
   0420 D2 AC              1212 	setb	_ES
                           1213 ;	main.c:296: ET0 = 1;		//允许定时器0中断
   0422 D2 A9              1214 	setb	_ET0
                           1215 ;	main.c:297: ET2 = 1;		//允许定时器2中断
   0424 D2 AD              1216 	setb	_ET2
                           1217 ;	main.c:298: EX1 = 1;		//允许外部中断1中断
   0426 D2 AA              1218 	setb	_EX1
                           1219 ;	main.c:299: IT1 = 0;		//低电平触发
   0428 C2 8A              1220 	clr	_IT1
   042A 22                 1221 	ret
                           1222 ;------------------------------------------------------------
                           1223 ;Allocation info for local variables in function 'initTimer0'
                           1224 ;------------------------------------------------------------
                           1225 ;------------------------------------------------------------
                           1226 ;	main.c:303: void initTimer0() {
                           1227 ;	-----------------------------------------
                           1228 ;	 function initTimer0
                           1229 ;	-----------------------------------------
   042B                    1230 _initTimer0:
                           1231 ;	main.c:305: TMOD = 0x01;	//工作方式1
   042B 75 89 01           1232 	mov	_TMOD,#0x01
                           1233 ;	main.c:306: if (timer0For == 0) {
   042E E5 1C              1234 	mov	a,_timer0For
   0430 70 03              1235 	jnz	00102$
                           1236 ;	main.c:308: TR0 = 1;	//开启定时器0
   0432 D2 8C              1237 	setb	_TR0
   0434 22                 1238 	ret
   0435                    1239 00102$:
                           1240 ;	main.c:310: TH0 = 0xFE;
   0435 75 8C FE           1241 	mov	_TH0,#0xFE
                           1242 ;	main.c:311: TL0 = 0x33;
   0438 75 8A 33           1243 	mov	_TL0,#0x33
   043B 22                 1244 	ret
                           1245 ;------------------------------------------------------------
                           1246 ;Allocation info for local variables in function 'reloadTimer0'
                           1247 ;------------------------------------------------------------
                           1248 ;------------------------------------------------------------
                           1249 ;	main.c:315: void reloadTimer0() {
                           1250 ;	-----------------------------------------
                           1251 ;	 function reloadTimer0
                           1252 ;	-----------------------------------------
   043C                    1253 _reloadTimer0:
                           1254 ;	main.c:317: if (timer0For == 0) {
   043C E5 1C              1255 	mov	a,_timer0For
   043E 70 07              1256 	jnz	00102$
                           1257 ;	main.c:318: TH0 = 0xFE;
   0440 75 8C FE           1258 	mov	_TH0,#0xFE
                           1259 ;	main.c:319: TL0 = 0x33;	
   0443 75 8A 33           1260 	mov	_TL0,#0x33
   0446 22                 1261 	ret
   0447                    1262 00102$:
                           1263 ;	main.c:321: TH0 = 0xFE;
   0447 75 8C FE           1264 	mov	_TH0,#0xFE
                           1265 ;	main.c:322: TL0 = 0x33;
   044A 75 8A 33           1266 	mov	_TL0,#0x33
   044D 22                 1267 	ret
                           1268 ;------------------------------------------------------------
                           1269 ;Allocation info for local variables in function 'initSerial'
                           1270 ;------------------------------------------------------------
                           1271 ;------------------------------------------------------------
                           1272 ;	main.c:327: void initSerial() {
                           1273 ;	-----------------------------------------
                           1274 ;	 function initSerial
                           1275 ;	-----------------------------------------
   044E                    1276 _initSerial:
                           1277 ;	main.c:329: SCON = 0x50;	//串行口工作模式1
   044E 75 98 50           1278 	mov	_SCON,#0x50
                           1279 ;	main.c:330: PCON = 0x00;
   0451 75 87 00           1280 	mov	_PCON,#0x00
                           1281 ;	main.c:331: RI = 0;			//接受中断标志清零
   0454 C2 98              1282 	clr	_RI
                           1283 ;	main.c:333: TMOD = 0x21;	//定时器T1方式2 T0工作方式1
   0456 75 89 21           1284 	mov	_TMOD,#0x21
                           1285 ;	main.c:334: TL1 = 0xfd;
   0459 75 8B FD           1286 	mov	_TL1,#0xFD
                           1287 ;	main.c:335: TH1 = 0xfd;
   045C 75 8D FD           1288 	mov	_TH1,#0xFD
                           1289 ;	main.c:336: TR1 = 1;		//定时器开始计数
   045F D2 8E              1290 	setb	_TR1
   0461 22                 1291 	ret
                           1292 ;------------------------------------------------------------
                           1293 ;Allocation info for local variables in function 'initTimer2'
                           1294 ;------------------------------------------------------------
                           1295 ;------------------------------------------------------------
                           1296 ;	main.c:340: void initTimer2() {
                           1297 ;	-----------------------------------------
                           1298 ;	 function initTimer2
                           1299 ;	-----------------------------------------
   0462                    1300 _initTimer2:
                           1301 ;	main.c:341: T2MOD = 0x00;	//定时器T2向上计数
   0462 75 C9 00           1302 	mov	_T2MOD,#0x00
                           1303 ;	main.c:342: C_T2 = 0;		//选择T2为定时器方式
   0465 C2 C9              1304 	clr	_C_T2
                           1305 ;	main.c:343: CP_RL2 = 0;		//T2自动装载
   0467 C2 C8              1306 	clr	_CP_RL2
                           1307 ;	main.c:344: TH0 = 0x0fc;
   0469 75 8C FC           1308 	mov	_TH0,#0xFC
                           1309 ;	main.c:345: TL0 = 0x66;
   046C 75 8A 66           1310 	mov	_TL0,#0x66
   046F 22                 1311 	ret
                           1312 ;------------------------------------------------------------
                           1313 ;Allocation info for local variables in function 'timer0'
                           1314 ;------------------------------------------------------------
                           1315 ;------------------------------------------------------------
                           1316 ;	main.c:348: void timer0() __interrupt 1 __using 0 {
                           1317 ;	-----------------------------------------
                           1318 ;	 function timer0
                           1319 ;	-----------------------------------------
   0470                    1320 _timer0:
   0470 C0 22              1321 	push	bits
   0472 C0 E0              1322 	push	acc
   0474 C0 F0              1323 	push	b
   0476 C0 82              1324 	push	dpl
   0478 C0 83              1325 	push	dph
   047A C0 02              1326 	push	(0+2)
   047C C0 03              1327 	push	(0+3)
   047E C0 04              1328 	push	(0+4)
   0480 C0 05              1329 	push	(0+5)
   0482 C0 06              1330 	push	(0+6)
   0484 C0 07              1331 	push	(0+7)
   0486 C0 00              1332 	push	(0+0)
   0488 C0 01              1333 	push	(0+1)
   048A C0 D0              1334 	push	psw
   048C 75 D0 00           1335 	mov	psw,#0x00
                           1336 ;	main.c:350: if (timer0For == 0) {
   048F E5 1C              1337 	mov	a,_timer0For
   0491 70 08              1338 	jnz	00102$
                           1339 ;	main.c:351: reloadTimer0();
   0493 12 04 3C           1340 	lcall	_reloadTimer0
                           1341 ;	main.c:352: steerTurn();
   0496 12 01 3F           1342 	lcall	_steerTurn
   0499 80 02              1343 	sjmp	00104$
   049B                    1344 00102$:
                           1345 ;	main.c:354: isOverstep = 1;
   049B D2 00              1346 	setb	_isOverstep
   049D                    1347 00104$:
   049D D0 D0              1348 	pop	psw
   049F D0 01              1349 	pop	(0+1)
   04A1 D0 00              1350 	pop	(0+0)
   04A3 D0 07              1351 	pop	(0+7)
   04A5 D0 06              1352 	pop	(0+6)
   04A7 D0 05              1353 	pop	(0+5)
   04A9 D0 04              1354 	pop	(0+4)
   04AB D0 03              1355 	pop	(0+3)
   04AD D0 02              1356 	pop	(0+2)
   04AF D0 83              1357 	pop	dph
   04B1 D0 82              1358 	pop	dpl
   04B3 D0 F0              1359 	pop	b
   04B5 D0 E0              1360 	pop	acc
   04B7 D0 22              1361 	pop	bits
   04B9 32                 1362 	reti
                           1363 ;------------------------------------------------------------
                           1364 ;Allocation info for local variables in function 'serial'
                           1365 ;------------------------------------------------------------
                           1366 ;------------------------------------------------------------
                           1367 ;	main.c:361: void serial() __interrupt 4 __using 1 {
                           1368 ;	-----------------------------------------
                           1369 ;	 function serial
                           1370 ;	-----------------------------------------
   04BA                    1371 _serial:
                    000A   1372 	ar2 = 0x0a
                    000B   1373 	ar3 = 0x0b
                    000C   1374 	ar4 = 0x0c
                    000D   1375 	ar5 = 0x0d
                    000E   1376 	ar6 = 0x0e
                    000F   1377 	ar7 = 0x0f
                    0008   1378 	ar0 = 0x08
                    0009   1379 	ar1 = 0x09
   04BA C0 22              1380 	push	bits
   04BC C0 E0              1381 	push	acc
   04BE C0 F0              1382 	push	b
   04C0 C0 82              1383 	push	dpl
   04C2 C0 83              1384 	push	dph
   04C4 C0 02              1385 	push	(0+2)
   04C6 C0 03              1386 	push	(0+3)
   04C8 C0 04              1387 	push	(0+4)
   04CA C0 05              1388 	push	(0+5)
   04CC C0 06              1389 	push	(0+6)
   04CE C0 07              1390 	push	(0+7)
   04D0 C0 00              1391 	push	(0+0)
   04D2 C0 01              1392 	push	(0+1)
   04D4 C0 D0              1393 	push	psw
   04D6 75 D0 08           1394 	mov	psw,#0x08
                           1395 ;	main.c:363: RI = 0;
   04D9 C2 98              1396 	clr	_RI
                           1397 ;	main.c:364: putchar(SBUF);	//接受的数据再发送给控制端
   04DB 85 99 82           1398 	mov	dpl,_SBUF
   04DE 75 D0 00           1399 	mov	psw,#0x00
   04E1 12 00 C5           1400 	lcall	_putchar
   04E4 75 D0 08           1401 	mov	psw,#0x08
                           1402 ;	main.c:365: btControl(SBUF);
   04E7 85 99 82           1403 	mov	dpl,_SBUF
   04EA 75 D0 00           1404 	mov	psw,#0x00
   04ED 12 03 BE           1405 	lcall	_btControl
   04F0 75 D0 08           1406 	mov	psw,#0x08
   04F3 D0 D0              1407 	pop	psw
   04F5 D0 01              1408 	pop	(0+1)
   04F7 D0 00              1409 	pop	(0+0)
   04F9 D0 07              1410 	pop	(0+7)
   04FB D0 06              1411 	pop	(0+6)
   04FD D0 05              1412 	pop	(0+5)
   04FF D0 04              1413 	pop	(0+4)
   0501 D0 03              1414 	pop	(0+3)
   0503 D0 02              1415 	pop	(0+2)
   0505 D0 83              1416 	pop	dph
   0507 D0 82              1417 	pop	dpl
   0509 D0 F0              1418 	pop	b
   050B D0 E0              1419 	pop	acc
   050D D0 22              1420 	pop	bits
   050F 32                 1421 	reti
                           1422 ;------------------------------------------------------------
                           1423 ;Allocation info for local variables in function 'timer2'
                           1424 ;------------------------------------------------------------
                           1425 ;a                         Allocated to registers r2 
                           1426 ;------------------------------------------------------------
                           1427 ;	main.c:369: void timer2() __interrupt 5 __using 2 {
                           1428 ;	-----------------------------------------
                           1429 ;	 function timer2
                           1430 ;	-----------------------------------------
   0510                    1431 _timer2:
                    0012   1432 	ar2 = 0x12
                    0013   1433 	ar3 = 0x13
                    0014   1434 	ar4 = 0x14
                    0015   1435 	ar5 = 0x15
                    0016   1436 	ar6 = 0x16
                    0017   1437 	ar7 = 0x17
                    0010   1438 	ar0 = 0x10
                    0011   1439 	ar1 = 0x11
   0510 C0 E0              1440 	push	acc
   0512 C0 F0              1441 	push	b
   0514 C0 D0              1442 	push	psw
   0516 75 D0 10           1443 	mov	psw,#0x10
                           1444 ;	main.c:372: TF2 = 0;	//溢出清0
   0519 C2 CF              1445 	clr	_TF2
                           1446 ;	main.c:373: t2InterruptTimes++;
   051B 05 1A              1447 	inc	_t2InterruptTimes
                           1448 ;	main.c:374: a = t2InterruptTimes % PWM_CYCLE;
   051D 75 F0 05           1449 	mov	b,#0x05
   0520 E5 1A              1450 	mov	a,_t2InterruptTimes
   0522 84                 1451 	div	ab
   0523 AA F0              1452 	mov	r2,b
                           1453 ;	main.c:375: if (t2InterruptTimes == CMD_TIME) {
   0525 74 14              1454 	mov	a,#0x14
   0527 B5 1A 08           1455 	cjne	a,_t2InterruptTimes,00102$
                           1456 ;	main.c:376: t2InterruptTimes = 0;
   052A 75 1A 00           1457 	mov	_t2InterruptTimes,#0x00
                           1458 ;	main.c:377: CAR = STOP;
   052D 75 80 FF           1459 	mov	_P0,#0xFF
                           1460 ;	main.c:378: TR2 = 0;	//溢出20次，说明执行了蓝牙发送的指令20ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
   0530 C2 CA              1461 	clr	_TR2
   0532                    1462 00102$:
                           1463 ;	main.c:380: if (a <= speed) {
   0532 E5 18              1464 	mov	a,_speed
   0534 B5 12 00           1465 	cjne	a,ar2,00112$
   0537                    1466 00112$:
   0537 40 04              1467 	jc	00104$
                           1468 ;	main.c:381: M_PWM = 1;
   0539 D2 B6              1469 	setb	_P3_6
   053B 80 02              1470 	sjmp	00106$
   053D                    1471 00104$:
                           1472 ;	main.c:383: M_PWM = 0;
   053D C2 B6              1473 	clr	_P3_6
   053F                    1474 00106$:
   053F D0 D0              1475 	pop	psw
   0541 D0 F0              1476 	pop	b
   0543 D0 E0              1477 	pop	acc
   0545 32                 1478 	reti
                           1479 ;	eliminated unneeded push/pop dpl
                           1480 ;	eliminated unneeded push/pop dph
                           1481 ;------------------------------------------------------------
                           1482 ;Allocation info for local variables in function 'main'
                           1483 ;------------------------------------------------------------
                           1484 ;------------------------------------------------------------
                           1485 ;	main.c:387: void main() {
                           1486 ;	-----------------------------------------
                           1487 ;	 function main
                           1488 ;	-----------------------------------------
   0546                    1489 _main:
                    0002   1490 	ar2 = 0x02
                    0003   1491 	ar3 = 0x03
                    0004   1492 	ar4 = 0x04
                    0005   1493 	ar5 = 0x05
                    0006   1494 	ar6 = 0x06
                    0007   1495 	ar7 = 0x07
                    0000   1496 	ar0 = 0x00
                    0001   1497 	ar1 = 0x01
                           1498 ;	main.c:389: initInterrupt();
   0546 12 04 1E           1499 	lcall	_initInterrupt
                           1500 ;	main.c:390: initTimer0();
   0549 12 04 2B           1501 	lcall	_initTimer0
                           1502 ;	main.c:391: initSerial();
   054C 12 04 4E           1503 	lcall	_initSerial
                           1504 ;	main.c:392: initTimer2();
   054F 12 04 62           1505 	lcall	_initTimer2
                           1506 ;	main.c:393: while(1) {
   0552                    1507 00104$:
                           1508 ;	main.c:394: sensorTrigger();
   0552 12 00 CE           1509 	lcall	_sensorTrigger
                           1510 ;	main.c:395: if (SWITCH_SELF_CONTROL) {
   0555 30 90 FA           1511 	jnb	_P1_0,00104$
                           1512 ;	main.c:396: ledStatus(0);
   0558 75 82 00           1513 	mov	dpl,#0x00
   055B 12 00 DD           1514 	lcall	_ledStatus
   055E 80 F2              1515 	sjmp	00104$
                           1516 	.area CSEG    (CODE)
                           1517 	.area CONST   (CODE)
   0D5F                    1518 _seg:
   0D5F C0                 1519 	.db #0xC0	; 192
   0D60 F9                 1520 	.db #0xF9	; 249
   0D61 A4                 1521 	.db #0xA4	; 164
   0D62 B0                 1522 	.db #0xB0	; 176
   0D63 99                 1523 	.db #0x99	; 153
   0D64 92                 1524 	.db #0x92	; 146
   0D65 82                 1525 	.db #0x82	; 130
   0D66 F8                 1526 	.db #0xF8	; 248
   0D67 80                 1527 	.db #0x80	; 128
   0D68 90                 1528 	.db #0x90	; 144
   0D69 88                 1529 	.db #0x88	; 136
   0D6A 83                 1530 	.db #0x83	; 131
   0D6B C6                 1531 	.db #0xC6	; 198
   0D6C A1                 1532 	.db #0xA1	; 161
   0D6D 86                 1533 	.db #0x86	; 134
   0D6E 8E                 1534 	.db #0x8E	; 142
   0D6F                    1535 __str_0:
   0D6F 6F 76 65 72 73 74  1536 	.ascii "overstep"
        65 70
   0D77 0A                 1537 	.db 0x0A
   0D78 00                 1538 	.db 0x00
   0D79                    1539 __str_1:
   0D79 64 69 73 74 61 6E  1540 	.ascii "distance = %dcm"
        63 65 20 3D 20 25
        64 63 6D
   0D88 0A                 1541 	.db 0x0A
   0D89 00                 1542 	.db 0x00
   0D8A                    1543 __str_2:
   0D8A 73 65 6C 66 20 63  1544 	.ascii "self control"
        6F 6E 74 72 6F 6C
   0D96 0A                 1545 	.db 0x0A
   0D97 00                 1546 	.db 0x00
                           1547 	.area XINIT   (CODE)
                           1548 	.area CABS    (ABS,CODE)
