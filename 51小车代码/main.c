#include <mcs51/at89x52.h>
#include <stdio.h>
typedef unsigned int uint;
typedef unsigned char uchar;

//小车移动
#define FRONT 0x55
#define BACK  0xaa
#define FRONT_LEFT  0x5a
#define FRONT_RIGHT  0xa5
// #define BACK_LEFT 0xa5
// #define BACK_RIGHT 0x5a
#define STOP 0x00

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
#define STBY P3_7    //置1控制电机，0无法控制电机
/*常量定义*/
#define __nop __asm nop __endasm    //延迟一个机器周期
#define M_PWM_CYCLE 10    //pwm信号的周期
#define CMD_TIME 400    //执行蓝牙指令的时间，400 * 0.1 = 40ms‘
#define OBS_DIS 10	//障碍物允许距离自己的距离

#define NO_OPERATE 0x00    //无操作
#define BT_OPERATE 0x01   //主函数执行蓝牙控制
#define STEER_OPERATE 0x02    //舵机转动角度
#define SR04_OPERATE 0x03    //超声波测距
#define SELF_OPERATE 0x04    //自己控制原理障碍物

#define STEER_S 0x05    //舵机归位
#define STEER_P45 0x06    //舵机顺时针转动45°
#define STEER_P90 0x07    //舵机顺时针转动90°
#define STEER_N45 0x08    //舵机逆时针转动45°
#define STEER_N90 0x09    //舵机逆时针转动90°

void delay(uint n);
// void _putchar(char c);
void sensorTrigger();
void ledStatus(uchar s);
void setTurnAngle(uchar a);
void steerTurn();
void workSR04();
int calculate();
__bit isHaveObs(uchar dir);
void setObsFlag(__bit fObsFlag, __bit bObsFlag, __bit lObsFlag, __bit rObsFlag);
void selfControl();
void btControl(uchar cmd);
void initInterrupt();
void initTimer0();
void initSerial();
void initTimer2();
void setup();
void loop();
// void initTimer0();

uchar operate = 0;
//数码管数字0~F
uchar __code seg[] = {0xc0, 0xf9, 0xa4, 0xb0, 
					  0x99, 0x92, 0x82, 0xf8, 
	                  0x80, 0x90, 0x88, 0x83, 
					  0xc6, 0xa1, 0x86, 0x8e};  
uchar speed = 8;	//小车速度
uint t0InterruptTimes;    //t0计时器当前溢出次数
uint t2InterruptTimes;    //t0计时器当前溢出次数
uchar angle;	//舵机转动角度
__bit isOverStep = 0;	//定时器0是否溢出标志，溢出距离过远，超出测量范围
__bit isFirst = 1;
__bit fObsFlag = 0;		//前面障碍物标志
__bit bObsFlag = 0;		//后面障碍物标志
__bit lObsFlag = 0;		//左面障碍物标志
__bit rObsFlag = 0;		//右面障碍物标志


//延迟函数，11.0592MHz n= 1,大约延迟1ms
void delay(uint n){
	uint i,j;
	for(i=n;i>0;i--){
		for(j=112;j>0;j--);
	}
}

// 向串口输出,自动调用
void  putcharToSer(char c) {
  SBUF = c;
  while(!TI);
  TI = 0;
}

// 传感器触发
void sensorTrigger() {
	if(!(BACK_SENSER & FRONT_SENSER & LEFT_SENSER & RIGHT_SENSER)) {
		SWITCH_SELF_CONTROL = 0;
		// IE1 = 1;
	}else {
		SWITCH_SELF_CONTROL = 1;
	}
}

//设置障碍物存在与否标志,前后左右
void setObsFlag(__bit fof, __bit bof, __bit lof, __bit rof) {
	fObsFlag = fof;
	bObsFlag = bof;
	lObsFlag = lof;
	rObsFlag = rof;
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
		//逆90°
		case(STEER_N90):angle = 1; break;
		//逆45°
		case(STEER_N45):angle = 2; break;
		//归位
		case(STEER_S):angle = 3; break;
		//顺45°
		case(STEER_P45):angle = 4; break;
		//顺90°
		case(STEER_P90):angle = 5; break;
	}	
}

