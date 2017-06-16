/**************************************************************************************
* Author:              YWh
* Purpose:		Serial Input/Output routines
**************************************************************************************/

#ifndef __All_INT_H__
#define __All_INT_H__

#include "common.h"  //类型库
#include "include.h" //野火库_官方库
#include "oled_new.h"
#include "iic.h"
#include "ITG3200.h"
#include "MMA8451.h"
#include "key.h"
#include "lptmr.h"   //延时函数
#include "Led.h"   
#include "AS5040.h"
#include "UI.h"
#include "Search_2.h"
#include "Control.h"
#include "MK60_pit.h"
#include "MK60_flash.h"
#include "IIIC.h"
#include "Fuzzy.h"

extern int Dr_6 (void);
 

void All_Init(int Way);//软硬件初始化
extern void DMA0_IRQHandler();
extern void PORTC_IRQHandler();

/*全局辅助*/
extern char Str_View[30];//全局通用字符串显示数组
extern int OLED_OPEN;//OLED使能
extern uint8 Debug_Button_Led;
//extern uint8 Debug_Button_KEY_BEEP;
extern uint8 Debug_Bluetooth;//蓝牙调试开关
extern uint8 Debug_Protect;//车体保护开关
extern uint8 Debug_CarAngPrt;
extern uint8 Debug_Button_WhatisBeep;
extern int result;
extern int XZ[60];
extern int Beep_Software_Button;  //代码里面用的软开关
extern int Led_Software_Button ;  //led软开关

extern int R_ux,R_uy,R_dx,R_dy,L_dx,L_dy,L_ux,L_uy;

extern int Mid_X;
extern int Mid_Y;

volatile extern uint32 Pit1_Start;//显示代码运行时间的变量


extern int Car_Run_Ui_Show_Long     ;
extern int Car_Run_Ui_Show_How_Long ;
extern int LastTime_Car_Run_Distance;

/*主函数全局使用变量*/
extern int CASE;

extern int Time;
extern int ShiBoQi_View;//示波器探针

/*Flash全局变量*/
extern uint32 Flash_Data_Public[30];
extern uint32 Flash_Data_Plan[30]  ;
extern uint32 Plan_Num;
extern uint32 Debug_Button_V;
extern void Data_Public_Get(void);
extern void Data_Get(void);
extern void Data_Public_Save(void);


/*按键部分全局变量*/
extern int Press;//全局按键变量

//串口用全局变量
extern float Control_Para[15];


extern void Send_Para();
extern void Send_Variable();
extern void Send_Begin();
extern void Send_avelue(float a);

/*图像处理*/
extern uint8 Pic[60][80];               //保存图像的二维数组
extern uint8 Pic_show[60][80];          //UI显示用

extern int Mid_FLine  [50][2];//海鸥标志线
extern int Right_FLine[40][2];
extern int Left_FLine [40][2];

extern int ShiZiFind;

extern int Seagull_Left ; 
extern int Seagull_Right;
extern int Seagull_Mid  ;
extern int Seagull_Num  ;
extern int HowMuch_Ring_Finds;

extern int How_Much_To_Find_Ring;//寻找环路阈值

extern void Cross_Find(void);

extern int In_Ring_Flag;
extern int Rode_Ring;
extern int Last_Ring;

extern uint8 imgbuff[CAMERA_SIZE];      //定义存储接收图像的数组
extern uint8 img[CAMERA_W*CAMERA_H];    //保存图像的一维数组
extern int16 Line_center[60];

extern uint8 QianZhan;
extern int Find_Shizi_YuanZhan;         //十字和环路查找的远瞻
extern   int16 Search_1_Line_center[60];     
extern   int16 Search_1_right_center[60];    
extern   int16 Search_1_left_center[60];     
extern   int16 Search_1_Rode_Wide[60];   

extern int Pic_Give[60];

extern int Rode_Cross;

                                                                
/*速度控制*/
extern int SpeedMini;//低速方案
extern int SpeedMid ;//高速方案 （正常的那个就是普通速度） 
extern int Ran_Erase_Speed_I;


extern volatile int Forward_Safe_Angle  ;
extern volatile int Backward_Safe_Angle ;

/*按键处理*/

/*图像帧率*/

/*控制部分函数*/
//直立相关
extern void Get_Angle(void); 
extern __ramfunc void Angle_Control();  
extern __ramfunc void Angle_Calculate();

typedef struct PID
{
  float P,pout,I,iout,D,dout,OUT;
}PID;


extern PID PID_ANGLE,PID_SPEED,PID_TURN;
//速度相关
extern __ramfunc void Get_Speed();   //5ms采集一次速度
extern __ramfunc void Speed_Control();
extern __ramfunc void Speed_Control_Output();
extern uint8 SpeedCount;    //速度节拍控制
extern int CoL;
extern int CoR;
extern float Car_Angle  ;//净角度值
extern float Angle_Speed;//净角速度值
extern float  AAngleArrySCI[3];//陀螺仪数组
extern  int  angular ;
extern  int  anglenum;
extern int Ui_Show_Get_Speed;
extern float CAR_SEND_SPEED_ERR   ;
extern float CAR_SEND_SPEED       ;
extern float CAR_SEND_SPEED_I;

//转向相关
extern void RoadType_Distinguish();
extern  int AD[4];
extern float Speed_Ang;

//extern int LOOK;
//extern void Get_Y_Gyro();
extern __ramfunc void Direction_Control(); 
//extern void Get_Y_Gyro();
extern __ramfunc void Direction_Control_Output();
extern uint8 DirectionCount;//转向节拍控制
extern float MID_ERROR;
extern float Turn_Speed;
extern int  SetSpeed;
extern float  SpeedControlIntegral;


extern int  SpeedControlOutOld;
extern int  SpeedControlOutNew;

extern int Speed_Filter_Times;
extern int CarSpeed;

/*综合控制*/
extern __ramfunc void Moto_Out();
extern int Car_Run;
extern float Distance;


extern int Key_Change_Botton;

#endif









