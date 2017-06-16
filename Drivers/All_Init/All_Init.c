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

/*ȫ�ָ���*/
char Str_View[30];//ȫ��ͨ���ַ�����ʾ����

uint32 Flash_Data_Public[30]={0};//��������
uint32 Flash_Data_Plan[30]  ={0};  //�������Եı���
uint32 Plan_Num=0;//�ݴ淽��ѡ��
uint32 Debug_Button_V=0;//���Կ���
uint8 Debug_Button_Led=0;//LED����
//uint8 Debug_Button_KEY_BEEP=0; //����������
uint8 Debug_Bluetooth=0;   //�������Կ���
uint8 Debug_Protect=0;     //���屣������
uint8 Debug_CarAngPrt=0;//�Ƕȱ�������
uint8 Debug_Button_WhatisBeep=0;//ɶ����Beep

int Ran_Erase_Speed_I=0;//����ֱ�־λ

volatile uint32 Pit1_Start;//UI������ʾ��������ʱ��ı���


//UI��ʾ��������·��
int Car_Run_Ui_Show_Long    =0;
int Car_Run_Ui_Show_How_Long=0;
int LastTime_Car_Run_Distance=0;


//
int ShiZiFind=0;  //ʮ��ǰհ

//�������
float Control_Para[15];

/*ͼ����*/
uint8 Pic[60][80]={0};     //����ͼ��Ķ�ά����
uint8 Pic_show[60][80];

//���߱�־����
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
//���߱�־����
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
//���߱�־����
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


uint8 QianZhan=25;    //�������ߵ�ǰհ

uint8 imgbuff[CAMERA_SIZE];//����洢����ͼ�������
uint8 img[CAMERA_W*CAMERA_H];//����ͼ���һά����


float MID_ERROR=0;//
float Speed_Ang=0;


/*�ٶȿ���*/
float AAngleArrySCI[3]={0};//����������
int  angular =0;//�������õļ��ٶ�ֵ
int  anglenum=0;//�������õĽǶ�ֵ
int  SetSpeed=0;



float  SpeedControlIntegral=0;//�ٶȻ���
int  SpeedControlOutOld;
int  SpeedControlOutNew;
int  Speed_Filter_Times=10;//ƽ������ȼ�

//int Speed_Filter_Times=20;
int CarSpeed=0; //��ʵ����

int Ui_Show_Get_Speed=0;

/*ֱ������*/
PID PID_ANGLE,PID_SPEED,PID_TURN;


/*��������*/


/*����*/

int OLED_OPEN=1;


int result=0;
int Car_Run=0;
int Key_Change_Botton=0;//����������־
float Distance=0.0;

/*************************************************************************************
*	hardware Init
*	author YU
*	Time 2016.11.26 
**************************************************************************************/
void HardwareInit(void)
{    
	DisableInterrupts;	//�ر��ж�
//	/*�����Ǽ��ٶȼƳ�ʼ��*/
//    
//    /*�����жϷ�����*/
//    //set_vector_handler(DMA0_VECTORn , DMA0_IRQHandler);  //����DMA0_VECTORn���жϷ�����Ϊ DMA0_IRQHandler
//    //set_vector_handler(PORTC_VECTORn , PORTC_IRQHandler);//����PORTC_VECTORn���жϷ�����Ϊ PORTC_IRQHandler
    set_vector_handler(PIT0_VECTORn ,PIT0_IRQHandler);
    set_vector_handler(PIT1_VECTORn ,PIT1_IRQHandler);
    //set_vector_handler(PIT2_VECTORn ,PIT2_IRQHandler);
    set_vector_handler(PIT3_VECTORn ,PIT3_IRQHandler);
 	
    DMA_count_Init(DMA_CH4, PTA6 , 0x7FFF, DMA_rising); //E26  dma��ʼ����������
//   
//    
    adc_init(ADC1_SE4a);//e0
    adc_init(ADC1_SE5a);
    adc_init(ADC1_SE6a);
    adc_init(ADC1_SE7a);//e4
  
    pit_init_ms(PIT0,1);    //1ms��ʱ�ж�   
    enable_irq (PIT0_IRQn);
    pit_init_ms(PIT1,20);   //20ms��ʱ�ж�   
    enable_irq (PIT1_IRQn);
    //pit_init_ms(PIT2,500); //500ms��ʱ�ж�   
    //enable_irq (PIT2_IRQn);
    pit_init_ms(PIT3,1000); //1s��ʱ�ж�    
    enable_irq (PIT3_IRQn);
 
    NVIC_SetPriority(PIT0_IRQn,0);//1 ms  �����ж����ȼ�
    NVIC_SetPriority(PIT1_IRQn,1);//20ms  �����ж����ȼ�
 	//NVIC_SetPriority(PIT2_IRQn,1);//500ms �����ж����ȼ�
    NVIC_SetPriority(PIT3_IRQn,2);//1s    �����ж����ȼ�
    
    
    ftm_pwm_init(FTM0, FTM_CH3,10000, 0);   
    ftm_pwm_init(FTM0, FTM_CH2,10000, 0); 
    
    
    gpio_init (PTC2, GPO,1);//���ʹ��
////    gpio_init (PTC4, GPO,0);//���ʹ��  
    //ftm_pwm_init(FTM0, FTM_CH1,10000, 800);   
    

    ftm_pwm_init(FTM1, FTM_CH1,200, 2250);  
    KEY_init();
    OLED_Init();              //OLED��ʼ��
    GUI_SetColor(1,0);        //��ʱ��������ʾ����(0,1)��ɫ��ʾ	
    sprintf(Str_View,"OLED_OK");
    GUI_PutString(0,0,Str_View);
    GUI_Exec();               //����һ����Ļ����
    
    //uart_init(UART0,115200);   //����0��ʼ��

    EnableInterrupts;	//���ж�
}

