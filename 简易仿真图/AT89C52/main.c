#include <mcs51/at89x52.h>
#include <stdio.h>
typedef unsigned int uint;
typedef unsigned char uchar;

//小车移动
#define FRONT 0xaa
#define BACK  0x55
#define FRONT_LEFT  0xad
#define FRONT_RIGHT  0xda
#define BACK_LEFT 0x5d
#define BACK_RIGHT 0xd5
#define STOP 0xff
/*小车引脚定义*/
#define CAR P0    //P0口输出对车子电机的控制
#define SWITCH_SELF_CONTROL P1_0    //外部中断1触发标志，此中断触发，小车自控
//三个状态指示灯，低电平
#define STOP_RED_LED P1_1   //停止时亮
#define BT_BLUE_LED P1_2   //蓝牙控制时亮
#define SELF_GREEN_LED P1_3     //自己控制的时亮
#define FRONT_SENSER P1_4    //前方避障传感器
#define BACK_SENSER P1_5	 //后方避障传感器
#define LEFT_SENSER P1_6	 //左方避障传感器
#define RIGHT_SENSER P1_7    //右方避障传感器
#define SEG P2    //共阳七段数码管，显示超声波测得的距离
#define STEER_PWM P3_2    //舵机pwm控制信号输出
#define ECHO P3_4    //超声波模块回响信号口，ECHO
#define TRIG P3_5    //超声波模块触发信号口，TRIG
#define M_PWM P3_6    //电机速度控制pwm信号
/*常量定义*/
#define __nop __asm nop __endasm    //延迟一个机器周期
#define PWM_CYCLE 5    //pwm信号的周期
#define CMD_TIME 20    //执行蓝牙指令的时间，ms
#define STEER_S 0    //舵机归位
#define STEER_P45 1    //舵机顺时针转动45°
#define STEER_P90 2    //舵机顺时针转动90°
#define STEER_N45 3    //舵机逆时针转动45°
#define STEER_N90 4    //舵机逆时针转动90°
//数码管数字0~F
uchar __code seg[] = {0xc0, 0xf9, 0xa4, 0xb0, 
					  0x99, 0x92, 0x82, 0xf8, 
	                  0x80, 0x90, 0x88, 0x83, 
					  0xc6, 0xa1, 0x86, 0x8e};  
uchar speed = 5;	//小车速度
uchar t0InterruptTimes;    //t0计时器当前溢出次数
uchar t2InterruptTimes;    //t0计时器当前溢出次数
uchar angle;	//舵机转动角度
uchar timer0For;	//定时器0为舵机(0)还是超声波(1)工作计时
__bit isOverstep = 0;	//距离过远，超出测量范围

//延迟函数，11.0592MHz n= 1,大约延迟1ms
void delay(uint n){
	uint i,j;
	for(i=n;i>0;i--){
		for(j=112;j>0;j--);
	}
}

//向串口输出,自动调用
void putchar(char c) {
  SBUF = c;
  while(!TI);
  TI = 0;
}

//传感器触发
void sensorTrigger() {
	if(!(BACK_SENSER && FRONT_SENSER && LEFT_SENSER&& RIGHT_SENSER)) {
		SWITCH_SELF_CONTROL = 0;
	}
}

//各种状态指示灯情况
//0:停止 1：自动 2:蓝牙
void ledStatus(uchar s) {
	switch(s) {
		case(0):
			STOP_RED_LED = 0;	//停止指示灯亮
			BT_BLUE_LED = 1;
			SELF_GREEN_LED = 1;
		break;
		case(1):
			STOP_RED_LED = 1;
			BT_BLUE_LED = 1;	  
			SELF_GREEN_LED = 0;    //自控指示灯亮
		break;
		case(2):
			STOP_RED_LED = 1;
			SELF_GREEN_LED = 1;
			BT_BLUE_LED = 0;	//蓝牙控制指示灯亮
		break;
	}	
}

