/**************************************************************************************
* @author     ɽ��Ƽ�
* @version    v5.0
* @date       2013-08-28
**************************************************************************************/

#include "All_Init.h"


//                            ���ٶ�      ����Ƕ�      ԭʼ�ٶ�      ת�����    �Ǽ��ٶ�      �����ٶ����         ���嵱ǰ�ٶ�   �ٶȻ���I        �ٶ�����ĽǶ�
 
     
float *Ptr_Show_Computer[9]={&Angle_Speed,&Car_Angle,&AAngleArrySCI[2],&MID_ERROR,&Turn_Speed, &CAR_SEND_SPEED_ERR,&CAR_SEND_SPEED ,&CAR_SEND_SPEED_I ,&Speed_Ang};


#define BYTE0(Temp)       (*(char *)(&Temp))     
#define BYTE1(Temp)       (*((char *)(&Temp) + 1))
#define BYTE2(Temp)       (*((char *)(&Temp) + 2))
#define BYTE3(Temp)       (*((char *)(&Temp) + 3))



__ramfunc void my_putchar(char temp)
{
    uart_putchar(UART3,temp); //����ʵ�ʵĴ��ں����޸�
}


//���Ϳ��Ʋ���
void Send_Para()
{
  uint8 i=0,ch=0;
  float temp=0;
  my_putchar(0x55);
  my_putchar(0xaa);
  my_putchar(0xab);
  my_putchar(14);
  
  
  for(i=0;i<14;i++)
  {
    temp=Control_Para[i];
    if(temp<0.00001&&temp>-0.00001)
      temp=0;
    else temp=temp+0.000001;
    ch=BYTE0(temp);
    my_putchar(ch);
    ch=BYTE1(temp);
    my_putchar(ch);
    ch=BYTE2(temp);
    my_putchar(ch);
    ch=BYTE3(temp);
    my_putchar(ch);
  }
    my_putchar(0X0b);//֡β
}

__ramfunc void Send_Begin(void)
{
  if(Debug_Bluetooth)
  {
  my_putchar(0x55);
  my_putchar(0xaa);
  my_putchar(0xae);
  }
}

__ramfunc void Send_avelue(float a)
{
  register  uint8 i=0,ch=0;
  register  float temp=a;
  
  Send_Begin();
  if(Debug_Bluetooth)
  {
    my_putchar(0x55);
    my_putchar(0xaa);
    my_putchar(0xad);
    my_putchar(1); 
    
    temp=a;
    ch=BYTE0(temp);
      my_putchar(ch);
    ch=BYTE1(temp);
      my_putchar(ch);
    ch=BYTE2(temp);
      my_putchar(ch);
    ch=BYTE3(temp);
      my_putchar(ch);
     my_putchar(0x0d);
  }
return ;
}




__ramfunc void Send_Variable()
{
  
register  uint8 i=0,ch=0;
register  float temp=0;
register  uint8 Variable_num=2;
  
  if(Debug_Bluetooth)
  {
  my_putchar(0x55);
  my_putchar(0xaa);
  my_putchar(0xad);
  my_putchar(Variable_num);
  
 for(i=0;i<Variable_num;i++)
  {
    temp=*Ptr_Show_Computer[i];
    ch=BYTE0(temp);
      my_putchar(ch);
    ch=BYTE1(temp);
      my_putchar(ch);
    ch=BYTE2(temp);
      my_putchar(ch);
    ch=BYTE3(temp);
      my_putchar(ch);
  }
     my_putchar(0x0d);
  }
}


/*!
 *  @brief      ����ͼ����λ����ʾ  
 */
void sendimg(uint8 *imgaddr, uint32 imgsize)
{
  my_putchar(0x55);
  my_putchar(0xaa);
  my_putchar(0xac);
  my_putchar(8);
  //һ��800������λ
  uart_putbuff(UART3, imgaddr, imgsize); //����ͼ��
//  uart_putbuff(UART3, (uint8*)(&LMR[0][0]),     180); //���ͱ��߼�����
//  uart_putbuff(UART3, (uint8*)(&LMR[0][0]),     20); //Ԥ��20������λ
  my_putchar(0x0c);
}

/*�жϺ�����������*/
__ramfunc void DMA0_IRQHandler();
__ramfunc void PORTC_IRQHandler();

/*������ʹ�ñ�������*/

int Time=0;        	   //ϵͳ����ʱ��       
int CASE=0;       	   //��ѭ��UI״ָ̬��  


//������翵�������
                         

int main(void)
{ 

//  //gpio_init (PTC2, GPO,1);//���ʹ��

    //ftm_pwm_duty(FTM0, FTM_CH1,500);
//    while(1)
//    {
//    
//    
//    }
  
   All_Init(0);  //�������ƥ�䲻ͬ����(��ʱ����)	
  // Beep(100);
  // Car_Protect();//���屣��
   
  return 0;

}
/******************************************************* START MAIN ********************************************************/
int Dr_6 (void)
{
    for(;;)
    {
        switch(CASE)
        {
        	case 0:		CASE = Case_UI(); break;	//���˵�
        	case 1:		CASE = View();    break;	//����Ԥ���˵�   ���ڷ�6���ϲ˵�
                case 2:         CASE = Plan_Choose();break; //����ѡ��       ��6����ѡ��
        	case 3:		CASE = Set();     break;	//��������
                case 4:         CASE = Debug_Button();break;//���Կ���
            //���������˵�
            
            //���������Ұ��������Ĳ˵�
        	case 5:		CASE = Car_Ctrl();break;	//����
        	case 6:		CASE = Updata();  break;	//��������
        	case 7:		CASE = Set_Ang(); break;	//������ֵ
                case 8:         CASE = View_Set() ;break;   //����Ԥ������
                case 9:         CASE = View_Plan();break;   //��������Ԥ������
            
          
        	default :	CASE = 0;         break;	//����
        }
    }
}
/********************************************************* END MAIN ********************************************************/


