/**************************************************************************************
* Author:              YWh
* Purpose:		Serial Input/Output routines
**************************************************************************************/

#ifndef __All_INT_H__
#define __All_INT_H__

#include "common.h"  //���Ϳ�
#include "include.h" //Ұ���_�ٷ���
#include "oled_new.h"
#include "iic.h"
#include "ITG3200.h"
#include "MMA8451.h"
#include "key.h"
#include "lptmr.h"   //��ʱ����
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
 

void All_Init(int Way);//��Ӳ����ʼ��
extern void DMA0_IRQHandler();
extern void PORTC_IRQHandler();

/*ȫ�ָ���*/
extern char Str_View[30];//ȫ��ͨ���ַ�����ʾ����
extern int OLED_OPEN;//OLEDʹ��
extern uint8 Debug_Button_Led;
//extern uint8 Debug_Button_KEY_BEEP;
extern uint8 Debug_Bluetooth;//�������Կ���
extern uint8 Debug_Protect;//���屣������
extern uint8 Debug_CarAngPrt;
extern uint8 Debug_Button_WhatisBeep;
extern int result;
extern int XZ[60];
extern int Beep_Software_Button;  //���������õ�����
extern int Led_Software_Button ;  //led����

extern int R_ux,R_uy,R_dx,R_dy,L_dx,L_dy,L_ux,L_uy;

extern int Mid_X;
extern int Mid_Y;

volatile extern uint32 Pit1_Start;//��ʾ��������ʱ��ı���


extern int Car_Run_Ui_Show_Long     ;
extern int Car_Run_Ui_Show_How_Long ;
extern int LastTime_Car_Run_Distance;

/*������ȫ��ʹ�ñ���*/
extern int CASE;

extern int Time;
extern int ShiBoQi_View;//ʾ����̽��

/*Flashȫ�ֱ���*/
extern uint32 Flash_Data_Public[30];
extern uint32 Flash_Data_Plan[30]  ;
extern uint32 Plan_Num;
extern uint32 Debug_Button_V;
extern void Data_Public_Get(void);
extern void Data_Get(void);
extern void Data_Public_Save(void);


/*��������ȫ�ֱ���*/
extern int Press;//ȫ�ְ�������

//������ȫ�ֱ���
extern float Control_Para[15];


extern void Send_Para();
extern void Send_Variable();
extern void Send_Begin();
extern void Send_avelue(float a);

/*ͼ����*/
extern uint8 Pic[60][80];               //����ͼ��Ķ�ά����
extern uint8 Pic_show[60][80];          //UI��ʾ��

extern int Mid_FLine  [50][2];//��Ÿ��־��
extern int Right_FLine[40][2];
extern int Left_FLine [40][2];

extern int ShiZiFind;

extern int Seagull_Left ; 
extern int Seagull_Right;
extern int Seagull_Mid  ;
extern int Seagull_Num  ;
extern int HowMuch_Ring_Finds;

extern int How_Much_To_Find_Ring;//Ѱ�һ�·��ֵ

extern void Cross_Find(void);

extern int In_Ring_Flag;
extern int Rode_Ring;
extern int Last_Ring;

extern uint8 imgbuff[CAMERA_SIZE];      //����洢����ͼ�������
extern uint8 img[CAMERA_W*CAMERA_H];    //����ͼ���һά����
extern int16 Line_center[60];

extern uint8 QianZhan;
extern int Find_Shizi_YuanZhan;         //ʮ�ֺͻ�·���ҵ�Զհ
extern   int16 Search_1_Line_center[60];     
extern   int16 Search_1_right_center[60];    
extern   int16 Search_1_left_center[60];     
extern   int16 Search_1_Rode_Wide[60];   

extern int Pic_Give[60];

extern int Rode_Cross;

                                                                
/*�ٶȿ���*/
extern int SpeedMini;//���ٷ���
extern int SpeedMid ;//���ٷ��� ���������Ǹ�������ͨ�ٶȣ� 
extern int Ran_Erase_Speed_I;


extern volatile int Forward_Safe_Angle  ;
extern volatile int Backward_Safe_Angle ;

/*��������*/

/*ͼ��֡��*/

/*���Ʋ��ֺ���*/
//ֱ�����
extern void Get_Angle(void); 
extern __ramfunc void Angle_Control();  
extern __ramfunc void Angle_Calculate();

typedef struct PID
{
  float P,pout,I,iout,D,dout,OUT;
}PID;


extern PID PID_ANGLE,PID_SPEED,PID_TURN;
//�ٶ����
extern __ramfunc void Get_Speed();   //5ms�ɼ�һ���ٶ�
extern __ramfunc void Speed_Control();
extern __ramfunc void Speed_Control_Output();
extern uint8 SpeedCount;    //�ٶȽ��Ŀ���
extern int CoL;
extern int CoR;
extern float Car_Angle  ;//���Ƕ�ֵ
extern float Angle_Speed;//�����ٶ�ֵ
extern float  AAngleArrySCI[3];//����������
extern  int  angular ;
extern  int  anglenum;
extern int Ui_Show_Get_Speed;
extern float CAR_SEND_SPEED_ERR   ;
extern float CAR_SEND_SPEED       ;
extern float CAR_SEND_SPEED_I;

//ת�����
extern void RoadType_Distinguish();
extern  int AD[4];
extern float Speed_Ang;

//extern int LOOK;
//extern void Get_Y_Gyro();
extern __ramfunc void Direction_Control(); 
//extern void Get_Y_Gyro();
extern __ramfunc void Direction_Control_Output();
extern uint8 DirectionCount;//ת����Ŀ���
extern float MID_ERROR;
extern float Turn_Speed;
extern int  SetSpeed;
extern float  SpeedControlIntegral;


extern int  SpeedControlOutOld;
extern int  SpeedControlOutNew;

extern int Speed_Filter_Times;
extern int CarSpeed;

/*�ۺϿ���*/
extern __ramfunc void Moto_Out();
extern int Car_Run;
extern float Distance;


extern int Key_Change_Botton;

#endif









