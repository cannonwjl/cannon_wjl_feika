/**************************************************************************************
*
**************************************************************************************/

#include "All_Init.h"

__ramfunc void DMA0_IRQHandler();
__ramfunc void PORTC_IRQHandler();
__ramfunc void PIT0_IRQHandler();
__ramfunc void PIT1_IRQHandler();
__ramfunc void PIT2_IRQHandler();
__ramfunc void PIT3_IRQHandler();

/*全局辅助*/
char Str_View[30];//全局通用字符串显示数组

uint32 Flash_Data_Public[30]={0};//公共变量
uint32 Flash_Data_Plan[30]  ={0};  //方案独自的变量
uint32 Plan_Num=0;//暂存方案选择
uint32 Debug_Button_V=0;//调试开关
uint8 Debug_Button_Led=0;//LED开关
//uint8 Debug_Button_KEY_BEEP=0; //按键音开关
uint8 Debug_Bluetooth=0;   //蓝牙调试开关
uint8 Debug_Protect=0;     //车体保护开关
uint8 Debug_CarAngPrt=0;//角度保护开关
uint8 Debug_Button_WhatisBeep=0;//啥玩意Beep

int Ran_Erase_Speed_I=0;//清积分标志位

volatile uint32 Pit1_Start;//UI里面显示代码运行时间的变量


//UI显示车体运行路程
int Car_Run_Ui_Show_Long    =0;
int Car_Run_Ui_Show_How_Long=0;
int LastTime_Car_Run_Distance=0;


//
int ShiZiFind=0;  //十字前瞻

//串口相关
float Control_Para[15];

/*图像处理*/
uint8 Pic[60][80]={0};     //保存图像的二维数组
uint8 Pic_show[60][80];

//搜线标志数组
int Left_FLine[40][2]=
{
  {58,39},{56,38},{54,37},{53,36},{51,35},
  {50,34},{49,33},{48,32},{47,31},{46,30},
  {46,29},{45,28},{44,27},{44,26},{43,25},
  {43,24},{42,23},{42,22},{41,21},{41,20},
  {41,19},{40,18},{40,17},{40,16},{39,15},
  {39,14},{39,13},{39,12},{38,11},{38,10},
  {38, 9},{38, 8},{38, 7},{38, 6},{38, 5},
  {38, 4},{38, 3},{38, 2},{38, 1},{38, 0},
};
//搜线标志数组
int Right_FLine[40][2]=
{
  {58,40},{56,41},{54,42},{53,43},{51,44},
  {50,45},{49,46},{48,47},{47,48},{46,49},
  {46,50},{45,51},{44,52},{44,53},{43,54},
  {43,55},{42,56},{42,57},{41,58},{41,59},
  {41,60},{40,61},{40,62},{40,63},{39,64},
  {39,65},{39,66},{39,67},{38,68},{38,69},
  {38,70},{38,71},{38,72},{38,73},{38,74},
  {38,75},{38,76},{38,77},{38,78},{38,79},
};
//搜线标志数组
int Mid_FLine[50][2]=
{
    {60,40},{59,40},{58,40},{57,40},{56,40},
    {55,40},{54,40},{53,40},{52,40},{51,40},
    {50,40},{49,40},{48,40},{47,40},{46,40},
    {45,40},{44,40},{43,40},{42,40},{41,40},
    {40,40},{39,40},{38,40},{37,40},{36,40},
    {35,40},{34,40},{33,40},{32,40},{31,40},
    {30,40},{29,40},{28,40},{27,40},{26,40},
    {25,40},{24,40},{23,40},{22,40},{21,40},
    {20,40},{19,40},{18,40},{17,40},{16,40},
    {15,40},{14,40},{13,40},{12,40},{11,40},
};


uint8 QianZhan=25;    //计算中线的前瞻

uint8 imgbuff[CAMERA_SIZE];//定义存储接收图像的数组
uint8 img[CAMERA_W*CAMERA_H];//保存图像的一维数组


float MID_ERROR=0;//
float Speed_Ang=0;