/*************************************************************************
*	Parameters Init
*	author YU
*	Time 2016.11.26 
*************************************************************************/
void ParInit(int Way)
{
   Data_Public_Get();
   //���չ������ֵĲ��� ��ʼ���������Ĳ���
   
   Data_Get();//��������

	return ;
}


__ramfunc void Data_Get(void)
{
           Flash_Read_Plan(Flash_Data_Plan,Plan_Num,-1);                  //��ȡFlash���ֱ���
           
		   PID_ANGLE.P = Flash_Data_Plan[0]*0.1;                          //ֱ��P
		   PID_ANGLE.D = Flash_Data_Plan[1]*0.01;                         //ֱ��D
                                                                          
           PID_TURN.P  = Flash_Data_Plan[2];                              //ת��P
           PID_TURN.I  = Flash_Data_Plan[3];                              //���߲���
           PID_TURN.D  = Flash_Data_Plan[4];                              //ת��D
                                                                          
           PID_SPEED.P = Flash_Data_Plan[5]*0.1;                          //�ٶ�P
           PID_SPEED.I = Flash_Data_Plan[6]*0.1;                              //�ٶ�I
           SetSpeed    = Flash_Data_Plan[7];                              //�趨���ٶ�(����)
                                                                       
           SpeedMini   = Flash_Data_Plan[8];                              //�趨������
           SpeedMid    = Flash_Data_Plan[9];                              //�趨�ĵ���
           
           QianZhan    = Flash_Data_Plan[10]>50?50:Flash_Data_Plan[10];  //����ͷ��ȡǰհ
           ShiZiFind   = Flash_Data_Plan[11];                            //ʮ�ֺͻ�·ʶ��ǰհ
           
           Seagull_Num = Flash_Data_Plan[12]; 
           
           HowMuch_Ring_Finds= Flash_Data_Plan[13];                      //ʶ����ٴλ�·���滷·
           How_Much_To_Find_Ring = Flash_Data_Plan[14];                  //��Ÿ��ֵ
           
           Forward_Safe_Angle  = Flash_Data_Plan[15];                    //ǰ�����Ƕ���ֵ
           Backward_Safe_Angle = Flash_Data_Plan[16] ;                   //�󱣻��Ƕ���ֵ
           

}

//������������
void Data_Public_Get(void)
{
   Flash_Read_Plan(Flash_Data_Public,0,-1);         //��ȡFlash�������ֱ���

   //�������ֵ�0λ ��ʼ��������
   Plan_Num=Flash_Data_Public[28];                  //��ȡ��ǰ�ķ�����
   Plan_Num=Plan_Num<1?1:Plan_Num>6?6:Plan_Num;
   Flash_Data_Public[28]=Plan_Num;
   
   //�������ֵ�һλ debug����ѡ��
   Debug_Button_V=Flash_Data_Public[29]>65530?0:Flash_Data_Public[29];            //�������������Ϣ
   
   Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_�ƿ���
   //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //������������
   Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //�������Կ���
   Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //�����ֹ�������Ҷ�����
   Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
   Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;     //ɶ����Beep

   //�������ֵڶ�λ ����λ �����Ǽ��ٶȼ�

   //anglenum =Flash_Data_Public[0];                  //������ֵ
   angular  =Flash_Data_Public[1];                  //���ٶȼ�ֵ
   
}
//�����������浽Flash
void Data_Public_Save(void)
{
   //Flash_Read_Plan(Flash_Data_Public,0,-1);//��ȡFlash�������ֱ���
   //�������ֵ�0λ ��ʼ��������
   Flash_Data_Public[28]=Plan_Num;//
   
   
   //�������ֵ�һλ debug����ѡ��
   Flash_Data_Public[29]=Debug_Button_V;  //���Կ���
   
   Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_�ƿ���
   //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //������������
   Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //�������Կ���
   Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //�����ֹ�������Ҷ�����
   Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
   
   Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;     //ɶ����Beep
   //�������ֵڶ�λ ����λ �����Ǽ��ٶȼ�
   
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
	HardwareInit();	//Ӳ����ʼ��
	ParInit(Way);	//������ʼ��
	return ;
}



