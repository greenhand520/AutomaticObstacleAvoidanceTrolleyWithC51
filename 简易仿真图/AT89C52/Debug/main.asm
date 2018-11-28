;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Wed Nov 28 21:27:17 2018
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _seg
	.globl _main
	.globl _timer2
	.globl _serial
	.globl _timer0
	.globl _initTimer2
	.globl _initSerial
	.globl _reloadTimer0
	.globl _initTimer0
	.globl _initInterrupt
	.globl _btControl
	.globl _selfControl
	.globl _awayBackObs
	.globl _awayFrontObs
	.globl _awayRightObs
	.globl _awayLEFTObs
	.globl _startSR04
	.globl _calculate
	.globl _trigger
	.globl _steerTurn
	.globl _setTurnAngle
	.globl _ledStatus
	.globl _sensorTrigger
	.globl _delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
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
	.globl _ET2
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
	.globl _T2EX
	.globl _T2
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
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
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
	.globl _isOverstep
	.globl _timer0For
	.globl _angle
	.globl _t2InterruptTimes
	.globl _t0InterruptTimes
	.globl _speed
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$T2MOD$0$0 == 0x00c9
_T2MOD	=	0x00c9
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$A$0$0 == 0x00e0
_A	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$T2$0$0 == 0x0090
_T2	=	0x0090
G$T2EX$0$0 == 0x0091
_T2EX	=	0x0091
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$T2CON_0$0$0 == 0x00c8
_T2CON_0	=	0x00c8
G$T2CON_1$0$0 == 0x00c9
_T2CON_1	=	0x00c9
G$T2CON_2$0$0 == 0x00ca
_T2CON_2	=	0x00ca
G$T2CON_3$0$0 == 0x00cb
_T2CON_3	=	0x00cb
G$T2CON_4$0$0 == 0x00cc
_T2CON_4	=	0x00cc
G$T2CON_5$0$0 == 0x00cd
_T2CON_5	=	0x00cd
G$T2CON_6$0$0 == 0x00ce
_T2CON_6	=	0x00ce
G$T2CON_7$0$0 == 0x00cf
_T2CON_7	=	0x00cf
G$CP_RL2$0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$C_T2$0$0 == 0x00c9
_C_T2	=	0x00c9
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$FL$0$0 == 0x00d1
_FL	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
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
G$speed$0$0==.
_speed::
	.ds 1
G$t0InterruptTimes$0$0==.
_t0InterruptTimes::
	.ds 1
G$t2InterruptTimes$0$0==.
_t2InterruptTimes::
	.ds 1
G$angle$0$0==.
_angle::
	.ds 1
G$timer0For$0$0==.
_timer0For::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
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
G$isOverstep$0$0==.
_isOverstep::
	.ds 1
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
	ljmp	_timer0
	.ds	5
	ljmp	_selfControl
	.ds	5
	reti
	.ds	7
	ljmp	_serial
	.ds	5
	ljmp	_timer2
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
	G$main$0$0 ==.
	C$main.c$44$1$1 ==.
;	../main.c:44: uchar speed = 5;	//小车速度
	mov	_speed,#0x05
	G$main$0$0 ==.
	C$main.c$49$1$1 ==.
;	../main.c:49: __bit isOverstep = 0;	//距离过远，超出测量范围
	clr	_isOverstep
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated to registers 
;i                         Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
	G$delay$0$0 ==.
	C$main.c$52$0$0 ==.
