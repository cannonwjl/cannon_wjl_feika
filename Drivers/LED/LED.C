//#include  "MK60_gpio.h"      //IO口操作
//#include  "common.h"

#include  "LED.H"
#include "All_Init.h"
int  BEEP_TIMES=0;
void LedBeep_init(void)
{  
//	gpio_init (PTC2, GPO,1);//LED
//	gpio_init (PTC3, GPO,0);//BBB
}

//对灯操作 State 1开灯，State 0关灯
void Led(int State)
{
return ;
}


void Key_Beep(int Times)
{
  if(Times<=0||Beep_Software_Button==1)
    BEEP_OFF;
  else
//  if(Debug_Button_KEY_BEEP)
  BEEP_TIMES=Times;
return ;

}



//对蜂鸣器操作
void Beep(int Times )
{
  if(Times<=0)
    BEEP_OFF;
  
  BEEP_TIMES=Times;
return ;
}


//对蜂鸣器操作
void Beep_A(int Times )
{
  if(Times<=0)
    BEEP_OFF;
  
  BEEP_TIMES+=Times;
  
  if(BEEP_TIMES>100)BEEP_TIMES=100;
return ;
}


