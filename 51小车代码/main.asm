;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Wed Nov 28 21:42:51 2018
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
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
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
_speed::
	.ds 1
_t0InterruptTimes::
	.ds 1
_t2InterruptTimes::
	.ds 1
_angle::
	.ds 1
_timer0For::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;	main.c:44: uchar speed = 5;	//小车速度
	mov	_speed,#0x05
;	main.c:49: __bit isOverstep = 0;	//距离过远，超出测量范围
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
;n                         Allocated to registers r2 r3 
;i                         Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:52: void delay(uint n){
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
;	main.c:54: for(i=n;i>0;i--){
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
;	main.c:55: for(j=112;j>0;j--);
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
;	main.c:54: for(i=n;i>0;i--){
	dec	r2
	cjne	r2,#0xff,00127$
	dec	r3
00127$:
	sjmp	00105$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	main.c:60: void putchar(char c) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	_SBUF,dpl
;	main.c:62: while(!TI);
00101$:
;	main.c:63: TI = 0;
	jbc	_TI,00108$
	sjmp	00101$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sensorTrigger'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:67: void sensorTrigger() {
;	-----------------------------------------
;	 function sensorTrigger
;	-----------------------------------------
_sensorTrigger:
;	main.c:68: if(!(BACK_SENSER && FRONT_SENSER && LEFT_SENSER&& RIGHT_SENSER)) {
	jnb	_P1_5,00101$
	jnb	_P1_4,00101$
	jnb	_P1_6,00101$
	jb	_P1_7,00106$
00101$:
;	main.c:69: SWITCH_SELF_CONTROL = 0;
	clr	_P1_0
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ledStatus'
;------------------------------------------------------------
;s                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:75: void ledStatus(uchar s) {
;	-----------------------------------------
;	 function ledStatus
;	-----------------------------------------
_ledStatus:
	mov	r2,dpl
;	main.c:76: switch(s) {
	cjne	r2,#0x00,00110$
	sjmp	00101$
00110$:
	cjne	r2,#0x01,00111$
	sjmp	00102$
00111$:
;	main.c:77: case(0):
	cjne	r2,#0x02,00105$
	sjmp	00103$
00101$:
;	main.c:78: STOP_RED_LED = 0;	//停止指示灯亮
	clr	_P1_1
;	main.c:79: BT_BLUE_LED = 1;
	setb	_P1_2
;	main.c:80: SELF_GREEN_LED = 1;
	setb	_P1_3
;	main.c:81: break;
;	main.c:82: case(1):
	ret
00102$:
;	main.c:83: STOP_RED_LED = 1;
	setb	_P1_1
;	main.c:84: BT_BLUE_LED = 1;	  
	setb	_P1_2
;	main.c:85: SELF_GREEN_LED = 0;    //自控指示灯亮
	clr	_P1_3
;	main.c:86: break;
;	main.c:87: case(2):
	ret
00103$:
;	main.c:88: STOP_RED_LED = 1;
	setb	_P1_1
;	main.c:89: SELF_GREEN_LED = 1;
	setb	_P1_3
;	main.c:90: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
	clr	_P1_2
;	main.c:92: }	
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTurnAngle'
;------------------------------------------------------------
;a                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:96: void setTurnAngle(uchar a) {
;	-----------------------------------------
;	 function setTurnAngle
;	-----------------------------------------
_setTurnAngle:
	mov	r2,dpl
;	main.c:98: switch(a) {
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
;	main.c:100: case(STEER_S):angle = 3; break;
00101$:
	mov	_angle,#0x03
;	main.c:102: case(STEER_P45):angle = 4; break;
	sjmp	00106$
00102$:
	mov	_angle,#0x04
;	main.c:104: case(STEER_P90):angle = 5; break;
	sjmp	00106$
00103$:
	mov	_angle,#0x05
;	main.c:106: case(STEER_N45):angle = 2; break;
	sjmp	00106$
00104$:
	mov	_angle,#0x02
;	main.c:108: case(STEER_N90):angle = 1; break;
	sjmp	00106$
00105$:
	mov	_angle,#0x01
;	main.c:109: }
00106$:
;	main.c:110: timer0For = 0;
	mov	_timer0For,#0x00
;	main.c:111: initTimer0();	
	ljmp	_initTimer0
;------------------------------------------------------------
;Allocation info for local variables in function 'steerTurn'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:114: void steerTurn() {
;	-----------------------------------------
;	 function steerTurn
;	-----------------------------------------
_steerTurn:
;	main.c:116: t0InterruptTimes++;
	inc	_t0InterruptTimes
;	main.c:117: if (t0InterruptTimes > PWM_CYCLE) {
	mov	a,#0x05
	cjne	a,_t0InterruptTimes,00110$
00110$:
	jnc	00102$
;	main.c:118: t0InterruptTimes = 0;
	mov	_t0InterruptTimes,#0x00
00102$:
;	main.c:121: if (t0InterruptTimes < angle) {
	mov	a,_t0InterruptTimes
	cjne	a,_angle,00112$
00112$:
	jnc	00104$
;	main.c:122: STEER_PWM = 1;
	setb	_P3_2
	sjmp	00105$
00104$:
;	main.c:124: STEER_PWM = 0;
	clr	_P3_2
00105$:
;	main.c:126: startSR04();
	ljmp	_startSR04
;------------------------------------------------------------
;Allocation info for local variables in function 'trigger'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:130: void trigger()
;	-----------------------------------------
;	 function trigger
;	-----------------------------------------
_trigger:
;	main.c:132: TRIG = 1;
	setb	_P3_5
;	main.c:134: __nop; __nop; __nop; __nop; __nop;
	 nop 
	 nop 
	 nop 
	 nop 
	 nop 
;	main.c:135: __nop; __nop; __nop; __nop; __nop;
	 nop 
	 nop 
	 nop 
	 nop 
	 nop 
;	main.c:136: __nop; __nop; __nop; __nop; __nop;
	 nop 
	 nop 
	 nop 
	 nop 
	 nop 
;	main.c:137: __nop; __nop; __nop; __nop; __nop;
	 nop 
	 nop 
	 nop 
	 nop 
	 nop 
;	main.c:138: TRIG = 0;
	clr	_P3_5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate'
;------------------------------------------------------------
;time                      Allocated to registers r2 
;distance                  Allocated to registers r2 
;------------------------------------------------------------
;	main.c:142: uchar calculate() {
;	-----------------------------------------
;	 function calculate
;	-----------------------------------------
_calculate:
;	main.c:146: time = TH0 * 256 + TL0;
	mov	r2,_TL0
;	main.c:148: TH0 = 0;
	mov	_TH0,#0x00
;	main.c:149: TL0 = 0;
	mov	_TL0,#0x00
;	main.c:150: time *= 1.085;
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
;	main.c:153: distance = (time * 0.017);
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
;	main.c:154: if(isOverstep) {
;	main.c:155: isOverstep = 0;
	jbc	_isOverstep,00107$
	sjmp	00102$
00107$:
;	main.c:156: SEG = 0xff;
	mov	_P2,#0xFF
;	main.c:157: printf("overstep\n");
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
;	main.c:159: SEG = seg[distance];
	mov	a,r2
	mov	dptr,#_seg
	movc	a,@a+dptr
	mov	_P2,a
;	main.c:160: printf("distance = %dcm\n", distance);
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startSR04'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:165: void startSR04() {
;	-----------------------------------------
;	 function startSR04
;	-----------------------------------------
_startSR04:
;	main.c:167: timer0For = 1;
	mov	_timer0For,#0x01
;	main.c:168: initTimer0();
	lcall	_initTimer0
;	main.c:169: trigger();
	lcall	_trigger
;	main.c:170: while(!ECHO);
00101$:
	jnb	_P3_4,00101$
;	main.c:171: TR0 = 1;
	setb	_TR0
;	main.c:172: while(ECHO);
00104$:
	jb	_P3_4,00104$
;	main.c:173: TR0 = 0;
	clr	_TR0
;	main.c:174: calculate();
	ljmp	_calculate
;------------------------------------------------------------
;Allocation info for local variables in function 'awayLEFTObs'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:178: void awayLEFTObs() {
;	-----------------------------------------
;	 function awayLEFTObs
;	-----------------------------------------
_awayLEFTObs:
;	main.c:181: CAR = FRONT_RIGHT;
	mov	_P0,#0xDA
;	main.c:182: delay(700);
	mov	dptr,#0x02BC
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'awayRightObs'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:186: void awayRightObs() {
;	-----------------------------------------
;	 function awayRightObs
;	-----------------------------------------
_awayRightObs:
;	main.c:189: CAR = FRONT_LEFT;
	mov	_P0,#0xAD
;	main.c:190: delay(700);
	mov	dptr,#0x02BC
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'awayFrontObs'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:195: void awayFrontObs() {
;	-----------------------------------------
;	 function awayFrontObs
;	-----------------------------------------
_awayFrontObs:
;	main.c:196: CAR = BACK;
	mov	_P0,#0x55
;	main.c:197: delay(200);
	mov	dptr,#0x00C8
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'awayBackObs'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:201: void awayBackObs() {
;	-----------------------------------------
;	 function awayBackObs
;	-----------------------------------------
_awayBackObs:
;	main.c:202: CAR = FRONT;
	mov	_P0,#0xAA
;	main.c:203: delay(400);
	mov	dptr,#0x0190
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'selfControl'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:207: void selfControl() __interrupt 2 __using 0 {
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
;	main.c:209: ledStatus(1);
	mov	dpl,#0x01
	lcall	_ledStatus
;	main.c:210: printf("self control\n");
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
;	main.c:213: if (FRONT_SENSER == 0 && BACK_SENSER == 1) {
	jb	_P1_4,00133$
	jnb	_P1_5,00133$
;	main.c:215: if ((LEFT_SENSER== 0 && RIGHT_SENSER == 0) || (LEFT_SENSER&& RIGHT_SENSER) == 1) {
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
;	main.c:216: CAR = STOP;
	mov	_P0,#0xFF
	ljmp	00134$
00106$:
;	main.c:218: }else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
	jb	_P1_6,00102$
	jnb	_P1_7,00102$
;	main.c:219: CAR = STOP;
	mov	_P0,#0xFF
;	main.c:220: setTurnAngle(STEER_P45);
	mov	dpl,#0x01
	lcall	_setTurnAngle
;	main.c:221: setTurnAngle(STEER_P90);
	mov	dpl,#0x02
	lcall	_setTurnAngle
	ljmp	00134$
00102$:
;	main.c:224: CAR = STOP;
	mov	_P0,#0xFF
;	main.c:225: setTurnAngle(STEER_N45);
	mov	dpl,#0x03
	lcall	_setTurnAngle
;	main.c:226: setTurnAngle(STEER_N90);
	mov	dpl,#0x04
	lcall	_setTurnAngle
	ljmp	00134$
00133$:
;	main.c:229: }else if (BACK_SENSER == 0 && FRONT_SENSER == 1){
	jb	_P1_5,00129$
	jnb	_P1_4,00129$
;	main.c:231: if ((LEFT_SENSER && RIGHT_SENSER) == 1) {
	jnb	_P1_6,00142$
	jb	_P1_7,00143$
00142$:
	mov	r2,#0x00
	sjmp	00144$
00143$:
	mov	r2,#0x01
00144$:
	cjne	r2,#0x01,00118$
;	main.c:232: CAR = FRONT;
	mov	_P0,#0xAA
	ljmp	00134$
00118$:
;	main.c:234: }else if ((LEFT_SENSER || RIGHT_SENSER) == 0) {
	jb	_P1_6,00115$
	jb	_P1_7,00115$
;	main.c:235: CAR = BACK;
	mov	_P0,#0x55
;	main.c:236: delay(400);
	mov	dptr,#0x0190
	lcall	_delay
	ljmp	00134$
00115$:
;	main.c:239: }else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
	jb	_P1_6,00111$
	jnb	_P1_7,00111$
;	main.c:240: CAR = STOP;
	mov	_P0,#0xFF
;	main.c:241: setTurnAngle(STEER_P45);
	mov	dpl,#0x01
	lcall	_setTurnAngle
;	main.c:242: setTurnAngle(STEER_P90);
	mov	dpl,#0x02
	lcall	_setTurnAngle
	ljmp	00134$
00111$:
;	main.c:245: CAR = STOP;
	mov	_P0,#0xFF
;	main.c:246: setTurnAngle(STEER_N45);
	mov	dpl,#0x03
	lcall	_setTurnAngle
;	main.c:247: setTurnAngle(STEER_N90);
	mov	dpl,#0x04
	lcall	_setTurnAngle
	sjmp	00134$
00129$:
;	main.c:250: }else if (LEFT_SENSER== 0 && (RIGHT_SENSER && BACK_SENSER && FRONT_SENSER) == 1 ){
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
;	main.c:251: CAR = STOP;
	mov	_P0,#0xFF
;	main.c:252: setTurnAngle(STEER_P45);
	mov	dpl,#0x01
	lcall	_setTurnAngle
;	main.c:253: setTurnAngle(STEER_P90);
	mov	dpl,#0x02
	lcall	_setTurnAngle
	sjmp	00134$
00125$:
;	main.c:255: }else if (RIGHT_SENSER == 0 && (LEFT_SENSER && FRONT_SENSER && BACK_SENSER) == 1) {
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
;	main.c:256: CAR = STOP;
	mov	_P0,#0xFF
;	main.c:257: setTurnAngle(STEER_N45);
	mov	dpl,#0x03
	lcall	_setTurnAngle
;	main.c:258: setTurnAngle(STEER_N90);
	mov	dpl,#0x04
	lcall	_setTurnAngle
	sjmp	00134$
00121$:
;	main.c:261: CAR = STOP;
	mov	_P0,#0xFF
00134$:
;	main.c:263: SWITCH_SELF_CONTROL = 1;
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
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'btControl'
;------------------------------------------------------------
;cmd                       Allocated to registers r2 
;------------------------------------------------------------
;	main.c:267: void btControl(uchar cmd) {
;	-----------------------------------------
;	 function btControl
;	-----------------------------------------
_btControl:
	mov	r2,dpl
;	main.c:269: ledStatus(2);
	mov	dpl,#0x02
	push	ar2
	lcall	_ledStatus
	pop	ar2
;	main.c:270: switch(cmd) {
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
;	main.c:271: case('f'): CAR = FRONT; break;
	cjne	r2,#0x73,00112$
	sjmp	00105$
00101$:
	mov	_P0,#0xAA
;	main.c:272: case('b'): CAR = BACK; break;
	sjmp	00113$
00102$:
	mov	_P0,#0x55
;	main.c:273: case('l'): CAR = FRONT_LEFT; break;
	sjmp	00113$
00103$:
	mov	_P0,#0xAD
;	main.c:274: case('r'): CAR = FRONT_RIGHT; break;
	sjmp	00113$
00104$:
	mov	_P0,#0xDA
;	main.c:275: case('s'): CAR = STOP; break;
	sjmp	00113$
00105$:
	mov	_P0,#0xFF
;	main.c:276: case('a'): 
	sjmp	00113$
00106$:
;	main.c:277: if (speed < 5) {
	mov	a,#0x100 - 0x05
	add	a,_speed
	jc	00113$
;	main.c:278: speed++;
	inc	_speed
;	main.c:280: break;
;	main.c:281: case('d'): 
	sjmp	00113$
00109$:
;	main.c:282: if (speed > 0) {
	mov	a,_speed
	jz	00113$
;	main.c:283: speed--;
	dec	_speed
;	main.c:285: break;
;	main.c:286: default:CAR = STOP; break;
	sjmp	00113$
00112$:
	mov	_P0,#0xFF
;	main.c:287: }
00113$:
;	main.c:288: initTimer2();
	ljmp	_initTimer2
;------------------------------------------------------------
;Allocation info for local variables in function 'initInterrupt'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:292: void initInterrupt() {
;	-----------------------------------------
;	 function initInterrupt
;	-----------------------------------------
_initInterrupt:
;	main.c:294: EA = 1;			//允许总中断
	setb	_EA
;	main.c:295: ES = 1;			//允许串行口中断
	setb	_ES
;	main.c:296: ET0 = 1;		//允许定时器0中断
	setb	_ET0
;	main.c:297: ET2 = 1;		//允许定时器2中断
	setb	_ET2
;	main.c:298: EX1 = 1;		//允许外部中断1中断
	setb	_EX1
;	main.c:299: IT1 = 0;		//低电平触发
	clr	_IT1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initTimer0'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:303: void initTimer0() {
;	-----------------------------------------
;	 function initTimer0
;	-----------------------------------------
_initTimer0:
;	main.c:305: TMOD = 0x01;	//工作方式1
	mov	_TMOD,#0x01
;	main.c:306: if (timer0For == 0) {
	mov	a,_timer0For
	jnz	00102$
;	main.c:308: TR0 = 1;	//开启定时器0
	setb	_TR0
	ret
00102$:
;	main.c:310: TH0 = 0xFE;
	mov	_TH0,#0xFE
;	main.c:311: TL0 = 0x33;
	mov	_TL0,#0x33
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reloadTimer0'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:315: void reloadTimer0() {
;	-----------------------------------------
;	 function reloadTimer0
;	-----------------------------------------
_reloadTimer0:
;	main.c:317: if (timer0For == 0) {
	mov	a,_timer0For
	jnz	00102$
;	main.c:318: TH0 = 0xFE;
	mov	_TH0,#0xFE
;	main.c:319: TL0 = 0x33;	
	mov	_TL0,#0x33
	ret
00102$:
;	main.c:321: TH0 = 0xFE;
	mov	_TH0,#0xFE
;	main.c:322: TL0 = 0x33;
	mov	_TL0,#0x33
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initSerial'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:327: void initSerial() {
;	-----------------------------------------
;	 function initSerial
;	-----------------------------------------
_initSerial:
;	main.c:329: SCON = 0x50;	//串行口工作模式1
	mov	_SCON,#0x50
;	main.c:330: PCON = 0x00;
	mov	_PCON,#0x00
;	main.c:331: RI = 0;			//接受中断标志清零
	clr	_RI
;	main.c:333: TMOD = 0x21;	//定时器T1方式2 T0工作方式1
	mov	_TMOD,#0x21
;	main.c:334: TL1 = 0xfd;
	mov	_TL1,#0xFD
;	main.c:335: TH1 = 0xfd;
	mov	_TH1,#0xFD
;	main.c:336: TR1 = 1;		//定时器开始计数
	setb	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initTimer2'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:340: void initTimer2() {
;	-----------------------------------------
;	 function initTimer2
;	-----------------------------------------
_initTimer2:
;	main.c:341: T2MOD = 0x00;	//定时器T2向上计数
	mov	_T2MOD,#0x00
;	main.c:342: C_T2 = 0;		//选择T2为定时器方式
	clr	_C_T2
;	main.c:343: CP_RL2 = 0;		//T2自动装载
	clr	_CP_RL2
;	main.c:344: TH0 = 0x0fc;
	mov	_TH0,#0xFC
;	main.c:345: TL0 = 0x66;
	mov	_TL0,#0x66
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:348: void timer0() __interrupt 1 __using 0 {
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
;	main.c:350: if (timer0For == 0) {
	mov	a,_timer0For
	jnz	00102$
;	main.c:351: reloadTimer0();
	lcall	_reloadTimer0
;	main.c:352: steerTurn();
	lcall	_steerTurn
	sjmp	00104$
00102$:
;	main.c:354: isOverstep = 1;
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
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'serial'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:361: void serial() __interrupt 4 __using 1 {
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
;	main.c:363: RI = 0;
	clr	_RI
;	main.c:364: putchar(SBUF);	//接受的数据再发送给控制端
	mov	dpl,_SBUF
	mov	psw,#0x00
	lcall	_putchar
	mov	psw,#0x08
;	main.c:365: btControl(SBUF);
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
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2'
;------------------------------------------------------------
;a                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:369: void timer2() __interrupt 5 __using 2 {
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
;	main.c:372: TF2 = 0;	//溢出清0
	clr	_TF2
;	main.c:373: t2InterruptTimes++;
	inc	_t2InterruptTimes
;	main.c:374: a = t2InterruptTimes % PWM_CYCLE;
	mov	b,#0x05
	mov	a,_t2InterruptTimes
	div	ab
	mov	r2,b
;	main.c:375: if (t2InterruptTimes == CMD_TIME) {
	mov	a,#0x14
	cjne	a,_t2InterruptTimes,00102$
;	main.c:376: t2InterruptTimes = 0;
	mov	_t2InterruptTimes,#0x00
;	main.c:377: CAR = STOP;
	mov	_P0,#0xFF
;	main.c:378: TR2 = 0;	//溢出20次，说明执行了蓝牙发送的指令20ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
	clr	_TR2
00102$:
;	main.c:380: if (a <= speed) {
	mov	a,_speed
	cjne	a,ar2,00112$
00112$:
	jc	00104$
;	main.c:381: M_PWM = 1;
	setb	_P3_6
	sjmp	00106$
00104$:
;	main.c:383: M_PWM = 0;
	clr	_P3_6
00106$:
	pop	psw
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:387: void main() {
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
;	main.c:389: initInterrupt();
	lcall	_initInterrupt
;	main.c:390: initTimer0();
	lcall	_initTimer0
;	main.c:391: initSerial();
	lcall	_initSerial
;	main.c:392: initTimer2();
	lcall	_initTimer2
;	main.c:393: while(1) {
00104$:
;	main.c:394: sensorTrigger();
	lcall	_sensorTrigger
;	main.c:395: if (SWITCH_SELF_CONTROL) {
	jnb	_P1_0,00104$
;	main.c:396: ledStatus(0);
	mov	dpl,#0x00
	lcall	_ledStatus
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
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
__str_0:
	.ascii "overstep"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "distance = %dcm"
	.db 0x0A
	.db 0x00
__str_2:
	.ascii "self control"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