/*************************************************************
*	1ms��ʱ���ж�,�ṩ��������,�ϸ����ؿ��ƽ���,�ṩ��ʱ����
*************************************************************/
__ramfunc void PIT0_IRQHandler(void)
{
 static  uint8  part=0;//״̬������
 static  int  Mid_v=0;
 static  int  Last_mid=0;
 
	if(PIT_TFLG(PIT0) == 1) 
	{
	  	disable_irq(PIT0_IRQn);
		part++;
		DirectionCount++;
                SpeedCount++;
        
		switch(part) 
		{
			case 1: //ֱ������
					// 5ms�ɼ�һ���ٶ�
                                Get_Speed();              
					//�ٶȿ���
					//SpeedCount++;     //��������
				if(SpeedCount>=10) 
                                {
                                 Speed_Control();//�ٶ�PID����
                                 SpeedCount=0;
                                 }
                 	 Speed_Control_Output();//�ٶ�ƽ�����
                         //Angle_Calculate();//�Ƕȼ������˲�
			 //Angle_Control();  //�Ƕ�PID���㺯��
               		break;

			case 2: //���������ж�     
			                 //RodeType_Get();

                          AD[0]=adc_once(ADC1_SE4a, ADC_12bit);
                          AD[1]=adc_once(ADC1_SE5a, ADC_12bit);
                          AD[2]=adc_once(ADC1_SE6a, ADC_12bit);
                          AD[3]=adc_once(ADC1_SE7a, ADC_12bit);
                          result=AD[0]-AD[3];
                          
               		break;
					
			case 3://�����������
                                      
               		break; 
					
            case 4://ת�����
                    Direction_Control(); 
					DirectionCount=0; //����ƽ���������
					break;
			case 5:
                                             //DELAY_US(500);
					part=0;
					//�������������ת����Ϣ
					//read_buff[1]= Get_Y_Gyro();
				       	break;
			default:
					part=0;
					break;
		}//switch

	    Direction_Control_Output();
	    Moto_Out();
	
        //�������첿��
//        if(BEEP_TIMES>0)
//        {
//           BEEP_ON;
//           BEEP_TIMES--;
//        }
//        else 
//        {
//           BEEP_OFF;
//           BEEP_TIMES=0;
//        }
	}//if
    
    
    
	PIT_Flag_Clear(PIT0);       //���жϱ�־λ
	enable_irq (PIT0_IRQn);
}

/*************************************************************
*	20ms��ʱ���ж�,�ɼ�ͼ��,ˢ����Ļ,��ȡ����
*************************************************************/
void PIT1_IRQHandler(void)
{
	if(PIT_TFLG(PIT1) == 1)
	{
	  disable_irq(PIT1_IRQn);
           GUI_Exec();//ˢ����Ļ
	}
	PIT_Flag_Clear(PIT1);//���жϱ�־λ
	enable_irq (PIT1_IRQn);
}

/*************************************************************
*	500ms��ʱ���ж�
*************************************************************/
//void PIT2_IRQHandler(void)
//{
//  //static int iiii=0;
//	if(PIT_TFLG(PIT2) == 1 )
//	{
//		disable_irq(PIT2_IRQn);      
//	}
//	
//	PIT_Flag_Clear(PIT2);//���жϱ�־λ	
//	enable_irq (PIT2_IRQn);
//}

/*************************************************************
*	1s��ʱ���ж�
*************************************************************/
void PIT3_IRQHandler(void)
{
	if(PIT_TFLG(PIT3) == 1)
	{
	  	disable_irq(PIT3_IRQn);
		//gpio_turn (PTA17);// PTA17 LED ��ת
		
        if(Led_Software_Button!=0)     //0����ϵͳ  ��������ڳ��������������
        {
           ;;   
        }
        else
        if(Debug_Button_Led )
        {
           gpio_turn (PTC2);//LED	��ת
        }
        else 
        {
           gpio_set(PTC2,1);
        }
		//picMany=PicMany;
		Time++;
        
        if(Time>=1000)
          Time=1000;
        
		//Time%=1000;
        if(!OLED_OPEN)
        {
        sprintf(Str_View,"Pic:%3d",123);
        OLED_P6x8Str(0,2,(u8*)Str_View);
        sprintf(Str_View,"Time:%2d",Time);
        OLED_P6x8Str(0,3,(u8*)Str_View);
        }
        
	}
	PIT_Flag_Clear(PIT3);//���жϱ�־λ	
	enable_irq (PIT3_IRQn);
}

/*************************** ������������ͷ�ɼ� ****************************/
//__ramfunc void PORTC_IRQHandler()
//{
//    
//    uint8  n;    //���ź�
//    uint32 flag;
//    
//    while(!PORTC_ISFR);
//    flag = PORTC_ISFR;
//    PORTC_ISFR  = ~0;         //���жϱ�־λ
//    
//    n = 7;                    //���ж�
//    if(flag & (1 << n))       //PTC7�����ж�
//    {
//        camera_vsync();
//    }
//  #if ( CAMERA_USE_HREF == 1 )//ʹ�����ж�
//    n = 18;//(18)
//    if(flag & (1 << n))               //PTA28�����ж�
//    {
//        camera_href();
//    }
//  #endif
//}
    
//__ramfunc void DMA0_IRQHandler()
//{
//    //PicMany++;
//    camera_dma();
//}
//   


/*********************************************************** END *************************************************************************/