//舵机转动
void steerTurn() {

	char a;
	t0InterruptTimes++;
	a = t0InterruptTimes % 5;
	if (t0InterruptTimes == 150) {	//舵机转动到指定角度后,停止定时器0计时
		t0InterruptTimes = 0;
		STEER_PWM = 0;	
		TR0 = 0;
	}
	// printf("%d", t0InterruptTimes);
	if (a < angle) {
		 STEER_PWM = 1;
	}else {
		STEER_PWM = 0;
	}
}

//启动超声波模块
void workSR04() {

	TRIG = 1;
	// 高点平持续10us以上
	__nop; __nop; __nop; __nop; __nop;
	__nop; __nop; __nop; __nop; __nop;
	__nop; __nop; __nop; __nop; __nop;
	__nop; __nop; __nop; __nop; __nop;
	TRIG = 0;
	while(!ECHO);
	TR0 = 1;
	while(ECHO);
	TR0 = 0;
}

//超声波测距
int calculate() {

	int distance, time;  //用char会溢出，导致测量结果有误
	// 读取定时器的值
	time = TH0 * 256 + TL0;
	// 重置定时器初值
	TH0 = 0;
	TL0 = 0;
	time *= 1.085;
	// 音速 = 340m/s = 0.34m/ms = 0.00034m/us = 0.034cm/us
	// 距离 = 高电平时间 * 音速 / 2
	distance = (time * 0.017); 
	if(isOverStep) {
		isOverStep = 0;
		SEG = 0xff;
		//越界返回-1
		return -1;
		// printf("overstep\n");
	}else {		
		SEG = seg[distance];
		// printf("distance = %dcm\n", distance);
		// putcharToSer(distance);
		return distance;
	}
}

//判断dir方向上是否有障碍物
__bit isHaveObs(uchar dir) {

	int distance;
	ET2 = 0;	//禁止定时器2中断，以免对舵机的PWM波形产生影响
	setTurnAngle(dir);
	operate = STEER_OPERATE;
	initTimer0();
	delay(100);		//延迟时间太短会导致舵机无法转动
	/**
	* 这里执行定时器0的中断，控制舵机转动到指定位置，执行完中断后回到此处
	**/
	operate = SR04_OPERATE;
	initTimer0();
	workSR04();		//超声波模块工作
	distance = calculate();
	// ET2 = 1;	//定时器0使用完毕，恢复定时器2中断允许
	if (distance > OBS_DIS | distance == -1) {	//距离大于允许的距离或者超出测量范围，则算没有障碍物
		return 0;
	}else {
		return 1;
	}
}


//自己控制远离障碍物
void selfControl() {
	
	// uchar dir;
	uchar sensor_state = 0xf0 & P1;		//获取传感器的情况，屏蔽低4位
	// srand(0);
	// dir = (uchar)(rand() % 2);	//取随机数(0～1), 0：左转，1：右转
	switch(sensor_state) {
		case(0x20 | 0x30):	//前左右 | 左右
			setObsFlag(1, 0, 1, 1);
			while(lObsFlag & rObsFlag & fObsFlag) {
				CAR = BACK;
				delay(5);
				CAR = STOP;
				lObsFlag = isHaveObs(STEER_N45);
				delay(50);
				fObsFlag = isHaveObs(STEER_S);
				delay(20);
				rObsFlag = isHaveObs(STEER_P45);
				CAR = BACK;
				delay(10);
			}
		break;
		case(0xe0): //只有前
			setObsFlag(1, 0, 0, 0);
			while(fObsFlag) {
				CAR = BACK;
				delay(5);
				CAR = STOP;
				fObsFlag = isHaveObs(STEER_S);
				CAR = BACK;
				delay(10);
			}
		break;
		case(0xd0):	//只有后
			while(!BACK_SENSER) {
				CAR = FRONT;
			}
		break;
		case(0xb0):	//只有左
			setObsFlag(0, 0, 1, 0);
			while(lObsFlag) {
				CAR = BACK;
				delay(5);
				CAR = STOP;
				lObsFlag = isHaveObs(STEER_N45);
				CAR = BACK;
				delay(10);
			}
			CAR = FRONT_RIGHT;
			delay(100);
		break;
		case(0x70):	//只有右
			setObsFlag(0, 0, 1, 1);
			while(rObsFlag) {
				CAR = BACK;
				delay(5);
				CAR = STOP;
				rObsFlag = isHaveObs(STEER_P45);
				CAR = BACK;
				delay(10);
			}
			CAR = FRONT_LEFT;
			delay(100);
		break;
		default:
			CAR = STOP;
		break;	
	}
}