/*速度控制*/
float AAngleArrySCI[3]={0};//陀螺仪数组
int  angular =0;//开机设置的加速度值
int  anglenum=0;//开机设置的角度值
int  SetSpeed=0;



float  SpeedControlIntegral=0;//速度积分
int  SpeedControlOutOld;
int  SpeedControlOutNew;
int  Speed_Filter_Times=10;//平滑输出等级

//int Speed_Filter_Times=20;
int CarSpeed=0; //真实车速

int Ui_Show_Get_Speed=0;

/*直立控制*/
PID PID_ANGLE,PID_SPEED,PID_TURN;


/*按键处理*/


/*其他*/

int OLED_OPEN=1;


int result=0;
int Car_Run=0;
int Key_Change_Botton=0;//按键连按标志
float Distance=0.0;

/*************************************************************************************
*	hardware Init
*	author YU
*	Time 2016.11.26 
**************************************************************************************/
void HardwareInit(void)
{    
	DisableInterrupts;	//关闭中断
//	/*陀螺仪加速度计初始化*/
//    
//    /*配置中断服务函数*/
//    //set_vector_handler(DMA0_VECTORn , DMA0_IRQHandler);  //设置DMA0_VECTORn的中断服务函数为 DMA0_IRQHandler
//    //set_vector_handler(PORTC_VECTORn , PORTC_IRQHandler);//设置PORTC_VECTORn的中断服务函数为 PORTC_IRQHandler
    set_vector_handler(PIT0_VECTORn ,PIT0_IRQHandler);
    set_vector_handler(PIT1_VECTORn ,PIT1_IRQHandler);
    //set_vector_handler(PIT2_VECTORn ,PIT2_IRQHandler);
    set_vector_handler(PIT3_VECTORn ,PIT3_IRQHandler);
 	
    DMA_count_Init(DMA_CH4, PTA6 , 0x7FFF, DMA_rising); //E26  dma初始化编码器用
//   
//    
    adc_init(ADC1_SE4a);//e0
    adc_init(ADC1_SE5a);
    adc_init(ADC1_SE6a);
    adc_init(ADC1_SE7a);//e4
  
    pit_init_ms(PIT0,1);    //1ms定时中断   
    enable_irq (PIT0_IRQn);
    pit_init_ms(PIT1,20);   //20ms定时中断   
    enable_irq (PIT1_IRQn);
    //pit_init_ms(PIT2,500); //500ms定时中断   
    //enable_irq (PIT2_IRQn);
    pit_init_ms(PIT3,1000); //1s定时中断    
    enable_irq (PIT3_IRQn);
 
    NVIC_SetPriority(PIT0_IRQn,0);//1 ms  设置中断优先级
    NVIC_SetPriority(PIT1_IRQn,1);//20ms  设置中断优先级
 	//NVIC_SetPriority(PIT2_IRQn,1);//500ms 设置中断优先级
    NVIC_SetPriority(PIT3_IRQn,2);//1s    设置中断优先级
    
    
    ftm_pwm_init(FTM0, FTM_CH3,10000, 0);   
    ftm_pwm_init(FTM0, FTM_CH2,10000, 0); 
    
    
    gpio_init (PTC2, GPO,1);//电机使能
////    gpio_init (PTC4, GPO,0);//电机使能  
    //ftm_pwm_init(FTM0, FTM_CH1,10000, 800);   
    

    ftm_pwm_init(FTM1, FTM_CH1,200, 2250);  
    KEY_init();
    OLED_Init();              //OLED初始化
    GUI_SetColor(1,0);        //此时是正常显示，若(0,1)则反色显示	
    sprintf(Str_View,"OLED_OK");
    GUI_PutString(0,0,Str_View);
    GUI_Exec();               //更新一次屏幕缓冲
    
    //uart_init(UART0,115200);   //串口0初始化

    EnableInterrupts;	//打开中断
}

