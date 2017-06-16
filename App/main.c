/**************************************************************************************
* @author     山外科技
* @version    v5.0
* @date       2013-08-28
**************************************************************************************/

#include "All_Init.h"


//                            角速度      车体角度      原始速度      转弯误差    角加速度      车体速度误差         车体当前速度   速度积分I        速度输出的角度
 
     
float *Ptr_Show_Computer[9]={&Angle_Speed,&Car_Angle,&AAngleArrySCI[2],&MID_ERROR,&Turn_Speed, &CAR_SEND_SPEED_ERR,&CAR_SEND_SPEED ,&CAR_SEND_SPEED_I ,&Speed_Ang};


#define BYTE0(Temp)       (*(char *)(&Temp))     
#define BYTE1(Temp)       (*((char *)(&Temp) + 1))
#define BYTE2(Temp)       (*((char *)(&Temp) + 2))
#define BYTE3(Temp)       (*((char *)(&Temp) + 3))



__ramfunc void my_putchar(char temp)
{
    uart_putchar(UART3,temp); //根据实际的串口号来修改
}


//发送控制参数
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
    my_putchar(0X0b);//帧尾
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
 *  @brief      发送图像到上位机显示  
 */
void sendimg(uint8 *imgaddr, uint32 imgsize)
{
  my_putchar(0x55);
  my_putchar(0xaa);
  my_putchar(0xac);
  my_putchar(8);
  //一共800个数据位
  uart_putbuff(UART3, imgaddr, imgsize); //发送图像
//  uart_putbuff(UART3, (uint8*)(&LMR[0][0]),     180); //发送边线及中线
//  uart_putbuff(UART3, (uint8*)(&LMR[0][0]),     20); //预留20个数据位
  my_putchar(0x0c);
}

/*中断函数函数声明*/
__ramfunc void DMA0_IRQHandler();
__ramfunc void PORTC_IRQHandler();

/*主函数使用变量声明*/

int Time=0;        	   //系统运行时间       
int CASE=0;       	   //主循环UI状态指针  


//虚无缥缈的主函数
                         

int main(void)
{ 

//  //gpio_init (PTC2, GPO,1);//电机使能

    //ftm_pwm_duty(FTM0, FTM_CH1,500);
//    while(1)
//    {
//    
//    
//    }
  
   All_Init(0);  //传入参数匹配不同方案(暂时无用)	
  // Beep(100);
  // Car_Protect();//车体保护
   
  return 0;

}
/******************************************************* START MAIN ********************************************************/
int Dr_6 (void)
{
    for(;;)
    {
        switch(CASE)
        {
        	case 0:		CASE = Case_UI(); break;	//主菜单
        	case 1:		CASE = View();    break;	//参数预览菜单   》内分6个紫菜单
                case 2:         CASE = Plan_Choose();break; //方案选择       》6方案选择
        	case 3:		CASE = Set();     break;	//参数设置
                case 4:         CASE = Debug_Button();break;//调试开关
            //以上是主菜单
            
            //以下是左右按键调出的菜单
        	case 5:		CASE = Car_Ctrl();break;	//发车
        	case 6:		CASE = Updata();  break;	//升级界面
        	case 7:		CASE = Set_Ang(); break;	//调整中值
                case 8:         CASE = View_Set() ;break;   //参数预览界面
                case 9:         CASE = View_Plan();break;   //方案参数预览界面
            
          
        	default :	CASE = 0;         break;	//纠错
        }
    }
}
/********************************************************* END MAIN ********************************************************/


/*************************************************************
*	1ms定时器中断,提供控制流程,严格遵守控制节拍,提供计时变量
*************************************************************/
__ramfunc void PIT0_IRQHandler(void)
{
 static  uint8  part=0;//状态机节拍
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
			case 1: //直立控制
					// 5ms采集一次速度
                                Get_Speed();              
					//速度控制
					//SpeedCount++;     //计数节拍
				if(SpeedCount>=10) 
                                {
                                 Speed_Control();//速度PID计算
                                 SpeedCount=0;
                                 }
                 	 Speed_Control_Output();//速度平滑输出
                         //Angle_Calculate();//角度计算与滤波
			 //Angle_Control();  //角度PID计算函数
               		break;

			case 2: //赛道类型判断     
			                 //RodeType_Get();

                          AD[0]=adc_once(ADC1_SE4a, ADC_12bit);
                          AD[1]=adc_once(ADC1_SE5a, ADC_12bit);
                          AD[2]=adc_once(ADC1_SE6a, ADC_12bit);
                          AD[3]=adc_once(ADC1_SE7a, ADC_12bit);
                          result=AD[0]-AD[3];
                          
               		break;
					
			case 3://赛道中线输出
                                      
               		break; 
					
            case 4://转弯控制
                    Direction_Control(); 
					DirectionCount=0; //方向平滑输出因子
					break;
			case 5:
                                             //DELAY_US(500);
					part=0;
					//下面更新陀螺仪转角信息
					//read_buff[1]= Get_Y_Gyro();
				       	break;
			default:
					part=0;
					break;
		}//switch

	    Direction_Control_Output();
	    Moto_Out();
	
        //蜂鸣器响部分
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
    
    
    
	PIT_Flag_Clear(PIT0);       //清中断标志位
	enable_irq (PIT0_IRQn);
}

/*************************************************************
*	20ms定时器中断,采集图像,刷新屏幕,获取按键
*************************************************************/
void PIT1_IRQHandler(void)
{
	if(PIT_TFLG(PIT1) == 1)
	{
	  disable_irq(PIT1_IRQn);
           GUI_Exec();//刷新屏幕
	}
	PIT_Flag_Clear(PIT1);//清中断标志位
	enable_irq (PIT1_IRQn);
}

/*************************************************************
*	500ms定时器中断
*************************************************************/
//void PIT2_IRQHandler(void)
//{
//  //static int iiii=0;
//	if(PIT_TFLG(PIT2) == 1 )
//	{
//		disable_irq(PIT2_IRQn);      
//	}
//	
//	PIT_Flag_Clear(PIT2);//清中断标志位	
//	enable_irq (PIT2_IRQn);
//}

/*************************************************************
*	1s定时器中断
*************************************************************/
void PIT3_IRQHandler(void)
{
	if(PIT_TFLG(PIT3) == 1)
	{
	  	disable_irq(PIT3_IRQn);
		//gpio_turn (PTA17);// PTA17 LED 反转
		
        if(Led_Software_Button!=0)     //0跟随系统  否则可以在程序里面控制亮灭
        {
           ;;   
        }
        else
        if(Debug_Button_Led )
        {
           gpio_turn (PTC2);//LED	反转
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
	PIT_Flag_Clear(PIT3);//清中断标志位	
	enable_irq (PIT3_IRQn);
}

/*************************** 以下用作摄像头采集 ****************************/
//__ramfunc void PORTC_IRQHandler()
//{
//    
//    uint8  n;    //引脚号
//    uint32 flag;
//    
//    while(!PORTC_ISFR);
//    flag = PORTC_ISFR;
//    PORTC_ISFR  = ~0;         //清中断标志位
//    
//    n = 7;                    //场中断
//    if(flag & (1 << n))       //PTC7触发中断
//    {
//        camera_vsync();
//    }
//  #if ( CAMERA_USE_HREF == 1 )//使用行中断
//    n = 18;//(18)
//    if(flag & (1 << n))               //PTA28触发中断
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