;	../main.c:52: void delay(uint n){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	C$main.c$54$1$1 ==.
;	../main.c:54: for(i=n;i>0;i--){
00105$:
	mov	a,r2
	orl	a,r3
	jz	00111$
	mov	r4,#0x01
	sjmp	00112$
00111$:
	mov	r4,#0x00
00112$:
	mov	a,r4
	jz	00109$
	C$main.c$55$2$2 ==.
;	../main.c:55: for(j=112;j>0;j--);
	mov	r4,#0x70
	mov	r5,#0x00
00101$:
	mov	a,r4
	orl	a,r5
	jz	00113$
	mov	r6,#0x01
	sjmp	00114$
00113$:
	mov	r6,#0x00
00114$:
	mov	a,r6
	jz	00107$
	dec	r4
	cjne	r4,#0xff,00101$
	dec	r5
	sjmp	00101$
00107$:
	C$main.c$54$1$1 ==.
;	../main.c:54: for(i=n;i>0;i--){
	dec	r2
	cjne	r2,#0xff,00125$
	dec	r3
00125$:
	sjmp	00105$
00109$:
	C$main.c$57$1$1 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$main.c$60$1$1 ==.
;	../main.c:60: void putchar(char c) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	_SBUF,dpl
	C$main.c$62$1$1 ==.
;	../main.c:62: while(!TI);
00101$:
	C$main.c$63$1$1 ==.
;	../main.c:63: TI = 0;
	jbc	_TI,00108$
	sjmp	00101$
00108$:
	C$main.c$64$1$1 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sensorTrigger'
;------------------------------------------------------------
;------------------------------------------------------------
	G$sensorTrigger$0$0 ==.
	C$main.c$67$1$1 ==.
;	../main.c:67: void sensorTrigger() {
;	-----------------------------------------
;	 function sensorTrigger
;	-----------------------------------------
_sensorTrigger:
	C$main.c$68$1$1 ==.
;	../main.c:68: if(!(BACK_SENSER && FRONT_SENSER && LEFT_SENSER&& RIGHT_SENSER)) {
	jnb	_P1_5,00101$
	jnb	_P1_4,00101$
	jnb	_P1_6,00101$
	jb	_P1_7,00106$
00101$:
	C$main.c$69$2$2 ==.
;	../main.c:69: SWITCH_SELF_CONTROL = 0;
	clr	_P1_0
00106$:
	C$main.c$71$2$1 ==.
	XG$sensorTrigger$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ledStatus'
;------------------------------------------------------------
;s                         Allocated to registers r2 
;------------------------------------------------------------
	G$ledStatus$0$0 ==.
	C$main.c$75$2$1 ==.
;	../main.c:75: void ledStatus(uchar s) {
;	-----------------------------------------
;	 function ledStatus
;	-----------------------------------------
_ledStatus:
	mov	r2,dpl
	C$main.c$76$1$1 ==.
;	../main.c:76: switch(s) {
	cjne	r2,#0x00,00110$
	sjmp	00101$
00110$:
	cjne	r2,#0x01,00111$
	sjmp	00102$
00111$:
	C$main.c$77$2$2 ==.
;	../main.c:77: case(0):
	cjne	r2,#0x02,00105$
	sjmp	00103$
00101$:
	C$main.c$78$2$2 ==.
;	../main.c:78: STOP_RED_LED = 0;	//停止指示灯亮
	clr	_P1_1
	C$main.c$79$2$2 ==.
;	../main.c:79: BT_BLUE_LED = 1;
	setb	_P1_2
	C$main.c$80$2$2 ==.
;	../main.c:80: SELF_GREEN_LED = 1;
	setb	_P1_3
	C$main.c$81$2$2 ==.
;	../main.c:81: break;
	C$main.c$82$2$2 ==.
;	../main.c:82: case(1):
	ret
00102$:
	C$main.c$83$2$2 ==.
;	../main.c:83: STOP_RED_LED = 1;
	setb	_P1_1
	C$main.c$84$2$2 ==.
;	../main.c:84: BT_BLUE_LED = 1;	  
	setb	_P1_2
	C$main.c$85$2$2 ==.
;	../main.c:85: SELF_GREEN_LED = 0;    //自控指示灯亮
	clr	_P1_3
	C$main.c$86$2$2 ==.
;	../main.c:86: break;
	C$main.c$87$2$2 ==.
;	../main.c:87: case(2):
	ret
00103$:
	C$main.c$88$2$2 ==.
;	../main.c:88: STOP_RED_LED = 1;
	setb	_P1_1
	C$main.c$89$2$2 ==.
;	../main.c:89: SELF_GREEN_LED = 1;
	setb	_P1_3
	C$main.c$90$2$2 ==.
;	../main.c:90: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
	clr	_P1_2
	C$main.c$92$1$1 ==.
;	../main.c:92: }	
00105$:
	C$main.c$93$1$1 ==.
	XG$ledStatus$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTurnAngle'
;------------------------------------------------------------
;a                         Allocated to registers r2 
;------------------------------------------------------------
	G$setTurnAngle$0$0 ==.
	C$main.c$96$1$1 ==.
;	../main.c:96: void setTurnAngle(uchar a) {
;	-----------------------------------------
;	 function setTurnAngle
;	-----------------------------------------
_setTurnAngle:
	mov	r2,dpl
	C$main.c$98$1$1 ==.
;	../main.c:98: switch(a) {
	mov	a,#0x04
	cjne	a,ar2,00110$
00110$:
	jc	00106$
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00112$
	jmp	@a+dptr
00112$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	C$main.c$100$2$2 ==.
;	../main.c:100: case(STEER_S):angle = 3; break;
00101$:
	mov	_angle,#0x03
	C$main.c$102$2$2 ==.
;	../main.c:102: case(STEER_P45):angle = 4; break;
	sjmp	00106$
00102$:
	mov	_angle,#0x04
	C$main.c$104$2$2 ==.
;	../main.c:104: case(STEER_P90):angle = 5; break;
	sjmp	00106$
00103$:
	mov	_angle,#0x05
	C$main.c$106$2$2 ==.
;	../main.c:106: case(STEER_N45):angle = 2; break;
	sjmp	00106$
00104$:
	mov	_angle,#0x02
	C$main.c$108$2$2 ==.
;	../main.c:108: case(STEER_N90):angle = 1; break;
	sjmp	00106$
00105$:
	mov	_angle,#0x01
	C$main.c$109$1$1 ==.
;	../main.c:109: }
00106$:
	C$main.c$110$1$1 ==.
;	../main.c:110: timer0For = 0;
	mov	_timer0For,#0x00
	C$main.c$111$1$1 ==.
;	../main.c:111: initTimer0();	
	C$main.c$112$1$1 ==.
	XG$setTurnAngle$0$0 ==.
	ljmp	_initTimer0
;------------------------------------------------------------
;Allocation info for local variables in function 'steerTurn'
;------------------------------------------------------------
;------------------------------------------------------------
	G$steerTurn$0$0 ==.
	C$main.c$114$1$1 ==.
;	../main.c:114: void steerTurn() {
;	-----------------------------------------
;	 function steerTurn
;	-----------------------------------------
_steerTurn:
	C$main.c$116$1$1 ==.
;	../main.c:116: t0InterruptTimes++;
	inc	_t0InterruptTimes
	C$main.c$117$1$1 ==.
;	../main.c:117: if (t0InterruptTimes > PWM_CYCLE) {
	mov	a,#0x05
	cjne	a,_t0InterruptTimes,00110$
00110$:
	jnc	00102$
	C$main.c$118$2$2 ==.
;	../main.c:118: t0InterruptTimes = 0;
	mov	_t0InterruptTimes,#0x00
00102$:
	C$main.c$121$1$1 ==.
;	../main.c:121: if (t0InterruptTimes < angle) {
	mov	a,_t0InterruptTimes
	cjne	a,_angle,00112$
00112$:
	jnc	00104$
	C$main.c$122$2$3 ==.
;	../main.c:122: STEER_PWM = 1;
	setb	_P3_2
	sjmp	00105$
00104$:
	C$main.c$124$2$4 ==.
;	../main.c:124: STEER_PWM = 0;
	clr	_P3_2
00105$:
	C$main.c$126$1$1 ==.
;	../main.c:126: startSR04();
	C$main.c$127$1$1 ==.
	XG$steerTurn$0$0 ==.
	ljmp	_startSR04
;------------------------------------------------------------
;Allocation info for local variables in function 'trigger'
;------------------------------------------------------------
;------------------------------------------------------------
	G$trigger$0$0 ==.
	C$main.c$130$1$1 ==.
;	../main.c:130: void trigger()
;	-----------------------------------------
;	 function trigger
;	-----------------------------------------
_trigger:
	C$main.c$132$1$1 ==.
;	../main.c:132: TRIG = 1;
	setb	_P3_5
	C$main.c$134$1$1 ==.
;	../main.c:134: __nop; __nop; __nop; __nop; __nop;
	 nop 
	 nop 
	 nop 
	 nop 
	 nop 
	C$main.c$135$1$1 ==.
;	../main.c:135: __nop; __nop; __nop; __nop; __nop;
	 nop 
	 nop 
	 nop 
	 nop 
	 nop 
	C$main.c$136$1$1 ==.
;	../main.c:136: __nop; __nop; __nop; __nop; __nop;
	 nop 
	 nop 
	 nop 
	 nop 
	 nop 
	C$main.c$137$1$1 ==.
;	../main.c:137: __nop; __nop; __nop; __nop; __nop;
	 nop 
	 nop 
	 nop 
	 nop 
	 nop 
	C$main.c$138$1$1 ==.
;	../main.c:138: TRIG = 0;
	clr	_P3_5
	C$main.c$139$1$1 ==.
	XG$trigger$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate'
;------------------------------------------------------------
;time                      Allocated to registers r2 
;distance                  Allocated to registers r2 
;------------------------------------------------------------
	G$calculate$0$0 ==.
	C$main.c$142$1$1 ==.
;	../main.c:142: uchar calculate() {
;	-----------------------------------------
;	 function calculate
;	-----------------------------------------
_calculate:
	C$main.c$146$1$1 ==.
;	../main.c:146: time = TH0 * 256 + TL0;
	mov	r2,_TL0
	C$main.c$148$1$1 ==.
;	../main.c:148: TH0 = 0;
	mov	_TH0,#0x00
	C$main.c$149$1$1 ==.
;	../main.c:149: TL0 = 0;
	mov	_TL0,#0x00
	C$main.c$150$1$1 ==.
;	../main.c:150: time *= 1.085;
	mov	dpl,r2
	lcall	___uchar2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#0xE148
	mov	b,#0x8A
	mov	a,#0x3F
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fs2uchar
	C$main.c$153$1$1 ==.
;	../main.c:153: distance = (time * 0.017);
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x4396
	mov	b,#0x8B
	mov	a,#0x3C
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2uchar
	mov	r2,dpl
	C$main.c$154$1$1 ==.
;	../main.c:154: if(isOverstep) {
	C$main.c$155$2$2 ==.
;	../main.c:155: isOverstep = 0;
	jbc	_isOverstep,00107$
	sjmp	00102$
00107$:
	C$main.c$156$2$2 ==.
;	../main.c:156: SEG = 0xff;
	mov	_P2,#0xFF
	C$main.c$157$2$2 ==.
;	../main.c:157: printf("overstep\n");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00102$:
	C$main.c$159$2$3 ==.
;	../main.c:159: SEG = seg[distance];
	mov	a,r2
	mov	dptr,#_seg
	movc	a,@a+dptr
	mov	_P2,a
	C$main.c$160$2$3 ==.
;	../main.c:160: printf("distance = %dcm\n", distance);
	mov	r3,#0x00
	push	ar2
	push	ar3
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$main.c$162$1$1 ==.
	XG$calculate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startSR04'
;------------------------------------------------------------
;------------------------------------------------------------
	G$startSR04$0$0 ==.
	C$main.c$165$1$1 ==.
;	../main.c:165: void startSR04() {
;	-----------------------------------------
;	 function startSR04
;	-----------------------------------------
_startSR04:
	C$main.c$167$1$1 ==.
;	../main.c:167: timer0For = 1;
	mov	_timer0For,#0x01
	C$main.c$168$1$1 ==.
;	../main.c:168: initTimer0();
	lcall	_initTimer0
	C$main.c$169$1$1 ==.
;	../main.c:169: trigger();
	lcall	_trigger
	C$main.c$170$1$1 ==.
;	../main.c:170: while(!ECHO);
00101$:
	jnb	_P3_4,00101$
	C$main.c$171$1$1 ==.
;	../main.c:171: TR0 = 1;
	setb	_TR0
	C$main.c$172$1$1 ==.
;	../main.c:172: while(ECHO);
00104$:
	jb	_P3_4,00104$
	C$main.c$173$1$1 ==.
;	../main.c:173: TR0 = 0;
	clr	_TR0
	C$main.c$174$1$1 ==.
;	../main.c:174: calculate();
	C$main.c$175$1$1 ==.
	XG$startSR04$0$0 ==.
	ljmp	_calculate
;------------------------------------------------------------
;Allocation info for local variables in function 'awayLEFTObs'
;------------------------------------------------------------
;------------------------------------------------------------
	G$awayLEFTObs$0$0 ==.
	C$main.c$178$1$1 ==.
;	../main.c:178: void awayLEFTObs() {
;	-----------------------------------------
;	 function awayLEFTObs
;	-----------------------------------------
_awayLEFTObs:
	C$main.c$181$1$1 ==.
;	../main.c:181: CAR = FRONT_RIGHT;
	mov	_P0,#0xDA
	C$main.c$182$1$1 ==.
;	../main.c:182: delay(700);
	mov	dptr,#0x02BC
	C$main.c$183$1$1 ==.
	XG$awayLEFTObs$0$0 ==.
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'awayRightObs'
;------------------------------------------------------------
;------------------------------------------------------------
	G$awayRightObs$0$0 ==.
	C$main.c$186$1$1 ==.
;	../main.c:186: void awayRightObs() {
;	-----------------------------------------
;	 function awayRightObs
;	-----------------------------------------
_awayRightObs:
	C$main.c$189$1$1 ==.
;	../main.c:189: CAR = FRONT_LEFT;
	mov	_P0,#0xAD
	C$main.c$190$1$1 ==.
;	../main.c:190: delay(700);
	mov	dptr,#0x02BC
	C$main.c$192$1$1 ==.
	XG$awayRightObs$0$0 ==.
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'awayFrontObs'
;------------------------------------------------------------
;------------------------------------------------------------
	G$awayFrontObs$0$0 ==.
	C$main.c$195$1$1 ==.
;	../main.c:195: void awayFrontObs() {
;	-----------------------------------------
;	 function awayFrontObs
;	-----------------------------------------
_awayFrontObs:
	C$main.c$196$1$1 ==.
;	../main.c:196: CAR = BACK;
	mov	_P0,#0x55
	C$main.c$197$1$1 ==.
;	../main.c:197: delay(200);
	mov	dptr,#0x00C8
	C$main.c$198$1$1 ==.
	XG$awayFrontObs$0$0 ==.
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'awayBackObs'
;------------------------------------------------------------
;------------------------------------------------------------
	G$awayBackObs$0$0 ==.
	C$main.c$201$1$1 ==.
;	../main.c:201: void awayBackObs() {
;	-----------------------------------------
;	 function awayBackObs
;	-----------------------------------------
_awayBackObs:
	C$main.c$202$1$1 ==.
;	../main.c:202: CAR = FRONT;
	mov	_P0,#0xAA
	C$main.c$203$1$1 ==.
;	../main.c:203: delay(400);
	mov	dptr,#0x0190
	C$main.c$204$1$1 ==.
	XG$awayBackObs$0$0 ==.
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'selfControl'
;------------------------------------------------------------
;------------------------------------------------------------
	G$selfControl$0$0 ==.
	C$main.c$207$1$1 ==.
;	../main.c:207: void selfControl() __interrupt 2 __using 0 {
;	-----------------------------------------
;	 function selfControl
;	-----------------------------------------
_selfControl:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$main.c$209$1$1 ==.
;	../main.c:209: ledStatus(1);
	mov	dpl,#0x01
	lcall	_ledStatus
	C$main.c$210$1$1 ==.
;	../main.c:210: printf("self control\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$main.c$213$1$1 ==.
;	../main.c:213: if (FRONT_SENSER == 0 && BACK_SENSER == 1) {
	jb	_P1_4,00133$
	jnb	_P1_5,00133$
	C$main.c$215$2$2 ==.
;	../main.c:215: if ((LEFT_SENSER== 0 && RIGHT_SENSER == 0) || (LEFT_SENSER&& RIGHT_SENSER) == 1) {
	jb	_P1_6,00109$
	jnb	_P1_7,00105$
00109$:
	jnb	_P1_6,00139$
	jb	_P1_7,00140$
00139$:
	mov	r2,#0x00
	sjmp	00141$
00140$:
	mov	r2,#0x01
00141$:
	cjne	r2,#0x01,00106$
00105$:
	C$main.c$216$3$3 ==.
;	../main.c:216: CAR = STOP;
	mov	_P0,#0xFF
	ljmp	00134$
00106$:
	C$main.c$218$2$2 ==.
;	../main.c:218: }else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
	jb	_P1_6,00102$
	jnb	_P1_7,00102$
	C$main.c$219$3$4 ==.
;	../main.c:219: CAR = STOP;
	mov	_P0,#0xFF
	C$main.c$220$3$4 ==.
;	../main.c:220: setTurnAngle(STEER_P45);
	mov	dpl,#0x01
	lcall	_setTurnAngle
	C$main.c$221$3$4 ==.
;	../main.c:221: setTurnAngle(STEER_P90);
	mov	dpl,#0x02
	lcall	_setTurnAngle
	ljmp	00134$
00102$:
	C$main.c$224$3$5 ==.
;	../main.c:224: CAR = STOP;
	mov	_P0,#0xFF
	C$main.c$225$3$5 ==.
;	../main.c:225: setTurnAngle(STEER_N45);
	mov	dpl,#0x03
	lcall	_setTurnAngle
	C$main.c$226$3$5 ==.
;	../main.c:226: setTurnAngle(STEER_N90);
	mov	dpl,#0x04
	lcall	_setTurnAngle
	ljmp	00134$
00133$:
	C$main.c$229$1$1 ==.
;	../main.c:229: }else if (BACK_SENSER == 0 && FRONT_SENSER == 1){
	jb	_P1_5,00129$
	jnb	_P1_4,00129$
	C$main.c$231$2$6 ==.
;	../main.c:231: if ((LEFT_SENSER && RIGHT_SENSER) == 1) {
	jnb	_P1_6,00142$
	jb	_P1_7,00143$
00142$:
	mov	r2,#0x00
	sjmp	00144$
00143$:
	mov	r2,#0x01
00144$:
	cjne	r2,#0x01,00118$
	C$main.c$232$3$7 ==.
;	../main.c:232: CAR = FRONT;
	mov	_P0,#0xAA
	ljmp	00134$
00118$:
	C$main.c$234$2$6 ==.
;	../main.c:234: }else if ((LEFT_SENSER || RIGHT_SENSER) == 0) {
	jb	_P1_6,00115$
	jb	_P1_7,00115$
	C$main.c$235$3$8 ==.
;	../main.c:235: CAR = BACK;
	mov	_P0,#0x55
	C$main.c$236$3$8 ==.
;	../main.c:236: delay(400);
	mov	dptr,#0x0190
	lcall	_delay
	ljmp	00134$
00115$:
	C$main.c$239$2$6 ==.
;	../main.c:239: }else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
	jb	_P1_6,00111$
	jnb	_P1_7,00111$
	C$main.c$240$3$9 ==.
;	../main.c:240: CAR = STOP;
	mov	_P0,#0xFF
	C$main.c$241$3$9 ==.
;	../main.c:241: setTurnAngle(STEER_P45);
	mov	dpl,#0x01
	lcall	_setTurnAngle
	C$main.c$242$3$9 ==.
;	../main.c:242: setTurnAngle(STEER_P90);
	mov	dpl,#0x02
	lcall	_setTurnAngle
	ljmp	00134$
00111$:
	C$main.c$245$3$10 ==.
;	../main.c:245: CAR = STOP;
	mov	_P0,#0xFF
	C$main.c$246$3$10 ==.
;	../main.c:246: setTurnAngle(STEER_N45);
	mov	dpl,#0x03
	lcall	_setTurnAngle
	C$main.c$247$3$10 ==.
;	../main.c:247: setTurnAngle(STEER_N90);
	mov	dpl,#0x04
	lcall	_setTurnAngle
	sjmp	00134$
00129$:
	C$main.c$250$1$1 ==.
;	../main.c:250: }else if (LEFT_SENSER== 0 && (RIGHT_SENSER && BACK_SENSER && FRONT_SENSER) == 1 ){
	jb	_P1_6,00125$
	jnb	_P1_7,00148$
	jb	_P1_5,00149$
00148$:
	mov	r2,#0x00
	sjmp	00150$
00149$:
	mov	r2,#0x01
00150$:
	mov	a,r2
	jz	00145$
	jb	_P1_4,00146$
00145$:
	mov	r2,#0x00
	sjmp	00147$
00146$:
	mov	r2,#0x01
00147$:
	cjne	r2,#0x01,00125$
	C$main.c$251$2$11 ==.
;	../main.c:251: CAR = STOP;
	mov	_P0,#0xFF
	C$main.c$252$2$11 ==.
;	../main.c:252: setTurnAngle(STEER_P45);
	mov	dpl,#0x01
	lcall	_setTurnAngle
	C$main.c$253$2$11 ==.
;	../main.c:253: setTurnAngle(STEER_P90);
	mov	dpl,#0x02
	lcall	_setTurnAngle
	sjmp	00134$
00125$:
	C$main.c$255$1$1 ==.
;	../main.c:255: }else if (RIGHT_SENSER == 0 && (LEFT_SENSER && FRONT_SENSER && BACK_SENSER) == 1) {
	jb	_P1_7,00121$
	jnb	_P1_6,00154$
	jb	_P1_4,00155$
00154$:
	mov	r2,#0x00
	sjmp	00156$
00155$:
	mov	r2,#0x01
00156$:
	mov	a,r2
	jz	00151$
	jb	_P1_5,00152$
00151$:
	mov	r2,#0x00
	sjmp	00153$
00152$:
	mov	r2,#0x01
00153$:
	cjne	r2,#0x01,00121$
	C$main.c$256$2$12 ==.
;	../main.c:256: CAR = STOP;
	mov	_P0,#0xFF
	C$main.c$257$2$12 ==.
;	../main.c:257: setTurnAngle(STEER_N45);
	mov	dpl,#0x03
	lcall	_setTurnAngle
	C$main.c$258$2$12 ==.
;	../main.c:258: setTurnAngle(STEER_N90);
	mov	dpl,#0x04
	lcall	_setTurnAngle
	sjmp	00134$
00121$:
	C$main.c$261$2$13 ==.
;	../main.c:261: CAR = STOP;
	mov	_P0,#0xFF
00134$:
	C$main.c$263$1$1 ==.
;	../main.c:263: SWITCH_SELF_CONTROL = 1;
	setb	_P1_0
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$264$1$1 ==.
	XG$selfControl$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'btControl'
;------------------------------------------------------------
;cmd                       Allocated to registers r2 
;------------------------------------------------------------
	G$btControl$0$0 ==.
	C$main.c$267$1$1 ==.
;	../main.c:267: void btControl(uchar cmd) {
;	-----------------------------------------
;	 function btControl
;	-----------------------------------------
_btControl:
	mov	r2,dpl
	C$main.c$269$1$1 ==.
;	../main.c:269: ledStatus(2);
	mov	dpl,#0x02
	push	ar2
	lcall	_ledStatus
	pop	ar2
	C$main.c$270$1$1 ==.
;	../main.c:270: switch(cmd) {
	cjne	r2,#0x61,00125$
	sjmp	00106$
00125$:
	cjne	r2,#0x62,00126$
	sjmp	00102$
00126$:
	cjne	r2,#0x64,00127$
	sjmp	00109$
00127$:
	cjne	r2,#0x66,00128$
	sjmp	00101$
00128$:
	cjne	r2,#0x6C,00129$
	sjmp	00103$
00129$:
	cjne	r2,#0x72,00130$
	sjmp	00104$
00130$:
	C$main.c$271$2$2 ==.
;	../main.c:271: case('f'): CAR = FRONT; break;
	cjne	r2,#0x73,00112$
	sjmp	00105$
00101$:
	mov	_P0,#0xAA
	C$main.c$272$2$2 ==.
;	../main.c:272: case('b'): CAR = BACK; break;
	sjmp	00113$
00102$:
	mov	_P0,#0x55
	C$main.c$273$2$2 ==.
;	../main.c:273: case('l'): CAR = FRONT_LEFT; break;
	sjmp	00113$
00103$:
	mov	_P0,#0xAD
	C$main.c$274$2$2 ==.
;	../main.c:274: case('r'): CAR = FRONT_RIGHT; break;
	sjmp	00113$
00104$:
	mov	_P0,#0xDA
	C$main.c$275$2$2 ==.
;	../main.c:275: case('s'): CAR = STOP; break;
	sjmp	00113$
00105$:
	mov	_P0,#0xFF
	C$main.c$276$2$2 ==.
;	../main.c:276: case('a'): 
	sjmp	00113$
00106$:
	C$main.c$277$2$2 ==.
;	../main.c:277: if (speed < 5) {
	mov	a,#0x100 - 0x05
	add	a,_speed
	jc	00113$
	C$main.c$278$3$3 ==.
;	../main.c:278: speed++;
	inc	_speed
	C$main.c$280$2$2 ==.
;	../main.c:280: break;
	C$main.c$281$2$2 ==.
;	../main.c:281: case('d'): 
	sjmp	00113$
00109$:
	C$main.c$282$2$2 ==.
;	../main.c:282: if (speed > 0) {
	mov	a,_speed
	jz	00113$
	C$main.c$283$3$4 ==.
;	../main.c:283: speed--;
	dec	_speed
	C$main.c$285$2$2 ==.
;	../main.c:285: break;
	C$main.c$286$2$2 ==.
;	../main.c:286: default:CAR = STOP; break;
	sjmp	00113$
00112$:
	mov	_P0,#0xFF
	C$main.c$287$1$1 ==.
;	../main.c:287: }
00113$:
	C$main.c$288$1$1 ==.
;	../main.c:288: initTimer2();
	C$main.c$289$1$1 ==.
	XG$btControl$0$0 ==.
	ljmp	_initTimer2
;------------------------------------------------------------
;Allocation info for local variables in function 'initInterrupt'
;------------------------------------------------------------
;------------------------------------------------------------
	G$initInterrupt$0$0 ==.
	C$main.c$292$1$1 ==.
;	../main.c:292: void initInterrupt() {
;	-----------------------------------------
;	 function initInterrupt
;	-----------------------------------------
_initInterrupt:
	C$main.c$294$1$1 ==.
;	../main.c:294: EA = 1;			//允许总中断
	setb	_EA
	C$main.c$295$1$1 ==.
;	../main.c:295: ES = 1;			//允许串行口中断
	setb	_ES
	C$main.c$296$1$1 ==.
;	../main.c:296: ET0 = 1;		//允许定时器0中断
	setb	_ET0
	C$main.c$297$1$1 ==.
;	../main.c:297: ET2 = 1;		//允许定时器2中断
	setb	_ET2
	C$main.c$298$1$1 ==.
;	../main.c:298: EX1 = 1;		//允许外部中断1中断
	setb	_EX1
	C$main.c$299$1$1 ==.
;	../main.c:299: IT1 = 0;		//低电平触发
	clr	_IT1
	C$main.c$300$1$1 ==.
	XG$initInterrupt$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initTimer0'
;------------------------------------------------------------
;------------------------------------------------------------
	G$initTimer0$0$0 ==.
	C$main.c$303$1$1 ==.
;	../main.c:303: void initTimer0() {
;	-----------------------------------------
;	 function initTimer0
;	-----------------------------------------
_initTimer0:
	C$main.c$305$1$1 ==.
;	../main.c:305: TMOD = 0x01;	//工作方式1
	mov	_TMOD,#0x01
	C$main.c$306$1$1 ==.
;	../main.c:306: if (timer0For == 0) {
	mov	a,_timer0For
	jnz	00102$
	C$main.c$308$2$2 ==.
;	../main.c:308: TR0 = 1;	//开启定时器0
	setb	_TR0
	ret
00102$:
	C$main.c$310$2$3 ==.
;	../main.c:310: TH0 = 0xFE;
	mov	_TH0,#0xFE
	C$main.c$311$2$3 ==.
;	../main.c:311: TL0 = 0x33;
	mov	_TL0,#0x33
	C$main.c$313$1$1 ==.
	XG$initTimer0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reloadTimer0'
;------------------------------------------------------------
;------------------------------------------------------------
	G$reloadTimer0$0$0 ==.
	C$main.c$315$1$1 ==.
;	../main.c:315: void reloadTimer0() {
;	-----------------------------------------
;	 function reloadTimer0
;	-----------------------------------------
_reloadTimer0:
	C$main.c$317$1$1 ==.
;	../main.c:317: if (timer0For == 0) {
	mov	a,_timer0For
	jnz	00102$
	C$main.c$318$2$2 ==.
;	../main.c:318: TH0 = 0xFE;
	mov	_TH0,#0xFE
	C$main.c$319$2$2 ==.
;	../main.c:319: TL0 = 0x33;	
	mov	_TL0,#0x33
	ret
00102$:
	C$main.c$321$2$3 ==.
;	../main.c:321: TH0 = 0xFE;
	mov	_TH0,#0xFE
	C$main.c$322$2$3 ==.
;	../main.c:322: TL0 = 0x33;
	mov	_TL0,#0x33
	C$main.c$324$1$1 ==.
	XG$reloadTimer0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initSerial'
;------------------------------------------------------------
;------------------------------------------------------------
	G$initSerial$0$0 ==.
	C$main.c$327$1$1 ==.
;	../main.c:327: void initSerial() {
;	-----------------------------------------
;	 function initSerial
;	-----------------------------------------
_initSerial:
	C$main.c$329$1$1 ==.
;	../main.c:329: SCON = 0x50;	//串行口工作模式1
	mov	_SCON,#0x50
	C$main.c$330$1$1 ==.
;	../main.c:330: PCON = 0x00;
	mov	_PCON,#0x00
	C$main.c$331$1$1 ==.
;	../main.c:331: RI = 0;			//接受中断标志清零
	clr	_RI
	C$main.c$333$1$1 ==.
;	../main.c:333: TMOD = 0x21;	//定时器T1方式2 T0工作方式1
	mov	_TMOD,#0x21
	C$main.c$334$1$1 ==.
;	../main.c:334: TL1 = 0xfd;
	mov	_TL1,#0xFD
	C$main.c$335$1$1 ==.
;	../main.c:335: TH1 = 0xfd;
	mov	_TH1,#0xFD
	C$main.c$336$1$1 ==.
;	../main.c:336: TR1 = 1;		//定时器开始计数
	setb	_TR1
	C$main.c$337$1$1 ==.
	XG$initSerial$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initTimer2'
;------------------------------------------------------------
;------------------------------------------------------------
	G$initTimer2$0$0 ==.
	C$main.c$340$1$1 ==.
;	../main.c:340: void initTimer2() {
;	-----------------------------------------
;	 function initTimer2
;	-----------------------------------------
_initTimer2:
	C$main.c$341$1$1 ==.
;	../main.c:341: T2MOD = 0x00;	//定时器T2向上计数
	mov	_T2MOD,#0x00
	C$main.c$342$1$1 ==.
;	../main.c:342: C_T2 = 0;		//选择T2为定时器方式
	clr	_C_T2
	C$main.c$343$1$1 ==.
;	../main.c:343: CP_RL2 = 0;		//T2自动装载
	clr	_CP_RL2
	C$main.c$344$1$1 ==.
;	../main.c:344: TH0 = 0x0fc;
	mov	_TH0,#0xFC
	C$main.c$345$1$1 ==.
;	../main.c:345: TL0 = 0x66;
	mov	_TL0,#0x66
	C$main.c$346$1$1 ==.
	XG$initTimer2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;------------------------------------------------------------
	G$timer0$0$0 ==.
	C$main.c$348$1$1 ==.
;	../main.c:348: void timer0() __interrupt 1 __using 0 {
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$main.c$350$1$1 ==.
;	../main.c:350: if (timer0For == 0) {
	mov	a,_timer0For
	jnz	00102$
	C$main.c$351$2$2 ==.
;	../main.c:351: reloadTimer0();
	lcall	_reloadTimer0
	C$main.c$352$2$2 ==.
;	../main.c:352: steerTurn();
	lcall	_steerTurn
	sjmp	00104$
00102$:
	C$main.c$354$2$3 ==.
;	../main.c:354: isOverstep = 1;
	setb	_isOverstep
00104$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$357$1$1 ==.
	XG$timer0$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'serial'
;------------------------------------------------------------
;------------------------------------------------------------
	G$serial$0$0 ==.
	C$main.c$361$1$1 ==.
;	../main.c:361: void serial() __interrupt 4 __using 1 {
;	-----------------------------------------
;	 function serial
;	-----------------------------------------
_serial:
	ar2 = 0x0a
	ar3 = 0x0b
	ar4 = 0x0c
	ar5 = 0x0d
	ar6 = 0x0e
	ar7 = 0x0f
	ar0 = 0x08
	ar1 = 0x09
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x08
	C$main.c$363$1$1 ==.
;	../main.c:363: RI = 0;
	clr	_RI
	C$main.c$365$1$1 ==.
;	../main.c:365: btControl(SBUF);
	mov	dpl,_SBUF
	mov	psw,#0x00
	lcall	_btControl
	mov	psw,#0x08
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$366$1$1 ==.
	XG$serial$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2'
;------------------------------------------------------------
;a                         Allocated to registers r2 
;------------------------------------------------------------
	G$timer2$0$0 ==.
	C$main.c$369$1$1 ==.
;	../main.c:369: void timer2() __interrupt 5 __using 2 {
;	-----------------------------------------
;	 function timer2
;	-----------------------------------------
_timer2:
	ar2 = 0x12
	ar3 = 0x13
	ar4 = 0x14
	ar5 = 0x15
	ar6 = 0x16
	ar7 = 0x17
	ar0 = 0x10
	ar1 = 0x11
	push	acc
	push	b
	push	psw
	mov	psw,#0x10
	C$main.c$372$1$1 ==.
;	../main.c:372: TF2 = 0;	//溢出清0
	clr	_TF2
	C$main.c$373$1$1 ==.
;	../main.c:373: t2InterruptTimes++;
	inc	_t2InterruptTimes
	C$main.c$374$1$1 ==.
;	../main.c:374: a = t2InterruptTimes % PWM_CYCLE;
	mov	b,#0x05
	mov	a,_t2InterruptTimes
	div	ab
	mov	r2,b
	C$main.c$375$1$1 ==.
;	../main.c:375: if (t2InterruptTimes == CMD_TIME) {
	mov	a,#0x14
	cjne	a,_t2InterruptTimes,00102$
	C$main.c$376$2$2 ==.
;	../main.c:376: t2InterruptTimes = 0;
	mov	_t2InterruptTimes,#0x00
	C$main.c$377$2$2 ==.
;	../main.c:377: CAR = STOP;
	mov	_P0,#0xFF
	C$main.c$378$2$2 ==.
;	../main.c:378: TR2 = 0;	//溢出20次，说明执行了蓝牙发送的指令20ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
	clr	_TR2
00102$:
	C$main.c$380$1$1 ==.
;	../main.c:380: if (a <= speed) {
	mov	a,_speed
	cjne	a,ar2,00112$
00112$:
	jc	00104$
	C$main.c$381$2$3 ==.
;	../main.c:381: M_PWM = 1;
	setb	_P3_6
	sjmp	00106$
00104$:
	C$main.c$383$2$4 ==.
;	../main.c:383: M_PWM = 0;
	clr	_P3_6
00106$:
	pop	psw
	pop	b
	pop	acc
	C$main.c$385$1$1 ==.
	XG$timer2$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$387$1$1 ==.
;	../main.c:387: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$main.c$389$1$1 ==.
;	../main.c:389: initInterrupt();
	lcall	_initInterrupt
	C$main.c$390$1$1 ==.
;	../main.c:390: initTimer0();
	lcall	_initTimer0
	C$main.c$391$1$1 ==.
;	../main.c:391: initSerial();
	lcall	_initSerial
	C$main.c$392$1$1 ==.
;	../main.c:392: initTimer2();
	lcall	_initTimer2
	C$main.c$393$1$1 ==.
;	../main.c:393: while(1) {
00104$:
	C$main.c$394$2$2 ==.
;	../main.c:394: sensorTrigger();
	lcall	_sensorTrigger
	C$main.c$395$2$2 ==.
;	../main.c:395: if (SWITCH_SELF_CONTROL) {
	jnb	_P1_0,00104$
	C$main.c$396$3$3 ==.
;	../main.c:396: ledStatus(0);
	mov	dpl,#0x00
	lcall	_ledStatus
	C$main.c$399$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$seg$0$0 == .
_seg:
	.db #0xC0	; 192
	.db #0xF9	; 249
	.db #0xA4	; 164
	.db #0xB0	; 176
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0xF8	; 248
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0xC6	; 198
	.db #0xA1	; 161
	.db #0x86	; 134
	.db #0x8E	; 142
Fmain$_str_0$0$0 == .
__str_0:
	.ascii "overstep"
	.db 0x0A
	.db 0x00
Fmain$_str_1$0$0 == .
__str_1:
	.ascii "distance = %dcm"
	.db 0x0A
	.db 0x00
Fmain$_str_2$0$0 == .
__str_2:
	.ascii "self control"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