//舵机转动 angle:转动的角度
void setTurnAngle(uchar a) {

	switch(a) {
		//归位
		case(STEER_S):angle = 3; break;
		//顺45°
		case(STEER_P45):angle = 4; break;
		//顺90°
		case(STEER_P90):angle = 5; break;
		//逆45°
		case(STEER_N45):angle = 2; break;
		//逆90°
		case(STEER_N90):angle = 1; break;
	}
	timer0For = 0;
	initTimer0();	
}

void steerTurn() {

	t0InterruptTimes++;
	if (t0InterruptTimes > PWM_CYCLE) {
		t0InterruptTimes = 0;
	}
	// printf("%d", t0InterruptTimes);
	if (t0InterruptTimes < angle) {
		 STEER_PWM = 1;
	}else {
		STEER_PWM = 0;
	}
	startSR04();
}

//触发超声波模块工作
void trigger()
{
  TRIG = 1;
  // 高点平持续10us以上
  __nop; __nop; __nop; __nop; __nop;
  __nop; __nop; __nop; __nop; __nop;
  __nop; __nop; __nop; __nop; __nop;
  __nop; __nop; __nop; __nop; __nop;
  TRIG = 0;
}

//超声波测距
uchar calculate() {

	uchar time, distance;
	// 读取定时器的值
	time = TH0 * 256 + TL0;
	// 重置定时器初值
	TH0 = 0;
	TL0 = 0;
	time *= 1.085;
	// 音速 = 340m/s = 0.34m/ms = 0.00034m/us = 0.034cm/us
	// 距离 = 高电平时间 * 音速 / 2
	distance = (time * 0.017);
	if(isOverstep) {
		isOverstep = 0;
		SEG = 0xff;
		printf("overstep\n");
	}else {
		SEG = seg[distance];
		printf("distance = %dcm\n", distance);
	}
}

//启动超声波模块
void startSR04() {

	timer0For = 1;
	initTimer0();
	trigger();
	while(!ECHO);
	TR0 = 1;
	while(ECHO);
	TR0 = 0;
	calculate();
}

//远离左方的障碍物
void awayLEFTObs() {
	// CAR = BACK;
	// delay(400);
	CAR = FRONT_RIGHT;
	delay(700);
}

//远离右方的障碍物
void awayRightObs() {
	// CAR = BACK;
	// delay(400);
	CAR = FRONT_LEFT;
	delay(700);

}

//远离前面的障碍物
void awayFrontObs() {
	CAR = BACK;
	delay(200);
}

//远离后面的障碍物
void awayBackObs() {
	CAR = FRONT;
	delay(400);
}

//自己控制
void selfControl() __interrupt 2 __using 0 {
	
	ledStatus(1);
	printf("self control\n");
	
	//前方有障碍物，后方没有障碍物
	if (FRONT_SENSER == 0 && BACK_SENSER == 1) {
		//左右有障碍物或者左右没有障碍物
		if ((LEFT_SENSER== 0 && RIGHT_SENSER == 0) || (LEFT_SENSER&& RIGHT_SENSER) == 1) {
			CAR = STOP;
		//左方有障碍物，右方没有障碍物
		}else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
			CAR = STOP;
			setTurnAngle(STEER_P45);
			setTurnAngle(STEER_P90);
		//右方有障碍物，左方没有障碍物
		}else {
			CAR = STOP;
			setTurnAngle(STEER_N45);
			setTurnAngle(STEER_N90);
		}
	//后方有障碍物，前方没有障碍物
	}else if (BACK_SENSER == 0 && FRONT_SENSER == 1){
		//左右没有障碍物
		if ((LEFT_SENSER && RIGHT_SENSER) == 1) {
			CAR = FRONT;
		//左右都有障碍物
		}else if ((LEFT_SENSER || RIGHT_SENSER) == 0) {
			CAR = BACK;
			delay(400);
			//todo:极端情况怎样走出去
		//左方有障碍物，右方没有障碍物
		}else if (LEFT_SENSER== 0 && RIGHT_SENSER == 1) {
			CAR = STOP;
			setTurnAngle(STEER_P45);
			setTurnAngle(STEER_P90);
		//右方有障碍物，左方没有障碍物
		}else {
			CAR = STOP;
			setTurnAngle(STEER_N45);
			setTurnAngle(STEER_N90);
		}
	//只有左方障碍物
	}else if (LEFT_SENSER== 0 && (RIGHT_SENSER && BACK_SENSER && FRONT_SENSER) == 1 ){
		CAR = STOP;
		setTurnAngle(STEER_P45);
		setTurnAngle(STEER_P90);
	//只有右方有障碍物
	}else if (RIGHT_SENSER == 0 && (LEFT_SENSER && FRONT_SENSER && BACK_SENSER) == 1) {
		CAR = STOP;
		setTurnAngle(STEER_N45);
		setTurnAngle(STEER_N90);
	//都有障碍物
	}else {
		CAR = STOP;
	}
	SWITCH_SELF_CONTROL = 1;
}

