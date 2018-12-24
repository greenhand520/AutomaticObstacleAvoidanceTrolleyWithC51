;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.3 #10694 (MINGW32)
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
	.globl _int1
	.globl _timer0
	.globl _putcharToSer
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
	.globl _setObsFlag_PARM_4
	.globl _setObsFlag_PARM_3
	.globl _setObsFlag_PARM_2
	.globl _setObsFlag_PARM_1
	.globl _rObsFlag
	.globl _lObsFlag
	.globl _bObsFlag
	.globl _fObsFlag
	.globl _isFirst
	.globl _isOverStep
	.globl _angle
	.globl _t2InterruptTimes
	.globl _t0InterruptTimes
	.globl _speed
	.globl _operate
	.globl _delay
	.globl _sensorTrigger
	.globl _setObsFlag
	.globl _ledStatus
	.globl _setTurnAngle
	.globl _steerTurn
	.globl _workSR04
	.globl _calculate
	.globl _isHaveObs
	.globl _selfControl
	.globl _btControl
	.globl _initInterrupt
	.globl _initTimer0
	.globl _initSerial
	.globl _initTimer2
	.globl _setup
	.globl _loop
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
	.area REG_BANK_3	(REL,OVR,DATA)
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
_operate::
	.ds 1
_speed::
	.ds 1
_t0InterruptTimes::
	.ds 2
_t2InterruptTimes::
	.ds 2
_angle::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
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
_isOverStep::
	.ds 1
_isFirst::
	.ds 1
_fObsFlag::
	.ds 1
_bObsFlag::
	.ds 1
_lObsFlag::
	.ds 1
_rObsFlag::
	.ds 1
_setObsFlag_PARM_1:
	.ds 1
_setObsFlag_PARM_2:
	.ds 1
_setObsFlag_PARM_3:
	.ds 1
_setObsFlag_PARM_4:
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
	ljmp	_int1
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
;	main.c:70: uchar operate = 0;
	mov	_operate,#0x00
;	main.c:76: uchar speed = 8;	//小车速度
	mov	_speed,#0x08
;	main.c:80: __bit isOverStep = 0;	//定时器0是否溢出标志，溢出距离过远，超出测量范围
;	assignBit
	clr	_isOverStep
;	main.c:81: __bit isFirst = 1;
;	assignBit
	setb	_isFirst
;	main.c:82: __bit fObsFlag = 0;		//前面障碍物标志
;	assignBit
	clr	_fObsFlag
;	main.c:83: __bit bObsFlag = 0;		//后面障碍物标志
;	assignBit
	clr	_bObsFlag
;	main.c:84: __bit lObsFlag = 0;		//左面障碍物标志
;	assignBit
	clr	_lObsFlag