/*************************************************************************
*	Parameters Init
*	author YU
*	Time 2016.11.26 
*************************************************************************/
void ParInit(int Way)
{
   Data_Public_Get();
   //按照公共部分的参数 初始化接下来的参数
   
   Data_Get();//更新数据

	return ;
}


__ramfunc void Data_Get(void)
{
           Flash_Read_Plan(Flash_Data_Plan,Plan_Num,-1);                  //读取Flash部分变量
           
		   PID_ANGLE.P = Flash_Data_Plan[0]*0.1;                          //直立P
		   PID_ANGLE.D = Flash_Data_Plan[1]*0.01;                         //直立D
                                                                          
           PID_TURN.P  = Flash_Data_Plan[2];                              //转弯P
           PID_TURN.I  = Flash_Data_Plan[3];                              //中线补偿
           PID_TURN.D  = Flash_Data_Plan[4];                              //转弯D
                                                                          
           PID_SPEED.P = Flash_Data_Plan[5]*0.1;                          //速度P
           PID_SPEED.I = Flash_Data_Plan[6]*0.1;                              //速度I
           SetSpeed    = Flash_Data_Plan[7];                              //设定的速度(高速)
                                                                       
           SpeedMini   = Flash_Data_Plan[8];                              //设定的中速
           SpeedMid    = Flash_Data_Plan[9];                              //设定的低速
           
           QianZhan    = Flash_Data_Plan[10]>50?50:Flash_Data_Plan[10];  //摄像头提取前瞻
           ShiZiFind   = Flash_Data_Plan[11];                            //十字和环路识别前瞻
           
           Seagull_Num = Flash_Data_Plan[12]; 
           
           HowMuch_Ring_Finds= Flash_Data_Plan[13];                      //识别多少次环路算真环路
           How_Much_To_Find_Ring = Flash_Data_Plan[14];                  //海鸥阈值
           
           Forward_Safe_Angle  = Flash_Data_Plan[15];                    //前保护角度限值
           Backward_Safe_Angle = Flash_Data_Plan[16] ;                   //后保护角度限值
           

}

//公共变量更新
void Data_Public_Get(void)
{
   Flash_Read_Plan(Flash_Data_Public,0,-1);         //读取Flash公共部分变量

   //公共部分第0位 初始方案号码
   Plan_Num=Flash_Data_Public[28];                  //获取当前的方案号
   Plan_Num=Plan_Num<1?1:Plan_Num>6?6:Plan_Num;
   Flash_Data_Public[28]=Plan_Num;
   
   //公共部分第一位 debug开关选择
   Debug_Button_V=Flash_Data_Public[29]>65530?0:Flash_Data_Public[29];            //更新整体调试信息
   
   Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_灯开关
   //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //按键声音开关
   Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //蓝牙调试开关
   Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //车体防止其他人乱动开关
   Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
   Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;     //啥玩意Beep

   //公共部分第二位 第三位 陀螺仪加速度计

   //anglenum =Flash_Data_Public[0];                  //陀螺仪值
   angular  =Flash_Data_Public[1];                  //加速度计值
   
}
//公共变量保存到Flash
void Data_Public_Save(void)
{
   //Flash_Read_Plan(Flash_Data_Public,0,-1);//读取Flash公共部分变量
   //公共部分第0位 初始方案号码
   Flash_Data_Public[28]=Plan_Num;//
   
   
   //公共部分第一位 debug开关选择
   Flash_Data_Public[29]=Debug_Button_V;  //调试开关
   
   Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_灯开关
   //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //按键声音开关
   Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //蓝牙调试开关
   Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //车体防止其他人乱动开关
   Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
   
   Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;     //啥玩意Beep
   //公共部分第二位 第三位 陀螺仪加速度计
   
   Flash_Data_Public[0]=anglenum ;
   Flash_Data_Public[1]=angular  ;
   
   
   Flash_Write_Pub(Flash_Data_Public);
}


/*************************************************************************
*	author YU
*	Time 2016.11.26 
*************************************************************************/
void All_Init(int Way)
{
	HardwareInit();	//硬件初始化
	ParInit(Way);	//参数初始化
	return ;
}