//蓝牙控制小车
void btControl(uchar cmd) {
	
	ledStatus(2);
	switch(cmd) {
		case('f'): CAR = FRONT; break;
		case('b'): CAR = BACK; break;
		case('l'): CAR = FRONT_LEFT; break;
		case('r'): CAR = FRONT_RIGHT; break;
		case('s'): CAR = STOP; break;
		case('a'): 
			if (speed < 5) {
				speed++;
			}; 
		break;
		case('d'): 
			if (speed > 0) {
				speed--;
			}
		break;
		default:CAR = STOP; break;
	}
	initTimer2();
}

//初始化中断
void initInterrupt() {

	EA = 1;			//允许总中断
	ES = 1;			//允许串行口中断
	ET0 = 1;		//允许定时器0中断
	ET2 = 1;		//允许定时器2中断
	EX1 = 1;		//允许外部中断1中断
	IT1 = 0;		//低电平触发
}

//初始化定时器0
void initTimer0() {

	TMOD = 0x01;	//工作方式1
	if (timer0For == 0) {
		
		TR0 = 1;	//开启定时器0
	}else {
		TH0 = 0xFE;
		TL0 = 0x33;
	}
}

void reloadTimer0() {

	if (timer0For == 0) {
		TH0 = 0xFE;
		TL0 = 0x33;	
	}else {
		TH0 = 0xFE;
		TL0 = 0x33;
	}
}

//初始化串口
void initSerial() {
	
	SCON = 0x50;	//串行口工作模式1
	PCON = 0x00;
	RI = 0;			//接受中断标志清零

	TMOD = 0x21;	//定时器T1方式2 T0工作方式1
	TL1 = 0xfd;
	TH1 = 0xfd;
	TR1 = 1;		//定时器开始计数
}

//初始化定时器2,溢出需要1ms
void initTimer2() {
	T2MOD = 0x00;	//定时器T2向上计数
	C_T2 = 0;		//选择T2为定时器方式
	CP_RL2 = 0;		//T2自动装载
	TH0 = 0x0fc;
    TL0 = 0x66;
}

void timer0() __interrupt 1 __using 0 {

	if (timer0For == 0) {
		reloadTimer0();
		steerTurn();
	} else {
		isOverstep = 1;
	}

}


//串行口中断
void serial() __interrupt 4 __using 1 {
	
	RI = 0;
	//putchar(SBUF);	//接受的数据再发送给控制端
	btControl(SBUF);
}

//定时器2中断
void timer2() __interrupt 5 __using 2 {

	uchar a;
	TF2 = 0;	//溢出清0
	t2InterruptTimes++;
	a = t2InterruptTimes % PWM_CYCLE;
	if (t2InterruptTimes == CMD_TIME) {
		t2InterruptTimes = 0;
		CAR = STOP;
		TR2 = 0;	//溢出20次，说明执行了蓝牙发送的指令20ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
	}
	if (a <= speed) {
		M_PWM = 1;
	}else {
		M_PWM = 0;
	}	
}

void main() {

	initInterrupt();
	initTimer0();
	initSerial();
	initTimer2();
	while(1) {
		sensorTrigger();
		if (SWITCH_SELF_CONTROL) {
			ledStatus(0);
		}
	}
}