;	main.c:85: __bit rObsFlag = 0;		//右面障碍物标志
;	assignBit
	clr	_rObsFlag
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated to registers 
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:89: void delay(uint n){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	main.c:91: for(i=n;i>0;i--){
00106$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	main.c:92: for(j=112;j>0;j--);
	mov	r4,#0x70
	mov	r5,#0x00
00104$:
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	mov	a,r2
	orl	a,r3
	jnz	00104$
;	main.c:91: for(i=n;i>0;i--){
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	sjmp	00106$
00108$:
;	main.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putcharToSer'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	main.c:97: void  putcharToSer(char c) {
;	-----------------------------------------
;	 function putcharToSer
;	-----------------------------------------
_putcharToSer:
	mov	_SBUF,dpl
;	main.c:99: while(!TI);
00101$:
;	main.c:100: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	main.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sensorTrigger'
;------------------------------------------------------------
;	main.c:104: void sensorTrigger() {
;	-----------------------------------------
;	 function sensorTrigger
;	-----------------------------------------
_sensorTrigger:
;	main.c:105: if(!(BACK_SENSER & FRONT_SENSER & LEFT_SENSER & RIGHT_SENSER)) {
	mov	c,_P1_5
	anl	c,_P1_4
	anl	c,_P1_6
	anl	c,_P1_7
	jc	00102$
;	main.c:106: SWITCH_SELF_CONTROL = 0;
;	assignBit
	clr	_P1_0
	ret
00102$:
;	main.c:109: SWITCH_SELF_CONTROL = 1;
;	assignBit
	setb	_P1_0
;	main.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setObsFlag'
;------------------------------------------------------------
;	main.c:114: void setObsFlag(__bit fof, __bit bof, __bit lof, __bit rof) {
;	-----------------------------------------
;	 function setObsFlag
;	-----------------------------------------
_setObsFlag:
;	main.c:115: fObsFlag = fof;
;	assignBit
	mov	c,_setObsFlag_PARM_1
	mov	_fObsFlag,c
;	main.c:116: bObsFlag = bof;
;	assignBit
	mov	c,_setObsFlag_PARM_2
	mov	_bObsFlag,c
;	main.c:117: lObsFlag = lof;
;	assignBit
	mov	c,_setObsFlag_PARM_3
	mov	_lObsFlag,c
;	main.c:118: rObsFlag = rof;
;	assignBit
	mov	c,_setObsFlag_PARM_4
	mov	_rObsFlag,c
;	main.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ledStatus'
;------------------------------------------------------------
;s                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:123: void ledStatus(uchar s) {
;	-----------------------------------------
;	 function ledStatus
;	-----------------------------------------
_ledStatus:
	mov	r7,dpl
;	main.c:124: switch(s) {
	cjne	r7,#0x00,00119$
	sjmp	00101$
00119$:
	cjne	r7,#0x01,00120$
	sjmp	00102$
00120$:
;	main.c:125: case(0):
	cjne	r7,#0x02,00105$
	sjmp	00103$
00101$:
;	main.c:126: STOP_RED_LED = 0;	//停止指示灯亮
;	assignBit
	clr	_P1_1
;	main.c:127: BT_BLUE_LED = 1;
;	assignBit
	setb	_P1_2
;	main.c:128: SELF_GREEN_LED = 1;
;	assignBit
	setb	_P1_3
;	main.c:129: break;
;	main.c:130: case(1):
	ret
00102$:
;	main.c:131: STOP_RED_LED = 1;
;	assignBit
	setb	_P1_1
;	main.c:132: BT_BLUE_LED = 1;	  
;	assignBit
	setb	_P1_2
;	main.c:133: SELF_GREEN_LED = 0;    //自控指示灯亮
;	assignBit
	clr	_P1_3
;	main.c:134: break;
;	main.c:135: case(2):
	ret
00103$:
;	main.c:136: STOP_RED_LED = 1;
;	assignBit
	setb	_P1_1
;	main.c:137: SELF_GREEN_LED = 1;
;	assignBit
	setb	_P1_3
;	main.c:138: BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
;	assignBit
	clr	_P1_2
;	main.c:140: }	
00105$:
;	main.c:141: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTurnAngle'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:144: void setTurnAngle(uchar a) {
;	-----------------------------------------
;	 function setTurnAngle
;	-----------------------------------------
_setTurnAngle:
	mov	r7,dpl
;	main.c:146: switch(a) {
	cjne	r7,#0x05,00129$
	sjmp	00103$
00129$:
	cjne	r7,#0x06,00130$
	sjmp	00104$
00130$:
	cjne	r7,#0x07,00131$
	sjmp	00105$
00131$:
	cjne	r7,#0x08,00132$
	sjmp	00102$
00132$:
	cjne	r7,#0x09,00107$
;	main.c:148: case(STEER_N90):angle = 1; break;
	mov	_angle,#0x01
;	main.c:150: case(STEER_N45):angle = 2; break;
	ret
00102$:
	mov	_angle,#0x02
;	main.c:152: case(STEER_S):angle = 3; break;
	ret
00103$:
	mov	_angle,#0x03
;	main.c:154: case(STEER_P45):angle = 4; break;
	ret
00104$:
	mov	_angle,#0x04
;	main.c:156: case(STEER_P90):angle = 5; break;
	ret
00105$:
	mov	_angle,#0x05
;	main.c:157: }	
00107$:
;	main.c:158: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'steerTurn'
;------------------------------------------------------------
;a                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:161: void steerTurn() {
;	-----------------------------------------
;	 function steerTurn
;	-----------------------------------------
_steerTurn:
;	main.c:164: t0InterruptTimes++;
	inc	_t0InterruptTimes
	clr	a
	cjne	a,_t0InterruptTimes,00116$
	inc	(_t0InterruptTimes + 1)
00116$:
;	main.c:165: a = t0InterruptTimes % 5;
	mov	__moduint_PARM_2,#0x05
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_t0InterruptTimes
	mov	dph,(_t0InterruptTimes + 1)
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
;	main.c:166: if (t0InterruptTimes == 150) {	//舵机转动到指定角度后,停止定时器0计时
	mov	a,#0x96
	cjne	a,_t0InterruptTimes,00117$
	clr	a
	cjne	a,(_t0InterruptTimes + 1),00117$
	sjmp	00118$
00117$:
	sjmp	00102$
00118$:
;	main.c:167: t0InterruptTimes = 0;
	clr	a
	mov	_t0InterruptTimes,a
	mov	(_t0InterruptTimes + 1),a
;	main.c:168: STEER_PWM = 0;	
;	assignBit
	clr	_P3_2
;	main.c:169: TR0 = 0;
;	assignBit
	clr	_TR0
00102$:
;	main.c:172: if (a < angle) {
	clr	c
	mov	a,r6
	subb	a,_angle
	jnc	00104$
;	main.c:173: STEER_PWM = 1;
;	assignBit
	setb	_P3_2
	ret
00104$:
;	main.c:175: STEER_PWM = 0;
;	assignBit
	clr	_P3_2
;	main.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'workSR04'
;------------------------------------------------------------
;	main.c:180: void workSR04() {
;	-----------------------------------------
;	 function workSR04
;	-----------------------------------------
_workSR04:
;	main.c:182: TRIG = 1;
;	assignBit
	setb	_P3_5
;	main.c:184: __nop; __nop; __nop; __nop; __nop;
	nop	
	nop	
	nop	
	nop	
	nop	
;	main.c:185: __nop; __nop; __nop; __nop; __nop;
	nop	
	nop	
	nop	
	nop	
	nop	
;	main.c:186: __nop; __nop; __nop; __nop; __nop;
	nop	
	nop	
	nop	
	nop	
	nop	
;	main.c:187: __nop; __nop; __nop; __nop; __nop;
	nop	
	nop	
	nop	
	nop	
	nop	
;	main.c:188: TRIG = 0;
;	assignBit
	clr	_P3_5
;	main.c:189: while(!ECHO);
00101$:
	jnb	_P3_4,00101$
;	main.c:190: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:191: while(ECHO);
00104$:
	jb	_P3_4,00104$
;	main.c:192: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:193: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate'
;------------------------------------------------------------
;distance                  Allocated to registers r6 r7 
;time                      Allocated to registers 
;------------------------------------------------------------
;	main.c:196: int calculate() {
;	-----------------------------------------
;	 function calculate
;	-----------------------------------------
_calculate:
;	main.c:200: time = TH0 * 256 + TL0;
	mov	r7,_TH0
	mov	r6,#0x00
	mov	r4,_TL0
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
;	main.c:202: TH0 = 0;
;	1-genFromRTrack replaced	mov	_TH0,#0x00
	mov	_TH0,r6
;	main.c:203: TL0 = 0;
;	1-genFromRTrack replaced	mov	_TL0,#0x00
	mov	_TL0,r6
;	main.c:204: time *= 1.085;
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xe148
	mov	b,#0x8a
	mov	a,#0x3f
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
;	main.c:207: distance = (time * 0.017); 
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x4396
	mov	b,#0x8b
	mov	a,#0x3c
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
;	main.c:208: if(isOverStep) {
;	main.c:209: isOverStep = 0;
;	assignBit
	jbc	_isOverStep,00111$
	sjmp	00102$
00111$:
;	main.c:210: SEG = 0xff;
	mov	_P2,#0xff
;	main.c:212: return -1;
	mov	dptr,#0xffff
	ret
00102$:
;	main.c:215: SEG = seg[distance];
	mov	a,r6
	add	a,#_seg
	mov	dpl,a
	mov	a,r7
	addc	a,#(_seg >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P2,a
;	main.c:218: return distance;
	mov	dpl,r6
	mov	dph,r7
;	main.c:220: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isHaveObs'
;------------------------------------------------------------
;dir                       Allocated to registers 
;distance                  Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:223: __bit isHaveObs(uchar dir) {
;	-----------------------------------------
;	 function isHaveObs
;	-----------------------------------------
_isHaveObs:
;	main.c:226: ET2 = 0;	//禁止定时器2中断，以免对舵机的PWM波形产生影响
;	assignBit
	clr	_ET2
;	main.c:227: setTurnAngle(dir);
	lcall	_setTurnAngle
;	main.c:228: operate = STEER_OPERATE;
	mov	_operate,#0x02
;	main.c:229: initTimer0();
	lcall	_initTimer0
;	main.c:230: delay(100);		//延迟时间太短会导致舵机无法转动
	mov	dptr,#0x0064
	lcall	_delay
;	main.c:234: operate = SR04_OPERATE;
	mov	_operate,#0x03
;	main.c:235: initTimer0();
	lcall	_initTimer0
;	main.c:236: workSR04();		//超声波模块工作
	lcall	_workSR04
;	main.c:237: distance = calculate();
	lcall	_calculate
	mov	r6,dpl
	mov	r7,dph
;	main.c:239: if (distance > OBS_DIS | distance == -1) {	//距离大于允许的距离或者超出测量范围，则算没有障碍物
	clr	c
	mov	a,#0x0a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r5,a
	clr	a
	cjne	r6,#0xff,00110$
	cjne	r7,#0xff,00110$
	inc	a
00110$:
	orl	a,r5
	jz	00102$
;	main.c:240: return 0;
	clr	c
	ret
00102$:
;	main.c:242: return 1;
	setb	c
;	main.c:244: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'selfControl'
;------------------------------------------------------------
;sensor_state              Allocated to registers r7 
;------------------------------------------------------------
;	main.c:248: void selfControl() {
;	-----------------------------------------
;	 function selfControl
;	-----------------------------------------
_selfControl:
;	main.c:251: uchar sensor_state = 0xf0 & P1;		//获取传感器的情况，屏蔽低4位
	mov	a,_P1
	anl	a,#0xf0
	mov	r7,a
;	main.c:254: switch(sensor_state) {
	cjne	r7,#0x30,00185$
	sjmp	00101$
00185$:
	cjne	r7,#0x70,00186$
	ljmp	00117$
00186$:
	cjne	r7,#0xb0,00187$
	ljmp	00113$
00187$:
	cjne	r7,#0xd0,00188$
	ljmp	00110$
00188$:
	cjne	r7,#0xe0,00189$
	sjmp	00105$
00189$:
	ljmp	00121$
;	main.c:255: case(0x20 | 0x30):	//前左右 | 左右
00101$:
;	main.c:256: setObsFlag(1, 0, 1, 1);
;	assignBit
	setb	_setObsFlag_PARM_1
;	assignBit
	clr	_setObsFlag_PARM_2
;	assignBit
	setb	_setObsFlag_PARM_3
;	assignBit
	setb	_setObsFlag_PARM_4
	lcall	_setObsFlag
;	main.c:257: while(lObsFlag & rObsFlag & fObsFlag) {
00102$:
	mov	c,_lObsFlag
	anl	c,_rObsFlag
	anl	c,_fObsFlag
	jc	00190$
	ret
00190$:
;	main.c:258: CAR = BACK;
	mov	_P0,#0xaa
;	main.c:259: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:260: CAR = STOP;
	mov	_P0,#0x00
;	main.c:261: lObsFlag = isHaveObs(STEER_N45);
	mov	dpl,#0x08
	lcall	_isHaveObs
	mov	_lObsFlag,c
;	main.c:262: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:263: fObsFlag = isHaveObs(STEER_S);
	mov	dpl,#0x05
	lcall	_isHaveObs
	mov	_fObsFlag,c
;	main.c:264: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:265: rObsFlag = isHaveObs(STEER_P45);
	mov	dpl,#0x06
	lcall	_isHaveObs
	mov	_rObsFlag,c
;	main.c:266: CAR = BACK;
	mov	_P0,#0xaa
;	main.c:267: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	main.c:270: case(0xe0): //只有前
	sjmp	00102$
00105$:
;	main.c:271: setObsFlag(1, 0, 0, 0);
;	assignBit
	setb	_setObsFlag_PARM_1
;	assignBit
	clr	_setObsFlag_PARM_2
;	assignBit
	clr	_setObsFlag_PARM_3
;	assignBit
	clr	_setObsFlag_PARM_4
	lcall	_setObsFlag
;	main.c:272: while(fObsFlag) {
00106$:
	jb	_fObsFlag,00191$
	ret
00191$:
;	main.c:273: CAR = BACK;
	mov	_P0,#0xaa
;	main.c:274: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:275: CAR = STOP;
	mov	_P0,#0x00
;	main.c:276: fObsFlag = isHaveObs(STEER_S);
	mov	dpl,#0x05
	lcall	_isHaveObs
	mov	_fObsFlag,c
;	main.c:277: CAR = BACK;
	mov	_P0,#0xaa
;	main.c:278: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	main.c:282: while(!BACK_SENSER) {
	sjmp	00106$
00110$:
	jnb	_P1_5,00192$
	ret
00192$:
;	main.c:283: CAR = FRONT;
	mov	_P0,#0x55
;	main.c:286: case(0xb0):	//只有左
	sjmp	00110$
00113$:
;	main.c:287: setObsFlag(0, 0, 1, 0);
;	assignBit
	clr	_setObsFlag_PARM_1
;	assignBit
	clr	_setObsFlag_PARM_2
;	assignBit
	setb	_setObsFlag_PARM_3
;	assignBit
	clr	_setObsFlag_PARM_4
	lcall	_setObsFlag
;	main.c:288: while(lObsFlag) {
00114$:
	jnb	_lObsFlag,00116$
;	main.c:289: CAR = BACK;
	mov	_P0,#0xaa
;	main.c:290: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:291: CAR = STOP;
	mov	_P0,#0x00
;	main.c:292: lObsFlag = isHaveObs(STEER_N45);
	mov	dpl,#0x08
	lcall	_isHaveObs
	mov	_lObsFlag,c
;	main.c:293: CAR = BACK;
	mov	_P0,#0xaa
;	main.c:294: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
	sjmp	00114$
00116$:
;	main.c:296: CAR = FRONT_RIGHT;
	mov	_P0,#0xa5
;	main.c:297: delay(100);
	mov	dptr,#0x0064
;	main.c:298: break;
;	main.c:299: case(0x70):	//只有右
	ljmp	_delay
00117$:
;	main.c:300: setObsFlag(0, 0, 1, 1);
;	assignBit
	clr	_setObsFlag_PARM_1
;	assignBit
	clr	_setObsFlag_PARM_2
;	assignBit
	setb	_setObsFlag_PARM_3
;	assignBit
	setb	_setObsFlag_PARM_4
	lcall	_setObsFlag
;	main.c:301: while(rObsFlag) {
00118$:
	jnb	_rObsFlag,00120$
;	main.c:302: CAR = BACK;
	mov	_P0,#0xaa
;	main.c:303: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:304: CAR = STOP;
	mov	_P0,#0x00
;	main.c:305: rObsFlag = isHaveObs(STEER_P45);
	mov	dpl,#0x06
	lcall	_isHaveObs
	mov	_rObsFlag,c
;	main.c:306: CAR = BACK;
	mov	_P0,#0xaa
;	main.c:307: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
	sjmp	00118$
00120$:
;	main.c:309: CAR = FRONT_LEFT;
	mov	_P0,#0x5a
;	main.c:310: delay(100);
	mov	dptr,#0x0064
;	main.c:311: break;
;	main.c:312: default:
	ljmp	_delay
00121$:
;	main.c:313: CAR = STOP;
	mov	_P0,#0x00
;	main.c:315: }
;	main.c:316: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'btControl'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:319: void btControl(uchar cmd) {
;	-----------------------------------------
;	 function btControl
;	-----------------------------------------
_btControl:
	mov	r7,dpl
;	main.c:321: switch(cmd) {
	cjne	r7,#0x61,00152$
	sjmp	00106$
00152$:
	cjne	r7,#0x62,00153$
	sjmp	00102$
00153$:
	cjne	r7,#0x64,00154$
	sjmp	00109$
00154$:
	cjne	r7,#0x66,00155$
	sjmp	00101$
00155$:
	cjne	r7,#0x6c,00156$
	sjmp	00103$
00156$:
	cjne	r7,#0x72,00157$
	sjmp	00104$
00157$:
;	main.c:322: case('f'): CAR = FRONT; break;
	cjne	r7,#0x73,00112$
	sjmp	00105$
00101$:
	mov	_P0,#0x55
;	main.c:323: case('b'): CAR = BACK; break;
	ret
00102$:
	mov	_P0,#0xaa
;	main.c:324: case('l'): CAR = FRONT_LEFT; break;
	ret
00103$:
	mov	_P0,#0x5a
;	main.c:325: case('r'): CAR = FRONT_RIGHT; break;
	ret
00104$:
	mov	_P0,#0xa5
;	main.c:326: case('s'): CAR = STOP; break;
	ret
00105$:
	mov	_P0,#0x00
;	main.c:327: case('a'): 
	ret
00106$:
;	main.c:328: if (speed < M_PWM_CYCLE) {
	mov	a,#0x100 - 0x0a
	add	a,_speed
	jc	00114$
;	main.c:329: speed++;
	inc	_speed
;	main.c:331: break;
;	main.c:332: case('d'): 
	ret
00109$:
;	main.c:333: if (speed != 0) {
	mov	a,_speed
	jz	00114$
;	main.c:334: speed--;
	dec	_speed
;	main.c:336: break;
;	main.c:337: default:CAR = STOP; break;
	ret
00112$:
	mov	_P0,#0x00
;	main.c:338: }
00114$:
;	main.c:339: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initInterrupt'
;------------------------------------------------------------
;	main.c:342: void initInterrupt() {
;	-----------------------------------------
;	 function initInterrupt
;	-----------------------------------------
_initInterrupt:
;	main.c:344: EA = 1;			//允许总中断
;	assignBit
	setb	_EA
;	main.c:345: ES = 1;			//允许串行口中断
;	assignBit
	setb	_ES
;	main.c:346: ET0 = 1;		//允许定时器0中断
;	assignBit
	setb	_ET0
;	main.c:347: ET2 = 1;		//允许定时器2中断
;	assignBit
	setb	_ET2
;	main.c:348: EX1 = 1;		//允许外部中断1中断
;	assignBit
	setb	_EX1
;	main.c:349: IT1 = 1;		//低电平沿触发
;	assignBit
	setb	_IT1
;	main.c:350: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initTimer0'
;------------------------------------------------------------
;	main.c:353: void initTimer0() {
;	-----------------------------------------
;	 function initTimer0
;	-----------------------------------------
_initTimer0:
;	main.c:355: TMOD |= 0x01;	//工作方式1
	orl	_TMOD,#0x01
;	main.c:356: if (operate == STEER_OPERATE) {	//为舵机转动
	mov	a,#0x02
	cjne	a,_operate,00104$
;	main.c:357: TH0 = 0xFE;		//中断时间0.5ms
	mov	_TH0,#0xfe
;	main.c:358: TL0 = 0x33;
	mov	_TL0,#0x33
;	main.c:359: TR0 = 1;	//开启定时器0
;	assignBit
	setb	_TR0
	ret
00104$:
;	main.c:360: }else if (operate == SR04_OPERATE) {		//为超声波
	mov	a,#0x03
	cjne	a,_operate,00106$
;	main.c:361: TH0 = 0;
	mov	_TH0,#0x00
;	main.c:362: TL0 = 0;
	mov	_TL0,#0x00
00106$:
;	main.c:364: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initSerial'
;------------------------------------------------------------
;	main.c:367: void initSerial() {
;	-----------------------------------------
;	 function initSerial
;	-----------------------------------------
_initSerial:
;	main.c:369: SCON = 0x50;	//串行口工作模式1
	mov	_SCON,#0x50
;	main.c:370: PCON = 0x00;
	mov	_PCON,#0x00
;	main.c:371: RI = 0;			//接受中断标志清零
;	assignBit
	clr	_RI
;	main.c:373: TMOD |= 0x20;	//定时器T1方式2 
	orl	_TMOD,#0x20
;	main.c:374: TL1 = 0xfd;
	mov	_TL1,#0xfd
;	main.c:375: TH1 = 0xfd;
	mov	_TH1,#0xfd
;	main.c:376: TR1 = 1;		//定时器开始计数
;	assignBit
	setb	_TR1
;	main.c:377: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initTimer2'
;------------------------------------------------------------
;	main.c:381: void initTimer2() {
;	-----------------------------------------
;	 function initTimer2
;	-----------------------------------------
_initTimer2:
;	main.c:383: T2CON = 0x00;
	mov	_T2CON,#0x00
;	main.c:384: T2MOD = 0x00;	
	mov	_T2MOD,#0x00
;	main.c:385: TH2 = RCAP2H = 0xff;		//中断0.1ms
	mov	_RCAP2H,#0xff
	mov	_TH2,#0xff
;	main.c:386: TL2 = RCAP2L = 0xa4;
	mov	_RCAP2L,#0xa4
	mov	_TL2,#0xa4
;	main.c:387: TR2 = 1;	//开启定时器2
;	assignBit
	setb	_TR2
;	main.c:388: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;	main.c:390: void timer0() __interrupt 1 __using 0 {
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:392: if (operate == STEER_OPERATE) {
	mov	a,#0x02
	cjne	a,_operate,00104$
;	main.c:394: TH0 = 0xFE;		//中断时间0.5ms
	mov	_TH0,#0xfe
;	main.c:395: TL0 = 0x33;
	mov	_TL0,#0x33
;	main.c:396: steerTurn();
	lcall	_steerTurn
	sjmp	00106$
00104$:
;	main.c:397: } else if (operate == SR04_OPERATE) {
	mov	a,#0x03
	cjne	a,_operate,00106$
;	main.c:398: TH0 = 0;
	mov	_TH0,#0x00
;	main.c:399: TL0 = 0;
	mov	_TL0,#0x00
;	main.c:400: isOverStep = 1;
;	assignBit
	setb	_isOverStep
00106$:
;	main.c:402: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'int1'
;------------------------------------------------------------
;	main.c:405: void int1() __interrupt 2 __using 1 {
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
;	main.c:406: operate = SELF_OPERATE;
	mov	_operate,#0x04
;	main.c:407: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'serial'
;------------------------------------------------------------
;	main.c:410: void serial() __interrupt 4 __using 2 {
;	-----------------------------------------
;	 function serial
;	-----------------------------------------
_serial:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
	push	acc
;	main.c:411: RI = 0;		
;	assignBit
	clr	_RI
;	main.c:412: if (operate == NO_OPERATE) {
	mov	a,_operate
	jnz	00103$
;	main.c:413: operate = BT_OPERATE;
	mov	_operate,#0x01
00103$:
;	main.c:415: }
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2'
;------------------------------------------------------------
;a                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:418: void timer2() __interrupt 5 __using 3 {
;	-----------------------------------------
;	 function timer2
;	-----------------------------------------
_timer2:
	ar7 = 0x1f
	ar6 = 0x1e
	ar5 = 0x1d
	ar4 = 0x1c
	ar3 = 0x1b
	ar2 = 0x1a
	ar1 = 0x19
	ar0 = 0x18
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x18
;	main.c:421: t2InterruptTimes++;
	inc	_t2InterruptTimes
	clr	a
	cjne	a,_t2InterruptTimes,00116$
	inc	(_t2InterruptTimes + 1)
00116$:
;	main.c:422: a = t2InterruptTimes % M_PWM_CYCLE;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_t2InterruptTimes
	mov	dph,(_t2InterruptTimes + 1)
	mov	psw,#0x00
	lcall	__moduint
	mov	psw,#0x18
	mov	r6,dpl
;	main.c:423: if (t2InterruptTimes == CMD_TIME) {
	mov	a,#0x90
	cjne	a,_t2InterruptTimes,00102$
	mov	a,#0x01
	cjne	a,(_t2InterruptTimes + 1),00102$
;	main.c:424: t2InterruptTimes = 0;
	clr	a
	mov	_t2InterruptTimes,a
	mov	(_t2InterruptTimes + 1),a
;	main.c:425: CAR = STOP;
;	1-genFromRTrack replaced	mov	_P0,#0x00
	mov	_P0,a
;	main.c:426: TR2 = 0;	//溢出400次，说明执行了蓝牙发送的指令40ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
;	assignBit
	clr	_TR2
00102$:
;	main.c:428: if (a <= speed) {
	clr	c
	mov	a,_speed
	subb	a,r6
	jc	00104$
;	main.c:429: M_PWM = 1;
;	assignBit
	setb	_P3_6
	sjmp	00106$
00104$:
;	main.c:431: M_PWM = 0;
;	assignBit
	clr	_P3_6
00106$:
;	main.c:434: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	main.c:437: void setup() {
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:438: initInterrupt();
	lcall	_initInterrupt
;	main.c:439: initSerial();
	lcall	_initSerial
;	main.c:440: initTimer2();
	lcall	_initTimer2
;	main.c:441: operate = NO_OPERATE;
	mov	_operate,#0x00
;	main.c:442: STBY = 1;
;	assignBit
	setb	_P3_7
;	main.c:443: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loop'
;------------------------------------------------------------
;	main.c:446: void loop() {
;	-----------------------------------------
;	 function loop
;	-----------------------------------------
_loop:
;	main.c:447: sensorTrigger();
	lcall	_sensorTrigger
;	main.c:448: if (SWITCH_SELF_CONTROL) {
	jnb	_P1_0,00102$
;	main.c:449: ledStatus(0);	
	mov	dpl,#0x00
	lcall	_ledStatus
00102$:
;	main.c:451: if (operate == BT_OPERATE) {
	mov	a,#0x01
	cjne	a,_operate,00106$
;	main.c:452: ledStatus(2);
	mov	dpl,#0x02
	lcall	_ledStatus
;	main.c:453: btControl(SBUF);
	mov	dpl,_SBUF
	lcall	_btControl
	sjmp	00107$
00106$:
;	main.c:454: } else if (operate == SELF_OPERATE) {
	mov	a,#0x04
	cjne	a,_operate,00107$
;	main.c:455: ledStatus(1);
	mov	dpl,#0x01
	lcall	_ledStatus
;	main.c:456: selfControl();
	lcall	_selfControl
;	main.c:457: ET2 = 1;	//退出自己控制，恢复定时器2中断允许
;	assignBit
	setb	_ET2
00107$:
;	main.c:459: operate = NO_OPERATE;
	mov	_operate,#0x00
;	main.c:460: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:462: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:464: if (isFirst) {
	jnb	_isFirst,00104$
;	main.c:465: setup();
	lcall	_setup
;	main.c:466: isFirst = 0;
;	assignBit
	clr	_isFirst
;	main.c:468: while(1) {
00104$:
;	main.c:469: loop();
	lcall	_loop
;	main.c:471: }
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_seg:
	.db #0xc0	; 192
	.db #0xf9	; 249
	.db #0xa4	; 164
	.db #0xb0	; 176
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0xc6	; 198
	.db #0xa1	; 161
	.db #0x86	; 134
	.db #0x8e	; 142
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
