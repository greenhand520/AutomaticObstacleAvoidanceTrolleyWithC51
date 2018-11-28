                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Wed Nov 28 21:27:17 2018
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
                    0080    171 G$P0$0$0 == 0x0080
                    0080    172 _P0	=	0x0080
                    0081    173 G$SP$0$0 == 0x0081
                    0081    174 _SP	=	0x0081
                    0082    175 G$DPL$0$0 == 0x0082
                    0082    176 _DPL	=	0x0082
                    0083    177 G$DPH$0$0 == 0x0083
                    0083    178 _DPH	=	0x0083
                    0087    179 G$PCON$0$0 == 0x0087
                    0087    180 _PCON	=	0x0087
                    0088    181 G$TCON$0$0 == 0x0088
                    0088    182 _TCON	=	0x0088
                    0089    183 G$TMOD$0$0 == 0x0089
                    0089    184 _TMOD	=	0x0089
                    008A    185 G$TL0$0$0 == 0x008a
                    008A    186 _TL0	=	0x008a
                    008B    187 G$TL1$0$0 == 0x008b
                    008B    188 _TL1	=	0x008b
                    008C    189 G$TH0$0$0 == 0x008c
                    008C    190 _TH0	=	0x008c
                    008D    191 G$TH1$0$0 == 0x008d
                    008D    192 _TH1	=	0x008d
                    0090    193 G$P1$0$0 == 0x0090
                    0090    194 _P1	=	0x0090
                    0098    195 G$SCON$0$0 == 0x0098
                    0098    196 _SCON	=	0x0098
                    0099    197 G$SBUF$0$0 == 0x0099
                    0099    198 _SBUF	=	0x0099
                    00A0    199 G$P2$0$0 == 0x00a0
                    00A0    200 _P2	=	0x00a0
                    00A8    201 G$IE$0$0 == 0x00a8
                    00A8    202 _IE	=	0x00a8
                    00B0    203 G$P3$0$0 == 0x00b0
                    00B0    204 _P3	=	0x00b0
                    00B8    205 G$IP$0$0 == 0x00b8
                    00B8    206 _IP	=	0x00b8
                    00C8    207 G$T2CON$0$0 == 0x00c8
                    00C8    208 _T2CON	=	0x00c8
                    00C9    209 G$T2MOD$0$0 == 0x00c9
                    00C9    210 _T2MOD	=	0x00c9
                    00CA    211 G$RCAP2L$0$0 == 0x00ca
                    00CA    212 _RCAP2L	=	0x00ca
                    00CB    213 G$RCAP2H$0$0 == 0x00cb
                    00CB    214 _RCAP2H	=	0x00cb
                    00CC    215 G$TL2$0$0 == 0x00cc
                    00CC    216 _TL2	=	0x00cc
                    00CD    217 G$TH2$0$0 == 0x00cd
                    00CD    218 _TH2	=	0x00cd
                    00D0    219 G$PSW$0$0 == 0x00d0
                    00D0    220 _PSW	=	0x00d0
                    00E0    221 G$ACC$0$0 == 0x00e0
                    00E0    222 _ACC	=	0x00e0
                    00E0    223 G$A$0$0 == 0x00e0
                    00E0    224 _A	=	0x00e0
                    00F0    225 G$B$0$0 == 0x00f0
                    00F0    226 _B	=	0x00f0
                            227 ;--------------------------------------------------------
                            228 ; special function bits
                            229 ;--------------------------------------------------------
                            230 	.area RSEG    (ABS,DATA)
   0000                     231 	.org 0x0000
                    0080    232 G$P0_0$0$0 == 0x0080
                    0080    233 _P0_0	=	0x0080
                    0081    234 G$P0_1$0$0 == 0x0081
                    0081    235 _P0_1	=	0x0081
                    0082    236 G$P0_2$0$0 == 0x0082
                    0082    237 _P0_2	=	0x0082
                    0083    238 G$P0_3$0$0 == 0x0083
                    0083    239 _P0_3	=	0x0083
                    0084    240 G$P0_4$0$0 == 0x0084
                    0084    241 _P0_4	=	0x0084
                    0085    242 G$P0_5$0$0 == 0x0085
                    0085    243 _P0_5	=	0x0085
                    0086    244 G$P0_6$0$0 == 0x0086
                    0086    245 _P0_6	=	0x0086
                    0087    246 G$P0_7$0$0 == 0x0087
                    0087    247 _P0_7	=	0x0087
                    0088    248 G$IT0$0$0 == 0x0088
                    0088    249 _IT0	=	0x0088
                    0089    250 G$IE0$0$0 == 0x0089
                    0089    251 _IE0	=	0x0089
                    008A    252 G$IT1$0$0 == 0x008a
                    008A    253 _IT1	=	0x008a
                    008B    254 G$IE1$0$0 == 0x008b
                    008B    255 _IE1	=	0x008b
                    008C    256 G$TR0$0$0 == 0x008c
                    008C    257 _TR0	=	0x008c
                    008D    258 G$TF0$0$0 == 0x008d
                    008D    259 _TF0	=	0x008d
                    008E    260 G$TR1$0$0 == 0x008e
                    008E    261 _TR1	=	0x008e
                    008F    262 G$TF1$0$0 == 0x008f
                    008F    263 _TF1	=	0x008f
                    0090    264 G$P1_0$0$0 == 0x0090
                    0090    265 _P1_0	=	0x0090
                    0091    266 G$P1_1$0$0 == 0x0091
                    0091    267 _P1_1	=	0x0091
                    0092    268 G$P1_2$0$0 == 0x0092
                    0092    269 _P1_2	=	0x0092
                    0093    270 G$P1_3$0$0 == 0x0093
                    0093    271 _P1_3	=	0x0093
                    0094    272 G$P1_4$0$0 == 0x0094
                    0094    273 _P1_4	=	0x0094
                    0095    274 G$P1_5$0$0 == 0x0095
                    0095    275 _P1_5	=	0x0095
                    0096    276 G$P1_6$0$0 == 0x0096
                    0096    277 _P1_6	=	0x0096
                    0097    278 G$P1_7$0$0 == 0x0097
                    0097    279 _P1_7	=	0x0097
                    0090    280 G$T2$0$0 == 0x0090
                    0090    281 _T2	=	0x0090
                    0091    282 G$T2EX$0$0 == 0x0091
                    0091    283 _T2EX	=	0x0091
                    0098    284 G$RI$0$0 == 0x0098
                    0098    285 _RI	=	0x0098
                    0099    286 G$TI$0$0 == 0x0099
                    0099    287 _TI	=	0x0099
                    009A    288 G$RB8$0$0 == 0x009a
                    009A    289 _RB8	=	0x009a
                    009B    290 G$TB8$0$0 == 0x009b
                    009B    291 _TB8	=	0x009b
                    009C    292 G$REN$0$0 == 0x009c
                    009C    293 _REN	=	0x009c
                    009D    294 G$SM2$0$0 == 0x009d
                    009D    295 _SM2	=	0x009d
                    009E    296 G$SM1$0$0 == 0x009e
                    009E    297 _SM1	=	0x009e
                    009F    298 G$SM0$0$0 == 0x009f
                    009F    299 _SM0	=	0x009f
                    00A0    300 G$P2_0$0$0 == 0x00a0
                    00A0    301 _P2_0	=	0x00a0
                    00A1    302 G$P2_1$0$0 == 0x00a1
                    00A1    303 _P2_1	=	0x00a1
                    00A2    304 G$P2_2$0$0 == 0x00a2
                    00A2    305 _P2_2	=	0x00a2
                    00A3    306 G$P2_3$0$0 == 0x00a3
                    00A3    307 _P2_3	=	0x00a3
                    00A4    308 G$P2_4$0$0 == 0x00a4
                    00A4    309 _P2_4	=	0x00a4
                    00A5    310 G$P2_5$0$0 == 0x00a5
                    00A5    311 _P2_5	=	0x00a5
                    00A6    312 G$P2_6$0$0 == 0x00a6
                    00A6    313 _P2_6	=	0x00a6
                    00A7    314 G$P2_7$0$0 == 0x00a7
                    00A7    315 _P2_7	=	0x00a7
                    00A8    316 G$EX0$0$0 == 0x00a8
                    00A8    317 _EX0	=	0x00a8
                    00A9    318 G$ET0$0$0 == 0x00a9
                    00A9    319 _ET0	=	0x00a9
                    00AA    320 G$EX1$0$0 == 0x00aa
                    00AA    321 _EX1	=	0x00aa
                    00AB    322 G$ET1$0$0 == 0x00ab
                    00AB    323 _ET1	=	0x00ab
                    00AC    324 G$ES$0$0 == 0x00ac
                    00AC    325 _ES	=	0x00ac
                    00AD    326 G$ET2$0$0 == 0x00ad
                    00AD    327 _ET2	=	0x00ad
                    00AF    328 G$EA$0$0 == 0x00af
                    00AF    329 _EA	=	0x00af
                    00B0    330 G$P3_0$0$0 == 0x00b0
                    00B0    331 _P3_0	=	0x00b0
                    00B1    332 G$P3_1$0$0 == 0x00b1
                    00B1    333 _P3_1	=	0x00b1
                    00B2    334 G$P3_2$0$0 == 0x00b2
                    00B2    335 _P3_2	=	0x00b2
                    00B3    336 G$P3_3$0$0 == 0x00b3
                    00B3    337 _P3_3	=	0x00b3
                    00B4    338 G$P3_4$0$0 == 0x00b4
                    00B4    339 _P3_4	=	0x00b4
                    00B5    340 G$P3_5$0$0 == 0x00b5
                    00B5    341 _P3_5	=	0x00b5
                    00B6    342 G$P3_6$0$0 == 0x00b6
                    00B6    343 _P3_6	=	0x00b6
                    00B7    344 G$P3_7$0$0 == 0x00b7
                    00B7    345 _P3_7	=	0x00b7
                    00B0    346 G$RXD$0$0 == 0x00b0
                    00B0    347 _RXD	=	0x00b0
                    00B1    348 G$TXD$0$0 == 0x00b1
                    00B1    349 _TXD	=	0x00b1
                    00B2    350 G$INT0$0$0 == 0x00b2
                    00B2    351 _INT0	=	0x00b2
                    00B3    352 G$INT1$0$0 == 0x00b3
                    00B3    353 _INT1	=	0x00b3
                    00B4    354 G$T0$0$0 == 0x00b4
                    00B4    355 _T0	=	0x00b4
                    00B5    356 G$T1$0$0 == 0x00b5
                    00B5    357 _T1	=	0x00b5
                    00B6    358 G$WR$0$0 == 0x00b6
                    00B6    359 _WR	=	0x00b6
                    00B7    360 G$RD$0$0 == 0x00b7
                    00B7    361 _RD	=	0x00b7
                    00B8    362 G$PX0$0$0 == 0x00b8
                    00B8    363 _PX0	=	0x00b8
                    00B9    364 G$PT0$0$0 == 0x00b9
                    00B9    365 _PT0	=	0x00b9
                    00BA    366 G$PX1$0$0 == 0x00ba
                    00BA    367 _PX1	=	0x00ba
                    00BB    368 G$PT1$0$0 == 0x00bb
                    00BB    369 _PT1	=	0x00bb
                    00BC    370 G$PS$0$0 == 0x00bc
                    00BC    371 _PS	=	0x00bc
                    00BD    372 G$PT2$0$0 == 0x00bd
                    00BD    373 _PT2	=	0x00bd
                    00C8    374 G$T2CON_0$0$0 == 0x00c8
                    00C8    375 _T2CON_0	=	0x00c8
                    00C9    376 G$T2CON_1$0$0 == 0x00c9
                    00C9    377 _T2CON_1	=	0x00c9
                    00CA    378 G$T2CON_2$0$0 == 0x00ca
                    00CA    379 _T2CON_2	=	0x00ca
                    00CB    380 G$T2CON_3$0$0 == 0x00cb
                    00CB    381 _T2CON_3	=	0x00cb
                    00CC    382 G$T2CON_4$0$0 == 0x00cc
                    00CC    383 _T2CON_4	=	0x00cc
                    00CD    384 G$T2CON_5$0$0 == 0x00cd
                    00CD    385 _T2CON_5	=	0x00cd
                    00CE    386 G$T2CON_6$0$0 == 0x00ce
                    00CE    387 _T2CON_6	=	0x00ce
                    00CF    388 G$T2CON_7$0$0 == 0x00cf
                    00CF    389 _T2CON_7	=	0x00cf
                    00C8    390 G$CP_RL2$0$0 == 0x00c8
                    00C8    391 _CP_RL2	=	0x00c8
                    00C9    392 G$C_T2$0$0 == 0x00c9
                    00C9    393 _C_T2	=	0x00c9
                    00CA    394 G$TR2$0$0 == 0x00ca
                    00CA    395 _TR2	=	0x00ca
                    00CB    396 G$EXEN2$0$0 == 0x00cb
                    00CB    397 _EXEN2	=	0x00cb
                    00CC    398 G$TCLK$0$0 == 0x00cc
                    00CC    399 _TCLK	=	0x00cc
                    00CD    400 G$RCLK$0$0 == 0x00cd
                    00CD    401 _RCLK	=	0x00cd
                    00CE    402 G$EXF2$0$0 == 0x00ce
                    00CE    403 _EXF2	=	0x00ce
                    00CF    404 G$TF2$0$0 == 0x00cf
                    00CF    405 _TF2	=	0x00cf
                    00D0    406 G$P$0$0 == 0x00d0
                    00D0    407 _P	=	0x00d0
                    00D1    408 G$FL$0$0 == 0x00d1
                    00D1    409 _FL	=	0x00d1
                    00D2    410 G$OV$0$0 == 0x00d2
                    00D2    411 _OV	=	0x00d2
                    00D3    412 G$RS0$0$0 == 0x00d3
                    00D3    413 _RS0	=	0x00d3
                    00D4    414 G$RS1$0$0 == 0x00d4
                    00D4    415 _RS1	=	0x00d4
                    00D5    416 G$F0$0$0 == 0x00d5
                    00D5    417 _F0	=	0x00d5
                    00D6    418 G$AC$0$0 == 0x00d6
                    00D6    419 _AC	=	0x00d6
                    00D7    420 G$CY$0$0 == 0x00d7
                    00D7    421 _CY	=	0x00d7
                            422 ;--------------------------------------------------------
                            423 ; overlayable register banks
                            424 ;--------------------------------------------------------
                            425 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     426 	.ds 8
                            427 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     428 	.ds 8
                            429 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     430 	.ds 8
                            431 ;--------------------------------------------------------
                            432 ; overlayable bit register bank
                            433 ;--------------------------------------------------------
                            434 	.area BIT_BANK	(REL,OVR,DATA)
   0022                     435 bits:
   0022                     436 	.ds 1
                    8000    437 	b0 = bits[0]
                    8100    438 	b1 = bits[1]
                    8200    439 	b2 = bits[2]
                    8300    440 	b3 = bits[3]
                    8400    441 	b4 = bits[4]
                    8500    442 	b5 = bits[5]
                    8600    443 	b6 = bits[6]
                    8700    444 	b7 = bits[7]
                            445 ;--------------------------------------------------------
                            446 ; internal ram data
                            447 ;--------------------------------------------------------
                            448 	.area DSEG    (DATA)
                    0000    449 G$speed$0$0==.
   0018                     450 _speed::
   0018                     451 	.ds 1
                    0001    452 G$t0InterruptTimes$0$0==.
   0019                     453 _t0InterruptTimes::
   0019                     454 	.ds 1
                    0002    455 G$t2InterruptTimes$0$0==.
   001A                     456 _t2InterruptTimes::
   001A                     457 	.ds 1
                    0003    458 G$angle$0$0==.
   001B                     459 _angle::
   001B                     460 	.ds 1
                    0004    461 G$timer0For$0$0==.
   001C                     462 _timer0For::
   001C                     463 	.ds 1
                            464 ;--------------------------------------------------------
                            465 ; overlayable items in internal ram 
                            466 ;--------------------------------------------------------
                            467 	.area OSEG    (OVR,DATA)
                            468 ;--------------------------------------------------------
                            469 ; Stack segment in internal ram 
                            470 ;--------------------------------------------------------
                            471 	.area	SSEG	(DATA)
   0044                     472 __start__stack:
   0044                     473 	.ds	1
                            474 
                            475 ;--------------------------------------------------------
                            476 ; indirectly addressable internal ram data
                            477 ;--------------------------------------------------------
                            478 	.area ISEG    (DATA)
                            479 ;--------------------------------------------------------
                            480 ; absolute internal ram data
                            481 ;--------------------------------------------------------
                            482 	.area IABS    (ABS,DATA)
                            483 	.area IABS    (ABS,DATA)
                            484 ;--------------------------------------------------------
                            485 ; bit data
                            486 ;--------------------------------------------------------
                            487 	.area BSEG    (BIT)
                    0000    488 G$isOverstep$0$0==.
   0000                     489 _isOverstep::
   0000                     490 	.ds 1
                            491 ;--------------------------------------------------------
                            492 ; paged external ram data
                            493 ;--------------------------------------------------------
                            494 	.area PSEG    (PAG,XDATA)
                            495 ;--------------------------------------------------------
                            496 ; external ram data
                            497 ;--------------------------------------------------------
                            498 	.area XSEG    (XDATA)
                            499 ;--------------------------------------------------------
                            500 ; absolute external ram data
                            501 ;--------------------------------------------------------
                            502 	.area XABS    (ABS,XDATA)
                            503 ;--------------------------------------------------------
                            504 ; external initialized ram data
                            505 ;--------------------------------------------------------
                            506 	.area XISEG   (XDATA)
                            507 	.area HOME    (CODE)
                            508 	.area GSINIT0 (CODE)
                            509 	.area GSINIT1 (CODE)
                            510 	.area GSINIT2 (CODE)
                            511 	.area GSINIT3 (CODE)
                            512 	.area GSINIT4 (CODE)
                            513 	.area GSINIT5 (CODE)
                            514 	.area GSINIT  (CODE)
                            515 	.area GSFINAL (CODE)
                            516 	.area CSEG    (CODE)
                            517 ;--------------------------------------------------------
                            518 ; interrupt vector 
                            519 ;--------------------------------------------------------
                            520 	.area HOME    (CODE)
   0000                     521 __interrupt_vect:
   0000 02 00 33            522 	ljmp	__sdcc_gsinit_startup
   0003 32                  523 	reti
   0004                     524 	.ds	7
   000B 02 04 70            525 	ljmp	_timer0
   000E                     526 	.ds	5
   0013 02 02 63            527 	ljmp	_selfControl
   0016                     528 	.ds	5
   001B 32                  529 	reti
   001C                     530 	.ds	7
   0023 02 04 BA            531 	ljmp	_serial
   0026                     532 	.ds	5
   002B 02 05 04            533 	ljmp	_timer2
                            534 ;--------------------------------------------------------
                            535 ; global & static initialisations
                            536 ;--------------------------------------------------------
                            537 	.area HOME    (CODE)
                            538 	.area GSINIT  (CODE)
                            539 	.area GSFINAL (CODE)
                            540 	.area GSINIT  (CODE)
                            541 	.globl __sdcc_gsinit_startup
                            542 	.globl __sdcc_program_startup
                            543 	.globl __start__stack
                            544 	.globl __mcs51_genXINIT
                            545 	.globl __mcs51_genXRAMCLEAR
                            546 	.globl __mcs51_genRAMCLEAR
                    0000    547 	G$main$0$0 ==.
                    0000    548 	C$main.c$44$1$1 ==.
                            549 ;	../main.c:44: uchar speed = 5;	//小车速度
   008C 75 18 05            550 	mov	_speed,#0x05
                    0003    551 	G$main$0$0 ==.
                    0003    552 	C$main.c$49$1$1 ==.
                            553 ;	../main.c:49: __bit isOverstep = 0;	//距离过远，超出测量范围
   008F C2 00               554 	clr	_isOverstep
                            555 	.area GSFINAL (CODE)
   0091 02 00 2E            556 	ljmp	__sdcc_program_startup
                            557 ;--------------------------------------------------------
                            558 ; Home
                            559 ;--------------------------------------------------------
                            560 	.area HOME    (CODE)
                            561 	.area HOME    (CODE)
   002E                     562 __sdcc_program_startup:
   002E 12 05 3A            563 	lcall	_main
                            564 ;	return from main will lock up
   0031 80 FE               565 	sjmp .
                            566 ;--------------------------------------------------------
                            567 ; code
                            568 ;--------------------------------------------------------
                            569 	.area CSEG    (CODE)
                            570 ;------------------------------------------------------------
                            571 ;Allocation info for local variables in function 'delay'
                            572 ;------------------------------------------------------------
                            573 ;n                         Allocated to registers 
                            574 ;i                         Allocated to registers r2 r3 
                            575 ;j                         Allocated to registers r4 r5 
                            576 ;------------------------------------------------------------
                    0000    577 	G$delay$0$0 ==.
                    0000    578 	C$main.c$52$0$0 ==.
                            579 ;	../main.c:52: void delay(uint n){
                            580 ;	-----------------------------------------
                            581 ;	 function delay
                            582 ;	-----------------------------------------
   0094                     583 _delay:
                    0002    584 	ar2 = 0x02
                    0003    585 	ar3 = 0x03
                    0004    586 	ar4 = 0x04
                    0005    587 	ar5 = 0x05
                    0006    588 	ar6 = 0x06
                    0007    589 	ar7 = 0x07
                    0000    590 	ar0 = 0x00
                    0001    591 	ar1 = 0x01
   0094 AA 82               592 	mov	r2,dpl
   0096 AB 83               593 	mov	r3,dph
                    0004    594 	C$main.c$54$1$1 ==.
                            595 ;	../main.c:54: for(i=n;i>0;i--){
   0098                     596 00105$:
   0098 EA                  597 	mov	a,r2
   0099 4B                  598 	orl	a,r3
   009A 60 04               599 	jz	00111$
   009C 7C 01               600 	mov	r4,#0x01
   009E 80 02               601 	sjmp	00112$
   00A0                     602 00111$:
   00A0 7C 00               603 	mov	r4,#0x00
   00A2                     604 00112$:
   00A2 EC                  605 	mov	a,r4
   00A3 60 1F               606 	jz	00109$
                    0011    607 	C$main.c$55$2$2 ==.
                            608 ;	../main.c:55: for(j=112;j>0;j--);
   00A5 7C 70               609 	mov	r4,#0x70
   00A7 7D 00               610 	mov	r5,#0x00
   00A9                     611 00101$:
   00A9 EC                  612 	mov	a,r4
   00AA 4D                  613 	orl	a,r5
   00AB 60 04               614 	jz	00113$
   00AD 7E 01               615 	mov	r6,#0x01
   00AF 80 02               616 	sjmp	00114$
   00B1                     617 00113$:
   00B1 7E 00               618 	mov	r6,#0x00
   00B3                     619 00114$:
   00B3 EE                  620 	mov	a,r6
   00B4 60 07               621 	jz	00107$
   00B6 1C                  622 	dec	r4
   00B7 BC FF EF            623 	cjne	r4,#0xff,00101$
   00BA 1D                  624 	dec	r5
   00BB 80 EC               625 	sjmp	00101$
   00BD                     626 00107$:
                    0029    627 	C$main.c$54$1$1 ==.
                            628 ;	../main.c:54: for(i=n;i>0;i--){
   00BD 1A                  629 	dec	r2
   00BE BA FF 01            630 	cjne	r2,#0xff,00125$
   00C1 1B                  631 	dec	r3
   00C2                     632 00125$:
   00C2 80 D4               633 	sjmp	00105$
   00C4                     634 00109$:
                    0030    635 	C$main.c$57$1$1 ==.
                    0030    636 	XG$delay$0$0 ==.
   00C4 22                  637 	ret
                            638 ;------------------------------------------------------------
                            639 ;Allocation info for local variables in function 'putchar'
                            640 ;------------------------------------------------------------
                            641 ;c                         Allocated to registers 
                            642 ;------------------------------------------------------------
                    0031    643 	G$putchar$0$0 ==.
                    0031    644 	C$main.c$60$1$1 ==.
                            645 ;	../main.c:60: void putchar(char c) {
                            646 ;	-----------------------------------------
                            647 ;	 function putchar
                            648 ;	-----------------------------------------
   00C5                     649 _putchar:
   00C5 85 82 99            650 	mov	_SBUF,dpl
                    0034    651 	C$main.c$62$1$1 ==.
                            652 ;	../main.c:62: while(!TI);
   00C8                     653 00101$:
                    0034    654 	C$main.c$63$1$1 ==.
                            655 ;	../main.c:63: TI = 0;
   00C8 10 99 02            656 	jbc	_TI,00108$
   00CB 80 FB               657 	sjmp	00101$
   00CD                     658 00108$:
                    0039    659 	C$main.c$64$1$1 ==.
                    0039    660 	XG$putchar$0$0 ==.
   00CD 22                  661 	ret
                            662 ;------------------------------------------------------------
                            663 ;Allocation info for local variables in function 'sensorTrigger'
                            664 ;------------------------------------------------------------
                            665 ;------------------------------------------------------------
                    003A    666 	G$sensorTrigger$0$0 ==.
                    003A    667 	C$main.c$67$1$1 ==.
                            668 ;	../main.c:67: void sensorTrigger() {
                            669 ;	-----------------------------------------
                            670 ;	 function sensorTrigger
                            671 ;	-----------------------------------------
   00CE                     672 _sensorTrigger:
                    003A    673 	C$main.c$68$1$1 ==.
                            674 ;	../main.c:68: if(!(BACK_SENSER && FRONT_SENSER && LEFT_SENSER&& RIGHT_SENSER)) {
   00CE 30 95 09            675 	jnb	_P1_5,00101$
   00D1 30 94 06            676 	jnb	_P1_4,00101$
   00D4 30 96 03            677 	jnb	_P1_6,00101$
   00D7 20 97 02            678 	jb	_P1_7,00106$
   00DA                     679 00101$:
                    0046    680 	C$main.c$69$2$2 ==.
                            681 ;	../main.c:69: SWITCH_SELF_CONTROL = 0;
   00DA C2 90               682 	clr	_P1_0
   00DC                     683 00106$:
                    0048    684 	C$main.c$71$2$1 ==.
                    0048    685 	XG$sensorTrigger$0$0 ==.
   00DC 22                  686 	ret
                            687 ;------------------------------------------------------------
                            688 ;Allocation info for local variables in function 'ledStatus'
                            689 ;------------------------------------------------------------
                            690 ;s                         Allocated to registers r2 
                            691 ;------------------------------------------------------------
                    0049    692 	G$ledStatus$0$0 ==.
                    0049    693 	C$main.c$75$2$1 ==.
                            694 ;	../main.c:75: void ledStatus(uchar s) {
                            695 ;	-----------------------------------------
                            696 ;	 function ledStatus
                            697 ;	-----------------------------------------
   00DD                     698 _ledStatus:
   00DD AA 82               699 	mov	r2,dpl
                    004B    700 	C$main.c$76$1$1 ==.
                            701 ;	../main.c:76: switch(s) {
   00DF BA 00 02            702 	cjne	r2,#0x00,00110$
   00E2 80 0A               703 	sjmp	00101$
   00E4                     704 00110$:
   00E4 BA 01 02            705 	cjne	r2,#0x01,00111$
   00E7 80 0C               706 	sjmp	00102$
   00E9                     707 00111$:
                    0055    708 	C$main.c$77$2$2 ==.
                            709 ;	../main.c:77: case(0):
   00E9 BA 02 16            710 	cjne	r2,#0x02,00105$
   00EC 80 0E               711 	sjmp	00103$
   00EE                     712 00101$:
                    005A    713 	C$main.c$78$2$2 ==.
                            714 ;	../main.c:78: STOP_RED_LED = 0;	//停止指示灯亮
   00EE C2 91               715 	clr	_P1_1
                    005C    716 	C$main.c$79$2$2 ==.
                            717 ;	../main.c:79: BT_BLUE_LED = 1;
   00F0 D2 92               718 	setb	_P1_2
                    005E    719 	C$main.c$80$2$2 ==.
                            720 ;	../main.c:80: SELF_GREEN_LED = 1;
   00F2 D2 93               721 	setb	_P1_3
                    0060    722 	C$main.c$81$2$2 ==.
                            723 ;	../main.c:81: break;
                    0060    724 	C$main.c$82$2$2 ==.
                            725 ;	../main.c:82: case(1):
   00F4 22                  726 	ret
   00F5                     727 00102$:
                    0061    728 	C$main.c$83$2$2 ==.
                            729 ;	../main.c:83: STOP_RED_LED = 1;
   00F5 D2 91               730 	setb	_P1_1
                    0063    731 	C$main.c$84$2$2 ==.
                            732 ;	../main.c:84: BT_BLUE_LED = 1;	  
   00F7 D2 92               733 	setb	_P1_2
                    0065    734 	C$main.c$85$2$2 ==.
                            735 ;	../main.c:85: SELF_GREEN_LED = 0;    //自控指示灯亮
   00F9 C2 93               736 	clr	_P1_3
                    0067    737 	C$main.c$86$2$2 ==.
                            738 ;	../main.c:86: break;
                    0067    739 	C$main.c$87$2$2 ==.
                            740 ;	../main.c:87: case(2):
   00FB 22                  741 	ret
   00FC                     742 00103$:
                    0068    743 	C$main.c$88$2$2 ==.
                            744 ;	../main.c:88: STOP_RED_LED = 1;
   00FC D2 91               745 	setb	_P1_1
                    006A    746 	C$main.c$89$2$2 ==.
                            747 ;	../main.c:89: SELF_GREEN_LED = 1;
   00FE D2 93               748 	setb	_P1_3
                    006C    749 	C$main.c$90$2$2 ==.
                            750 ;	../main.c:90: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
   0100 C2 92               751 	clr	_P1_2
                    006E    752 	C$main.c$92$1$1 ==.
                            753 ;	../main.c:92: }	
   0102                     754 00105$:
                    006E    755 	C$main.c$93$1$1 ==.
                    006E    756 	XG$ledStatus$0$0 ==.
   0102 22                  757 	ret
                            758 ;------------------------------------------------------------
                            759 ;Allocation info for local variables in function 'setTurnAngle'
                            760 ;------------------------------------------------------------
                            761 ;a                         Allocated to registers r2 
                            762 ;------------------------------------------------------------
                    006F    763 	G$setTurnAngle$0$0 ==.
                    006F    764 	C$main.c$96$1$1 ==.
                            765 ;	../main.c:96: void setTurnAngle(uchar a) {
                            766 ;	-----------------------------------------
                            767 ;	 function setTurnAngle
                            768 ;	-----------------------------------------
   0103                     769 _setTurnAngle:
   0103 AA 82               770 	mov	r2,dpl
                    0071    771 	C$main.c$98$1$1 ==.
                            772 ;	../main.c:98: switch(a) {
   0105 74 04               773 	mov	a,#0x04
   0107 B5 02 00            774 	cjne	a,ar2,00110$
   010A                     775 00110$:
   010A 40 2D               776 	jc	00106$
   010C EA                  777 	mov	a,r2
   010D 2A                  778 	add	a,r2
   010E 2A                  779 	add	a,r2
   010F 90 01 13            780 	mov	dptr,#00112$
   0112 73                  781 	jmp	@a+dptr
   0113                     782 00112$:
   0113 02 01 22            783 	ljmp	00101$
   0116 02 01 27            784 	ljmp	00102$
   0119 02 01 2C            785 	ljmp	00103$
   011C 02 01 31            786 	ljmp	00104$
   011F 02 01 36            787 	ljmp	00105$
                    008E    788 	C$main.c$100$2$2 ==.
                            789 ;	../main.c:100: case(STEER_S):angle = 3; break;
   0122                     790 00101$:
   0122 75 1B 03            791 	mov	_angle,#0x03
                    0091    792 	C$main.c$102$2$2 ==.
                            793 ;	../main.c:102: case(STEER_P45):angle = 4; break;
   0125 80 12               794 	sjmp	00106$
   0127                     795 00102$:
   0127 75 1B 04            796 	mov	_angle,#0x04
                    0096    797 	C$main.c$104$2$2 ==.
                            798 ;	../main.c:104: case(STEER_P90):angle = 5; break;
   012A 80 0D               799 	sjmp	00106$
   012C                     800 00103$:
   012C 75 1B 05            801 	mov	_angle,#0x05
                    009B    802 	C$main.c$106$2$2 ==.
                            803 ;	../main.c:106: case(STEER_N45):angle = 2; break;
   012F 80 08               804 	sjmp	00106$
   0131                     805 00104$:
   0131 75 1B 02            806 	mov	_angle,#0x02
                    00A0    807 	C$main.c$108$2$2 ==.
                            808 ;	../main.c:108: case(STEER_N90):angle = 1; break;
   0134 80 03               809 	sjmp	00106$
   0136                     810 00105$:
   0136 75 1B 01            811 	mov	_angle,#0x01
                    00A5    812 	C$main.c$109$1$1 ==.
                            813 ;	../main.c:109: }
   0139                     814 00106$:
                    00A5    815 	C$main.c$110$1$1 ==.
                            816 ;	../main.c:110: timer0For = 0;
   0139 75 1C 00            817 	mov	_timer0For,#0x00
                    00A8    818 	C$main.c$111$1$1 ==.
                            819 ;	../main.c:111: initTimer0();	
                    00A8    820 	C$main.c$112$1$1 ==.
                    00A8    821 	XG$setTurnAngle$0$0 ==.
   013C 02 04 2B            822 	ljmp	_initTimer0
                            823 ;------------------------------------------------------------
                            824 ;Allocation info for local variables in function 'steerTurn'
                            825 ;------------------------------------------------------------
                            826 ;------------------------------------------------------------
                    00AB    827 	G$steerTurn$0$0 ==.
                    00AB    828 	C$main.c$114$1$1 ==.
                            829 ;	../main.c:114: void steerTurn() {
                            830 ;	-----------------------------------------
                            831 ;	 function steerTurn
                            832 ;	-----------------------------------------
   013F                     833 _steerTurn:
                    00AB    834 	C$main.c$116$1$1 ==.
                            835 ;	../main.c:116: t0InterruptTimes++;
   013F 05 19               836 	inc	_t0InterruptTimes
                    00AD    837 	C$main.c$117$1$1 ==.
                            838 ;	../main.c:117: if (t0InterruptTimes > PWM_CYCLE) {
   0141 74 05               839 	mov	a,#0x05
   0143 B5 19 00            840 	cjne	a,_t0InterruptTimes,00110$
   0146                     841 00110$:
   0146 50 03               842 	jnc	00102$
                    00B4    843 	C$main.c$118$2$2 ==.
                            844 ;	../main.c:118: t0InterruptTimes = 0;
   0148 75 19 00            845 	mov	_t0InterruptTimes,#0x00
   014B                     846 00102$:
                    00B7    847 	C$main.c$121$1$1 ==.
                            848 ;	../main.c:121: if (t0InterruptTimes < angle) {
   014B E5 19               849 	mov	a,_t0InterruptTimes
   014D B5 1B 00            850 	cjne	a,_angle,00112$
   0150                     851 00112$:
   0150 50 04               852 	jnc	00104$
                    00BE    853 	C$main.c$122$2$3 ==.
                            854 ;	../main.c:122: STEER_PWM = 1;
   0152 D2 B2               855 	setb	_P3_2
   0154 80 02               856 	sjmp	00105$
   0156                     857 00104$:
                    00C2    858 	C$main.c$124$2$4 ==.
                            859 ;	../main.c:124: STEER_PWM = 0;
   0156 C2 B2               860 	clr	_P3_2
   0158                     861 00105$:
                    00C4    862 	C$main.c$126$1$1 ==.
                            863 ;	../main.c:126: startSR04();
                    00C4    864 	C$main.c$127$1$1 ==.
                    00C4    865 	XG$steerTurn$0$0 ==.
   0158 02 02 29            866 	ljmp	_startSR04
                            867 ;------------------------------------------------------------
                            868 ;Allocation info for local variables in function 'trigger'
                            869 ;------------------------------------------------------------
                            870 ;------------------------------------------------------------
                    00C7    871 	G$trigger$0$0 ==.
                    00C7    872 	C$main.c$130$1$1 ==.
                            873 ;	../main.c:130: void trigger()
                            874 ;	-----------------------------------------
                            875 ;	 function trigger
                            876 ;	-----------------------------------------
   015B                     877 _trigger:
                    00C7    878 	C$main.c$132$1$1 ==.
                            879 ;	../main.c:132: TRIG = 1;
   015B D2 B5               880 	setb	_P3_5
                    00C9    881 	C$main.c$134$1$1 ==.
                            882 ;	../main.c:134: __nop; __nop; __nop; __nop; __nop;
   015D 00                  883 	 nop 
   015E 00                  884 	 nop 
   015F 00                  885 	 nop 
   0160 00                  886 	 nop 
   0161 00                  887 	 nop 
                    00CE    888 	C$main.c$135$1$1 ==.
                            889 ;	../main.c:135: __nop; __nop; __nop; __nop; __nop;
   0162 00                  890 	 nop 
   0163 00                  891 	 nop 
   0164 00                  892 	 nop 
   0165 00                  893 	 nop 
   0166 00                  894 	 nop 
                    00D3    895 	C$main.c$136$1$1 ==.
                            896 ;	../main.c:136: __nop; __nop; __nop; __nop; __nop;
   0167 00                  897 	 nop 
   0168 00                  898 	 nop 
   0169 00                  899 	 nop 
   016A 00                  900 	 nop 
   016B 00                  901 	 nop 
                    00D8    902 	C$main.c$137$1$1 ==.
                            903 ;	../main.c:137: __nop; __nop; __nop; __nop; __nop;
   016C 00                  904 	 nop 
   016D 00                  905 	 nop 
   016E 00                  906 	 nop 
   016F 00                  907 	 nop 
   0170 00                  908 	 nop 
                    00DD    909 	C$main.c$138$1$1 ==.
                            910 ;	../main.c:138: TRIG = 0;
   0171 C2 B5               911 	clr	_P3_5
                    00DF    912 	C$main.c$139$1$1 ==.
                    00DF    913 	XG$trigger$0$0 ==.
   0173 22                  914 	ret
                            915 ;------------------------------------------------------------
                            916 ;Allocation info for local variables in function 'calculate'
                            917 ;------------------------------------------------------------
                            918 ;time                      Allocated to registers r2 
                            919 ;distance                  Allocated to registers r2 
                            920 ;------------------------------------------------------------
                    00E0    921 	G$calculate$0$0 ==.
                    00E0    922 	C$main.c$142$1$1 ==.
                            923 ;	../main.c:142: uchar calculate() {
                            924 ;	-----------------------------------------
                            925 ;	 function calculate
                            926 ;	-----------------------------------------
   0174                     927 _calculate:
                    00E0    928 	C$main.c$146$1$1 ==.
                            929 ;	../main.c:146: time = TH0 * 256 + TL0;
   0174 AA 8A               930 	mov	r2,_TL0
                    00E2    931 	C$main.c$148$1$1 ==.
                            932 ;	../main.c:148: TH0 = 0;
   0176 75 8C 00            933 	mov	_TH0,#0x00
                    00E5    934 	C$main.c$149$1$1 ==.
                            935 ;	../main.c:149: TL0 = 0;
   0179 75 8A 00            936 	mov	_TL0,#0x00
                    00E8    937 	C$main.c$150$1$1 ==.
                            938 ;	../main.c:150: time *= 1.085;
   017C 8A 82               939 	mov	dpl,r2
   017E 12 0C AD            940 	lcall	___uchar2fs
   0181 AB 82               941 	mov	r3,dpl
   0183 AC 83               942 	mov	r4,dph
   0185 AD F0               943 	mov	r5,b
   0187 FE                  944 	mov	r6,a
   0188 C0 03               945 	push	ar3
   018A C0 04               946 	push	ar4
   018C C0 05               947 	push	ar5
   018E C0 06               948 	push	ar6
   0190 90 E1 48            949 	mov	dptr,#0xE148
   0193 75 F0 8A            950 	mov	b,#0x8A
   0196 74 3F               951 	mov	a,#0x3F
   0198 12 05 54            952 	lcall	___fsmul
   019B AB 82               953 	mov	r3,dpl
   019D AC 83               954 	mov	r4,dph
   019F AD F0               955 	mov	r5,b
   01A1 FE                  956 	mov	r6,a
   01A2 E5 81               957 	mov	a,sp
   01A4 24 FC               958 	add	a,#0xfc
   01A6 F5 81               959 	mov	sp,a
   01A8 8B 82               960 	mov	dpl,r3
   01AA 8C 83               961 	mov	dph,r4
   01AC 8D F0               962 	mov	b,r5
   01AE EE                  963 	mov	a,r6
   01AF 12 0C B8            964 	lcall	___fs2uchar
                    011E    965 	C$main.c$153$1$1 ==.
                            966 ;	../main.c:153: distance = (time * 0.017);
   01B2 12 0C AD            967 	lcall	___uchar2fs
   01B5 AA 82               968 	mov	r2,dpl
   01B7 AB 83               969 	mov	r3,dph
   01B9 AC F0               970 	mov	r4,b
   01BB FD                  971 	mov	r5,a
   01BC C0 02               972 	push	ar2
   01BE C0 03               973 	push	ar3
   01C0 C0 04               974 	push	ar4
   01C2 C0 05               975 	push	ar5
   01C4 90 43 96            976 	mov	dptr,#0x4396
   01C7 75 F0 8B            977 	mov	b,#0x8B
   01CA 74 3C               978 	mov	a,#0x3C
   01CC 12 05 54            979 	lcall	___fsmul
   01CF AA 82               980 	mov	r2,dpl
   01D1 AB 83               981 	mov	r3,dph
   01D3 AC F0               982 	mov	r4,b
   01D5 FD                  983 	mov	r5,a
   01D6 E5 81               984 	mov	a,sp
   01D8 24 FC               985 	add	a,#0xfc
   01DA F5 81               986 	mov	sp,a
   01DC 8A 82               987 	mov	dpl,r2
   01DE 8B 83               988 	mov	dph,r3
   01E0 8C F0               989 	mov	b,r4
   01E2 ED                  990 	mov	a,r5
   01E3 12 0C B8            991 	lcall	___fs2uchar
   01E6 AA 82               992 	mov	r2,dpl
                    0154    993 	C$main.c$154$1$1 ==.
                            994 ;	../main.c:154: if(isOverstep) {
                    0154    995 	C$main.c$155$2$2 ==.
                            996 ;	../main.c:155: isOverstep = 0;
   01E8 10 00 02            997 	jbc	_isOverstep,00107$
   01EB 80 19               998 	sjmp	00102$
   01ED                     999 00107$:
                    0159   1000 	C$main.c$156$2$2 ==.
                           1001 ;	../main.c:156: SEG = 0xff;
   01ED 75 A0 FF           1002 	mov	_P2,#0xFF
                    015C   1003 	C$main.c$157$2$2 ==.
                           1004 ;	../main.c:157: printf("overstep\n");
   01F0 74 63              1005 	mov	a,#__str_0
   01F2 C0 E0              1006 	push	acc
   01F4 74 0D              1007 	mov	a,#(__str_0 >> 8)
   01F6 C0 E0              1008 	push	acc
   01F8 74 80              1009 	mov	a,#0x80
   01FA C0 E0              1010 	push	acc
   01FC 12 06 C2           1011 	lcall	_printf
   01FF 15 81              1012 	dec	sp
   0201 15 81              1013 	dec	sp
   0203 15 81              1014 	dec	sp
   0205 22                 1015 	ret
   0206                    1016 00102$:
                    0172   1017 	C$main.c$159$2$3 ==.
                           1018 ;	../main.c:159: SEG = seg[distance];
   0206 EA                 1019 	mov	a,r2
   0207 90 0D 53           1020 	mov	dptr,#_seg
   020A 93                 1021 	movc	a,@a+dptr
   020B F5 A0              1022 	mov	_P2,a
                    0179   1023 	C$main.c$160$2$3 ==.
                           1024 ;	../main.c:160: printf("distance = %dcm\n", distance);
   020D 7B 00              1025 	mov	r3,#0x00
   020F C0 02              1026 	push	ar2
   0211 C0 03              1027 	push	ar3
   0213 74 6D              1028 	mov	a,#__str_1
   0215 C0 E0              1029 	push	acc
   0217 74 0D              1030 	mov	a,#(__str_1 >> 8)
   0219 C0 E0              1031 	push	acc
   021B 74 80              1032 	mov	a,#0x80
   021D C0 E0              1033 	push	acc
   021F 12 06 C2           1034 	lcall	_printf
   0222 E5 81              1035 	mov	a,sp
   0224 24 FB              1036 	add	a,#0xfb
   0226 F5 81              1037 	mov	sp,a
                    0194   1038 	C$main.c$162$1$1 ==.
                    0194   1039 	XG$calculate$0$0 ==.
   0228 22                 1040 	ret
                           1041 ;------------------------------------------------------------
                           1042 ;Allocation info for local variables in function 'startSR04'
                           1043 ;------------------------------------------------------------
                           1044 ;------------------------------------------------------------
                    0195   1045 	G$startSR04$0$0 ==.
                    0195   1046 	C$main.c$165$1$1 ==.
                           1047 ;	../main.c:165: void startSR04() {
                           1048 ;	-----------------------------------------
                           1049 ;	 function startSR04
                           1050 ;	-----------------------------------------
   0229                    1051 _startSR04:
                    0195   1052 	C$main.c$167$1$1 ==.
                           1053 ;	../main.c:167: timer0For = 1;
   0229 75 1C 01           1054 	mov	_timer0For,#0x01
                    0198   1055 	C$main.c$168$1$1 ==.
                           1056 ;	../main.c:168: initTimer0();
   022C 12 04 2B           1057 	lcall	_initTimer0
                    019B   1058 	C$main.c$169$1$1 ==.
                           1059 ;	../main.c:169: trigger();
   022F 12 01 5B           1060 	lcall	_trigger
                    019E   1061 	C$main.c$170$1$1 ==.
                           1062 ;	../main.c:170: while(!ECHO);
   0232                    1063 00101$:
   0232 30 B4 FD           1064 	jnb	_P3_4,00101$
                    01A1   1065 	C$main.c$171$1$1 ==.
                           1066 ;	../main.c:171: TR0 = 1;
   0235 D2 8C              1067 	setb	_TR0
                    01A3   1068 	C$main.c$172$1$1 ==.
                           1069 ;	../main.c:172: while(ECHO);
   0237                    1070 00104$:
   0237 20 B4 FD           1071 	jb	_P3_4,00104$
                    01A6   1072 	C$main.c$173$1$1 ==.
                           1073 ;	../main.c:173: TR0 = 0;
   023A C2 8C              1074 	clr	_TR0
                    01A8   1075 	C$main.c$174$1$1 ==.
                           1076 ;	../main.c:174: calculate();
                    01A8   1077 	C$main.c$175$1$1 ==.
                    01A8   1078 	XG$startSR04$0$0 ==.
   023C 02 01 74           1079 	ljmp	_calculate
                           1080 ;------------------------------------------------------------
                           1081 ;Allocation info for local variables in function 'awayLEFTObs'
                           1082 ;------------------------------------------------------------
                           1083 ;------------------------------------------------------------
                    01AB   1084 	G$awayLEFTObs$0$0 ==.
                    01AB   1085 	C$main.c$178$1$1 ==.
                           1086 ;	../main.c:178: void awayLEFTObs() {
                           1087 ;	-----------------------------------------
                           1088 ;	 function awayLEFTObs
                           1089 ;	-----------------------------------------
   023F                    1090 _awayLEFTObs:
                    01AB   1091 	C$main.c$181$1$1 ==.
                           1092 ;	../main.c:181: CAR = FRONT_RIGHT;
   023F 75 80 DA           1093 	mov	_P0,#0xDA
                    01AE   1094 	C$main.c$182$1$1 ==.
                           1095 ;	../main.c:182: delay(700);
   0242 90 02 BC           1096 	mov	dptr,#0x02BC
                    01B1   1097 	C$main.c$183$1$1 ==.
                    01B1   1098 	XG$awayLEFTObs$0$0 ==.
   0245 02 00 94           1099 	ljmp	_delay
                           1100 ;------------------------------------------------------------
                           1101 ;Allocation info for local variables in function 'awayRightObs'
                           1102 ;------------------------------------------------------------
                           1103 ;------------------------------------------------------------
                    01B4   1104 	G$awayRightObs$0$0 ==.
                    01B4   1105 	C$main.c$186$1$1 ==.
                           1106 ;	../main.c:186: void awayRightObs() {
                           1107 ;	-----------------------------------------
                           1108 ;	 function awayRightObs
                           1109 ;	-----------------------------------------
   0248                    1110 _awayRightObs:
                    01B4   1111 	C$main.c$189$1$1 ==.
                           1112 ;	../main.c:189: CAR = FRONT_LEFT;
   0248 75 80 AD           1113 	mov	_P0,#0xAD
                    01B7   1114 	C$main.c$190$1$1 ==.
                           1115 ;	../main.c:190: delay(700);
   024B 90 02 BC           1116 	mov	dptr,#0x02BC
                    01BA   1117 	C$main.c$192$1$1 ==.
                    01BA   1118 	XG$awayRightObs$0$0 ==.
   024E 02 00 94           1119 	ljmp	_delay
                           1120 ;------------------------------------------------------------
                           1121 ;Allocation info for local variables in function 'awayFrontObs'
                           1122 ;------------------------------------------------------------
                           1123 ;------------------------------------------------------------
                    01BD   1124 	G$awayFrontObs$0$0 ==.
                    01BD   1125 	C$main.c$195$1$1 ==.
                           1126 ;	../main.c:195: void awayFrontObs() {
                           1127 ;	-----------------------------------------
                           1128 ;	 function awayFrontObs
                           1129 ;	-----------------------------------------
   0251                    1130 _awayFrontObs:
                    01BD   1131 	C$main.c$196$1$1 ==.
                           1132 ;	../main.c:196: CAR = BACK;
   0251 75 80 55           1133 	mov	_P0,#0x55
                    01C0   1134 	C$main.c$197$1$1 ==.
                           1135 ;	../main.c:197: delay(200);
   0254 90 00 C8           1136 	mov	dptr,#0x00C8
                    01C3   1137 	C$main.c$198$1$1 ==.
                    01C3   1138 	XG$awayFrontObs$0$0 ==.
   0257 02 00 94           1139 	ljmp	_delay
                           1140 ;------------------------------------------------------------
                           1141 ;Allocation info for local variables in function 'awayBackObs'
                           1142 ;------------------------------------------------------------
                           1143 ;------------------------------------------------------------
                    01C6   1144 	G$awayBackObs$0$0 ==.
                    01C6   1145 	C$main.c$201$1$1 ==.
                           1146 ;	../main.c:201: void awayBackObs() {
                           1147 ;	-----------------------------------------
                           1148 ;	 function awayBackObs
                           1149 ;	-----------------------------------------
   025A                    1150 _awayBackObs:
                    01C6   1151 	C$main.c$202$1$1 ==.
                           1152 ;	../main.c:202: CAR = FRONT;
   025A 75 80 AA           1153 	mov	_P0,#0xAA
                    01C9   1154 	C$main.c$203$1$1 ==.
                           1155 ;	../main.c:203: delay(400);
   025D 90 01 90           1156 	mov	dptr,#0x0190
                    01CC   1157 	C$main.c$204$1$1 ==.
                    01CC   1158 	XG$awayBackObs$0$0 ==.
   0260 02 00 94           1159 	ljmp	_delay
                           1160 ;------------------------------------------------------------
                           1161 ;Allocation info for local variables in function 'selfControl'
                           1162 ;------------------------------------------------------------
                           1163 ;------------------------------------------------------------
                    01CF   1164 	G$selfControl$0$0 ==.
                    01CF   1165 	C$main.c$207$1$1 ==.
                           1166 ;	../main.c:207: void selfControl() __interrupt 2 __using 0 {
                           1167 ;	-----------------------------------------
                           1168 ;	 function selfControl
                           1169 ;	-----------------------------------------
   0263                    1170 _selfControl:
   0263 C0 22              1171 	push	bits
   0265 C0 E0              1172 	push	acc
   0267 C0 F0              1173 	push	b
   0269 C0 82              1174 	push	dpl
   026B C0 83              1175 	push	dph
   026D C0 02              1176 	push	(0+2)
   026F C0 03              1177 	push	(0+3)
   0271 C0 04              1178 	push	(0+4)
   0273 C0 05              1179 	push	(0+5)
   0275 C0 06              1180 	push	(0+6)
   0277 C0 07              1181 	push	(0+7)
   0279 C0 00              1182 	push	(0+0)
   027B C0 01              1183 	push	(0+1)
   027D C0 D0              1184 	push	psw
   027F 75 D0 00           1185 	mov	psw,#0x00
                    01EE   1186 	C$main.c$209$1$1 ==.
                           1187 ;	../main.c:209: ledStatus(1);
   0282 75 82 01           1188 	mov	dpl,#0x01
   0285 12 00 DD           1189 	lcall	_ledStatus
                    01F4   1190 	C$main.c$210$1$1 ==.
                           1191 ;	../main.c:210: printf("self control\n");
   0288 74 7E              1192 	mov	a,#__str_2
   028A C0 E0              1193 	push	acc
   028C 74 0D              1194 	mov	a,#(__str_2 >> 8)
   028E C0 E0              1195 	push	acc
   0290 74 80              1196 	mov	a,#0x80
   0292 C0 E0              1197 	push	acc
   0294 12 06 C2           1198 	lcall	_printf
   0297 15 81              1199 	dec	sp
   0299 15 81              1200 	dec	sp
   029B 15 81              1201 	dec	sp
                    0209   1202 	C$main.c$213$1$1 ==.
                           1203 ;	../main.c:213: if (FRONT_SENSER == 0 && BACK_SENSER == 1) {
   029D 20 94 48           1204 	jb	_P1_4,00133$
   02A0 30 95 45           1205 	jnb	_P1_5,00133$
                    020F   1206 	C$main.c$215$2$2 ==.
                           1207 ;	../main.c:215: if ((LEFT_SENSER== 0 && RIGHT_SENSER == 0) || (LEFT_SENSER&& RIGHT_SENSER) == 1) {
   02A3 20 96 03           1208 	jb	_P1_6,00109$
   02A6 30 97 0F           1209 	jnb	_P1_7,00105$
   02A9                    1210 00109$:
   02A9 30 96 03           1211 	jnb	_P1_6,00139$
   02AC 20 97 04           1212 	jb	_P1_7,00140$
   02AF                    1213 00139$:
   02AF 7A 00              1214 	mov	r2,#0x00
   02B1 80 02              1215 	sjmp	00141$
   02B3                    1216 00140$:
   02B3 7A 01              1217 	mov	r2,#0x01
   02B5                    1218 00141$:
   02B5 BA 01 06           1219 	cjne	r2,#0x01,00106$
   02B8                    1220 00105$:
                    0224   1221 	C$main.c$216$3$3 ==.
                           1222 ;	../main.c:216: CAR = STOP;
   02B8 75 80 FF           1223 	mov	_P0,#0xFF
   02BB 02 03 9F           1224 	ljmp	00134$
   02BE                    1225 00106$:
                    022A   1226 	C$main.c$218$2$2 ==.
                           1227 ;	../main.c:218: }else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
   02BE 20 96 15           1228 	jb	_P1_6,00102$
   02C1 30 97 12           1229 	jnb	_P1_7,00102$
                    0230   1230 	C$main.c$219$3$4 ==.
                           1231 ;	../main.c:219: CAR = STOP;
   02C4 75 80 FF           1232 	mov	_P0,#0xFF
                    0233   1233 	C$main.c$220$3$4 ==.
                           1234 ;	../main.c:220: setTurnAngle(STEER_P45);
   02C7 75 82 01           1235 	mov	dpl,#0x01
   02CA 12 01 03           1236 	lcall	_setTurnAngle
                    0239   1237 	C$main.c$221$3$4 ==.
                           1238 ;	../main.c:221: setTurnAngle(STEER_P90);
   02CD 75 82 02           1239 	mov	dpl,#0x02
   02D0 12 01 03           1240 	lcall	_setTurnAngle
   02D3 02 03 9F           1241 	ljmp	00134$
   02D6                    1242 00102$:
                    0242   1243 	C$main.c$224$3$5 ==.
                           1244 ;	../main.c:224: CAR = STOP;
   02D6 75 80 FF           1245 	mov	_P0,#0xFF
                    0245   1246 	C$main.c$225$3$5 ==.
                           1247 ;	../main.c:225: setTurnAngle(STEER_N45);
   02D9 75 82 03           1248 	mov	dpl,#0x03
   02DC 12 01 03           1249 	lcall	_setTurnAngle
                    024B   1250 	C$main.c$226$3$5 ==.
                           1251 ;	../main.c:226: setTurnAngle(STEER_N90);
   02DF 75 82 04           1252 	mov	dpl,#0x04
   02E2 12 01 03           1253 	lcall	_setTurnAngle
   02E5 02 03 9F           1254 	ljmp	00134$
   02E8                    1255 00133$:
                    0254   1256 	C$main.c$229$1$1 ==.
                           1257 ;	../main.c:229: }else if (BACK_SENSER == 0 && FRONT_SENSER == 1){
   02E8 20 95 53           1258 	jb	_P1_5,00129$
   02EB 30 94 50           1259 	jnb	_P1_4,00129$
                    025A   1260 	C$main.c$231$2$6 ==.
                           1261 ;	../main.c:231: if ((LEFT_SENSER && RIGHT_SENSER) == 1) {
   02EE 30 96 03           1262 	jnb	_P1_6,00142$
   02F1 20 97 04           1263 	jb	_P1_7,00143$
   02F4                    1264 00142$:
   02F4 7A 00              1265 	mov	r2,#0x00
   02F6 80 02              1266 	sjmp	00144$
   02F8                    1267 00143$:
   02F8 7A 01              1268 	mov	r2,#0x01
   02FA                    1269 00144$:
   02FA BA 01 06           1270 	cjne	r2,#0x01,00118$
                    0269   1271 	C$main.c$232$3$7 ==.
                           1272 ;	../main.c:232: CAR = FRONT;
   02FD 75 80 AA           1273 	mov	_P0,#0xAA
   0300 02 03 9F           1274 	ljmp	00134$
   0303                    1275 00118$:
                    026F   1276 	C$main.c$234$2$6 ==.
                           1277 ;	../main.c:234: }else if ((LEFT_SENSER || RIGHT_SENSER) == 0) {
   0303 20 96 0F           1278 	jb	_P1_6,00115$
   0306 20 97 0C           1279 	jb	_P1_7,00115$
                    0275   1280 	C$main.c$235$3$8 ==.
                           1281 ;	../main.c:235: CAR = BACK;
   0309 75 80 55           1282 	mov	_P0,#0x55
                    0278   1283 	C$main.c$236$3$8 ==.
                           1284 ;	../main.c:236: delay(400);
   030C 90 01 90           1285 	mov	dptr,#0x0190
   030F 12 00 94           1286 	lcall	_delay
   0312 02 03 9F           1287 	ljmp	00134$
   0315                    1288 00115$:
                    0281   1289 	C$main.c$239$2$6 ==.
                           1290 ;	../main.c:239: }else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
   0315 20 96 15           1291 	jb	_P1_6,00111$
   0318 30 97 12           1292 	jnb	_P1_7,00111$
                    0287   1293 	C$main.c$240$3$9 ==.
                           1294 ;	../main.c:240: CAR = STOP;
   031B 75 80 FF           1295 	mov	_P0,#0xFF
                    028A   1296 	C$main.c$241$3$9 ==.
                           1297 ;	../main.c:241: setTurnAngle(STEER_P45);
   031E 75 82 01           1298 	mov	dpl,#0x01
   0321 12 01 03           1299 	lcall	_setTurnAngle
                    0290   1300 	C$main.c$242$3$9 ==.
                           1301 ;	../main.c:242: setTurnAngle(STEER_P90);
   0324 75 82 02           1302 	mov	dpl,#0x02
   0327 12 01 03           1303 	lcall	_setTurnAngle
   032A 02 03 9F           1304 	ljmp	00134$
   032D                    1305 00111$:
                    0299   1306 	C$main.c$245$3$10 ==.
                           1307 ;	../main.c:245: CAR = STOP;
   032D 75 80 FF           1308 	mov	_P0,#0xFF
                    029C   1309 	C$main.c$246$3$10 ==.
                           1310 ;	../main.c:246: setTurnAngle(STEER_N45);
   0330 75 82 03           1311 	mov	dpl,#0x03
   0333 12 01 03           1312 	lcall	_setTurnAngle
                    02A2   1313 	C$main.c$247$3$10 ==.
                           1314 ;	../main.c:247: setTurnAngle(STEER_N90);
   0336 75 82 04           1315 	mov	dpl,#0x04
   0339 12 01 03           1316 	lcall	_setTurnAngle
   033C 80 61              1317 	sjmp	00134$
   033E                    1318 00129$:
                    02AA   1319 	C$main.c$250$1$1 ==.
                           1320 ;	../main.c:250: }else if (LEFT_SENSER== 0 && (RIGHT_SENSER && BACK_SENSER && FRONT_SENSER) == 1 ){
   033E 20 96 2C           1321 	jb	_P1_6,00125$
   0341 30 97 03           1322 	jnb	_P1_7,00148$
   0344 20 95 04           1323 	jb	_P1_5,00149$
   0347                    1324 00148$:
   0347 7A 00              1325 	mov	r2,#0x00
   0349 80 02              1326 	sjmp	00150$
   034B                    1327 00149$:
   034B 7A 01              1328 	mov	r2,#0x01
   034D                    1329 00150$:
   034D EA                 1330 	mov	a,r2
   034E 60 03              1331 	jz	00145$
   0350 20 94 04           1332 	jb	_P1_4,00146$
   0353                    1333 00145$:
   0353 7A 00              1334 	mov	r2,#0x00
   0355 80 02              1335 	sjmp	00147$
   0357                    1336 00146$:
   0357 7A 01              1337 	mov	r2,#0x01
   0359                    1338 00147$:
   0359 BA 01 11           1339 	cjne	r2,#0x01,00125$
                    02C8   1340 	C$main.c$251$2$11 ==.
                           1341 ;	../main.c:251: CAR = STOP;
   035C 75 80 FF           1342 	mov	_P0,#0xFF
                    02CB   1343 	C$main.c$252$2$11 ==.
                           1344 ;	../main.c:252: setTurnAngle(STEER_P45);
   035F 75 82 01           1345 	mov	dpl,#0x01
   0362 12 01 03           1346 	lcall	_setTurnAngle
                    02D1   1347 	C$main.c$253$2$11 ==.
                           1348 ;	../main.c:253: setTurnAngle(STEER_P90);
   0365 75 82 02           1349 	mov	dpl,#0x02
   0368 12 01 03           1350 	lcall	_setTurnAngle
   036B 80 32              1351 	sjmp	00134$
   036D                    1352 00125$:
                    02D9   1353 	C$main.c$255$1$1 ==.
                           1354 ;	../main.c:255: }else if (RIGHT_SENSER == 0 && (LEFT_SENSER && FRONT_SENSER && BACK_SENSER) == 1) {
   036D 20 97 2C           1355 	jb	_P1_7,00121$
   0370 30 96 03           1356 	jnb	_P1_6,00154$
   0373 20 94 04           1357 	jb	_P1_4,00155$
   0376                    1358 00154$:
   0376 7A 00              1359 	mov	r2,#0x00
   0378 80 02              1360 	sjmp	00156$
   037A                    1361 00155$:
   037A 7A 01              1362 	mov	r2,#0x01
   037C                    1363 00156$:
   037C EA                 1364 	mov	a,r2
   037D 60 03              1365 	jz	00151$
   037F 20 95 04           1366 	jb	_P1_5,00152$
   0382                    1367 00151$:
   0382 7A 00              1368 	mov	r2,#0x00
   0384 80 02              1369 	sjmp	00153$
   0386                    1370 00152$:
   0386 7A 01              1371 	mov	r2,#0x01
   0388                    1372 00153$:
   0388 BA 01 11           1373 	cjne	r2,#0x01,00121$
                    02F7   1374 	C$main.c$256$2$12 ==.
                           1375 ;	../main.c:256: CAR = STOP;
   038B 75 80 FF           1376 	mov	_P0,#0xFF
                    02FA   1377 	C$main.c$257$2$12 ==.
                           1378 ;	../main.c:257: setTurnAngle(STEER_N45);
   038E 75 82 03           1379 	mov	dpl,#0x03
   0391 12 01 03           1380 	lcall	_setTurnAngle
                    0300   1381 	C$main.c$258$2$12 ==.
                           1382 ;	../main.c:258: setTurnAngle(STEER_N90);
   0394 75 82 04           1383 	mov	dpl,#0x04
   0397 12 01 03           1384 	lcall	_setTurnAngle
   039A 80 03              1385 	sjmp	00134$
   039C                    1386 00121$:
                    0308   1387 	C$main.c$261$2$13 ==.
                           1388 ;	../main.c:261: CAR = STOP;
   039C 75 80 FF           1389 	mov	_P0,#0xFF
   039F                    1390 00134$:
                    030B   1391 	C$main.c$263$1$1 ==.
                           1392 ;	../main.c:263: SWITCH_SELF_CONTROL = 1;
   039F D2 90              1393 	setb	_P1_0
   03A1 D0 D0              1394 	pop	psw
   03A3 D0 01              1395 	pop	(0+1)
   03A5 D0 00              1396 	pop	(0+0)
   03A7 D0 07              1397 	pop	(0+7)
   03A9 D0 06              1398 	pop	(0+6)
   03AB D0 05              1399 	pop	(0+5)
   03AD D0 04              1400 	pop	(0+4)
   03AF D0 03              1401 	pop	(0+3)
   03B1 D0 02              1402 	pop	(0+2)
   03B3 D0 83              1403 	pop	dph
   03B5 D0 82              1404 	pop	dpl
   03B7 D0 F0              1405 	pop	b
   03B9 D0 E0              1406 	pop	acc
   03BB D0 22              1407 	pop	bits
                    0329   1408 	C$main.c$264$1$1 ==.
                    0329   1409 	XG$selfControl$0$0 ==.
   03BD 32                 1410 	reti
                           1411 ;------------------------------------------------------------
                           1412 ;Allocation info for local variables in function 'btControl'
                           1413 ;------------------------------------------------------------
                           1414 ;cmd                       Allocated to registers r2 
                           1415 ;------------------------------------------------------------
                    032A   1416 	G$btControl$0$0 ==.
                    032A   1417 	C$main.c$267$1$1 ==.
                           1418 ;	../main.c:267: void btControl(uchar cmd) {
                           1419 ;	-----------------------------------------
                           1420 ;	 function btControl
                           1421 ;	-----------------------------------------
   03BE                    1422 _btControl:
   03BE AA 82              1423 	mov	r2,dpl
                    032C   1424 	C$main.c$269$1$1 ==.
                           1425 ;	../main.c:269: ledStatus(2);
   03C0 75 82 02           1426 	mov	dpl,#0x02
   03C3 C0 02              1427 	push	ar2
   03C5 12 00 DD           1428 	lcall	_ledStatus
   03C8 D0 02              1429 	pop	ar2
                    0336   1430 	C$main.c$270$1$1 ==.
                           1431 ;	../main.c:270: switch(cmd) {
   03CA BA 61 02           1432 	cjne	r2,#0x61,00125$
   03CD 80 37              1433 	sjmp	00106$
   03CF                    1434 00125$:
   03CF BA 62 02           1435 	cjne	r2,#0x62,00126$
   03D2 80 1E              1436 	sjmp	00102$
   03D4                    1437 00126$:
   03D4 BA 64 02           1438 	cjne	r2,#0x64,00127$
   03D7 80 37              1439 	sjmp	00109$
   03D9                    1440 00127$:
   03D9 BA 66 02           1441 	cjne	r2,#0x66,00128$
   03DC 80 0F              1442 	sjmp	00101$
   03DE                    1443 00128$:
   03DE BA 6C 02           1444 	cjne	r2,#0x6C,00129$
   03E1 80 14              1445 	sjmp	00103$
   03E3                    1446 00129$:
   03E3 BA 72 02           1447 	cjne	r2,#0x72,00130$
   03E6 80 14              1448 	sjmp	00104$
   03E8                    1449 00130$:
                    0354   1450 	C$main.c$271$2$2 ==.
                           1451 ;	../main.c:271: case('f'): CAR = FRONT; break;
   03E8 BA 73 2D           1452 	cjne	r2,#0x73,00112$
   03EB 80 14              1453 	sjmp	00105$
   03ED                    1454 00101$:
   03ED 75 80 AA           1455 	mov	_P0,#0xAA
                    035C   1456 	C$main.c$272$2$2 ==.
                           1457 ;	../main.c:272: case('b'): CAR = BACK; break;
   03F0 80 29              1458 	sjmp	00113$
   03F2                    1459 00102$:
   03F2 75 80 55           1460 	mov	_P0,#0x55
                    0361   1461 	C$main.c$273$2$2 ==.
                           1462 ;	../main.c:273: case('l'): CAR = FRONT_LEFT; break;
   03F5 80 24              1463 	sjmp	00113$
   03F7                    1464 00103$:
   03F7 75 80 AD           1465 	mov	_P0,#0xAD
                    0366   1466 	C$main.c$274$2$2 ==.
                           1467 ;	../main.c:274: case('r'): CAR = FRONT_RIGHT; break;
   03FA 80 1F              1468 	sjmp	00113$
   03FC                    1469 00104$:
   03FC 75 80 DA           1470 	mov	_P0,#0xDA
                    036B   1471 	C$main.c$275$2$2 ==.
                           1472 ;	../main.c:275: case('s'): CAR = STOP; break;
   03FF 80 1A              1473 	sjmp	00113$
   0401                    1474 00105$:
   0401 75 80 FF           1475 	mov	_P0,#0xFF
                    0370   1476 	C$main.c$276$2$2 ==.
                           1477 ;	../main.c:276: case('a'): 
   0404 80 15              1478 	sjmp	00113$
   0406                    1479 00106$:
                    0372   1480 	C$main.c$277$2$2 ==.
                           1481 ;	../main.c:277: if (speed < 5) {
   0406 74 FB              1482 	mov	a,#0x100 - 0x05
   0408 25 18              1483 	add	a,_speed
   040A 40 0F              1484 	jc	00113$
                    0378   1485 	C$main.c$278$3$3 ==.
                           1486 ;	../main.c:278: speed++;
   040C 05 18              1487 	inc	_speed
                    037A   1488 	C$main.c$280$2$2 ==.
                           1489 ;	../main.c:280: break;
                    037A   1490 	C$main.c$281$2$2 ==.
                           1491 ;	../main.c:281: case('d'): 
   040E 80 0B              1492 	sjmp	00113$
   0410                    1493 00109$:
                    037C   1494 	C$main.c$282$2$2 ==.
                           1495 ;	../main.c:282: if (speed > 0) {
   0410 E5 18              1496 	mov	a,_speed
   0412 60 07              1497 	jz	00113$
                    0380   1498 	C$main.c$283$3$4 ==.
                           1499 ;	../main.c:283: speed--;
   0414 15 18              1500 	dec	_speed
                    0382   1501 	C$main.c$285$2$2 ==.
                           1502 ;	../main.c:285: break;
                    0382   1503 	C$main.c$286$2$2 ==.
                           1504 ;	../main.c:286: default:CAR = STOP; break;
   0416 80 03              1505 	sjmp	00113$
   0418                    1506 00112$:
   0418 75 80 FF           1507 	mov	_P0,#0xFF
                    0387   1508 	C$main.c$287$1$1 ==.
                           1509 ;	../main.c:287: }
   041B                    1510 00113$:
                    0387   1511 	C$main.c$288$1$1 ==.
                           1512 ;	../main.c:288: initTimer2();
                    0387   1513 	C$main.c$289$1$1 ==.
                    0387   1514 	XG$btControl$0$0 ==.
   041B 02 04 62           1515 	ljmp	_initTimer2
                           1516 ;------------------------------------------------------------
                           1517 ;Allocation info for local variables in function 'initInterrupt'
                           1518 ;------------------------------------------------------------
                           1519 ;------------------------------------------------------------
                    038A   1520 	G$initInterrupt$0$0 ==.
                    038A   1521 	C$main.c$292$1$1 ==.
                           1522 ;	../main.c:292: void initInterrupt() {
                           1523 ;	-----------------------------------------
                           1524 ;	 function initInterrupt
                           1525 ;	-----------------------------------------
   041E                    1526 _initInterrupt:
                    038A   1527 	C$main.c$294$1$1 ==.
                           1528 ;	../main.c:294: EA = 1;			//允许总中断
   041E D2 AF              1529 	setb	_EA
                    038C   1530 	C$main.c$295$1$1 ==.
                           1531 ;	../main.c:295: ES = 1;			//允许串行口中断
   0420 D2 AC              1532 	setb	_ES
                    038E   1533 	C$main.c$296$1$1 ==.
                           1534 ;	../main.c:296: ET0 = 1;		//允许定时器0中断
   0422 D2 A9              1535 	setb	_ET0
                    0390   1536 	C$main.c$297$1$1 ==.
                           1537 ;	../main.c:297: ET2 = 1;		//允许定时器2中断
   0424 D2 AD              1538 	setb	_ET2
                    0392   1539 	C$main.c$298$1$1 ==.
                           1540 ;	../main.c:298: EX1 = 1;		//允许外部中断1中断
   0426 D2 AA              1541 	setb	_EX1
                    0394   1542 	C$main.c$299$1$1 ==.
                           1543 ;	../main.c:299: IT1 = 0;		//低电平触发
   0428 C2 8A              1544 	clr	_IT1
                    0396   1545 	C$main.c$300$1$1 ==.
                    0396   1546 	XG$initInterrupt$0$0 ==.
   042A 22                 1547 	ret
                           1548 ;------------------------------------------------------------
                           1549 ;Allocation info for local variables in function 'initTimer0'
                           1550 ;------------------------------------------------------------
                           1551 ;------------------------------------------------------------
                    0397   1552 	G$initTimer0$0$0 ==.
                    0397   1553 	C$main.c$303$1$1 ==.
                           1554 ;	../main.c:303: void initTimer0() {
                           1555 ;	-----------------------------------------
                           1556 ;	 function initTimer0
                           1557 ;	-----------------------------------------
   042B                    1558 _initTimer0:
                    0397   1559 	C$main.c$305$1$1 ==.
                           1560 ;	../main.c:305: TMOD = 0x01;	//工作方式1
   042B 75 89 01           1561 	mov	_TMOD,#0x01
                    039A   1562 	C$main.c$306$1$1 ==.
                           1563 ;	../main.c:306: if (timer0For == 0) {
   042E E5 1C              1564 	mov	a,_timer0For
   0430 70 03              1565 	jnz	00102$
                    039E   1566 	C$main.c$308$2$2 ==.
                           1567 ;	../main.c:308: TR0 = 1;	//开启定时器0
   0432 D2 8C              1568 	setb	_TR0
   0434 22                 1569 	ret
   0435                    1570 00102$:
                    03A1   1571 	C$main.c$310$2$3 ==.
                           1572 ;	../main.c:310: TH0 = 0xFE;
   0435 75 8C FE           1573 	mov	_TH0,#0xFE
                    03A4   1574 	C$main.c$311$2$3 ==.
                           1575 ;	../main.c:311: TL0 = 0x33;
   0438 75 8A 33           1576 	mov	_TL0,#0x33
                    03A7   1577 	C$main.c$313$1$1 ==.
                    03A7   1578 	XG$initTimer0$0$0 ==.
   043B 22                 1579 	ret
                           1580 ;------------------------------------------------------------
                           1581 ;Allocation info for local variables in function 'reloadTimer0'
                           1582 ;------------------------------------------------------------
                           1583 ;------------------------------------------------------------
                    03A8   1584 	G$reloadTimer0$0$0 ==.
                    03A8   1585 	C$main.c$315$1$1 ==.
                           1586 ;	../main.c:315: void reloadTimer0() {
                           1587 ;	-----------------------------------------
                           1588 ;	 function reloadTimer0
                           1589 ;	-----------------------------------------
   043C                    1590 _reloadTimer0:
                    03A8   1591 	C$main.c$317$1$1 ==.
                           1592 ;	../main.c:317: if (timer0For == 0) {
   043C E5 1C              1593 	mov	a,_timer0For
   043E 70 07              1594 	jnz	00102$
                    03AC   1595 	C$main.c$318$2$2 ==.
                           1596 ;	../main.c:318: TH0 = 0xFE;
   0440 75 8C FE           1597 	mov	_TH0,#0xFE
                    03AF   1598 	C$main.c$319$2$2 ==.
                           1599 ;	../main.c:319: TL0 = 0x33;	
   0443 75 8A 33           1600 	mov	_TL0,#0x33
   0446 22                 1601 	ret
   0447                    1602 00102$:
                    03B3   1603 	C$main.c$321$2$3 ==.
                           1604 ;	../main.c:321: TH0 = 0xFE;
   0447 75 8C FE           1605 	mov	_TH0,#0xFE
                    03B6   1606 	C$main.c$322$2$3 ==.
                           1607 ;	../main.c:322: TL0 = 0x33;
   044A 75 8A 33           1608 	mov	_TL0,#0x33
                    03B9   1609 	C$main.c$324$1$1 ==.
                    03B9   1610 	XG$reloadTimer0$0$0 ==.
   044D 22                 1611 	ret
                           1612 ;------------------------------------------------------------
                           1613 ;Allocation info for local variables in function 'initSerial'
                           1614 ;------------------------------------------------------------
                           1615 ;------------------------------------------------------------
                    03BA   1616 	G$initSerial$0$0 ==.
                    03BA   1617 	C$main.c$327$1$1 ==.
                           1618 ;	../main.c:327: void initSerial() {
                           1619 ;	-----------------------------------------
                           1620 ;	 function initSerial
                           1621 ;	-----------------------------------------
   044E                    1622 _initSerial:
                    03BA   1623 	C$main.c$329$1$1 ==.
                           1624 ;	../main.c:329: SCON = 0x50;	//串行口工作模式1
   044E 75 98 50           1625 	mov	_SCON,#0x50
                    03BD   1626 	C$main.c$330$1$1 ==.
                           1627 ;	../main.c:330: PCON = 0x00;
   0451 75 87 00           1628 	mov	_PCON,#0x00
                    03C0   1629 	C$main.c$331$1$1 ==.
                           1630 ;	../main.c:331: RI = 0;			//接受中断标志清零
   0454 C2 98              1631 	clr	_RI
                    03C2   1632 	C$main.c$333$1$1 ==.
                           1633 ;	../main.c:333: TMOD = 0x21;	//定时器T1方式2 T0工作方式1
   0456 75 89 21           1634 	mov	_TMOD,#0x21
                    03C5   1635 	C$main.c$334$1$1 ==.
                           1636 ;	../main.c:334: TL1 = 0xfd;
   0459 75 8B FD           1637 	mov	_TL1,#0xFD
                    03C8   1638 	C$main.c$335$1$1 ==.
                           1639 ;	../main.c:335: TH1 = 0xfd;
   045C 75 8D FD           1640 	mov	_TH1,#0xFD
                    03CB   1641 	C$main.c$336$1$1 ==.
                           1642 ;	../main.c:336: TR1 = 1;		//定时器开始计数
   045F D2 8E              1643 	setb	_TR1
                    03CD   1644 	C$main.c$337$1$1 ==.
                    03CD   1645 	XG$initSerial$0$0 ==.
   0461 22                 1646 	ret
                           1647 ;------------------------------------------------------------
                           1648 ;Allocation info for local variables in function 'initTimer2'
                           1649 ;------------------------------------------------------------
                           1650 ;------------------------------------------------------------
                    03CE   1651 	G$initTimer2$0$0 ==.
                    03CE   1652 	C$main.c$340$1$1 ==.
                           1653 ;	../main.c:340: void initTimer2() {
                           1654 ;	-----------------------------------------
                           1655 ;	 function initTimer2
                           1656 ;	-----------------------------------------
   0462                    1657 _initTimer2:
                    03CE   1658 	C$main.c$341$1$1 ==.
                           1659 ;	../main.c:341: T2MOD = 0x00;	//定时器T2向上计数
   0462 75 C9 00           1660 	mov	_T2MOD,#0x00
                    03D1   1661 	C$main.c$342$1$1 ==.
                           1662 ;	../main.c:342: C_T2 = 0;		//选择T2为定时器方式
   0465 C2 C9              1663 	clr	_C_T2
                    03D3   1664 	C$main.c$343$1$1 ==.
                           1665 ;	../main.c:343: CP_RL2 = 0;		//T2自动装载
   0467 C2 C8              1666 	clr	_CP_RL2
                    03D5   1667 	C$main.c$344$1$1 ==.
                           1668 ;	../main.c:344: TH0 = 0x0fc;
   0469 75 8C FC           1669 	mov	_TH0,#0xFC
                    03D8   1670 	C$main.c$345$1$1 ==.
                           1671 ;	../main.c:345: TL0 = 0x66;
   046C 75 8A 66           1672 	mov	_TL0,#0x66
                    03DB   1673 	C$main.c$346$1$1 ==.
                    03DB   1674 	XG$initTimer2$0$0 ==.
   046F 22                 1675 	ret
                           1676 ;------------------------------------------------------------
                           1677 ;Allocation info for local variables in function 'timer0'
                           1678 ;------------------------------------------------------------
                           1679 ;------------------------------------------------------------
                    03DC   1680 	G$timer0$0$0 ==.
                    03DC   1681 	C$main.c$348$1$1 ==.
                           1682 ;	../main.c:348: void timer0() __interrupt 1 __using 0 {
                           1683 ;	-----------------------------------------
                           1684 ;	 function timer0
                           1685 ;	-----------------------------------------
   0470                    1686 _timer0:
   0470 C0 22              1687 	push	bits
   0472 C0 E0              1688 	push	acc
   0474 C0 F0              1689 	push	b
   0476 C0 82              1690 	push	dpl
   0478 C0 83              1691 	push	dph
   047A C0 02              1692 	push	(0+2)
   047C C0 03              1693 	push	(0+3)
   047E C0 04              1694 	push	(0+4)
   0480 C0 05              1695 	push	(0+5)
   0482 C0 06              1696 	push	(0+6)
   0484 C0 07              1697 	push	(0+7)
   0486 C0 00              1698 	push	(0+0)
   0488 C0 01              1699 	push	(0+1)
   048A C0 D0              1700 	push	psw
   048C 75 D0 00           1701 	mov	psw,#0x00
                    03FB   1702 	C$main.c$350$1$1 ==.
                           1703 ;	../main.c:350: if (timer0For == 0) {
   048F E5 1C              1704 	mov	a,_timer0For
   0491 70 08              1705 	jnz	00102$
                    03FF   1706 	C$main.c$351$2$2 ==.
                           1707 ;	../main.c:351: reloadTimer0();
   0493 12 04 3C           1708 	lcall	_reloadTimer0
                    0402   1709 	C$main.c$352$2$2 ==.
                           1710 ;	../main.c:352: steerTurn();
   0496 12 01 3F           1711 	lcall	_steerTurn
   0499 80 02              1712 	sjmp	00104$
   049B                    1713 00102$:
                    0407   1714 	C$main.c$354$2$3 ==.
                           1715 ;	../main.c:354: isOverstep = 1;
   049B D2 00              1716 	setb	_isOverstep
   049D                    1717 00104$:
   049D D0 D0              1718 	pop	psw
   049F D0 01              1719 	pop	(0+1)
   04A1 D0 00              1720 	pop	(0+0)
   04A3 D0 07              1721 	pop	(0+7)
   04A5 D0 06              1722 	pop	(0+6)
   04A7 D0 05              1723 	pop	(0+5)
   04A9 D0 04              1724 	pop	(0+4)
   04AB D0 03              1725 	pop	(0+3)
   04AD D0 02              1726 	pop	(0+2)
   04AF D0 83              1727 	pop	dph
   04B1 D0 82              1728 	pop	dpl
   04B3 D0 F0              1729 	pop	b
   04B5 D0 E0              1730 	pop	acc
   04B7 D0 22              1731 	pop	bits
                    0425   1732 	C$main.c$357$1$1 ==.
                    0425   1733 	XG$timer0$0$0 ==.
   04B9 32                 1734 	reti
                           1735 ;------------------------------------------------------------
                           1736 ;Allocation info for local variables in function 'serial'
                           1737 ;------------------------------------------------------------
                           1738 ;------------------------------------------------------------
                    0426   1739 	G$serial$0$0 ==.
                    0426   1740 	C$main.c$361$1$1 ==.
                           1741 ;	../main.c:361: void serial() __interrupt 4 __using 1 {
                           1742 ;	-----------------------------------------
                           1743 ;	 function serial
                           1744 ;	-----------------------------------------
   04BA                    1745 _serial:
                    000A   1746 	ar2 = 0x0a
                    000B   1747 	ar3 = 0x0b
                    000C   1748 	ar4 = 0x0c
                    000D   1749 	ar5 = 0x0d
                    000E   1750 	ar6 = 0x0e
                    000F   1751 	ar7 = 0x0f
                    0008   1752 	ar0 = 0x08
                    0009   1753 	ar1 = 0x09
   04BA C0 22              1754 	push	bits
   04BC C0 E0              1755 	push	acc
   04BE C0 F0              1756 	push	b
   04C0 C0 82              1757 	push	dpl
   04C2 C0 83              1758 	push	dph
   04C4 C0 02              1759 	push	(0+2)
   04C6 C0 03              1760 	push	(0+3)
   04C8 C0 04              1761 	push	(0+4)
   04CA C0 05              1762 	push	(0+5)
   04CC C0 06              1763 	push	(0+6)
   04CE C0 07              1764 	push	(0+7)
   04D0 C0 00              1765 	push	(0+0)
   04D2 C0 01              1766 	push	(0+1)
   04D4 C0 D0              1767 	push	psw
   04D6 75 D0 08           1768 	mov	psw,#0x08
                    0445   1769 	C$main.c$363$1$1 ==.
                           1770 ;	../main.c:363: RI = 0;
   04D9 C2 98              1771 	clr	_RI
                    0447   1772 	C$main.c$365$1$1 ==.
                           1773 ;	../main.c:365: btControl(SBUF);
   04DB 85 99 82           1774 	mov	dpl,_SBUF
   04DE 75 D0 00           1775 	mov	psw,#0x00
   04E1 12 03 BE           1776 	lcall	_btControl
   04E4 75 D0 08           1777 	mov	psw,#0x08
   04E7 D0 D0              1778 	pop	psw
   04E9 D0 01              1779 	pop	(0+1)
   04EB D0 00              1780 	pop	(0+0)
   04ED D0 07              1781 	pop	(0+7)
   04EF D0 06              1782 	pop	(0+6)
   04F1 D0 05              1783 	pop	(0+5)
   04F3 D0 04              1784 	pop	(0+4)
   04F5 D0 03              1785 	pop	(0+3)
   04F7 D0 02              1786 	pop	(0+2)
   04F9 D0 83              1787 	pop	dph
   04FB D0 82              1788 	pop	dpl
   04FD D0 F0              1789 	pop	b
   04FF D0 E0              1790 	pop	acc
   0501 D0 22              1791 	pop	bits
                    046F   1792 	C$main.c$366$1$1 ==.
                    046F   1793 	XG$serial$0$0 ==.
   0503 32                 1794 	reti
                           1795 ;------------------------------------------------------------
                           1796 ;Allocation info for local variables in function 'timer2'
                           1797 ;------------------------------------------------------------
                           1798 ;a                         Allocated to registers r2 
                           1799 ;------------------------------------------------------------
                    0470   1800 	G$timer2$0$0 ==.
                    0470   1801 	C$main.c$369$1$1 ==.
                           1802 ;	../main.c:369: void timer2() __interrupt 5 __using 2 {
                           1803 ;	-----------------------------------------
                           1804 ;	 function timer2
                           1805 ;	-----------------------------------------
   0504                    1806 _timer2:
                    0012   1807 	ar2 = 0x12
                    0013   1808 	ar3 = 0x13
                    0014   1809 	ar4 = 0x14
                    0015   1810 	ar5 = 0x15
                    0016   1811 	ar6 = 0x16
                    0017   1812 	ar7 = 0x17
                    0010   1813 	ar0 = 0x10
                    0011   1814 	ar1 = 0x11
   0504 C0 E0              1815 	push	acc
   0506 C0 F0              1816 	push	b
   0508 C0 D0              1817 	push	psw
   050A 75 D0 10           1818 	mov	psw,#0x10
                    0479   1819 	C$main.c$372$1$1 ==.
                           1820 ;	../main.c:372: TF2 = 0;	//溢出清0
   050D C2 CF              1821 	clr	_TF2
                    047B   1822 	C$main.c$373$1$1 ==.
                           1823 ;	../main.c:373: t2InterruptTimes++;
   050F 05 1A              1824 	inc	_t2InterruptTimes
                    047D   1825 	C$main.c$374$1$1 ==.
                           1826 ;	../main.c:374: a = t2InterruptTimes % PWM_CYCLE;
   0511 75 F0 05           1827 	mov	b,#0x05
   0514 E5 1A              1828 	mov	a,_t2InterruptTimes
   0516 84                 1829 	div	ab
   0517 AA F0              1830 	mov	r2,b
                    0485   1831 	C$main.c$375$1$1 ==.
                           1832 ;	../main.c:375: if (t2InterruptTimes == CMD_TIME) {
   0519 74 14              1833 	mov	a,#0x14
   051B B5 1A 08           1834 	cjne	a,_t2InterruptTimes,00102$
                    048A   1835 	C$main.c$376$2$2 ==.
                           1836 ;	../main.c:376: t2InterruptTimes = 0;
   051E 75 1A 00           1837 	mov	_t2InterruptTimes,#0x00
                    048D   1838 	C$main.c$377$2$2 ==.
                           1839 ;	../main.c:377: CAR = STOP;
   0521 75 80 FF           1840 	mov	_P0,#0xFF
                    0490   1841 	C$main.c$378$2$2 ==.
                           1842 ;	../main.c:378: TR2 = 0;	//溢出20次，说明执行了蓝牙发送的指令20ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
   0524 C2 CA              1843 	clr	_TR2
   0526                    1844 00102$:
                    0492   1845 	C$main.c$380$1$1 ==.
                           1846 ;	../main.c:380: if (a <= speed) {
   0526 E5 18              1847 	mov	a,_speed
   0528 B5 12 00           1848 	cjne	a,ar2,00112$
   052B                    1849 00112$:
   052B 40 04              1850 	jc	00104$
                    0499   1851 	C$main.c$381$2$3 ==.
                           1852 ;	../main.c:381: M_PWM = 1;
   052D D2 B6              1853 	setb	_P3_6
   052F 80 02              1854 	sjmp	00106$
   0531                    1855 00104$:
                    049D   1856 	C$main.c$383$2$4 ==.
                           1857 ;	../main.c:383: M_PWM = 0;
   0531 C2 B6              1858 	clr	_P3_6
   0533                    1859 00106$:
   0533 D0 D0              1860 	pop	psw
   0535 D0 F0              1861 	pop	b
   0537 D0 E0              1862 	pop	acc
                    04A5   1863 	C$main.c$385$1$1 ==.
                    04A5   1864 	XG$timer2$0$0 ==.
   0539 32                 1865 	reti
                           1866 ;	eliminated unneeded push/pop dpl
                           1867 ;	eliminated unneeded push/pop dph
                           1868 ;------------------------------------------------------------
                           1869 ;Allocation info for local variables in function 'main'
                           1870 ;------------------------------------------------------------
                           1871 ;------------------------------------------------------------
                    04A6   1872 	G$main$0$0 ==.
                    04A6   1873 	C$main.c$387$1$1 ==.
                           1874 ;	../main.c:387: void main() {
                           1875 ;	-----------------------------------------
                           1876 ;	 function main
                           1877 ;	-----------------------------------------
   053A                    1878 _main:
                    0002   1879 	ar2 = 0x02
                    0003   1880 	ar3 = 0x03
                    0004   1881 	ar4 = 0x04
                    0005   1882 	ar5 = 0x05
                    0006   1883 	ar6 = 0x06
                    0007   1884 	ar7 = 0x07
                    0000   1885 	ar0 = 0x00
                    0001   1886 	ar1 = 0x01
                    04A6   1887 	C$main.c$389$1$1 ==.
                           1888 ;	../main.c:389: initInterrupt();
   053A 12 04 1E           1889 	lcall	_initInterrupt
                    04A9   1890 	C$main.c$390$1$1 ==.
                           1891 ;	../main.c:390: initTimer0();
   053D 12 04 2B           1892 	lcall	_initTimer0
                    04AC   1893 	C$main.c$391$1$1 ==.
                           1894 ;	../main.c:391: initSerial();
   0540 12 04 4E           1895 	lcall	_initSerial
                    04AF   1896 	C$main.c$392$1$1 ==.
                           1897 ;	../main.c:392: initTimer2();
   0543 12 04 62           1898 	lcall	_initTimer2
                    04B2   1899 	C$main.c$393$1$1 ==.
                           1900 ;	../main.c:393: while(1) {
   0546                    1901 00104$:
                    04B2   1902 	C$main.c$394$2$2 ==.
                           1903 ;	../main.c:394: sensorTrigger();
   0546 12 00 CE           1904 	lcall	_sensorTrigger
                    04B5   1905 	C$main.c$395$2$2 ==.
                           1906 ;	../main.c:395: if (SWITCH_SELF_CONTROL) {
   0549 30 90 FA           1907 	jnb	_P1_0,00104$
                    04B8   1908 	C$main.c$396$3$3 ==.
                           1909 ;	../main.c:396: ledStatus(0);
   054C 75 82 00           1910 	mov	dpl,#0x00
   054F 12 00 DD           1911 	lcall	_ledStatus
                    04BE   1912 	C$main.c$399$1$1 ==.
                    04BE   1913 	XG$main$0$0 ==.
   0552 80 F2              1914 	sjmp	00104$
                           1915 	.area CSEG    (CODE)
                           1916 	.area CONST   (CODE)
                    0000   1917 G$seg$0$0 == .
   0D53                    1918 _seg:
   0D53 C0                 1919 	.db #0xC0	; 192
   0D54 F9                 1920 	.db #0xF9	; 249
   0D55 A4                 1921 	.db #0xA4	; 164
   0D56 B0                 1922 	.db #0xB0	; 176
   0D57 99                 1923 	.db #0x99	; 153
   0D58 92                 1924 	.db #0x92	; 146
   0D59 82                 1925 	.db #0x82	; 130
   0D5A F8                 1926 	.db #0xF8	; 248
   0D5B 80                 1927 	.db #0x80	; 128
   0D5C 90                 1928 	.db #0x90	; 144
   0D5D 88                 1929 	.db #0x88	; 136
   0D5E 83                 1930 	.db #0x83	; 131
   0D5F C6                 1931 	.db #0xC6	; 198
   0D60 A1                 1932 	.db #0xA1	; 161
   0D61 86                 1933 	.db #0x86	; 134
   0D62 8E                 1934 	.db #0x8E	; 142
                    0010   1935 Fmain$_str_0$0$0 == .
   0D63                    1936 __str_0:
   0D63 6F 76 65 72 73 74  1937 	.ascii "overstep"
        65 70
   0D6B 0A                 1938 	.db 0x0A
   0D6C 00                 1939 	.db 0x00
                    001A   1940 Fmain$_str_1$0$0 == .
   0D6D                    1941 __str_1:
   0D6D 64 69 73 74 61 6E  1942 	.ascii "distance = %dcm"
        63 65 20 3D 20 25
        64 63 6D
   0D7C 0A                 1943 	.db 0x0A
   0D7D 00                 1944 	.db 0x00
                    002B   1945 Fmain$_str_2$0$0 == .
   0D7E                    1946 __str_2:
   0D7E 73 65 6C 66 20 63  1947 	.ascii "self control"
        6F 6E 74 72 6F 6C
   0D8A 0A                 1948 	.db 0x0A
   0D8B 00                 1949 	.db 0x00
                           1950 	.area XINIT   (CODE)
                           1951 	.area CABS    (ABS,CODE)
