//#include  "MK60_gpio.h"      //IO�ڲ���
//#include  "common.h"

#include  "LED.H"
#include "All_Init.h"
int  BEEP_TIMES=0;
void LedBeep_init(void)
{  
//	gpio_init (PTC2, GPO,1);//LED
//	gpio_init (PTC3, GPO,0);//BBB
}

//�ԵƲ��� State 1���ƣ�State 0�ص�
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



//�Է���������
void Beep(int Times )
{
  if(Times<=0)
    BEEP_OFF;
  
  BEEP_TIMES=Times;
return ;
}


//�Է���������
void Beep_A(int Times )
{
  if(Times<=0)
    BEEP_OFF;
  
  BEEP_TIMES+=Times;
  
  if(BEEP_TIMES>100)BEEP_TIMES=100;
return ;
}