//蓝牙控制小车
void btControl(uchar cmd) {
	
	switch(cmd) {
		case('f'): CAR = FRONT; break;
		case('b'): CAR = BACK; break;
		case('l'): CAR = FRONT_LEFT; break;
		case('r'): CAR = FRONT_RIGHT; break;
		case('s'): CAR = STOP; break;
		case('a'): 
			if (speed < M_PWM_CYCLE) {
				speed++;
			}; 
		break;
		case('d'): 
			if (speed != 0) {
				speed--;
			}
		break;
		default:CAR = STOP; break;
	}
}

//初始化中断
void initInterrupt() {

	EA = 1;			//允许总中断
	ES = 1;			//允许串行口中断
	ET0 = 1;		//允许定时器0中断
	ET2 = 1;		//允许定时器2中断
	EX1 = 1;		//允许外部中断1中断
	IT1 = 1;		//低电平沿触发
}

//初始化定时器0
void initTimer0() {

	TMOD |= 0x01;	//工作方式1
	if (operate == STEER_OPERATE) {	//为舵机转动
		TH0 = 0xFE;		//中断时间0.5ms
		TL0 = 0x33;
		TR0 = 1;	//开启定时器0
	}else if (operate == SR04_OPERATE) {		//为超声波
		TH0 = 0;
  		TL0 = 0;
	}
}

//初始化串口
void initSerial() {
	
	SCON = 0x50;	//串行口工作模式1
	PCON = 0x00;
	RI = 0;			//接受中断标志清零

	TMOD |= 0x20;	//定时器T1方式2 
	TL1 = 0xfd;
	TH1 = 0xfd;
	TR1 = 1;		//定时器开始计数
}


//初始化定时器2
void initTimer2() {

	T2CON = 0x00;
	T2MOD = 0x00;	
	TH2 = RCAP2H = 0xff;		//中断0.1ms
    TL2 = RCAP2L = 0xa4;
	TR2 = 1;	//开启定时器2
}

void timer0() __interrupt 1 __using 0 {

	if (operate == STEER_OPERATE) {
		// SEG = seg[2];
		TH0 = 0xFE;		//中断时间0.5ms
		TL0 = 0x33;
		steerTurn();
	} else if (operate == SR04_OPERATE) {
		TH0 = 0;
  		TL0 = 0;
		isOverStep = 1;
	}
}

//外部中断1
void int1() __interrupt 2 __using 1 {
	operate = SELF_OPERATE;
}

//串行口中断
void serial() __interrupt 4 __using 2 {
	RI = 0;		
	if (operate == NO_OPERATE) {
		operate = BT_OPERATE;
	}
}

//定时器2中断
void timer2() __interrupt 5 __using 3 {

	uchar a;
	t2InterruptTimes++;
	a = t2InterruptTimes % M_PWM_CYCLE;
	if (t2InterruptTimes == CMD_TIME) {
		t2InterruptTimes = 0;
		CAR = STOP;
		TR2 = 0;	//溢出400次，说明执行了蓝牙发送的指令40ms了，停止计数器2计数，停止执行指令，等待蓝牙发送新的指令
	}
	if (a <= speed) {
		M_PWM = 1;
	}else {
		M_PWM = 0;
	}
	// TF2 = 0;	//溢出清0
}

//初始化，只运行一次
void setup() {
	initInterrupt();
	initSerial();
	initTimer2();
	operate = NO_OPERATE;
	STBY = 1;
}

//循环执行
void loop() {
	sensorTrigger();
	if (SWITCH_SELF_CONTROL) {
		ledStatus(0);	
	}
	if (operate == BT_OPERATE) {
		ledStatus(2);
		btControl(SBUF);
	} else if (operate == SELF_OPERATE) {
		ledStatus(1);
		selfControl();
		ET2 = 1;	//退出自己控制，恢复定时器2中断允许
	}
	operate = NO_OPERATE;
}

void main() {
	
	if (isFirst) {
		setup();
		isFirst = 0;
	}
	while(1) {
		loop();
	}
}